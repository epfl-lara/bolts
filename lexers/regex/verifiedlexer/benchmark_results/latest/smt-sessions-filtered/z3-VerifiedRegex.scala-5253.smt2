; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!269748 () Bool)

(assert start!269748)

(declare-fun b!2790407 () Bool)

(declare-fun b_free!78997 () Bool)

(declare-fun b_next!79701 () Bool)

(assert (=> b!2790407 (= b_free!78997 (not b_next!79701))))

(declare-fun tp!885903 () Bool)

(declare-fun b_and!203735 () Bool)

(assert (=> b!2790407 (= tp!885903 b_and!203735)))

(declare-fun b!2790417 () Bool)

(declare-fun b_free!78999 () Bool)

(declare-fun b_next!79703 () Bool)

(assert (=> b!2790417 (= b_free!78999 (not b_next!79703))))

(declare-fun tp!885909 () Bool)

(declare-fun b_and!203737 () Bool)

(assert (=> b!2790417 (= tp!885909 b_and!203737)))

(declare-fun b!2790409 () Bool)

(declare-fun b_free!79001 () Bool)

(declare-fun b_next!79705 () Bool)

(assert (=> b!2790409 (= b_free!79001 (not b_next!79705))))

(declare-fun tp!885902 () Bool)

(declare-fun b_and!203739 () Bool)

(assert (=> b!2790409 (= tp!885902 b_and!203739)))

(declare-fun b!2790420 () Bool)

(declare-fun b_free!79003 () Bool)

(declare-fun b_next!79707 () Bool)

(assert (=> b!2790420 (= b_free!79003 (not b_next!79707))))

(declare-fun tp!885900 () Bool)

(declare-fun b_and!203741 () Bool)

(assert (=> b!2790420 (= tp!885900 b_and!203741)))

(declare-fun b!2790406 () Bool)

(declare-fun e!1761736 () Bool)

(declare-datatypes ((C!16500 0))(
  ( (C!16501 (val!10184 Int)) )
))
(declare-datatypes ((List!32443 0))(
  ( (Nil!32343) (Cons!32343 (h!37763 C!16500) (t!228585 List!32443)) )
))
(declare-datatypes ((IArray!20077 0))(
  ( (IArray!20078 (innerList!10096 List!32443)) )
))
(declare-datatypes ((Conc!10036 0))(
  ( (Node!10036 (left!24513 Conc!10036) (right!24843 Conc!10036) (csize!20302 Int) (cheight!10247 Int)) (Leaf!15290 (xs!13147 IArray!20077) (csize!20303 Int)) (Empty!10036) )
))
(declare-datatypes ((BalanceConc!19686 0))(
  ( (BalanceConc!19687 (c!452950 Conc!10036)) )
))
(declare-fun totalInput!758 () BalanceConc!19686)

(declare-fun tp!885894 () Bool)

(declare-fun inv!43940 (Conc!10036) Bool)

(assert (=> b!2790406 (= e!1761736 (and (inv!43940 (c!452950 totalInput!758)) tp!885894))))

(declare-fun e!1761730 () Bool)

(declare-fun tp!885897 () Bool)

(declare-fun tp!885911 () Bool)

(declare-fun e!1761738 () Bool)

(declare-datatypes ((array!14005 0))(
  ( (array!14006 (arr!6242 (Array (_ BitVec 32) (_ BitVec 64))) (size!25175 (_ BitVec 32))) )
))
(declare-datatypes ((Regex!8171 0))(
  ( (ElementMatch!8171 (c!452951 C!16500)) (Concat!13259 (regOne!16854 Regex!8171) (regTwo!16854 Regex!8171)) (EmptyExpr!8171) (Star!8171 (reg!8500 Regex!8171)) (EmptyLang!8171) (Union!8171 (regOne!16855 Regex!8171) (regTwo!16855 Regex!8171)) )
))
(declare-datatypes ((List!32444 0))(
  ( (Nil!32344) (Cons!32344 (h!37764 Regex!8171) (t!228586 List!32444)) )
))
(declare-datatypes ((Context!4778 0))(
  ( (Context!4779 (exprs!2889 List!32444)) )
))
(declare-datatypes ((tuple3!5078 0))(
  ( (tuple3!5079 (_1!19402 Regex!8171) (_2!19402 Context!4778) (_3!3009 C!16500)) )
))
(define-sort InoxSet (T) (Array T Bool))

(declare-datatypes ((tuple2!32786 0))(
  ( (tuple2!32787 (_1!19403 tuple3!5078) (_2!19403 (InoxSet Context!4778))) )
))
(declare-datatypes ((List!32445 0))(
  ( (Nil!32345) (Cons!32345 (h!37765 tuple2!32786) (t!228587 List!32445)) )
))
(declare-datatypes ((array!14007 0))(
  ( (array!14008 (arr!6243 (Array (_ BitVec 32) List!32445)) (size!25176 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!7876 0))(
  ( (LongMapFixedSize!7877 (defaultEntry!4323 Int) (mask!9760 (_ BitVec 32)) (extraKeys!4187 (_ BitVec 32)) (zeroValue!4197 List!32445) (minValue!4197 List!32445) (_size!7919 (_ BitVec 32)) (_keys!4238 array!14005) (_values!4219 array!14007) (_vacant!3999 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!15561 0))(
  ( (Cell!15562 (v!33949 LongMapFixedSize!7876)) )
))
(declare-datatypes ((MutLongMap!3938 0))(
  ( (LongMap!3938 (underlying!8079 Cell!15561)) (MutLongMapExt!3937 (__x!21464 Int)) )
))
(declare-datatypes ((Cell!15563 0))(
  ( (Cell!15564 (v!33950 MutLongMap!3938)) )
))
(declare-datatypes ((Hashable!3854 0))(
  ( (HashableExt!3853 (__x!21465 Int)) )
))
(declare-datatypes ((MutableMap!3844 0))(
  ( (MutableMapExt!3843 (__x!21466 Int)) (HashMap!3844 (underlying!8080 Cell!15563) (hashF!5886 Hashable!3854) (_size!7920 (_ BitVec 32)) (defaultValue!4015 Int)) )
))
(declare-datatypes ((CacheDown!2670 0))(
  ( (CacheDown!2671 (cache!3987 MutableMap!3844)) )
))
(declare-fun cacheDown!1009 () CacheDown!2670)

(declare-fun array_inv!4466 (array!14005) Bool)

(declare-fun array_inv!4467 (array!14007) Bool)

(assert (=> b!2790407 (= e!1761738 (and tp!885903 tp!885911 tp!885897 (array_inv!4466 (_keys!4238 (v!33949 (underlying!8079 (v!33950 (underlying!8080 (cache!3987 cacheDown!1009))))))) (array_inv!4467 (_values!4219 (v!33949 (underlying!8079 (v!33950 (underlying!8080 (cache!3987 cacheDown!1009))))))) e!1761730))))

(declare-fun b!2790408 () Bool)

(declare-fun e!1761735 () Bool)

(declare-fun e!1761737 () Bool)

(assert (=> b!2790408 (= e!1761735 e!1761737)))

(declare-fun e!1761739 () Bool)

(declare-fun e!1761724 () Bool)

(assert (=> b!2790409 (= e!1761739 (and e!1761724 tp!885902))))

(declare-fun b!2790411 () Bool)

(declare-fun e!1761740 () Bool)

(declare-fun e!1761743 () Bool)

(assert (=> b!2790411 (= e!1761740 e!1761743)))

(declare-fun b!2790412 () Bool)

(declare-fun e!1761742 () Bool)

(declare-fun tp!885893 () Bool)

(declare-fun mapRes!17933 () Bool)

(assert (=> b!2790412 (= e!1761742 (and tp!885893 mapRes!17933))))

(declare-fun condMapEmpty!17934 () Bool)

(declare-datatypes ((Hashable!3855 0))(
  ( (HashableExt!3854 (__x!21467 Int)) )
))
(declare-datatypes ((tuple2!32788 0))(
  ( (tuple2!32789 (_1!19404 Context!4778) (_2!19404 C!16500)) )
))
(declare-datatypes ((tuple2!32790 0))(
  ( (tuple2!32791 (_1!19405 tuple2!32788) (_2!19405 (InoxSet Context!4778))) )
))
(declare-datatypes ((List!32446 0))(
  ( (Nil!32346) (Cons!32346 (h!37766 tuple2!32790) (t!228588 List!32446)) )
))
(declare-datatypes ((array!14009 0))(
  ( (array!14010 (arr!6244 (Array (_ BitVec 32) List!32446)) (size!25177 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!7878 0))(
  ( (LongMapFixedSize!7879 (defaultEntry!4324 Int) (mask!9761 (_ BitVec 32)) (extraKeys!4188 (_ BitVec 32)) (zeroValue!4198 List!32446) (minValue!4198 List!32446) (_size!7921 (_ BitVec 32)) (_keys!4239 array!14005) (_values!4220 array!14009) (_vacant!4000 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!15565 0))(
  ( (Cell!15566 (v!33951 LongMapFixedSize!7878)) )
))
(declare-datatypes ((MutLongMap!3939 0))(
  ( (LongMap!3939 (underlying!8081 Cell!15565)) (MutLongMapExt!3938 (__x!21468 Int)) )
))
(declare-datatypes ((Cell!15567 0))(
  ( (Cell!15568 (v!33952 MutLongMap!3939)) )
))
(declare-datatypes ((MutableMap!3845 0))(
  ( (MutableMapExt!3844 (__x!21469 Int)) (HashMap!3845 (underlying!8082 Cell!15567) (hashF!5887 Hashable!3855) (_size!7922 (_ BitVec 32)) (defaultValue!4016 Int)) )
))
(declare-datatypes ((CacheUp!2550 0))(
  ( (CacheUp!2551 (cache!3988 MutableMap!3845)) )
))
(declare-fun cacheUp!890 () CacheUp!2550)

(declare-fun mapDefault!17934 () List!32446)

(assert (=> b!2790412 (= condMapEmpty!17934 (= (arr!6244 (_values!4220 (v!33951 (underlying!8081 (v!33952 (underlying!8082 (cache!3988 cacheUp!890))))))) ((as const (Array (_ BitVec 32) List!32446)) mapDefault!17934)))))

(declare-fun b!2790413 () Bool)

(declare-fun e!1761741 () Bool)

(declare-fun tp_is_empty!14155 () Bool)

(declare-fun tp!885907 () Bool)

(assert (=> b!2790413 (= e!1761741 (and tp_is_empty!14155 tp!885907))))

(declare-fun b!2790414 () Bool)

(declare-fun e!1761746 () Bool)

(declare-fun e!1761727 () Bool)

(assert (=> b!2790414 (= e!1761746 (not e!1761727))))

(declare-fun res!1164135 () Bool)

(assert (=> b!2790414 (=> res!1164135 e!1761727)))

(declare-fun testedP!183 () List!32443)

(declare-fun lt!997539 () List!32443)

(declare-fun isPrefix!2602 (List!32443 List!32443) Bool)

(assert (=> b!2790414 (= res!1164135 (not (isPrefix!2602 testedP!183 lt!997539)))))

(declare-fun lt!997538 () List!32443)

(assert (=> b!2790414 (isPrefix!2602 testedP!183 lt!997538)))

(declare-datatypes ((Unit!46544 0))(
  ( (Unit!46545) )
))
(declare-fun lt!997534 () Unit!46544)

(declare-fun testedSuffix!143 () List!32443)

(declare-fun lemmaConcatTwoListThenFirstIsPrefix!1711 (List!32443 List!32443) Unit!46544)

(assert (=> b!2790414 (= lt!997534 (lemmaConcatTwoListThenFirstIsPrefix!1711 testedP!183 testedSuffix!143))))

(declare-fun b!2790415 () Bool)

(declare-fun e!1761731 () Bool)

(declare-fun tp!885899 () Bool)

(assert (=> b!2790415 (= e!1761731 tp!885899)))

(declare-fun b!2790416 () Bool)

(declare-fun e!1761732 () Bool)

(declare-datatypes ((tuple2!32792 0))(
  ( (tuple2!32793 (_1!19406 BalanceConc!19686) (_2!19406 BalanceConc!19686)) )
))
(declare-fun lt!997533 () tuple2!32792)

(declare-fun ++!7984 (List!32443 List!32443) List!32443)

(declare-fun list!12164 (BalanceConc!19686) List!32443)

(assert (=> b!2790416 (= e!1761732 (= (++!7984 (list!12164 (_1!19406 lt!997533)) (list!12164 (_2!19406 lt!997533))) lt!997539))))

(declare-fun testedPSize!143 () Int)

(declare-fun splitAt!161 (BalanceConc!19686 Int) tuple2!32792)

(assert (=> b!2790416 (= lt!997533 (splitAt!161 totalInput!758 testedPSize!143))))

(declare-fun e!1761728 () Bool)

(assert (=> b!2790417 (= e!1761737 (and e!1761728 tp!885909))))

(declare-fun b!2790418 () Bool)

(declare-fun res!1164137 () Bool)

(assert (=> b!2790418 (=> (not res!1164137) (not e!1761746))))

(declare-fun size!25178 (List!32443) Int)

(assert (=> b!2790418 (= res!1164137 (= testedPSize!143 (size!25178 testedP!183)))))

(declare-fun b!2790419 () Bool)

(declare-fun e!1761729 () Bool)

(assert (=> b!2790419 (= e!1761729 e!1761740)))

(declare-fun tp!885908 () Bool)

(declare-fun tp!885901 () Bool)

(declare-fun array_inv!4468 (array!14009) Bool)

(assert (=> b!2790420 (= e!1761743 (and tp!885900 tp!885908 tp!885901 (array_inv!4466 (_keys!4239 (v!33951 (underlying!8081 (v!33952 (underlying!8082 (cache!3988 cacheUp!890))))))) (array_inv!4468 (_values!4220 (v!33951 (underlying!8081 (v!33952 (underlying!8082 (cache!3988 cacheUp!890))))))) e!1761742))))

(declare-fun b!2790410 () Bool)

(declare-fun tp!885904 () Bool)

(declare-fun mapRes!17934 () Bool)

(assert (=> b!2790410 (= e!1761730 (and tp!885904 mapRes!17934))))

(declare-fun condMapEmpty!17933 () Bool)

(declare-fun mapDefault!17933 () List!32445)

(assert (=> b!2790410 (= condMapEmpty!17933 (= (arr!6243 (_values!4219 (v!33949 (underlying!8079 (v!33950 (underlying!8080 (cache!3987 cacheDown!1009))))))) ((as const (Array (_ BitVec 32) List!32445)) mapDefault!17933)))))

(declare-fun res!1164140 () Bool)

(assert (=> start!269748 (=> (not res!1164140) (not e!1761746))))

(assert (=> start!269748 (= res!1164140 (= lt!997538 lt!997539))))

(assert (=> start!269748 (= lt!997539 (list!12164 totalInput!758))))

(assert (=> start!269748 (= lt!997538 (++!7984 testedP!183 testedSuffix!143))))

(assert (=> start!269748 e!1761746))

(declare-fun inv!43941 (BalanceConc!19686) Bool)

(assert (=> start!269748 (and (inv!43941 totalInput!758) e!1761736)))

(declare-fun condSetEmpty!23815 () Bool)

(declare-fun z!3684 () (InoxSet Context!4778))

(assert (=> start!269748 (= condSetEmpty!23815 (= z!3684 ((as const (Array Context!4778 Bool)) false)))))

(declare-fun setRes!23815 () Bool)

(assert (=> start!269748 setRes!23815))

(assert (=> start!269748 true))

(assert (=> start!269748 e!1761741))

(declare-fun e!1761733 () Bool)

(assert (=> start!269748 e!1761733))

(declare-fun e!1761745 () Bool)

(declare-fun inv!43942 (CacheDown!2670) Bool)

(assert (=> start!269748 (and (inv!43942 cacheDown!1009) e!1761745)))

(declare-fun inv!43943 (CacheUp!2550) Bool)

(assert (=> start!269748 (and (inv!43943 cacheUp!890) e!1761735)))

(declare-fun b!2790421 () Bool)

(declare-fun e!1761744 () Bool)

(declare-fun lt!997532 () MutLongMap!3938)

(get-info :version)

(assert (=> b!2790421 (= e!1761724 (and e!1761744 ((_ is LongMap!3938) lt!997532)))))

(assert (=> b!2790421 (= lt!997532 (v!33950 (underlying!8080 (cache!3987 cacheDown!1009))))))

(declare-fun b!2790422 () Bool)

(assert (=> b!2790422 (= e!1761745 e!1761739)))

(declare-fun b!2790423 () Bool)

(declare-fun res!1164139 () Bool)

(assert (=> b!2790423 (=> (not res!1164139) (not e!1761746))))

(declare-fun valid!3076 (CacheUp!2550) Bool)

(assert (=> b!2790423 (= res!1164139 (valid!3076 cacheUp!890))))

(declare-fun mapIsEmpty!17933 () Bool)

(assert (=> mapIsEmpty!17933 mapRes!17934))

(declare-fun b!2790424 () Bool)

(declare-fun tp!885910 () Bool)

(assert (=> b!2790424 (= e!1761733 (and tp_is_empty!14155 tp!885910))))

(declare-fun mapNonEmpty!17933 () Bool)

(declare-fun tp!885895 () Bool)

(declare-fun tp!885905 () Bool)

(assert (=> mapNonEmpty!17933 (= mapRes!17933 (and tp!885895 tp!885905))))

(declare-fun mapKey!17934 () (_ BitVec 32))

(declare-fun mapValue!17934 () List!32446)

(declare-fun mapRest!17934 () (Array (_ BitVec 32) List!32446))

(assert (=> mapNonEmpty!17933 (= (arr!6244 (_values!4220 (v!33951 (underlying!8081 (v!33952 (underlying!8082 (cache!3988 cacheUp!890))))))) (store mapRest!17934 mapKey!17934 mapValue!17934))))

(declare-fun setElem!23815 () Context!4778)

(declare-fun setNonEmpty!23815 () Bool)

(declare-fun tp!885896 () Bool)

(declare-fun inv!43944 (Context!4778) Bool)

(assert (=> setNonEmpty!23815 (= setRes!23815 (and tp!885896 (inv!43944 setElem!23815) e!1761731))))

(declare-fun setRest!23815 () (InoxSet Context!4778))

(assert (=> setNonEmpty!23815 (= z!3684 ((_ map or) (store ((as const (Array Context!4778 Bool)) false) setElem!23815 true) setRest!23815))))

(declare-fun mapNonEmpty!17934 () Bool)

(declare-fun tp!885906 () Bool)

(declare-fun tp!885898 () Bool)

(assert (=> mapNonEmpty!17934 (= mapRes!17934 (and tp!885906 tp!885898))))

(declare-fun mapRest!17933 () (Array (_ BitVec 32) List!32445))

(declare-fun mapValue!17933 () List!32445)

(declare-fun mapKey!17933 () (_ BitVec 32))

(assert (=> mapNonEmpty!17934 (= (arr!6243 (_values!4219 (v!33949 (underlying!8079 (v!33950 (underlying!8080 (cache!3987 cacheDown!1009))))))) (store mapRest!17933 mapKey!17933 mapValue!17933))))

(declare-fun b!2790425 () Bool)

(assert (=> b!2790425 (= e!1761727 e!1761732)))

(declare-fun res!1164134 () Bool)

(assert (=> b!2790425 (=> res!1164134 e!1761732)))

(declare-fun lostCauseZipper!478 ((InoxSet Context!4778)) Bool)

(assert (=> b!2790425 (= res!1164134 (lostCauseZipper!478 z!3684))))

(declare-fun lt!997537 () List!32443)

(assert (=> b!2790425 (and (= testedSuffix!143 lt!997537) (= lt!997537 testedSuffix!143))))

(declare-fun lt!997536 () Unit!46544)

(declare-fun lemmaSamePrefixThenSameSuffix!1179 (List!32443 List!32443 List!32443 List!32443 List!32443) Unit!46544)

(assert (=> b!2790425 (= lt!997536 (lemmaSamePrefixThenSameSuffix!1179 testedP!183 testedSuffix!143 testedP!183 lt!997537 lt!997539))))

(declare-fun getSuffix!1278 (List!32443 List!32443) List!32443)

(assert (=> b!2790425 (= lt!997537 (getSuffix!1278 lt!997539 testedP!183))))

(declare-fun b!2790426 () Bool)

(declare-fun res!1164138 () Bool)

(assert (=> b!2790426 (=> (not res!1164138) (not e!1761746))))

(declare-fun totalInputSize!205 () Int)

(declare-fun size!25179 (BalanceConc!19686) Int)

(assert (=> b!2790426 (= res!1164138 (= totalInputSize!205 (size!25179 totalInput!758)))))

(declare-fun b!2790427 () Bool)

(declare-fun res!1164141 () Bool)

(assert (=> b!2790427 (=> res!1164141 e!1761732)))

(assert (=> b!2790427 (= res!1164141 (= testedPSize!143 totalInputSize!205))))

(declare-fun b!2790428 () Bool)

(declare-fun lt!997535 () MutLongMap!3939)

(assert (=> b!2790428 (= e!1761728 (and e!1761729 ((_ is LongMap!3939) lt!997535)))))

(assert (=> b!2790428 (= lt!997535 (v!33952 (underlying!8082 (cache!3988 cacheUp!890))))))

(declare-fun b!2790429 () Bool)

(declare-fun e!1761726 () Bool)

(assert (=> b!2790429 (= e!1761726 e!1761738)))

(declare-fun b!2790430 () Bool)

(declare-fun res!1164136 () Bool)

(assert (=> b!2790430 (=> (not res!1164136) (not e!1761746))))

(declare-fun valid!3077 (CacheDown!2670) Bool)

(assert (=> b!2790430 (= res!1164136 (valid!3077 cacheDown!1009))))

(declare-fun b!2790431 () Bool)

(assert (=> b!2790431 (= e!1761744 e!1761726)))

(declare-fun setIsEmpty!23815 () Bool)

(assert (=> setIsEmpty!23815 setRes!23815))

(declare-fun mapIsEmpty!17934 () Bool)

(assert (=> mapIsEmpty!17934 mapRes!17933))

(assert (= (and start!269748 res!1164140) b!2790418))

(assert (= (and b!2790418 res!1164137) b!2790426))

(assert (= (and b!2790426 res!1164138) b!2790423))

(assert (= (and b!2790423 res!1164139) b!2790430))

(assert (= (and b!2790430 res!1164136) b!2790414))

(assert (= (and b!2790414 (not res!1164135)) b!2790425))

(assert (= (and b!2790425 (not res!1164134)) b!2790427))

(assert (= (and b!2790427 (not res!1164141)) b!2790416))

(assert (= start!269748 b!2790406))

(assert (= (and start!269748 condSetEmpty!23815) setIsEmpty!23815))

(assert (= (and start!269748 (not condSetEmpty!23815)) setNonEmpty!23815))

(assert (= setNonEmpty!23815 b!2790415))

(assert (= (and start!269748 ((_ is Cons!32343) testedP!183)) b!2790413))

(assert (= (and start!269748 ((_ is Cons!32343) testedSuffix!143)) b!2790424))

(assert (= (and b!2790410 condMapEmpty!17933) mapIsEmpty!17933))

(assert (= (and b!2790410 (not condMapEmpty!17933)) mapNonEmpty!17934))

(assert (= b!2790407 b!2790410))

(assert (= b!2790429 b!2790407))

(assert (= b!2790431 b!2790429))

(assert (= (and b!2790421 ((_ is LongMap!3938) (v!33950 (underlying!8080 (cache!3987 cacheDown!1009))))) b!2790431))

(assert (= b!2790409 b!2790421))

(assert (= (and b!2790422 ((_ is HashMap!3844) (cache!3987 cacheDown!1009))) b!2790409))

(assert (= start!269748 b!2790422))

(assert (= (and b!2790412 condMapEmpty!17934) mapIsEmpty!17934))

(assert (= (and b!2790412 (not condMapEmpty!17934)) mapNonEmpty!17933))

(assert (= b!2790420 b!2790412))

(assert (= b!2790411 b!2790420))

(assert (= b!2790419 b!2790411))

(assert (= (and b!2790428 ((_ is LongMap!3939) (v!33952 (underlying!8082 (cache!3988 cacheUp!890))))) b!2790419))

(assert (= b!2790417 b!2790428))

(assert (= (and b!2790408 ((_ is HashMap!3845) (cache!3988 cacheUp!890))) b!2790417))

(assert (= start!269748 b!2790408))

(declare-fun m!3220677 () Bool)

(assert (=> b!2790414 m!3220677))

(declare-fun m!3220679 () Bool)

(assert (=> b!2790414 m!3220679))

(declare-fun m!3220681 () Bool)

(assert (=> b!2790414 m!3220681))

(declare-fun m!3220683 () Bool)

(assert (=> b!2790426 m!3220683))

(declare-fun m!3220685 () Bool)

(assert (=> mapNonEmpty!17933 m!3220685))

(declare-fun m!3220687 () Bool)

(assert (=> b!2790407 m!3220687))

(declare-fun m!3220689 () Bool)

(assert (=> b!2790407 m!3220689))

(declare-fun m!3220691 () Bool)

(assert (=> b!2790425 m!3220691))

(declare-fun m!3220693 () Bool)

(assert (=> b!2790425 m!3220693))

(declare-fun m!3220695 () Bool)

(assert (=> b!2790425 m!3220695))

(declare-fun m!3220697 () Bool)

(assert (=> start!269748 m!3220697))

(declare-fun m!3220699 () Bool)

(assert (=> start!269748 m!3220699))

(declare-fun m!3220701 () Bool)

(assert (=> start!269748 m!3220701))

(declare-fun m!3220703 () Bool)

(assert (=> start!269748 m!3220703))

(declare-fun m!3220705 () Bool)

(assert (=> start!269748 m!3220705))

(declare-fun m!3220707 () Bool)

(assert (=> b!2790430 m!3220707))

(declare-fun m!3220709 () Bool)

(assert (=> b!2790420 m!3220709))

(declare-fun m!3220711 () Bool)

(assert (=> b!2790420 m!3220711))

(declare-fun m!3220713 () Bool)

(assert (=> b!2790423 m!3220713))

(declare-fun m!3220715 () Bool)

(assert (=> b!2790418 m!3220715))

(declare-fun m!3220717 () Bool)

(assert (=> setNonEmpty!23815 m!3220717))

(declare-fun m!3220719 () Bool)

(assert (=> b!2790406 m!3220719))

(declare-fun m!3220721 () Bool)

(assert (=> b!2790416 m!3220721))

(declare-fun m!3220723 () Bool)

(assert (=> b!2790416 m!3220723))

(assert (=> b!2790416 m!3220721))

(assert (=> b!2790416 m!3220723))

(declare-fun m!3220725 () Bool)

(assert (=> b!2790416 m!3220725))

(declare-fun m!3220727 () Bool)

(assert (=> b!2790416 m!3220727))

(declare-fun m!3220729 () Bool)

(assert (=> mapNonEmpty!17934 m!3220729))

(check-sat (not b!2790416) (not b!2790423) (not mapNonEmpty!17933) (not b!2790425) (not b_next!79705) (not mapNonEmpty!17934) (not setNonEmpty!23815) (not b!2790412) (not b!2790420) (not b!2790413) (not start!269748) (not b!2790426) b_and!203737 b_and!203741 (not b!2790430) b_and!203735 (not b!2790407) (not b!2790414) tp_is_empty!14155 b_and!203739 (not b!2790424) (not b!2790410) (not b!2790406) (not b!2790415) (not b_next!79703) (not b_next!79701) (not b!2790418) (not b_next!79707))
(check-sat b_and!203735 b_and!203739 (not b_next!79705) (not b_next!79707) b_and!203737 b_and!203741 (not b_next!79703) (not b_next!79701))
(get-model)

(declare-fun d!811292 () Bool)

(declare-fun validCacheMapUp!386 (MutableMap!3845) Bool)

(assert (=> d!811292 (= (valid!3076 cacheUp!890) (validCacheMapUp!386 (cache!3988 cacheUp!890)))))

(declare-fun bs!511106 () Bool)

(assert (= bs!511106 d!811292))

(declare-fun m!3220731 () Bool)

(assert (=> bs!511106 m!3220731))

(assert (=> b!2790423 d!811292))

(declare-fun d!811294 () Bool)

(declare-fun validCacheMapDown!417 (MutableMap!3844) Bool)

(assert (=> d!811294 (= (valid!3077 cacheDown!1009) (validCacheMapDown!417 (cache!3987 cacheDown!1009)))))

(declare-fun bs!511107 () Bool)

(assert (= bs!511107 d!811294))

(declare-fun m!3220733 () Bool)

(assert (=> bs!511107 m!3220733))

(assert (=> b!2790430 d!811294))

(declare-fun d!811296 () Bool)

(declare-fun lt!997542 () Int)

(assert (=> d!811296 (= lt!997542 (size!25178 (list!12164 totalInput!758)))))

(declare-fun size!25180 (Conc!10036) Int)

(assert (=> d!811296 (= lt!997542 (size!25180 (c!452950 totalInput!758)))))

(assert (=> d!811296 (= (size!25179 totalInput!758) lt!997542)))

(declare-fun bs!511108 () Bool)

(assert (= bs!511108 d!811296))

(assert (=> bs!511108 m!3220697))

(assert (=> bs!511108 m!3220697))

(declare-fun m!3220735 () Bool)

(assert (=> bs!511108 m!3220735))

(declare-fun m!3220737 () Bool)

(assert (=> bs!511108 m!3220737))

(assert (=> b!2790426 d!811296))

(declare-fun bs!511109 () Bool)

(declare-fun b!2790436 () Bool)

(declare-fun d!811298 () Bool)

(assert (= bs!511109 (and b!2790436 d!811298)))

(declare-fun lambda!102379 () Int)

(declare-fun lambda!102378 () Int)

(assert (=> bs!511109 (not (= lambda!102379 lambda!102378))))

(declare-fun bs!511110 () Bool)

(declare-fun b!2790437 () Bool)

(assert (= bs!511110 (and b!2790437 d!811298)))

(declare-fun lambda!102380 () Int)

(assert (=> bs!511110 (not (= lambda!102380 lambda!102378))))

(declare-fun bs!511111 () Bool)

(assert (= bs!511111 (and b!2790437 b!2790436)))

(assert (=> bs!511111 (= lambda!102380 lambda!102379)))

(declare-fun lt!997559 () Bool)

(declare-datatypes ((Option!6277 0))(
  ( (None!6276) (Some!6276 (v!33953 List!32443)) )
))
(declare-fun isEmpty!18121 (Option!6277) Bool)

(declare-fun getLanguageWitness!207 ((InoxSet Context!4778)) Option!6277)

(assert (=> d!811298 (= lt!997559 (isEmpty!18121 (getLanguageWitness!207 z!3684)))))

(declare-fun forall!6669 ((InoxSet Context!4778) Int) Bool)

(assert (=> d!811298 (= lt!997559 (forall!6669 z!3684 lambda!102378))))

(declare-fun lt!997564 () Unit!46544)

(declare-fun e!1761753 () Unit!46544)

(assert (=> d!811298 (= lt!997564 e!1761753)))

(declare-fun c!452962 () Bool)

(assert (=> d!811298 (= c!452962 (not (forall!6669 z!3684 lambda!102378)))))

(assert (=> d!811298 (= (lostCauseZipper!478 z!3684) lt!997559)))

(declare-fun Unit!46546 () Unit!46544)

(assert (=> b!2790437 (= e!1761753 Unit!46546)))

(declare-datatypes ((List!32447 0))(
  ( (Nil!32347) (Cons!32347 (h!37767 Context!4778) (t!228589 List!32447)) )
))
(declare-fun lt!997563 () List!32447)

(declare-fun call!182612 () List!32447)

(assert (=> b!2790437 (= lt!997563 call!182612)))

(declare-fun lt!997562 () Unit!46544)

(declare-fun lemmaForallThenNotExists!99 (List!32447 Int) Unit!46544)

(assert (=> b!2790437 (= lt!997562 (lemmaForallThenNotExists!99 lt!997563 lambda!102378))))

(declare-fun call!182611 () Bool)

(assert (=> b!2790437 (not call!182611)))

(declare-fun lt!997561 () Unit!46544)

(assert (=> b!2790437 (= lt!997561 lt!997562)))

(declare-fun bm!182606 () Bool)

(declare-fun toList!1862 ((InoxSet Context!4778)) List!32447)

(assert (=> bm!182606 (= call!182612 (toList!1862 z!3684))))

(declare-fun lt!997565 () List!32447)

(declare-fun bm!182607 () Bool)

(declare-fun exists!1001 (List!32447 Int) Bool)

(assert (=> bm!182607 (= call!182611 (exists!1001 (ite c!452962 lt!997565 lt!997563) (ite c!452962 lambda!102379 lambda!102380)))))

(declare-fun Unit!46547 () Unit!46544)

(assert (=> b!2790436 (= e!1761753 Unit!46547)))

(assert (=> b!2790436 (= lt!997565 call!182612)))

(declare-fun lt!997560 () Unit!46544)

(declare-fun lemmaNotForallThenExists!99 (List!32447 Int) Unit!46544)

(assert (=> b!2790436 (= lt!997560 (lemmaNotForallThenExists!99 lt!997565 lambda!102378))))

(assert (=> b!2790436 call!182611))

(declare-fun lt!997566 () Unit!46544)

(assert (=> b!2790436 (= lt!997566 lt!997560)))

(assert (= (and d!811298 c!452962) b!2790436))

(assert (= (and d!811298 (not c!452962)) b!2790437))

(assert (= (or b!2790436 b!2790437) bm!182606))

(assert (= (or b!2790436 b!2790437) bm!182607))

(declare-fun m!3220739 () Bool)

(assert (=> d!811298 m!3220739))

(assert (=> d!811298 m!3220739))

(declare-fun m!3220741 () Bool)

(assert (=> d!811298 m!3220741))

(declare-fun m!3220743 () Bool)

(assert (=> d!811298 m!3220743))

(assert (=> d!811298 m!3220743))

(declare-fun m!3220745 () Bool)

(assert (=> bm!182607 m!3220745))

(declare-fun m!3220747 () Bool)

(assert (=> b!2790437 m!3220747))

(declare-fun m!3220749 () Bool)

(assert (=> bm!182606 m!3220749))

(declare-fun m!3220751 () Bool)

(assert (=> b!2790436 m!3220751))

(assert (=> b!2790425 d!811298))

(declare-fun d!811300 () Bool)

(assert (=> d!811300 (= testedSuffix!143 lt!997537)))

(declare-fun lt!997569 () Unit!46544)

(declare-fun choose!16409 (List!32443 List!32443 List!32443 List!32443 List!32443) Unit!46544)

(assert (=> d!811300 (= lt!997569 (choose!16409 testedP!183 testedSuffix!143 testedP!183 lt!997537 lt!997539))))

(assert (=> d!811300 (isPrefix!2602 testedP!183 lt!997539)))

(assert (=> d!811300 (= (lemmaSamePrefixThenSameSuffix!1179 testedP!183 testedSuffix!143 testedP!183 lt!997537 lt!997539) lt!997569)))

(declare-fun bs!511112 () Bool)

(assert (= bs!511112 d!811300))

(declare-fun m!3220753 () Bool)

(assert (=> bs!511112 m!3220753))

(assert (=> bs!511112 m!3220677))

(assert (=> b!2790425 d!811300))

(declare-fun d!811302 () Bool)

(declare-fun lt!997572 () List!32443)

(assert (=> d!811302 (= (++!7984 testedP!183 lt!997572) lt!997539)))

(declare-fun e!1761756 () List!32443)

(assert (=> d!811302 (= lt!997572 e!1761756)))

(declare-fun c!452965 () Bool)

(assert (=> d!811302 (= c!452965 ((_ is Cons!32343) testedP!183))))

(assert (=> d!811302 (>= (size!25178 lt!997539) (size!25178 testedP!183))))

(assert (=> d!811302 (= (getSuffix!1278 lt!997539 testedP!183) lt!997572)))

(declare-fun b!2790442 () Bool)

(declare-fun tail!4414 (List!32443) List!32443)

(assert (=> b!2790442 (= e!1761756 (getSuffix!1278 (tail!4414 lt!997539) (t!228585 testedP!183)))))

(declare-fun b!2790443 () Bool)

(assert (=> b!2790443 (= e!1761756 lt!997539)))

(assert (= (and d!811302 c!452965) b!2790442))

(assert (= (and d!811302 (not c!452965)) b!2790443))

(declare-fun m!3220755 () Bool)

(assert (=> d!811302 m!3220755))

(declare-fun m!3220757 () Bool)

(assert (=> d!811302 m!3220757))

(assert (=> d!811302 m!3220715))

(declare-fun m!3220759 () Bool)

(assert (=> b!2790442 m!3220759))

(assert (=> b!2790442 m!3220759))

(declare-fun m!3220761 () Bool)

(assert (=> b!2790442 m!3220761))

(assert (=> b!2790425 d!811302))

(declare-fun d!811304 () Bool)

(assert (=> d!811304 (= (array_inv!4466 (_keys!4239 (v!33951 (underlying!8081 (v!33952 (underlying!8082 (cache!3988 cacheUp!890))))))) (bvsge (size!25175 (_keys!4239 (v!33951 (underlying!8081 (v!33952 (underlying!8082 (cache!3988 cacheUp!890))))))) #b00000000000000000000000000000000))))

(assert (=> b!2790420 d!811304))

(declare-fun d!811306 () Bool)

(assert (=> d!811306 (= (array_inv!4468 (_values!4220 (v!33951 (underlying!8081 (v!33952 (underlying!8082 (cache!3988 cacheUp!890))))))) (bvsge (size!25177 (_values!4220 (v!33951 (underlying!8081 (v!33952 (underlying!8082 (cache!3988 cacheUp!890))))))) #b00000000000000000000000000000000))))

(assert (=> b!2790420 d!811306))

(declare-fun d!811308 () Bool)

(declare-fun lambda!102383 () Int)

(declare-fun forall!6670 (List!32444 Int) Bool)

(assert (=> d!811308 (= (inv!43944 setElem!23815) (forall!6670 (exprs!2889 setElem!23815) lambda!102383))))

(declare-fun bs!511113 () Bool)

(assert (= bs!511113 d!811308))

(declare-fun m!3220763 () Bool)

(assert (=> bs!511113 m!3220763))

(assert (=> setNonEmpty!23815 d!811308))

(declare-fun d!811310 () Bool)

(declare-fun c!452968 () Bool)

(assert (=> d!811310 (= c!452968 ((_ is Node!10036) (c!452950 totalInput!758)))))

(declare-fun e!1761761 () Bool)

(assert (=> d!811310 (= (inv!43940 (c!452950 totalInput!758)) e!1761761)))

(declare-fun b!2790450 () Bool)

(declare-fun inv!43945 (Conc!10036) Bool)

(assert (=> b!2790450 (= e!1761761 (inv!43945 (c!452950 totalInput!758)))))

(declare-fun b!2790451 () Bool)

(declare-fun e!1761762 () Bool)

(assert (=> b!2790451 (= e!1761761 e!1761762)))

(declare-fun res!1164144 () Bool)

(assert (=> b!2790451 (= res!1164144 (not ((_ is Leaf!15290) (c!452950 totalInput!758))))))

(assert (=> b!2790451 (=> res!1164144 e!1761762)))

(declare-fun b!2790452 () Bool)

(declare-fun inv!43946 (Conc!10036) Bool)

(assert (=> b!2790452 (= e!1761762 (inv!43946 (c!452950 totalInput!758)))))

(assert (= (and d!811310 c!452968) b!2790450))

(assert (= (and d!811310 (not c!452968)) b!2790451))

(assert (= (and b!2790451 (not res!1164144)) b!2790452))

(declare-fun m!3220765 () Bool)

(assert (=> b!2790450 m!3220765))

(declare-fun m!3220767 () Bool)

(assert (=> b!2790452 m!3220767))

(assert (=> b!2790406 d!811310))

(declare-fun d!811312 () Bool)

(declare-fun res!1164147 () Bool)

(declare-fun e!1761765 () Bool)

(assert (=> d!811312 (=> (not res!1164147) (not e!1761765))))

(assert (=> d!811312 (= res!1164147 ((_ is HashMap!3845) (cache!3988 cacheUp!890)))))

(assert (=> d!811312 (= (inv!43943 cacheUp!890) e!1761765)))

(declare-fun b!2790455 () Bool)

(assert (=> b!2790455 (= e!1761765 (validCacheMapUp!386 (cache!3988 cacheUp!890)))))

(assert (= (and d!811312 res!1164147) b!2790455))

(assert (=> b!2790455 m!3220731))

(assert (=> start!269748 d!811312))

(declare-fun d!811314 () Bool)

(declare-fun isBalanced!3062 (Conc!10036) Bool)

(assert (=> d!811314 (= (inv!43941 totalInput!758) (isBalanced!3062 (c!452950 totalInput!758)))))

(declare-fun bs!511114 () Bool)

(assert (= bs!511114 d!811314))

(declare-fun m!3220769 () Bool)

(assert (=> bs!511114 m!3220769))

(assert (=> start!269748 d!811314))

(declare-fun d!811316 () Bool)

(declare-fun res!1164150 () Bool)

(declare-fun e!1761768 () Bool)

(assert (=> d!811316 (=> (not res!1164150) (not e!1761768))))

(assert (=> d!811316 (= res!1164150 ((_ is HashMap!3844) (cache!3987 cacheDown!1009)))))

(assert (=> d!811316 (= (inv!43942 cacheDown!1009) e!1761768)))

(declare-fun b!2790458 () Bool)

(assert (=> b!2790458 (= e!1761768 (validCacheMapDown!417 (cache!3987 cacheDown!1009)))))

(assert (= (and d!811316 res!1164150) b!2790458))

(assert (=> b!2790458 m!3220733))

(assert (=> start!269748 d!811316))

(declare-fun d!811318 () Bool)

(declare-fun list!12165 (Conc!10036) List!32443)

(assert (=> d!811318 (= (list!12164 totalInput!758) (list!12165 (c!452950 totalInput!758)))))

(declare-fun bs!511115 () Bool)

(assert (= bs!511115 d!811318))

(declare-fun m!3220771 () Bool)

(assert (=> bs!511115 m!3220771))

(assert (=> start!269748 d!811318))

(declare-fun b!2790470 () Bool)

(declare-fun lt!997575 () List!32443)

(declare-fun e!1761773 () Bool)

(assert (=> b!2790470 (= e!1761773 (or (not (= testedSuffix!143 Nil!32343)) (= lt!997575 testedP!183)))))

(declare-fun b!2790468 () Bool)

(declare-fun e!1761774 () List!32443)

(assert (=> b!2790468 (= e!1761774 (Cons!32343 (h!37763 testedP!183) (++!7984 (t!228585 testedP!183) testedSuffix!143)))))

(declare-fun b!2790469 () Bool)

(declare-fun res!1164156 () Bool)

(assert (=> b!2790469 (=> (not res!1164156) (not e!1761773))))

(assert (=> b!2790469 (= res!1164156 (= (size!25178 lt!997575) (+ (size!25178 testedP!183) (size!25178 testedSuffix!143))))))

(declare-fun b!2790467 () Bool)

(assert (=> b!2790467 (= e!1761774 testedSuffix!143)))

(declare-fun d!811320 () Bool)

(assert (=> d!811320 e!1761773))

(declare-fun res!1164155 () Bool)

(assert (=> d!811320 (=> (not res!1164155) (not e!1761773))))

(declare-fun content!4527 (List!32443) (InoxSet C!16500))

(assert (=> d!811320 (= res!1164155 (= (content!4527 lt!997575) ((_ map or) (content!4527 testedP!183) (content!4527 testedSuffix!143))))))

(assert (=> d!811320 (= lt!997575 e!1761774)))

(declare-fun c!452971 () Bool)

(assert (=> d!811320 (= c!452971 ((_ is Nil!32343) testedP!183))))

(assert (=> d!811320 (= (++!7984 testedP!183 testedSuffix!143) lt!997575)))

(assert (= (and d!811320 c!452971) b!2790467))

(assert (= (and d!811320 (not c!452971)) b!2790468))

(assert (= (and d!811320 res!1164155) b!2790469))

(assert (= (and b!2790469 res!1164156) b!2790470))

(declare-fun m!3220773 () Bool)

(assert (=> b!2790468 m!3220773))

(declare-fun m!3220775 () Bool)

(assert (=> b!2790469 m!3220775))

(assert (=> b!2790469 m!3220715))

(declare-fun m!3220777 () Bool)

(assert (=> b!2790469 m!3220777))

(declare-fun m!3220779 () Bool)

(assert (=> d!811320 m!3220779))

(declare-fun m!3220781 () Bool)

(assert (=> d!811320 m!3220781))

(declare-fun m!3220783 () Bool)

(assert (=> d!811320 m!3220783))

(assert (=> start!269748 d!811320))

(declare-fun b!2790474 () Bool)

(declare-fun e!1761775 () Bool)

(declare-fun lt!997576 () List!32443)

(assert (=> b!2790474 (= e!1761775 (or (not (= (list!12164 (_2!19406 lt!997533)) Nil!32343)) (= lt!997576 (list!12164 (_1!19406 lt!997533)))))))

(declare-fun b!2790472 () Bool)

(declare-fun e!1761776 () List!32443)

(assert (=> b!2790472 (= e!1761776 (Cons!32343 (h!37763 (list!12164 (_1!19406 lt!997533))) (++!7984 (t!228585 (list!12164 (_1!19406 lt!997533))) (list!12164 (_2!19406 lt!997533)))))))

(declare-fun b!2790473 () Bool)

(declare-fun res!1164158 () Bool)

(assert (=> b!2790473 (=> (not res!1164158) (not e!1761775))))

(assert (=> b!2790473 (= res!1164158 (= (size!25178 lt!997576) (+ (size!25178 (list!12164 (_1!19406 lt!997533))) (size!25178 (list!12164 (_2!19406 lt!997533))))))))

(declare-fun b!2790471 () Bool)

(assert (=> b!2790471 (= e!1761776 (list!12164 (_2!19406 lt!997533)))))

(declare-fun d!811322 () Bool)

(assert (=> d!811322 e!1761775))

(declare-fun res!1164157 () Bool)

(assert (=> d!811322 (=> (not res!1164157) (not e!1761775))))

(assert (=> d!811322 (= res!1164157 (= (content!4527 lt!997576) ((_ map or) (content!4527 (list!12164 (_1!19406 lt!997533))) (content!4527 (list!12164 (_2!19406 lt!997533))))))))

(assert (=> d!811322 (= lt!997576 e!1761776)))

(declare-fun c!452972 () Bool)

(assert (=> d!811322 (= c!452972 ((_ is Nil!32343) (list!12164 (_1!19406 lt!997533))))))

(assert (=> d!811322 (= (++!7984 (list!12164 (_1!19406 lt!997533)) (list!12164 (_2!19406 lt!997533))) lt!997576)))

(assert (= (and d!811322 c!452972) b!2790471))

(assert (= (and d!811322 (not c!452972)) b!2790472))

(assert (= (and d!811322 res!1164157) b!2790473))

(assert (= (and b!2790473 res!1164158) b!2790474))

(assert (=> b!2790472 m!3220723))

(declare-fun m!3220785 () Bool)

(assert (=> b!2790472 m!3220785))

(declare-fun m!3220787 () Bool)

(assert (=> b!2790473 m!3220787))

(assert (=> b!2790473 m!3220721))

(declare-fun m!3220789 () Bool)

(assert (=> b!2790473 m!3220789))

(assert (=> b!2790473 m!3220723))

(declare-fun m!3220791 () Bool)

(assert (=> b!2790473 m!3220791))

(declare-fun m!3220793 () Bool)

(assert (=> d!811322 m!3220793))

(assert (=> d!811322 m!3220721))

(declare-fun m!3220795 () Bool)

(assert (=> d!811322 m!3220795))

(assert (=> d!811322 m!3220723))

(declare-fun m!3220797 () Bool)

(assert (=> d!811322 m!3220797))

(assert (=> b!2790416 d!811322))

(declare-fun d!811324 () Bool)

(assert (=> d!811324 (= (list!12164 (_1!19406 lt!997533)) (list!12165 (c!452950 (_1!19406 lt!997533))))))

(declare-fun bs!511116 () Bool)

(assert (= bs!511116 d!811324))

(declare-fun m!3220799 () Bool)

(assert (=> bs!511116 m!3220799))

(assert (=> b!2790416 d!811324))

(declare-fun d!811326 () Bool)

(assert (=> d!811326 (= (list!12164 (_2!19406 lt!997533)) (list!12165 (c!452950 (_2!19406 lt!997533))))))

(declare-fun bs!511117 () Bool)

(assert (= bs!511117 d!811326))

(declare-fun m!3220801 () Bool)

(assert (=> bs!511117 m!3220801))

(assert (=> b!2790416 d!811326))

(declare-fun d!811328 () Bool)

(declare-fun e!1761779 () Bool)

(assert (=> d!811328 e!1761779))

(declare-fun res!1164164 () Bool)

(assert (=> d!811328 (=> (not res!1164164) (not e!1761779))))

(declare-fun lt!997582 () tuple2!32792)

(assert (=> d!811328 (= res!1164164 (isBalanced!3062 (c!452950 (_1!19406 lt!997582))))))

(declare-datatypes ((tuple2!32794 0))(
  ( (tuple2!32795 (_1!19407 Conc!10036) (_2!19407 Conc!10036)) )
))
(declare-fun lt!997581 () tuple2!32794)

(assert (=> d!811328 (= lt!997582 (tuple2!32793 (BalanceConc!19687 (_1!19407 lt!997581)) (BalanceConc!19687 (_2!19407 lt!997581))))))

(declare-fun splitAt!162 (Conc!10036 Int) tuple2!32794)

(assert (=> d!811328 (= lt!997581 (splitAt!162 (c!452950 totalInput!758) testedPSize!143))))

(assert (=> d!811328 (isBalanced!3062 (c!452950 totalInput!758))))

(assert (=> d!811328 (= (splitAt!161 totalInput!758 testedPSize!143) lt!997582)))

(declare-fun b!2790479 () Bool)

(declare-fun res!1164163 () Bool)

(assert (=> b!2790479 (=> (not res!1164163) (not e!1761779))))

(assert (=> b!2790479 (= res!1164163 (isBalanced!3062 (c!452950 (_2!19406 lt!997582))))))

(declare-fun b!2790480 () Bool)

(declare-datatypes ((tuple2!32796 0))(
  ( (tuple2!32797 (_1!19408 List!32443) (_2!19408 List!32443)) )
))
(declare-fun splitAtIndex!65 (List!32443 Int) tuple2!32796)

(assert (=> b!2790480 (= e!1761779 (= (tuple2!32797 (list!12164 (_1!19406 lt!997582)) (list!12164 (_2!19406 lt!997582))) (splitAtIndex!65 (list!12164 totalInput!758) testedPSize!143)))))

(assert (= (and d!811328 res!1164164) b!2790479))

(assert (= (and b!2790479 res!1164163) b!2790480))

(declare-fun m!3220803 () Bool)

(assert (=> d!811328 m!3220803))

(declare-fun m!3220805 () Bool)

(assert (=> d!811328 m!3220805))

(assert (=> d!811328 m!3220769))

(declare-fun m!3220807 () Bool)

(assert (=> b!2790479 m!3220807))

(declare-fun m!3220809 () Bool)

(assert (=> b!2790480 m!3220809))

(declare-fun m!3220811 () Bool)

(assert (=> b!2790480 m!3220811))

(assert (=> b!2790480 m!3220697))

(assert (=> b!2790480 m!3220697))

(declare-fun m!3220813 () Bool)

(assert (=> b!2790480 m!3220813))

(assert (=> b!2790416 d!811328))

(declare-fun d!811330 () Bool)

(assert (=> d!811330 (= (array_inv!4466 (_keys!4238 (v!33949 (underlying!8079 (v!33950 (underlying!8080 (cache!3987 cacheDown!1009))))))) (bvsge (size!25175 (_keys!4238 (v!33949 (underlying!8079 (v!33950 (underlying!8080 (cache!3987 cacheDown!1009))))))) #b00000000000000000000000000000000))))

(assert (=> b!2790407 d!811330))

(declare-fun d!811332 () Bool)

(assert (=> d!811332 (= (array_inv!4467 (_values!4219 (v!33949 (underlying!8079 (v!33950 (underlying!8080 (cache!3987 cacheDown!1009))))))) (bvsge (size!25176 (_values!4219 (v!33949 (underlying!8079 (v!33950 (underlying!8080 (cache!3987 cacheDown!1009))))))) #b00000000000000000000000000000000))))

(assert (=> b!2790407 d!811332))

(declare-fun d!811334 () Bool)

(declare-fun lt!997585 () Int)

(assert (=> d!811334 (>= lt!997585 0)))

(declare-fun e!1761782 () Int)

(assert (=> d!811334 (= lt!997585 e!1761782)))

(declare-fun c!452975 () Bool)

(assert (=> d!811334 (= c!452975 ((_ is Nil!32343) testedP!183))))

(assert (=> d!811334 (= (size!25178 testedP!183) lt!997585)))

(declare-fun b!2790485 () Bool)

(assert (=> b!2790485 (= e!1761782 0)))

(declare-fun b!2790486 () Bool)

(assert (=> b!2790486 (= e!1761782 (+ 1 (size!25178 (t!228585 testedP!183))))))

(assert (= (and d!811334 c!452975) b!2790485))

(assert (= (and d!811334 (not c!452975)) b!2790486))

(declare-fun m!3220815 () Bool)

(assert (=> b!2790486 m!3220815))

(assert (=> b!2790418 d!811334))

(declare-fun b!2790496 () Bool)

(declare-fun res!1164174 () Bool)

(declare-fun e!1761789 () Bool)

(assert (=> b!2790496 (=> (not res!1164174) (not e!1761789))))

(declare-fun head!6182 (List!32443) C!16500)

(assert (=> b!2790496 (= res!1164174 (= (head!6182 testedP!183) (head!6182 lt!997539)))))

(declare-fun d!811336 () Bool)

(declare-fun e!1761790 () Bool)

(assert (=> d!811336 e!1761790))

(declare-fun res!1164176 () Bool)

(assert (=> d!811336 (=> res!1164176 e!1761790)))

(declare-fun lt!997588 () Bool)

(assert (=> d!811336 (= res!1164176 (not lt!997588))))

(declare-fun e!1761791 () Bool)

(assert (=> d!811336 (= lt!997588 e!1761791)))

(declare-fun res!1164175 () Bool)

(assert (=> d!811336 (=> res!1164175 e!1761791)))

(assert (=> d!811336 (= res!1164175 ((_ is Nil!32343) testedP!183))))

(assert (=> d!811336 (= (isPrefix!2602 testedP!183 lt!997539) lt!997588)))

(declare-fun b!2790497 () Bool)

(assert (=> b!2790497 (= e!1761789 (isPrefix!2602 (tail!4414 testedP!183) (tail!4414 lt!997539)))))

(declare-fun b!2790498 () Bool)

(assert (=> b!2790498 (= e!1761790 (>= (size!25178 lt!997539) (size!25178 testedP!183)))))

(declare-fun b!2790495 () Bool)

(assert (=> b!2790495 (= e!1761791 e!1761789)))

(declare-fun res!1164173 () Bool)

(assert (=> b!2790495 (=> (not res!1164173) (not e!1761789))))

(assert (=> b!2790495 (= res!1164173 (not ((_ is Nil!32343) lt!997539)))))

(assert (= (and d!811336 (not res!1164175)) b!2790495))

(assert (= (and b!2790495 res!1164173) b!2790496))

(assert (= (and b!2790496 res!1164174) b!2790497))

(assert (= (and d!811336 (not res!1164176)) b!2790498))

(declare-fun m!3220817 () Bool)

(assert (=> b!2790496 m!3220817))

(declare-fun m!3220819 () Bool)

(assert (=> b!2790496 m!3220819))

(declare-fun m!3220821 () Bool)

(assert (=> b!2790497 m!3220821))

(assert (=> b!2790497 m!3220759))

(assert (=> b!2790497 m!3220821))

(assert (=> b!2790497 m!3220759))

(declare-fun m!3220823 () Bool)

(assert (=> b!2790497 m!3220823))

(assert (=> b!2790498 m!3220757))

(assert (=> b!2790498 m!3220715))

(assert (=> b!2790414 d!811336))

(declare-fun b!2790500 () Bool)

(declare-fun res!1164178 () Bool)

(declare-fun e!1761792 () Bool)

(assert (=> b!2790500 (=> (not res!1164178) (not e!1761792))))

(assert (=> b!2790500 (= res!1164178 (= (head!6182 testedP!183) (head!6182 lt!997538)))))

(declare-fun d!811338 () Bool)

(declare-fun e!1761793 () Bool)

(assert (=> d!811338 e!1761793))

(declare-fun res!1164180 () Bool)

(assert (=> d!811338 (=> res!1164180 e!1761793)))

(declare-fun lt!997589 () Bool)

(assert (=> d!811338 (= res!1164180 (not lt!997589))))

(declare-fun e!1761794 () Bool)

(assert (=> d!811338 (= lt!997589 e!1761794)))

(declare-fun res!1164179 () Bool)

(assert (=> d!811338 (=> res!1164179 e!1761794)))

(assert (=> d!811338 (= res!1164179 ((_ is Nil!32343) testedP!183))))

(assert (=> d!811338 (= (isPrefix!2602 testedP!183 lt!997538) lt!997589)))

(declare-fun b!2790501 () Bool)

(assert (=> b!2790501 (= e!1761792 (isPrefix!2602 (tail!4414 testedP!183) (tail!4414 lt!997538)))))

(declare-fun b!2790502 () Bool)

(assert (=> b!2790502 (= e!1761793 (>= (size!25178 lt!997538) (size!25178 testedP!183)))))

(declare-fun b!2790499 () Bool)

(assert (=> b!2790499 (= e!1761794 e!1761792)))

(declare-fun res!1164177 () Bool)

(assert (=> b!2790499 (=> (not res!1164177) (not e!1761792))))

(assert (=> b!2790499 (= res!1164177 (not ((_ is Nil!32343) lt!997538)))))

(assert (= (and d!811338 (not res!1164179)) b!2790499))

(assert (= (and b!2790499 res!1164177) b!2790500))

(assert (= (and b!2790500 res!1164178) b!2790501))

(assert (= (and d!811338 (not res!1164180)) b!2790502))

(assert (=> b!2790500 m!3220817))

(declare-fun m!3220825 () Bool)

(assert (=> b!2790500 m!3220825))

(assert (=> b!2790501 m!3220821))

(declare-fun m!3220827 () Bool)

(assert (=> b!2790501 m!3220827))

(assert (=> b!2790501 m!3220821))

(assert (=> b!2790501 m!3220827))

(declare-fun m!3220829 () Bool)

(assert (=> b!2790501 m!3220829))

(declare-fun m!3220831 () Bool)

(assert (=> b!2790502 m!3220831))

(assert (=> b!2790502 m!3220715))

(assert (=> b!2790414 d!811338))

(declare-fun d!811340 () Bool)

(assert (=> d!811340 (isPrefix!2602 testedP!183 (++!7984 testedP!183 testedSuffix!143))))

(declare-fun lt!997592 () Unit!46544)

(declare-fun choose!16410 (List!32443 List!32443) Unit!46544)

(assert (=> d!811340 (= lt!997592 (choose!16410 testedP!183 testedSuffix!143))))

(assert (=> d!811340 (= (lemmaConcatTwoListThenFirstIsPrefix!1711 testedP!183 testedSuffix!143) lt!997592)))

(declare-fun bs!511118 () Bool)

(assert (= bs!511118 d!811340))

(assert (=> bs!511118 m!3220705))

(assert (=> bs!511118 m!3220705))

(declare-fun m!3220833 () Bool)

(assert (=> bs!511118 m!3220833))

(declare-fun m!3220835 () Bool)

(assert (=> bs!511118 m!3220835))

(assert (=> b!2790414 d!811340))

(declare-fun condSetEmpty!23818 () Bool)

(assert (=> setNonEmpty!23815 (= condSetEmpty!23818 (= setRest!23815 ((as const (Array Context!4778 Bool)) false)))))

(declare-fun setRes!23818 () Bool)

(assert (=> setNonEmpty!23815 (= tp!885896 setRes!23818)))

(declare-fun setIsEmpty!23818 () Bool)

(assert (=> setIsEmpty!23818 setRes!23818))

(declare-fun setElem!23818 () Context!4778)

(declare-fun setNonEmpty!23818 () Bool)

(declare-fun e!1761797 () Bool)

(declare-fun tp!885917 () Bool)

(assert (=> setNonEmpty!23818 (= setRes!23818 (and tp!885917 (inv!43944 setElem!23818) e!1761797))))

(declare-fun setRest!23818 () (InoxSet Context!4778))

(assert (=> setNonEmpty!23818 (= setRest!23815 ((_ map or) (store ((as const (Array Context!4778 Bool)) false) setElem!23818 true) setRest!23818))))

(declare-fun b!2790507 () Bool)

(declare-fun tp!885916 () Bool)

(assert (=> b!2790507 (= e!1761797 tp!885916)))

(assert (= (and setNonEmpty!23815 condSetEmpty!23818) setIsEmpty!23818))

(assert (= (and setNonEmpty!23815 (not condSetEmpty!23818)) setNonEmpty!23818))

(assert (= setNonEmpty!23818 b!2790507))

(declare-fun m!3220837 () Bool)

(assert (=> setNonEmpty!23818 m!3220837))

(declare-fun b!2790516 () Bool)

(declare-fun e!1761802 () Bool)

(declare-fun tp!885926 () Bool)

(declare-fun tp!885924 () Bool)

(assert (=> b!2790516 (= e!1761802 (and (inv!43940 (left!24513 (c!452950 totalInput!758))) tp!885926 (inv!43940 (right!24843 (c!452950 totalInput!758))) tp!885924))))

(declare-fun b!2790518 () Bool)

(declare-fun e!1761803 () Bool)

(declare-fun tp!885925 () Bool)

(assert (=> b!2790518 (= e!1761803 tp!885925)))

(declare-fun b!2790517 () Bool)

(declare-fun inv!43947 (IArray!20077) Bool)

(assert (=> b!2790517 (= e!1761802 (and (inv!43947 (xs!13147 (c!452950 totalInput!758))) e!1761803))))

(assert (=> b!2790406 (= tp!885894 (and (inv!43940 (c!452950 totalInput!758)) e!1761802))))

(assert (= (and b!2790406 ((_ is Node!10036) (c!452950 totalInput!758))) b!2790516))

(assert (= b!2790517 b!2790518))

(assert (= (and b!2790406 ((_ is Leaf!15290) (c!452950 totalInput!758))) b!2790517))

(declare-fun m!3220839 () Bool)

(assert (=> b!2790516 m!3220839))

(declare-fun m!3220841 () Bool)

(assert (=> b!2790516 m!3220841))

(declare-fun m!3220843 () Bool)

(assert (=> b!2790517 m!3220843))

(assert (=> b!2790406 m!3220719))

(declare-fun b!2790527 () Bool)

(declare-fun e!1761810 () Bool)

(declare-fun tp!885941 () Bool)

(assert (=> b!2790527 (= e!1761810 tp!885941)))

(declare-fun tp!885938 () Bool)

(declare-fun setRes!23821 () Bool)

(declare-fun b!2790528 () Bool)

(declare-fun tp!885937 () Bool)

(declare-fun e!1761811 () Bool)

(assert (=> b!2790528 (= e!1761811 (and tp!885937 (inv!43944 (_2!19402 (_1!19403 (h!37765 (zeroValue!4197 (v!33949 (underlying!8079 (v!33950 (underlying!8080 (cache!3987 cacheDown!1009)))))))))) e!1761810 tp_is_empty!14155 setRes!23821 tp!885938))))

(declare-fun condSetEmpty!23821 () Bool)

(assert (=> b!2790528 (= condSetEmpty!23821 (= (_2!19403 (h!37765 (zeroValue!4197 (v!33949 (underlying!8079 (v!33950 (underlying!8080 (cache!3987 cacheDown!1009)))))))) ((as const (Array Context!4778 Bool)) false)))))

(declare-fun tp!885939 () Bool)

(declare-fun setElem!23821 () Context!4778)

(declare-fun setNonEmpty!23821 () Bool)

(declare-fun e!1761812 () Bool)

(assert (=> setNonEmpty!23821 (= setRes!23821 (and tp!885939 (inv!43944 setElem!23821) e!1761812))))

(declare-fun setRest!23821 () (InoxSet Context!4778))

(assert (=> setNonEmpty!23821 (= (_2!19403 (h!37765 (zeroValue!4197 (v!33949 (underlying!8079 (v!33950 (underlying!8080 (cache!3987 cacheDown!1009)))))))) ((_ map or) (store ((as const (Array Context!4778 Bool)) false) setElem!23821 true) setRest!23821))))

(declare-fun b!2790529 () Bool)

(declare-fun tp!885940 () Bool)

(assert (=> b!2790529 (= e!1761812 tp!885940)))

(declare-fun setIsEmpty!23821 () Bool)

(assert (=> setIsEmpty!23821 setRes!23821))

(assert (=> b!2790407 (= tp!885911 e!1761811)))

(assert (= b!2790528 b!2790527))

(assert (= (and b!2790528 condSetEmpty!23821) setIsEmpty!23821))

(assert (= (and b!2790528 (not condSetEmpty!23821)) setNonEmpty!23821))

(assert (= setNonEmpty!23821 b!2790529))

(assert (= (and b!2790407 ((_ is Cons!32345) (zeroValue!4197 (v!33949 (underlying!8079 (v!33950 (underlying!8080 (cache!3987 cacheDown!1009)))))))) b!2790528))

(declare-fun m!3220845 () Bool)

(assert (=> b!2790528 m!3220845))

(declare-fun m!3220847 () Bool)

(assert (=> setNonEmpty!23821 m!3220847))

(declare-fun b!2790530 () Bool)

(declare-fun e!1761813 () Bool)

(declare-fun tp!885946 () Bool)

(assert (=> b!2790530 (= e!1761813 tp!885946)))

(declare-fun setRes!23822 () Bool)

(declare-fun e!1761814 () Bool)

(declare-fun tp!885942 () Bool)

(declare-fun tp!885943 () Bool)

(declare-fun b!2790531 () Bool)

(assert (=> b!2790531 (= e!1761814 (and tp!885942 (inv!43944 (_2!19402 (_1!19403 (h!37765 (minValue!4197 (v!33949 (underlying!8079 (v!33950 (underlying!8080 (cache!3987 cacheDown!1009)))))))))) e!1761813 tp_is_empty!14155 setRes!23822 tp!885943))))

(declare-fun condSetEmpty!23822 () Bool)

(assert (=> b!2790531 (= condSetEmpty!23822 (= (_2!19403 (h!37765 (minValue!4197 (v!33949 (underlying!8079 (v!33950 (underlying!8080 (cache!3987 cacheDown!1009)))))))) ((as const (Array Context!4778 Bool)) false)))))

(declare-fun setNonEmpty!23822 () Bool)

(declare-fun setElem!23822 () Context!4778)

(declare-fun tp!885944 () Bool)

(declare-fun e!1761815 () Bool)

(assert (=> setNonEmpty!23822 (= setRes!23822 (and tp!885944 (inv!43944 setElem!23822) e!1761815))))

(declare-fun setRest!23822 () (InoxSet Context!4778))

(assert (=> setNonEmpty!23822 (= (_2!19403 (h!37765 (minValue!4197 (v!33949 (underlying!8079 (v!33950 (underlying!8080 (cache!3987 cacheDown!1009)))))))) ((_ map or) (store ((as const (Array Context!4778 Bool)) false) setElem!23822 true) setRest!23822))))

(declare-fun b!2790532 () Bool)

(declare-fun tp!885945 () Bool)

(assert (=> b!2790532 (= e!1761815 tp!885945)))

(declare-fun setIsEmpty!23822 () Bool)

(assert (=> setIsEmpty!23822 setRes!23822))

(assert (=> b!2790407 (= tp!885897 e!1761814)))

(assert (= b!2790531 b!2790530))

(assert (= (and b!2790531 condSetEmpty!23822) setIsEmpty!23822))

(assert (= (and b!2790531 (not condSetEmpty!23822)) setNonEmpty!23822))

(assert (= setNonEmpty!23822 b!2790532))

(assert (= (and b!2790407 ((_ is Cons!32345) (minValue!4197 (v!33949 (underlying!8079 (v!33950 (underlying!8080 (cache!3987 cacheDown!1009)))))))) b!2790531))

(declare-fun m!3220849 () Bool)

(assert (=> b!2790531 m!3220849))

(declare-fun m!3220851 () Bool)

(assert (=> setNonEmpty!23822 m!3220851))

(declare-fun b!2790547 () Bool)

(declare-fun tp!885976 () Bool)

(declare-fun e!1761829 () Bool)

(declare-fun setRes!23827 () Bool)

(declare-fun mapDefault!17937 () List!32445)

(declare-fun e!1761830 () Bool)

(declare-fun tp!885973 () Bool)

(assert (=> b!2790547 (= e!1761830 (and tp!885973 (inv!43944 (_2!19402 (_1!19403 (h!37765 mapDefault!17937)))) e!1761829 tp_is_empty!14155 setRes!23827 tp!885976))))

(declare-fun condSetEmpty!23828 () Bool)

(assert (=> b!2790547 (= condSetEmpty!23828 (= (_2!19403 (h!37765 mapDefault!17937)) ((as const (Array Context!4778 Bool)) false)))))

(declare-fun setIsEmpty!23827 () Bool)

(assert (=> setIsEmpty!23827 setRes!23827))

(declare-fun mapIsEmpty!17937 () Bool)

(declare-fun mapRes!17937 () Bool)

(assert (=> mapIsEmpty!17937 mapRes!17937))

(declare-fun setRes!23828 () Bool)

(declare-fun setElem!23828 () Context!4778)

(declare-fun e!1761832 () Bool)

(declare-fun tp!885972 () Bool)

(declare-fun setNonEmpty!23827 () Bool)

(assert (=> setNonEmpty!23827 (= setRes!23828 (and tp!885972 (inv!43944 setElem!23828) e!1761832))))

(declare-fun mapValue!17937 () List!32445)

(declare-fun setRest!23827 () (InoxSet Context!4778))

(assert (=> setNonEmpty!23827 (= (_2!19403 (h!37765 mapValue!17937)) ((_ map or) (store ((as const (Array Context!4778 Bool)) false) setElem!23828 true) setRest!23827))))

(declare-fun b!2790548 () Bool)

(declare-fun tp!885978 () Bool)

(assert (=> b!2790548 (= e!1761829 tp!885978)))

(declare-fun b!2790549 () Bool)

(declare-fun e!1761833 () Bool)

(declare-fun tp!885979 () Bool)

(assert (=> b!2790549 (= e!1761833 tp!885979)))

(declare-fun setElem!23827 () Context!4778)

(declare-fun tp!885975 () Bool)

(declare-fun setNonEmpty!23828 () Bool)

(assert (=> setNonEmpty!23828 (= setRes!23827 (and tp!885975 (inv!43944 setElem!23827) e!1761833))))

(declare-fun setRest!23828 () (InoxSet Context!4778))

(assert (=> setNonEmpty!23828 (= (_2!19403 (h!37765 mapDefault!17937)) ((_ map or) (store ((as const (Array Context!4778 Bool)) false) setElem!23827 true) setRest!23828))))

(declare-fun b!2790550 () Bool)

(declare-fun e!1761828 () Bool)

(declare-fun tp!885969 () Bool)

(assert (=> b!2790550 (= e!1761828 tp!885969)))

(declare-fun e!1761831 () Bool)

(declare-fun tp!885971 () Bool)

(declare-fun b!2790551 () Bool)

(declare-fun tp!885974 () Bool)

(assert (=> b!2790551 (= e!1761831 (and tp!885974 (inv!43944 (_2!19402 (_1!19403 (h!37765 mapValue!17937)))) e!1761828 tp_is_empty!14155 setRes!23828 tp!885971))))

(declare-fun condSetEmpty!23827 () Bool)

(assert (=> b!2790551 (= condSetEmpty!23827 (= (_2!19403 (h!37765 mapValue!17937)) ((as const (Array Context!4778 Bool)) false)))))

(declare-fun mapNonEmpty!17937 () Bool)

(declare-fun tp!885977 () Bool)

(assert (=> mapNonEmpty!17937 (= mapRes!17937 (and tp!885977 e!1761831))))

(declare-fun mapKey!17937 () (_ BitVec 32))

(declare-fun mapRest!17937 () (Array (_ BitVec 32) List!32445))

(assert (=> mapNonEmpty!17937 (= mapRest!17933 (store mapRest!17937 mapKey!17937 mapValue!17937))))

(declare-fun setIsEmpty!23828 () Bool)

(assert (=> setIsEmpty!23828 setRes!23828))

(declare-fun b!2790552 () Bool)

(declare-fun tp!885970 () Bool)

(assert (=> b!2790552 (= e!1761832 tp!885970)))

(declare-fun condMapEmpty!17937 () Bool)

(assert (=> mapNonEmpty!17934 (= condMapEmpty!17937 (= mapRest!17933 ((as const (Array (_ BitVec 32) List!32445)) mapDefault!17937)))))

(assert (=> mapNonEmpty!17934 (= tp!885906 (and e!1761830 mapRes!17937))))

(assert (= (and mapNonEmpty!17934 condMapEmpty!17937) mapIsEmpty!17937))

(assert (= (and mapNonEmpty!17934 (not condMapEmpty!17937)) mapNonEmpty!17937))

(assert (= b!2790551 b!2790550))

(assert (= (and b!2790551 condSetEmpty!23827) setIsEmpty!23828))

(assert (= (and b!2790551 (not condSetEmpty!23827)) setNonEmpty!23827))

(assert (= setNonEmpty!23827 b!2790552))

(assert (= (and mapNonEmpty!17937 ((_ is Cons!32345) mapValue!17937)) b!2790551))

(assert (= b!2790547 b!2790548))

(assert (= (and b!2790547 condSetEmpty!23828) setIsEmpty!23827))

(assert (= (and b!2790547 (not condSetEmpty!23828)) setNonEmpty!23828))

(assert (= setNonEmpty!23828 b!2790549))

(assert (= (and mapNonEmpty!17934 ((_ is Cons!32345) mapDefault!17937)) b!2790547))

(declare-fun m!3220853 () Bool)

(assert (=> mapNonEmpty!17937 m!3220853))

(declare-fun m!3220855 () Bool)

(assert (=> b!2790547 m!3220855))

(declare-fun m!3220857 () Bool)

(assert (=> b!2790551 m!3220857))

(declare-fun m!3220859 () Bool)

(assert (=> setNonEmpty!23828 m!3220859))

(declare-fun m!3220861 () Bool)

(assert (=> setNonEmpty!23827 m!3220861))

(declare-fun b!2790553 () Bool)

(declare-fun e!1761834 () Bool)

(declare-fun tp!885984 () Bool)

(assert (=> b!2790553 (= e!1761834 tp!885984)))

(declare-fun tp!885981 () Bool)

(declare-fun b!2790554 () Bool)

(declare-fun tp!885980 () Bool)

(declare-fun e!1761835 () Bool)

(declare-fun setRes!23829 () Bool)

(assert (=> b!2790554 (= e!1761835 (and tp!885980 (inv!43944 (_2!19402 (_1!19403 (h!37765 mapValue!17933)))) e!1761834 tp_is_empty!14155 setRes!23829 tp!885981))))

(declare-fun condSetEmpty!23829 () Bool)

(assert (=> b!2790554 (= condSetEmpty!23829 (= (_2!19403 (h!37765 mapValue!17933)) ((as const (Array Context!4778 Bool)) false)))))

(declare-fun setNonEmpty!23829 () Bool)

(declare-fun tp!885982 () Bool)

(declare-fun setElem!23829 () Context!4778)

(declare-fun e!1761836 () Bool)

(assert (=> setNonEmpty!23829 (= setRes!23829 (and tp!885982 (inv!43944 setElem!23829) e!1761836))))

(declare-fun setRest!23829 () (InoxSet Context!4778))

(assert (=> setNonEmpty!23829 (= (_2!19403 (h!37765 mapValue!17933)) ((_ map or) (store ((as const (Array Context!4778 Bool)) false) setElem!23829 true) setRest!23829))))

(declare-fun b!2790555 () Bool)

(declare-fun tp!885983 () Bool)

(assert (=> b!2790555 (= e!1761836 tp!885983)))

(declare-fun setIsEmpty!23829 () Bool)

(assert (=> setIsEmpty!23829 setRes!23829))

(assert (=> mapNonEmpty!17934 (= tp!885898 e!1761835)))

(assert (= b!2790554 b!2790553))

(assert (= (and b!2790554 condSetEmpty!23829) setIsEmpty!23829))

(assert (= (and b!2790554 (not condSetEmpty!23829)) setNonEmpty!23829))

(assert (= setNonEmpty!23829 b!2790555))

(assert (= (and mapNonEmpty!17934 ((_ is Cons!32345) mapValue!17933)) b!2790554))

(declare-fun m!3220863 () Bool)

(assert (=> b!2790554 m!3220863))

(declare-fun m!3220865 () Bool)

(assert (=> setNonEmpty!23829 m!3220865))

(declare-fun e!1761843 () Bool)

(declare-fun e!1761845 () Bool)

(declare-fun tp!885994 () Bool)

(declare-fun setRes!23832 () Bool)

(declare-fun b!2790564 () Bool)

(assert (=> b!2790564 (= e!1761845 (and (inv!43944 (_1!19404 (_1!19405 (h!37766 mapDefault!17934)))) e!1761843 tp_is_empty!14155 setRes!23832 tp!885994))))

(declare-fun condSetEmpty!23832 () Bool)

(assert (=> b!2790564 (= condSetEmpty!23832 (= (_2!19405 (h!37766 mapDefault!17934)) ((as const (Array Context!4778 Bool)) false)))))

(declare-fun e!1761844 () Bool)

(declare-fun setNonEmpty!23832 () Bool)

(declare-fun tp!885996 () Bool)

(declare-fun setElem!23832 () Context!4778)

(assert (=> setNonEmpty!23832 (= setRes!23832 (and tp!885996 (inv!43944 setElem!23832) e!1761844))))

(declare-fun setRest!23832 () (InoxSet Context!4778))

(assert (=> setNonEmpty!23832 (= (_2!19405 (h!37766 mapDefault!17934)) ((_ map or) (store ((as const (Array Context!4778 Bool)) false) setElem!23832 true) setRest!23832))))

(declare-fun b!2790565 () Bool)

(declare-fun tp!885993 () Bool)

(assert (=> b!2790565 (= e!1761843 tp!885993)))

(assert (=> b!2790412 (= tp!885893 e!1761845)))

(declare-fun setIsEmpty!23832 () Bool)

(assert (=> setIsEmpty!23832 setRes!23832))

(declare-fun b!2790566 () Bool)

(declare-fun tp!885995 () Bool)

(assert (=> b!2790566 (= e!1761844 tp!885995)))

(assert (= b!2790564 b!2790565))

(assert (= (and b!2790564 condSetEmpty!23832) setIsEmpty!23832))

(assert (= (and b!2790564 (not condSetEmpty!23832)) setNonEmpty!23832))

(assert (= setNonEmpty!23832 b!2790566))

(assert (= (and b!2790412 ((_ is Cons!32346) mapDefault!17934)) b!2790564))

(declare-fun m!3220867 () Bool)

(assert (=> b!2790564 m!3220867))

(declare-fun m!3220869 () Bool)

(assert (=> setNonEmpty!23832 m!3220869))

(declare-fun b!2790571 () Bool)

(declare-fun e!1761848 () Bool)

(declare-fun tp!885999 () Bool)

(assert (=> b!2790571 (= e!1761848 (and tp_is_empty!14155 tp!885999))))

(assert (=> b!2790413 (= tp!885907 e!1761848)))

(assert (= (and b!2790413 ((_ is Cons!32343) (t!228585 testedP!183))) b!2790571))

(declare-fun b!2790576 () Bool)

(declare-fun e!1761851 () Bool)

(declare-fun tp!886004 () Bool)

(declare-fun tp!886005 () Bool)

(assert (=> b!2790576 (= e!1761851 (and tp!886004 tp!886005))))

(assert (=> b!2790415 (= tp!885899 e!1761851)))

(assert (= (and b!2790415 ((_ is Cons!32344) (exprs!2889 setElem!23815))) b!2790576))

(declare-fun b!2790591 () Bool)

(declare-fun e!1761868 () Bool)

(declare-fun tp!886029 () Bool)

(assert (=> b!2790591 (= e!1761868 tp!886029)))

(declare-fun setRes!23838 () Bool)

(declare-fun b!2790592 () Bool)

(declare-fun mapDefault!17940 () List!32446)

(declare-fun e!1761866 () Bool)

(declare-fun tp!886028 () Bool)

(declare-fun e!1761864 () Bool)

(assert (=> b!2790592 (= e!1761864 (and (inv!43944 (_1!19404 (_1!19405 (h!37766 mapDefault!17940)))) e!1761866 tp_is_empty!14155 setRes!23838 tp!886028))))

(declare-fun condSetEmpty!23837 () Bool)

(assert (=> b!2790592 (= condSetEmpty!23837 (= (_2!19405 (h!37766 mapDefault!17940)) ((as const (Array Context!4778 Bool)) false)))))

(declare-fun e!1761865 () Bool)

(declare-fun e!1761869 () Bool)

(declare-fun mapValue!17940 () List!32446)

(declare-fun setRes!23837 () Bool)

(declare-fun b!2790593 () Bool)

(declare-fun tp!886026 () Bool)

(assert (=> b!2790593 (= e!1761869 (and (inv!43944 (_1!19404 (_1!19405 (h!37766 mapValue!17940)))) e!1761865 tp_is_empty!14155 setRes!23837 tp!886026))))

(declare-fun condSetEmpty!23838 () Bool)

(assert (=> b!2790593 (= condSetEmpty!23838 (= (_2!19405 (h!37766 mapValue!17940)) ((as const (Array Context!4778 Bool)) false)))))

(declare-fun condMapEmpty!17940 () Bool)

(assert (=> mapNonEmpty!17933 (= condMapEmpty!17940 (= mapRest!17934 ((as const (Array (_ BitVec 32) List!32446)) mapDefault!17940)))))

(declare-fun mapRes!17940 () Bool)

(assert (=> mapNonEmpty!17933 (= tp!885895 (and e!1761864 mapRes!17940))))

(declare-fun setNonEmpty!23837 () Bool)

(declare-fun setElem!23838 () Context!4778)

(declare-fun tp!886032 () Bool)

(declare-fun e!1761867 () Bool)

(assert (=> setNonEmpty!23837 (= setRes!23838 (and tp!886032 (inv!43944 setElem!23838) e!1761867))))

(declare-fun setRest!23838 () (InoxSet Context!4778))

(assert (=> setNonEmpty!23837 (= (_2!19405 (h!37766 mapDefault!17940)) ((_ map or) (store ((as const (Array Context!4778 Bool)) false) setElem!23838 true) setRest!23838))))

(declare-fun mapIsEmpty!17940 () Bool)

(assert (=> mapIsEmpty!17940 mapRes!17940))

(declare-fun b!2790594 () Bool)

(declare-fun tp!886025 () Bool)

(assert (=> b!2790594 (= e!1761867 tp!886025)))

(declare-fun setElem!23837 () Context!4778)

(declare-fun setNonEmpty!23838 () Bool)

(declare-fun tp!886027 () Bool)

(assert (=> setNonEmpty!23838 (= setRes!23837 (and tp!886027 (inv!43944 setElem!23837) e!1761868))))

(declare-fun setRest!23837 () (InoxSet Context!4778))

(assert (=> setNonEmpty!23838 (= (_2!19405 (h!37766 mapValue!17940)) ((_ map or) (store ((as const (Array Context!4778 Bool)) false) setElem!23837 true) setRest!23837))))

(declare-fun mapNonEmpty!17940 () Bool)

(declare-fun tp!886031 () Bool)

(assert (=> mapNonEmpty!17940 (= mapRes!17940 (and tp!886031 e!1761869))))

(declare-fun mapRest!17940 () (Array (_ BitVec 32) List!32446))

(declare-fun mapKey!17940 () (_ BitVec 32))

(assert (=> mapNonEmpty!17940 (= mapRest!17934 (store mapRest!17940 mapKey!17940 mapValue!17940))))

(declare-fun b!2790595 () Bool)

(declare-fun tp!886030 () Bool)

(assert (=> b!2790595 (= e!1761866 tp!886030)))

(declare-fun b!2790596 () Bool)

(declare-fun tp!886024 () Bool)

(assert (=> b!2790596 (= e!1761865 tp!886024)))

(declare-fun setIsEmpty!23837 () Bool)

(assert (=> setIsEmpty!23837 setRes!23838))

(declare-fun setIsEmpty!23838 () Bool)

(assert (=> setIsEmpty!23838 setRes!23837))

(assert (= (and mapNonEmpty!17933 condMapEmpty!17940) mapIsEmpty!17940))

(assert (= (and mapNonEmpty!17933 (not condMapEmpty!17940)) mapNonEmpty!17940))

(assert (= b!2790593 b!2790596))

(assert (= (and b!2790593 condSetEmpty!23838) setIsEmpty!23838))

(assert (= (and b!2790593 (not condSetEmpty!23838)) setNonEmpty!23838))

(assert (= setNonEmpty!23838 b!2790591))

(assert (= (and mapNonEmpty!17940 ((_ is Cons!32346) mapValue!17940)) b!2790593))

(assert (= b!2790592 b!2790595))

(assert (= (and b!2790592 condSetEmpty!23837) setIsEmpty!23837))

(assert (= (and b!2790592 (not condSetEmpty!23837)) setNonEmpty!23837))

(assert (= setNonEmpty!23837 b!2790594))

(assert (= (and mapNonEmpty!17933 ((_ is Cons!32346) mapDefault!17940)) b!2790592))

(declare-fun m!3220871 () Bool)

(assert (=> setNonEmpty!23837 m!3220871))

(declare-fun m!3220873 () Bool)

(assert (=> mapNonEmpty!17940 m!3220873))

(declare-fun m!3220875 () Bool)

(assert (=> b!2790592 m!3220875))

(declare-fun m!3220877 () Bool)

(assert (=> setNonEmpty!23838 m!3220877))

(declare-fun m!3220879 () Bool)

(assert (=> b!2790593 m!3220879))

(declare-fun e!1761870 () Bool)

(declare-fun tp!886034 () Bool)

(declare-fun setRes!23839 () Bool)

(declare-fun b!2790597 () Bool)

(declare-fun e!1761872 () Bool)

(assert (=> b!2790597 (= e!1761872 (and (inv!43944 (_1!19404 (_1!19405 (h!37766 mapValue!17934)))) e!1761870 tp_is_empty!14155 setRes!23839 tp!886034))))

(declare-fun condSetEmpty!23839 () Bool)

(assert (=> b!2790597 (= condSetEmpty!23839 (= (_2!19405 (h!37766 mapValue!17934)) ((as const (Array Context!4778 Bool)) false)))))

(declare-fun setNonEmpty!23839 () Bool)

(declare-fun tp!886036 () Bool)

(declare-fun setElem!23839 () Context!4778)

(declare-fun e!1761871 () Bool)

(assert (=> setNonEmpty!23839 (= setRes!23839 (and tp!886036 (inv!43944 setElem!23839) e!1761871))))

(declare-fun setRest!23839 () (InoxSet Context!4778))

(assert (=> setNonEmpty!23839 (= (_2!19405 (h!37766 mapValue!17934)) ((_ map or) (store ((as const (Array Context!4778 Bool)) false) setElem!23839 true) setRest!23839))))

(declare-fun b!2790598 () Bool)

(declare-fun tp!886033 () Bool)

(assert (=> b!2790598 (= e!1761870 tp!886033)))

(assert (=> mapNonEmpty!17933 (= tp!885905 e!1761872)))

(declare-fun setIsEmpty!23839 () Bool)

(assert (=> setIsEmpty!23839 setRes!23839))

(declare-fun b!2790599 () Bool)

(declare-fun tp!886035 () Bool)

(assert (=> b!2790599 (= e!1761871 tp!886035)))

(assert (= b!2790597 b!2790598))

(assert (= (and b!2790597 condSetEmpty!23839) setIsEmpty!23839))

(assert (= (and b!2790597 (not condSetEmpty!23839)) setNonEmpty!23839))

(assert (= setNonEmpty!23839 b!2790599))

(assert (= (and mapNonEmpty!17933 ((_ is Cons!32346) mapValue!17934)) b!2790597))

(declare-fun m!3220881 () Bool)

(assert (=> b!2790597 m!3220881))

(declare-fun m!3220883 () Bool)

(assert (=> setNonEmpty!23839 m!3220883))

(declare-fun b!2790600 () Bool)

(declare-fun e!1761873 () Bool)

(declare-fun tp!886041 () Bool)

(assert (=> b!2790600 (= e!1761873 tp!886041)))

(declare-fun b!2790601 () Bool)

(declare-fun setRes!23840 () Bool)

(declare-fun e!1761874 () Bool)

(declare-fun tp!886038 () Bool)

(declare-fun tp!886037 () Bool)

(assert (=> b!2790601 (= e!1761874 (and tp!886037 (inv!43944 (_2!19402 (_1!19403 (h!37765 mapDefault!17933)))) e!1761873 tp_is_empty!14155 setRes!23840 tp!886038))))

(declare-fun condSetEmpty!23840 () Bool)

(assert (=> b!2790601 (= condSetEmpty!23840 (= (_2!19403 (h!37765 mapDefault!17933)) ((as const (Array Context!4778 Bool)) false)))))

(declare-fun setElem!23840 () Context!4778)

(declare-fun setNonEmpty!23840 () Bool)

(declare-fun e!1761875 () Bool)

(declare-fun tp!886039 () Bool)

(assert (=> setNonEmpty!23840 (= setRes!23840 (and tp!886039 (inv!43944 setElem!23840) e!1761875))))

(declare-fun setRest!23840 () (InoxSet Context!4778))

(assert (=> setNonEmpty!23840 (= (_2!19403 (h!37765 mapDefault!17933)) ((_ map or) (store ((as const (Array Context!4778 Bool)) false) setElem!23840 true) setRest!23840))))

(declare-fun b!2790602 () Bool)

(declare-fun tp!886040 () Bool)

(assert (=> b!2790602 (= e!1761875 tp!886040)))

(declare-fun setIsEmpty!23840 () Bool)

(assert (=> setIsEmpty!23840 setRes!23840))

(assert (=> b!2790410 (= tp!885904 e!1761874)))

(assert (= b!2790601 b!2790600))

(assert (= (and b!2790601 condSetEmpty!23840) setIsEmpty!23840))

(assert (= (and b!2790601 (not condSetEmpty!23840)) setNonEmpty!23840))

(assert (= setNonEmpty!23840 b!2790602))

(assert (= (and b!2790410 ((_ is Cons!32345) mapDefault!17933)) b!2790601))

(declare-fun m!3220885 () Bool)

(assert (=> b!2790601 m!3220885))

(declare-fun m!3220887 () Bool)

(assert (=> setNonEmpty!23840 m!3220887))

(declare-fun b!2790603 () Bool)

(declare-fun e!1761876 () Bool)

(declare-fun tp!886042 () Bool)

(assert (=> b!2790603 (= e!1761876 (and tp_is_empty!14155 tp!886042))))

(assert (=> b!2790424 (= tp!885910 e!1761876)))

(assert (= (and b!2790424 ((_ is Cons!32343) (t!228585 testedSuffix!143))) b!2790603))

(declare-fun e!1761877 () Bool)

(declare-fun e!1761879 () Bool)

(declare-fun tp!886044 () Bool)

(declare-fun b!2790604 () Bool)

(declare-fun setRes!23841 () Bool)

(assert (=> b!2790604 (= e!1761879 (and (inv!43944 (_1!19404 (_1!19405 (h!37766 (zeroValue!4198 (v!33951 (underlying!8081 (v!33952 (underlying!8082 (cache!3988 cacheUp!890)))))))))) e!1761877 tp_is_empty!14155 setRes!23841 tp!886044))))

(declare-fun condSetEmpty!23841 () Bool)

(assert (=> b!2790604 (= condSetEmpty!23841 (= (_2!19405 (h!37766 (zeroValue!4198 (v!33951 (underlying!8081 (v!33952 (underlying!8082 (cache!3988 cacheUp!890)))))))) ((as const (Array Context!4778 Bool)) false)))))

(declare-fun setNonEmpty!23841 () Bool)

(declare-fun setElem!23841 () Context!4778)

(declare-fun tp!886046 () Bool)

(declare-fun e!1761878 () Bool)

(assert (=> setNonEmpty!23841 (= setRes!23841 (and tp!886046 (inv!43944 setElem!23841) e!1761878))))

(declare-fun setRest!23841 () (InoxSet Context!4778))

(assert (=> setNonEmpty!23841 (= (_2!19405 (h!37766 (zeroValue!4198 (v!33951 (underlying!8081 (v!33952 (underlying!8082 (cache!3988 cacheUp!890)))))))) ((_ map or) (store ((as const (Array Context!4778 Bool)) false) setElem!23841 true) setRest!23841))))

(declare-fun b!2790605 () Bool)

(declare-fun tp!886043 () Bool)

(assert (=> b!2790605 (= e!1761877 tp!886043)))

(assert (=> b!2790420 (= tp!885908 e!1761879)))

(declare-fun setIsEmpty!23841 () Bool)

(assert (=> setIsEmpty!23841 setRes!23841))

(declare-fun b!2790606 () Bool)

(declare-fun tp!886045 () Bool)

(assert (=> b!2790606 (= e!1761878 tp!886045)))

(assert (= b!2790604 b!2790605))

(assert (= (and b!2790604 condSetEmpty!23841) setIsEmpty!23841))

(assert (= (and b!2790604 (not condSetEmpty!23841)) setNonEmpty!23841))

(assert (= setNonEmpty!23841 b!2790606))

(assert (= (and b!2790420 ((_ is Cons!32346) (zeroValue!4198 (v!33951 (underlying!8081 (v!33952 (underlying!8082 (cache!3988 cacheUp!890)))))))) b!2790604))

(declare-fun m!3220889 () Bool)

(assert (=> b!2790604 m!3220889))

(declare-fun m!3220891 () Bool)

(assert (=> setNonEmpty!23841 m!3220891))

(declare-fun setRes!23842 () Bool)

(declare-fun e!1761882 () Bool)

(declare-fun b!2790607 () Bool)

(declare-fun e!1761880 () Bool)

(declare-fun tp!886048 () Bool)

(assert (=> b!2790607 (= e!1761882 (and (inv!43944 (_1!19404 (_1!19405 (h!37766 (minValue!4198 (v!33951 (underlying!8081 (v!33952 (underlying!8082 (cache!3988 cacheUp!890)))))))))) e!1761880 tp_is_empty!14155 setRes!23842 tp!886048))))

(declare-fun condSetEmpty!23842 () Bool)

(assert (=> b!2790607 (= condSetEmpty!23842 (= (_2!19405 (h!37766 (minValue!4198 (v!33951 (underlying!8081 (v!33952 (underlying!8082 (cache!3988 cacheUp!890)))))))) ((as const (Array Context!4778 Bool)) false)))))

(declare-fun setElem!23842 () Context!4778)

(declare-fun tp!886050 () Bool)

(declare-fun setNonEmpty!23842 () Bool)

(declare-fun e!1761881 () Bool)

(assert (=> setNonEmpty!23842 (= setRes!23842 (and tp!886050 (inv!43944 setElem!23842) e!1761881))))

(declare-fun setRest!23842 () (InoxSet Context!4778))

(assert (=> setNonEmpty!23842 (= (_2!19405 (h!37766 (minValue!4198 (v!33951 (underlying!8081 (v!33952 (underlying!8082 (cache!3988 cacheUp!890)))))))) ((_ map or) (store ((as const (Array Context!4778 Bool)) false) setElem!23842 true) setRest!23842))))

(declare-fun b!2790608 () Bool)

(declare-fun tp!886047 () Bool)

(assert (=> b!2790608 (= e!1761880 tp!886047)))

(assert (=> b!2790420 (= tp!885901 e!1761882)))

(declare-fun setIsEmpty!23842 () Bool)

(assert (=> setIsEmpty!23842 setRes!23842))

(declare-fun b!2790609 () Bool)

(declare-fun tp!886049 () Bool)

(assert (=> b!2790609 (= e!1761881 tp!886049)))

(assert (= b!2790607 b!2790608))

(assert (= (and b!2790607 condSetEmpty!23842) setIsEmpty!23842))

(assert (= (and b!2790607 (not condSetEmpty!23842)) setNonEmpty!23842))

(assert (= setNonEmpty!23842 b!2790609))

(assert (= (and b!2790420 ((_ is Cons!32346) (minValue!4198 (v!33951 (underlying!8081 (v!33952 (underlying!8082 (cache!3988 cacheUp!890)))))))) b!2790607))

(declare-fun m!3220893 () Bool)

(assert (=> b!2790607 m!3220893))

(declare-fun m!3220895 () Bool)

(assert (=> setNonEmpty!23842 m!3220895))

(check-sat (not b!2790479) (not d!811322) b_and!203735 (not b!2790532) (not b!2790566) (not setNonEmpty!23841) (not d!811328) (not d!811318) (not d!811340) (not setNonEmpty!23837) (not setNonEmpty!23828) (not b!2790549) (not b!2790480) (not b!2790609) (not mapNonEmpty!17940) (not b!2790450) (not b!2790452) (not b!2790603) (not b!2790571) (not b!2790458) (not b!2790551) (not b!2790607) (not b!2790528) (not setNonEmpty!23818) (not bm!182606) (not d!811298) (not mapNonEmpty!17937) (not b!2790600) (not b!2790604) (not b!2790565) (not d!811320) (not b!2790473) (not setNonEmpty!23838) (not b!2790606) (not b!2790518) (not b!2790469) (not b!2790501) (not b!2790436) (not b!2790550) (not b!2790437) (not setNonEmpty!23839) b_and!203737 (not b!2790554) b_and!203741 (not d!811302) (not b!2790517) (not b!2790591) (not b!2790442) (not b!2790472) (not b!2790548) (not b!2790530) (not d!811296) (not d!811326) (not b!2790500) (not b!2790531) (not b!2790468) (not b!2790596) (not b!2790564) (not d!811292) (not d!811308) (not d!811300) (not b!2790516) (not b!2790608) (not bm!182607) (not setNonEmpty!23821) (not b!2790553) (not b!2790593) (not b!2790602) (not b!2790497) (not setNonEmpty!23822) (not setNonEmpty!23832) (not b!2790529) (not setNonEmpty!23840) (not b!2790595) (not b!2790576) (not b!2790507) (not b!2790502) (not b!2790555) (not b!2790605) (not b!2790552) (not b!2790496) (not b!2790486) tp_is_empty!14155 (not d!811314) b_and!203739 (not setNonEmpty!23827) (not b!2790599) (not d!811324) (not b_next!79705) (not d!811294) (not b!2790598) (not b!2790597) (not setNonEmpty!23829) (not b!2790592) (not b!2790406) (not b!2790601) (not b_next!79703) (not b!2790527) (not b!2790547) (not b!2790455) (not b_next!79701) (not b!2790594) (not b!2790498) (not b_next!79707) (not setNonEmpty!23842))
(check-sat b_and!203735 b_and!203739 (not b_next!79705) (not b_next!79707) b_and!203737 b_and!203741 (not b_next!79703) (not b_next!79701))
(get-model)

(declare-fun b!2790621 () Bool)

(declare-fun e!1761888 () List!32443)

(assert (=> b!2790621 (= e!1761888 (++!7984 (list!12165 (left!24513 (c!452950 totalInput!758))) (list!12165 (right!24843 (c!452950 totalInput!758)))))))

(declare-fun b!2790619 () Bool)

(declare-fun e!1761887 () List!32443)

(assert (=> b!2790619 (= e!1761887 e!1761888)))

(declare-fun c!452981 () Bool)

(assert (=> b!2790619 (= c!452981 ((_ is Leaf!15290) (c!452950 totalInput!758)))))

(declare-fun b!2790620 () Bool)

(declare-fun list!12166 (IArray!20077) List!32443)

(assert (=> b!2790620 (= e!1761888 (list!12166 (xs!13147 (c!452950 totalInput!758))))))

(declare-fun b!2790618 () Bool)

(assert (=> b!2790618 (= e!1761887 Nil!32343)))

(declare-fun d!811342 () Bool)

(declare-fun c!452980 () Bool)

(assert (=> d!811342 (= c!452980 ((_ is Empty!10036) (c!452950 totalInput!758)))))

(assert (=> d!811342 (= (list!12165 (c!452950 totalInput!758)) e!1761887)))

(assert (= (and d!811342 c!452980) b!2790618))

(assert (= (and d!811342 (not c!452980)) b!2790619))

(assert (= (and b!2790619 c!452981) b!2790620))

(assert (= (and b!2790619 (not c!452981)) b!2790621))

(declare-fun m!3220897 () Bool)

(assert (=> b!2790621 m!3220897))

(declare-fun m!3220899 () Bool)

(assert (=> b!2790621 m!3220899))

(assert (=> b!2790621 m!3220897))

(assert (=> b!2790621 m!3220899))

(declare-fun m!3220901 () Bool)

(assert (=> b!2790621 m!3220901))

(declare-fun m!3220903 () Bool)

(assert (=> b!2790620 m!3220903))

(assert (=> d!811318 d!811342))

(declare-fun bs!511119 () Bool)

(declare-fun d!811344 () Bool)

(assert (= bs!511119 (and d!811344 d!811308)))

(declare-fun lambda!102384 () Int)

(assert (=> bs!511119 (= lambda!102384 lambda!102383)))

(assert (=> d!811344 (= (inv!43944 setElem!23840) (forall!6670 (exprs!2889 setElem!23840) lambda!102384))))

(declare-fun bs!511120 () Bool)

(assert (= bs!511120 d!811344))

(declare-fun m!3220905 () Bool)

(assert (=> bs!511120 m!3220905))

(assert (=> setNonEmpty!23840 d!811344))

(declare-fun d!811346 () Bool)

(declare-fun lt!997593 () Int)

(assert (=> d!811346 (>= lt!997593 0)))

(declare-fun e!1761889 () Int)

(assert (=> d!811346 (= lt!997593 e!1761889)))

(declare-fun c!452982 () Bool)

(assert (=> d!811346 (= c!452982 ((_ is Nil!32343) lt!997576))))

(assert (=> d!811346 (= (size!25178 lt!997576) lt!997593)))

(declare-fun b!2790622 () Bool)

(assert (=> b!2790622 (= e!1761889 0)))

(declare-fun b!2790623 () Bool)

(assert (=> b!2790623 (= e!1761889 (+ 1 (size!25178 (t!228585 lt!997576))))))

(assert (= (and d!811346 c!452982) b!2790622))

(assert (= (and d!811346 (not c!452982)) b!2790623))

(declare-fun m!3220907 () Bool)

(assert (=> b!2790623 m!3220907))

(assert (=> b!2790473 d!811346))

(declare-fun d!811348 () Bool)

(declare-fun lt!997594 () Int)

(assert (=> d!811348 (>= lt!997594 0)))

(declare-fun e!1761890 () Int)

(assert (=> d!811348 (= lt!997594 e!1761890)))

(declare-fun c!452983 () Bool)

(assert (=> d!811348 (= c!452983 ((_ is Nil!32343) (list!12164 (_1!19406 lt!997533))))))

(assert (=> d!811348 (= (size!25178 (list!12164 (_1!19406 lt!997533))) lt!997594)))

(declare-fun b!2790624 () Bool)

(assert (=> b!2790624 (= e!1761890 0)))

(declare-fun b!2790625 () Bool)

(assert (=> b!2790625 (= e!1761890 (+ 1 (size!25178 (t!228585 (list!12164 (_1!19406 lt!997533))))))))

(assert (= (and d!811348 c!452983) b!2790624))

(assert (= (and d!811348 (not c!452983)) b!2790625))

(declare-fun m!3220909 () Bool)

(assert (=> b!2790625 m!3220909))

(assert (=> b!2790473 d!811348))

(declare-fun d!811350 () Bool)

(declare-fun lt!997595 () Int)

(assert (=> d!811350 (>= lt!997595 0)))

(declare-fun e!1761891 () Int)

(assert (=> d!811350 (= lt!997595 e!1761891)))

(declare-fun c!452984 () Bool)

(assert (=> d!811350 (= c!452984 ((_ is Nil!32343) (list!12164 (_2!19406 lt!997533))))))

(assert (=> d!811350 (= (size!25178 (list!12164 (_2!19406 lt!997533))) lt!997595)))

(declare-fun b!2790626 () Bool)

(assert (=> b!2790626 (= e!1761891 0)))

(declare-fun b!2790627 () Bool)

(assert (=> b!2790627 (= e!1761891 (+ 1 (size!25178 (t!228585 (list!12164 (_2!19406 lt!997533))))))))

(assert (= (and d!811350 c!452984) b!2790626))

(assert (= (and d!811350 (not c!452984)) b!2790627))

(declare-fun m!3220911 () Bool)

(assert (=> b!2790627 m!3220911))

(assert (=> b!2790473 d!811350))

(declare-fun d!811352 () Bool)

(declare-fun res!1164185 () Bool)

(declare-fun e!1761894 () Bool)

(assert (=> d!811352 (=> (not res!1164185) (not e!1761894))))

(assert (=> d!811352 (= res!1164185 (<= (size!25178 (list!12166 (xs!13147 (c!452950 totalInput!758)))) 512))))

(assert (=> d!811352 (= (inv!43946 (c!452950 totalInput!758)) e!1761894)))

(declare-fun b!2790632 () Bool)

(declare-fun res!1164186 () Bool)

(assert (=> b!2790632 (=> (not res!1164186) (not e!1761894))))

(assert (=> b!2790632 (= res!1164186 (= (csize!20303 (c!452950 totalInput!758)) (size!25178 (list!12166 (xs!13147 (c!452950 totalInput!758))))))))

(declare-fun b!2790633 () Bool)

(assert (=> b!2790633 (= e!1761894 (and (> (csize!20303 (c!452950 totalInput!758)) 0) (<= (csize!20303 (c!452950 totalInput!758)) 512)))))

(assert (= (and d!811352 res!1164185) b!2790632))

(assert (= (and b!2790632 res!1164186) b!2790633))

(assert (=> d!811352 m!3220903))

(assert (=> d!811352 m!3220903))

(declare-fun m!3220913 () Bool)

(assert (=> d!811352 m!3220913))

(assert (=> b!2790632 m!3220903))

(assert (=> b!2790632 m!3220903))

(assert (=> b!2790632 m!3220913))

(assert (=> b!2790452 d!811352))

(declare-fun lt!997596 () List!32443)

(declare-fun e!1761895 () Bool)

(declare-fun b!2790637 () Bool)

(assert (=> b!2790637 (= e!1761895 (or (not (= testedSuffix!143 Nil!32343)) (= lt!997596 (t!228585 testedP!183))))))

(declare-fun b!2790635 () Bool)

(declare-fun e!1761896 () List!32443)

(assert (=> b!2790635 (= e!1761896 (Cons!32343 (h!37763 (t!228585 testedP!183)) (++!7984 (t!228585 (t!228585 testedP!183)) testedSuffix!143)))))

(declare-fun b!2790636 () Bool)

(declare-fun res!1164188 () Bool)

(assert (=> b!2790636 (=> (not res!1164188) (not e!1761895))))

(assert (=> b!2790636 (= res!1164188 (= (size!25178 lt!997596) (+ (size!25178 (t!228585 testedP!183)) (size!25178 testedSuffix!143))))))

(declare-fun b!2790634 () Bool)

(assert (=> b!2790634 (= e!1761896 testedSuffix!143)))

(declare-fun d!811354 () Bool)

(assert (=> d!811354 e!1761895))

(declare-fun res!1164187 () Bool)

(assert (=> d!811354 (=> (not res!1164187) (not e!1761895))))

(assert (=> d!811354 (= res!1164187 (= (content!4527 lt!997596) ((_ map or) (content!4527 (t!228585 testedP!183)) (content!4527 testedSuffix!143))))))

(assert (=> d!811354 (= lt!997596 e!1761896)))

(declare-fun c!452985 () Bool)

(assert (=> d!811354 (= c!452985 ((_ is Nil!32343) (t!228585 testedP!183)))))

(assert (=> d!811354 (= (++!7984 (t!228585 testedP!183) testedSuffix!143) lt!997596)))

(assert (= (and d!811354 c!452985) b!2790634))

(assert (= (and d!811354 (not c!452985)) b!2790635))

(assert (= (and d!811354 res!1164187) b!2790636))

(assert (= (and b!2790636 res!1164188) b!2790637))

(declare-fun m!3220915 () Bool)

(assert (=> b!2790635 m!3220915))

(declare-fun m!3220917 () Bool)

(assert (=> b!2790636 m!3220917))

(assert (=> b!2790636 m!3220815))

(assert (=> b!2790636 m!3220777))

(declare-fun m!3220919 () Bool)

(assert (=> d!811354 m!3220919))

(declare-fun m!3220921 () Bool)

(assert (=> d!811354 m!3220921))

(assert (=> d!811354 m!3220783))

(assert (=> b!2790468 d!811354))

(declare-fun bs!511121 () Bool)

(declare-fun d!811356 () Bool)

(assert (= bs!511121 (and d!811356 d!811308)))

(declare-fun lambda!102385 () Int)

(assert (=> bs!511121 (= lambda!102385 lambda!102383)))

(declare-fun bs!511122 () Bool)

(assert (= bs!511122 (and d!811356 d!811344)))

(assert (=> bs!511122 (= lambda!102385 lambda!102384)))

(assert (=> d!811356 (= (inv!43944 (_1!19404 (_1!19405 (h!37766 mapValue!17934)))) (forall!6670 (exprs!2889 (_1!19404 (_1!19405 (h!37766 mapValue!17934)))) lambda!102385))))

(declare-fun bs!511123 () Bool)

(assert (= bs!511123 d!811356))

(declare-fun m!3220923 () Bool)

(assert (=> bs!511123 m!3220923))

(assert (=> b!2790597 d!811356))

(declare-fun b!2790641 () Bool)

(declare-fun e!1761898 () List!32443)

(assert (=> b!2790641 (= e!1761898 (++!7984 (list!12165 (left!24513 (c!452950 (_1!19406 lt!997533)))) (list!12165 (right!24843 (c!452950 (_1!19406 lt!997533))))))))

(declare-fun b!2790639 () Bool)

(declare-fun e!1761897 () List!32443)

(assert (=> b!2790639 (= e!1761897 e!1761898)))

(declare-fun c!452987 () Bool)

(assert (=> b!2790639 (= c!452987 ((_ is Leaf!15290) (c!452950 (_1!19406 lt!997533))))))

(declare-fun b!2790640 () Bool)

(assert (=> b!2790640 (= e!1761898 (list!12166 (xs!13147 (c!452950 (_1!19406 lt!997533)))))))

(declare-fun b!2790638 () Bool)

(assert (=> b!2790638 (= e!1761897 Nil!32343)))

(declare-fun d!811358 () Bool)

(declare-fun c!452986 () Bool)

(assert (=> d!811358 (= c!452986 ((_ is Empty!10036) (c!452950 (_1!19406 lt!997533))))))

(assert (=> d!811358 (= (list!12165 (c!452950 (_1!19406 lt!997533))) e!1761897)))

(assert (= (and d!811358 c!452986) b!2790638))

(assert (= (and d!811358 (not c!452986)) b!2790639))

(assert (= (and b!2790639 c!452987) b!2790640))

(assert (= (and b!2790639 (not c!452987)) b!2790641))

(declare-fun m!3220925 () Bool)

(assert (=> b!2790641 m!3220925))

(declare-fun m!3220927 () Bool)

(assert (=> b!2790641 m!3220927))

(assert (=> b!2790641 m!3220925))

(assert (=> b!2790641 m!3220927))

(declare-fun m!3220929 () Bool)

(assert (=> b!2790641 m!3220929))

(declare-fun m!3220931 () Bool)

(assert (=> b!2790640 m!3220931))

(assert (=> d!811324 d!811358))

(declare-fun d!811360 () Bool)

(declare-fun res!1164195 () Bool)

(declare-fun e!1761901 () Bool)

(assert (=> d!811360 (=> (not res!1164195) (not e!1761901))))

(assert (=> d!811360 (= res!1164195 (= (csize!20302 (c!452950 totalInput!758)) (+ (size!25180 (left!24513 (c!452950 totalInput!758))) (size!25180 (right!24843 (c!452950 totalInput!758))))))))

(assert (=> d!811360 (= (inv!43945 (c!452950 totalInput!758)) e!1761901)))

(declare-fun b!2790648 () Bool)

(declare-fun res!1164196 () Bool)

(assert (=> b!2790648 (=> (not res!1164196) (not e!1761901))))

(assert (=> b!2790648 (= res!1164196 (and (not (= (left!24513 (c!452950 totalInput!758)) Empty!10036)) (not (= (right!24843 (c!452950 totalInput!758)) Empty!10036))))))

(declare-fun b!2790649 () Bool)

(declare-fun res!1164197 () Bool)

(assert (=> b!2790649 (=> (not res!1164197) (not e!1761901))))

(declare-fun max!0 (Int Int) Int)

(declare-fun height!1493 (Conc!10036) Int)

(assert (=> b!2790649 (= res!1164197 (= (cheight!10247 (c!452950 totalInput!758)) (+ (max!0 (height!1493 (left!24513 (c!452950 totalInput!758))) (height!1493 (right!24843 (c!452950 totalInput!758)))) 1)))))

(declare-fun b!2790650 () Bool)

(assert (=> b!2790650 (= e!1761901 (<= 0 (cheight!10247 (c!452950 totalInput!758))))))

(assert (= (and d!811360 res!1164195) b!2790648))

(assert (= (and b!2790648 res!1164196) b!2790649))

(assert (= (and b!2790649 res!1164197) b!2790650))

(declare-fun m!3220933 () Bool)

(assert (=> d!811360 m!3220933))

(declare-fun m!3220935 () Bool)

(assert (=> d!811360 m!3220935))

(declare-fun m!3220937 () Bool)

(assert (=> b!2790649 m!3220937))

(declare-fun m!3220939 () Bool)

(assert (=> b!2790649 m!3220939))

(assert (=> b!2790649 m!3220937))

(assert (=> b!2790649 m!3220939))

(declare-fun m!3220941 () Bool)

(assert (=> b!2790649 m!3220941))

(assert (=> b!2790450 d!811360))

(declare-fun bs!511124 () Bool)

(declare-fun d!811362 () Bool)

(assert (= bs!511124 (and d!811362 d!811308)))

(declare-fun lambda!102386 () Int)

(assert (=> bs!511124 (= lambda!102386 lambda!102383)))

(declare-fun bs!511125 () Bool)

(assert (= bs!511125 (and d!811362 d!811344)))

(assert (=> bs!511125 (= lambda!102386 lambda!102384)))

(declare-fun bs!511126 () Bool)

(assert (= bs!511126 (and d!811362 d!811356)))

(assert (=> bs!511126 (= lambda!102386 lambda!102385)))

(assert (=> d!811362 (= (inv!43944 (_1!19404 (_1!19405 (h!37766 (zeroValue!4198 (v!33951 (underlying!8081 (v!33952 (underlying!8082 (cache!3988 cacheUp!890)))))))))) (forall!6670 (exprs!2889 (_1!19404 (_1!19405 (h!37766 (zeroValue!4198 (v!33951 (underlying!8081 (v!33952 (underlying!8082 (cache!3988 cacheUp!890)))))))))) lambda!102386))))

(declare-fun bs!511127 () Bool)

(assert (= bs!511127 d!811362))

(declare-fun m!3220943 () Bool)

(assert (=> bs!511127 m!3220943))

(assert (=> b!2790604 d!811362))

(declare-fun d!811364 () Bool)

(declare-fun res!1164204 () Bool)

(declare-fun e!1761906 () Bool)

(assert (=> d!811364 (=> (not res!1164204) (not e!1761906))))

(declare-fun valid!3078 (MutableMap!3844) Bool)

(assert (=> d!811364 (= res!1164204 (valid!3078 (cache!3987 cacheDown!1009)))))

(assert (=> d!811364 (= (validCacheMapDown!417 (cache!3987 cacheDown!1009)) e!1761906)))

(declare-fun b!2790657 () Bool)

(declare-fun res!1164205 () Bool)

(assert (=> b!2790657 (=> (not res!1164205) (not e!1761906))))

(declare-fun invariantList!456 (List!32445) Bool)

(declare-datatypes ((ListMap!1245 0))(
  ( (ListMap!1246 (toList!1863 List!32445)) )
))
(declare-fun map!7011 (MutableMap!3844) ListMap!1245)

(assert (=> b!2790657 (= res!1164205 (invariantList!456 (toList!1863 (map!7011 (cache!3987 cacheDown!1009)))))))

(declare-fun b!2790658 () Bool)

(declare-fun lambda!102389 () Int)

(declare-fun forall!6671 (List!32445 Int) Bool)

(assert (=> b!2790658 (= e!1761906 (forall!6671 (toList!1863 (map!7011 (cache!3987 cacheDown!1009))) lambda!102389))))

(assert (= (and d!811364 res!1164204) b!2790657))

(assert (= (and b!2790657 res!1164205) b!2790658))

(declare-fun m!3220946 () Bool)

(assert (=> d!811364 m!3220946))

(declare-fun m!3220948 () Bool)

(assert (=> b!2790657 m!3220948))

(declare-fun m!3220950 () Bool)

(assert (=> b!2790657 m!3220950))

(assert (=> b!2790658 m!3220948))

(declare-fun m!3220952 () Bool)

(assert (=> b!2790658 m!3220952))

(assert (=> b!2790458 d!811364))

(declare-fun bs!511128 () Bool)

(declare-fun d!811366 () Bool)

(assert (= bs!511128 (and d!811366 d!811308)))

(declare-fun lambda!102390 () Int)

(assert (=> bs!511128 (= lambda!102390 lambda!102383)))

(declare-fun bs!511129 () Bool)

(assert (= bs!511129 (and d!811366 d!811344)))

(assert (=> bs!511129 (= lambda!102390 lambda!102384)))

(declare-fun bs!511130 () Bool)

(assert (= bs!511130 (and d!811366 d!811356)))

(assert (=> bs!511130 (= lambda!102390 lambda!102385)))

(declare-fun bs!511131 () Bool)

(assert (= bs!511131 (and d!811366 d!811362)))

(assert (=> bs!511131 (= lambda!102390 lambda!102386)))

(assert (=> d!811366 (= (inv!43944 setElem!23832) (forall!6670 (exprs!2889 setElem!23832) lambda!102390))))

(declare-fun bs!511132 () Bool)

(assert (= bs!511132 d!811366))

(declare-fun m!3220954 () Bool)

(assert (=> bs!511132 m!3220954))

(assert (=> setNonEmpty!23832 d!811366))

(declare-fun bs!511133 () Bool)

(declare-fun d!811368 () Bool)

(assert (= bs!511133 (and d!811368 d!811344)))

(declare-fun lambda!102391 () Int)

(assert (=> bs!511133 (= lambda!102391 lambda!102384)))

(declare-fun bs!511134 () Bool)

(assert (= bs!511134 (and d!811368 d!811308)))

(assert (=> bs!511134 (= lambda!102391 lambda!102383)))

(declare-fun bs!511135 () Bool)

(assert (= bs!511135 (and d!811368 d!811356)))

(assert (=> bs!511135 (= lambda!102391 lambda!102385)))

(declare-fun bs!511136 () Bool)

(assert (= bs!511136 (and d!811368 d!811362)))

(assert (=> bs!511136 (= lambda!102391 lambda!102386)))

(declare-fun bs!511137 () Bool)

(assert (= bs!511137 (and d!811368 d!811366)))

(assert (=> bs!511137 (= lambda!102391 lambda!102390)))

(assert (=> d!811368 (= (inv!43944 setElem!23842) (forall!6670 (exprs!2889 setElem!23842) lambda!102391))))

(declare-fun bs!511138 () Bool)

(assert (= bs!511138 d!811368))

(declare-fun m!3220956 () Bool)

(assert (=> bs!511138 m!3220956))

(assert (=> setNonEmpty!23842 d!811368))

(assert (=> b!2790406 d!811310))

(declare-fun bs!511139 () Bool)

(declare-fun d!811370 () Bool)

(assert (= bs!511139 (and d!811370 d!811344)))

(declare-fun lambda!102392 () Int)

(assert (=> bs!511139 (= lambda!102392 lambda!102384)))

(declare-fun bs!511140 () Bool)

(assert (= bs!511140 (and d!811370 d!811308)))

(assert (=> bs!511140 (= lambda!102392 lambda!102383)))

(declare-fun bs!511141 () Bool)

(assert (= bs!511141 (and d!811370 d!811368)))

(assert (=> bs!511141 (= lambda!102392 lambda!102391)))

(declare-fun bs!511142 () Bool)

(assert (= bs!511142 (and d!811370 d!811356)))

(assert (=> bs!511142 (= lambda!102392 lambda!102385)))

(declare-fun bs!511143 () Bool)

(assert (= bs!511143 (and d!811370 d!811362)))

(assert (=> bs!511143 (= lambda!102392 lambda!102386)))

(declare-fun bs!511144 () Bool)

(assert (= bs!511144 (and d!811370 d!811366)))

(assert (=> bs!511144 (= lambda!102392 lambda!102390)))

(assert (=> d!811370 (= (inv!43944 setElem!23828) (forall!6670 (exprs!2889 setElem!23828) lambda!102392))))

(declare-fun bs!511145 () Bool)

(assert (= bs!511145 d!811370))

(declare-fun m!3220958 () Bool)

(assert (=> bs!511145 m!3220958))

(assert (=> setNonEmpty!23827 d!811370))

(declare-fun d!811372 () Bool)

(assert (=> d!811372 (= (inv!43947 (xs!13147 (c!452950 totalInput!758))) (<= (size!25178 (innerList!10096 (xs!13147 (c!452950 totalInput!758)))) 2147483647))))

(declare-fun bs!511146 () Bool)

(assert (= bs!511146 d!811372))

(declare-fun m!3220960 () Bool)

(assert (=> bs!511146 m!3220960))

(assert (=> b!2790517 d!811372))

(declare-fun bs!511147 () Bool)

(declare-fun d!811374 () Bool)

(assert (= bs!511147 (and d!811374 d!811344)))

(declare-fun lambda!102393 () Int)

(assert (=> bs!511147 (= lambda!102393 lambda!102384)))

(declare-fun bs!511148 () Bool)

(assert (= bs!511148 (and d!811374 d!811368)))

(assert (=> bs!511148 (= lambda!102393 lambda!102391)))

(declare-fun bs!511149 () Bool)

(assert (= bs!511149 (and d!811374 d!811356)))

(assert (=> bs!511149 (= lambda!102393 lambda!102385)))

(declare-fun bs!511150 () Bool)

(assert (= bs!511150 (and d!811374 d!811362)))

(assert (=> bs!511150 (= lambda!102393 lambda!102386)))

(declare-fun bs!511151 () Bool)

(assert (= bs!511151 (and d!811374 d!811366)))

(assert (=> bs!511151 (= lambda!102393 lambda!102390)))

(declare-fun bs!511152 () Bool)

(assert (= bs!511152 (and d!811374 d!811370)))

(assert (=> bs!511152 (= lambda!102393 lambda!102392)))

(declare-fun bs!511153 () Bool)

(assert (= bs!511153 (and d!811374 d!811308)))

(assert (=> bs!511153 (= lambda!102393 lambda!102383)))

(assert (=> d!811374 (= (inv!43944 setElem!23837) (forall!6670 (exprs!2889 setElem!23837) lambda!102393))))

(declare-fun bs!511154 () Bool)

(assert (= bs!511154 d!811374))

(declare-fun m!3220962 () Bool)

(assert (=> bs!511154 m!3220962))

(assert (=> setNonEmpty!23838 d!811374))

(declare-fun bs!511155 () Bool)

(declare-fun d!811376 () Bool)

(assert (= bs!511155 (and d!811376 d!811298)))

(declare-fun lambda!102396 () Int)

(assert (=> bs!511155 (not (= lambda!102396 lambda!102378))))

(declare-fun bs!511156 () Bool)

(assert (= bs!511156 (and d!811376 b!2790436)))

(assert (=> bs!511156 (not (= lambda!102396 lambda!102379))))

(declare-fun bs!511157 () Bool)

(assert (= bs!511157 (and d!811376 b!2790437)))

(assert (=> bs!511157 (not (= lambda!102396 lambda!102380))))

(assert (=> d!811376 true))

(declare-fun order!17243 () Int)

(declare-fun dynLambda!13614 (Int Int) Int)

(assert (=> d!811376 (< (dynLambda!13614 order!17243 lambda!102378) (dynLambda!13614 order!17243 lambda!102396))))

(assert (=> d!811376 (not (exists!1001 lt!997563 lambda!102396))))

(declare-fun lt!997599 () Unit!46544)

(declare-fun choose!16411 (List!32447 Int) Unit!46544)

(assert (=> d!811376 (= lt!997599 (choose!16411 lt!997563 lambda!102378))))

(declare-fun forall!6672 (List!32447 Int) Bool)

(assert (=> d!811376 (forall!6672 lt!997563 lambda!102378)))

(assert (=> d!811376 (= (lemmaForallThenNotExists!99 lt!997563 lambda!102378) lt!997599)))

(declare-fun bs!511158 () Bool)

(assert (= bs!511158 d!811376))

(declare-fun m!3220964 () Bool)

(assert (=> bs!511158 m!3220964))

(declare-fun m!3220966 () Bool)

(assert (=> bs!511158 m!3220966))

(declare-fun m!3220968 () Bool)

(assert (=> bs!511158 m!3220968))

(assert (=> b!2790437 d!811376))

(declare-fun bs!511159 () Bool)

(declare-fun d!811378 () Bool)

(assert (= bs!511159 (and d!811378 d!811298)))

(declare-fun lambda!102399 () Int)

(assert (=> bs!511159 (not (= lambda!102399 lambda!102378))))

(declare-fun bs!511160 () Bool)

(assert (= bs!511160 (and d!811378 b!2790436)))

(assert (=> bs!511160 (not (= lambda!102399 lambda!102379))))

(declare-fun bs!511161 () Bool)

(assert (= bs!511161 (and d!811378 b!2790437)))

(assert (=> bs!511161 (not (= lambda!102399 lambda!102380))))

(declare-fun bs!511162 () Bool)

(assert (= bs!511162 (and d!811378 d!811376)))

(assert (=> bs!511162 (= (= (ite c!452962 lambda!102379 lambda!102380) lambda!102378) (= lambda!102399 lambda!102396))))

(assert (=> d!811378 true))

(assert (=> d!811378 (< (dynLambda!13614 order!17243 (ite c!452962 lambda!102379 lambda!102380)) (dynLambda!13614 order!17243 lambda!102399))))

(assert (=> d!811378 (= (exists!1001 (ite c!452962 lt!997565 lt!997563) (ite c!452962 lambda!102379 lambda!102380)) (not (forall!6672 (ite c!452962 lt!997565 lt!997563) lambda!102399)))))

(declare-fun bs!511163 () Bool)

(assert (= bs!511163 d!811378))

(declare-fun m!3220970 () Bool)

(assert (=> bs!511163 m!3220970))

(assert (=> bm!182607 d!811378))

(declare-fun b!2790662 () Bool)

(declare-fun res!1164207 () Bool)

(declare-fun e!1761909 () Bool)

(assert (=> b!2790662 (=> (not res!1164207) (not e!1761909))))

(assert (=> b!2790662 (= res!1164207 (= (head!6182 (tail!4414 testedP!183)) (head!6182 (tail!4414 lt!997538))))))

(declare-fun d!811380 () Bool)

(declare-fun e!1761910 () Bool)

(assert (=> d!811380 e!1761910))

(declare-fun res!1164209 () Bool)

(assert (=> d!811380 (=> res!1164209 e!1761910)))

(declare-fun lt!997600 () Bool)

(assert (=> d!811380 (= res!1164209 (not lt!997600))))

(declare-fun e!1761911 () Bool)

(assert (=> d!811380 (= lt!997600 e!1761911)))

(declare-fun res!1164208 () Bool)

(assert (=> d!811380 (=> res!1164208 e!1761911)))

(assert (=> d!811380 (= res!1164208 ((_ is Nil!32343) (tail!4414 testedP!183)))))

(assert (=> d!811380 (= (isPrefix!2602 (tail!4414 testedP!183) (tail!4414 lt!997538)) lt!997600)))

(declare-fun b!2790663 () Bool)

(assert (=> b!2790663 (= e!1761909 (isPrefix!2602 (tail!4414 (tail!4414 testedP!183)) (tail!4414 (tail!4414 lt!997538))))))

(declare-fun b!2790664 () Bool)

(assert (=> b!2790664 (= e!1761910 (>= (size!25178 (tail!4414 lt!997538)) (size!25178 (tail!4414 testedP!183))))))

(declare-fun b!2790661 () Bool)

(assert (=> b!2790661 (= e!1761911 e!1761909)))

(declare-fun res!1164206 () Bool)

(assert (=> b!2790661 (=> (not res!1164206) (not e!1761909))))

(assert (=> b!2790661 (= res!1164206 (not ((_ is Nil!32343) (tail!4414 lt!997538))))))

(assert (= (and d!811380 (not res!1164208)) b!2790661))

(assert (= (and b!2790661 res!1164206) b!2790662))

(assert (= (and b!2790662 res!1164207) b!2790663))

(assert (= (and d!811380 (not res!1164209)) b!2790664))

(assert (=> b!2790662 m!3220821))

(declare-fun m!3220972 () Bool)

(assert (=> b!2790662 m!3220972))

(assert (=> b!2790662 m!3220827))

(declare-fun m!3220974 () Bool)

(assert (=> b!2790662 m!3220974))

(assert (=> b!2790663 m!3220821))

(declare-fun m!3220976 () Bool)

(assert (=> b!2790663 m!3220976))

(assert (=> b!2790663 m!3220827))

(declare-fun m!3220978 () Bool)

(assert (=> b!2790663 m!3220978))

(assert (=> b!2790663 m!3220976))

(assert (=> b!2790663 m!3220978))

(declare-fun m!3220980 () Bool)

(assert (=> b!2790663 m!3220980))

(assert (=> b!2790664 m!3220827))

(declare-fun m!3220982 () Bool)

(assert (=> b!2790664 m!3220982))

(assert (=> b!2790664 m!3220821))

(declare-fun m!3220984 () Bool)

(assert (=> b!2790664 m!3220984))

(assert (=> b!2790501 d!811380))

(declare-fun d!811382 () Bool)

(assert (=> d!811382 (= (tail!4414 testedP!183) (t!228585 testedP!183))))

(assert (=> b!2790501 d!811382))

(declare-fun d!811384 () Bool)

(assert (=> d!811384 (= (tail!4414 lt!997538) (t!228585 lt!997538))))

(assert (=> b!2790501 d!811384))

(declare-fun d!811386 () Bool)

(declare-fun lt!997601 () Int)

(assert (=> d!811386 (>= lt!997601 0)))

(declare-fun e!1761912 () Int)

(assert (=> d!811386 (= lt!997601 e!1761912)))

(declare-fun c!452988 () Bool)

(assert (=> d!811386 (= c!452988 ((_ is Nil!32343) lt!997539))))

(assert (=> d!811386 (= (size!25178 lt!997539) lt!997601)))

(declare-fun b!2790665 () Bool)

(assert (=> b!2790665 (= e!1761912 0)))

(declare-fun b!2790666 () Bool)

(assert (=> b!2790666 (= e!1761912 (+ 1 (size!25178 (t!228585 lt!997539))))))

(assert (= (and d!811386 c!452988) b!2790665))

(assert (= (and d!811386 (not c!452988)) b!2790666))

(declare-fun m!3220986 () Bool)

(assert (=> b!2790666 m!3220986))

(assert (=> b!2790498 d!811386))

(assert (=> b!2790498 d!811334))

(declare-fun bs!511164 () Bool)

(declare-fun d!811388 () Bool)

(assert (= bs!511164 (and d!811388 d!811344)))

(declare-fun lambda!102400 () Int)

(assert (=> bs!511164 (= lambda!102400 lambda!102384)))

(declare-fun bs!511165 () Bool)

(assert (= bs!511165 (and d!811388 d!811368)))

(assert (=> bs!511165 (= lambda!102400 lambda!102391)))

(declare-fun bs!511166 () Bool)

(assert (= bs!511166 (and d!811388 d!811356)))

(assert (=> bs!511166 (= lambda!102400 lambda!102385)))

(declare-fun bs!511167 () Bool)

(assert (= bs!511167 (and d!811388 d!811362)))

(assert (=> bs!511167 (= lambda!102400 lambda!102386)))

(declare-fun bs!511168 () Bool)

(assert (= bs!511168 (and d!811388 d!811374)))

(assert (=> bs!511168 (= lambda!102400 lambda!102393)))

(declare-fun bs!511169 () Bool)

(assert (= bs!511169 (and d!811388 d!811366)))

(assert (=> bs!511169 (= lambda!102400 lambda!102390)))

(declare-fun bs!511170 () Bool)

(assert (= bs!511170 (and d!811388 d!811370)))

(assert (=> bs!511170 (= lambda!102400 lambda!102392)))

(declare-fun bs!511171 () Bool)

(assert (= bs!511171 (and d!811388 d!811308)))

(assert (=> bs!511171 (= lambda!102400 lambda!102383)))

(assert (=> d!811388 (= (inv!43944 (_2!19402 (_1!19403 (h!37765 (minValue!4197 (v!33949 (underlying!8079 (v!33950 (underlying!8080 (cache!3987 cacheDown!1009)))))))))) (forall!6670 (exprs!2889 (_2!19402 (_1!19403 (h!37765 (minValue!4197 (v!33949 (underlying!8079 (v!33950 (underlying!8080 (cache!3987 cacheDown!1009)))))))))) lambda!102400))))

(declare-fun bs!511172 () Bool)

(assert (= bs!511172 d!811388))

(declare-fun m!3220988 () Bool)

(assert (=> bs!511172 m!3220988))

(assert (=> b!2790531 d!811388))

(declare-fun b!2790679 () Bool)

(declare-fun res!1164224 () Bool)

(declare-fun e!1761918 () Bool)

(assert (=> b!2790679 (=> (not res!1164224) (not e!1761918))))

(assert (=> b!2790679 (= res!1164224 (<= (- (height!1493 (left!24513 (c!452950 (_2!19406 lt!997582)))) (height!1493 (right!24843 (c!452950 (_2!19406 lt!997582))))) 1))))

(declare-fun b!2790680 () Bool)

(declare-fun res!1164227 () Bool)

(assert (=> b!2790680 (=> (not res!1164227) (not e!1761918))))

(declare-fun isEmpty!18122 (Conc!10036) Bool)

(assert (=> b!2790680 (= res!1164227 (not (isEmpty!18122 (left!24513 (c!452950 (_2!19406 lt!997582))))))))

(declare-fun b!2790681 () Bool)

(declare-fun res!1164222 () Bool)

(assert (=> b!2790681 (=> (not res!1164222) (not e!1761918))))

(assert (=> b!2790681 (= res!1164222 (isBalanced!3062 (right!24843 (c!452950 (_2!19406 lt!997582)))))))

(declare-fun d!811390 () Bool)

(declare-fun res!1164223 () Bool)

(declare-fun e!1761917 () Bool)

(assert (=> d!811390 (=> res!1164223 e!1761917)))

(assert (=> d!811390 (= res!1164223 (not ((_ is Node!10036) (c!452950 (_2!19406 lt!997582)))))))

(assert (=> d!811390 (= (isBalanced!3062 (c!452950 (_2!19406 lt!997582))) e!1761917)))

(declare-fun b!2790682 () Bool)

(assert (=> b!2790682 (= e!1761917 e!1761918)))

(declare-fun res!1164225 () Bool)

(assert (=> b!2790682 (=> (not res!1164225) (not e!1761918))))

(assert (=> b!2790682 (= res!1164225 (<= (- 1) (- (height!1493 (left!24513 (c!452950 (_2!19406 lt!997582)))) (height!1493 (right!24843 (c!452950 (_2!19406 lt!997582)))))))))

(declare-fun b!2790683 () Bool)

(declare-fun res!1164226 () Bool)

(assert (=> b!2790683 (=> (not res!1164226) (not e!1761918))))

(assert (=> b!2790683 (= res!1164226 (isBalanced!3062 (left!24513 (c!452950 (_2!19406 lt!997582)))))))

(declare-fun b!2790684 () Bool)

(assert (=> b!2790684 (= e!1761918 (not (isEmpty!18122 (right!24843 (c!452950 (_2!19406 lt!997582))))))))

(assert (= (and d!811390 (not res!1164223)) b!2790682))

(assert (= (and b!2790682 res!1164225) b!2790679))

(assert (= (and b!2790679 res!1164224) b!2790683))

(assert (= (and b!2790683 res!1164226) b!2790681))

(assert (= (and b!2790681 res!1164222) b!2790680))

(assert (= (and b!2790680 res!1164227) b!2790684))

(declare-fun m!3220990 () Bool)

(assert (=> b!2790681 m!3220990))

(declare-fun m!3220992 () Bool)

(assert (=> b!2790683 m!3220992))

(declare-fun m!3220994 () Bool)

(assert (=> b!2790684 m!3220994))

(declare-fun m!3220996 () Bool)

(assert (=> b!2790682 m!3220996))

(declare-fun m!3220998 () Bool)

(assert (=> b!2790682 m!3220998))

(assert (=> b!2790679 m!3220996))

(assert (=> b!2790679 m!3220998))

(declare-fun m!3221000 () Bool)

(assert (=> b!2790680 m!3221000))

(assert (=> b!2790479 d!811390))

(declare-fun bs!511173 () Bool)

(declare-fun d!811392 () Bool)

(assert (= bs!511173 (and d!811392 d!811344)))

(declare-fun lambda!102401 () Int)

(assert (=> bs!511173 (= lambda!102401 lambda!102384)))

(declare-fun bs!511174 () Bool)

(assert (= bs!511174 (and d!811392 d!811356)))

(assert (=> bs!511174 (= lambda!102401 lambda!102385)))

(declare-fun bs!511175 () Bool)

(assert (= bs!511175 (and d!811392 d!811362)))

(assert (=> bs!511175 (= lambda!102401 lambda!102386)))

(declare-fun bs!511176 () Bool)

(assert (= bs!511176 (and d!811392 d!811374)))

(assert (=> bs!511176 (= lambda!102401 lambda!102393)))

(declare-fun bs!511177 () Bool)

(assert (= bs!511177 (and d!811392 d!811366)))

(assert (=> bs!511177 (= lambda!102401 lambda!102390)))

(declare-fun bs!511178 () Bool)

(assert (= bs!511178 (and d!811392 d!811370)))

(assert (=> bs!511178 (= lambda!102401 lambda!102392)))

(declare-fun bs!511179 () Bool)

(assert (= bs!511179 (and d!811392 d!811308)))

(assert (=> bs!511179 (= lambda!102401 lambda!102383)))

(declare-fun bs!511180 () Bool)

(assert (= bs!511180 (and d!811392 d!811388)))

(assert (=> bs!511180 (= lambda!102401 lambda!102400)))

(declare-fun bs!511181 () Bool)

(assert (= bs!511181 (and d!811392 d!811368)))

(assert (=> bs!511181 (= lambda!102401 lambda!102391)))

(assert (=> d!811392 (= (inv!43944 (_2!19402 (_1!19403 (h!37765 (zeroValue!4197 (v!33949 (underlying!8079 (v!33950 (underlying!8080 (cache!3987 cacheDown!1009)))))))))) (forall!6670 (exprs!2889 (_2!19402 (_1!19403 (h!37765 (zeroValue!4197 (v!33949 (underlying!8079 (v!33950 (underlying!8080 (cache!3987 cacheDown!1009)))))))))) lambda!102401))))

(declare-fun bs!511182 () Bool)

(assert (= bs!511182 d!811392))

(declare-fun m!3221002 () Bool)

(assert (=> bs!511182 m!3221002))

(assert (=> b!2790528 d!811392))

(declare-fun bs!511183 () Bool)

(declare-fun d!811394 () Bool)

(assert (= bs!511183 (and d!811394 d!811392)))

(declare-fun lambda!102402 () Int)

(assert (=> bs!511183 (= lambda!102402 lambda!102401)))

(declare-fun bs!511184 () Bool)

(assert (= bs!511184 (and d!811394 d!811344)))

(assert (=> bs!511184 (= lambda!102402 lambda!102384)))

(declare-fun bs!511185 () Bool)

(assert (= bs!511185 (and d!811394 d!811356)))

(assert (=> bs!511185 (= lambda!102402 lambda!102385)))

(declare-fun bs!511186 () Bool)

(assert (= bs!511186 (and d!811394 d!811362)))

(assert (=> bs!511186 (= lambda!102402 lambda!102386)))

(declare-fun bs!511187 () Bool)

(assert (= bs!511187 (and d!811394 d!811374)))

(assert (=> bs!511187 (= lambda!102402 lambda!102393)))

(declare-fun bs!511188 () Bool)

(assert (= bs!511188 (and d!811394 d!811366)))

(assert (=> bs!511188 (= lambda!102402 lambda!102390)))

(declare-fun bs!511189 () Bool)

(assert (= bs!511189 (and d!811394 d!811370)))

(assert (=> bs!511189 (= lambda!102402 lambda!102392)))

(declare-fun bs!511190 () Bool)

(assert (= bs!511190 (and d!811394 d!811308)))

(assert (=> bs!511190 (= lambda!102402 lambda!102383)))

(declare-fun bs!511191 () Bool)

(assert (= bs!511191 (and d!811394 d!811388)))

(assert (=> bs!511191 (= lambda!102402 lambda!102400)))

(declare-fun bs!511192 () Bool)

(assert (= bs!511192 (and d!811394 d!811368)))

(assert (=> bs!511192 (= lambda!102402 lambda!102391)))

(assert (=> d!811394 (= (inv!43944 (_1!19404 (_1!19405 (h!37766 mapValue!17940)))) (forall!6670 (exprs!2889 (_1!19404 (_1!19405 (h!37766 mapValue!17940)))) lambda!102402))))

(declare-fun bs!511193 () Bool)

(assert (= bs!511193 d!811394))

(declare-fun m!3221004 () Bool)

(assert (=> bs!511193 m!3221004))

(assert (=> b!2790593 d!811394))

(declare-fun d!811396 () Bool)

(declare-fun lt!997602 () Int)

(assert (=> d!811396 (>= lt!997602 0)))

(declare-fun e!1761919 () Int)

(assert (=> d!811396 (= lt!997602 e!1761919)))

(declare-fun c!452989 () Bool)

(assert (=> d!811396 (= c!452989 ((_ is Nil!32343) (list!12164 totalInput!758)))))

(assert (=> d!811396 (= (size!25178 (list!12164 totalInput!758)) lt!997602)))

(declare-fun b!2790685 () Bool)

(assert (=> b!2790685 (= e!1761919 0)))

(declare-fun b!2790686 () Bool)

(assert (=> b!2790686 (= e!1761919 (+ 1 (size!25178 (t!228585 (list!12164 totalInput!758)))))))

(assert (= (and d!811396 c!452989) b!2790685))

(assert (= (and d!811396 (not c!452989)) b!2790686))

(declare-fun m!3221006 () Bool)

(assert (=> b!2790686 m!3221006))

(assert (=> d!811296 d!811396))

(assert (=> d!811296 d!811318))

(declare-fun d!811398 () Bool)

(declare-fun lt!997605 () Int)

(assert (=> d!811398 (= lt!997605 (size!25178 (list!12165 (c!452950 totalInput!758))))))

(assert (=> d!811398 (= lt!997605 (ite ((_ is Empty!10036) (c!452950 totalInput!758)) 0 (ite ((_ is Leaf!15290) (c!452950 totalInput!758)) (csize!20303 (c!452950 totalInput!758)) (csize!20302 (c!452950 totalInput!758)))))))

(assert (=> d!811398 (= (size!25180 (c!452950 totalInput!758)) lt!997605)))

(declare-fun bs!511194 () Bool)

(assert (= bs!511194 d!811398))

(assert (=> bs!511194 m!3220771))

(assert (=> bs!511194 m!3220771))

(declare-fun m!3221008 () Bool)

(assert (=> bs!511194 m!3221008))

(assert (=> d!811296 d!811398))

(declare-fun bs!511195 () Bool)

(declare-fun d!811400 () Bool)

(assert (= bs!511195 (and d!811400 d!811392)))

(declare-fun lambda!102403 () Int)

(assert (=> bs!511195 (= lambda!102403 lambda!102401)))

(declare-fun bs!511196 () Bool)

(assert (= bs!511196 (and d!811400 d!811344)))

(assert (=> bs!511196 (= lambda!102403 lambda!102384)))

(declare-fun bs!511197 () Bool)

(assert (= bs!511197 (and d!811400 d!811394)))

(assert (=> bs!511197 (= lambda!102403 lambda!102402)))

(declare-fun bs!511198 () Bool)

(assert (= bs!511198 (and d!811400 d!811356)))

(assert (=> bs!511198 (= lambda!102403 lambda!102385)))

(declare-fun bs!511199 () Bool)

(assert (= bs!511199 (and d!811400 d!811362)))

(assert (=> bs!511199 (= lambda!102403 lambda!102386)))

(declare-fun bs!511200 () Bool)

(assert (= bs!511200 (and d!811400 d!811374)))

(assert (=> bs!511200 (= lambda!102403 lambda!102393)))

(declare-fun bs!511201 () Bool)

(assert (= bs!511201 (and d!811400 d!811366)))

(assert (=> bs!511201 (= lambda!102403 lambda!102390)))

(declare-fun bs!511202 () Bool)

(assert (= bs!511202 (and d!811400 d!811370)))

(assert (=> bs!511202 (= lambda!102403 lambda!102392)))

(declare-fun bs!511203 () Bool)

(assert (= bs!511203 (and d!811400 d!811308)))

(assert (=> bs!511203 (= lambda!102403 lambda!102383)))

(declare-fun bs!511204 () Bool)

(assert (= bs!511204 (and d!811400 d!811388)))

(assert (=> bs!511204 (= lambda!102403 lambda!102400)))

(declare-fun bs!511205 () Bool)

(assert (= bs!511205 (and d!811400 d!811368)))

(assert (=> bs!511205 (= lambda!102403 lambda!102391)))

(assert (=> d!811400 (= (inv!43944 (_2!19402 (_1!19403 (h!37765 mapValue!17933)))) (forall!6670 (exprs!2889 (_2!19402 (_1!19403 (h!37765 mapValue!17933)))) lambda!102403))))

(declare-fun bs!511206 () Bool)

(assert (= bs!511206 d!811400))

(declare-fun m!3221010 () Bool)

(assert (=> bs!511206 m!3221010))

(assert (=> b!2790554 d!811400))

(declare-fun d!811402 () Bool)

(declare-fun lt!997606 () Int)

(assert (=> d!811402 (>= lt!997606 0)))

(declare-fun e!1761920 () Int)

(assert (=> d!811402 (= lt!997606 e!1761920)))

(declare-fun c!452990 () Bool)

(assert (=> d!811402 (= c!452990 ((_ is Nil!32343) (t!228585 testedP!183)))))

(assert (=> d!811402 (= (size!25178 (t!228585 testedP!183)) lt!997606)))

(declare-fun b!2790687 () Bool)

(assert (=> b!2790687 (= e!1761920 0)))

(declare-fun b!2790688 () Bool)

(assert (=> b!2790688 (= e!1761920 (+ 1 (size!25178 (t!228585 (t!228585 testedP!183)))))))

(assert (= (and d!811402 c!452990) b!2790687))

(assert (= (and d!811402 (not c!452990)) b!2790688))

(declare-fun m!3221012 () Bool)

(assert (=> b!2790688 m!3221012))

(assert (=> b!2790486 d!811402))

(declare-fun d!811404 () Bool)

(assert (=> d!811404 (= (head!6182 testedP!183) (h!37763 testedP!183))))

(assert (=> b!2790496 d!811404))

(declare-fun d!811406 () Bool)

(assert (=> d!811406 (= (head!6182 lt!997539) (h!37763 lt!997539))))

(assert (=> b!2790496 d!811406))

(declare-fun d!811408 () Bool)

(declare-fun res!1164232 () Bool)

(declare-fun e!1761925 () Bool)

(assert (=> d!811408 (=> res!1164232 e!1761925)))

(assert (=> d!811408 (= res!1164232 ((_ is Nil!32344) (exprs!2889 setElem!23815)))))

(assert (=> d!811408 (= (forall!6670 (exprs!2889 setElem!23815) lambda!102383) e!1761925)))

(declare-fun b!2790693 () Bool)

(declare-fun e!1761926 () Bool)

(assert (=> b!2790693 (= e!1761925 e!1761926)))

(declare-fun res!1164233 () Bool)

(assert (=> b!2790693 (=> (not res!1164233) (not e!1761926))))

(declare-fun dynLambda!13615 (Int Regex!8171) Bool)

(assert (=> b!2790693 (= res!1164233 (dynLambda!13615 lambda!102383 (h!37764 (exprs!2889 setElem!23815))))))

(declare-fun b!2790694 () Bool)

(assert (=> b!2790694 (= e!1761926 (forall!6670 (t!228586 (exprs!2889 setElem!23815)) lambda!102383))))

(assert (= (and d!811408 (not res!1164232)) b!2790693))

(assert (= (and b!2790693 res!1164233) b!2790694))

(declare-fun b_lambda!83601 () Bool)

(assert (=> (not b_lambda!83601) (not b!2790693)))

(declare-fun m!3221014 () Bool)

(assert (=> b!2790693 m!3221014))

(declare-fun m!3221016 () Bool)

(assert (=> b!2790694 m!3221016))

(assert (=> d!811308 d!811408))

(declare-fun d!811410 () Bool)

(declare-fun lt!997607 () List!32443)

(assert (=> d!811410 (= (++!7984 (t!228585 testedP!183) lt!997607) (tail!4414 lt!997539))))

(declare-fun e!1761927 () List!32443)

(assert (=> d!811410 (= lt!997607 e!1761927)))

(declare-fun c!452991 () Bool)

(assert (=> d!811410 (= c!452991 ((_ is Cons!32343) (t!228585 testedP!183)))))

(assert (=> d!811410 (>= (size!25178 (tail!4414 lt!997539)) (size!25178 (t!228585 testedP!183)))))

(assert (=> d!811410 (= (getSuffix!1278 (tail!4414 lt!997539) (t!228585 testedP!183)) lt!997607)))

(declare-fun b!2790695 () Bool)

(assert (=> b!2790695 (= e!1761927 (getSuffix!1278 (tail!4414 (tail!4414 lt!997539)) (t!228585 (t!228585 testedP!183))))))

(declare-fun b!2790696 () Bool)

(assert (=> b!2790696 (= e!1761927 (tail!4414 lt!997539))))

(assert (= (and d!811410 c!452991) b!2790695))

(assert (= (and d!811410 (not c!452991)) b!2790696))

(declare-fun m!3221018 () Bool)

(assert (=> d!811410 m!3221018))

(assert (=> d!811410 m!3220759))

(declare-fun m!3221020 () Bool)

(assert (=> d!811410 m!3221020))

(assert (=> d!811410 m!3220815))

(assert (=> b!2790695 m!3220759))

(declare-fun m!3221022 () Bool)

(assert (=> b!2790695 m!3221022))

(assert (=> b!2790695 m!3221022))

(declare-fun m!3221024 () Bool)

(assert (=> b!2790695 m!3221024))

(assert (=> b!2790442 d!811410))

(declare-fun d!811412 () Bool)

(assert (=> d!811412 (= (tail!4414 lt!997539) (t!228585 lt!997539))))

(assert (=> b!2790442 d!811412))

(declare-fun b!2790700 () Bool)

(declare-fun e!1761929 () List!32443)

(assert (=> b!2790700 (= e!1761929 (++!7984 (list!12165 (left!24513 (c!452950 (_2!19406 lt!997533)))) (list!12165 (right!24843 (c!452950 (_2!19406 lt!997533))))))))

(declare-fun b!2790698 () Bool)

(declare-fun e!1761928 () List!32443)

(assert (=> b!2790698 (= e!1761928 e!1761929)))

(declare-fun c!452993 () Bool)

(assert (=> b!2790698 (= c!452993 ((_ is Leaf!15290) (c!452950 (_2!19406 lt!997533))))))

(declare-fun b!2790699 () Bool)

(assert (=> b!2790699 (= e!1761929 (list!12166 (xs!13147 (c!452950 (_2!19406 lt!997533)))))))

(declare-fun b!2790697 () Bool)

(assert (=> b!2790697 (= e!1761928 Nil!32343)))

(declare-fun d!811414 () Bool)

(declare-fun c!452992 () Bool)

(assert (=> d!811414 (= c!452992 ((_ is Empty!10036) (c!452950 (_2!19406 lt!997533))))))

(assert (=> d!811414 (= (list!12165 (c!452950 (_2!19406 lt!997533))) e!1761928)))

(assert (= (and d!811414 c!452992) b!2790697))

(assert (= (and d!811414 (not c!452992)) b!2790698))

(assert (= (and b!2790698 c!452993) b!2790699))

(assert (= (and b!2790698 (not c!452993)) b!2790700))

(declare-fun m!3221026 () Bool)

(assert (=> b!2790700 m!3221026))

(declare-fun m!3221028 () Bool)

(assert (=> b!2790700 m!3221028))

(assert (=> b!2790700 m!3221026))

(assert (=> b!2790700 m!3221028))

(declare-fun m!3221030 () Bool)

(assert (=> b!2790700 m!3221030))

(declare-fun m!3221032 () Bool)

(assert (=> b!2790699 m!3221032))

(assert (=> d!811326 d!811414))

(declare-fun b!2790704 () Bool)

(declare-fun e!1761930 () Bool)

(declare-fun lt!997608 () List!32443)

(assert (=> b!2790704 (= e!1761930 (or (not (= (list!12164 (_2!19406 lt!997533)) Nil!32343)) (= lt!997608 (t!228585 (list!12164 (_1!19406 lt!997533))))))))

(declare-fun b!2790702 () Bool)

(declare-fun e!1761931 () List!32443)

(assert (=> b!2790702 (= e!1761931 (Cons!32343 (h!37763 (t!228585 (list!12164 (_1!19406 lt!997533)))) (++!7984 (t!228585 (t!228585 (list!12164 (_1!19406 lt!997533)))) (list!12164 (_2!19406 lt!997533)))))))

(declare-fun b!2790703 () Bool)

(declare-fun res!1164235 () Bool)

(assert (=> b!2790703 (=> (not res!1164235) (not e!1761930))))

(assert (=> b!2790703 (= res!1164235 (= (size!25178 lt!997608) (+ (size!25178 (t!228585 (list!12164 (_1!19406 lt!997533)))) (size!25178 (list!12164 (_2!19406 lt!997533))))))))

(declare-fun b!2790701 () Bool)

(assert (=> b!2790701 (= e!1761931 (list!12164 (_2!19406 lt!997533)))))

(declare-fun d!811416 () Bool)

(assert (=> d!811416 e!1761930))

(declare-fun res!1164234 () Bool)

(assert (=> d!811416 (=> (not res!1164234) (not e!1761930))))

(assert (=> d!811416 (= res!1164234 (= (content!4527 lt!997608) ((_ map or) (content!4527 (t!228585 (list!12164 (_1!19406 lt!997533)))) (content!4527 (list!12164 (_2!19406 lt!997533))))))))

(assert (=> d!811416 (= lt!997608 e!1761931)))

(declare-fun c!452994 () Bool)

(assert (=> d!811416 (= c!452994 ((_ is Nil!32343) (t!228585 (list!12164 (_1!19406 lt!997533)))))))

(assert (=> d!811416 (= (++!7984 (t!228585 (list!12164 (_1!19406 lt!997533))) (list!12164 (_2!19406 lt!997533))) lt!997608)))

(assert (= (and d!811416 c!452994) b!2790701))

(assert (= (and d!811416 (not c!452994)) b!2790702))

(assert (= (and d!811416 res!1164234) b!2790703))

(assert (= (and b!2790703 res!1164235) b!2790704))

(assert (=> b!2790702 m!3220723))

(declare-fun m!3221034 () Bool)

(assert (=> b!2790702 m!3221034))

(declare-fun m!3221036 () Bool)

(assert (=> b!2790703 m!3221036))

(assert (=> b!2790703 m!3220909))

(assert (=> b!2790703 m!3220723))

(assert (=> b!2790703 m!3220791))

(declare-fun m!3221038 () Bool)

(assert (=> d!811416 m!3221038))

(declare-fun m!3221040 () Bool)

(assert (=> d!811416 m!3221040))

(assert (=> d!811416 m!3220723))

(assert (=> d!811416 m!3220797))

(assert (=> b!2790472 d!811416))

(declare-fun b!2790705 () Bool)

(declare-fun res!1164238 () Bool)

(declare-fun e!1761933 () Bool)

(assert (=> b!2790705 (=> (not res!1164238) (not e!1761933))))

(assert (=> b!2790705 (= res!1164238 (<= (- (height!1493 (left!24513 (c!452950 totalInput!758))) (height!1493 (right!24843 (c!452950 totalInput!758)))) 1))))

(declare-fun b!2790706 () Bool)

(declare-fun res!1164241 () Bool)

(assert (=> b!2790706 (=> (not res!1164241) (not e!1761933))))

(assert (=> b!2790706 (= res!1164241 (not (isEmpty!18122 (left!24513 (c!452950 totalInput!758)))))))

(declare-fun b!2790707 () Bool)

(declare-fun res!1164236 () Bool)

(assert (=> b!2790707 (=> (not res!1164236) (not e!1761933))))

(assert (=> b!2790707 (= res!1164236 (isBalanced!3062 (right!24843 (c!452950 totalInput!758))))))

(declare-fun d!811418 () Bool)

(declare-fun res!1164237 () Bool)

(declare-fun e!1761932 () Bool)

(assert (=> d!811418 (=> res!1164237 e!1761932)))

(assert (=> d!811418 (= res!1164237 (not ((_ is Node!10036) (c!452950 totalInput!758))))))

(assert (=> d!811418 (= (isBalanced!3062 (c!452950 totalInput!758)) e!1761932)))

(declare-fun b!2790708 () Bool)

(assert (=> b!2790708 (= e!1761932 e!1761933)))

(declare-fun res!1164239 () Bool)

(assert (=> b!2790708 (=> (not res!1164239) (not e!1761933))))

(assert (=> b!2790708 (= res!1164239 (<= (- 1) (- (height!1493 (left!24513 (c!452950 totalInput!758))) (height!1493 (right!24843 (c!452950 totalInput!758))))))))

(declare-fun b!2790709 () Bool)

(declare-fun res!1164240 () Bool)

(assert (=> b!2790709 (=> (not res!1164240) (not e!1761933))))

(assert (=> b!2790709 (= res!1164240 (isBalanced!3062 (left!24513 (c!452950 totalInput!758))))))

(declare-fun b!2790710 () Bool)

(assert (=> b!2790710 (= e!1761933 (not (isEmpty!18122 (right!24843 (c!452950 totalInput!758)))))))

(assert (= (and d!811418 (not res!1164237)) b!2790708))

(assert (= (and b!2790708 res!1164239) b!2790705))

(assert (= (and b!2790705 res!1164238) b!2790709))

(assert (= (and b!2790709 res!1164240) b!2790707))

(assert (= (and b!2790707 res!1164236) b!2790706))

(assert (= (and b!2790706 res!1164241) b!2790710))

(declare-fun m!3221042 () Bool)

(assert (=> b!2790707 m!3221042))

(declare-fun m!3221044 () Bool)

(assert (=> b!2790709 m!3221044))

(declare-fun m!3221046 () Bool)

(assert (=> b!2790710 m!3221046))

(assert (=> b!2790708 m!3220937))

(assert (=> b!2790708 m!3220939))

(assert (=> b!2790705 m!3220937))

(assert (=> b!2790705 m!3220939))

(declare-fun m!3221048 () Bool)

(assert (=> b!2790706 m!3221048))

(assert (=> d!811314 d!811418))

(declare-fun bs!511207 () Bool)

(declare-fun d!811420 () Bool)

(assert (= bs!511207 (and d!811420 d!811392)))

(declare-fun lambda!102404 () Int)

(assert (=> bs!511207 (= lambda!102404 lambda!102401)))

(declare-fun bs!511208 () Bool)

(assert (= bs!511208 (and d!811420 d!811344)))

(assert (=> bs!511208 (= lambda!102404 lambda!102384)))

(declare-fun bs!511209 () Bool)

(assert (= bs!511209 (and d!811420 d!811394)))

(assert (=> bs!511209 (= lambda!102404 lambda!102402)))

(declare-fun bs!511210 () Bool)

(assert (= bs!511210 (and d!811420 d!811356)))

(assert (=> bs!511210 (= lambda!102404 lambda!102385)))

(declare-fun bs!511211 () Bool)

(assert (= bs!511211 (and d!811420 d!811362)))

(assert (=> bs!511211 (= lambda!102404 lambda!102386)))

(declare-fun bs!511212 () Bool)

(assert (= bs!511212 (and d!811420 d!811374)))

(assert (=> bs!511212 (= lambda!102404 lambda!102393)))

(declare-fun bs!511213 () Bool)

(assert (= bs!511213 (and d!811420 d!811366)))

(assert (=> bs!511213 (= lambda!102404 lambda!102390)))

(declare-fun bs!511214 () Bool)

(assert (= bs!511214 (and d!811420 d!811370)))

(assert (=> bs!511214 (= lambda!102404 lambda!102392)))

(declare-fun bs!511215 () Bool)

(assert (= bs!511215 (and d!811420 d!811308)))

(assert (=> bs!511215 (= lambda!102404 lambda!102383)))

(declare-fun bs!511216 () Bool)

(assert (= bs!511216 (and d!811420 d!811400)))

(assert (=> bs!511216 (= lambda!102404 lambda!102403)))

(declare-fun bs!511217 () Bool)

(assert (= bs!511217 (and d!811420 d!811388)))

(assert (=> bs!511217 (= lambda!102404 lambda!102400)))

(declare-fun bs!511218 () Bool)

(assert (= bs!511218 (and d!811420 d!811368)))

(assert (=> bs!511218 (= lambda!102404 lambda!102391)))

(assert (=> d!811420 (= (inv!43944 setElem!23841) (forall!6670 (exprs!2889 setElem!23841) lambda!102404))))

(declare-fun bs!511219 () Bool)

(assert (= bs!511219 d!811420))

(declare-fun m!3221050 () Bool)

(assert (=> bs!511219 m!3221050))

(assert (=> setNonEmpty!23841 d!811420))

(assert (=> d!811294 d!811364))

(declare-fun bs!511220 () Bool)

(declare-fun d!811422 () Bool)

(assert (= bs!511220 (and d!811422 d!811344)))

(declare-fun lambda!102405 () Int)

(assert (=> bs!511220 (= lambda!102405 lambda!102384)))

(declare-fun bs!511221 () Bool)

(assert (= bs!511221 (and d!811422 d!811394)))

(assert (=> bs!511221 (= lambda!102405 lambda!102402)))

(declare-fun bs!511222 () Bool)

(assert (= bs!511222 (and d!811422 d!811356)))

(assert (=> bs!511222 (= lambda!102405 lambda!102385)))

(declare-fun bs!511223 () Bool)

(assert (= bs!511223 (and d!811422 d!811362)))

(assert (=> bs!511223 (= lambda!102405 lambda!102386)))

(declare-fun bs!511224 () Bool)

(assert (= bs!511224 (and d!811422 d!811374)))

(assert (=> bs!511224 (= lambda!102405 lambda!102393)))

(declare-fun bs!511225 () Bool)

(assert (= bs!511225 (and d!811422 d!811366)))

(assert (=> bs!511225 (= lambda!102405 lambda!102390)))

(declare-fun bs!511226 () Bool)

(assert (= bs!511226 (and d!811422 d!811420)))

(assert (=> bs!511226 (= lambda!102405 lambda!102404)))

(declare-fun bs!511227 () Bool)

(assert (= bs!511227 (and d!811422 d!811392)))

(assert (=> bs!511227 (= lambda!102405 lambda!102401)))

(declare-fun bs!511228 () Bool)

(assert (= bs!511228 (and d!811422 d!811370)))

(assert (=> bs!511228 (= lambda!102405 lambda!102392)))

(declare-fun bs!511229 () Bool)

(assert (= bs!511229 (and d!811422 d!811308)))

(assert (=> bs!511229 (= lambda!102405 lambda!102383)))

(declare-fun bs!511230 () Bool)

(assert (= bs!511230 (and d!811422 d!811400)))

(assert (=> bs!511230 (= lambda!102405 lambda!102403)))

(declare-fun bs!511231 () Bool)

(assert (= bs!511231 (and d!811422 d!811388)))

(assert (=> bs!511231 (= lambda!102405 lambda!102400)))

(declare-fun bs!511232 () Bool)

(assert (= bs!511232 (and d!811422 d!811368)))

(assert (=> bs!511232 (= lambda!102405 lambda!102391)))

(assert (=> d!811422 (= (inv!43944 setElem!23827) (forall!6670 (exprs!2889 setElem!23827) lambda!102405))))

(declare-fun bs!511233 () Bool)

(assert (= bs!511233 d!811422))

(declare-fun m!3221052 () Bool)

(assert (=> bs!511233 m!3221052))

(assert (=> setNonEmpty!23828 d!811422))

(declare-fun d!811424 () Bool)

(declare-fun res!1164246 () Bool)

(declare-fun e!1761936 () Bool)

(assert (=> d!811424 (=> (not res!1164246) (not e!1761936))))

(declare-fun valid!3079 (MutableMap!3845) Bool)

(assert (=> d!811424 (= res!1164246 (valid!3079 (cache!3988 cacheUp!890)))))

(assert (=> d!811424 (= (validCacheMapUp!386 (cache!3988 cacheUp!890)) e!1761936)))

(declare-fun b!2790715 () Bool)

(declare-fun res!1164247 () Bool)

(assert (=> b!2790715 (=> (not res!1164247) (not e!1761936))))

(declare-fun invariantList!457 (List!32446) Bool)

(declare-datatypes ((ListMap!1247 0))(
  ( (ListMap!1248 (toList!1864 List!32446)) )
))
(declare-fun map!7012 (MutableMap!3845) ListMap!1247)

(assert (=> b!2790715 (= res!1164247 (invariantList!457 (toList!1864 (map!7012 (cache!3988 cacheUp!890)))))))

(declare-fun b!2790716 () Bool)

(declare-fun lambda!102408 () Int)

(declare-fun forall!6673 (List!32446 Int) Bool)

(assert (=> b!2790716 (= e!1761936 (forall!6673 (toList!1864 (map!7012 (cache!3988 cacheUp!890))) lambda!102408))))

(assert (= (and d!811424 res!1164246) b!2790715))

(assert (= (and b!2790715 res!1164247) b!2790716))

(declare-fun m!3221055 () Bool)

(assert (=> d!811424 m!3221055))

(declare-fun m!3221057 () Bool)

(assert (=> b!2790715 m!3221057))

(declare-fun m!3221059 () Bool)

(assert (=> b!2790715 m!3221059))

(assert (=> b!2790716 m!3221057))

(declare-fun m!3221061 () Bool)

(assert (=> b!2790716 m!3221061))

(assert (=> b!2790455 d!811424))

(declare-fun b!2790718 () Bool)

(declare-fun res!1164249 () Bool)

(declare-fun e!1761937 () Bool)

(assert (=> b!2790718 (=> (not res!1164249) (not e!1761937))))

(assert (=> b!2790718 (= res!1164249 (= (head!6182 testedP!183) (head!6182 (++!7984 testedP!183 testedSuffix!143))))))

(declare-fun d!811426 () Bool)

(declare-fun e!1761938 () Bool)

(assert (=> d!811426 e!1761938))

(declare-fun res!1164251 () Bool)

(assert (=> d!811426 (=> res!1164251 e!1761938)))

(declare-fun lt!997609 () Bool)

(assert (=> d!811426 (= res!1164251 (not lt!997609))))

(declare-fun e!1761939 () Bool)

(assert (=> d!811426 (= lt!997609 e!1761939)))

(declare-fun res!1164250 () Bool)

(assert (=> d!811426 (=> res!1164250 e!1761939)))

(assert (=> d!811426 (= res!1164250 ((_ is Nil!32343) testedP!183))))

(assert (=> d!811426 (= (isPrefix!2602 testedP!183 (++!7984 testedP!183 testedSuffix!143)) lt!997609)))

(declare-fun b!2790719 () Bool)

(assert (=> b!2790719 (= e!1761937 (isPrefix!2602 (tail!4414 testedP!183) (tail!4414 (++!7984 testedP!183 testedSuffix!143))))))

(declare-fun b!2790720 () Bool)

(assert (=> b!2790720 (= e!1761938 (>= (size!25178 (++!7984 testedP!183 testedSuffix!143)) (size!25178 testedP!183)))))

(declare-fun b!2790717 () Bool)

(assert (=> b!2790717 (= e!1761939 e!1761937)))

(declare-fun res!1164248 () Bool)

(assert (=> b!2790717 (=> (not res!1164248) (not e!1761937))))

(assert (=> b!2790717 (= res!1164248 (not ((_ is Nil!32343) (++!7984 testedP!183 testedSuffix!143))))))

(assert (= (and d!811426 (not res!1164250)) b!2790717))

(assert (= (and b!2790717 res!1164248) b!2790718))

(assert (= (and b!2790718 res!1164249) b!2790719))

(assert (= (and d!811426 (not res!1164251)) b!2790720))

(assert (=> b!2790718 m!3220817))

(assert (=> b!2790718 m!3220705))

(declare-fun m!3221063 () Bool)

(assert (=> b!2790718 m!3221063))

(assert (=> b!2790719 m!3220821))

(assert (=> b!2790719 m!3220705))

(declare-fun m!3221065 () Bool)

(assert (=> b!2790719 m!3221065))

(assert (=> b!2790719 m!3220821))

(assert (=> b!2790719 m!3221065))

(declare-fun m!3221067 () Bool)

(assert (=> b!2790719 m!3221067))

(assert (=> b!2790720 m!3220705))

(declare-fun m!3221069 () Bool)

(assert (=> b!2790720 m!3221069))

(assert (=> b!2790720 m!3220715))

(assert (=> d!811340 d!811426))

(assert (=> d!811340 d!811320))

(declare-fun d!811428 () Bool)

(assert (=> d!811428 (isPrefix!2602 testedP!183 (++!7984 testedP!183 testedSuffix!143))))

(assert (=> d!811428 true))

(declare-fun _$46!1401 () Unit!46544)

(assert (=> d!811428 (= (choose!16410 testedP!183 testedSuffix!143) _$46!1401)))

(declare-fun bs!511234 () Bool)

(assert (= bs!511234 d!811428))

(assert (=> bs!511234 m!3220705))

(assert (=> bs!511234 m!3220705))

(assert (=> bs!511234 m!3220833))

(assert (=> d!811340 d!811428))

(declare-fun bs!511235 () Bool)

(declare-fun d!811430 () Bool)

(assert (= bs!511235 (and d!811430 d!811344)))

(declare-fun lambda!102409 () Int)

(assert (=> bs!511235 (= lambda!102409 lambda!102384)))

(declare-fun bs!511236 () Bool)

(assert (= bs!511236 (and d!811430 d!811394)))

(assert (=> bs!511236 (= lambda!102409 lambda!102402)))

(declare-fun bs!511237 () Bool)

(assert (= bs!511237 (and d!811430 d!811356)))

(assert (=> bs!511237 (= lambda!102409 lambda!102385)))

(declare-fun bs!511238 () Bool)

(assert (= bs!511238 (and d!811430 d!811362)))

(assert (=> bs!511238 (= lambda!102409 lambda!102386)))

(declare-fun bs!511239 () Bool)

(assert (= bs!511239 (and d!811430 d!811374)))

(assert (=> bs!511239 (= lambda!102409 lambda!102393)))

(declare-fun bs!511240 () Bool)

(assert (= bs!511240 (and d!811430 d!811366)))

(assert (=> bs!511240 (= lambda!102409 lambda!102390)))

(declare-fun bs!511241 () Bool)

(assert (= bs!511241 (and d!811430 d!811422)))

(assert (=> bs!511241 (= lambda!102409 lambda!102405)))

(declare-fun bs!511242 () Bool)

(assert (= bs!511242 (and d!811430 d!811420)))

(assert (=> bs!511242 (= lambda!102409 lambda!102404)))

(declare-fun bs!511243 () Bool)

(assert (= bs!511243 (and d!811430 d!811392)))

(assert (=> bs!511243 (= lambda!102409 lambda!102401)))

(declare-fun bs!511244 () Bool)

(assert (= bs!511244 (and d!811430 d!811370)))

(assert (=> bs!511244 (= lambda!102409 lambda!102392)))

(declare-fun bs!511245 () Bool)

(assert (= bs!511245 (and d!811430 d!811308)))

(assert (=> bs!511245 (= lambda!102409 lambda!102383)))

(declare-fun bs!511246 () Bool)

(assert (= bs!511246 (and d!811430 d!811400)))

(assert (=> bs!511246 (= lambda!102409 lambda!102403)))

(declare-fun bs!511247 () Bool)

(assert (= bs!511247 (and d!811430 d!811388)))

(assert (=> bs!511247 (= lambda!102409 lambda!102400)))

(declare-fun bs!511248 () Bool)

(assert (= bs!511248 (and d!811430 d!811368)))

(assert (=> bs!511248 (= lambda!102409 lambda!102391)))

(assert (=> d!811430 (= (inv!43944 (_1!19404 (_1!19405 (h!37766 mapDefault!17934)))) (forall!6670 (exprs!2889 (_1!19404 (_1!19405 (h!37766 mapDefault!17934)))) lambda!102409))))

(declare-fun bs!511249 () Bool)

(assert (= bs!511249 d!811430))

(declare-fun m!3221071 () Bool)

(assert (=> bs!511249 m!3221071))

(assert (=> b!2790564 d!811430))

(declare-fun bs!511250 () Bool)

(declare-fun d!811432 () Bool)

(assert (= bs!511250 (and d!811432 d!811344)))

(declare-fun lambda!102410 () Int)

(assert (=> bs!511250 (= lambda!102410 lambda!102384)))

(declare-fun bs!511251 () Bool)

(assert (= bs!511251 (and d!811432 d!811394)))

(assert (=> bs!511251 (= lambda!102410 lambda!102402)))

(declare-fun bs!511252 () Bool)

(assert (= bs!511252 (and d!811432 d!811356)))

(assert (=> bs!511252 (= lambda!102410 lambda!102385)))

(declare-fun bs!511253 () Bool)

(assert (= bs!511253 (and d!811432 d!811362)))

(assert (=> bs!511253 (= lambda!102410 lambda!102386)))

(declare-fun bs!511254 () Bool)

(assert (= bs!511254 (and d!811432 d!811374)))

(assert (=> bs!511254 (= lambda!102410 lambda!102393)))

(declare-fun bs!511255 () Bool)

(assert (= bs!511255 (and d!811432 d!811366)))

(assert (=> bs!511255 (= lambda!102410 lambda!102390)))

(declare-fun bs!511256 () Bool)

(assert (= bs!511256 (and d!811432 d!811420)))

(assert (=> bs!511256 (= lambda!102410 lambda!102404)))

(declare-fun bs!511257 () Bool)

(assert (= bs!511257 (and d!811432 d!811392)))

(assert (=> bs!511257 (= lambda!102410 lambda!102401)))

(declare-fun bs!511258 () Bool)

(assert (= bs!511258 (and d!811432 d!811370)))

(assert (=> bs!511258 (= lambda!102410 lambda!102392)))

(declare-fun bs!511259 () Bool)

(assert (= bs!511259 (and d!811432 d!811308)))

(assert (=> bs!511259 (= lambda!102410 lambda!102383)))

(declare-fun bs!511260 () Bool)

(assert (= bs!511260 (and d!811432 d!811400)))

(assert (=> bs!511260 (= lambda!102410 lambda!102403)))

(declare-fun bs!511261 () Bool)

(assert (= bs!511261 (and d!811432 d!811388)))

(assert (=> bs!511261 (= lambda!102410 lambda!102400)))

(declare-fun bs!511262 () Bool)

(assert (= bs!511262 (and d!811432 d!811368)))

(assert (=> bs!511262 (= lambda!102410 lambda!102391)))

(declare-fun bs!511263 () Bool)

(assert (= bs!511263 (and d!811432 d!811422)))

(assert (=> bs!511263 (= lambda!102410 lambda!102405)))

(declare-fun bs!511264 () Bool)

(assert (= bs!511264 (and d!811432 d!811430)))

(assert (=> bs!511264 (= lambda!102410 lambda!102409)))

(assert (=> d!811432 (= (inv!43944 (_1!19404 (_1!19405 (h!37766 (minValue!4198 (v!33951 (underlying!8081 (v!33952 (underlying!8082 (cache!3988 cacheUp!890)))))))))) (forall!6670 (exprs!2889 (_1!19404 (_1!19405 (h!37766 (minValue!4198 (v!33951 (underlying!8081 (v!33952 (underlying!8082 (cache!3988 cacheUp!890)))))))))) lambda!102410))))

(declare-fun bs!511265 () Bool)

(assert (= bs!511265 d!811432))

(declare-fun m!3221073 () Bool)

(assert (=> bs!511265 m!3221073))

(assert (=> b!2790607 d!811432))

(declare-fun d!811434 () Bool)

(assert (=> d!811434 (= (isEmpty!18121 (getLanguageWitness!207 z!3684)) (not ((_ is Some!6276) (getLanguageWitness!207 z!3684))))))

(assert (=> d!811298 d!811434))

(declare-fun bs!511266 () Bool)

(declare-fun d!811436 () Bool)

(assert (= bs!511266 (and d!811436 d!811376)))

(declare-fun lambda!102417 () Int)

(assert (=> bs!511266 (not (= lambda!102417 lambda!102396))))

(declare-fun bs!511267 () Bool)

(assert (= bs!511267 (and d!811436 d!811378)))

(assert (=> bs!511267 (not (= lambda!102417 lambda!102399))))

(declare-fun bs!511268 () Bool)

(assert (= bs!511268 (and d!811436 b!2790436)))

(assert (=> bs!511268 (= lambda!102417 lambda!102379)))

(declare-fun bs!511269 () Bool)

(assert (= bs!511269 (and d!811436 b!2790437)))

(assert (=> bs!511269 (= lambda!102417 lambda!102380)))

(declare-fun bs!511270 () Bool)

(assert (= bs!511270 (and d!811436 d!811298)))

(assert (=> bs!511270 (not (= lambda!102417 lambda!102378))))

(declare-fun lt!997612 () Option!6277)

(declare-fun isDefined!4940 (Option!6277) Bool)

(declare-fun exists!1002 ((InoxSet Context!4778) Int) Bool)

(assert (=> d!811436 (= (isDefined!4940 lt!997612) (exists!1002 z!3684 lambda!102417))))

(declare-fun e!1761942 () Option!6277)

(assert (=> d!811436 (= lt!997612 e!1761942)))

(declare-fun c!453003 () Bool)

(assert (=> d!811436 (= c!453003 (exists!1002 z!3684 lambda!102417))))

(assert (=> d!811436 (= (getLanguageWitness!207 z!3684) lt!997612)))

(declare-fun b!2790725 () Bool)

(declare-fun getLanguageWitness!208 (Context!4778) Option!6277)

(declare-fun getWitness!570 ((InoxSet Context!4778) Int) Context!4778)

(assert (=> b!2790725 (= e!1761942 (getLanguageWitness!208 (getWitness!570 z!3684 lambda!102417)))))

(declare-fun b!2790726 () Bool)

(assert (=> b!2790726 (= e!1761942 None!6276)))

(assert (= (and d!811436 c!453003) b!2790725))

(assert (= (and d!811436 (not c!453003)) b!2790726))

(declare-fun m!3221075 () Bool)

(assert (=> d!811436 m!3221075))

(declare-fun m!3221077 () Bool)

(assert (=> d!811436 m!3221077))

(assert (=> d!811436 m!3221077))

(declare-fun m!3221079 () Bool)

(assert (=> b!2790725 m!3221079))

(assert (=> b!2790725 m!3221079))

(declare-fun m!3221081 () Bool)

(assert (=> b!2790725 m!3221081))

(assert (=> d!811298 d!811436))

(declare-fun d!811438 () Bool)

(declare-fun lt!997615 () Bool)

(assert (=> d!811438 (= lt!997615 (forall!6672 (toList!1862 z!3684) lambda!102378))))

(declare-fun choose!16412 ((InoxSet Context!4778) Int) Bool)

(assert (=> d!811438 (= lt!997615 (choose!16412 z!3684 lambda!102378))))

(assert (=> d!811438 (= (forall!6669 z!3684 lambda!102378) lt!997615)))

(declare-fun bs!511271 () Bool)

(assert (= bs!511271 d!811438))

(assert (=> bs!511271 m!3220749))

(assert (=> bs!511271 m!3220749))

(declare-fun m!3221083 () Bool)

(assert (=> bs!511271 m!3221083))

(declare-fun m!3221085 () Bool)

(assert (=> bs!511271 m!3221085))

(assert (=> d!811298 d!811438))

(declare-fun d!811440 () Bool)

(declare-fun lt!997616 () Int)

(assert (=> d!811440 (>= lt!997616 0)))

(declare-fun e!1761943 () Int)

(assert (=> d!811440 (= lt!997616 e!1761943)))

(declare-fun c!453004 () Bool)

(assert (=> d!811440 (= c!453004 ((_ is Nil!32343) lt!997575))))

(assert (=> d!811440 (= (size!25178 lt!997575) lt!997616)))

(declare-fun b!2790727 () Bool)

(assert (=> b!2790727 (= e!1761943 0)))

(declare-fun b!2790728 () Bool)

(assert (=> b!2790728 (= e!1761943 (+ 1 (size!25178 (t!228585 lt!997575))))))

(assert (= (and d!811440 c!453004) b!2790727))

(assert (= (and d!811440 (not c!453004)) b!2790728))

(declare-fun m!3221087 () Bool)

(assert (=> b!2790728 m!3221087))

(assert (=> b!2790469 d!811440))

(assert (=> b!2790469 d!811334))

(declare-fun d!811442 () Bool)

(declare-fun lt!997617 () Int)

(assert (=> d!811442 (>= lt!997617 0)))

(declare-fun e!1761944 () Int)

(assert (=> d!811442 (= lt!997617 e!1761944)))

(declare-fun c!453005 () Bool)

(assert (=> d!811442 (= c!453005 ((_ is Nil!32343) testedSuffix!143))))

(assert (=> d!811442 (= (size!25178 testedSuffix!143) lt!997617)))

(declare-fun b!2790729 () Bool)

(assert (=> b!2790729 (= e!1761944 0)))

(declare-fun b!2790730 () Bool)

(assert (=> b!2790730 (= e!1761944 (+ 1 (size!25178 (t!228585 testedSuffix!143))))))

(assert (= (and d!811442 c!453005) b!2790729))

(assert (= (and d!811442 (not c!453005)) b!2790730))

(declare-fun m!3221089 () Bool)

(assert (=> b!2790730 m!3221089))

(assert (=> b!2790469 d!811442))

(declare-fun bs!511272 () Bool)

(declare-fun d!811444 () Bool)

(assert (= bs!511272 (and d!811444 d!811344)))

(declare-fun lambda!102418 () Int)

(assert (=> bs!511272 (= lambda!102418 lambda!102384)))

(declare-fun bs!511273 () Bool)

(assert (= bs!511273 (and d!811444 d!811394)))

(assert (=> bs!511273 (= lambda!102418 lambda!102402)))

(declare-fun bs!511274 () Bool)

(assert (= bs!511274 (and d!811444 d!811356)))

(assert (=> bs!511274 (= lambda!102418 lambda!102385)))

(declare-fun bs!511275 () Bool)

(assert (= bs!511275 (and d!811444 d!811362)))

(assert (=> bs!511275 (= lambda!102418 lambda!102386)))

(declare-fun bs!511276 () Bool)

(assert (= bs!511276 (and d!811444 d!811374)))

(assert (=> bs!511276 (= lambda!102418 lambda!102393)))

(declare-fun bs!511277 () Bool)

(assert (= bs!511277 (and d!811444 d!811366)))

(assert (=> bs!511277 (= lambda!102418 lambda!102390)))

(declare-fun bs!511278 () Bool)

(assert (= bs!511278 (and d!811444 d!811420)))

(assert (=> bs!511278 (= lambda!102418 lambda!102404)))

(declare-fun bs!511279 () Bool)

(assert (= bs!511279 (and d!811444 d!811392)))

(assert (=> bs!511279 (= lambda!102418 lambda!102401)))

(declare-fun bs!511280 () Bool)

(assert (= bs!511280 (and d!811444 d!811370)))

(assert (=> bs!511280 (= lambda!102418 lambda!102392)))

(declare-fun bs!511281 () Bool)

(assert (= bs!511281 (and d!811444 d!811308)))

(assert (=> bs!511281 (= lambda!102418 lambda!102383)))

(declare-fun bs!511282 () Bool)

(assert (= bs!511282 (and d!811444 d!811400)))

(assert (=> bs!511282 (= lambda!102418 lambda!102403)))

(declare-fun bs!511283 () Bool)

(assert (= bs!511283 (and d!811444 d!811432)))

(assert (=> bs!511283 (= lambda!102418 lambda!102410)))

(declare-fun bs!511284 () Bool)

(assert (= bs!511284 (and d!811444 d!811388)))

(assert (=> bs!511284 (= lambda!102418 lambda!102400)))

(declare-fun bs!511285 () Bool)

(assert (= bs!511285 (and d!811444 d!811368)))

(assert (=> bs!511285 (= lambda!102418 lambda!102391)))

(declare-fun bs!511286 () Bool)

(assert (= bs!511286 (and d!811444 d!811422)))

(assert (=> bs!511286 (= lambda!102418 lambda!102405)))

(declare-fun bs!511287 () Bool)

(assert (= bs!511287 (and d!811444 d!811430)))

(assert (=> bs!511287 (= lambda!102418 lambda!102409)))

(assert (=> d!811444 (= (inv!43944 (_2!19402 (_1!19403 (h!37765 mapDefault!17933)))) (forall!6670 (exprs!2889 (_2!19402 (_1!19403 (h!37765 mapDefault!17933)))) lambda!102418))))

(declare-fun bs!511288 () Bool)

(assert (= bs!511288 d!811444))

(declare-fun m!3221091 () Bool)

(assert (=> bs!511288 m!3221091))

(assert (=> b!2790601 d!811444))

(declare-fun bs!511289 () Bool)

(declare-fun d!811446 () Bool)

(assert (= bs!511289 (and d!811446 d!811344)))

(declare-fun lambda!102419 () Int)

(assert (=> bs!511289 (= lambda!102419 lambda!102384)))

(declare-fun bs!511290 () Bool)

(assert (= bs!511290 (and d!811446 d!811444)))

(assert (=> bs!511290 (= lambda!102419 lambda!102418)))

(declare-fun bs!511291 () Bool)

(assert (= bs!511291 (and d!811446 d!811394)))

(assert (=> bs!511291 (= lambda!102419 lambda!102402)))

(declare-fun bs!511292 () Bool)

(assert (= bs!511292 (and d!811446 d!811356)))

(assert (=> bs!511292 (= lambda!102419 lambda!102385)))

(declare-fun bs!511293 () Bool)

(assert (= bs!511293 (and d!811446 d!811362)))

(assert (=> bs!511293 (= lambda!102419 lambda!102386)))

(declare-fun bs!511294 () Bool)

(assert (= bs!511294 (and d!811446 d!811374)))

(assert (=> bs!511294 (= lambda!102419 lambda!102393)))

(declare-fun bs!511295 () Bool)

(assert (= bs!511295 (and d!811446 d!811366)))

(assert (=> bs!511295 (= lambda!102419 lambda!102390)))

(declare-fun bs!511296 () Bool)

(assert (= bs!511296 (and d!811446 d!811420)))

(assert (=> bs!511296 (= lambda!102419 lambda!102404)))

(declare-fun bs!511297 () Bool)

(assert (= bs!511297 (and d!811446 d!811392)))

(assert (=> bs!511297 (= lambda!102419 lambda!102401)))

(declare-fun bs!511298 () Bool)

(assert (= bs!511298 (and d!811446 d!811370)))

(assert (=> bs!511298 (= lambda!102419 lambda!102392)))

(declare-fun bs!511299 () Bool)

(assert (= bs!511299 (and d!811446 d!811308)))

(assert (=> bs!511299 (= lambda!102419 lambda!102383)))

(declare-fun bs!511300 () Bool)

(assert (= bs!511300 (and d!811446 d!811400)))

(assert (=> bs!511300 (= lambda!102419 lambda!102403)))

(declare-fun bs!511301 () Bool)

(assert (= bs!511301 (and d!811446 d!811432)))

(assert (=> bs!511301 (= lambda!102419 lambda!102410)))

(declare-fun bs!511302 () Bool)

(assert (= bs!511302 (and d!811446 d!811388)))

(assert (=> bs!511302 (= lambda!102419 lambda!102400)))

(declare-fun bs!511303 () Bool)

(assert (= bs!511303 (and d!811446 d!811368)))

(assert (=> bs!511303 (= lambda!102419 lambda!102391)))

(declare-fun bs!511304 () Bool)

(assert (= bs!511304 (and d!811446 d!811422)))

(assert (=> bs!511304 (= lambda!102419 lambda!102405)))

(declare-fun bs!511305 () Bool)

(assert (= bs!511305 (and d!811446 d!811430)))

(assert (=> bs!511305 (= lambda!102419 lambda!102409)))

(assert (=> d!811446 (= (inv!43944 (_2!19402 (_1!19403 (h!37765 mapValue!17937)))) (forall!6670 (exprs!2889 (_2!19402 (_1!19403 (h!37765 mapValue!17937)))) lambda!102419))))

(declare-fun bs!511306 () Bool)

(assert (= bs!511306 d!811446))

(declare-fun m!3221093 () Bool)

(assert (=> bs!511306 m!3221093))

(assert (=> b!2790551 d!811446))

(declare-fun bs!511307 () Bool)

(declare-fun d!811448 () Bool)

(assert (= bs!511307 (and d!811448 d!811344)))

(declare-fun lambda!102420 () Int)

(assert (=> bs!511307 (= lambda!102420 lambda!102384)))

(declare-fun bs!511308 () Bool)

(assert (= bs!511308 (and d!811448 d!811444)))

(assert (=> bs!511308 (= lambda!102420 lambda!102418)))

(declare-fun bs!511309 () Bool)

(assert (= bs!511309 (and d!811448 d!811446)))

(assert (=> bs!511309 (= lambda!102420 lambda!102419)))

(declare-fun bs!511310 () Bool)

(assert (= bs!511310 (and d!811448 d!811394)))

(assert (=> bs!511310 (= lambda!102420 lambda!102402)))

(declare-fun bs!511311 () Bool)

(assert (= bs!511311 (and d!811448 d!811356)))

(assert (=> bs!511311 (= lambda!102420 lambda!102385)))

(declare-fun bs!511312 () Bool)

(assert (= bs!511312 (and d!811448 d!811362)))

(assert (=> bs!511312 (= lambda!102420 lambda!102386)))

(declare-fun bs!511313 () Bool)

(assert (= bs!511313 (and d!811448 d!811374)))

(assert (=> bs!511313 (= lambda!102420 lambda!102393)))

(declare-fun bs!511314 () Bool)

(assert (= bs!511314 (and d!811448 d!811366)))

(assert (=> bs!511314 (= lambda!102420 lambda!102390)))

(declare-fun bs!511315 () Bool)

(assert (= bs!511315 (and d!811448 d!811420)))

(assert (=> bs!511315 (= lambda!102420 lambda!102404)))

(declare-fun bs!511316 () Bool)

(assert (= bs!511316 (and d!811448 d!811392)))

(assert (=> bs!511316 (= lambda!102420 lambda!102401)))

(declare-fun bs!511317 () Bool)

(assert (= bs!511317 (and d!811448 d!811370)))

(assert (=> bs!511317 (= lambda!102420 lambda!102392)))

(declare-fun bs!511318 () Bool)

(assert (= bs!511318 (and d!811448 d!811308)))

(assert (=> bs!511318 (= lambda!102420 lambda!102383)))

(declare-fun bs!511319 () Bool)

(assert (= bs!511319 (and d!811448 d!811400)))

(assert (=> bs!511319 (= lambda!102420 lambda!102403)))

(declare-fun bs!511320 () Bool)

(assert (= bs!511320 (and d!811448 d!811432)))

(assert (=> bs!511320 (= lambda!102420 lambda!102410)))

(declare-fun bs!511321 () Bool)

(assert (= bs!511321 (and d!811448 d!811388)))

(assert (=> bs!511321 (= lambda!102420 lambda!102400)))

(declare-fun bs!511322 () Bool)

(assert (= bs!511322 (and d!811448 d!811368)))

(assert (=> bs!511322 (= lambda!102420 lambda!102391)))

(declare-fun bs!511323 () Bool)

(assert (= bs!511323 (and d!811448 d!811422)))

(assert (=> bs!511323 (= lambda!102420 lambda!102405)))

(declare-fun bs!511324 () Bool)

(assert (= bs!511324 (and d!811448 d!811430)))

(assert (=> bs!511324 (= lambda!102420 lambda!102409)))

(assert (=> d!811448 (= (inv!43944 setElem!23839) (forall!6670 (exprs!2889 setElem!23839) lambda!102420))))

(declare-fun bs!511325 () Bool)

(assert (= bs!511325 d!811448))

(declare-fun m!3221095 () Bool)

(assert (=> bs!511325 m!3221095))

(assert (=> setNonEmpty!23839 d!811448))

(declare-fun d!811450 () Bool)

(declare-fun c!453008 () Bool)

(assert (=> d!811450 (= c!453008 ((_ is Nil!32343) lt!997576))))

(declare-fun e!1761947 () (InoxSet C!16500))

(assert (=> d!811450 (= (content!4527 lt!997576) e!1761947)))

(declare-fun b!2790735 () Bool)

(assert (=> b!2790735 (= e!1761947 ((as const (Array C!16500 Bool)) false))))

(declare-fun b!2790736 () Bool)

(assert (=> b!2790736 (= e!1761947 ((_ map or) (store ((as const (Array C!16500 Bool)) false) (h!37763 lt!997576) true) (content!4527 (t!228585 lt!997576))))))

(assert (= (and d!811450 c!453008) b!2790735))

(assert (= (and d!811450 (not c!453008)) b!2790736))

(declare-fun m!3221097 () Bool)

(assert (=> b!2790736 m!3221097))

(declare-fun m!3221099 () Bool)

(assert (=> b!2790736 m!3221099))

(assert (=> d!811322 d!811450))

(declare-fun d!811452 () Bool)

(declare-fun c!453009 () Bool)

(assert (=> d!811452 (= c!453009 ((_ is Nil!32343) (list!12164 (_1!19406 lt!997533))))))

(declare-fun e!1761948 () (InoxSet C!16500))

(assert (=> d!811452 (= (content!4527 (list!12164 (_1!19406 lt!997533))) e!1761948)))

(declare-fun b!2790737 () Bool)

(assert (=> b!2790737 (= e!1761948 ((as const (Array C!16500 Bool)) false))))

(declare-fun b!2790738 () Bool)

(assert (=> b!2790738 (= e!1761948 ((_ map or) (store ((as const (Array C!16500 Bool)) false) (h!37763 (list!12164 (_1!19406 lt!997533))) true) (content!4527 (t!228585 (list!12164 (_1!19406 lt!997533))))))))

(assert (= (and d!811452 c!453009) b!2790737))

(assert (= (and d!811452 (not c!453009)) b!2790738))

(declare-fun m!3221101 () Bool)

(assert (=> b!2790738 m!3221101))

(assert (=> b!2790738 m!3221040))

(assert (=> d!811322 d!811452))

(declare-fun d!811454 () Bool)

(declare-fun c!453010 () Bool)

(assert (=> d!811454 (= c!453010 ((_ is Nil!32343) (list!12164 (_2!19406 lt!997533))))))

(declare-fun e!1761949 () (InoxSet C!16500))

(assert (=> d!811454 (= (content!4527 (list!12164 (_2!19406 lt!997533))) e!1761949)))

(declare-fun b!2790739 () Bool)

(assert (=> b!2790739 (= e!1761949 ((as const (Array C!16500 Bool)) false))))

(declare-fun b!2790740 () Bool)

(assert (=> b!2790740 (= e!1761949 ((_ map or) (store ((as const (Array C!16500 Bool)) false) (h!37763 (list!12164 (_2!19406 lt!997533))) true) (content!4527 (t!228585 (list!12164 (_2!19406 lt!997533))))))))

(assert (= (and d!811454 c!453010) b!2790739))

(assert (= (and d!811454 (not c!453010)) b!2790740))

(declare-fun m!3221103 () Bool)

(assert (=> b!2790740 m!3221103))

(declare-fun m!3221105 () Bool)

(assert (=> b!2790740 m!3221105))

(assert (=> d!811322 d!811454))

(declare-fun d!811456 () Bool)

(assert (=> d!811456 (= testedSuffix!143 lt!997537)))

(assert (=> d!811456 true))

(declare-fun _$63!885 () Unit!46544)

(assert (=> d!811456 (= (choose!16409 testedP!183 testedSuffix!143 testedP!183 lt!997537 lt!997539) _$63!885)))

(assert (=> d!811300 d!811456))

(assert (=> d!811300 d!811336))

(assert (=> d!811292 d!811424))

(declare-fun d!811458 () Bool)

(assert (=> d!811458 (= (list!12164 (_1!19406 lt!997582)) (list!12165 (c!452950 (_1!19406 lt!997582))))))

(declare-fun bs!511326 () Bool)

(assert (= bs!511326 d!811458))

(declare-fun m!3221107 () Bool)

(assert (=> bs!511326 m!3221107))

(assert (=> b!2790480 d!811458))

(declare-fun d!811460 () Bool)

(assert (=> d!811460 (= (list!12164 (_2!19406 lt!997582)) (list!12165 (c!452950 (_2!19406 lt!997582))))))

(declare-fun bs!511327 () Bool)

(assert (= bs!511327 d!811460))

(declare-fun m!3221109 () Bool)

(assert (=> bs!511327 m!3221109))

(assert (=> b!2790480 d!811460))

(declare-fun b!2790753 () Bool)

(declare-fun e!1761958 () tuple2!32796)

(assert (=> b!2790753 (= e!1761958 (tuple2!32797 Nil!32343 (list!12164 totalInput!758)))))

(declare-fun b!2790754 () Bool)

(declare-fun lt!997623 () tuple2!32796)

(assert (=> b!2790754 (= lt!997623 (splitAtIndex!65 (t!228585 (list!12164 totalInput!758)) (- testedPSize!143 1)))))

(assert (=> b!2790754 (= e!1761958 (tuple2!32797 (Cons!32343 (h!37763 (list!12164 totalInput!758)) (_1!19408 lt!997623)) (_2!19408 lt!997623)))))

(declare-fun e!1761957 () Bool)

(declare-fun b!2790755 () Bool)

(declare-fun lt!997622 () tuple2!32796)

(declare-fun drop!1734 (List!32443 Int) List!32443)

(assert (=> b!2790755 (= e!1761957 (= (_2!19408 lt!997622) (drop!1734 (list!12164 totalInput!758) testedPSize!143)))))

(declare-fun b!2790756 () Bool)

(declare-fun e!1761956 () tuple2!32796)

(assert (=> b!2790756 (= e!1761956 e!1761958)))

(declare-fun c!453016 () Bool)

(assert (=> b!2790756 (= c!453016 (<= testedPSize!143 0))))

(declare-fun d!811462 () Bool)

(assert (=> d!811462 e!1761957))

(declare-fun res!1164256 () Bool)

(assert (=> d!811462 (=> (not res!1164256) (not e!1761957))))

(assert (=> d!811462 (= res!1164256 (= (++!7984 (_1!19408 lt!997622) (_2!19408 lt!997622)) (list!12164 totalInput!758)))))

(assert (=> d!811462 (= lt!997622 e!1761956)))

(declare-fun c!453015 () Bool)

(assert (=> d!811462 (= c!453015 ((_ is Nil!32343) (list!12164 totalInput!758)))))

(assert (=> d!811462 (= (splitAtIndex!65 (list!12164 totalInput!758) testedPSize!143) lt!997622)))

(declare-fun b!2790757 () Bool)

(declare-fun res!1164257 () Bool)

(assert (=> b!2790757 (=> (not res!1164257) (not e!1761957))))

(declare-fun take!507 (List!32443 Int) List!32443)

(assert (=> b!2790757 (= res!1164257 (= (_1!19408 lt!997622) (take!507 (list!12164 totalInput!758) testedPSize!143)))))

(declare-fun b!2790758 () Bool)

(assert (=> b!2790758 (= e!1761956 (tuple2!32797 Nil!32343 Nil!32343))))

(assert (= (and d!811462 c!453015) b!2790758))

(assert (= (and d!811462 (not c!453015)) b!2790756))

(assert (= (and b!2790756 c!453016) b!2790753))

(assert (= (and b!2790756 (not c!453016)) b!2790754))

(assert (= (and d!811462 res!1164256) b!2790757))

(assert (= (and b!2790757 res!1164257) b!2790755))

(declare-fun m!3221111 () Bool)

(assert (=> b!2790754 m!3221111))

(assert (=> b!2790755 m!3220697))

(declare-fun m!3221113 () Bool)

(assert (=> b!2790755 m!3221113))

(declare-fun m!3221115 () Bool)

(assert (=> d!811462 m!3221115))

(assert (=> b!2790757 m!3220697))

(declare-fun m!3221117 () Bool)

(assert (=> b!2790757 m!3221117))

(assert (=> b!2790480 d!811462))

(assert (=> b!2790480 d!811318))

(declare-fun bs!511328 () Bool)

(declare-fun d!811464 () Bool)

(assert (= bs!511328 (and d!811464 d!811344)))

(declare-fun lambda!102421 () Int)

(assert (=> bs!511328 (= lambda!102421 lambda!102384)))

(declare-fun bs!511329 () Bool)

(assert (= bs!511329 (and d!811464 d!811444)))

(assert (=> bs!511329 (= lambda!102421 lambda!102418)))

(declare-fun bs!511330 () Bool)

(assert (= bs!511330 (and d!811464 d!811446)))

(assert (=> bs!511330 (= lambda!102421 lambda!102419)))

(declare-fun bs!511331 () Bool)

(assert (= bs!511331 (and d!811464 d!811394)))

(assert (=> bs!511331 (= lambda!102421 lambda!102402)))

(declare-fun bs!511332 () Bool)

(assert (= bs!511332 (and d!811464 d!811356)))

(assert (=> bs!511332 (= lambda!102421 lambda!102385)))

(declare-fun bs!511333 () Bool)

(assert (= bs!511333 (and d!811464 d!811362)))

(assert (=> bs!511333 (= lambda!102421 lambda!102386)))

(declare-fun bs!511334 () Bool)

(assert (= bs!511334 (and d!811464 d!811374)))

(assert (=> bs!511334 (= lambda!102421 lambda!102393)))

(declare-fun bs!511335 () Bool)

(assert (= bs!511335 (and d!811464 d!811420)))

(assert (=> bs!511335 (= lambda!102421 lambda!102404)))

(declare-fun bs!511336 () Bool)

(assert (= bs!511336 (and d!811464 d!811392)))

(assert (=> bs!511336 (= lambda!102421 lambda!102401)))

(declare-fun bs!511337 () Bool)

(assert (= bs!511337 (and d!811464 d!811370)))

(assert (=> bs!511337 (= lambda!102421 lambda!102392)))

(declare-fun bs!511338 () Bool)

(assert (= bs!511338 (and d!811464 d!811308)))

(assert (=> bs!511338 (= lambda!102421 lambda!102383)))

(declare-fun bs!511339 () Bool)

(assert (= bs!511339 (and d!811464 d!811400)))

(assert (=> bs!511339 (= lambda!102421 lambda!102403)))

(declare-fun bs!511340 () Bool)

(assert (= bs!511340 (and d!811464 d!811432)))

(assert (=> bs!511340 (= lambda!102421 lambda!102410)))

(declare-fun bs!511341 () Bool)

(assert (= bs!511341 (and d!811464 d!811388)))

(assert (=> bs!511341 (= lambda!102421 lambda!102400)))

(declare-fun bs!511342 () Bool)

(assert (= bs!511342 (and d!811464 d!811368)))

(assert (=> bs!511342 (= lambda!102421 lambda!102391)))

(declare-fun bs!511343 () Bool)

(assert (= bs!511343 (and d!811464 d!811448)))

(assert (=> bs!511343 (= lambda!102421 lambda!102420)))

(declare-fun bs!511344 () Bool)

(assert (= bs!511344 (and d!811464 d!811366)))

(assert (=> bs!511344 (= lambda!102421 lambda!102390)))

(declare-fun bs!511345 () Bool)

(assert (= bs!511345 (and d!811464 d!811422)))

(assert (=> bs!511345 (= lambda!102421 lambda!102405)))

(declare-fun bs!511346 () Bool)

(assert (= bs!511346 (and d!811464 d!811430)))

(assert (=> bs!511346 (= lambda!102421 lambda!102409)))

(assert (=> d!811464 (= (inv!43944 setElem!23821) (forall!6670 (exprs!2889 setElem!23821) lambda!102421))))

(declare-fun bs!511347 () Bool)

(assert (= bs!511347 d!811464))

(declare-fun m!3221119 () Bool)

(assert (=> bs!511347 m!3221119))

(assert (=> setNonEmpty!23821 d!811464))

(declare-fun bs!511348 () Bool)

(declare-fun d!811466 () Bool)

(assert (= bs!511348 (and d!811466 d!811344)))

(declare-fun lambda!102422 () Int)

(assert (=> bs!511348 (= lambda!102422 lambda!102384)))

(declare-fun bs!511349 () Bool)

(assert (= bs!511349 (and d!811466 d!811444)))

(assert (=> bs!511349 (= lambda!102422 lambda!102418)))

(declare-fun bs!511350 () Bool)

(assert (= bs!511350 (and d!811466 d!811446)))

(assert (=> bs!511350 (= lambda!102422 lambda!102419)))

(declare-fun bs!511351 () Bool)

(assert (= bs!511351 (and d!811466 d!811394)))

(assert (=> bs!511351 (= lambda!102422 lambda!102402)))

(declare-fun bs!511352 () Bool)

(assert (= bs!511352 (and d!811466 d!811356)))

(assert (=> bs!511352 (= lambda!102422 lambda!102385)))

(declare-fun bs!511353 () Bool)

(assert (= bs!511353 (and d!811466 d!811362)))

(assert (=> bs!511353 (= lambda!102422 lambda!102386)))

(declare-fun bs!511354 () Bool)

(assert (= bs!511354 (and d!811466 d!811374)))

(assert (=> bs!511354 (= lambda!102422 lambda!102393)))

(declare-fun bs!511355 () Bool)

(assert (= bs!511355 (and d!811466 d!811464)))

(assert (=> bs!511355 (= lambda!102422 lambda!102421)))

(declare-fun bs!511356 () Bool)

(assert (= bs!511356 (and d!811466 d!811420)))

(assert (=> bs!511356 (= lambda!102422 lambda!102404)))

(declare-fun bs!511357 () Bool)

(assert (= bs!511357 (and d!811466 d!811392)))

(assert (=> bs!511357 (= lambda!102422 lambda!102401)))

(declare-fun bs!511358 () Bool)

(assert (= bs!511358 (and d!811466 d!811370)))

(assert (=> bs!511358 (= lambda!102422 lambda!102392)))

(declare-fun bs!511359 () Bool)

(assert (= bs!511359 (and d!811466 d!811308)))

(assert (=> bs!511359 (= lambda!102422 lambda!102383)))

(declare-fun bs!511360 () Bool)

(assert (= bs!511360 (and d!811466 d!811400)))

(assert (=> bs!511360 (= lambda!102422 lambda!102403)))

(declare-fun bs!511361 () Bool)

(assert (= bs!511361 (and d!811466 d!811432)))

(assert (=> bs!511361 (= lambda!102422 lambda!102410)))

(declare-fun bs!511362 () Bool)

(assert (= bs!511362 (and d!811466 d!811388)))

(assert (=> bs!511362 (= lambda!102422 lambda!102400)))

(declare-fun bs!511363 () Bool)

(assert (= bs!511363 (and d!811466 d!811368)))

(assert (=> bs!511363 (= lambda!102422 lambda!102391)))

(declare-fun bs!511364 () Bool)

(assert (= bs!511364 (and d!811466 d!811448)))

(assert (=> bs!511364 (= lambda!102422 lambda!102420)))

(declare-fun bs!511365 () Bool)

(assert (= bs!511365 (and d!811466 d!811366)))

(assert (=> bs!511365 (= lambda!102422 lambda!102390)))

(declare-fun bs!511366 () Bool)

(assert (= bs!511366 (and d!811466 d!811422)))

(assert (=> bs!511366 (= lambda!102422 lambda!102405)))

(declare-fun bs!511367 () Bool)

(assert (= bs!511367 (and d!811466 d!811430)))

(assert (=> bs!511367 (= lambda!102422 lambda!102409)))

(assert (=> d!811466 (= (inv!43944 setElem!23838) (forall!6670 (exprs!2889 setElem!23838) lambda!102422))))

(declare-fun bs!511368 () Bool)

(assert (= bs!511368 d!811466))

(declare-fun m!3221121 () Bool)

(assert (=> bs!511368 m!3221121))

(assert (=> setNonEmpty!23837 d!811466))

(declare-fun d!811468 () Bool)

(declare-fun e!1761961 () Bool)

(assert (=> d!811468 e!1761961))

(declare-fun res!1164260 () Bool)

(assert (=> d!811468 (=> (not res!1164260) (not e!1761961))))

(declare-fun lt!997626 () List!32447)

(declare-fun noDuplicate!546 (List!32447) Bool)

(assert (=> d!811468 (= res!1164260 (noDuplicate!546 lt!997626))))

(declare-fun choose!16413 ((InoxSet Context!4778)) List!32447)

(assert (=> d!811468 (= lt!997626 (choose!16413 z!3684))))

(assert (=> d!811468 (= (toList!1862 z!3684) lt!997626)))

(declare-fun b!2790761 () Bool)

(declare-fun content!4528 (List!32447) (InoxSet Context!4778))

(assert (=> b!2790761 (= e!1761961 (= (content!4528 lt!997626) z!3684))))

(assert (= (and d!811468 res!1164260) b!2790761))

(declare-fun m!3221123 () Bool)

(assert (=> d!811468 m!3221123))

(declare-fun m!3221125 () Bool)

(assert (=> d!811468 m!3221125))

(declare-fun m!3221127 () Bool)

(assert (=> b!2790761 m!3221127))

(assert (=> bm!182606 d!811468))

(declare-fun bs!511369 () Bool)

(declare-fun d!811470 () Bool)

(assert (= bs!511369 (and d!811470 d!811344)))

(declare-fun lambda!102423 () Int)

(assert (=> bs!511369 (= lambda!102423 lambda!102384)))

(declare-fun bs!511370 () Bool)

(assert (= bs!511370 (and d!811470 d!811444)))

(assert (=> bs!511370 (= lambda!102423 lambda!102418)))

(declare-fun bs!511371 () Bool)

(assert (= bs!511371 (and d!811470 d!811466)))

(assert (=> bs!511371 (= lambda!102423 lambda!102422)))

(declare-fun bs!511372 () Bool)

(assert (= bs!511372 (and d!811470 d!811446)))

(assert (=> bs!511372 (= lambda!102423 lambda!102419)))

(declare-fun bs!511373 () Bool)

(assert (= bs!511373 (and d!811470 d!811394)))

(assert (=> bs!511373 (= lambda!102423 lambda!102402)))

(declare-fun bs!511374 () Bool)

(assert (= bs!511374 (and d!811470 d!811356)))

(assert (=> bs!511374 (= lambda!102423 lambda!102385)))

(declare-fun bs!511375 () Bool)

(assert (= bs!511375 (and d!811470 d!811362)))

(assert (=> bs!511375 (= lambda!102423 lambda!102386)))

(declare-fun bs!511376 () Bool)

(assert (= bs!511376 (and d!811470 d!811374)))

(assert (=> bs!511376 (= lambda!102423 lambda!102393)))

(declare-fun bs!511377 () Bool)

(assert (= bs!511377 (and d!811470 d!811464)))

(assert (=> bs!511377 (= lambda!102423 lambda!102421)))

(declare-fun bs!511378 () Bool)

(assert (= bs!511378 (and d!811470 d!811420)))

(assert (=> bs!511378 (= lambda!102423 lambda!102404)))

(declare-fun bs!511379 () Bool)

(assert (= bs!511379 (and d!811470 d!811392)))

(assert (=> bs!511379 (= lambda!102423 lambda!102401)))

(declare-fun bs!511380 () Bool)

(assert (= bs!511380 (and d!811470 d!811370)))

(assert (=> bs!511380 (= lambda!102423 lambda!102392)))

(declare-fun bs!511381 () Bool)

(assert (= bs!511381 (and d!811470 d!811308)))

(assert (=> bs!511381 (= lambda!102423 lambda!102383)))

(declare-fun bs!511382 () Bool)

(assert (= bs!511382 (and d!811470 d!811400)))

(assert (=> bs!511382 (= lambda!102423 lambda!102403)))

(declare-fun bs!511383 () Bool)

(assert (= bs!511383 (and d!811470 d!811432)))

(assert (=> bs!511383 (= lambda!102423 lambda!102410)))

(declare-fun bs!511384 () Bool)

(assert (= bs!511384 (and d!811470 d!811388)))

(assert (=> bs!511384 (= lambda!102423 lambda!102400)))

(declare-fun bs!511385 () Bool)

(assert (= bs!511385 (and d!811470 d!811368)))

(assert (=> bs!511385 (= lambda!102423 lambda!102391)))

(declare-fun bs!511386 () Bool)

(assert (= bs!511386 (and d!811470 d!811448)))

(assert (=> bs!511386 (= lambda!102423 lambda!102420)))

(declare-fun bs!511387 () Bool)

(assert (= bs!511387 (and d!811470 d!811366)))

(assert (=> bs!511387 (= lambda!102423 lambda!102390)))

(declare-fun bs!511388 () Bool)

(assert (= bs!511388 (and d!811470 d!811422)))

(assert (=> bs!511388 (= lambda!102423 lambda!102405)))

(declare-fun bs!511389 () Bool)

(assert (= bs!511389 (and d!811470 d!811430)))

(assert (=> bs!511389 (= lambda!102423 lambda!102409)))

(assert (=> d!811470 (= (inv!43944 setElem!23822) (forall!6670 (exprs!2889 setElem!23822) lambda!102423))))

(declare-fun bs!511390 () Bool)

(assert (= bs!511390 d!811470))

(declare-fun m!3221129 () Bool)

(assert (=> bs!511390 m!3221129))

(assert (=> setNonEmpty!23822 d!811470))

(declare-fun bs!511391 () Bool)

(declare-fun d!811472 () Bool)

(assert (= bs!511391 (and d!811472 d!811344)))

(declare-fun lambda!102424 () Int)

(assert (=> bs!511391 (= lambda!102424 lambda!102384)))

(declare-fun bs!511392 () Bool)

(assert (= bs!511392 (and d!811472 d!811444)))

(assert (=> bs!511392 (= lambda!102424 lambda!102418)))

(declare-fun bs!511393 () Bool)

(assert (= bs!511393 (and d!811472 d!811466)))

(assert (=> bs!511393 (= lambda!102424 lambda!102422)))

(declare-fun bs!511394 () Bool)

(assert (= bs!511394 (and d!811472 d!811394)))

(assert (=> bs!511394 (= lambda!102424 lambda!102402)))

(declare-fun bs!511395 () Bool)

(assert (= bs!511395 (and d!811472 d!811356)))

(assert (=> bs!511395 (= lambda!102424 lambda!102385)))

(declare-fun bs!511396 () Bool)

(assert (= bs!511396 (and d!811472 d!811362)))

(assert (=> bs!511396 (= lambda!102424 lambda!102386)))

(declare-fun bs!511397 () Bool)

(assert (= bs!511397 (and d!811472 d!811374)))

(assert (=> bs!511397 (= lambda!102424 lambda!102393)))

(declare-fun bs!511398 () Bool)

(assert (= bs!511398 (and d!811472 d!811464)))

(assert (=> bs!511398 (= lambda!102424 lambda!102421)))

(declare-fun bs!511399 () Bool)

(assert (= bs!511399 (and d!811472 d!811420)))

(assert (=> bs!511399 (= lambda!102424 lambda!102404)))

(declare-fun bs!511400 () Bool)

(assert (= bs!511400 (and d!811472 d!811392)))

(assert (=> bs!511400 (= lambda!102424 lambda!102401)))

(declare-fun bs!511401 () Bool)

(assert (= bs!511401 (and d!811472 d!811370)))

(assert (=> bs!511401 (= lambda!102424 lambda!102392)))

(declare-fun bs!511402 () Bool)

(assert (= bs!511402 (and d!811472 d!811308)))

(assert (=> bs!511402 (= lambda!102424 lambda!102383)))

(declare-fun bs!511403 () Bool)

(assert (= bs!511403 (and d!811472 d!811400)))

(assert (=> bs!511403 (= lambda!102424 lambda!102403)))

(declare-fun bs!511404 () Bool)

(assert (= bs!511404 (and d!811472 d!811432)))

(assert (=> bs!511404 (= lambda!102424 lambda!102410)))

(declare-fun bs!511405 () Bool)

(assert (= bs!511405 (and d!811472 d!811470)))

(assert (=> bs!511405 (= lambda!102424 lambda!102423)))

(declare-fun bs!511406 () Bool)

(assert (= bs!511406 (and d!811472 d!811446)))

(assert (=> bs!511406 (= lambda!102424 lambda!102419)))

(declare-fun bs!511407 () Bool)

(assert (= bs!511407 (and d!811472 d!811388)))

(assert (=> bs!511407 (= lambda!102424 lambda!102400)))

(declare-fun bs!511408 () Bool)

(assert (= bs!511408 (and d!811472 d!811368)))

(assert (=> bs!511408 (= lambda!102424 lambda!102391)))

(declare-fun bs!511409 () Bool)

(assert (= bs!511409 (and d!811472 d!811448)))

(assert (=> bs!511409 (= lambda!102424 lambda!102420)))

(declare-fun bs!511410 () Bool)

(assert (= bs!511410 (and d!811472 d!811366)))

(assert (=> bs!511410 (= lambda!102424 lambda!102390)))

(declare-fun bs!511411 () Bool)

(assert (= bs!511411 (and d!811472 d!811422)))

(assert (=> bs!511411 (= lambda!102424 lambda!102405)))

(declare-fun bs!511412 () Bool)

(assert (= bs!511412 (and d!811472 d!811430)))

(assert (=> bs!511412 (= lambda!102424 lambda!102409)))

(assert (=> d!811472 (= (inv!43944 (_2!19402 (_1!19403 (h!37765 mapDefault!17937)))) (forall!6670 (exprs!2889 (_2!19402 (_1!19403 (h!37765 mapDefault!17937)))) lambda!102424))))

(declare-fun bs!511413 () Bool)

(assert (= bs!511413 d!811472))

(declare-fun m!3221131 () Bool)

(assert (=> bs!511413 m!3221131))

(assert (=> b!2790547 d!811472))

(declare-fun d!811474 () Bool)

(declare-fun c!453017 () Bool)

(assert (=> d!811474 (= c!453017 ((_ is Node!10036) (left!24513 (c!452950 totalInput!758))))))

(declare-fun e!1761962 () Bool)

(assert (=> d!811474 (= (inv!43940 (left!24513 (c!452950 totalInput!758))) e!1761962)))

(declare-fun b!2790762 () Bool)

(assert (=> b!2790762 (= e!1761962 (inv!43945 (left!24513 (c!452950 totalInput!758))))))

(declare-fun b!2790763 () Bool)

(declare-fun e!1761963 () Bool)

(assert (=> b!2790763 (= e!1761962 e!1761963)))

(declare-fun res!1164261 () Bool)

(assert (=> b!2790763 (= res!1164261 (not ((_ is Leaf!15290) (left!24513 (c!452950 totalInput!758)))))))

(assert (=> b!2790763 (=> res!1164261 e!1761963)))

(declare-fun b!2790764 () Bool)

(assert (=> b!2790764 (= e!1761963 (inv!43946 (left!24513 (c!452950 totalInput!758))))))

(assert (= (and d!811474 c!453017) b!2790762))

(assert (= (and d!811474 (not c!453017)) b!2790763))

(assert (= (and b!2790763 (not res!1164261)) b!2790764))

(declare-fun m!3221133 () Bool)

(assert (=> b!2790762 m!3221133))

(declare-fun m!3221135 () Bool)

(assert (=> b!2790764 m!3221135))

(assert (=> b!2790516 d!811474))

(declare-fun d!811476 () Bool)

(declare-fun c!453018 () Bool)

(assert (=> d!811476 (= c!453018 ((_ is Node!10036) (right!24843 (c!452950 totalInput!758))))))

(declare-fun e!1761964 () Bool)

(assert (=> d!811476 (= (inv!43940 (right!24843 (c!452950 totalInput!758))) e!1761964)))

(declare-fun b!2790765 () Bool)

(assert (=> b!2790765 (= e!1761964 (inv!43945 (right!24843 (c!452950 totalInput!758))))))

(declare-fun b!2790766 () Bool)

(declare-fun e!1761965 () Bool)

(assert (=> b!2790766 (= e!1761964 e!1761965)))

(declare-fun res!1164262 () Bool)

(assert (=> b!2790766 (= res!1164262 (not ((_ is Leaf!15290) (right!24843 (c!452950 totalInput!758)))))))

(assert (=> b!2790766 (=> res!1164262 e!1761965)))

(declare-fun b!2790767 () Bool)

(assert (=> b!2790767 (= e!1761965 (inv!43946 (right!24843 (c!452950 totalInput!758))))))

(assert (= (and d!811476 c!453018) b!2790765))

(assert (= (and d!811476 (not c!453018)) b!2790766))

(assert (= (and b!2790766 (not res!1164262)) b!2790767))

(declare-fun m!3221137 () Bool)

(assert (=> b!2790765 m!3221137))

(declare-fun m!3221139 () Bool)

(assert (=> b!2790767 m!3221139))

(assert (=> b!2790516 d!811476))

(declare-fun d!811478 () Bool)

(declare-fun c!453019 () Bool)

(assert (=> d!811478 (= c!453019 ((_ is Nil!32343) lt!997575))))

(declare-fun e!1761966 () (InoxSet C!16500))

(assert (=> d!811478 (= (content!4527 lt!997575) e!1761966)))

(declare-fun b!2790768 () Bool)

(assert (=> b!2790768 (= e!1761966 ((as const (Array C!16500 Bool)) false))))

(declare-fun b!2790769 () Bool)

(assert (=> b!2790769 (= e!1761966 ((_ map or) (store ((as const (Array C!16500 Bool)) false) (h!37763 lt!997575) true) (content!4527 (t!228585 lt!997575))))))

(assert (= (and d!811478 c!453019) b!2790768))

(assert (= (and d!811478 (not c!453019)) b!2790769))

(declare-fun m!3221141 () Bool)

(assert (=> b!2790769 m!3221141))

(declare-fun m!3221143 () Bool)

(assert (=> b!2790769 m!3221143))

(assert (=> d!811320 d!811478))

(declare-fun d!811480 () Bool)

(declare-fun c!453020 () Bool)

(assert (=> d!811480 (= c!453020 ((_ is Nil!32343) testedP!183))))

(declare-fun e!1761967 () (InoxSet C!16500))

(assert (=> d!811480 (= (content!4527 testedP!183) e!1761967)))

(declare-fun b!2790770 () Bool)

(assert (=> b!2790770 (= e!1761967 ((as const (Array C!16500 Bool)) false))))

(declare-fun b!2790771 () Bool)

(assert (=> b!2790771 (= e!1761967 ((_ map or) (store ((as const (Array C!16500 Bool)) false) (h!37763 testedP!183) true) (content!4527 (t!228585 testedP!183))))))

(assert (= (and d!811480 c!453020) b!2790770))

(assert (= (and d!811480 (not c!453020)) b!2790771))

(declare-fun m!3221145 () Bool)

(assert (=> b!2790771 m!3221145))

(assert (=> b!2790771 m!3220921))

(assert (=> d!811320 d!811480))

(declare-fun d!811482 () Bool)

(declare-fun c!453021 () Bool)

(assert (=> d!811482 (= c!453021 ((_ is Nil!32343) testedSuffix!143))))

(declare-fun e!1761968 () (InoxSet C!16500))

(assert (=> d!811482 (= (content!4527 testedSuffix!143) e!1761968)))

(declare-fun b!2790772 () Bool)

(assert (=> b!2790772 (= e!1761968 ((as const (Array C!16500 Bool)) false))))

(declare-fun b!2790773 () Bool)

(assert (=> b!2790773 (= e!1761968 ((_ map or) (store ((as const (Array C!16500 Bool)) false) (h!37763 testedSuffix!143) true) (content!4527 (t!228585 testedSuffix!143))))))

(assert (= (and d!811482 c!453021) b!2790772))

(assert (= (and d!811482 (not c!453021)) b!2790773))

(declare-fun m!3221147 () Bool)

(assert (=> b!2790773 m!3221147))

(declare-fun m!3221149 () Bool)

(assert (=> b!2790773 m!3221149))

(assert (=> d!811320 d!811482))

(declare-fun b!2790775 () Bool)

(declare-fun res!1164264 () Bool)

(declare-fun e!1761969 () Bool)

(assert (=> b!2790775 (=> (not res!1164264) (not e!1761969))))

(assert (=> b!2790775 (= res!1164264 (= (head!6182 (tail!4414 testedP!183)) (head!6182 (tail!4414 lt!997539))))))

(declare-fun d!811484 () Bool)

(declare-fun e!1761970 () Bool)

(assert (=> d!811484 e!1761970))

(declare-fun res!1164266 () Bool)

(assert (=> d!811484 (=> res!1164266 e!1761970)))

(declare-fun lt!997627 () Bool)

(assert (=> d!811484 (= res!1164266 (not lt!997627))))

(declare-fun e!1761971 () Bool)

(assert (=> d!811484 (= lt!997627 e!1761971)))

(declare-fun res!1164265 () Bool)

(assert (=> d!811484 (=> res!1164265 e!1761971)))

(assert (=> d!811484 (= res!1164265 ((_ is Nil!32343) (tail!4414 testedP!183)))))

(assert (=> d!811484 (= (isPrefix!2602 (tail!4414 testedP!183) (tail!4414 lt!997539)) lt!997627)))

(declare-fun b!2790776 () Bool)

(assert (=> b!2790776 (= e!1761969 (isPrefix!2602 (tail!4414 (tail!4414 testedP!183)) (tail!4414 (tail!4414 lt!997539))))))

(declare-fun b!2790777 () Bool)

(assert (=> b!2790777 (= e!1761970 (>= (size!25178 (tail!4414 lt!997539)) (size!25178 (tail!4414 testedP!183))))))

(declare-fun b!2790774 () Bool)

(assert (=> b!2790774 (= e!1761971 e!1761969)))

(declare-fun res!1164263 () Bool)

(assert (=> b!2790774 (=> (not res!1164263) (not e!1761969))))

(assert (=> b!2790774 (= res!1164263 (not ((_ is Nil!32343) (tail!4414 lt!997539))))))

(assert (= (and d!811484 (not res!1164265)) b!2790774))

(assert (= (and b!2790774 res!1164263) b!2790775))

(assert (= (and b!2790775 res!1164264) b!2790776))

(assert (= (and d!811484 (not res!1164266)) b!2790777))

(assert (=> b!2790775 m!3220821))

(assert (=> b!2790775 m!3220972))

(assert (=> b!2790775 m!3220759))

(declare-fun m!3221151 () Bool)

(assert (=> b!2790775 m!3221151))

(assert (=> b!2790776 m!3220821))

(assert (=> b!2790776 m!3220976))

(assert (=> b!2790776 m!3220759))

(assert (=> b!2790776 m!3221022))

(assert (=> b!2790776 m!3220976))

(assert (=> b!2790776 m!3221022))

(declare-fun m!3221153 () Bool)

(assert (=> b!2790776 m!3221153))

(assert (=> b!2790777 m!3220759))

(assert (=> b!2790777 m!3221020))

(assert (=> b!2790777 m!3220821))

(assert (=> b!2790777 m!3220984))

(assert (=> b!2790497 d!811484))

(assert (=> b!2790497 d!811382))

(assert (=> b!2790497 d!811412))

(declare-fun bs!511414 () Bool)

(declare-fun d!811486 () Bool)

(assert (= bs!511414 (and d!811486 d!811344)))

(declare-fun lambda!102425 () Int)

(assert (=> bs!511414 (= lambda!102425 lambda!102384)))

(declare-fun bs!511415 () Bool)

(assert (= bs!511415 (and d!811486 d!811444)))

(assert (=> bs!511415 (= lambda!102425 lambda!102418)))

(declare-fun bs!511416 () Bool)

(assert (= bs!511416 (and d!811486 d!811466)))

(assert (=> bs!511416 (= lambda!102425 lambda!102422)))

(declare-fun bs!511417 () Bool)

(assert (= bs!511417 (and d!811486 d!811472)))

(assert (=> bs!511417 (= lambda!102425 lambda!102424)))

(declare-fun bs!511418 () Bool)

(assert (= bs!511418 (and d!811486 d!811394)))

(assert (=> bs!511418 (= lambda!102425 lambda!102402)))

(declare-fun bs!511419 () Bool)

(assert (= bs!511419 (and d!811486 d!811356)))

(assert (=> bs!511419 (= lambda!102425 lambda!102385)))

(declare-fun bs!511420 () Bool)

(assert (= bs!511420 (and d!811486 d!811362)))

(assert (=> bs!511420 (= lambda!102425 lambda!102386)))

(declare-fun bs!511421 () Bool)

(assert (= bs!511421 (and d!811486 d!811374)))

(assert (=> bs!511421 (= lambda!102425 lambda!102393)))

(declare-fun bs!511422 () Bool)

(assert (= bs!511422 (and d!811486 d!811464)))

(assert (=> bs!511422 (= lambda!102425 lambda!102421)))

(declare-fun bs!511423 () Bool)

(assert (= bs!511423 (and d!811486 d!811420)))

(assert (=> bs!511423 (= lambda!102425 lambda!102404)))

(declare-fun bs!511424 () Bool)

(assert (= bs!511424 (and d!811486 d!811392)))

(assert (=> bs!511424 (= lambda!102425 lambda!102401)))

(declare-fun bs!511425 () Bool)

(assert (= bs!511425 (and d!811486 d!811370)))

(assert (=> bs!511425 (= lambda!102425 lambda!102392)))

(declare-fun bs!511426 () Bool)

(assert (= bs!511426 (and d!811486 d!811308)))

(assert (=> bs!511426 (= lambda!102425 lambda!102383)))

(declare-fun bs!511427 () Bool)

(assert (= bs!511427 (and d!811486 d!811400)))

(assert (=> bs!511427 (= lambda!102425 lambda!102403)))

(declare-fun bs!511428 () Bool)

(assert (= bs!511428 (and d!811486 d!811432)))

(assert (=> bs!511428 (= lambda!102425 lambda!102410)))

(declare-fun bs!511429 () Bool)

(assert (= bs!511429 (and d!811486 d!811470)))

(assert (=> bs!511429 (= lambda!102425 lambda!102423)))

(declare-fun bs!511430 () Bool)

(assert (= bs!511430 (and d!811486 d!811446)))

(assert (=> bs!511430 (= lambda!102425 lambda!102419)))

(declare-fun bs!511431 () Bool)

(assert (= bs!511431 (and d!811486 d!811388)))

(assert (=> bs!511431 (= lambda!102425 lambda!102400)))

(declare-fun bs!511432 () Bool)

(assert (= bs!511432 (and d!811486 d!811368)))

(assert (=> bs!511432 (= lambda!102425 lambda!102391)))

(declare-fun bs!511433 () Bool)

(assert (= bs!511433 (and d!811486 d!811448)))

(assert (=> bs!511433 (= lambda!102425 lambda!102420)))

(declare-fun bs!511434 () Bool)

(assert (= bs!511434 (and d!811486 d!811366)))

(assert (=> bs!511434 (= lambda!102425 lambda!102390)))

(declare-fun bs!511435 () Bool)

(assert (= bs!511435 (and d!811486 d!811422)))

(assert (=> bs!511435 (= lambda!102425 lambda!102405)))

(declare-fun bs!511436 () Bool)

(assert (= bs!511436 (and d!811486 d!811430)))

(assert (=> bs!511436 (= lambda!102425 lambda!102409)))

(assert (=> d!811486 (= (inv!43944 (_1!19404 (_1!19405 (h!37766 mapDefault!17940)))) (forall!6670 (exprs!2889 (_1!19404 (_1!19405 (h!37766 mapDefault!17940)))) lambda!102425))))

(declare-fun bs!511437 () Bool)

(assert (= bs!511437 d!811486))

(declare-fun m!3221155 () Bool)

(assert (=> bs!511437 m!3221155))

(assert (=> b!2790592 d!811486))

(declare-fun bs!511438 () Bool)

(declare-fun d!811488 () Bool)

(assert (= bs!511438 (and d!811488 d!811376)))

(declare-fun lambda!102428 () Int)

(assert (=> bs!511438 (= lambda!102428 lambda!102396)))

(declare-fun bs!511439 () Bool)

(assert (= bs!511439 (and d!811488 d!811378)))

(assert (=> bs!511439 (= (= lambda!102378 (ite c!452962 lambda!102379 lambda!102380)) (= lambda!102428 lambda!102399))))

(declare-fun bs!511440 () Bool)

(assert (= bs!511440 (and d!811488 b!2790436)))

(assert (=> bs!511440 (not (= lambda!102428 lambda!102379))))

(declare-fun bs!511441 () Bool)

(assert (= bs!511441 (and d!811488 b!2790437)))

(assert (=> bs!511441 (not (= lambda!102428 lambda!102380))))

(declare-fun bs!511442 () Bool)

(assert (= bs!511442 (and d!811488 d!811298)))

(assert (=> bs!511442 (not (= lambda!102428 lambda!102378))))

(declare-fun bs!511443 () Bool)

(assert (= bs!511443 (and d!811488 d!811436)))

(assert (=> bs!511443 (not (= lambda!102428 lambda!102417))))

(assert (=> d!811488 true))

(assert (=> d!811488 (< (dynLambda!13614 order!17243 lambda!102378) (dynLambda!13614 order!17243 lambda!102428))))

(assert (=> d!811488 (exists!1001 lt!997565 lambda!102428)))

(declare-fun lt!997630 () Unit!46544)

(declare-fun choose!16414 (List!32447 Int) Unit!46544)

(assert (=> d!811488 (= lt!997630 (choose!16414 lt!997565 lambda!102378))))

(assert (=> d!811488 (not (forall!6672 lt!997565 lambda!102378))))

(assert (=> d!811488 (= (lemmaNotForallThenExists!99 lt!997565 lambda!102378) lt!997630)))

(declare-fun bs!511444 () Bool)

(assert (= bs!511444 d!811488))

(declare-fun m!3221157 () Bool)

(assert (=> bs!511444 m!3221157))

(declare-fun m!3221159 () Bool)

(assert (=> bs!511444 m!3221159))

(declare-fun m!3221161 () Bool)

(assert (=> bs!511444 m!3221161))

(assert (=> b!2790436 d!811488))

(declare-fun d!811490 () Bool)

(declare-fun lt!997631 () Int)

(assert (=> d!811490 (>= lt!997631 0)))

(declare-fun e!1761974 () Int)

(assert (=> d!811490 (= lt!997631 e!1761974)))

(declare-fun c!453022 () Bool)

(assert (=> d!811490 (= c!453022 ((_ is Nil!32343) lt!997538))))

(assert (=> d!811490 (= (size!25178 lt!997538) lt!997631)))

(declare-fun b!2790778 () Bool)

(assert (=> b!2790778 (= e!1761974 0)))

(declare-fun b!2790779 () Bool)

(assert (=> b!2790779 (= e!1761974 (+ 1 (size!25178 (t!228585 lt!997538))))))

(assert (= (and d!811490 c!453022) b!2790778))

(assert (= (and d!811490 (not c!453022)) b!2790779))

(declare-fun m!3221163 () Bool)

(assert (=> b!2790779 m!3221163))

(assert (=> b!2790502 d!811490))

(assert (=> b!2790502 d!811334))

(declare-fun bs!511445 () Bool)

(declare-fun d!811492 () Bool)

(assert (= bs!511445 (and d!811492 d!811344)))

(declare-fun lambda!102429 () Int)

(assert (=> bs!511445 (= lambda!102429 lambda!102384)))

(declare-fun bs!511446 () Bool)

(assert (= bs!511446 (and d!811492 d!811444)))

(assert (=> bs!511446 (= lambda!102429 lambda!102418)))

(declare-fun bs!511447 () Bool)

(assert (= bs!511447 (and d!811492 d!811466)))

(assert (=> bs!511447 (= lambda!102429 lambda!102422)))

(declare-fun bs!511448 () Bool)

(assert (= bs!511448 (and d!811492 d!811472)))

(assert (=> bs!511448 (= lambda!102429 lambda!102424)))

(declare-fun bs!511449 () Bool)

(assert (= bs!511449 (and d!811492 d!811394)))

(assert (=> bs!511449 (= lambda!102429 lambda!102402)))

(declare-fun bs!511450 () Bool)

(assert (= bs!511450 (and d!811492 d!811356)))

(assert (=> bs!511450 (= lambda!102429 lambda!102385)))

(declare-fun bs!511451 () Bool)

(assert (= bs!511451 (and d!811492 d!811362)))

(assert (=> bs!511451 (= lambda!102429 lambda!102386)))

(declare-fun bs!511452 () Bool)

(assert (= bs!511452 (and d!811492 d!811374)))

(assert (=> bs!511452 (= lambda!102429 lambda!102393)))

(declare-fun bs!511453 () Bool)

(assert (= bs!511453 (and d!811492 d!811464)))

(assert (=> bs!511453 (= lambda!102429 lambda!102421)))

(declare-fun bs!511454 () Bool)

(assert (= bs!511454 (and d!811492 d!811420)))

(assert (=> bs!511454 (= lambda!102429 lambda!102404)))

(declare-fun bs!511455 () Bool)

(assert (= bs!511455 (and d!811492 d!811392)))

(assert (=> bs!511455 (= lambda!102429 lambda!102401)))

(declare-fun bs!511456 () Bool)

(assert (= bs!511456 (and d!811492 d!811370)))

(assert (=> bs!511456 (= lambda!102429 lambda!102392)))

(declare-fun bs!511457 () Bool)

(assert (= bs!511457 (and d!811492 d!811308)))

(assert (=> bs!511457 (= lambda!102429 lambda!102383)))

(declare-fun bs!511458 () Bool)

(assert (= bs!511458 (and d!811492 d!811400)))

(assert (=> bs!511458 (= lambda!102429 lambda!102403)))

(declare-fun bs!511459 () Bool)

(assert (= bs!511459 (and d!811492 d!811432)))

(assert (=> bs!511459 (= lambda!102429 lambda!102410)))

(declare-fun bs!511460 () Bool)

(assert (= bs!511460 (and d!811492 d!811470)))

(assert (=> bs!511460 (= lambda!102429 lambda!102423)))

(declare-fun bs!511461 () Bool)

(assert (= bs!511461 (and d!811492 d!811446)))

(assert (=> bs!511461 (= lambda!102429 lambda!102419)))

(declare-fun bs!511462 () Bool)

(assert (= bs!511462 (and d!811492 d!811388)))

(assert (=> bs!511462 (= lambda!102429 lambda!102400)))

(declare-fun bs!511463 () Bool)

(assert (= bs!511463 (and d!811492 d!811368)))

(assert (=> bs!511463 (= lambda!102429 lambda!102391)))

(declare-fun bs!511464 () Bool)

(assert (= bs!511464 (and d!811492 d!811448)))

(assert (=> bs!511464 (= lambda!102429 lambda!102420)))

(declare-fun bs!511465 () Bool)

(assert (= bs!511465 (and d!811492 d!811366)))

(assert (=> bs!511465 (= lambda!102429 lambda!102390)))

(declare-fun bs!511466 () Bool)

(assert (= bs!511466 (and d!811492 d!811422)))

(assert (=> bs!511466 (= lambda!102429 lambda!102405)))

(declare-fun bs!511467 () Bool)

(assert (= bs!511467 (and d!811492 d!811430)))

(assert (=> bs!511467 (= lambda!102429 lambda!102409)))

(declare-fun bs!511468 () Bool)

(assert (= bs!511468 (and d!811492 d!811486)))

(assert (=> bs!511468 (= lambda!102429 lambda!102425)))

(assert (=> d!811492 (= (inv!43944 setElem!23829) (forall!6670 (exprs!2889 setElem!23829) lambda!102429))))

(declare-fun bs!511469 () Bool)

(assert (= bs!511469 d!811492))

(declare-fun m!3221165 () Bool)

(assert (=> bs!511469 m!3221165))

(assert (=> setNonEmpty!23829 d!811492))

(declare-fun b!2790780 () Bool)

(declare-fun res!1164269 () Bool)

(declare-fun e!1761976 () Bool)

(assert (=> b!2790780 (=> (not res!1164269) (not e!1761976))))

(assert (=> b!2790780 (= res!1164269 (<= (- (height!1493 (left!24513 (c!452950 (_1!19406 lt!997582)))) (height!1493 (right!24843 (c!452950 (_1!19406 lt!997582))))) 1))))

(declare-fun b!2790781 () Bool)

(declare-fun res!1164272 () Bool)

(assert (=> b!2790781 (=> (not res!1164272) (not e!1761976))))

(assert (=> b!2790781 (= res!1164272 (not (isEmpty!18122 (left!24513 (c!452950 (_1!19406 lt!997582))))))))

(declare-fun b!2790782 () Bool)

(declare-fun res!1164267 () Bool)

(assert (=> b!2790782 (=> (not res!1164267) (not e!1761976))))

(assert (=> b!2790782 (= res!1164267 (isBalanced!3062 (right!24843 (c!452950 (_1!19406 lt!997582)))))))

(declare-fun d!811494 () Bool)

(declare-fun res!1164268 () Bool)

(declare-fun e!1761975 () Bool)

(assert (=> d!811494 (=> res!1164268 e!1761975)))

(assert (=> d!811494 (= res!1164268 (not ((_ is Node!10036) (c!452950 (_1!19406 lt!997582)))))))

(assert (=> d!811494 (= (isBalanced!3062 (c!452950 (_1!19406 lt!997582))) e!1761975)))

(declare-fun b!2790783 () Bool)

(assert (=> b!2790783 (= e!1761975 e!1761976)))

(declare-fun res!1164270 () Bool)

(assert (=> b!2790783 (=> (not res!1164270) (not e!1761976))))

(assert (=> b!2790783 (= res!1164270 (<= (- 1) (- (height!1493 (left!24513 (c!452950 (_1!19406 lt!997582)))) (height!1493 (right!24843 (c!452950 (_1!19406 lt!997582)))))))))

(declare-fun b!2790784 () Bool)

(declare-fun res!1164271 () Bool)

(assert (=> b!2790784 (=> (not res!1164271) (not e!1761976))))

(assert (=> b!2790784 (= res!1164271 (isBalanced!3062 (left!24513 (c!452950 (_1!19406 lt!997582)))))))

(declare-fun b!2790785 () Bool)

(assert (=> b!2790785 (= e!1761976 (not (isEmpty!18122 (right!24843 (c!452950 (_1!19406 lt!997582))))))))

(assert (= (and d!811494 (not res!1164268)) b!2790783))

(assert (= (and b!2790783 res!1164270) b!2790780))

(assert (= (and b!2790780 res!1164269) b!2790784))

(assert (= (and b!2790784 res!1164271) b!2790782))

(assert (= (and b!2790782 res!1164267) b!2790781))

(assert (= (and b!2790781 res!1164272) b!2790785))

(declare-fun m!3221167 () Bool)

(assert (=> b!2790782 m!3221167))

(declare-fun m!3221169 () Bool)

(assert (=> b!2790784 m!3221169))

(declare-fun m!3221171 () Bool)

(assert (=> b!2790785 m!3221171))

(declare-fun m!3221173 () Bool)

(assert (=> b!2790783 m!3221173))

(declare-fun m!3221175 () Bool)

(assert (=> b!2790783 m!3221175))

(assert (=> b!2790780 m!3221173))

(assert (=> b!2790780 m!3221175))

(declare-fun m!3221177 () Bool)

(assert (=> b!2790781 m!3221177))

(assert (=> d!811328 d!811494))

(declare-fun b!2790834 () Bool)

(declare-fun c!453050 () Bool)

(declare-fun lt!997667 () List!32443)

(declare-fun lt!997658 () List!32443)

(declare-fun e!1762004 () List!32443)

(assert (=> b!2790834 (= e!1762004 (ite c!453050 lt!997658 lt!997667))))

(declare-fun bm!182620 () Bool)

(declare-fun c!453047 () Bool)

(declare-fun c!453055 () Bool)

(assert (=> bm!182620 (= c!453047 c!453055)))

(declare-fun call!182627 () tuple2!32796)

(declare-fun e!1762002 () Int)

(assert (=> bm!182620 (= call!182627 (splitAtIndex!65 e!1762004 (ite c!453055 testedPSize!143 e!1762002)))))

(declare-fun bm!182621 () Bool)

(declare-fun c!453053 () Bool)

(assert (=> bm!182621 (= c!453053 c!453050)))

(declare-fun call!182628 () tuple2!32796)

(assert (=> bm!182621 (= call!182628 call!182627)))

(declare-fun b!2790835 () Bool)

(declare-fun e!1762001 () Int)

(assert (=> b!2790835 (= e!1762001 testedPSize!143)))

(declare-fun b!2790836 () Bool)

(assert (=> b!2790836 (= e!1762001 (- testedPSize!143 (size!25180 (left!24513 (c!452950 totalInput!758)))))))

(declare-fun b!2790838 () Bool)

(assert (=> b!2790838 (= e!1762002 testedPSize!143)))

(declare-fun b!2790839 () Bool)

(declare-fun e!1762009 () tuple2!32796)

(declare-fun e!1762005 () tuple2!32796)

(assert (=> b!2790839 (= e!1762009 e!1762005)))

(declare-fun call!182630 () Int)

(assert (=> b!2790839 (= c!453050 (< testedPSize!143 call!182630))))

(declare-fun b!2790840 () Bool)

(declare-fun c!453045 () Bool)

(assert (=> b!2790840 (= c!453045 (<= testedPSize!143 0))))

(declare-fun e!1762006 () tuple2!32794)

(declare-fun e!1762011 () tuple2!32794)

(assert (=> b!2790840 (= e!1762006 e!1762011)))

(declare-fun b!2790841 () Bool)

(declare-fun lt!997659 () tuple2!32796)

(assert (=> b!2790841 (= lt!997659 call!182628)))

(declare-fun call!182626 () List!32443)

(assert (=> b!2790841 (= e!1762005 (tuple2!32797 call!182626 (_2!19408 lt!997659)))))

(declare-fun b!2790842 () Bool)

(declare-fun e!1762010 () tuple2!32794)

(assert (=> b!2790842 (= e!1762010 (tuple2!32795 (c!452950 totalInput!758) (c!452950 totalInput!758)))))

(declare-fun b!2790843 () Bool)

(assert (=> b!2790843 (= e!1762004 (list!12166 (xs!13147 (c!452950 totalInput!758))))))

(declare-fun b!2790844 () Bool)

(declare-fun e!1762003 () tuple2!32794)

(declare-fun e!1762012 () tuple2!32794)

(assert (=> b!2790844 (= e!1762003 e!1762012)))

(declare-fun c!453051 () Bool)

(assert (=> b!2790844 (= c!453051 (< testedPSize!143 (size!25180 (left!24513 (c!452950 totalInput!758)))))))

(declare-fun bm!182622 () Bool)

(declare-fun c!453054 () Bool)

(assert (=> bm!182622 (= c!453054 c!453051)))

(declare-fun call!182625 () tuple2!32794)

(assert (=> bm!182622 (= call!182625 (splitAt!162 (ite c!453051 (left!24513 (c!452950 totalInput!758)) (right!24843 (c!452950 totalInput!758))) e!1762001))))

(declare-fun b!2790845 () Bool)

(assert (=> b!2790845 (= e!1762009 (tuple2!32797 lt!997658 lt!997667))))

(declare-fun b!2790846 () Bool)

(assert (=> b!2790846 (= e!1762011 (tuple2!32795 Empty!10036 (c!452950 totalInput!758)))))

(declare-fun b!2790847 () Bool)

(assert (=> b!2790847 (= e!1762002 (- testedPSize!143 call!182630))))

(declare-fun bm!182623 () Bool)

(declare-fun lt!997665 () tuple2!32796)

(assert (=> bm!182623 (= call!182626 (++!7984 (ite c!453050 (_2!19408 lt!997665) lt!997658) (ite c!453050 lt!997667 (_1!19408 lt!997659))))))

(declare-fun b!2790837 () Bool)

(assert (=> b!2790837 (= e!1762003 (tuple2!32795 (left!24513 (c!452950 totalInput!758)) (right!24843 (c!452950 totalInput!758))))))

(declare-fun d!811496 () Bool)

(declare-fun e!1762007 () Bool)

(assert (=> d!811496 e!1762007))

(declare-fun res!1164278 () Bool)

(assert (=> d!811496 (=> (not res!1164278) (not e!1762007))))

(declare-fun lt!997661 () tuple2!32794)

(assert (=> d!811496 (= res!1164278 (isBalanced!3062 (_1!19407 lt!997661)))))

(assert (=> d!811496 (= lt!997661 e!1762010)))

(declare-fun c!453052 () Bool)

(assert (=> d!811496 (= c!453052 ((_ is Empty!10036) (c!452950 totalInput!758)))))

(assert (=> d!811496 (isBalanced!3062 (c!452950 totalInput!758))))

(assert (=> d!811496 (= (splitAt!162 (c!452950 totalInput!758) testedPSize!143) lt!997661)))

(declare-fun b!2790848 () Bool)

(declare-fun lt!997666 () Unit!46544)

(declare-fun lt!997670 () Unit!46544)

(assert (=> b!2790848 (= lt!997666 lt!997670)))

(declare-fun lt!997662 () List!32443)

(declare-fun slice!748 (List!32443 Int Int) List!32443)

(assert (=> b!2790848 (= (drop!1734 lt!997662 testedPSize!143) (slice!748 lt!997662 testedPSize!143 call!182630))))

(declare-fun dropLemma!16 (List!32443 Int) Unit!46544)

(assert (=> b!2790848 (= lt!997670 (dropLemma!16 lt!997662 testedPSize!143))))

(assert (=> b!2790848 (= lt!997662 (list!12166 (xs!13147 (c!452950 totalInput!758))))))

(declare-fun lt!997669 () tuple2!32796)

(assert (=> b!2790848 (= lt!997669 call!182627)))

(declare-fun e!1762008 () tuple2!32794)

(declare-fun slice!749 (IArray!20077 Int Int) IArray!20077)

(assert (=> b!2790848 (= e!1762008 (tuple2!32795 (Leaf!15290 (slice!749 (xs!13147 (c!452950 totalInput!758)) 0 testedPSize!143) testedPSize!143) (Leaf!15290 (slice!749 (xs!13147 (c!452950 totalInput!758)) testedPSize!143 (csize!20303 (c!452950 totalInput!758))) (- (csize!20303 (c!452950 totalInput!758)) testedPSize!143))))))

(declare-fun b!2790849 () Bool)

(declare-fun lt!997668 () tuple2!32794)

(assert (=> b!2790849 (= lt!997668 call!182625)))

(declare-fun call!182629 () Conc!10036)

(assert (=> b!2790849 (= e!1762012 (tuple2!32795 (_1!19407 lt!997668) call!182629))))

(declare-fun b!2790850 () Bool)

(assert (=> b!2790850 (= e!1762007 (= (tuple2!32797 (list!12165 (_1!19407 lt!997661)) (list!12165 (_2!19407 lt!997661))) (splitAtIndex!65 (list!12165 (c!452950 totalInput!758)) testedPSize!143)))))

(declare-fun b!2790851 () Bool)

(assert (=> b!2790851 (= e!1762008 (tuple2!32795 (c!452950 totalInput!758) Empty!10036))))

(declare-fun b!2790852 () Bool)

(declare-fun lt!997664 () tuple2!32794)

(assert (=> b!2790852 (= lt!997664 call!182625)))

(assert (=> b!2790852 (= e!1762012 (tuple2!32795 call!182629 (_2!19407 lt!997664)))))

(declare-fun bm!182624 () Bool)

(assert (=> bm!182624 (= call!182630 (size!25178 (ite c!453055 lt!997662 lt!997658)))))

(declare-fun b!2790853 () Bool)

(assert (=> b!2790853 (= lt!997665 call!182628)))

(assert (=> b!2790853 (= e!1762005 (tuple2!32797 (_1!19408 lt!997665) call!182626))))

(declare-fun b!2790854 () Bool)

(assert (=> b!2790854 (= e!1762011 e!1762008)))

(declare-fun c!453046 () Bool)

(assert (=> b!2790854 (= c!453046 (= testedPSize!143 (csize!20303 (c!452950 totalInput!758))))))

(declare-fun b!2790855 () Bool)

(assert (=> b!2790855 (= e!1762010 e!1762006)))

(assert (=> b!2790855 (= c!453055 ((_ is Leaf!15290) (c!452950 totalInput!758)))))

(declare-fun b!2790856 () Bool)

(declare-fun res!1164277 () Bool)

(assert (=> b!2790856 (=> (not res!1164277) (not e!1762007))))

(assert (=> b!2790856 (= res!1164277 (isBalanced!3062 (_2!19407 lt!997661)))))

(declare-fun bm!182625 () Bool)

(declare-fun ++!7985 (Conc!10036 Conc!10036) Conc!10036)

(assert (=> bm!182625 (= call!182629 (++!7985 (ite c!453051 (_2!19407 lt!997668) (left!24513 (c!452950 totalInput!758))) (ite c!453051 (right!24843 (c!452950 totalInput!758)) (_1!19407 lt!997664))))))

(declare-fun b!2790857 () Bool)

(declare-fun c!453048 () Bool)

(assert (=> b!2790857 (= c!453048 (= (size!25180 (left!24513 (c!452950 totalInput!758))) testedPSize!143))))

(declare-fun lt!997663 () Unit!46544)

(declare-fun lt!997660 () Unit!46544)

(assert (=> b!2790857 (= lt!997663 lt!997660)))

(assert (=> b!2790857 (= (splitAtIndex!65 (++!7984 lt!997658 lt!997667) testedPSize!143) e!1762009)))

(declare-fun c!453049 () Bool)

(assert (=> b!2790857 (= c!453049 (= call!182630 testedPSize!143))))

(declare-fun splitAtLemma!16 (List!32443 List!32443 Int) Unit!46544)

(assert (=> b!2790857 (= lt!997660 (splitAtLemma!16 lt!997658 lt!997667 testedPSize!143))))

(assert (=> b!2790857 (= lt!997667 (list!12165 (right!24843 (c!452950 totalInput!758))))))

(assert (=> b!2790857 (= lt!997658 (list!12165 (left!24513 (c!452950 totalInput!758))))))

(assert (=> b!2790857 (= e!1762006 e!1762003)))

(assert (= (and d!811496 c!453052) b!2790842))

(assert (= (and d!811496 (not c!453052)) b!2790855))

(assert (= (and b!2790855 c!453055) b!2790840))

(assert (= (and b!2790855 (not c!453055)) b!2790857))

(assert (= (and b!2790840 c!453045) b!2790846))

(assert (= (and b!2790840 (not c!453045)) b!2790854))

(assert (= (and b!2790854 c!453046) b!2790851))

(assert (= (and b!2790854 (not c!453046)) b!2790848))

(assert (= (and b!2790857 c!453049) b!2790845))

(assert (= (and b!2790857 (not c!453049)) b!2790839))

(assert (= (and b!2790839 c!453050) b!2790853))

(assert (= (and b!2790839 (not c!453050)) b!2790841))

(assert (= (or b!2790853 b!2790841) bm!182623))

(assert (= (or b!2790853 b!2790841) bm!182621))

(assert (= (and bm!182621 c!453053) b!2790838))

(assert (= (and bm!182621 (not c!453053)) b!2790847))

(assert (= (and b!2790857 c!453048) b!2790837))

(assert (= (and b!2790857 (not c!453048)) b!2790844))

(assert (= (and b!2790844 c!453051) b!2790849))

(assert (= (and b!2790844 (not c!453051)) b!2790852))

(assert (= (or b!2790849 b!2790852) bm!182625))

(assert (= (or b!2790849 b!2790852) bm!182622))

(assert (= (and bm!182622 c!453054) b!2790835))

(assert (= (and bm!182622 (not c!453054)) b!2790836))

(assert (= (or b!2790848 b!2790839 b!2790847 b!2790857) bm!182624))

(assert (= (or b!2790848 bm!182621) bm!182620))

(assert (= (and bm!182620 c!453047) b!2790843))

(assert (= (and bm!182620 (not c!453047)) b!2790834))

(assert (= (and d!811496 res!1164278) b!2790856))

(assert (= (and b!2790856 res!1164277) b!2790850))

(declare-fun m!3221179 () Bool)

(assert (=> b!2790856 m!3221179))

(declare-fun m!3221181 () Bool)

(assert (=> bm!182624 m!3221181))

(assert (=> b!2790836 m!3220933))

(declare-fun m!3221183 () Bool)

(assert (=> bm!182625 m!3221183))

(assert (=> b!2790844 m!3220933))

(declare-fun m!3221185 () Bool)

(assert (=> b!2790857 m!3221185))

(assert (=> b!2790857 m!3220897))

(declare-fun m!3221187 () Bool)

(assert (=> b!2790857 m!3221187))

(assert (=> b!2790857 m!3220899))

(assert (=> b!2790857 m!3221185))

(declare-fun m!3221189 () Bool)

(assert (=> b!2790857 m!3221189))

(assert (=> b!2790857 m!3220933))

(declare-fun m!3221191 () Bool)

(assert (=> d!811496 m!3221191))

(assert (=> d!811496 m!3220769))

(declare-fun m!3221193 () Bool)

(assert (=> bm!182620 m!3221193))

(declare-fun m!3221195 () Bool)

(assert (=> bm!182623 m!3221195))

(declare-fun m!3221197 () Bool)

(assert (=> b!2790848 m!3221197))

(declare-fun m!3221199 () Bool)

(assert (=> b!2790848 m!3221199))

(declare-fun m!3221201 () Bool)

(assert (=> b!2790848 m!3221201))

(assert (=> b!2790848 m!3220903))

(declare-fun m!3221203 () Bool)

(assert (=> b!2790848 m!3221203))

(declare-fun m!3221205 () Bool)

(assert (=> b!2790848 m!3221205))

(assert (=> b!2790843 m!3220903))

(declare-fun m!3221207 () Bool)

(assert (=> bm!182622 m!3221207))

(declare-fun m!3221209 () Bool)

(assert (=> b!2790850 m!3221209))

(declare-fun m!3221211 () Bool)

(assert (=> b!2790850 m!3221211))

(assert (=> b!2790850 m!3220771))

(assert (=> b!2790850 m!3220771))

(declare-fun m!3221213 () Bool)

(assert (=> b!2790850 m!3221213))

(assert (=> d!811328 d!811496))

(assert (=> d!811328 d!811418))

(assert (=> b!2790500 d!811404))

(declare-fun d!811498 () Bool)

(assert (=> d!811498 (= (head!6182 lt!997538) (h!37763 lt!997538))))

(assert (=> b!2790500 d!811498))

(declare-fun e!1762013 () Bool)

(declare-fun lt!997671 () List!32443)

(declare-fun b!2790861 () Bool)

(assert (=> b!2790861 (= e!1762013 (or (not (= lt!997572 Nil!32343)) (= lt!997671 testedP!183)))))

(declare-fun b!2790859 () Bool)

(declare-fun e!1762014 () List!32443)

(assert (=> b!2790859 (= e!1762014 (Cons!32343 (h!37763 testedP!183) (++!7984 (t!228585 testedP!183) lt!997572)))))

(declare-fun b!2790860 () Bool)

(declare-fun res!1164280 () Bool)

(assert (=> b!2790860 (=> (not res!1164280) (not e!1762013))))

(assert (=> b!2790860 (= res!1164280 (= (size!25178 lt!997671) (+ (size!25178 testedP!183) (size!25178 lt!997572))))))

(declare-fun b!2790858 () Bool)

(assert (=> b!2790858 (= e!1762014 lt!997572)))

(declare-fun d!811500 () Bool)

(assert (=> d!811500 e!1762013))

(declare-fun res!1164279 () Bool)

(assert (=> d!811500 (=> (not res!1164279) (not e!1762013))))

(assert (=> d!811500 (= res!1164279 (= (content!4527 lt!997671) ((_ map or) (content!4527 testedP!183) (content!4527 lt!997572))))))

(assert (=> d!811500 (= lt!997671 e!1762014)))

(declare-fun c!453056 () Bool)

(assert (=> d!811500 (= c!453056 ((_ is Nil!32343) testedP!183))))

(assert (=> d!811500 (= (++!7984 testedP!183 lt!997572) lt!997671)))

(assert (= (and d!811500 c!453056) b!2790858))

(assert (= (and d!811500 (not c!453056)) b!2790859))

(assert (= (and d!811500 res!1164279) b!2790860))

(assert (= (and b!2790860 res!1164280) b!2790861))

(declare-fun m!3221215 () Bool)

(assert (=> b!2790859 m!3221215))

(declare-fun m!3221217 () Bool)

(assert (=> b!2790860 m!3221217))

(assert (=> b!2790860 m!3220715))

(declare-fun m!3221219 () Bool)

(assert (=> b!2790860 m!3221219))

(declare-fun m!3221221 () Bool)

(assert (=> d!811500 m!3221221))

(assert (=> d!811500 m!3220781))

(declare-fun m!3221223 () Bool)

(assert (=> d!811500 m!3221223))

(assert (=> d!811302 d!811500))

(assert (=> d!811302 d!811386))

(assert (=> d!811302 d!811334))

(declare-fun bs!511470 () Bool)

(declare-fun d!811502 () Bool)

(assert (= bs!511470 (and d!811502 d!811344)))

(declare-fun lambda!102430 () Int)

(assert (=> bs!511470 (= lambda!102430 lambda!102384)))

(declare-fun bs!511471 () Bool)

(assert (= bs!511471 (and d!811502 d!811444)))

(assert (=> bs!511471 (= lambda!102430 lambda!102418)))

(declare-fun bs!511472 () Bool)

(assert (= bs!511472 (and d!811502 d!811466)))

(assert (=> bs!511472 (= lambda!102430 lambda!102422)))

(declare-fun bs!511473 () Bool)

(assert (= bs!511473 (and d!811502 d!811472)))

(assert (=> bs!511473 (= lambda!102430 lambda!102424)))

(declare-fun bs!511474 () Bool)

(assert (= bs!511474 (and d!811502 d!811394)))

(assert (=> bs!511474 (= lambda!102430 lambda!102402)))

(declare-fun bs!511475 () Bool)

(assert (= bs!511475 (and d!811502 d!811492)))

(assert (=> bs!511475 (= lambda!102430 lambda!102429)))

(declare-fun bs!511476 () Bool)

(assert (= bs!511476 (and d!811502 d!811356)))

(assert (=> bs!511476 (= lambda!102430 lambda!102385)))

(declare-fun bs!511477 () Bool)

(assert (= bs!511477 (and d!811502 d!811362)))

(assert (=> bs!511477 (= lambda!102430 lambda!102386)))

(declare-fun bs!511478 () Bool)

(assert (= bs!511478 (and d!811502 d!811374)))

(assert (=> bs!511478 (= lambda!102430 lambda!102393)))

(declare-fun bs!511479 () Bool)

(assert (= bs!511479 (and d!811502 d!811464)))

(assert (=> bs!511479 (= lambda!102430 lambda!102421)))

(declare-fun bs!511480 () Bool)

(assert (= bs!511480 (and d!811502 d!811420)))

(assert (=> bs!511480 (= lambda!102430 lambda!102404)))

(declare-fun bs!511481 () Bool)

(assert (= bs!511481 (and d!811502 d!811392)))

(assert (=> bs!511481 (= lambda!102430 lambda!102401)))

(declare-fun bs!511482 () Bool)

(assert (= bs!511482 (and d!811502 d!811370)))

(assert (=> bs!511482 (= lambda!102430 lambda!102392)))

(declare-fun bs!511483 () Bool)

(assert (= bs!511483 (and d!811502 d!811308)))

(assert (=> bs!511483 (= lambda!102430 lambda!102383)))

(declare-fun bs!511484 () Bool)

(assert (= bs!511484 (and d!811502 d!811400)))

(assert (=> bs!511484 (= lambda!102430 lambda!102403)))

(declare-fun bs!511485 () Bool)

(assert (= bs!511485 (and d!811502 d!811432)))

(assert (=> bs!511485 (= lambda!102430 lambda!102410)))

(declare-fun bs!511486 () Bool)

(assert (= bs!511486 (and d!811502 d!811470)))

(assert (=> bs!511486 (= lambda!102430 lambda!102423)))

(declare-fun bs!511487 () Bool)

(assert (= bs!511487 (and d!811502 d!811446)))

(assert (=> bs!511487 (= lambda!102430 lambda!102419)))

(declare-fun bs!511488 () Bool)

(assert (= bs!511488 (and d!811502 d!811388)))

(assert (=> bs!511488 (= lambda!102430 lambda!102400)))

(declare-fun bs!511489 () Bool)

(assert (= bs!511489 (and d!811502 d!811368)))

(assert (=> bs!511489 (= lambda!102430 lambda!102391)))

(declare-fun bs!511490 () Bool)

(assert (= bs!511490 (and d!811502 d!811448)))

(assert (=> bs!511490 (= lambda!102430 lambda!102420)))

(declare-fun bs!511491 () Bool)

(assert (= bs!511491 (and d!811502 d!811366)))

(assert (=> bs!511491 (= lambda!102430 lambda!102390)))

(declare-fun bs!511492 () Bool)

(assert (= bs!511492 (and d!811502 d!811422)))

(assert (=> bs!511492 (= lambda!102430 lambda!102405)))

(declare-fun bs!511493 () Bool)

(assert (= bs!511493 (and d!811502 d!811430)))

(assert (=> bs!511493 (= lambda!102430 lambda!102409)))

(declare-fun bs!511494 () Bool)

(assert (= bs!511494 (and d!811502 d!811486)))

(assert (=> bs!511494 (= lambda!102430 lambda!102425)))

(assert (=> d!811502 (= (inv!43944 setElem!23818) (forall!6670 (exprs!2889 setElem!23818) lambda!102430))))

(declare-fun bs!511495 () Bool)

(assert (= bs!511495 d!811502))

(declare-fun m!3221225 () Bool)

(assert (=> bs!511495 m!3221225))

(assert (=> setNonEmpty!23818 d!811502))

(declare-fun b!2790862 () Bool)

(declare-fun e!1762015 () Bool)

(declare-fun tp!886051 () Bool)

(declare-fun tp!886052 () Bool)

(assert (=> b!2790862 (= e!1762015 (and tp!886051 tp!886052))))

(assert (=> b!2790598 (= tp!886033 e!1762015)))

(assert (= (and b!2790598 ((_ is Cons!32344) (exprs!2889 (_1!19404 (_1!19405 (h!37766 mapValue!17934)))))) b!2790862))

(declare-fun condSetEmpty!23843 () Bool)

(assert (=> setNonEmpty!23840 (= condSetEmpty!23843 (= setRest!23840 ((as const (Array Context!4778 Bool)) false)))))

(declare-fun setRes!23843 () Bool)

(assert (=> setNonEmpty!23840 (= tp!886039 setRes!23843)))

(declare-fun setIsEmpty!23843 () Bool)

(assert (=> setIsEmpty!23843 setRes!23843))

(declare-fun setElem!23843 () Context!4778)

(declare-fun setNonEmpty!23843 () Bool)

(declare-fun tp!886054 () Bool)

(declare-fun e!1762016 () Bool)

(assert (=> setNonEmpty!23843 (= setRes!23843 (and tp!886054 (inv!43944 setElem!23843) e!1762016))))

(declare-fun setRest!23843 () (InoxSet Context!4778))

(assert (=> setNonEmpty!23843 (= setRest!23840 ((_ map or) (store ((as const (Array Context!4778 Bool)) false) setElem!23843 true) setRest!23843))))

(declare-fun b!2790863 () Bool)

(declare-fun tp!886053 () Bool)

(assert (=> b!2790863 (= e!1762016 tp!886053)))

(assert (= (and setNonEmpty!23840 condSetEmpty!23843) setIsEmpty!23843))

(assert (= (and setNonEmpty!23840 (not condSetEmpty!23843)) setNonEmpty!23843))

(assert (= setNonEmpty!23843 b!2790863))

(declare-fun m!3221227 () Bool)

(assert (=> setNonEmpty!23843 m!3221227))

(declare-fun mapDefault!17941 () List!32445)

(declare-fun e!1762018 () Bool)

(declare-fun tp!886062 () Bool)

(declare-fun tp!886059 () Bool)

(declare-fun b!2790864 () Bool)

(declare-fun setRes!23844 () Bool)

(declare-fun e!1762019 () Bool)

(assert (=> b!2790864 (= e!1762019 (and tp!886059 (inv!43944 (_2!19402 (_1!19403 (h!37765 mapDefault!17941)))) e!1762018 tp_is_empty!14155 setRes!23844 tp!886062))))

(declare-fun condSetEmpty!23845 () Bool)

(assert (=> b!2790864 (= condSetEmpty!23845 (= (_2!19403 (h!37765 mapDefault!17941)) ((as const (Array Context!4778 Bool)) false)))))

(declare-fun setIsEmpty!23844 () Bool)

(assert (=> setIsEmpty!23844 setRes!23844))

(declare-fun mapIsEmpty!17941 () Bool)

(declare-fun mapRes!17941 () Bool)

(assert (=> mapIsEmpty!17941 mapRes!17941))

(declare-fun setElem!23845 () Context!4778)

(declare-fun tp!886058 () Bool)

(declare-fun setNonEmpty!23844 () Bool)

(declare-fun e!1762021 () Bool)

(declare-fun setRes!23845 () Bool)

(assert (=> setNonEmpty!23844 (= setRes!23845 (and tp!886058 (inv!43944 setElem!23845) e!1762021))))

(declare-fun mapValue!17941 () List!32445)

(declare-fun setRest!23844 () (InoxSet Context!4778))

(assert (=> setNonEmpty!23844 (= (_2!19403 (h!37765 mapValue!17941)) ((_ map or) (store ((as const (Array Context!4778 Bool)) false) setElem!23845 true) setRest!23844))))

(declare-fun b!2790865 () Bool)

(declare-fun tp!886064 () Bool)

(assert (=> b!2790865 (= e!1762018 tp!886064)))

(declare-fun b!2790866 () Bool)

(declare-fun e!1762022 () Bool)

(declare-fun tp!886065 () Bool)

(assert (=> b!2790866 (= e!1762022 tp!886065)))

(declare-fun setElem!23844 () Context!4778)

(declare-fun setNonEmpty!23845 () Bool)

(declare-fun tp!886061 () Bool)

(assert (=> setNonEmpty!23845 (= setRes!23844 (and tp!886061 (inv!43944 setElem!23844) e!1762022))))

(declare-fun setRest!23845 () (InoxSet Context!4778))

(assert (=> setNonEmpty!23845 (= (_2!19403 (h!37765 mapDefault!17941)) ((_ map or) (store ((as const (Array Context!4778 Bool)) false) setElem!23844 true) setRest!23845))))

(declare-fun b!2790867 () Bool)

(declare-fun e!1762017 () Bool)

(declare-fun tp!886055 () Bool)

(assert (=> b!2790867 (= e!1762017 tp!886055)))

(declare-fun tp!886057 () Bool)

(declare-fun tp!886060 () Bool)

(declare-fun e!1762020 () Bool)

(declare-fun b!2790868 () Bool)

(assert (=> b!2790868 (= e!1762020 (and tp!886060 (inv!43944 (_2!19402 (_1!19403 (h!37765 mapValue!17941)))) e!1762017 tp_is_empty!14155 setRes!23845 tp!886057))))

(declare-fun condSetEmpty!23844 () Bool)

(assert (=> b!2790868 (= condSetEmpty!23844 (= (_2!19403 (h!37765 mapValue!17941)) ((as const (Array Context!4778 Bool)) false)))))

(declare-fun mapNonEmpty!17941 () Bool)

(declare-fun tp!886063 () Bool)

(assert (=> mapNonEmpty!17941 (= mapRes!17941 (and tp!886063 e!1762020))))

(declare-fun mapKey!17941 () (_ BitVec 32))

(declare-fun mapRest!17941 () (Array (_ BitVec 32) List!32445))

(assert (=> mapNonEmpty!17941 (= mapRest!17937 (store mapRest!17941 mapKey!17941 mapValue!17941))))

(declare-fun setIsEmpty!23845 () Bool)

(assert (=> setIsEmpty!23845 setRes!23845))

(declare-fun b!2790869 () Bool)

(declare-fun tp!886056 () Bool)

(assert (=> b!2790869 (= e!1762021 tp!886056)))

(declare-fun condMapEmpty!17941 () Bool)

(assert (=> mapNonEmpty!17937 (= condMapEmpty!17941 (= mapRest!17937 ((as const (Array (_ BitVec 32) List!32445)) mapDefault!17941)))))

(assert (=> mapNonEmpty!17937 (= tp!885977 (and e!1762019 mapRes!17941))))

(assert (= (and mapNonEmpty!17937 condMapEmpty!17941) mapIsEmpty!17941))

(assert (= (and mapNonEmpty!17937 (not condMapEmpty!17941)) mapNonEmpty!17941))

(assert (= b!2790868 b!2790867))

(assert (= (and b!2790868 condSetEmpty!23844) setIsEmpty!23845))

(assert (= (and b!2790868 (not condSetEmpty!23844)) setNonEmpty!23844))

(assert (= setNonEmpty!23844 b!2790869))

(assert (= (and mapNonEmpty!17941 ((_ is Cons!32345) mapValue!17941)) b!2790868))

(assert (= b!2790864 b!2790865))

(assert (= (and b!2790864 condSetEmpty!23845) setIsEmpty!23844))

(assert (= (and b!2790864 (not condSetEmpty!23845)) setNonEmpty!23845))

(assert (= setNonEmpty!23845 b!2790866))

(assert (= (and mapNonEmpty!17937 ((_ is Cons!32345) mapDefault!17941)) b!2790864))

(declare-fun m!3221229 () Bool)

(assert (=> mapNonEmpty!17941 m!3221229))

(declare-fun m!3221231 () Bool)

(assert (=> b!2790864 m!3221231))

(declare-fun m!3221233 () Bool)

(assert (=> b!2790868 m!3221233))

(declare-fun m!3221235 () Bool)

(assert (=> setNonEmpty!23845 m!3221235))

(declare-fun m!3221237 () Bool)

(assert (=> setNonEmpty!23844 m!3221237))

(declare-fun b!2790870 () Bool)

(declare-fun e!1762023 () Bool)

(declare-fun tp!886066 () Bool)

(declare-fun tp!886067 () Bool)

(assert (=> b!2790870 (= e!1762023 (and tp!886066 tp!886067))))

(assert (=> b!2790605 (= tp!886043 e!1762023)))

(assert (= (and b!2790605 ((_ is Cons!32344) (exprs!2889 (_1!19404 (_1!19405 (h!37766 (zeroValue!4198 (v!33951 (underlying!8081 (v!33952 (underlying!8082 (cache!3988 cacheUp!890)))))))))))) b!2790870))

(declare-fun b!2790871 () Bool)

(declare-fun e!1762024 () Bool)

(declare-fun tp!886068 () Bool)

(declare-fun tp!886069 () Bool)

(assert (=> b!2790871 (= e!1762024 (and tp!886068 tp!886069))))

(assert (=> b!2790599 (= tp!886035 e!1762024)))

(assert (= (and b!2790599 ((_ is Cons!32344) (exprs!2889 setElem!23839))) b!2790871))

(declare-fun b!2790872 () Bool)

(declare-fun setRes!23846 () Bool)

(declare-fun e!1762027 () Bool)

(declare-fun e!1762025 () Bool)

(declare-fun tp!886071 () Bool)

(assert (=> b!2790872 (= e!1762027 (and (inv!43944 (_1!19404 (_1!19405 (h!37766 (t!228588 mapValue!17934))))) e!1762025 tp_is_empty!14155 setRes!23846 tp!886071))))

(declare-fun condSetEmpty!23846 () Bool)

(assert (=> b!2790872 (= condSetEmpty!23846 (= (_2!19405 (h!37766 (t!228588 mapValue!17934))) ((as const (Array Context!4778 Bool)) false)))))

(declare-fun tp!886073 () Bool)

(declare-fun setElem!23846 () Context!4778)

(declare-fun e!1762026 () Bool)

(declare-fun setNonEmpty!23846 () Bool)

(assert (=> setNonEmpty!23846 (= setRes!23846 (and tp!886073 (inv!43944 setElem!23846) e!1762026))))

(declare-fun setRest!23846 () (InoxSet Context!4778))

(assert (=> setNonEmpty!23846 (= (_2!19405 (h!37766 (t!228588 mapValue!17934))) ((_ map or) (store ((as const (Array Context!4778 Bool)) false) setElem!23846 true) setRest!23846))))

(declare-fun b!2790873 () Bool)

(declare-fun tp!886070 () Bool)

(assert (=> b!2790873 (= e!1762025 tp!886070)))

(assert (=> b!2790597 (= tp!886034 e!1762027)))

(declare-fun setIsEmpty!23846 () Bool)

(assert (=> setIsEmpty!23846 setRes!23846))

(declare-fun b!2790874 () Bool)

(declare-fun tp!886072 () Bool)

(assert (=> b!2790874 (= e!1762026 tp!886072)))

(assert (= b!2790872 b!2790873))

(assert (= (and b!2790872 condSetEmpty!23846) setIsEmpty!23846))

(assert (= (and b!2790872 (not condSetEmpty!23846)) setNonEmpty!23846))

(assert (= setNonEmpty!23846 b!2790874))

(assert (= (and b!2790597 ((_ is Cons!32346) (t!228588 mapValue!17934))) b!2790872))

(declare-fun m!3221239 () Bool)

(assert (=> b!2790872 m!3221239))

(declare-fun m!3221241 () Bool)

(assert (=> setNonEmpty!23846 m!3221241))

(declare-fun b!2790875 () Bool)

(declare-fun e!1762028 () Bool)

(declare-fun tp!886074 () Bool)

(declare-fun tp!886075 () Bool)

(assert (=> b!2790875 (= e!1762028 (and tp!886074 tp!886075))))

(assert (=> b!2790600 (= tp!886041 e!1762028)))

(assert (= (and b!2790600 ((_ is Cons!32344) (exprs!2889 (_2!19402 (_1!19403 (h!37765 mapDefault!17933)))))) b!2790875))

(declare-fun b!2790876 () Bool)

(declare-fun e!1762029 () Bool)

(declare-fun tp!886076 () Bool)

(declare-fun tp!886077 () Bool)

(assert (=> b!2790876 (= e!1762029 (and tp!886076 tp!886077))))

(assert (=> b!2790550 (= tp!885969 e!1762029)))

(assert (= (and b!2790550 ((_ is Cons!32344) (exprs!2889 (_2!19402 (_1!19403 (h!37765 mapValue!17937)))))) b!2790876))

(declare-fun tp!886079 () Bool)

(declare-fun e!1762030 () Bool)

(declare-fun setRes!23847 () Bool)

(declare-fun b!2790877 () Bool)

(declare-fun e!1762032 () Bool)

(assert (=> b!2790877 (= e!1762032 (and (inv!43944 (_1!19404 (_1!19405 (h!37766 (t!228588 (zeroValue!4198 (v!33951 (underlying!8081 (v!33952 (underlying!8082 (cache!3988 cacheUp!890))))))))))) e!1762030 tp_is_empty!14155 setRes!23847 tp!886079))))

(declare-fun condSetEmpty!23847 () Bool)

(assert (=> b!2790877 (= condSetEmpty!23847 (= (_2!19405 (h!37766 (t!228588 (zeroValue!4198 (v!33951 (underlying!8081 (v!33952 (underlying!8082 (cache!3988 cacheUp!890))))))))) ((as const (Array Context!4778 Bool)) false)))))

(declare-fun setNonEmpty!23847 () Bool)

(declare-fun tp!886081 () Bool)

(declare-fun e!1762031 () Bool)

(declare-fun setElem!23847 () Context!4778)

(assert (=> setNonEmpty!23847 (= setRes!23847 (and tp!886081 (inv!43944 setElem!23847) e!1762031))))

(declare-fun setRest!23847 () (InoxSet Context!4778))

(assert (=> setNonEmpty!23847 (= (_2!19405 (h!37766 (t!228588 (zeroValue!4198 (v!33951 (underlying!8081 (v!33952 (underlying!8082 (cache!3988 cacheUp!890))))))))) ((_ map or) (store ((as const (Array Context!4778 Bool)) false) setElem!23847 true) setRest!23847))))

(declare-fun b!2790878 () Bool)

(declare-fun tp!886078 () Bool)

(assert (=> b!2790878 (= e!1762030 tp!886078)))

(assert (=> b!2790604 (= tp!886044 e!1762032)))

(declare-fun setIsEmpty!23847 () Bool)

(assert (=> setIsEmpty!23847 setRes!23847))

(declare-fun b!2790879 () Bool)

(declare-fun tp!886080 () Bool)

(assert (=> b!2790879 (= e!1762031 tp!886080)))

(assert (= b!2790877 b!2790878))

(assert (= (and b!2790877 condSetEmpty!23847) setIsEmpty!23847))

(assert (= (and b!2790877 (not condSetEmpty!23847)) setNonEmpty!23847))

(assert (= setNonEmpty!23847 b!2790879))

(assert (= (and b!2790604 ((_ is Cons!32346) (t!228588 (zeroValue!4198 (v!33951 (underlying!8081 (v!33952 (underlying!8082 (cache!3988 cacheUp!890))))))))) b!2790877))

(declare-fun m!3221243 () Bool)

(assert (=> b!2790877 m!3221243))

(declare-fun m!3221245 () Bool)

(assert (=> setNonEmpty!23847 m!3221245))

(declare-fun condSetEmpty!23848 () Bool)

(assert (=> setNonEmpty!23832 (= condSetEmpty!23848 (= setRest!23832 ((as const (Array Context!4778 Bool)) false)))))

(declare-fun setRes!23848 () Bool)

(assert (=> setNonEmpty!23832 (= tp!885996 setRes!23848)))

(declare-fun setIsEmpty!23848 () Bool)

(assert (=> setIsEmpty!23848 setRes!23848))

(declare-fun setElem!23848 () Context!4778)

(declare-fun setNonEmpty!23848 () Bool)

(declare-fun tp!886083 () Bool)

(declare-fun e!1762033 () Bool)

(assert (=> setNonEmpty!23848 (= setRes!23848 (and tp!886083 (inv!43944 setElem!23848) e!1762033))))

(declare-fun setRest!23848 () (InoxSet Context!4778))

(assert (=> setNonEmpty!23848 (= setRest!23832 ((_ map or) (store ((as const (Array Context!4778 Bool)) false) setElem!23848 true) setRest!23848))))

(declare-fun b!2790880 () Bool)

(declare-fun tp!886082 () Bool)

(assert (=> b!2790880 (= e!1762033 tp!886082)))

(assert (= (and setNonEmpty!23832 condSetEmpty!23848) setIsEmpty!23848))

(assert (= (and setNonEmpty!23832 (not condSetEmpty!23848)) setNonEmpty!23848))

(assert (= setNonEmpty!23848 b!2790880))

(declare-fun m!3221247 () Bool)

(assert (=> setNonEmpty!23848 m!3221247))

(declare-fun condSetEmpty!23849 () Bool)

(assert (=> setNonEmpty!23842 (= condSetEmpty!23849 (= setRest!23842 ((as const (Array Context!4778 Bool)) false)))))

(declare-fun setRes!23849 () Bool)

(assert (=> setNonEmpty!23842 (= tp!886050 setRes!23849)))

(declare-fun setIsEmpty!23849 () Bool)

(assert (=> setIsEmpty!23849 setRes!23849))

(declare-fun setNonEmpty!23849 () Bool)

(declare-fun setElem!23849 () Context!4778)

(declare-fun tp!886085 () Bool)

(declare-fun e!1762034 () Bool)

(assert (=> setNonEmpty!23849 (= setRes!23849 (and tp!886085 (inv!43944 setElem!23849) e!1762034))))

(declare-fun setRest!23849 () (InoxSet Context!4778))

(assert (=> setNonEmpty!23849 (= setRest!23842 ((_ map or) (store ((as const (Array Context!4778 Bool)) false) setElem!23849 true) setRest!23849))))

(declare-fun b!2790881 () Bool)

(declare-fun tp!886084 () Bool)

(assert (=> b!2790881 (= e!1762034 tp!886084)))

(assert (= (and setNonEmpty!23842 condSetEmpty!23849) setIsEmpty!23849))

(assert (= (and setNonEmpty!23842 (not condSetEmpty!23849)) setNonEmpty!23849))

(assert (= setNonEmpty!23849 b!2790881))

(declare-fun m!3221249 () Bool)

(assert (=> setNonEmpty!23849 m!3221249))

(declare-fun condSetEmpty!23850 () Bool)

(assert (=> setNonEmpty!23827 (= condSetEmpty!23850 (= setRest!23827 ((as const (Array Context!4778 Bool)) false)))))

(declare-fun setRes!23850 () Bool)

(assert (=> setNonEmpty!23827 (= tp!885972 setRes!23850)))

(declare-fun setIsEmpty!23850 () Bool)

(assert (=> setIsEmpty!23850 setRes!23850))

(declare-fun tp!886087 () Bool)

(declare-fun setElem!23850 () Context!4778)

(declare-fun setNonEmpty!23850 () Bool)

(declare-fun e!1762035 () Bool)

(assert (=> setNonEmpty!23850 (= setRes!23850 (and tp!886087 (inv!43944 setElem!23850) e!1762035))))

(declare-fun setRest!23850 () (InoxSet Context!4778))

(assert (=> setNonEmpty!23850 (= setRest!23827 ((_ map or) (store ((as const (Array Context!4778 Bool)) false) setElem!23850 true) setRest!23850))))

(declare-fun b!2790882 () Bool)

(declare-fun tp!886086 () Bool)

(assert (=> b!2790882 (= e!1762035 tp!886086)))

(assert (= (and setNonEmpty!23827 condSetEmpty!23850) setIsEmpty!23850))

(assert (= (and setNonEmpty!23827 (not condSetEmpty!23850)) setNonEmpty!23850))

(assert (= setNonEmpty!23850 b!2790882))

(declare-fun m!3221251 () Bool)

(assert (=> setNonEmpty!23850 m!3221251))

(declare-fun b!2790883 () Bool)

(declare-fun e!1762036 () Bool)

(declare-fun tp!886088 () Bool)

(declare-fun tp!886089 () Bool)

(assert (=> b!2790883 (= e!1762036 (and tp!886088 tp!886089))))

(assert (=> b!2790595 (= tp!886030 e!1762036)))

(assert (= (and b!2790595 ((_ is Cons!32344) (exprs!2889 (_1!19404 (_1!19405 (h!37766 mapDefault!17940)))))) b!2790883))

(declare-fun b!2790895 () Bool)

(declare-fun e!1762039 () Bool)

(declare-fun tp!886102 () Bool)

(declare-fun tp!886101 () Bool)

(assert (=> b!2790895 (= e!1762039 (and tp!886102 tp!886101))))

(assert (=> b!2790576 (= tp!886004 e!1762039)))

(declare-fun b!2790894 () Bool)

(assert (=> b!2790894 (= e!1762039 tp_is_empty!14155)))

(declare-fun b!2790896 () Bool)

(declare-fun tp!886104 () Bool)

(assert (=> b!2790896 (= e!1762039 tp!886104)))

(declare-fun b!2790897 () Bool)

(declare-fun tp!886103 () Bool)

(declare-fun tp!886100 () Bool)

(assert (=> b!2790897 (= e!1762039 (and tp!886103 tp!886100))))

(assert (= (and b!2790576 ((_ is ElementMatch!8171) (h!37764 (exprs!2889 setElem!23815)))) b!2790894))

(assert (= (and b!2790576 ((_ is Concat!13259) (h!37764 (exprs!2889 setElem!23815)))) b!2790895))

(assert (= (and b!2790576 ((_ is Star!8171) (h!37764 (exprs!2889 setElem!23815)))) b!2790896))

(assert (= (and b!2790576 ((_ is Union!8171) (h!37764 (exprs!2889 setElem!23815)))) b!2790897))

(declare-fun b!2790898 () Bool)

(declare-fun e!1762040 () Bool)

(declare-fun tp!886105 () Bool)

(declare-fun tp!886106 () Bool)

(assert (=> b!2790898 (= e!1762040 (and tp!886105 tp!886106))))

(assert (=> b!2790576 (= tp!886005 e!1762040)))

(assert (= (and b!2790576 ((_ is Cons!32344) (t!228586 (exprs!2889 setElem!23815)))) b!2790898))

(declare-fun b!2790899 () Bool)

(declare-fun e!1762041 () Bool)

(declare-fun tp!886107 () Bool)

(declare-fun tp!886108 () Bool)

(assert (=> b!2790899 (= e!1762041 (and tp!886107 tp!886108))))

(assert (=> b!2790549 (= tp!885979 e!1762041)))

(assert (= (and b!2790549 ((_ is Cons!32344) (exprs!2889 setElem!23827))) b!2790899))

(declare-fun condSetEmpty!23851 () Bool)

(assert (=> setNonEmpty!23838 (= condSetEmpty!23851 (= setRest!23837 ((as const (Array Context!4778 Bool)) false)))))

(declare-fun setRes!23851 () Bool)

(assert (=> setNonEmpty!23838 (= tp!886027 setRes!23851)))

(declare-fun setIsEmpty!23851 () Bool)

(assert (=> setIsEmpty!23851 setRes!23851))

(declare-fun setElem!23851 () Context!4778)

(declare-fun setNonEmpty!23851 () Bool)

(declare-fun e!1762042 () Bool)

(declare-fun tp!886110 () Bool)

(assert (=> setNonEmpty!23851 (= setRes!23851 (and tp!886110 (inv!43944 setElem!23851) e!1762042))))

(declare-fun setRest!23851 () (InoxSet Context!4778))

(assert (=> setNonEmpty!23851 (= setRest!23837 ((_ map or) (store ((as const (Array Context!4778 Bool)) false) setElem!23851 true) setRest!23851))))

(declare-fun b!2790900 () Bool)

(declare-fun tp!886109 () Bool)

(assert (=> b!2790900 (= e!1762042 tp!886109)))

(assert (= (and setNonEmpty!23838 condSetEmpty!23851) setIsEmpty!23851))

(assert (= (and setNonEmpty!23838 (not condSetEmpty!23851)) setNonEmpty!23851))

(assert (= setNonEmpty!23851 b!2790900))

(declare-fun m!3221253 () Bool)

(assert (=> setNonEmpty!23851 m!3221253))

(declare-fun b!2790901 () Bool)

(declare-fun e!1762043 () Bool)

(declare-fun tp!886111 () Bool)

(declare-fun tp!886112 () Bool)

(assert (=> b!2790901 (= e!1762043 (and tp!886111 tp!886112))))

(assert (=> b!2790532 (= tp!885945 e!1762043)))

(assert (= (and b!2790532 ((_ is Cons!32344) (exprs!2889 setElem!23822))) b!2790901))

(declare-fun b!2790902 () Bool)

(declare-fun e!1762044 () Bool)

(declare-fun tp!886113 () Bool)

(declare-fun tp!886114 () Bool)

(assert (=> b!2790902 (= e!1762044 (and tp!886113 tp!886114))))

(assert (=> b!2790529 (= tp!885940 e!1762044)))

(assert (= (and b!2790529 ((_ is Cons!32344) (exprs!2889 setElem!23821))) b!2790902))

(declare-fun b!2790903 () Bool)

(declare-fun e!1762045 () Bool)

(declare-fun tp!886115 () Bool)

(declare-fun tp!886116 () Bool)

(assert (=> b!2790903 (= e!1762045 (and tp!886115 tp!886116))))

(assert (=> b!2790591 (= tp!886029 e!1762045)))

(assert (= (and b!2790591 ((_ is Cons!32344) (exprs!2889 setElem!23837))) b!2790903))

(declare-fun b!2790904 () Bool)

(declare-fun e!1762046 () Bool)

(declare-fun tp!886117 () Bool)

(assert (=> b!2790904 (= e!1762046 (and tp_is_empty!14155 tp!886117))))

(assert (=> b!2790603 (= tp!886042 e!1762046)))

(assert (= (and b!2790603 ((_ is Cons!32343) (t!228585 (t!228585 testedSuffix!143)))) b!2790904))

(declare-fun b!2790906 () Bool)

(declare-fun e!1762047 () Bool)

(declare-fun tp!886120 () Bool)

(declare-fun tp!886119 () Bool)

(assert (=> b!2790906 (= e!1762047 (and tp!886120 tp!886119))))

(assert (=> b!2790531 (= tp!885942 e!1762047)))

(declare-fun b!2790905 () Bool)

(assert (=> b!2790905 (= e!1762047 tp_is_empty!14155)))

(declare-fun b!2790907 () Bool)

(declare-fun tp!886122 () Bool)

(assert (=> b!2790907 (= e!1762047 tp!886122)))

(declare-fun b!2790908 () Bool)

(declare-fun tp!886121 () Bool)

(declare-fun tp!886118 () Bool)

(assert (=> b!2790908 (= e!1762047 (and tp!886121 tp!886118))))

(assert (= (and b!2790531 ((_ is ElementMatch!8171) (_1!19402 (_1!19403 (h!37765 (minValue!4197 (v!33949 (underlying!8079 (v!33950 (underlying!8080 (cache!3987 cacheDown!1009))))))))))) b!2790905))

(assert (= (and b!2790531 ((_ is Concat!13259) (_1!19402 (_1!19403 (h!37765 (minValue!4197 (v!33949 (underlying!8079 (v!33950 (underlying!8080 (cache!3987 cacheDown!1009))))))))))) b!2790906))

(assert (= (and b!2790531 ((_ is Star!8171) (_1!19402 (_1!19403 (h!37765 (minValue!4197 (v!33949 (underlying!8079 (v!33950 (underlying!8080 (cache!3987 cacheDown!1009))))))))))) b!2790907))

(assert (= (and b!2790531 ((_ is Union!8171) (_1!19402 (_1!19403 (h!37765 (minValue!4197 (v!33949 (underlying!8079 (v!33950 (underlying!8080 (cache!3987 cacheDown!1009))))))))))) b!2790908))

(declare-fun b!2790909 () Bool)

(declare-fun e!1762048 () Bool)

(declare-fun tp!886127 () Bool)

(assert (=> b!2790909 (= e!1762048 tp!886127)))

(declare-fun tp!886124 () Bool)

(declare-fun e!1762049 () Bool)

(declare-fun b!2790910 () Bool)

(declare-fun tp!886123 () Bool)

(declare-fun setRes!23852 () Bool)

(assert (=> b!2790910 (= e!1762049 (and tp!886123 (inv!43944 (_2!19402 (_1!19403 (h!37765 (t!228587 (minValue!4197 (v!33949 (underlying!8079 (v!33950 (underlying!8080 (cache!3987 cacheDown!1009))))))))))) e!1762048 tp_is_empty!14155 setRes!23852 tp!886124))))

(declare-fun condSetEmpty!23852 () Bool)

(assert (=> b!2790910 (= condSetEmpty!23852 (= (_2!19403 (h!37765 (t!228587 (minValue!4197 (v!33949 (underlying!8079 (v!33950 (underlying!8080 (cache!3987 cacheDown!1009))))))))) ((as const (Array Context!4778 Bool)) false)))))

(declare-fun setElem!23852 () Context!4778)

(declare-fun tp!886125 () Bool)

(declare-fun e!1762050 () Bool)

(declare-fun setNonEmpty!23852 () Bool)

(assert (=> setNonEmpty!23852 (= setRes!23852 (and tp!886125 (inv!43944 setElem!23852) e!1762050))))

(declare-fun setRest!23852 () (InoxSet Context!4778))

(assert (=> setNonEmpty!23852 (= (_2!19403 (h!37765 (t!228587 (minValue!4197 (v!33949 (underlying!8079 (v!33950 (underlying!8080 (cache!3987 cacheDown!1009))))))))) ((_ map or) (store ((as const (Array Context!4778 Bool)) false) setElem!23852 true) setRest!23852))))

(declare-fun b!2790911 () Bool)

(declare-fun tp!886126 () Bool)

(assert (=> b!2790911 (= e!1762050 tp!886126)))

(declare-fun setIsEmpty!23852 () Bool)

(assert (=> setIsEmpty!23852 setRes!23852))

(assert (=> b!2790531 (= tp!885943 e!1762049)))

(assert (= b!2790910 b!2790909))

(assert (= (and b!2790910 condSetEmpty!23852) setIsEmpty!23852))

(assert (= (and b!2790910 (not condSetEmpty!23852)) setNonEmpty!23852))

(assert (= setNonEmpty!23852 b!2790911))

(assert (= (and b!2790531 ((_ is Cons!32345) (t!228587 (minValue!4197 (v!33949 (underlying!8079 (v!33950 (underlying!8080 (cache!3987 cacheDown!1009))))))))) b!2790910))

(declare-fun m!3221255 () Bool)

(assert (=> b!2790910 m!3221255))

(declare-fun m!3221257 () Bool)

(assert (=> setNonEmpty!23852 m!3221257))

(declare-fun b!2790913 () Bool)

(declare-fun e!1762051 () Bool)

(declare-fun tp!886130 () Bool)

(declare-fun tp!886129 () Bool)

(assert (=> b!2790913 (= e!1762051 (and tp!886130 tp!886129))))

(assert (=> b!2790528 (= tp!885937 e!1762051)))

(declare-fun b!2790912 () Bool)

(assert (=> b!2790912 (= e!1762051 tp_is_empty!14155)))

(declare-fun b!2790914 () Bool)

(declare-fun tp!886132 () Bool)

(assert (=> b!2790914 (= e!1762051 tp!886132)))

(declare-fun b!2790915 () Bool)

(declare-fun tp!886131 () Bool)

(declare-fun tp!886128 () Bool)

(assert (=> b!2790915 (= e!1762051 (and tp!886131 tp!886128))))

(assert (= (and b!2790528 ((_ is ElementMatch!8171) (_1!19402 (_1!19403 (h!37765 (zeroValue!4197 (v!33949 (underlying!8079 (v!33950 (underlying!8080 (cache!3987 cacheDown!1009))))))))))) b!2790912))

(assert (= (and b!2790528 ((_ is Concat!13259) (_1!19402 (_1!19403 (h!37765 (zeroValue!4197 (v!33949 (underlying!8079 (v!33950 (underlying!8080 (cache!3987 cacheDown!1009))))))))))) b!2790913))

(assert (= (and b!2790528 ((_ is Star!8171) (_1!19402 (_1!19403 (h!37765 (zeroValue!4197 (v!33949 (underlying!8079 (v!33950 (underlying!8080 (cache!3987 cacheDown!1009))))))))))) b!2790914))

(assert (= (and b!2790528 ((_ is Union!8171) (_1!19402 (_1!19403 (h!37765 (zeroValue!4197 (v!33949 (underlying!8079 (v!33950 (underlying!8080 (cache!3987 cacheDown!1009))))))))))) b!2790915))

(declare-fun b!2790916 () Bool)

(declare-fun e!1762052 () Bool)

(declare-fun tp!886137 () Bool)

(assert (=> b!2790916 (= e!1762052 tp!886137)))

(declare-fun e!1762053 () Bool)

(declare-fun b!2790917 () Bool)

(declare-fun tp!886134 () Bool)

(declare-fun setRes!23853 () Bool)

(declare-fun tp!886133 () Bool)

(assert (=> b!2790917 (= e!1762053 (and tp!886133 (inv!43944 (_2!19402 (_1!19403 (h!37765 (t!228587 (zeroValue!4197 (v!33949 (underlying!8079 (v!33950 (underlying!8080 (cache!3987 cacheDown!1009))))))))))) e!1762052 tp_is_empty!14155 setRes!23853 tp!886134))))

(declare-fun condSetEmpty!23853 () Bool)

(assert (=> b!2790917 (= condSetEmpty!23853 (= (_2!19403 (h!37765 (t!228587 (zeroValue!4197 (v!33949 (underlying!8079 (v!33950 (underlying!8080 (cache!3987 cacheDown!1009))))))))) ((as const (Array Context!4778 Bool)) false)))))

(declare-fun tp!886135 () Bool)

(declare-fun e!1762054 () Bool)

(declare-fun setElem!23853 () Context!4778)

(declare-fun setNonEmpty!23853 () Bool)

(assert (=> setNonEmpty!23853 (= setRes!23853 (and tp!886135 (inv!43944 setElem!23853) e!1762054))))

(declare-fun setRest!23853 () (InoxSet Context!4778))

(assert (=> setNonEmpty!23853 (= (_2!19403 (h!37765 (t!228587 (zeroValue!4197 (v!33949 (underlying!8079 (v!33950 (underlying!8080 (cache!3987 cacheDown!1009))))))))) ((_ map or) (store ((as const (Array Context!4778 Bool)) false) setElem!23853 true) setRest!23853))))

(declare-fun b!2790918 () Bool)

(declare-fun tp!886136 () Bool)

(assert (=> b!2790918 (= e!1762054 tp!886136)))

(declare-fun setIsEmpty!23853 () Bool)

(assert (=> setIsEmpty!23853 setRes!23853))

(assert (=> b!2790528 (= tp!885938 e!1762053)))

(assert (= b!2790917 b!2790916))

(assert (= (and b!2790917 condSetEmpty!23853) setIsEmpty!23853))

(assert (= (and b!2790917 (not condSetEmpty!23853)) setNonEmpty!23853))

(assert (= setNonEmpty!23853 b!2790918))

(assert (= (and b!2790528 ((_ is Cons!32345) (t!228587 (zeroValue!4197 (v!33949 (underlying!8079 (v!33950 (underlying!8080 (cache!3987 cacheDown!1009))))))))) b!2790917))

(declare-fun m!3221259 () Bool)

(assert (=> b!2790917 m!3221259))

(declare-fun m!3221261 () Bool)

(assert (=> setNonEmpty!23853 m!3221261))

(declare-fun setRes!23854 () Bool)

(declare-fun tp!886139 () Bool)

(declare-fun e!1762057 () Bool)

(declare-fun b!2790919 () Bool)

(declare-fun e!1762055 () Bool)

(assert (=> b!2790919 (= e!1762057 (and (inv!43944 (_1!19404 (_1!19405 (h!37766 (t!228588 mapValue!17940))))) e!1762055 tp_is_empty!14155 setRes!23854 tp!886139))))

(declare-fun condSetEmpty!23854 () Bool)

(assert (=> b!2790919 (= condSetEmpty!23854 (= (_2!19405 (h!37766 (t!228588 mapValue!17940))) ((as const (Array Context!4778 Bool)) false)))))

(declare-fun tp!886141 () Bool)

(declare-fun e!1762056 () Bool)

(declare-fun setNonEmpty!23854 () Bool)

(declare-fun setElem!23854 () Context!4778)

(assert (=> setNonEmpty!23854 (= setRes!23854 (and tp!886141 (inv!43944 setElem!23854) e!1762056))))

(declare-fun setRest!23854 () (InoxSet Context!4778))

(assert (=> setNonEmpty!23854 (= (_2!19405 (h!37766 (t!228588 mapValue!17940))) ((_ map or) (store ((as const (Array Context!4778 Bool)) false) setElem!23854 true) setRest!23854))))

(declare-fun b!2790920 () Bool)

(declare-fun tp!886138 () Bool)

(assert (=> b!2790920 (= e!1762055 tp!886138)))

(assert (=> b!2790593 (= tp!886026 e!1762057)))

(declare-fun setIsEmpty!23854 () Bool)

(assert (=> setIsEmpty!23854 setRes!23854))

(declare-fun b!2790921 () Bool)

(declare-fun tp!886140 () Bool)

(assert (=> b!2790921 (= e!1762056 tp!886140)))

(assert (= b!2790919 b!2790920))

(assert (= (and b!2790919 condSetEmpty!23854) setIsEmpty!23854))

(assert (= (and b!2790919 (not condSetEmpty!23854)) setNonEmpty!23854))

(assert (= setNonEmpty!23854 b!2790921))

(assert (= (and b!2790593 ((_ is Cons!32346) (t!228588 mapValue!17940))) b!2790919))

(declare-fun m!3221263 () Bool)

(assert (=> b!2790919 m!3221263))

(declare-fun m!3221265 () Bool)

(assert (=> setNonEmpty!23854 m!3221265))

(declare-fun b!2790923 () Bool)

(declare-fun e!1762058 () Bool)

(declare-fun tp!886144 () Bool)

(declare-fun tp!886143 () Bool)

(assert (=> b!2790923 (= e!1762058 (and tp!886144 tp!886143))))

(assert (=> b!2790554 (= tp!885980 e!1762058)))

(declare-fun b!2790922 () Bool)

(assert (=> b!2790922 (= e!1762058 tp_is_empty!14155)))

(declare-fun b!2790924 () Bool)

(declare-fun tp!886146 () Bool)

(assert (=> b!2790924 (= e!1762058 tp!886146)))

(declare-fun b!2790925 () Bool)

(declare-fun tp!886145 () Bool)

(declare-fun tp!886142 () Bool)

(assert (=> b!2790925 (= e!1762058 (and tp!886145 tp!886142))))

(assert (= (and b!2790554 ((_ is ElementMatch!8171) (_1!19402 (_1!19403 (h!37765 mapValue!17933))))) b!2790922))

(assert (= (and b!2790554 ((_ is Concat!13259) (_1!19402 (_1!19403 (h!37765 mapValue!17933))))) b!2790923))

(assert (= (and b!2790554 ((_ is Star!8171) (_1!19402 (_1!19403 (h!37765 mapValue!17933))))) b!2790924))

(assert (= (and b!2790554 ((_ is Union!8171) (_1!19402 (_1!19403 (h!37765 mapValue!17933))))) b!2790925))

(declare-fun b!2790926 () Bool)

(declare-fun e!1762059 () Bool)

(declare-fun tp!886151 () Bool)

(assert (=> b!2790926 (= e!1762059 tp!886151)))

(declare-fun tp!886148 () Bool)

(declare-fun e!1762060 () Bool)

(declare-fun setRes!23855 () Bool)

(declare-fun b!2790927 () Bool)

(declare-fun tp!886147 () Bool)

(assert (=> b!2790927 (= e!1762060 (and tp!886147 (inv!43944 (_2!19402 (_1!19403 (h!37765 (t!228587 mapValue!17933))))) e!1762059 tp_is_empty!14155 setRes!23855 tp!886148))))

(declare-fun condSetEmpty!23855 () Bool)

(assert (=> b!2790927 (= condSetEmpty!23855 (= (_2!19403 (h!37765 (t!228587 mapValue!17933))) ((as const (Array Context!4778 Bool)) false)))))

(declare-fun tp!886149 () Bool)

(declare-fun setNonEmpty!23855 () Bool)

(declare-fun setElem!23855 () Context!4778)

(declare-fun e!1762061 () Bool)

(assert (=> setNonEmpty!23855 (= setRes!23855 (and tp!886149 (inv!43944 setElem!23855) e!1762061))))

(declare-fun setRest!23855 () (InoxSet Context!4778))

(assert (=> setNonEmpty!23855 (= (_2!19403 (h!37765 (t!228587 mapValue!17933))) ((_ map or) (store ((as const (Array Context!4778 Bool)) false) setElem!23855 true) setRest!23855))))

(declare-fun b!2790928 () Bool)

(declare-fun tp!886150 () Bool)

(assert (=> b!2790928 (= e!1762061 tp!886150)))

(declare-fun setIsEmpty!23855 () Bool)

(assert (=> setIsEmpty!23855 setRes!23855))

(assert (=> b!2790554 (= tp!885981 e!1762060)))

(assert (= b!2790927 b!2790926))

(assert (= (and b!2790927 condSetEmpty!23855) setIsEmpty!23855))

(assert (= (and b!2790927 (not condSetEmpty!23855)) setNonEmpty!23855))

(assert (= setNonEmpty!23855 b!2790928))

(assert (= (and b!2790554 ((_ is Cons!32345) (t!228587 mapValue!17933))) b!2790927))

(declare-fun m!3221267 () Bool)

(assert (=> b!2790927 m!3221267))

(declare-fun m!3221269 () Bool)

(assert (=> setNonEmpty!23855 m!3221269))

(declare-fun b!2790929 () Bool)

(declare-fun e!1762062 () Bool)

(declare-fun tp!886152 () Bool)

(declare-fun tp!886153 () Bool)

(assert (=> b!2790929 (= e!1762062 (and tp!886152 tp!886153))))

(assert (=> b!2790555 (= tp!885983 e!1762062)))

(assert (= (and b!2790555 ((_ is Cons!32344) (exprs!2889 setElem!23829))) b!2790929))

(declare-fun b!2790930 () Bool)

(declare-fun e!1762063 () Bool)

(declare-fun tp!886154 () Bool)

(declare-fun tp!886155 () Bool)

(assert (=> b!2790930 (= e!1762063 (and tp!886154 tp!886155))))

(assert (=> b!2790507 (= tp!885916 e!1762063)))

(assert (= (and b!2790507 ((_ is Cons!32344) (exprs!2889 setElem!23818))) b!2790930))

(declare-fun b!2790931 () Bool)

(declare-fun e!1762064 () Bool)

(declare-fun tp!886156 () Bool)

(declare-fun tp!886157 () Bool)

(assert (=> b!2790931 (= e!1762064 (and tp!886156 tp!886157))))

(assert (=> b!2790565 (= tp!885993 e!1762064)))

(assert (= (and b!2790565 ((_ is Cons!32344) (exprs!2889 (_1!19404 (_1!19405 (h!37766 mapDefault!17934)))))) b!2790931))

(declare-fun b!2790932 () Bool)

(declare-fun e!1762065 () Bool)

(declare-fun tp!886158 () Bool)

(declare-fun tp!886159 () Bool)

(assert (=> b!2790932 (= e!1762065 (and tp!886158 tp!886159))))

(assert (=> b!2790608 (= tp!886047 e!1762065)))

(assert (= (and b!2790608 ((_ is Cons!32344) (exprs!2889 (_1!19404 (_1!19405 (h!37766 (minValue!4198 (v!33951 (underlying!8081 (v!33952 (underlying!8082 (cache!3988 cacheUp!890)))))))))))) b!2790932))

(declare-fun b!2790933 () Bool)

(declare-fun e!1762066 () Bool)

(declare-fun tp!886160 () Bool)

(assert (=> b!2790933 (= e!1762066 (and tp_is_empty!14155 tp!886160))))

(assert (=> b!2790571 (= tp!885999 e!1762066)))

(assert (= (and b!2790571 ((_ is Cons!32343) (t!228585 (t!228585 testedP!183)))) b!2790933))

(declare-fun b!2790934 () Bool)

(declare-fun e!1762067 () Bool)

(declare-fun tp!886161 () Bool)

(declare-fun tp!886162 () Bool)

(assert (=> b!2790934 (= e!1762067 (and tp!886161 tp!886162))))

(assert (=> b!2790602 (= tp!886040 e!1762067)))

(assert (= (and b!2790602 ((_ is Cons!32344) (exprs!2889 setElem!23840))) b!2790934))

(declare-fun condSetEmpty!23856 () Bool)

(assert (=> setNonEmpty!23841 (= condSetEmpty!23856 (= setRest!23841 ((as const (Array Context!4778 Bool)) false)))))

(declare-fun setRes!23856 () Bool)

(assert (=> setNonEmpty!23841 (= tp!886046 setRes!23856)))

(declare-fun setIsEmpty!23856 () Bool)

(assert (=> setIsEmpty!23856 setRes!23856))

(declare-fun setNonEmpty!23856 () Bool)

(declare-fun setElem!23856 () Context!4778)

(declare-fun e!1762068 () Bool)

(declare-fun tp!886164 () Bool)

(assert (=> setNonEmpty!23856 (= setRes!23856 (and tp!886164 (inv!43944 setElem!23856) e!1762068))))

(declare-fun setRest!23856 () (InoxSet Context!4778))

(assert (=> setNonEmpty!23856 (= setRest!23841 ((_ map or) (store ((as const (Array Context!4778 Bool)) false) setElem!23856 true) setRest!23856))))

(declare-fun b!2790935 () Bool)

(declare-fun tp!886163 () Bool)

(assert (=> b!2790935 (= e!1762068 tp!886163)))

(assert (= (and setNonEmpty!23841 condSetEmpty!23856) setIsEmpty!23856))

(assert (= (and setNonEmpty!23841 (not condSetEmpty!23856)) setNonEmpty!23856))

(assert (= setNonEmpty!23856 b!2790935))

(declare-fun m!3221271 () Bool)

(assert (=> setNonEmpty!23856 m!3221271))

(declare-fun b!2790936 () Bool)

(declare-fun e!1762069 () Bool)

(declare-fun tp!886165 () Bool)

(declare-fun tp!886166 () Bool)

(assert (=> b!2790936 (= e!1762069 (and tp!886165 tp!886166))))

(assert (=> b!2790566 (= tp!885995 e!1762069)))

(assert (= (and b!2790566 ((_ is Cons!32344) (exprs!2889 setElem!23832))) b!2790936))

(declare-fun b!2790937 () Bool)

(declare-fun e!1762070 () Bool)

(declare-fun tp!886167 () Bool)

(declare-fun tp!886168 () Bool)

(assert (=> b!2790937 (= e!1762070 (and tp!886167 tp!886168))))

(assert (=> b!2790609 (= tp!886049 e!1762070)))

(assert (= (and b!2790609 ((_ is Cons!32344) (exprs!2889 setElem!23842))) b!2790937))

(declare-fun condSetEmpty!23857 () Bool)

(assert (=> setNonEmpty!23828 (= condSetEmpty!23857 (= setRest!23828 ((as const (Array Context!4778 Bool)) false)))))

(declare-fun setRes!23857 () Bool)

(assert (=> setNonEmpty!23828 (= tp!885975 setRes!23857)))

(declare-fun setIsEmpty!23857 () Bool)

(assert (=> setIsEmpty!23857 setRes!23857))

(declare-fun setElem!23857 () Context!4778)

(declare-fun setNonEmpty!23857 () Bool)

(declare-fun tp!886170 () Bool)

(declare-fun e!1762071 () Bool)

(assert (=> setNonEmpty!23857 (= setRes!23857 (and tp!886170 (inv!43944 setElem!23857) e!1762071))))

(declare-fun setRest!23857 () (InoxSet Context!4778))

(assert (=> setNonEmpty!23857 (= setRest!23828 ((_ map or) (store ((as const (Array Context!4778 Bool)) false) setElem!23857 true) setRest!23857))))

(declare-fun b!2790938 () Bool)

(declare-fun tp!886169 () Bool)

(assert (=> b!2790938 (= e!1762071 tp!886169)))

(assert (= (and setNonEmpty!23828 condSetEmpty!23857) setIsEmpty!23857))

(assert (= (and setNonEmpty!23828 (not condSetEmpty!23857)) setNonEmpty!23857))

(assert (= setNonEmpty!23857 b!2790938))

(declare-fun m!3221273 () Bool)

(assert (=> setNonEmpty!23857 m!3221273))

(declare-fun setRes!23858 () Bool)

(declare-fun e!1762074 () Bool)

(declare-fun e!1762072 () Bool)

(declare-fun tp!886172 () Bool)

(declare-fun b!2790939 () Bool)

(assert (=> b!2790939 (= e!1762074 (and (inv!43944 (_1!19404 (_1!19405 (h!37766 (t!228588 mapDefault!17934))))) e!1762072 tp_is_empty!14155 setRes!23858 tp!886172))))

(declare-fun condSetEmpty!23858 () Bool)

(assert (=> b!2790939 (= condSetEmpty!23858 (= (_2!19405 (h!37766 (t!228588 mapDefault!17934))) ((as const (Array Context!4778 Bool)) false)))))

(declare-fun e!1762073 () Bool)

(declare-fun setElem!23858 () Context!4778)

(declare-fun setNonEmpty!23858 () Bool)

(declare-fun tp!886174 () Bool)

(assert (=> setNonEmpty!23858 (= setRes!23858 (and tp!886174 (inv!43944 setElem!23858) e!1762073))))

(declare-fun setRest!23858 () (InoxSet Context!4778))

(assert (=> setNonEmpty!23858 (= (_2!19405 (h!37766 (t!228588 mapDefault!17934))) ((_ map or) (store ((as const (Array Context!4778 Bool)) false) setElem!23858 true) setRest!23858))))

(declare-fun b!2790940 () Bool)

(declare-fun tp!886171 () Bool)

(assert (=> b!2790940 (= e!1762072 tp!886171)))

(assert (=> b!2790564 (= tp!885994 e!1762074)))

(declare-fun setIsEmpty!23858 () Bool)

(assert (=> setIsEmpty!23858 setRes!23858))

(declare-fun b!2790941 () Bool)

(declare-fun tp!886173 () Bool)

(assert (=> b!2790941 (= e!1762073 tp!886173)))

(assert (= b!2790939 b!2790940))

(assert (= (and b!2790939 condSetEmpty!23858) setIsEmpty!23858))

(assert (= (and b!2790939 (not condSetEmpty!23858)) setNonEmpty!23858))

(assert (= setNonEmpty!23858 b!2790941))

(assert (= (and b!2790564 ((_ is Cons!32346) (t!228588 mapDefault!17934))) b!2790939))

(declare-fun m!3221275 () Bool)

(assert (=> b!2790939 m!3221275))

(declare-fun m!3221277 () Bool)

(assert (=> setNonEmpty!23858 m!3221277))

(declare-fun e!1762075 () Bool)

(declare-fun b!2790942 () Bool)

(declare-fun tp!886176 () Bool)

(declare-fun setRes!23859 () Bool)

(declare-fun e!1762077 () Bool)

(assert (=> b!2790942 (= e!1762077 (and (inv!43944 (_1!19404 (_1!19405 (h!37766 (t!228588 (minValue!4198 (v!33951 (underlying!8081 (v!33952 (underlying!8082 (cache!3988 cacheUp!890))))))))))) e!1762075 tp_is_empty!14155 setRes!23859 tp!886176))))

(declare-fun condSetEmpty!23859 () Bool)

(assert (=> b!2790942 (= condSetEmpty!23859 (= (_2!19405 (h!37766 (t!228588 (minValue!4198 (v!33951 (underlying!8081 (v!33952 (underlying!8082 (cache!3988 cacheUp!890))))))))) ((as const (Array Context!4778 Bool)) false)))))

(declare-fun setElem!23859 () Context!4778)

(declare-fun setNonEmpty!23859 () Bool)

(declare-fun e!1762076 () Bool)

(declare-fun tp!886178 () Bool)

(assert (=> setNonEmpty!23859 (= setRes!23859 (and tp!886178 (inv!43944 setElem!23859) e!1762076))))

(declare-fun setRest!23859 () (InoxSet Context!4778))

(assert (=> setNonEmpty!23859 (= (_2!19405 (h!37766 (t!228588 (minValue!4198 (v!33951 (underlying!8081 (v!33952 (underlying!8082 (cache!3988 cacheUp!890))))))))) ((_ map or) (store ((as const (Array Context!4778 Bool)) false) setElem!23859 true) setRest!23859))))

(declare-fun b!2790943 () Bool)

(declare-fun tp!886175 () Bool)

(assert (=> b!2790943 (= e!1762075 tp!886175)))

(assert (=> b!2790607 (= tp!886048 e!1762077)))

(declare-fun setIsEmpty!23859 () Bool)

(assert (=> setIsEmpty!23859 setRes!23859))

(declare-fun b!2790944 () Bool)

(declare-fun tp!886177 () Bool)

(assert (=> b!2790944 (= e!1762076 tp!886177)))

(assert (= b!2790942 b!2790943))

(assert (= (and b!2790942 condSetEmpty!23859) setIsEmpty!23859))

(assert (= (and b!2790942 (not condSetEmpty!23859)) setNonEmpty!23859))

(assert (= setNonEmpty!23859 b!2790944))

(assert (= (and b!2790607 ((_ is Cons!32346) (t!228588 (minValue!4198 (v!33951 (underlying!8081 (v!33952 (underlying!8082 (cache!3988 cacheUp!890))))))))) b!2790942))

(declare-fun m!3221279 () Bool)

(assert (=> b!2790942 m!3221279))

(declare-fun m!3221281 () Bool)

(assert (=> setNonEmpty!23859 m!3221281))

(declare-fun b!2790946 () Bool)

(declare-fun e!1762078 () Bool)

(declare-fun tp!886181 () Bool)

(declare-fun tp!886180 () Bool)

(assert (=> b!2790946 (= e!1762078 (and tp!886181 tp!886180))))

(assert (=> b!2790601 (= tp!886037 e!1762078)))

(declare-fun b!2790945 () Bool)

(assert (=> b!2790945 (= e!1762078 tp_is_empty!14155)))

(declare-fun b!2790947 () Bool)

(declare-fun tp!886183 () Bool)

(assert (=> b!2790947 (= e!1762078 tp!886183)))

(declare-fun b!2790948 () Bool)

(declare-fun tp!886182 () Bool)

(declare-fun tp!886179 () Bool)

(assert (=> b!2790948 (= e!1762078 (and tp!886182 tp!886179))))

(assert (= (and b!2790601 ((_ is ElementMatch!8171) (_1!19402 (_1!19403 (h!37765 mapDefault!17933))))) b!2790945))

(assert (= (and b!2790601 ((_ is Concat!13259) (_1!19402 (_1!19403 (h!37765 mapDefault!17933))))) b!2790946))

(assert (= (and b!2790601 ((_ is Star!8171) (_1!19402 (_1!19403 (h!37765 mapDefault!17933))))) b!2790947))

(assert (= (and b!2790601 ((_ is Union!8171) (_1!19402 (_1!19403 (h!37765 mapDefault!17933))))) b!2790948))

(declare-fun b!2790949 () Bool)

(declare-fun e!1762079 () Bool)

(declare-fun tp!886188 () Bool)

(assert (=> b!2790949 (= e!1762079 tp!886188)))

(declare-fun e!1762080 () Bool)

(declare-fun tp!886185 () Bool)

(declare-fun b!2790950 () Bool)

(declare-fun tp!886184 () Bool)

(declare-fun setRes!23860 () Bool)

(assert (=> b!2790950 (= e!1762080 (and tp!886184 (inv!43944 (_2!19402 (_1!19403 (h!37765 (t!228587 mapDefault!17933))))) e!1762079 tp_is_empty!14155 setRes!23860 tp!886185))))

(declare-fun condSetEmpty!23860 () Bool)

(assert (=> b!2790950 (= condSetEmpty!23860 (= (_2!19403 (h!37765 (t!228587 mapDefault!17933))) ((as const (Array Context!4778 Bool)) false)))))

(declare-fun setElem!23860 () Context!4778)

(declare-fun tp!886186 () Bool)

(declare-fun e!1762081 () Bool)

(declare-fun setNonEmpty!23860 () Bool)

(assert (=> setNonEmpty!23860 (= setRes!23860 (and tp!886186 (inv!43944 setElem!23860) e!1762081))))

(declare-fun setRest!23860 () (InoxSet Context!4778))

(assert (=> setNonEmpty!23860 (= (_2!19403 (h!37765 (t!228587 mapDefault!17933))) ((_ map or) (store ((as const (Array Context!4778 Bool)) false) setElem!23860 true) setRest!23860))))

(declare-fun b!2790951 () Bool)

(declare-fun tp!886187 () Bool)

(assert (=> b!2790951 (= e!1762081 tp!886187)))

(declare-fun setIsEmpty!23860 () Bool)

(assert (=> setIsEmpty!23860 setRes!23860))

(assert (=> b!2790601 (= tp!886038 e!1762080)))

(assert (= b!2790950 b!2790949))

(assert (= (and b!2790950 condSetEmpty!23860) setIsEmpty!23860))

(assert (= (and b!2790950 (not condSetEmpty!23860)) setNonEmpty!23860))

(assert (= setNonEmpty!23860 b!2790951))

(assert (= (and b!2790601 ((_ is Cons!32345) (t!228587 mapDefault!17933))) b!2790950))

(declare-fun m!3221283 () Bool)

(assert (=> b!2790950 m!3221283))

(declare-fun m!3221285 () Bool)

(assert (=> setNonEmpty!23860 m!3221285))

(declare-fun b!2790953 () Bool)

(declare-fun e!1762082 () Bool)

(declare-fun tp!886191 () Bool)

(declare-fun tp!886190 () Bool)

(assert (=> b!2790953 (= e!1762082 (and tp!886191 tp!886190))))

(assert (=> b!2790551 (= tp!885974 e!1762082)))

(declare-fun b!2790952 () Bool)

(assert (=> b!2790952 (= e!1762082 tp_is_empty!14155)))

(declare-fun b!2790954 () Bool)

(declare-fun tp!886193 () Bool)

(assert (=> b!2790954 (= e!1762082 tp!886193)))

(declare-fun b!2790955 () Bool)

(declare-fun tp!886192 () Bool)

(declare-fun tp!886189 () Bool)

(assert (=> b!2790955 (= e!1762082 (and tp!886192 tp!886189))))

(assert (= (and b!2790551 ((_ is ElementMatch!8171) (_1!19402 (_1!19403 (h!37765 mapValue!17937))))) b!2790952))

(assert (= (and b!2790551 ((_ is Concat!13259) (_1!19402 (_1!19403 (h!37765 mapValue!17937))))) b!2790953))

(assert (= (and b!2790551 ((_ is Star!8171) (_1!19402 (_1!19403 (h!37765 mapValue!17937))))) b!2790954))

(assert (= (and b!2790551 ((_ is Union!8171) (_1!19402 (_1!19403 (h!37765 mapValue!17937))))) b!2790955))

(declare-fun b!2790956 () Bool)

(declare-fun e!1762083 () Bool)

(declare-fun tp!886198 () Bool)

(assert (=> b!2790956 (= e!1762083 tp!886198)))

(declare-fun tp!886194 () Bool)

(declare-fun setRes!23861 () Bool)

(declare-fun b!2790957 () Bool)

(declare-fun e!1762084 () Bool)

(declare-fun tp!886195 () Bool)

(assert (=> b!2790957 (= e!1762084 (and tp!886194 (inv!43944 (_2!19402 (_1!19403 (h!37765 (t!228587 mapValue!17937))))) e!1762083 tp_is_empty!14155 setRes!23861 tp!886195))))

(declare-fun condSetEmpty!23861 () Bool)

(assert (=> b!2790957 (= condSetEmpty!23861 (= (_2!19403 (h!37765 (t!228587 mapValue!17937))) ((as const (Array Context!4778 Bool)) false)))))

(declare-fun setNonEmpty!23861 () Bool)

(declare-fun tp!886196 () Bool)

(declare-fun setElem!23861 () Context!4778)

(declare-fun e!1762085 () Bool)

(assert (=> setNonEmpty!23861 (= setRes!23861 (and tp!886196 (inv!43944 setElem!23861) e!1762085))))

(declare-fun setRest!23861 () (InoxSet Context!4778))

(assert (=> setNonEmpty!23861 (= (_2!19403 (h!37765 (t!228587 mapValue!17937))) ((_ map or) (store ((as const (Array Context!4778 Bool)) false) setElem!23861 true) setRest!23861))))

(declare-fun b!2790958 () Bool)

(declare-fun tp!886197 () Bool)

(assert (=> b!2790958 (= e!1762085 tp!886197)))

(declare-fun setIsEmpty!23861 () Bool)

(assert (=> setIsEmpty!23861 setRes!23861))

(assert (=> b!2790551 (= tp!885971 e!1762084)))

(assert (= b!2790957 b!2790956))

(assert (= (and b!2790957 condSetEmpty!23861) setIsEmpty!23861))

(assert (= (and b!2790957 (not condSetEmpty!23861)) setNonEmpty!23861))

(assert (= setNonEmpty!23861 b!2790958))

(assert (= (and b!2790551 ((_ is Cons!32345) (t!228587 mapValue!17937))) b!2790957))

(declare-fun m!3221287 () Bool)

(assert (=> b!2790957 m!3221287))

(declare-fun m!3221289 () Bool)

(assert (=> setNonEmpty!23861 m!3221289))

(declare-fun condSetEmpty!23862 () Bool)

(assert (=> setNonEmpty!23839 (= condSetEmpty!23862 (= setRest!23839 ((as const (Array Context!4778 Bool)) false)))))

(declare-fun setRes!23862 () Bool)

(assert (=> setNonEmpty!23839 (= tp!886036 setRes!23862)))

(declare-fun setIsEmpty!23862 () Bool)

(assert (=> setIsEmpty!23862 setRes!23862))

(declare-fun e!1762086 () Bool)

(declare-fun setNonEmpty!23862 () Bool)

(declare-fun tp!886200 () Bool)

(declare-fun setElem!23862 () Context!4778)

(assert (=> setNonEmpty!23862 (= setRes!23862 (and tp!886200 (inv!43944 setElem!23862) e!1762086))))

(declare-fun setRest!23862 () (InoxSet Context!4778))

(assert (=> setNonEmpty!23862 (= setRest!23839 ((_ map or) (store ((as const (Array Context!4778 Bool)) false) setElem!23862 true) setRest!23862))))

(declare-fun b!2790959 () Bool)

(declare-fun tp!886199 () Bool)

(assert (=> b!2790959 (= e!1762086 tp!886199)))

(assert (= (and setNonEmpty!23839 condSetEmpty!23862) setIsEmpty!23862))

(assert (= (and setNonEmpty!23839 (not condSetEmpty!23862)) setNonEmpty!23862))

(assert (= setNonEmpty!23862 b!2790959))

(declare-fun m!3221291 () Bool)

(assert (=> setNonEmpty!23862 m!3221291))

(declare-fun b!2790960 () Bool)

(declare-fun e!1762087 () Bool)

(declare-fun tp!886201 () Bool)

(declare-fun tp!886202 () Bool)

(assert (=> b!2790960 (= e!1762087 (and tp!886201 tp!886202))))

(assert (=> b!2790548 (= tp!885978 e!1762087)))

(assert (= (and b!2790548 ((_ is Cons!32344) (exprs!2889 (_2!19402 (_1!19403 (h!37765 mapDefault!17937)))))) b!2790960))

(declare-fun b!2790961 () Bool)

(declare-fun e!1762088 () Bool)

(declare-fun tp!886203 () Bool)

(declare-fun tp!886204 () Bool)

(assert (=> b!2790961 (= e!1762088 (and tp!886203 tp!886204))))

(assert (=> b!2790596 (= tp!886024 e!1762088)))

(assert (= (and b!2790596 ((_ is Cons!32344) (exprs!2889 (_1!19404 (_1!19405 (h!37766 mapValue!17940)))))) b!2790961))

(declare-fun b!2790962 () Bool)

(declare-fun e!1762089 () Bool)

(declare-fun tp!886205 () Bool)

(assert (=> b!2790962 (= e!1762089 (and tp_is_empty!14155 tp!886205))))

(assert (=> b!2790518 (= tp!885925 e!1762089)))

(assert (= (and b!2790518 ((_ is Cons!32343) (innerList!10096 (xs!13147 (c!452950 totalInput!758))))) b!2790962))

(declare-fun b!2790963 () Bool)

(declare-fun e!1762094 () Bool)

(declare-fun tp!886211 () Bool)

(assert (=> b!2790963 (= e!1762094 tp!886211)))

(declare-fun e!1762092 () Bool)

(declare-fun tp!886210 () Bool)

(declare-fun setRes!23864 () Bool)

(declare-fun b!2790964 () Bool)

(declare-fun e!1762090 () Bool)

(declare-fun mapDefault!17942 () List!32446)

(assert (=> b!2790964 (= e!1762090 (and (inv!43944 (_1!19404 (_1!19405 (h!37766 mapDefault!17942)))) e!1762092 tp_is_empty!14155 setRes!23864 tp!886210))))

(declare-fun condSetEmpty!23863 () Bool)

(assert (=> b!2790964 (= condSetEmpty!23863 (= (_2!19405 (h!37766 mapDefault!17942)) ((as const (Array Context!4778 Bool)) false)))))

(declare-fun setRes!23863 () Bool)

(declare-fun e!1762091 () Bool)

(declare-fun e!1762095 () Bool)

(declare-fun b!2790965 () Bool)

(declare-fun mapValue!17942 () List!32446)

(declare-fun tp!886208 () Bool)

(assert (=> b!2790965 (= e!1762095 (and (inv!43944 (_1!19404 (_1!19405 (h!37766 mapValue!17942)))) e!1762091 tp_is_empty!14155 setRes!23863 tp!886208))))

(declare-fun condSetEmpty!23864 () Bool)

(assert (=> b!2790965 (= condSetEmpty!23864 (= (_2!19405 (h!37766 mapValue!17942)) ((as const (Array Context!4778 Bool)) false)))))

(declare-fun condMapEmpty!17942 () Bool)

(assert (=> mapNonEmpty!17940 (= condMapEmpty!17942 (= mapRest!17940 ((as const (Array (_ BitVec 32) List!32446)) mapDefault!17942)))))

(declare-fun mapRes!17942 () Bool)

(assert (=> mapNonEmpty!17940 (= tp!886031 (and e!1762090 mapRes!17942))))

(declare-fun setElem!23864 () Context!4778)

(declare-fun e!1762093 () Bool)

(declare-fun setNonEmpty!23863 () Bool)

(declare-fun tp!886214 () Bool)

(assert (=> setNonEmpty!23863 (= setRes!23864 (and tp!886214 (inv!43944 setElem!23864) e!1762093))))

(declare-fun setRest!23864 () (InoxSet Context!4778))

(assert (=> setNonEmpty!23863 (= (_2!19405 (h!37766 mapDefault!17942)) ((_ map or) (store ((as const (Array Context!4778 Bool)) false) setElem!23864 true) setRest!23864))))

(declare-fun mapIsEmpty!17942 () Bool)

(assert (=> mapIsEmpty!17942 mapRes!17942))

(declare-fun b!2790966 () Bool)

(declare-fun tp!886207 () Bool)

(assert (=> b!2790966 (= e!1762093 tp!886207)))

(declare-fun setElem!23863 () Context!4778)

(declare-fun setNonEmpty!23864 () Bool)

(declare-fun tp!886209 () Bool)

(assert (=> setNonEmpty!23864 (= setRes!23863 (and tp!886209 (inv!43944 setElem!23863) e!1762094))))

(declare-fun setRest!23863 () (InoxSet Context!4778))

(assert (=> setNonEmpty!23864 (= (_2!19405 (h!37766 mapValue!17942)) ((_ map or) (store ((as const (Array Context!4778 Bool)) false) setElem!23863 true) setRest!23863))))

(declare-fun mapNonEmpty!17942 () Bool)

(declare-fun tp!886213 () Bool)

(assert (=> mapNonEmpty!17942 (= mapRes!17942 (and tp!886213 e!1762095))))

(declare-fun mapRest!17942 () (Array (_ BitVec 32) List!32446))

(declare-fun mapKey!17942 () (_ BitVec 32))

(assert (=> mapNonEmpty!17942 (= mapRest!17940 (store mapRest!17942 mapKey!17942 mapValue!17942))))

(declare-fun b!2790967 () Bool)

(declare-fun tp!886212 () Bool)

(assert (=> b!2790967 (= e!1762092 tp!886212)))

(declare-fun b!2790968 () Bool)

(declare-fun tp!886206 () Bool)

(assert (=> b!2790968 (= e!1762091 tp!886206)))

(declare-fun setIsEmpty!23863 () Bool)

(assert (=> setIsEmpty!23863 setRes!23864))

(declare-fun setIsEmpty!23864 () Bool)

(assert (=> setIsEmpty!23864 setRes!23863))

(assert (= (and mapNonEmpty!17940 condMapEmpty!17942) mapIsEmpty!17942))

(assert (= (and mapNonEmpty!17940 (not condMapEmpty!17942)) mapNonEmpty!17942))

(assert (= b!2790965 b!2790968))

(assert (= (and b!2790965 condSetEmpty!23864) setIsEmpty!23864))

(assert (= (and b!2790965 (not condSetEmpty!23864)) setNonEmpty!23864))

(assert (= setNonEmpty!23864 b!2790963))

(assert (= (and mapNonEmpty!17942 ((_ is Cons!32346) mapValue!17942)) b!2790965))

(assert (= b!2790964 b!2790967))

(assert (= (and b!2790964 condSetEmpty!23863) setIsEmpty!23863))

(assert (= (and b!2790964 (not condSetEmpty!23863)) setNonEmpty!23863))

(assert (= setNonEmpty!23863 b!2790966))

(assert (= (and mapNonEmpty!17940 ((_ is Cons!32346) mapDefault!17942)) b!2790964))

(declare-fun m!3221293 () Bool)

(assert (=> setNonEmpty!23863 m!3221293))

(declare-fun m!3221295 () Bool)

(assert (=> mapNonEmpty!17942 m!3221295))

(declare-fun m!3221297 () Bool)

(assert (=> b!2790964 m!3221297))

(declare-fun m!3221299 () Bool)

(assert (=> setNonEmpty!23864 m!3221299))

(declare-fun m!3221301 () Bool)

(assert (=> b!2790965 m!3221301))

(declare-fun condSetEmpty!23865 () Bool)

(assert (=> setNonEmpty!23821 (= condSetEmpty!23865 (= setRest!23821 ((as const (Array Context!4778 Bool)) false)))))

(declare-fun setRes!23865 () Bool)

(assert (=> setNonEmpty!23821 (= tp!885939 setRes!23865)))

(declare-fun setIsEmpty!23865 () Bool)

(assert (=> setIsEmpty!23865 setRes!23865))

(declare-fun setNonEmpty!23865 () Bool)

(declare-fun setElem!23865 () Context!4778)

(declare-fun tp!886216 () Bool)

(declare-fun e!1762096 () Bool)

(assert (=> setNonEmpty!23865 (= setRes!23865 (and tp!886216 (inv!43944 setElem!23865) e!1762096))))

(declare-fun setRest!23865 () (InoxSet Context!4778))

(assert (=> setNonEmpty!23865 (= setRest!23821 ((_ map or) (store ((as const (Array Context!4778 Bool)) false) setElem!23865 true) setRest!23865))))

(declare-fun b!2790969 () Bool)

(declare-fun tp!886215 () Bool)

(assert (=> b!2790969 (= e!1762096 tp!886215)))

(assert (= (and setNonEmpty!23821 condSetEmpty!23865) setIsEmpty!23865))

(assert (= (and setNonEmpty!23821 (not condSetEmpty!23865)) setNonEmpty!23865))

(assert (= setNonEmpty!23865 b!2790969))

(declare-fun m!3221303 () Bool)

(assert (=> setNonEmpty!23865 m!3221303))

(declare-fun condSetEmpty!23866 () Bool)

(assert (=> setNonEmpty!23837 (= condSetEmpty!23866 (= setRest!23838 ((as const (Array Context!4778 Bool)) false)))))

(declare-fun setRes!23866 () Bool)

(assert (=> setNonEmpty!23837 (= tp!886032 setRes!23866)))

(declare-fun setIsEmpty!23866 () Bool)

(assert (=> setIsEmpty!23866 setRes!23866))

(declare-fun e!1762097 () Bool)

(declare-fun tp!886218 () Bool)

(declare-fun setNonEmpty!23866 () Bool)

(declare-fun setElem!23866 () Context!4778)

(assert (=> setNonEmpty!23866 (= setRes!23866 (and tp!886218 (inv!43944 setElem!23866) e!1762097))))

(declare-fun setRest!23866 () (InoxSet Context!4778))

(assert (=> setNonEmpty!23866 (= setRest!23838 ((_ map or) (store ((as const (Array Context!4778 Bool)) false) setElem!23866 true) setRest!23866))))

(declare-fun b!2790970 () Bool)

(declare-fun tp!886217 () Bool)

(assert (=> b!2790970 (= e!1762097 tp!886217)))

(assert (= (and setNonEmpty!23837 condSetEmpty!23866) setIsEmpty!23866))

(assert (= (and setNonEmpty!23837 (not condSetEmpty!23866)) setNonEmpty!23866))

(assert (= setNonEmpty!23866 b!2790970))

(declare-fun m!3221305 () Bool)

(assert (=> setNonEmpty!23866 m!3221305))

(declare-fun condSetEmpty!23867 () Bool)

(assert (=> setNonEmpty!23822 (= condSetEmpty!23867 (= setRest!23822 ((as const (Array Context!4778 Bool)) false)))))

(declare-fun setRes!23867 () Bool)

(assert (=> setNonEmpty!23822 (= tp!885944 setRes!23867)))

(declare-fun setIsEmpty!23867 () Bool)

(assert (=> setIsEmpty!23867 setRes!23867))

(declare-fun setNonEmpty!23867 () Bool)

(declare-fun setElem!23867 () Context!4778)

(declare-fun e!1762098 () Bool)

(declare-fun tp!886220 () Bool)

(assert (=> setNonEmpty!23867 (= setRes!23867 (and tp!886220 (inv!43944 setElem!23867) e!1762098))))

(declare-fun setRest!23867 () (InoxSet Context!4778))

(assert (=> setNonEmpty!23867 (= setRest!23822 ((_ map or) (store ((as const (Array Context!4778 Bool)) false) setElem!23867 true) setRest!23867))))

(declare-fun b!2790971 () Bool)

(declare-fun tp!886219 () Bool)

(assert (=> b!2790971 (= e!1762098 tp!886219)))

(assert (= (and setNonEmpty!23822 condSetEmpty!23867) setIsEmpty!23867))

(assert (= (and setNonEmpty!23822 (not condSetEmpty!23867)) setNonEmpty!23867))

(assert (= setNonEmpty!23867 b!2790971))

(declare-fun m!3221307 () Bool)

(assert (=> setNonEmpty!23867 m!3221307))

(declare-fun b!2790973 () Bool)

(declare-fun e!1762099 () Bool)

(declare-fun tp!886223 () Bool)

(declare-fun tp!886222 () Bool)

(assert (=> b!2790973 (= e!1762099 (and tp!886223 tp!886222))))

(assert (=> b!2790547 (= tp!885973 e!1762099)))

(declare-fun b!2790972 () Bool)

(assert (=> b!2790972 (= e!1762099 tp_is_empty!14155)))

(declare-fun b!2790974 () Bool)

(declare-fun tp!886225 () Bool)

(assert (=> b!2790974 (= e!1762099 tp!886225)))

(declare-fun b!2790975 () Bool)

(declare-fun tp!886224 () Bool)

(declare-fun tp!886221 () Bool)

(assert (=> b!2790975 (= e!1762099 (and tp!886224 tp!886221))))

(assert (= (and b!2790547 ((_ is ElementMatch!8171) (_1!19402 (_1!19403 (h!37765 mapDefault!17937))))) b!2790972))

(assert (= (and b!2790547 ((_ is Concat!13259) (_1!19402 (_1!19403 (h!37765 mapDefault!17937))))) b!2790973))

(assert (= (and b!2790547 ((_ is Star!8171) (_1!19402 (_1!19403 (h!37765 mapDefault!17937))))) b!2790974))

(assert (= (and b!2790547 ((_ is Union!8171) (_1!19402 (_1!19403 (h!37765 mapDefault!17937))))) b!2790975))

(declare-fun b!2790976 () Bool)

(declare-fun e!1762100 () Bool)

(declare-fun tp!886230 () Bool)

(assert (=> b!2790976 (= e!1762100 tp!886230)))

(declare-fun e!1762101 () Bool)

(declare-fun b!2790977 () Bool)

(declare-fun tp!886227 () Bool)

(declare-fun tp!886226 () Bool)

(declare-fun setRes!23868 () Bool)

(assert (=> b!2790977 (= e!1762101 (and tp!886226 (inv!43944 (_2!19402 (_1!19403 (h!37765 (t!228587 mapDefault!17937))))) e!1762100 tp_is_empty!14155 setRes!23868 tp!886227))))

(declare-fun condSetEmpty!23868 () Bool)

(assert (=> b!2790977 (= condSetEmpty!23868 (= (_2!19403 (h!37765 (t!228587 mapDefault!17937))) ((as const (Array Context!4778 Bool)) false)))))

(declare-fun tp!886228 () Bool)

(declare-fun e!1762102 () Bool)

(declare-fun setNonEmpty!23868 () Bool)

(declare-fun setElem!23868 () Context!4778)

(assert (=> setNonEmpty!23868 (= setRes!23868 (and tp!886228 (inv!43944 setElem!23868) e!1762102))))

(declare-fun setRest!23868 () (InoxSet Context!4778))

(assert (=> setNonEmpty!23868 (= (_2!19403 (h!37765 (t!228587 mapDefault!17937))) ((_ map or) (store ((as const (Array Context!4778 Bool)) false) setElem!23868 true) setRest!23868))))

(declare-fun b!2790978 () Bool)

(declare-fun tp!886229 () Bool)

(assert (=> b!2790978 (= e!1762102 tp!886229)))

(declare-fun setIsEmpty!23868 () Bool)

(assert (=> setIsEmpty!23868 setRes!23868))

(assert (=> b!2790547 (= tp!885976 e!1762101)))

(assert (= b!2790977 b!2790976))

(assert (= (and b!2790977 condSetEmpty!23868) setIsEmpty!23868))

(assert (= (and b!2790977 (not condSetEmpty!23868)) setNonEmpty!23868))

(assert (= setNonEmpty!23868 b!2790978))

(assert (= (and b!2790547 ((_ is Cons!32345) (t!228587 mapDefault!17937))) b!2790977))

(declare-fun m!3221309 () Bool)

(assert (=> b!2790977 m!3221309))

(declare-fun m!3221311 () Bool)

(assert (=> setNonEmpty!23868 m!3221311))

(declare-fun b!2790979 () Bool)

(declare-fun e!1762103 () Bool)

(declare-fun tp!886231 () Bool)

(declare-fun tp!886232 () Bool)

(assert (=> b!2790979 (= e!1762103 (and tp!886231 tp!886232))))

(assert (=> b!2790594 (= tp!886025 e!1762103)))

(assert (= (and b!2790594 ((_ is Cons!32344) (exprs!2889 setElem!23838))) b!2790979))

(declare-fun e!1762104 () Bool)

(declare-fun b!2790980 () Bool)

(declare-fun tp!886233 () Bool)

(declare-fun tp!886235 () Bool)

(assert (=> b!2790980 (= e!1762104 (and (inv!43940 (left!24513 (left!24513 (c!452950 totalInput!758)))) tp!886235 (inv!43940 (right!24843 (left!24513 (c!452950 totalInput!758)))) tp!886233))))

(declare-fun b!2790982 () Bool)

(declare-fun e!1762105 () Bool)

(declare-fun tp!886234 () Bool)

(assert (=> b!2790982 (= e!1762105 tp!886234)))

(declare-fun b!2790981 () Bool)

(assert (=> b!2790981 (= e!1762104 (and (inv!43947 (xs!13147 (left!24513 (c!452950 totalInput!758)))) e!1762105))))

(assert (=> b!2790516 (= tp!885926 (and (inv!43940 (left!24513 (c!452950 totalInput!758))) e!1762104))))

(assert (= (and b!2790516 ((_ is Node!10036) (left!24513 (c!452950 totalInput!758)))) b!2790980))

(assert (= b!2790981 b!2790982))

(assert (= (and b!2790516 ((_ is Leaf!15290) (left!24513 (c!452950 totalInput!758)))) b!2790981))

(declare-fun m!3221313 () Bool)

(assert (=> b!2790980 m!3221313))

(declare-fun m!3221315 () Bool)

(assert (=> b!2790980 m!3221315))

(declare-fun m!3221317 () Bool)

(assert (=> b!2790981 m!3221317))

(assert (=> b!2790516 m!3220839))

(declare-fun tp!886236 () Bool)

(declare-fun e!1762106 () Bool)

(declare-fun tp!886238 () Bool)

(declare-fun b!2790983 () Bool)

(assert (=> b!2790983 (= e!1762106 (and (inv!43940 (left!24513 (right!24843 (c!452950 totalInput!758)))) tp!886238 (inv!43940 (right!24843 (right!24843 (c!452950 totalInput!758)))) tp!886236))))

(declare-fun b!2790985 () Bool)

(declare-fun e!1762107 () Bool)

(declare-fun tp!886237 () Bool)

(assert (=> b!2790985 (= e!1762107 tp!886237)))

(declare-fun b!2790984 () Bool)

(assert (=> b!2790984 (= e!1762106 (and (inv!43947 (xs!13147 (right!24843 (c!452950 totalInput!758)))) e!1762107))))

(assert (=> b!2790516 (= tp!885924 (and (inv!43940 (right!24843 (c!452950 totalInput!758))) e!1762106))))

(assert (= (and b!2790516 ((_ is Node!10036) (right!24843 (c!452950 totalInput!758)))) b!2790983))

(assert (= b!2790984 b!2790985))

(assert (= (and b!2790516 ((_ is Leaf!15290) (right!24843 (c!452950 totalInput!758)))) b!2790984))

(declare-fun m!3221319 () Bool)

(assert (=> b!2790983 m!3221319))

(declare-fun m!3221321 () Bool)

(assert (=> b!2790983 m!3221321))

(declare-fun m!3221323 () Bool)

(assert (=> b!2790984 m!3221323))

(assert (=> b!2790516 m!3220841))

(declare-fun b!2790986 () Bool)

(declare-fun e!1762108 () Bool)

(declare-fun tp!886239 () Bool)

(declare-fun tp!886240 () Bool)

(assert (=> b!2790986 (= e!1762108 (and tp!886239 tp!886240))))

(assert (=> b!2790530 (= tp!885946 e!1762108)))

(assert (= (and b!2790530 ((_ is Cons!32344) (exprs!2889 (_2!19402 (_1!19403 (h!37765 (minValue!4197 (v!33949 (underlying!8079 (v!33950 (underlying!8080 (cache!3987 cacheDown!1009)))))))))))) b!2790986))

(declare-fun tp!886242 () Bool)

(declare-fun b!2790987 () Bool)

(declare-fun setRes!23869 () Bool)

(declare-fun e!1762109 () Bool)

(declare-fun e!1762111 () Bool)

(assert (=> b!2790987 (= e!1762111 (and (inv!43944 (_1!19404 (_1!19405 (h!37766 (t!228588 mapDefault!17940))))) e!1762109 tp_is_empty!14155 setRes!23869 tp!886242))))

(declare-fun condSetEmpty!23869 () Bool)

(assert (=> b!2790987 (= condSetEmpty!23869 (= (_2!19405 (h!37766 (t!228588 mapDefault!17940))) ((as const (Array Context!4778 Bool)) false)))))

(declare-fun setElem!23869 () Context!4778)

(declare-fun tp!886244 () Bool)

(declare-fun e!1762110 () Bool)

(declare-fun setNonEmpty!23869 () Bool)

(assert (=> setNonEmpty!23869 (= setRes!23869 (and tp!886244 (inv!43944 setElem!23869) e!1762110))))

(declare-fun setRest!23869 () (InoxSet Context!4778))

(assert (=> setNonEmpty!23869 (= (_2!19405 (h!37766 (t!228588 mapDefault!17940))) ((_ map or) (store ((as const (Array Context!4778 Bool)) false) setElem!23869 true) setRest!23869))))

(declare-fun b!2790988 () Bool)

(declare-fun tp!886241 () Bool)

(assert (=> b!2790988 (= e!1762109 tp!886241)))

(assert (=> b!2790592 (= tp!886028 e!1762111)))

(declare-fun setIsEmpty!23869 () Bool)

(assert (=> setIsEmpty!23869 setRes!23869))

(declare-fun b!2790989 () Bool)

(declare-fun tp!886243 () Bool)

(assert (=> b!2790989 (= e!1762110 tp!886243)))

(assert (= b!2790987 b!2790988))

(assert (= (and b!2790987 condSetEmpty!23869) setIsEmpty!23869))

(assert (= (and b!2790987 (not condSetEmpty!23869)) setNonEmpty!23869))

(assert (= setNonEmpty!23869 b!2790989))

(assert (= (and b!2790592 ((_ is Cons!32346) (t!228588 mapDefault!17940))) b!2790987))

(declare-fun m!3221325 () Bool)

(assert (=> b!2790987 m!3221325))

(declare-fun m!3221327 () Bool)

(assert (=> setNonEmpty!23869 m!3221327))

(declare-fun b!2790990 () Bool)

(declare-fun e!1762112 () Bool)

(declare-fun tp!886245 () Bool)

(declare-fun tp!886246 () Bool)

(assert (=> b!2790990 (= e!1762112 (and tp!886245 tp!886246))))

(assert (=> b!2790527 (= tp!885941 e!1762112)))

(assert (= (and b!2790527 ((_ is Cons!32344) (exprs!2889 (_2!19402 (_1!19403 (h!37765 (zeroValue!4197 (v!33949 (underlying!8079 (v!33950 (underlying!8080 (cache!3987 cacheDown!1009)))))))))))) b!2790990))

(declare-fun condSetEmpty!23870 () Bool)

(assert (=> setNonEmpty!23829 (= condSetEmpty!23870 (= setRest!23829 ((as const (Array Context!4778 Bool)) false)))))

(declare-fun setRes!23870 () Bool)

(assert (=> setNonEmpty!23829 (= tp!885982 setRes!23870)))

(declare-fun setIsEmpty!23870 () Bool)

(assert (=> setIsEmpty!23870 setRes!23870))

(declare-fun setNonEmpty!23870 () Bool)

(declare-fun tp!886248 () Bool)

(declare-fun setElem!23870 () Context!4778)

(declare-fun e!1762113 () Bool)

(assert (=> setNonEmpty!23870 (= setRes!23870 (and tp!886248 (inv!43944 setElem!23870) e!1762113))))

(declare-fun setRest!23870 () (InoxSet Context!4778))

(assert (=> setNonEmpty!23870 (= setRest!23829 ((_ map or) (store ((as const (Array Context!4778 Bool)) false) setElem!23870 true) setRest!23870))))

(declare-fun b!2790991 () Bool)

(declare-fun tp!886247 () Bool)

(assert (=> b!2790991 (= e!1762113 tp!886247)))

(assert (= (and setNonEmpty!23829 condSetEmpty!23870) setIsEmpty!23870))

(assert (= (and setNonEmpty!23829 (not condSetEmpty!23870)) setNonEmpty!23870))

(assert (= setNonEmpty!23870 b!2790991))

(declare-fun m!3221329 () Bool)

(assert (=> setNonEmpty!23870 m!3221329))

(declare-fun b!2790992 () Bool)

(declare-fun e!1762114 () Bool)

(declare-fun tp!886249 () Bool)

(declare-fun tp!886250 () Bool)

(assert (=> b!2790992 (= e!1762114 (and tp!886249 tp!886250))))

(assert (=> b!2790552 (= tp!885970 e!1762114)))

(assert (= (and b!2790552 ((_ is Cons!32344) (exprs!2889 setElem!23828))) b!2790992))

(declare-fun condSetEmpty!23871 () Bool)

(assert (=> setNonEmpty!23818 (= condSetEmpty!23871 (= setRest!23818 ((as const (Array Context!4778 Bool)) false)))))

(declare-fun setRes!23871 () Bool)

(assert (=> setNonEmpty!23818 (= tp!885917 setRes!23871)))

(declare-fun setIsEmpty!23871 () Bool)

(assert (=> setIsEmpty!23871 setRes!23871))

(declare-fun setElem!23871 () Context!4778)

(declare-fun setNonEmpty!23871 () Bool)

(declare-fun tp!886252 () Bool)

(declare-fun e!1762115 () Bool)

(assert (=> setNonEmpty!23871 (= setRes!23871 (and tp!886252 (inv!43944 setElem!23871) e!1762115))))

(declare-fun setRest!23871 () (InoxSet Context!4778))

(assert (=> setNonEmpty!23871 (= setRest!23818 ((_ map or) (store ((as const (Array Context!4778 Bool)) false) setElem!23871 true) setRest!23871))))

(declare-fun b!2790993 () Bool)

(declare-fun tp!886251 () Bool)

(assert (=> b!2790993 (= e!1762115 tp!886251)))

(assert (= (and setNonEmpty!23818 condSetEmpty!23871) setIsEmpty!23871))

(assert (= (and setNonEmpty!23818 (not condSetEmpty!23871)) setNonEmpty!23871))

(assert (= setNonEmpty!23871 b!2790993))

(declare-fun m!3221331 () Bool)

(assert (=> setNonEmpty!23871 m!3221331))

(declare-fun b!2790994 () Bool)

(declare-fun e!1762116 () Bool)

(declare-fun tp!886253 () Bool)

(declare-fun tp!886254 () Bool)

(assert (=> b!2790994 (= e!1762116 (and tp!886253 tp!886254))))

(assert (=> b!2790606 (= tp!886045 e!1762116)))

(assert (= (and b!2790606 ((_ is Cons!32344) (exprs!2889 setElem!23841))) b!2790994))

(declare-fun b!2790995 () Bool)

(declare-fun e!1762117 () Bool)

(declare-fun tp!886255 () Bool)

(declare-fun tp!886256 () Bool)

(assert (=> b!2790995 (= e!1762117 (and tp!886255 tp!886256))))

(assert (=> b!2790553 (= tp!885984 e!1762117)))

(assert (= (and b!2790553 ((_ is Cons!32344) (exprs!2889 (_2!19402 (_1!19403 (h!37765 mapValue!17933)))))) b!2790995))

(declare-fun b_lambda!83603 () Bool)

(assert (= b_lambda!83601 (or d!811308 b_lambda!83603)))

(declare-fun bs!511496 () Bool)

(declare-fun d!811504 () Bool)

(assert (= bs!511496 (and d!811504 d!811308)))

(declare-fun validRegex!3339 (Regex!8171) Bool)

(assert (=> bs!511496 (= (dynLambda!13615 lambda!102383 (h!37764 (exprs!2889 setElem!23815))) (validRegex!3339 (h!37764 (exprs!2889 setElem!23815))))))

(declare-fun m!3221333 () Bool)

(assert (=> bs!511496 m!3221333))

(assert (=> b!2790693 d!811504))

(check-sat (not b!2790688) (not setNonEmpty!23863) (not b!2790994) (not b!2790679) (not b!2790896) (not b!2790738) (not bm!182620) (not b!2790779) (not b!2790983) (not b!2790985) (not d!811492) (not b!2790971) (not setNonEmpty!23866) (not b!2790931) (not bm!182625) (not b!2790658) (not b!2790903) (not setNonEmpty!23846) (not b!2790707) (not b!2790979) (not d!811370) (not b!2790883) (not b!2790924) (not b!2790762) (not b!2790657) (not b!2790901) (not b!2790915) (not b!2790992) (not b!2790895) (not d!811468) (not b!2790720) (not b!2790878) (not setNonEmpty!23854) (not b!2790921) (not setNonEmpty!23871) (not b!2790900) (not b!2790781) (not b!2790702) (not b!2790776) (not b!2790848) (not d!811362) (not b!2790876) (not b!2790916) (not b!2790958) (not b!2790950) (not b!2790954) (not b!2790636) (not b!2790754) (not d!811374) (not b!2790932) (not setNonEmpty!23867) (not b!2790765) (not d!811460) (not b!2790757) (not setNonEmpty!23869) (not b!2790898) (not b!2790907) (not d!811428) (not b!2790836) (not b!2790640) (not b!2790782) (not b!2790715) (not d!811430) (not d!811424) (not d!811488) (not b!2790942) (not b!2790910) (not b!2790705) (not b!2790764) (not b!2790699) (not b!2790906) (not d!811464) (not b!2790850) (not b!2790635) (not b!2790627) (not setNonEmpty!23844) (not b!2790783) (not d!811368) (not setNonEmpty!23862) (not b!2790908) (not b!2790962) (not b!2790976) (not setNonEmpty!23851) (not b!2790959) (not b!2790755) (not d!811360) (not b!2790933) (not b!2790989) (not b!2790663) (not b!2790740) (not setNonEmpty!23847) (not mapNonEmpty!17941) (not b!2790909) (not d!811438) (not b!2790843) (not b!2790728) (not b!2790977) (not b!2790785) (not b!2790969) (not b!2790844) (not d!811356) (not b!2790859) (not setNonEmpty!23857) (not b!2790700) (not b!2790939) (not setNonEmpty!23861) (not b!2790957) (not setNonEmpty!23853) (not b!2790897) (not b!2790930) (not d!811394) (not b!2790882) b_and!203737 b_and!203741 (not b!2790709) (not b!2790911) (not b!2790975) (not b!2790857) (not b!2790872) (not b!2790926) (not b!2790718) (not d!811416) (not b!2790771) (not b!2790873) (not b!2790871) (not d!811354) (not b!2790716) (not d!811446) (not b!2790874) (not setNonEmpty!23856) (not b!2790935) (not b!2790706) (not b!2790984) (not b!2790953) (not b!2790870) (not b!2790919) (not b!2790923) (not b!2790777) (not b!2790703) (not b!2790867) (not d!811366) (not d!811378) (not b!2790981) (not b!2790730) b_and!203735 (not d!811400) (not b!2790928) (not b!2790995) (not b!2790927) (not setNonEmpty!23864) (not b!2790856) (not bm!182622) (not b!2790666) (not b!2790862) (not b!2790925) (not b!2790875) (not setNonEmpty!23850) (not b!2790899) (not d!811344) (not b!2790963) (not b!2790681) (not b!2790682) (not b!2790904) (not b!2790993) (not b!2790708) (not b!2790761) (not b!2790990) (not b!2790516) (not b!2790955) (not b_lambda!83603) (not setNonEmpty!23860) (not d!811364) (not b!2790973) (not b!2790966) (not b!2790662) (not b!2790943) (not d!811500) (not b!2790683) (not d!811458) (not b!2790937) (not b!2790694) (not b!2790780) (not b!2790968) (not b!2790918) (not b!2790879) (not b!2790719) (not d!811462) (not setNonEmpty!23858) (not b!2790986) (not setNonEmpty!23852) (not b!2790864) (not b!2790880) (not b!2790951) (not b!2790987) (not setNonEmpty!23870) (not b!2790947) (not b!2790944) (not d!811352) (not b!2790767) (not bs!511496) (not b!2790866) (not b!2790929) (not b!2790695) (not b!2790938) (not b!2790736) (not b!2790956) (not b!2790868) (not d!811388) (not b!2790784) (not setNonEmpty!23868) (not d!811496) (not b!2790725) (not b!2790949) (not b!2790982) (not b!2790988) (not d!811470) (not setNonEmpty!23843) (not b!2790649) (not b!2790773) (not bm!182623) (not b!2790964) (not d!811486) (not d!811422) (not b!2790961) (not b!2790623) (not d!811420) tp_is_empty!14155 (not b!2790978) b_and!203739 (not setNonEmpty!23845) (not b!2790620) (not b!2790769) (not d!811376) (not mapNonEmpty!17942) (not d!811410) (not b!2790913) (not b!2790621) (not b!2790664) (not b!2790869) (not d!811448) (not b_next!79705) (not b!2790863) (not b!2790920) (not b!2790877) (not b!2790970) (not b!2790941) (not b!2790902) (not b!2790965) (not b!2790934) (not setNonEmpty!23855) (not setNonEmpty!23849) (not b!2790936) (not d!811398) (not b!2790775) (not b!2790881) (not b!2790860) (not b!2790625) (not b!2790917) (not d!811436) (not b!2790684) (not d!811372) (not b!2790967) (not b!2790960) (not b!2790632) (not setNonEmpty!23848) (not b!2790914) (not b!2790686) (not bm!182624) (not d!811472) (not b!2790865) (not b!2790948) (not b!2790680) (not d!811466) (not b_next!79701) (not setNonEmpty!23865) (not b!2790946) (not b!2790974) (not b!2790641) (not d!811392) (not b_next!79703) (not b!2790710) (not d!811444) (not d!811502) (not setNonEmpty!23859) (not b!2790991) (not b!2790980) (not b!2790940) (not b_next!79707) (not d!811432))
(check-sat b_and!203735 b_and!203739 (not b_next!79705) (not b_next!79707) b_and!203737 b_and!203741 (not b_next!79703) (not b_next!79701))
