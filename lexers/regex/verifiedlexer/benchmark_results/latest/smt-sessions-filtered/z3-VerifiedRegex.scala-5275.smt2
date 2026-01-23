; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!270686 () Bool)

(assert start!270686)

(declare-fun b!2799491 () Bool)

(declare-fun b_free!79357 () Bool)

(declare-fun b_next!80061 () Bool)

(assert (=> b!2799491 (= b_free!79357 (not b_next!80061))))

(declare-fun tp!891739 () Bool)

(declare-fun b_and!204095 () Bool)

(assert (=> b!2799491 (= tp!891739 b_and!204095)))

(declare-fun b!2799502 () Bool)

(declare-fun b_free!79359 () Bool)

(declare-fun b_next!80063 () Bool)

(assert (=> b!2799502 (= b_free!79359 (not b_next!80063))))

(declare-fun tp!891733 () Bool)

(declare-fun b_and!204097 () Bool)

(assert (=> b!2799502 (= tp!891733 b_and!204097)))

(declare-fun b!2799495 () Bool)

(declare-fun b_free!79361 () Bool)

(declare-fun b_next!80065 () Bool)

(assert (=> b!2799495 (= b_free!79361 (not b_next!80065))))

(declare-fun tp!891748 () Bool)

(declare-fun b_and!204099 () Bool)

(assert (=> b!2799495 (= tp!891748 b_and!204099)))

(declare-fun b!2799509 () Bool)

(declare-fun b_free!79363 () Bool)

(declare-fun b_next!80067 () Bool)

(assert (=> b!2799509 (= b_free!79363 (not b_next!80067))))

(declare-fun tp!891738 () Bool)

(declare-fun b_and!204101 () Bool)

(assert (=> b!2799509 (= tp!891738 b_and!204101)))

(declare-fun b!2799489 () Bool)

(declare-fun e!1768681 () Bool)

(assert (=> b!2799489 (= e!1768681 true)))

(declare-fun lt!1000468 () Int)

(declare-datatypes ((C!16588 0))(
  ( (C!16589 (val!10228 Int)) )
))
(declare-datatypes ((List!32625 0))(
  ( (Nil!32525) (Cons!32525 (h!37945 C!16588) (t!228790 List!32625)) )
))
(declare-fun lt!1000459 () List!32625)

(declare-fun size!25379 (List!32625) Int)

(assert (=> b!2799489 (= lt!1000468 (size!25379 lt!1000459))))

(declare-datatypes ((Hashable!3937 0))(
  ( (HashableExt!3936 (__x!21713 Int)) )
))
(declare-datatypes ((Regex!8215 0))(
  ( (ElementMatch!8215 (c!453985 C!16588)) (Concat!13303 (regOne!16942 Regex!8215) (regTwo!16942 Regex!8215)) (EmptyExpr!8215) (Star!8215 (reg!8544 Regex!8215)) (EmptyLang!8215) (Union!8215 (regOne!16943 Regex!8215) (regTwo!16943 Regex!8215)) )
))
(declare-datatypes ((List!32626 0))(
  ( (Nil!32526) (Cons!32526 (h!37946 Regex!8215) (t!228791 List!32626)) )
))
(declare-datatypes ((Context!4866 0))(
  ( (Context!4867 (exprs!2933 List!32626)) )
))
(declare-datatypes ((tuple2!33120 0))(
  ( (tuple2!33121 (_1!19614 Context!4866) (_2!19614 C!16588)) )
))
(define-sort InoxSet (T) (Array T Bool))

(declare-datatypes ((tuple2!33122 0))(
  ( (tuple2!33123 (_1!19615 tuple2!33120) (_2!19615 (InoxSet Context!4866))) )
))
(declare-datatypes ((List!32627 0))(
  ( (Nil!32527) (Cons!32527 (h!37947 tuple2!33122) (t!228792 List!32627)) )
))
(declare-datatypes ((array!14295 0))(
  ( (array!14296 (arr!6369 (Array (_ BitVec 32) List!32627)) (size!25380 (_ BitVec 32))) )
))
(declare-datatypes ((array!14297 0))(
  ( (array!14298 (arr!6370 (Array (_ BitVec 32) (_ BitVec 64))) (size!25381 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!8042 0))(
  ( (LongMapFixedSize!8043 (defaultEntry!4406 Int) (mask!9865 (_ BitVec 32)) (extraKeys!4270 (_ BitVec 32)) (zeroValue!4280 List!32627) (minValue!4280 List!32627) (_size!8085 (_ BitVec 32)) (_keys!4321 array!14297) (_values!4302 array!14295) (_vacant!4082 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!15893 0))(
  ( (Cell!15894 (v!34127 LongMapFixedSize!8042)) )
))
(declare-datatypes ((MutLongMap!4021 0))(
  ( (LongMap!4021 (underlying!8245 Cell!15893)) (MutLongMapExt!4020 (__x!21714 Int)) )
))
(declare-datatypes ((Cell!15895 0))(
  ( (Cell!15896 (v!34128 MutLongMap!4021)) )
))
(declare-datatypes ((MutableMap!3927 0))(
  ( (MutableMapExt!3926 (__x!21715 Int)) (HashMap!3927 (underlying!8246 Cell!15895) (hashF!5969 Hashable!3937) (_size!8086 (_ BitVec 32)) (defaultValue!4098 Int)) )
))
(declare-datatypes ((CacheUp!2630 0))(
  ( (CacheUp!2631 (cache!4070 MutableMap!3927)) )
))
(declare-fun cacheUp!890 () CacheUp!2630)

(declare-fun lt!1000470 () C!16588)

(declare-datatypes ((tuple3!5168 0))(
  ( (tuple3!5169 (_1!19616 Regex!8215) (_2!19616 Context!4866) (_3!3054 C!16588)) )
))
(declare-datatypes ((tuple2!33124 0))(
  ( (tuple2!33125 (_1!19617 tuple3!5168) (_2!19617 (InoxSet Context!4866))) )
))
(declare-datatypes ((List!32628 0))(
  ( (Nil!32528) (Cons!32528 (h!37948 tuple2!33124) (t!228793 List!32628)) )
))
(declare-datatypes ((array!14299 0))(
  ( (array!14300 (arr!6371 (Array (_ BitVec 32) List!32628)) (size!25382 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!8044 0))(
  ( (LongMapFixedSize!8045 (defaultEntry!4407 Int) (mask!9866 (_ BitVec 32)) (extraKeys!4271 (_ BitVec 32)) (zeroValue!4281 List!32628) (minValue!4281 List!32628) (_size!8087 (_ BitVec 32)) (_keys!4322 array!14297) (_values!4303 array!14299) (_vacant!4083 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!15897 0))(
  ( (Cell!15898 (v!34129 LongMapFixedSize!8044)) )
))
(declare-datatypes ((MutLongMap!4022 0))(
  ( (LongMap!4022 (underlying!8247 Cell!15897)) (MutLongMapExt!4021 (__x!21716 Int)) )
))
(declare-datatypes ((Cell!15899 0))(
  ( (Cell!15900 (v!34130 MutLongMap!4022)) )
))
(declare-datatypes ((Hashable!3938 0))(
  ( (HashableExt!3937 (__x!21717 Int)) )
))
(declare-datatypes ((MutableMap!3928 0))(
  ( (MutableMapExt!3927 (__x!21718 Int)) (HashMap!3928 (underlying!8248 Cell!15899) (hashF!5970 Hashable!3938) (_size!8088 (_ BitVec 32)) (defaultValue!4099 Int)) )
))
(declare-datatypes ((CacheDown!2756 0))(
  ( (CacheDown!2757 (cache!4071 MutableMap!3928)) )
))
(declare-fun cacheDown!1009 () CacheDown!2756)

(declare-fun z!3684 () (InoxSet Context!4866))

(declare-datatypes ((tuple3!5170 0))(
  ( (tuple3!5171 (_1!19618 (InoxSet Context!4866)) (_2!19618 CacheUp!2630) (_3!3055 CacheDown!2756)) )
))
(declare-fun lt!1000450 () tuple3!5170)

(declare-fun derivationStepZipperMem!111 ((InoxSet Context!4866) C!16588 CacheUp!2630 CacheDown!2756) tuple3!5170)

(assert (=> b!2799489 (= lt!1000450 (derivationStepZipperMem!111 z!3684 lt!1000470 cacheUp!890 cacheDown!1009))))

(declare-fun b!2799490 () Bool)

(declare-fun e!1768670 () Bool)

(declare-fun tp!891742 () Bool)

(declare-fun mapRes!18287 () Bool)

(assert (=> b!2799490 (= e!1768670 (and tp!891742 mapRes!18287))))

(declare-fun condMapEmpty!18288 () Bool)

(declare-fun mapDefault!18288 () List!32627)

(assert (=> b!2799490 (= condMapEmpty!18288 (= (arr!6369 (_values!4302 (v!34127 (underlying!8245 (v!34128 (underlying!8246 (cache!4070 cacheUp!890))))))) ((as const (Array (_ BitVec 32) List!32627)) mapDefault!18288)))))

(declare-fun e!1768660 () Bool)

(declare-fun e!1768659 () Bool)

(assert (=> b!2799491 (= e!1768660 (and e!1768659 tp!891739))))

(declare-fun b!2799492 () Bool)

(declare-fun res!1166727 () Bool)

(declare-fun e!1768674 () Bool)

(assert (=> b!2799492 (=> res!1166727 e!1768674)))

(declare-datatypes ((IArray!20153 0))(
  ( (IArray!20154 (innerList!10134 List!32625)) )
))
(declare-datatypes ((Conc!10074 0))(
  ( (Node!10074 (left!24581 Conc!10074) (right!24911 Conc!10074) (csize!20378 Int) (cheight!10285 Int)) (Leaf!15350 (xs!13186 IArray!20153) (csize!20379 Int)) (Empty!10074) )
))
(declare-datatypes ((BalanceConc!19762 0))(
  ( (BalanceConc!19763 (c!453986 Conc!10074)) )
))
(declare-datatypes ((tuple2!33126 0))(
  ( (tuple2!33127 (_1!19619 BalanceConc!19762) (_2!19619 BalanceConc!19762)) )
))
(declare-fun lt!1000451 () tuple2!33126)

(declare-fun testedPSize!143 () Int)

(declare-fun size!25383 (BalanceConc!19762) Int)

(assert (=> b!2799492 (= res!1166727 (not (= (size!25383 (_1!19619 lt!1000451)) testedPSize!143)))))

(declare-fun setIsEmpty!24439 () Bool)

(declare-fun setRes!24439 () Bool)

(assert (=> setIsEmpty!24439 setRes!24439))

(declare-fun b!2799493 () Bool)

(declare-fun e!1768673 () Bool)

(declare-fun e!1768682 () Bool)

(declare-fun lt!1000458 () MutLongMap!4021)

(get-info :version)

(assert (=> b!2799493 (= e!1768673 (and e!1768682 ((_ is LongMap!4021) lt!1000458)))))

(assert (=> b!2799493 (= lt!1000458 (v!34128 (underlying!8246 (cache!4070 cacheUp!890))))))

(declare-fun b!2799494 () Bool)

(declare-fun res!1166723 () Bool)

(declare-fun e!1768661 () Bool)

(assert (=> b!2799494 (=> (not res!1166723) (not e!1768661))))

(declare-fun valid!3149 (CacheUp!2630) Bool)

(assert (=> b!2799494 (= res!1166723 (valid!3149 cacheUp!890))))

(declare-fun e!1768685 () Bool)

(declare-fun tp!891745 () Bool)

(declare-fun tp!891734 () Bool)

(declare-fun e!1768669 () Bool)

(declare-fun array_inv!4558 (array!14297) Bool)

(declare-fun array_inv!4559 (array!14299) Bool)

(assert (=> b!2799495 (= e!1768685 (and tp!891748 tp!891734 tp!891745 (array_inv!4558 (_keys!4322 (v!34129 (underlying!8247 (v!34130 (underlying!8248 (cache!4071 cacheDown!1009))))))) (array_inv!4559 (_values!4303 (v!34129 (underlying!8247 (v!34130 (underlying!8248 (cache!4071 cacheDown!1009))))))) e!1768669))))

(declare-fun b!2799496 () Bool)

(declare-fun e!1768684 () Bool)

(declare-fun e!1768677 () Bool)

(assert (=> b!2799496 (= e!1768684 e!1768677)))

(declare-fun b!2799497 () Bool)

(declare-fun e!1768665 () Bool)

(declare-fun e!1768678 () Bool)

(assert (=> b!2799497 (= e!1768665 e!1768678)))

(declare-fun res!1166730 () Bool)

(assert (=> b!2799497 (=> res!1166730 e!1768678)))

(declare-fun lostCauseZipper!504 ((InoxSet Context!4866)) Bool)

(assert (=> b!2799497 (= res!1166730 (lostCauseZipper!504 z!3684))))

(declare-fun testedSuffix!143 () List!32625)

(declare-fun lt!1000464 () List!32625)

(assert (=> b!2799497 (and (= testedSuffix!143 lt!1000464) (= lt!1000464 testedSuffix!143))))

(declare-datatypes ((Unit!46645 0))(
  ( (Unit!46646) )
))
(declare-fun lt!1000472 () Unit!46645)

(declare-fun testedP!183 () List!32625)

(declare-fun lt!1000471 () List!32625)

(declare-fun lemmaSamePrefixThenSameSuffix!1207 (List!32625 List!32625 List!32625 List!32625 List!32625) Unit!46645)

(assert (=> b!2799497 (= lt!1000472 (lemmaSamePrefixThenSameSuffix!1207 testedP!183 testedSuffix!143 testedP!183 lt!1000464 lt!1000471))))

(declare-fun getSuffix!1309 (List!32625 List!32625) List!32625)

(assert (=> b!2799497 (= lt!1000464 (getSuffix!1309 lt!1000471 testedP!183))))

(declare-fun b!2799498 () Bool)

(declare-fun e!1768666 () Bool)

(declare-fun e!1768658 () Bool)

(assert (=> b!2799498 (= e!1768666 e!1768658)))

(declare-fun res!1166722 () Bool)

(assert (=> b!2799498 (=> (not res!1166722) (not e!1768658))))

(declare-fun lt!1000460 () Int)

(assert (=> b!2799498 (= res!1166722 (= testedPSize!143 lt!1000460))))

(assert (=> b!2799498 (= lt!1000460 (size!25379 testedP!183))))

(declare-fun b!2799499 () Bool)

(declare-fun e!1768676 () Bool)

(declare-fun tp_is_empty!14243 () Bool)

(declare-fun tp!891736 () Bool)

(assert (=> b!2799499 (= e!1768676 (and tp_is_empty!14243 tp!891736))))

(declare-fun b!2799500 () Bool)

(declare-fun e!1768686 () Bool)

(declare-fun e!1768680 () Bool)

(assert (=> b!2799500 (= e!1768686 e!1768680)))

(declare-fun mapIsEmpty!18287 () Bool)

(declare-fun mapRes!18288 () Bool)

(assert (=> mapIsEmpty!18287 mapRes!18288))

(declare-fun tp!891749 () Bool)

(declare-fun setNonEmpty!24439 () Bool)

(declare-fun setElem!24439 () Context!4866)

(declare-fun e!1768657 () Bool)

(declare-fun inv!44176 (Context!4866) Bool)

(assert (=> setNonEmpty!24439 (= setRes!24439 (and tp!891749 (inv!44176 setElem!24439) e!1768657))))

(declare-fun setRest!24439 () (InoxSet Context!4866))

(assert (=> setNonEmpty!24439 (= z!3684 ((_ map or) (store ((as const (Array Context!4866 Bool)) false) setElem!24439 true) setRest!24439))))

(declare-fun b!2799501 () Bool)

(declare-fun res!1166719 () Bool)

(assert (=> b!2799501 (=> (not res!1166719) (not e!1768661))))

(declare-fun valid!3150 (CacheDown!2756) Bool)

(assert (=> b!2799501 (= res!1166719 (valid!3150 cacheDown!1009))))

(declare-fun tp!891740 () Bool)

(declare-fun tp!891735 () Bool)

(declare-fun array_inv!4560 (array!14295) Bool)

(assert (=> b!2799502 (= e!1768677 (and tp!891733 tp!891740 tp!891735 (array_inv!4558 (_keys!4321 (v!34127 (underlying!8245 (v!34128 (underlying!8246 (cache!4070 cacheUp!890))))))) (array_inv!4560 (_values!4302 (v!34127 (underlying!8245 (v!34128 (underlying!8246 (cache!4070 cacheUp!890))))))) e!1768670))))

(declare-fun b!2799503 () Bool)

(declare-fun tp!891743 () Bool)

(assert (=> b!2799503 (= e!1768657 tp!891743)))

(declare-fun b!2799504 () Bool)

(declare-fun e!1768663 () Unit!46645)

(declare-fun Unit!46647 () Unit!46645)

(assert (=> b!2799504 (= e!1768663 Unit!46647)))

(declare-fun lt!1000462 () Unit!46645)

(declare-fun lemmaIsPrefixRefl!1716 (List!32625 List!32625) Unit!46645)

(assert (=> b!2799504 (= lt!1000462 (lemmaIsPrefixRefl!1716 lt!1000471 lt!1000471))))

(declare-fun isPrefix!2633 (List!32625 List!32625) Bool)

(assert (=> b!2799504 (isPrefix!2633 lt!1000471 lt!1000471)))

(declare-fun lt!1000466 () Unit!46645)

(declare-fun lemmaIsPrefixSameLengthThenSameList!492 (List!32625 List!32625 List!32625) Unit!46645)

(assert (=> b!2799504 (= lt!1000466 (lemmaIsPrefixSameLengthThenSameList!492 lt!1000471 testedP!183 lt!1000471))))

(assert (=> b!2799504 false))

(declare-fun b!2799505 () Bool)

(declare-fun e!1768683 () Bool)

(declare-fun totalInput!758 () BalanceConc!19762)

(declare-fun tp!891741 () Bool)

(declare-fun inv!44177 (Conc!10074) Bool)

(assert (=> b!2799505 (= e!1768683 (and (inv!44177 (c!453986 totalInput!758)) tp!891741))))

(declare-fun b!2799506 () Bool)

(declare-fun tp!891744 () Bool)

(assert (=> b!2799506 (= e!1768669 (and tp!891744 mapRes!18288))))

(declare-fun condMapEmpty!18287 () Bool)

(declare-fun mapDefault!18287 () List!32628)

(assert (=> b!2799506 (= condMapEmpty!18287 (= (arr!6371 (_values!4303 (v!34129 (underlying!8247 (v!34130 (underlying!8248 (cache!4071 cacheDown!1009))))))) ((as const (Array (_ BitVec 32) List!32628)) mapDefault!18287)))))

(declare-fun res!1166720 () Bool)

(assert (=> start!270686 (=> (not res!1166720) (not e!1768666))))

(declare-fun lt!1000474 () List!32625)

(assert (=> start!270686 (= res!1166720 (= lt!1000474 lt!1000471))))

(declare-fun list!12211 (BalanceConc!19762) List!32625)

(assert (=> start!270686 (= lt!1000471 (list!12211 totalInput!758))))

(declare-fun ++!8020 (List!32625 List!32625) List!32625)

(assert (=> start!270686 (= lt!1000474 (++!8020 testedP!183 testedSuffix!143))))

(assert (=> start!270686 e!1768666))

(declare-fun inv!44178 (BalanceConc!19762) Bool)

(assert (=> start!270686 (and (inv!44178 totalInput!758) e!1768683)))

(declare-fun condSetEmpty!24439 () Bool)

(assert (=> start!270686 (= condSetEmpty!24439 (= z!3684 ((as const (Array Context!4866 Bool)) false)))))

(assert (=> start!270686 setRes!24439))

(assert (=> start!270686 true))

(declare-fun e!1768679 () Bool)

(assert (=> start!270686 e!1768679))

(assert (=> start!270686 e!1768676))

(declare-fun e!1768667 () Bool)

(declare-fun inv!44179 (CacheDown!2756) Bool)

(assert (=> start!270686 (and (inv!44179 cacheDown!1009) e!1768667)))

(declare-fun e!1768675 () Bool)

(declare-fun inv!44180 (CacheUp!2630) Bool)

(assert (=> start!270686 (and (inv!44180 cacheUp!890) e!1768675)))

(declare-fun b!2799507 () Bool)

(declare-fun e!1768662 () Bool)

(declare-fun e!1768668 () Bool)

(assert (=> b!2799507 (= e!1768662 e!1768668)))

(declare-fun res!1166728 () Bool)

(assert (=> b!2799507 (=> res!1166728 e!1768668)))

(declare-fun lt!1000465 () Int)

(assert (=> b!2799507 (= res!1166728 (>= lt!1000460 lt!1000465))))

(declare-fun lt!1000452 () Unit!46645)

(assert (=> b!2799507 (= lt!1000452 e!1768663)))

(declare-fun c!453984 () Bool)

(assert (=> b!2799507 (= c!453984 (= lt!1000460 lt!1000465))))

(assert (=> b!2799507 (<= lt!1000460 (size!25379 lt!1000471))))

(declare-fun lt!1000455 () Unit!46645)

(declare-fun lemmaIsPrefixThenSmallerEqSize!293 (List!32625 List!32625) Unit!46645)

(assert (=> b!2799507 (= lt!1000455 (lemmaIsPrefixThenSmallerEqSize!293 testedP!183 lt!1000471))))

(declare-fun b!2799508 () Bool)

(declare-fun res!1166725 () Bool)

(assert (=> b!2799508 (=> res!1166725 e!1768678)))

(declare-fun totalInputSize!205 () Int)

(assert (=> b!2799508 (= res!1166725 (= testedPSize!143 totalInputSize!205))))

(declare-fun e!1768672 () Bool)

(assert (=> b!2799509 (= e!1768672 (and e!1768673 tp!891738))))

(declare-fun mapNonEmpty!18287 () Bool)

(declare-fun tp!891747 () Bool)

(declare-fun tp!891737 () Bool)

(assert (=> mapNonEmpty!18287 (= mapRes!18287 (and tp!891747 tp!891737))))

(declare-fun mapRest!18287 () (Array (_ BitVec 32) List!32627))

(declare-fun mapValue!18287 () List!32627)

(declare-fun mapKey!18288 () (_ BitVec 32))

(assert (=> mapNonEmpty!18287 (= (arr!6369 (_values!4302 (v!34127 (underlying!8245 (v!34128 (underlying!8246 (cache!4070 cacheUp!890))))))) (store mapRest!18287 mapKey!18288 mapValue!18287))))

(declare-fun b!2799510 () Bool)

(assert (=> b!2799510 (= e!1768675 e!1768672)))

(declare-fun mapNonEmpty!18288 () Bool)

(declare-fun tp!891732 () Bool)

(declare-fun tp!891746 () Bool)

(assert (=> mapNonEmpty!18288 (= mapRes!18288 (and tp!891732 tp!891746))))

(declare-fun mapRest!18288 () (Array (_ BitVec 32) List!32628))

(declare-fun mapKey!18287 () (_ BitVec 32))

(declare-fun mapValue!18288 () List!32628)

(assert (=> mapNonEmpty!18288 (= (arr!6371 (_values!4303 (v!34129 (underlying!8247 (v!34130 (underlying!8248 (cache!4071 cacheDown!1009))))))) (store mapRest!18288 mapKey!18287 mapValue!18288))))

(declare-fun b!2799511 () Bool)

(declare-fun Unit!46648 () Unit!46645)

(assert (=> b!2799511 (= e!1768663 Unit!46648)))

(declare-fun b!2799512 () Bool)

(assert (=> b!2799512 (= e!1768678 e!1768674)))

(declare-fun res!1166726 () Bool)

(assert (=> b!2799512 (=> res!1166726 e!1768674)))

(declare-fun lt!1000461 () List!32625)

(declare-fun lt!1000463 () List!32625)

(assert (=> b!2799512 (= res!1166726 (not (= (++!8020 lt!1000463 lt!1000461) lt!1000471)))))

(assert (=> b!2799512 (= lt!1000461 (list!12211 (_2!19619 lt!1000451)))))

(assert (=> b!2799512 (= lt!1000463 (list!12211 (_1!19619 lt!1000451)))))

(declare-fun splitAt!192 (BalanceConc!19762 Int) tuple2!33126)

(assert (=> b!2799512 (= lt!1000451 (splitAt!192 totalInput!758 testedPSize!143))))

(declare-fun b!2799513 () Bool)

(declare-fun tp!891750 () Bool)

(assert (=> b!2799513 (= e!1768679 (and tp_is_empty!14243 tp!891750))))

(declare-fun b!2799514 () Bool)

(assert (=> b!2799514 (= e!1768667 e!1768660)))

(declare-fun b!2799515 () Bool)

(assert (=> b!2799515 (= e!1768668 e!1768681)))

(declare-fun res!1166731 () Bool)

(assert (=> b!2799515 (=> res!1166731 e!1768681)))

(declare-fun nullableZipper!655 ((InoxSet Context!4866)) Bool)

(assert (=> b!2799515 (= res!1166731 (not (nullableZipper!655 z!3684)))))

(declare-fun lt!1000469 () List!32625)

(assert (=> b!2799515 (= (++!8020 lt!1000459 lt!1000469) lt!1000471)))

(assert (=> b!2799515 (= lt!1000459 (++!8020 testedP!183 (Cons!32525 lt!1000470 Nil!32525)))))

(declare-fun lt!1000456 () Unit!46645)

(declare-fun lemmaMoveElementToOtherListKeepsConcatEq!891 (List!32625 C!16588 List!32625 List!32625) Unit!46645)

(assert (=> b!2799515 (= lt!1000456 (lemmaMoveElementToOtherListKeepsConcatEq!891 testedP!183 lt!1000470 lt!1000469 lt!1000471))))

(declare-fun tail!4427 (List!32625) List!32625)

(assert (=> b!2799515 (= lt!1000469 (tail!4427 testedSuffix!143))))

(declare-fun head!6199 (List!32625) C!16588)

(assert (=> b!2799515 (isPrefix!2633 (++!8020 testedP!183 (Cons!32525 (head!6199 lt!1000464) Nil!32525)) lt!1000471)))

(declare-fun lt!1000467 () Unit!46645)

(declare-fun lemmaAddHeadSuffixToPrefixStillPrefix!483 (List!32625 List!32625) Unit!46645)

(assert (=> b!2799515 (= lt!1000467 (lemmaAddHeadSuffixToPrefixStillPrefix!483 testedP!183 lt!1000471))))

(declare-fun mapIsEmpty!18288 () Bool)

(assert (=> mapIsEmpty!18288 mapRes!18287))

(declare-fun b!2799516 () Bool)

(declare-fun lt!1000453 () MutLongMap!4022)

(assert (=> b!2799516 (= e!1768659 (and e!1768686 ((_ is LongMap!4022) lt!1000453)))))

(assert (=> b!2799516 (= lt!1000453 (v!34130 (underlying!8248 (cache!4071 cacheDown!1009))))))

(declare-fun b!2799517 () Bool)

(assert (=> b!2799517 (= e!1768682 e!1768684)))

(declare-fun b!2799518 () Bool)

(assert (=> b!2799518 (= e!1768658 e!1768661)))

(declare-fun res!1166729 () Bool)

(assert (=> b!2799518 (=> (not res!1166729) (not e!1768661))))

(assert (=> b!2799518 (= res!1166729 (= totalInputSize!205 lt!1000465))))

(assert (=> b!2799518 (= lt!1000465 (size!25383 totalInput!758))))

(declare-fun b!2799519 () Bool)

(assert (=> b!2799519 (= e!1768680 e!1768685)))

(declare-fun b!2799520 () Bool)

(assert (=> b!2799520 (= e!1768661 (not e!1768665))))

(declare-fun res!1166721 () Bool)

(assert (=> b!2799520 (=> res!1166721 e!1768665)))

(assert (=> b!2799520 (= res!1166721 (not (isPrefix!2633 testedP!183 lt!1000471)))))

(assert (=> b!2799520 (isPrefix!2633 testedP!183 lt!1000474)))

(declare-fun lt!1000473 () Unit!46645)

(declare-fun lemmaConcatTwoListThenFirstIsPrefix!1740 (List!32625 List!32625) Unit!46645)

(assert (=> b!2799520 (= lt!1000473 (lemmaConcatTwoListThenFirstIsPrefix!1740 testedP!183 testedSuffix!143))))

(declare-fun b!2799521 () Bool)

(assert (=> b!2799521 (= e!1768674 e!1768662)))

(declare-fun res!1166724 () Bool)

(assert (=> b!2799521 (=> res!1166724 e!1768662)))

(assert (=> b!2799521 (= res!1166724 (not (= lt!1000470 (head!6199 testedSuffix!143))))))

(declare-fun apply!7597 (BalanceConc!19762 Int) C!16588)

(assert (=> b!2799521 (= lt!1000470 (apply!7597 totalInput!758 testedPSize!143))))

(declare-fun drop!1746 (List!32625 Int) List!32625)

(declare-fun apply!7598 (List!32625 Int) C!16588)

(assert (=> b!2799521 (= (head!6199 (drop!1746 lt!1000471 testedPSize!143)) (apply!7598 lt!1000471 testedPSize!143))))

(declare-fun lt!1000457 () Unit!46645)

(declare-fun lemmaDropApply!950 (List!32625 Int) Unit!46645)

(assert (=> b!2799521 (= lt!1000457 (lemmaDropApply!950 lt!1000471 testedPSize!143))))

(assert (=> b!2799521 (not (or (not (= lt!1000463 testedP!183)) (not (= lt!1000461 testedSuffix!143))))))

(declare-fun lt!1000454 () Unit!46645)

(declare-fun lemmaConcatSameAndSameSizesThenSameLists!380 (List!32625 List!32625 List!32625 List!32625) Unit!46645)

(assert (=> b!2799521 (= lt!1000454 (lemmaConcatSameAndSameSizesThenSameLists!380 lt!1000463 lt!1000461 testedP!183 testedSuffix!143))))

(assert (= (and start!270686 res!1166720) b!2799498))

(assert (= (and b!2799498 res!1166722) b!2799518))

(assert (= (and b!2799518 res!1166729) b!2799494))

(assert (= (and b!2799494 res!1166723) b!2799501))

(assert (= (and b!2799501 res!1166719) b!2799520))

(assert (= (and b!2799520 (not res!1166721)) b!2799497))

(assert (= (and b!2799497 (not res!1166730)) b!2799508))

(assert (= (and b!2799508 (not res!1166725)) b!2799512))

(assert (= (and b!2799512 (not res!1166726)) b!2799492))

(assert (= (and b!2799492 (not res!1166727)) b!2799521))

(assert (= (and b!2799521 (not res!1166724)) b!2799507))

(assert (= (and b!2799507 c!453984) b!2799504))

(assert (= (and b!2799507 (not c!453984)) b!2799511))

(assert (= (and b!2799507 (not res!1166728)) b!2799515))

(assert (= (and b!2799515 (not res!1166731)) b!2799489))

(assert (= start!270686 b!2799505))

(assert (= (and start!270686 condSetEmpty!24439) setIsEmpty!24439))

(assert (= (and start!270686 (not condSetEmpty!24439)) setNonEmpty!24439))

(assert (= setNonEmpty!24439 b!2799503))

(assert (= (and start!270686 ((_ is Cons!32525) testedP!183)) b!2799513))

(assert (= (and start!270686 ((_ is Cons!32525) testedSuffix!143)) b!2799499))

(assert (= (and b!2799506 condMapEmpty!18287) mapIsEmpty!18287))

(assert (= (and b!2799506 (not condMapEmpty!18287)) mapNonEmpty!18288))

(assert (= b!2799495 b!2799506))

(assert (= b!2799519 b!2799495))

(assert (= b!2799500 b!2799519))

(assert (= (and b!2799516 ((_ is LongMap!4022) (v!34130 (underlying!8248 (cache!4071 cacheDown!1009))))) b!2799500))

(assert (= b!2799491 b!2799516))

(assert (= (and b!2799514 ((_ is HashMap!3928) (cache!4071 cacheDown!1009))) b!2799491))

(assert (= start!270686 b!2799514))

(assert (= (and b!2799490 condMapEmpty!18288) mapIsEmpty!18288))

(assert (= (and b!2799490 (not condMapEmpty!18288)) mapNonEmpty!18287))

(assert (= b!2799502 b!2799490))

(assert (= b!2799496 b!2799502))

(assert (= b!2799517 b!2799496))

(assert (= (and b!2799493 ((_ is LongMap!4021) (v!34128 (underlying!8246 (cache!4070 cacheUp!890))))) b!2799517))

(assert (= b!2799509 b!2799493))

(assert (= (and b!2799510 ((_ is HashMap!3927) (cache!4070 cacheUp!890))) b!2799509))

(assert (= start!270686 b!2799510))

(declare-fun m!3228999 () Bool)

(assert (=> b!2799518 m!3228999))

(declare-fun m!3229001 () Bool)

(assert (=> b!2799512 m!3229001))

(declare-fun m!3229003 () Bool)

(assert (=> b!2799512 m!3229003))

(declare-fun m!3229005 () Bool)

(assert (=> b!2799512 m!3229005))

(declare-fun m!3229007 () Bool)

(assert (=> b!2799512 m!3229007))

(declare-fun m!3229009 () Bool)

(assert (=> start!270686 m!3229009))

(declare-fun m!3229011 () Bool)

(assert (=> start!270686 m!3229011))

(declare-fun m!3229013 () Bool)

(assert (=> start!270686 m!3229013))

(declare-fun m!3229015 () Bool)

(assert (=> start!270686 m!3229015))

(declare-fun m!3229017 () Bool)

(assert (=> start!270686 m!3229017))

(declare-fun m!3229019 () Bool)

(assert (=> b!2799507 m!3229019))

(declare-fun m!3229021 () Bool)

(assert (=> b!2799507 m!3229021))

(declare-fun m!3229023 () Bool)

(assert (=> b!2799494 m!3229023))

(declare-fun m!3229025 () Bool)

(assert (=> b!2799495 m!3229025))

(declare-fun m!3229027 () Bool)

(assert (=> b!2799495 m!3229027))

(declare-fun m!3229029 () Bool)

(assert (=> b!2799505 m!3229029))

(declare-fun m!3229031 () Bool)

(assert (=> mapNonEmpty!18287 m!3229031))

(declare-fun m!3229033 () Bool)

(assert (=> b!2799498 m!3229033))

(declare-fun m!3229035 () Bool)

(assert (=> b!2799515 m!3229035))

(declare-fun m!3229037 () Bool)

(assert (=> b!2799515 m!3229037))

(declare-fun m!3229039 () Bool)

(assert (=> b!2799515 m!3229039))

(declare-fun m!3229041 () Bool)

(assert (=> b!2799515 m!3229041))

(assert (=> b!2799515 m!3229039))

(declare-fun m!3229043 () Bool)

(assert (=> b!2799515 m!3229043))

(declare-fun m!3229045 () Bool)

(assert (=> b!2799515 m!3229045))

(declare-fun m!3229047 () Bool)

(assert (=> b!2799515 m!3229047))

(declare-fun m!3229049 () Bool)

(assert (=> b!2799515 m!3229049))

(declare-fun m!3229051 () Bool)

(assert (=> b!2799515 m!3229051))

(declare-fun m!3229053 () Bool)

(assert (=> b!2799520 m!3229053))

(declare-fun m!3229055 () Bool)

(assert (=> b!2799520 m!3229055))

(declare-fun m!3229057 () Bool)

(assert (=> b!2799520 m!3229057))

(declare-fun m!3229059 () Bool)

(assert (=> b!2799521 m!3229059))

(declare-fun m!3229061 () Bool)

(assert (=> b!2799521 m!3229061))

(declare-fun m!3229063 () Bool)

(assert (=> b!2799521 m!3229063))

(declare-fun m!3229065 () Bool)

(assert (=> b!2799521 m!3229065))

(declare-fun m!3229067 () Bool)

(assert (=> b!2799521 m!3229067))

(declare-fun m!3229069 () Bool)

(assert (=> b!2799521 m!3229069))

(assert (=> b!2799521 m!3229067))

(declare-fun m!3229071 () Bool)

(assert (=> b!2799521 m!3229071))

(declare-fun m!3229073 () Bool)

(assert (=> setNonEmpty!24439 m!3229073))

(declare-fun m!3229075 () Bool)

(assert (=> b!2799502 m!3229075))

(declare-fun m!3229077 () Bool)

(assert (=> b!2799502 m!3229077))

(declare-fun m!3229079 () Bool)

(assert (=> b!2799501 m!3229079))

(declare-fun m!3229081 () Bool)

(assert (=> mapNonEmpty!18288 m!3229081))

(declare-fun m!3229083 () Bool)

(assert (=> b!2799497 m!3229083))

(declare-fun m!3229085 () Bool)

(assert (=> b!2799497 m!3229085))

(declare-fun m!3229087 () Bool)

(assert (=> b!2799497 m!3229087))

(declare-fun m!3229089 () Bool)

(assert (=> b!2799504 m!3229089))

(declare-fun m!3229091 () Bool)

(assert (=> b!2799504 m!3229091))

(declare-fun m!3229093 () Bool)

(assert (=> b!2799504 m!3229093))

(declare-fun m!3229095 () Bool)

(assert (=> b!2799492 m!3229095))

(declare-fun m!3229097 () Bool)

(assert (=> b!2799489 m!3229097))

(declare-fun m!3229099 () Bool)

(assert (=> b!2799489 m!3229099))

(check-sat (not b!2799499) (not b!2799513) (not b!2799490) (not b_next!80065) (not mapNonEmpty!18287) b_and!204095 (not mapNonEmpty!18288) (not b!2799495) (not setNonEmpty!24439) (not b!2799507) (not b!2799521) (not b!2799492) (not b!2799494) (not b!2799502) (not b!2799520) (not b!2799504) (not b_next!80063) (not b!2799512) (not b!2799503) tp_is_empty!14243 (not b_next!80061) (not b!2799489) (not b!2799506) (not b!2799505) (not start!270686) (not b!2799501) (not b_next!80067) (not b!2799515) (not b!2799518) b_and!204099 b_and!204101 (not b!2799498) b_and!204097 (not b!2799497))
(check-sat (not b_next!80063) (not b_next!80061) (not b_next!80065) b_and!204095 (not b_next!80067) b_and!204099 b_and!204101 b_and!204097)
