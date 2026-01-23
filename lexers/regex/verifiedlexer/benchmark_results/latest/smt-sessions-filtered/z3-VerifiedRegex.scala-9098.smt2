; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!486824 () Bool)

(assert start!486824)

(declare-fun b!4760377 () Bool)

(declare-fun b_free!129335 () Bool)

(declare-fun b_next!130039 () Bool)

(assert (=> b!4760377 (= b_free!129335 (not b_next!130039))))

(declare-fun tp!1353353 () Bool)

(declare-fun b_and!340959 () Bool)

(assert (=> b!4760377 (= tp!1353353 b_and!340959)))

(declare-fun b!4760374 () Bool)

(declare-fun b_free!129337 () Bool)

(declare-fun b_next!130041 () Bool)

(assert (=> b!4760374 (= b_free!129337 (not b_next!130041))))

(declare-fun tp!1353349 () Bool)

(declare-fun b_and!340961 () Bool)

(assert (=> b!4760374 (= tp!1353349 b_and!340961)))

(declare-fun b!4760370 () Bool)

(declare-fun e!2970491 () Bool)

(declare-fun tp!1353348 () Bool)

(assert (=> b!4760370 (= e!2970491 tp!1353348)))

(declare-fun b!4760371 () Bool)

(declare-fun e!2970492 () Bool)

(declare-fun e!2970490 () Bool)

(declare-datatypes ((C!26304 0))(
  ( (C!26305 (val!20140 Int)) )
))
(declare-datatypes ((Regex!13053 0))(
  ( (ElementMatch!13053 (c!812115 C!26304)) (Concat!21372 (regOne!26618 Regex!13053) (regTwo!26618 Regex!13053)) (EmptyExpr!13053) (Star!13053 (reg!13382 Regex!13053)) (EmptyLang!13053) (Union!13053 (regOne!26619 Regex!13053) (regTwo!26619 Regex!13053)) )
))
(declare-datatypes ((List!53473 0))(
  ( (Nil!53349) (Cons!53349 (h!59760 Regex!13053) (t!360833 List!53473)) )
))
(declare-datatypes ((Context!5886 0))(
  ( (Context!5887 (exprs!3443 List!53473)) )
))
(define-sort InoxSet (T) (Array T Bool))

(declare-datatypes ((tuple2!55284 0))(
  ( (tuple2!55285 (_1!30936 (InoxSet Context!5886)) (_2!30936 Int)) )
))
(declare-datatypes ((tuple2!55286 0))(
  ( (tuple2!55287 (_1!30937 tuple2!55284) (_2!30937 Int)) )
))
(declare-datatypes ((List!53474 0))(
  ( (Nil!53350) (Cons!53350 (h!59761 tuple2!55286) (t!360834 List!53474)) )
))
(declare-datatypes ((array!17700 0))(
  ( (array!17701 (arr!7895 (Array (_ BitVec 32) (_ BitVec 64))) (size!36118 (_ BitVec 32))) )
))
(declare-datatypes ((array!17702 0))(
  ( (array!17703 (arr!7896 (Array (_ BitVec 32) List!53474)) (size!36119 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!9710 0))(
  ( (LongMapFixedSize!9711 (defaultEntry!5269 Int) (mask!14568 (_ BitVec 32)) (extraKeys!5125 (_ BitVec 32)) (zeroValue!5138 List!53474) (minValue!5138 List!53474) (_size!9735 (_ BitVec 32)) (_keys!5190 array!17700) (_values!5163 array!17702) (_vacant!4920 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!19185 0))(
  ( (Cell!19186 (v!47400 LongMapFixedSize!9710)) )
))
(declare-datatypes ((MutLongMap!4855 0))(
  ( (LongMap!4855 (underlying!9917 Cell!19185)) (MutLongMapExt!4854 (__x!32313 Int)) )
))
(declare-fun lt!1924825 () MutLongMap!4855)

(get-info :version)

(assert (=> b!4760371 (= e!2970492 (and e!2970490 ((_ is LongMap!4855) lt!1924825)))))

(declare-datatypes ((List!53475 0))(
  ( (Nil!53351) (Cons!53351 (h!59762 C!26304) (t!360835 List!53475)) )
))
(declare-datatypes ((IArray!29049 0))(
  ( (IArray!29050 (innerList!14582 List!53475)) )
))
(declare-datatypes ((Conc!14494 0))(
  ( (Node!14494 (left!39134 Conc!14494) (right!39464 Conc!14494) (csize!29218 Int) (cheight!14705 Int)) (Leaf!23593 (xs!17800 IArray!29049) (csize!29219 Int)) (Empty!14494) )
))
(declare-datatypes ((Hashable!6516 0))(
  ( (HashableExt!6515 (__x!32314 Int)) )
))
(declare-datatypes ((Cell!19187 0))(
  ( (Cell!19188 (v!47401 MutLongMap!4855)) )
))
(declare-datatypes ((MutableMap!4739 0))(
  ( (MutableMapExt!4738 (__x!32315 Int)) (HashMap!4739 (underlying!9918 Cell!19187) (hashF!12326 Hashable!6516) (_size!9736 (_ BitVec 32)) (defaultValue!4910 Int)) )
))
(declare-datatypes ((BalanceConc!28478 0))(
  ( (BalanceConc!28479 (c!812116 Conc!14494)) )
))
(declare-datatypes ((CacheFindLongestMatch!676 0))(
  ( (CacheFindLongestMatch!677 (cache!4581 MutableMap!4739) (totalInput!4504 BalanceConc!28478)) )
))
(declare-fun thiss!28909 () CacheFindLongestMatch!676)

(assert (=> b!4760371 (= lt!1924825 (v!47401 (underlying!9918 (cache!4581 thiss!28909))))))

(declare-fun b!4760372 () Bool)

(declare-fun e!2970494 () Bool)

(assert (=> b!4760372 (= e!2970494 (not true))))

(declare-fun lt!1924826 () Bool)

(declare-fun from!922 () Int)

(declare-fun z!482 () (InoxSet Context!5886))

(declare-fun contains!16664 (MutableMap!4739 tuple2!55284) Bool)

(assert (=> b!4760372 (= lt!1924826 (contains!16664 (cache!4581 thiss!28909) (tuple2!55285 z!482 from!922)))))

(declare-fun localTotalInput!8 () BalanceConc!28478)

(declare-fun validCacheMapFindLongestMatch!135 (MutableMap!4739 BalanceConc!28478) Bool)

(assert (=> b!4760372 (validCacheMapFindLongestMatch!135 (cache!4581 thiss!28909) localTotalInput!8)))

(declare-fun res!2019091 () Bool)

(assert (=> start!486824 (=> (not res!2019091) (not e!2970494))))

(assert (=> start!486824 (= res!2019091 (= localTotalInput!8 (totalInput!4504 thiss!28909)))))

(assert (=> start!486824 e!2970494))

(declare-fun e!2970493 () Bool)

(declare-fun inv!68870 (BalanceConc!28478) Bool)

(assert (=> start!486824 (and (inv!68870 localTotalInput!8) e!2970493)))

(declare-fun e!2970498 () Bool)

(declare-fun inv!68871 (CacheFindLongestMatch!676) Bool)

(assert (=> start!486824 (and (inv!68871 thiss!28909) e!2970498)))

(declare-fun condSetEmpty!27187 () Bool)

(assert (=> start!486824 (= condSetEmpty!27187 (= z!482 ((as const (Array Context!5886 Bool)) false)))))

(declare-fun setRes!27187 () Bool)

(assert (=> start!486824 setRes!27187))

(assert (=> start!486824 true))

(declare-fun e!2970501 () Bool)

(declare-fun e!2970500 () Bool)

(declare-fun b!4760373 () Bool)

(assert (=> b!4760373 (= e!2970498 (and e!2970501 (inv!68870 (totalInput!4504 thiss!28909)) e!2970500))))

(declare-fun tp!1353343 () Bool)

(declare-fun tp!1353352 () Bool)

(declare-fun e!2970495 () Bool)

(declare-fun e!2970496 () Bool)

(declare-fun array_inv!5679 (array!17700) Bool)

(declare-fun array_inv!5680 (array!17702) Bool)

(assert (=> b!4760374 (= e!2970495 (and tp!1353349 tp!1353352 tp!1353343 (array_inv!5679 (_keys!5190 (v!47400 (underlying!9917 (v!47401 (underlying!9918 (cache!4581 thiss!28909))))))) (array_inv!5680 (_values!5163 (v!47400 (underlying!9917 (v!47401 (underlying!9918 (cache!4581 thiss!28909))))))) e!2970496))))

(declare-fun b!4760375 () Bool)

(declare-fun tp!1353350 () Bool)

(declare-fun inv!68872 (Conc!14494) Bool)

(assert (=> b!4760375 (= e!2970500 (and (inv!68872 (c!812116 (totalInput!4504 thiss!28909))) tp!1353350))))

(declare-fun b!4760376 () Bool)

(declare-fun e!2970499 () Bool)

(assert (=> b!4760376 (= e!2970499 e!2970495)))

(assert (=> b!4760377 (= e!2970501 (and e!2970492 tp!1353353))))

(declare-fun setElem!27187 () Context!5886)

(declare-fun setNonEmpty!27187 () Bool)

(declare-fun tp!1353347 () Bool)

(declare-fun inv!68873 (Context!5886) Bool)

(assert (=> setNonEmpty!27187 (= setRes!27187 (and tp!1353347 (inv!68873 setElem!27187) e!2970491))))

(declare-fun setRest!27187 () (InoxSet Context!5886))

(assert (=> setNonEmpty!27187 (= z!482 ((_ map or) (store ((as const (Array Context!5886 Bool)) false) setElem!27187 true) setRest!27187))))

(declare-fun b!4760378 () Bool)

(declare-fun tp!1353346 () Bool)

(assert (=> b!4760378 (= e!2970493 (and (inv!68872 (c!812116 localTotalInput!8)) tp!1353346))))

(declare-fun mapIsEmpty!21587 () Bool)

(declare-fun mapRes!21587 () Bool)

(assert (=> mapIsEmpty!21587 mapRes!21587))

(declare-fun b!4760379 () Bool)

(assert (=> b!4760379 (= e!2970490 e!2970499)))

(declare-fun b!4760380 () Bool)

(declare-fun tp!1353345 () Bool)

(assert (=> b!4760380 (= e!2970496 (and tp!1353345 mapRes!21587))))

(declare-fun condMapEmpty!21587 () Bool)

(declare-fun mapDefault!21587 () List!53474)

(assert (=> b!4760380 (= condMapEmpty!21587 (= (arr!7896 (_values!5163 (v!47400 (underlying!9917 (v!47401 (underlying!9918 (cache!4581 thiss!28909))))))) ((as const (Array (_ BitVec 32) List!53474)) mapDefault!21587)))))

(declare-fun setIsEmpty!27187 () Bool)

(assert (=> setIsEmpty!27187 setRes!27187))

(declare-fun mapNonEmpty!21587 () Bool)

(declare-fun tp!1353351 () Bool)

(declare-fun tp!1353344 () Bool)

(assert (=> mapNonEmpty!21587 (= mapRes!21587 (and tp!1353351 tp!1353344))))

(declare-fun mapRest!21587 () (Array (_ BitVec 32) List!53474))

(declare-fun mapValue!21587 () List!53474)

(declare-fun mapKey!21587 () (_ BitVec 32))

(assert (=> mapNonEmpty!21587 (= (arr!7896 (_values!5163 (v!47400 (underlying!9917 (v!47401 (underlying!9918 (cache!4581 thiss!28909))))))) (store mapRest!21587 mapKey!21587 mapValue!21587))))

(declare-fun b!4760381 () Bool)

(declare-fun res!2019092 () Bool)

(assert (=> b!4760381 (=> (not res!2019092) (not e!2970494))))

(assert (=> b!4760381 (= res!2019092 (validCacheMapFindLongestMatch!135 (cache!4581 thiss!28909) (totalInput!4504 thiss!28909)))))

(assert (= (and start!486824 res!2019091) b!4760381))

(assert (= (and b!4760381 res!2019092) b!4760372))

(assert (= start!486824 b!4760378))

(assert (= (and b!4760380 condMapEmpty!21587) mapIsEmpty!21587))

(assert (= (and b!4760380 (not condMapEmpty!21587)) mapNonEmpty!21587))

(assert (= b!4760374 b!4760380))

(assert (= b!4760376 b!4760374))

(assert (= b!4760379 b!4760376))

(assert (= (and b!4760371 ((_ is LongMap!4855) (v!47401 (underlying!9918 (cache!4581 thiss!28909))))) b!4760379))

(assert (= b!4760377 b!4760371))

(assert (= (and b!4760373 ((_ is HashMap!4739) (cache!4581 thiss!28909))) b!4760377))

(assert (= b!4760373 b!4760375))

(assert (= start!486824 b!4760373))

(assert (= (and start!486824 condSetEmpty!27187) setIsEmpty!27187))

(assert (= (and start!486824 (not condSetEmpty!27187)) setNonEmpty!27187))

(assert (= setNonEmpty!27187 b!4760370))

(declare-fun m!5729660 () Bool)

(assert (=> setNonEmpty!27187 m!5729660))

(declare-fun m!5729662 () Bool)

(assert (=> b!4760378 m!5729662))

(declare-fun m!5729664 () Bool)

(assert (=> start!486824 m!5729664))

(declare-fun m!5729666 () Bool)

(assert (=> start!486824 m!5729666))

(declare-fun m!5729668 () Bool)

(assert (=> b!4760375 m!5729668))

(declare-fun m!5729670 () Bool)

(assert (=> b!4760373 m!5729670))

(declare-fun m!5729672 () Bool)

(assert (=> b!4760372 m!5729672))

(declare-fun m!5729674 () Bool)

(assert (=> b!4760372 m!5729674))

(declare-fun m!5729676 () Bool)

(assert (=> mapNonEmpty!21587 m!5729676))

(declare-fun m!5729678 () Bool)

(assert (=> b!4760381 m!5729678))

(declare-fun m!5729680 () Bool)

(assert (=> b!4760374 m!5729680))

(declare-fun m!5729682 () Bool)

(assert (=> b!4760374 m!5729682))

(check-sat (not b!4760375) (not b!4760378) (not b_next!130041) (not b!4760381) (not setNonEmpty!27187) b_and!340959 (not b!4760380) (not b!4760374) (not start!486824) (not mapNonEmpty!21587) (not b!4760373) b_and!340961 (not b!4760372) (not b_next!130039) (not b!4760370))
(check-sat b_and!340959 b_and!340961 (not b_next!130041) (not b_next!130039))
