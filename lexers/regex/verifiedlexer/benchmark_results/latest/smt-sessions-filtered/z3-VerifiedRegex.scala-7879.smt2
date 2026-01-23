; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!412092 () Bool)

(assert start!412092)

(declare-fun b!4291015 () Bool)

(declare-fun b_free!127423 () Bool)

(declare-fun b_next!128127 () Bool)

(assert (=> b!4291015 (= b_free!127423 (not b_next!128127))))

(declare-fun tp!1316118 () Bool)

(declare-fun b_and!338639 () Bool)

(assert (=> b!4291015 (= tp!1316118 b_and!338639)))

(declare-fun b!4290994 () Bool)

(declare-fun b_free!127425 () Bool)

(declare-fun b_next!128129 () Bool)

(assert (=> b!4290994 (= b_free!127425 (not b_next!128129))))

(declare-fun tp!1316119 () Bool)

(declare-fun b_and!338641 () Bool)

(assert (=> b!4290994 (= tp!1316119 b_and!338641)))

(declare-fun b!4290998 () Bool)

(declare-fun b_free!127427 () Bool)

(declare-fun b_next!128131 () Bool)

(assert (=> b!4290998 (= b_free!127427 (not b_next!128131))))

(declare-fun tp!1316121 () Bool)

(declare-fun b_and!338643 () Bool)

(assert (=> b!4290998 (= tp!1316121 b_and!338643)))

(declare-fun b!4291014 () Bool)

(declare-fun b_free!127429 () Bool)

(declare-fun b_next!128133 () Bool)

(assert (=> b!4291014 (= b_free!127429 (not b_next!128133))))

(declare-fun tp!1316116 () Bool)

(declare-fun b_and!338645 () Bool)

(assert (=> b!4291014 (= tp!1316116 b_and!338645)))

(declare-fun b!4291013 () Bool)

(declare-fun b_free!127431 () Bool)

(declare-fun b_next!128135 () Bool)

(assert (=> b!4291013 (= b_free!127431 (not b_next!128135))))

(declare-fun tp!1316103 () Bool)

(declare-fun b_and!338647 () Bool)

(assert (=> b!4291013 (= tp!1316103 b_and!338647)))

(declare-fun b!4291007 () Bool)

(declare-fun b_free!127433 () Bool)

(declare-fun b_next!128137 () Bool)

(assert (=> b!4291007 (= b_free!127433 (not b_next!128137))))

(declare-fun tp!1316110 () Bool)

(declare-fun b_and!338649 () Bool)

(assert (=> b!4291007 (= tp!1316110 b_and!338649)))

(declare-fun b!4290987 () Bool)

(declare-fun e!2665605 () Bool)

(declare-fun e!2665611 () Bool)

(declare-datatypes ((C!26112 0))(
  ( (C!26113 (val!15382 Int)) )
))
(declare-datatypes ((Regex!12957 0))(
  ( (ElementMatch!12957 (c!730315 C!26112)) (Concat!21276 (regOne!26426 Regex!12957) (regTwo!26426 Regex!12957)) (EmptyExpr!12957) (Star!12957 (reg!13286 Regex!12957)) (EmptyLang!12957) (Union!12957 (regOne!26427 Regex!12957) (regTwo!26427 Regex!12957)) )
))
(declare-datatypes ((List!47815 0))(
  ( (Nil!47691) (Cons!47691 (h!53111 Regex!12957) (t!354419 List!47815)) )
))
(declare-datatypes ((Context!5694 0))(
  ( (Context!5695 (exprs!3347 List!47815)) )
))
(declare-datatypes ((tuple3!5416 0))(
  ( (tuple3!5417 (_1!25884 Regex!12957) (_2!25884 Context!5694) (_3!3215 C!26112)) )
))
(define-sort InoxSet (T) (Array T Bool))

(declare-datatypes ((tuple2!45338 0))(
  ( (tuple2!45339 (_1!25885 tuple3!5416) (_2!25885 (InoxSet Context!5694))) )
))
(declare-datatypes ((List!47816 0))(
  ( (Nil!47692) (Cons!47692 (h!53112 tuple2!45338) (t!354420 List!47816)) )
))
(declare-datatypes ((array!15724 0))(
  ( (array!15725 (arr!7022 (Array (_ BitVec 32) List!47816)) (size!35004 (_ BitVec 32))) )
))
(declare-datatypes ((array!15726 0))(
  ( (array!15727 (arr!7023 (Array (_ BitVec 32) (_ BitVec 64))) (size!35005 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!8796 0))(
  ( (LongMapFixedSize!8797 (defaultEntry!4783 Int) (mask!12846 (_ BitVec 32)) (extraKeys!4647 (_ BitVec 32)) (zeroValue!4657 List!47816) (minValue!4657 List!47816) (_size!8839 (_ BitVec 32)) (_keys!4698 array!15726) (_values!4679 array!15724) (_vacant!4459 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!17401 0))(
  ( (Cell!17402 (v!41608 LongMapFixedSize!8796)) )
))
(declare-datatypes ((MutLongMap!4398 0))(
  ( (LongMap!4398 (underlying!9025 Cell!17401)) (MutLongMapExt!4397 (__x!29219 Int)) )
))
(declare-fun lt!1516894 () MutLongMap!4398)

(get-info :version)

(assert (=> b!4290987 (= e!2665605 (and e!2665611 ((_ is LongMap!4398) lt!1516894)))))

(declare-datatypes ((Hashable!4314 0))(
  ( (HashableExt!4313 (__x!29220 Int)) )
))
(declare-datatypes ((Cell!17403 0))(
  ( (Cell!17404 (v!41609 MutLongMap!4398)) )
))
(declare-datatypes ((MutableMap!4304 0))(
  ( (MutableMapExt!4303 (__x!29221 Int)) (HashMap!4304 (underlying!9026 Cell!17403) (hashF!6346 Hashable!4314) (_size!8840 (_ BitVec 32)) (defaultValue!4475 Int)) )
))
(declare-datatypes ((CacheDown!2924 0))(
  ( (CacheDown!2925 (cache!4444 MutableMap!4304)) )
))
(declare-fun cacheDown!1066 () CacheDown!2924)

(assert (=> b!4290987 (= lt!1516894 (v!41609 (underlying!9026 (cache!4444 cacheDown!1066))))))

(declare-fun b!4290988 () Bool)

(declare-fun res!1759759 () Bool)

(declare-fun e!2665627 () Bool)

(assert (=> b!4290988 (=> (not res!1759759) (not e!2665627))))

(declare-fun from!999 () Int)

(declare-fun totalInputSize!257 () Int)

(assert (=> b!4290988 (= res!1759759 (not (= from!999 totalInputSize!257)))))

(declare-fun b!4290989 () Bool)

(assert (=> b!4290989 (= e!2665627 false)))

(declare-fun z!3765 () (InoxSet Context!5694))

(declare-datatypes ((List!47817 0))(
  ( (Nil!47693) (Cons!47693 (h!53113 C!26112) (t!354421 List!47817)) )
))
(declare-datatypes ((IArray!28859 0))(
  ( (IArray!28860 (innerList!14487 List!47817)) )
))
(declare-datatypes ((Conc!14399 0))(
  ( (Node!14399 (left!35414 Conc!14399) (right!35744 Conc!14399) (csize!29028 Int) (cheight!14610 Int)) (Leaf!22279 (xs!17705 IArray!28859) (csize!29029 Int)) (Empty!14399) )
))
(declare-datatypes ((BalanceConc!28288 0))(
  ( (BalanceConc!28289 (c!730316 Conc!14399)) )
))
(declare-fun totalInput!812 () BalanceConc!28288)

(declare-datatypes ((tuple2!45340 0))(
  ( (tuple2!45341 (_1!25886 Context!5694) (_2!25886 C!26112)) )
))
(declare-datatypes ((tuple2!45342 0))(
  ( (tuple2!45343 (_1!25887 tuple2!45340) (_2!25887 (InoxSet Context!5694))) )
))
(declare-datatypes ((List!47818 0))(
  ( (Nil!47694) (Cons!47694 (h!53114 tuple2!45342) (t!354422 List!47818)) )
))
(declare-datatypes ((array!15728 0))(
  ( (array!15729 (arr!7024 (Array (_ BitVec 32) List!47818)) (size!35006 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!8798 0))(
  ( (LongMapFixedSize!8799 (defaultEntry!4784 Int) (mask!12847 (_ BitVec 32)) (extraKeys!4648 (_ BitVec 32)) (zeroValue!4658 List!47818) (minValue!4658 List!47818) (_size!8841 (_ BitVec 32)) (_keys!4699 array!15726) (_values!4680 array!15728) (_vacant!4460 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!17405 0))(
  ( (Cell!17406 (v!41610 LongMapFixedSize!8798)) )
))
(declare-datatypes ((MutLongMap!4399 0))(
  ( (LongMap!4399 (underlying!9027 Cell!17405)) (MutLongMapExt!4398 (__x!29222 Int)) )
))
(declare-datatypes ((Cell!17407 0))(
  ( (Cell!17408 (v!41611 MutLongMap!4399)) )
))
(declare-datatypes ((Hashable!4315 0))(
  ( (HashableExt!4314 (__x!29223 Int)) )
))
(declare-datatypes ((MutableMap!4305 0))(
  ( (MutableMapExt!4304 (__x!29224 Int)) (HashMap!4305 (underlying!9028 Cell!17407) (hashF!6347 Hashable!4315) (_size!8842 (_ BitVec 32)) (defaultValue!4476 Int)) )
))
(declare-datatypes ((CacheUp!2806 0))(
  ( (CacheUp!2807 (cache!4445 MutableMap!4305)) )
))
(declare-fun cacheUp!947 () CacheUp!2806)

(declare-datatypes ((tuple3!5418 0))(
  ( (tuple3!5419 (_1!25888 (InoxSet Context!5694)) (_2!25888 CacheUp!2806) (_3!3216 CacheDown!2924)) )
))
(declare-fun lt!1516897 () tuple3!5418)

(declare-fun derivationStepZipperMem!127 ((InoxSet Context!5694) C!26112 CacheUp!2806 CacheDown!2924) tuple3!5418)

(declare-fun apply!10830 (BalanceConc!28288 Int) C!26112)

(assert (=> b!4290989 (= lt!1516897 (derivationStepZipperMem!127 z!3765 (apply!10830 totalInput!812 from!999) cacheUp!947 cacheDown!1066))))

(declare-fun b!4290990 () Bool)

(declare-fun e!2665629 () Bool)

(declare-fun tp!1316113 () Bool)

(declare-fun inv!63202 (Conc!14399) Bool)

(assert (=> b!4290990 (= e!2665629 (and (inv!63202 (c!730316 totalInput!812)) tp!1316113))))

(declare-fun b!4290991 () Bool)

(declare-fun e!2665609 () Bool)

(declare-fun e!2665615 () Bool)

(assert (=> b!4290991 (= e!2665609 e!2665615)))

(declare-fun b!4290992 () Bool)

(declare-fun res!1759758 () Bool)

(assert (=> b!4290992 (=> (not res!1759758) (not e!2665627))))

(declare-fun lostCauseZipper!641 ((InoxSet Context!5694)) Bool)

(assert (=> b!4290992 (= res!1759758 (not (lostCauseZipper!641 z!3765)))))

(declare-fun b!4290993 () Bool)

(declare-fun e!2665631 () Bool)

(assert (=> b!4290993 (= e!2665631 e!2665627)))

(declare-fun res!1759757 () Bool)

(assert (=> b!4290993 (=> (not res!1759757) (not e!2665627))))

(declare-fun lt!1516898 () Int)

(declare-datatypes ((tuple2!45344 0))(
  ( (tuple2!45345 (_1!25889 (InoxSet Context!5694)) (_2!25889 Int)) )
))
(declare-datatypes ((Hashable!4316 0))(
  ( (HashableExt!4315 (__x!29225 Int)) )
))
(declare-datatypes ((tuple2!45346 0))(
  ( (tuple2!45347 (_1!25890 tuple2!45344) (_2!25890 Int)) )
))
(declare-datatypes ((List!47819 0))(
  ( (Nil!47695) (Cons!47695 (h!53115 tuple2!45346) (t!354423 List!47819)) )
))
(declare-datatypes ((array!15730 0))(
  ( (array!15731 (arr!7025 (Array (_ BitVec 32) List!47819)) (size!35007 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!8800 0))(
  ( (LongMapFixedSize!8801 (defaultEntry!4785 Int) (mask!12848 (_ BitVec 32)) (extraKeys!4649 (_ BitVec 32)) (zeroValue!4659 List!47819) (minValue!4659 List!47819) (_size!8843 (_ BitVec 32)) (_keys!4700 array!15726) (_values!4681 array!15730) (_vacant!4461 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!17409 0))(
  ( (Cell!17410 (v!41612 LongMapFixedSize!8800)) )
))
(declare-datatypes ((MutLongMap!4400 0))(
  ( (LongMap!4400 (underlying!9029 Cell!17409)) (MutLongMapExt!4399 (__x!29226 Int)) )
))
(declare-datatypes ((Cell!17411 0))(
  ( (Cell!17412 (v!41613 MutLongMap!4400)) )
))
(declare-datatypes ((MutableMap!4306 0))(
  ( (MutableMapExt!4305 (__x!29227 Int)) (HashMap!4306 (underlying!9030 Cell!17411) (hashF!6348 Hashable!4316) (_size!8844 (_ BitVec 32)) (defaultValue!4477 Int)) )
))
(declare-datatypes ((CacheFindLongestMatch!486 0))(
  ( (CacheFindLongestMatch!487 (cache!4446 MutableMap!4306) (totalInput!4362 BalanceConc!28288)) )
))
(declare-fun cacheFindLongestMatch!183 () CacheFindLongestMatch!486)

(assert (=> b!4290993 (= res!1759757 (and (<= from!999 lt!1516898) (= totalInputSize!257 lt!1516898) (= (totalInput!4362 cacheFindLongestMatch!183) totalInput!812)))))

(declare-fun size!35008 (BalanceConc!28288) Int)

(assert (=> b!4290993 (= lt!1516898 (size!35008 totalInput!812))))

(declare-fun e!2665622 () Bool)

(assert (=> b!4290994 (= e!2665622 (and e!2665605 tp!1316119))))

(declare-fun b!4290995 () Bool)

(declare-fun e!2665621 () Bool)

(assert (=> b!4290995 (= e!2665621 e!2665622)))

(declare-fun b!4290996 () Bool)

(declare-fun e!2665612 () Bool)

(declare-fun tp!1316107 () Bool)

(declare-fun mapRes!19817 () Bool)

(assert (=> b!4290996 (= e!2665612 (and tp!1316107 mapRes!19817))))

(declare-fun condMapEmpty!19817 () Bool)

(declare-fun mapDefault!19816 () List!47818)

(assert (=> b!4290996 (= condMapEmpty!19817 (= (arr!7024 (_values!4680 (v!41610 (underlying!9027 (v!41611 (underlying!9028 (cache!4445 cacheUp!947))))))) ((as const (Array (_ BitVec 32) List!47818)) mapDefault!19816)))))

(declare-fun b!4290997 () Bool)

(declare-fun e!2665613 () Bool)

(declare-fun e!2665623 () Bool)

(assert (=> b!4290997 (= e!2665613 e!2665623)))

(declare-fun e!2665604 () Bool)

(declare-fun tp!1316105 () Bool)

(declare-fun e!2665607 () Bool)

(declare-fun tp!1316112 () Bool)

(declare-fun array_inv!5039 (array!15726) Bool)

(declare-fun array_inv!5040 (array!15724) Bool)

(assert (=> b!4290998 (= e!2665604 (and tp!1316121 tp!1316105 tp!1316112 (array_inv!5039 (_keys!4698 (v!41608 (underlying!9025 (v!41609 (underlying!9026 (cache!4444 cacheDown!1066))))))) (array_inv!5040 (_values!4679 (v!41608 (underlying!9025 (v!41609 (underlying!9026 (cache!4444 cacheDown!1066))))))) e!2665607))))

(declare-fun b!4290999 () Bool)

(declare-fun e!2665610 () Bool)

(assert (=> b!4290999 (= e!2665610 e!2665609)))

(declare-fun mapNonEmpty!19816 () Bool)

(declare-fun mapRes!19818 () Bool)

(declare-fun tp!1316115 () Bool)

(declare-fun tp!1316106 () Bool)

(assert (=> mapNonEmpty!19816 (= mapRes!19818 (and tp!1316115 tp!1316106))))

(declare-fun mapValue!19817 () List!47816)

(declare-fun mapRest!19818 () (Array (_ BitVec 32) List!47816))

(declare-fun mapKey!19816 () (_ BitVec 32))

(assert (=> mapNonEmpty!19816 (= (arr!7022 (_values!4679 (v!41608 (underlying!9025 (v!41609 (underlying!9026 (cache!4444 cacheDown!1066))))))) (store mapRest!19818 mapKey!19816 mapValue!19817))))

(declare-fun b!4291000 () Bool)

(declare-fun e!2665620 () Bool)

(declare-fun e!2665626 () Bool)

(assert (=> b!4291000 (= e!2665620 e!2665626)))

(declare-fun b!4291001 () Bool)

(declare-fun e!2665618 () Bool)

(declare-fun e!2665628 () Bool)

(declare-fun e!2665608 () Bool)

(declare-fun inv!63203 (BalanceConc!28288) Bool)

(assert (=> b!4291001 (= e!2665608 (and e!2665618 (inv!63203 (totalInput!4362 cacheFindLongestMatch!183)) e!2665628))))

(declare-fun b!4291002 () Bool)

(declare-fun tp!1316127 () Bool)

(assert (=> b!4291002 (= e!2665628 (and (inv!63202 (c!730316 (totalInput!4362 cacheFindLongestMatch!183))) tp!1316127))))

(declare-fun b!4291003 () Bool)

(declare-fun tp!1316125 () Bool)

(assert (=> b!4291003 (= e!2665607 (and tp!1316125 mapRes!19818))))

(declare-fun condMapEmpty!19816 () Bool)

(declare-fun mapDefault!19818 () List!47816)

(assert (=> b!4291003 (= condMapEmpty!19816 (= (arr!7022 (_values!4679 (v!41608 (underlying!9025 (v!41609 (underlying!9026 (cache!4444 cacheDown!1066))))))) ((as const (Array (_ BitVec 32) List!47816)) mapDefault!19818)))))

(declare-fun res!1759755 () Bool)

(assert (=> start!412092 (=> (not res!1759755) (not e!2665631))))

(assert (=> start!412092 (= res!1759755 (>= from!999 0))))

(assert (=> start!412092 e!2665631))

(declare-fun inv!63204 (CacheDown!2924) Bool)

(assert (=> start!412092 (and (inv!63204 cacheDown!1066) e!2665621)))

(declare-fun inv!63205 (CacheFindLongestMatch!486) Bool)

(assert (=> start!412092 (and (inv!63205 cacheFindLongestMatch!183) e!2665608)))

(declare-fun condSetEmpty!26454 () Bool)

(assert (=> start!412092 (= condSetEmpty!26454 (= z!3765 ((as const (Array Context!5694 Bool)) false)))))

(declare-fun setRes!26454 () Bool)

(assert (=> start!412092 setRes!26454))

(assert (=> start!412092 true))

(assert (=> start!412092 (and (inv!63203 totalInput!812) e!2665629)))

(declare-fun inv!63206 (CacheUp!2806) Bool)

(assert (=> start!412092 (and (inv!63206 cacheUp!947) e!2665613)))

(declare-fun mapIsEmpty!19816 () Bool)

(assert (=> mapIsEmpty!19816 mapRes!19817))

(declare-fun b!4291004 () Bool)

(declare-fun e!2665614 () Bool)

(assert (=> b!4291004 (= e!2665611 e!2665614)))

(declare-fun b!4291005 () Bool)

(declare-fun e!2665616 () Bool)

(declare-fun lt!1516895 () MutLongMap!4399)

(assert (=> b!4291005 (= e!2665616 (and e!2665610 ((_ is LongMap!4399) lt!1516895)))))

(assert (=> b!4291005 (= lt!1516895 (v!41611 (underlying!9028 (cache!4445 cacheUp!947))))))

(declare-fun b!4291006 () Bool)

(declare-fun res!1759756 () Bool)

(assert (=> b!4291006 (=> (not res!1759756) (not e!2665627))))

(declare-datatypes ((Option!10132 0))(
  ( (None!10131) (Some!10131 (v!41614 Int)) )
))
(declare-fun get!15442 (CacheFindLongestMatch!486 (InoxSet Context!5694) Int) Option!10132)

(assert (=> b!4291006 (= res!1759756 (not ((_ is Some!10131) (get!15442 cacheFindLongestMatch!183 z!3765 from!999))))))

(declare-fun tp!1316104 () Bool)

(declare-fun tp!1316111 () Bool)

(declare-fun array_inv!5041 (array!15728) Bool)

(assert (=> b!4291007 (= e!2665615 (and tp!1316110 tp!1316104 tp!1316111 (array_inv!5039 (_keys!4699 (v!41610 (underlying!9027 (v!41611 (underlying!9028 (cache!4445 cacheUp!947))))))) (array_inv!5041 (_values!4680 (v!41610 (underlying!9027 (v!41611 (underlying!9028 (cache!4445 cacheUp!947))))))) e!2665612))))

(declare-fun b!4291008 () Bool)

(declare-fun e!2665617 () Bool)

(declare-fun tp!1316117 () Bool)

(assert (=> b!4291008 (= e!2665617 tp!1316117)))

(declare-fun mapNonEmpty!19817 () Bool)

(declare-fun mapRes!19816 () Bool)

(declare-fun tp!1316122 () Bool)

(declare-fun tp!1316123 () Bool)

(assert (=> mapNonEmpty!19817 (= mapRes!19816 (and tp!1316122 tp!1316123))))

(declare-fun mapValue!19816 () List!47819)

(declare-fun mapRest!19817 () (Array (_ BitVec 32) List!47819))

(declare-fun mapKey!19818 () (_ BitVec 32))

(assert (=> mapNonEmpty!19817 (= (arr!7025 (_values!4681 (v!41612 (underlying!9029 (v!41613 (underlying!9030 (cache!4446 cacheFindLongestMatch!183))))))) (store mapRest!19817 mapKey!19818 mapValue!19816))))

(declare-fun b!4291009 () Bool)

(declare-fun e!2665606 () Bool)

(declare-fun e!2665619 () Bool)

(declare-fun lt!1516896 () MutLongMap!4400)

(assert (=> b!4291009 (= e!2665606 (and e!2665619 ((_ is LongMap!4400) lt!1516896)))))

(assert (=> b!4291009 (= lt!1516896 (v!41613 (underlying!9030 (cache!4446 cacheFindLongestMatch!183))))))

(declare-fun setNonEmpty!26454 () Bool)

(declare-fun tp!1316126 () Bool)

(declare-fun setElem!26454 () Context!5694)

(declare-fun inv!63207 (Context!5694) Bool)

(assert (=> setNonEmpty!26454 (= setRes!26454 (and tp!1316126 (inv!63207 setElem!26454) e!2665617))))

(declare-fun setRest!26454 () (InoxSet Context!5694))

(assert (=> setNonEmpty!26454 (= z!3765 ((_ map or) (store ((as const (Array Context!5694 Bool)) false) setElem!26454 true) setRest!26454))))

(declare-fun b!4291010 () Bool)

(declare-fun e!2665625 () Bool)

(declare-fun tp!1316109 () Bool)

(assert (=> b!4291010 (= e!2665625 (and tp!1316109 mapRes!19816))))

(declare-fun condMapEmpty!19818 () Bool)

(declare-fun mapDefault!19817 () List!47819)

(assert (=> b!4291010 (= condMapEmpty!19818 (= (arr!7025 (_values!4681 (v!41612 (underlying!9029 (v!41613 (underlying!9030 (cache!4446 cacheFindLongestMatch!183))))))) ((as const (Array (_ BitVec 32) List!47819)) mapDefault!19817)))))

(declare-fun mapIsEmpty!19817 () Bool)

(assert (=> mapIsEmpty!19817 mapRes!19816))

(declare-fun b!4291011 () Bool)

(assert (=> b!4291011 (= e!2665619 e!2665620)))

(declare-fun mapNonEmpty!19818 () Bool)

(declare-fun tp!1316108 () Bool)

(declare-fun tp!1316114 () Bool)

(assert (=> mapNonEmpty!19818 (= mapRes!19817 (and tp!1316108 tp!1316114))))

(declare-fun mapValue!19818 () List!47818)

(declare-fun mapKey!19817 () (_ BitVec 32))

(declare-fun mapRest!19816 () (Array (_ BitVec 32) List!47818))

(assert (=> mapNonEmpty!19818 (= (arr!7024 (_values!4680 (v!41610 (underlying!9027 (v!41611 (underlying!9028 (cache!4445 cacheUp!947))))))) (store mapRest!19816 mapKey!19817 mapValue!19818))))

(declare-fun setIsEmpty!26454 () Bool)

(assert (=> setIsEmpty!26454 setRes!26454))

(declare-fun b!4291012 () Bool)

(assert (=> b!4291012 (= e!2665614 e!2665604)))

(declare-fun tp!1316120 () Bool)

(declare-fun tp!1316124 () Bool)

(declare-fun array_inv!5042 (array!15730) Bool)

(assert (=> b!4291013 (= e!2665626 (and tp!1316103 tp!1316124 tp!1316120 (array_inv!5039 (_keys!4700 (v!41612 (underlying!9029 (v!41613 (underlying!9030 (cache!4446 cacheFindLongestMatch!183))))))) (array_inv!5042 (_values!4681 (v!41612 (underlying!9029 (v!41613 (underlying!9030 (cache!4446 cacheFindLongestMatch!183))))))) e!2665625))))

(assert (=> b!4291014 (= e!2665618 (and e!2665606 tp!1316116))))

(declare-fun mapIsEmpty!19818 () Bool)

(assert (=> mapIsEmpty!19818 mapRes!19818))

(assert (=> b!4291015 (= e!2665623 (and e!2665616 tp!1316118))))

(assert (= (and start!412092 res!1759755) b!4290993))

(assert (= (and b!4290993 res!1759757) b!4291006))

(assert (= (and b!4291006 res!1759756) b!4290988))

(assert (= (and b!4290988 res!1759759) b!4290992))

(assert (= (and b!4290992 res!1759758) b!4290989))

(assert (= (and b!4291003 condMapEmpty!19816) mapIsEmpty!19818))

(assert (= (and b!4291003 (not condMapEmpty!19816)) mapNonEmpty!19816))

(assert (= b!4290998 b!4291003))

(assert (= b!4291012 b!4290998))

(assert (= b!4291004 b!4291012))

(assert (= (and b!4290987 ((_ is LongMap!4398) (v!41609 (underlying!9026 (cache!4444 cacheDown!1066))))) b!4291004))

(assert (= b!4290994 b!4290987))

(assert (= (and b!4290995 ((_ is HashMap!4304) (cache!4444 cacheDown!1066))) b!4290994))

(assert (= start!412092 b!4290995))

(assert (= (and b!4291010 condMapEmpty!19818) mapIsEmpty!19817))

(assert (= (and b!4291010 (not condMapEmpty!19818)) mapNonEmpty!19817))

(assert (= b!4291013 b!4291010))

(assert (= b!4291000 b!4291013))

(assert (= b!4291011 b!4291000))

(assert (= (and b!4291009 ((_ is LongMap!4400) (v!41613 (underlying!9030 (cache!4446 cacheFindLongestMatch!183))))) b!4291011))

(assert (= b!4291014 b!4291009))

(assert (= (and b!4291001 ((_ is HashMap!4306) (cache!4446 cacheFindLongestMatch!183))) b!4291014))

(assert (= b!4291001 b!4291002))

(assert (= start!412092 b!4291001))

(assert (= (and start!412092 condSetEmpty!26454) setIsEmpty!26454))

(assert (= (and start!412092 (not condSetEmpty!26454)) setNonEmpty!26454))

(assert (= setNonEmpty!26454 b!4291008))

(assert (= start!412092 b!4290990))

(assert (= (and b!4290996 condMapEmpty!19817) mapIsEmpty!19816))

(assert (= (and b!4290996 (not condMapEmpty!19817)) mapNonEmpty!19818))

(assert (= b!4291007 b!4290996))

(assert (= b!4290991 b!4291007))

(assert (= b!4290999 b!4290991))

(assert (= (and b!4291005 ((_ is LongMap!4399) (v!41611 (underlying!9028 (cache!4445 cacheUp!947))))) b!4290999))

(assert (= b!4291015 b!4291005))

(assert (= (and b!4290997 ((_ is HashMap!4305) (cache!4445 cacheUp!947))) b!4291015))

(assert (= start!412092 b!4290997))

(declare-fun m!4885189 () Bool)

(assert (=> b!4290990 m!4885189))

(declare-fun m!4885191 () Bool)

(assert (=> b!4290998 m!4885191))

(declare-fun m!4885193 () Bool)

(assert (=> b!4290998 m!4885193))

(declare-fun m!4885195 () Bool)

(assert (=> b!4290989 m!4885195))

(assert (=> b!4290989 m!4885195))

(declare-fun m!4885197 () Bool)

(assert (=> b!4290989 m!4885197))

(declare-fun m!4885199 () Bool)

(assert (=> b!4291013 m!4885199))

(declare-fun m!4885201 () Bool)

(assert (=> b!4291013 m!4885201))

(declare-fun m!4885203 () Bool)

(assert (=> mapNonEmpty!19818 m!4885203))

(declare-fun m!4885205 () Bool)

(assert (=> b!4290993 m!4885205))

(declare-fun m!4885207 () Bool)

(assert (=> b!4290992 m!4885207))

(declare-fun m!4885209 () Bool)

(assert (=> b!4291007 m!4885209))

(declare-fun m!4885211 () Bool)

(assert (=> b!4291007 m!4885211))

(declare-fun m!4885213 () Bool)

(assert (=> start!412092 m!4885213))

(declare-fun m!4885215 () Bool)

(assert (=> start!412092 m!4885215))

(declare-fun m!4885217 () Bool)

(assert (=> start!412092 m!4885217))

(declare-fun m!4885219 () Bool)

(assert (=> start!412092 m!4885219))

(declare-fun m!4885221 () Bool)

(assert (=> mapNonEmpty!19816 m!4885221))

(declare-fun m!4885223 () Bool)

(assert (=> b!4291001 m!4885223))

(declare-fun m!4885225 () Bool)

(assert (=> b!4291002 m!4885225))

(declare-fun m!4885227 () Bool)

(assert (=> mapNonEmpty!19817 m!4885227))

(declare-fun m!4885229 () Bool)

(assert (=> setNonEmpty!26454 m!4885229))

(declare-fun m!4885231 () Bool)

(assert (=> b!4291006 m!4885231))

(check-sat (not b!4291007) (not mapNonEmpty!19817) b_and!338647 (not b!4290993) (not mapNonEmpty!19816) (not b!4291013) (not b_next!128133) (not b_next!128135) (not b!4290996) (not b_next!128131) b_and!338639 b_and!338649 (not b!4291010) (not b!4290990) b_and!338641 (not b_next!128127) b_and!338643 (not b!4290992) (not b_next!128137) (not b!4290998) (not b_next!128129) (not mapNonEmpty!19818) (not b!4290989) (not b!4291006) (not b!4291002) (not b!4291001) (not b!4291008) (not start!412092) (not b!4291003) (not setNonEmpty!26454) b_and!338645)
(check-sat b_and!338649 b_and!338647 b_and!338643 (not b_next!128133) (not b_next!128135) (not b_next!128137) (not b_next!128129) (not b_next!128131) b_and!338645 b_and!338639 b_and!338641 (not b_next!128127))
