; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!270266 () Bool)

(assert start!270266)

(declare-fun b!2795691 () Bool)

(declare-fun b_free!79173 () Bool)

(declare-fun b_next!79877 () Bool)

(assert (=> b!2795691 (= b_free!79173 (not b_next!79877))))

(declare-fun tp!889392 () Bool)

(declare-fun b_and!203911 () Bool)

(assert (=> b!2795691 (= tp!889392 b_and!203911)))

(declare-fun b!2795675 () Bool)

(declare-fun b_free!79175 () Bool)

(declare-fun b_next!79879 () Bool)

(assert (=> b!2795675 (= b_free!79175 (not b_next!79879))))

(declare-fun tp!889407 () Bool)

(declare-fun b_and!203913 () Bool)

(assert (=> b!2795675 (= tp!889407 b_and!203913)))

(declare-fun b!2795679 () Bool)

(declare-fun b_free!79177 () Bool)

(declare-fun b_next!79881 () Bool)

(assert (=> b!2795679 (= b_free!79177 (not b_next!79881))))

(declare-fun tp!889401 () Bool)

(declare-fun b_and!203915 () Bool)

(assert (=> b!2795679 (= tp!889401 b_and!203915)))

(declare-fun b!2795684 () Bool)

(declare-fun b_free!79179 () Bool)

(declare-fun b_next!79883 () Bool)

(assert (=> b!2795684 (= b_free!79179 (not b_next!79883))))

(declare-fun tp!889406 () Bool)

(declare-fun b_and!203917 () Bool)

(assert (=> b!2795684 (= tp!889406 b_and!203917)))

(declare-fun b!2795669 () Bool)

(declare-fun res!1165522 () Bool)

(declare-fun e!1765565 () Bool)

(assert (=> b!2795669 (=> (not res!1165522) (not e!1765565))))

(declare-fun totalInputSize!205 () Int)

(declare-datatypes ((C!16544 0))(
  ( (C!16545 (val!10206 Int)) )
))
(declare-datatypes ((List!32535 0))(
  ( (Nil!32435) (Cons!32435 (h!37855 C!16544) (t!228695 List!32535)) )
))
(declare-datatypes ((IArray!20117 0))(
  ( (IArray!20118 (innerList!10116 List!32535)) )
))
(declare-datatypes ((Conc!10056 0))(
  ( (Node!10056 (left!24550 Conc!10056) (right!24880 Conc!10056) (csize!20342 Int) (cheight!10267 Int)) (Leaf!15321 (xs!13168 IArray!20117) (csize!20343 Int)) (Empty!10056) )
))
(declare-datatypes ((BalanceConc!19726 0))(
  ( (BalanceConc!19727 (c!453590 Conc!10056)) )
))
(declare-fun totalInput!758 () BalanceConc!19726)

(declare-fun size!25280 (BalanceConc!19726) Int)

(assert (=> b!2795669 (= res!1165522 (= totalInputSize!205 (size!25280 totalInput!758)))))

(declare-fun b!2795670 () Bool)

(declare-fun e!1765562 () Bool)

(declare-fun e!1765555 () Bool)

(assert (=> b!2795670 (= e!1765562 e!1765555)))

(declare-fun res!1165521 () Bool)

(assert (=> b!2795670 (=> res!1165521 e!1765555)))

(define-sort InoxSet (T) (Array T Bool))

(declare-datatypes ((Regex!8193 0))(
  ( (ElementMatch!8193 (c!453591 C!16544)) (Concat!13281 (regOne!16898 Regex!8193) (regTwo!16898 Regex!8193)) (EmptyExpr!8193) (Star!8193 (reg!8522 Regex!8193)) (EmptyLang!8193) (Union!8193 (regOne!16899 Regex!8193) (regTwo!16899 Regex!8193)) )
))
(declare-datatypes ((List!32536 0))(
  ( (Nil!32436) (Cons!32436 (h!37856 Regex!8193) (t!228696 List!32536)) )
))
(declare-datatypes ((Context!4822 0))(
  ( (Context!4823 (exprs!2911 List!32536)) )
))
(declare-fun z!3684 () (InoxSet Context!4822))

(declare-fun lostCauseZipper!490 ((InoxSet Context!4822)) Bool)

(assert (=> b!2795670 (= res!1165521 (lostCauseZipper!490 z!3684))))

(declare-fun testedSuffix!143 () List!32535)

(declare-fun lt!998814 () List!32535)

(assert (=> b!2795670 (and (= testedSuffix!143 lt!998814) (= lt!998814 testedSuffix!143))))

(declare-fun lt!998812 () List!32535)

(declare-datatypes ((Unit!46588 0))(
  ( (Unit!46589) )
))
(declare-fun lt!998810 () Unit!46588)

(declare-fun testedP!183 () List!32535)

(declare-fun lemmaSamePrefixThenSameSuffix!1193 (List!32535 List!32535 List!32535 List!32535 List!32535) Unit!46588)

(assert (=> b!2795670 (= lt!998810 (lemmaSamePrefixThenSameSuffix!1193 testedP!183 testedSuffix!143 testedP!183 lt!998814 lt!998812))))

(declare-fun getSuffix!1295 (List!32535 List!32535) List!32535)

(assert (=> b!2795670 (= lt!998814 (getSuffix!1295 lt!998812 testedP!183))))

(declare-fun b!2795671 () Bool)

(declare-fun e!1765576 () Bool)

(declare-fun e!1765564 () Bool)

(assert (=> b!2795671 (= e!1765576 e!1765564)))

(declare-fun b!2795672 () Bool)

(declare-fun e!1765563 () Bool)

(declare-datatypes ((array!14151 0))(
  ( (array!14152 (arr!6306 (Array (_ BitVec 32) (_ BitVec 64))) (size!25281 (_ BitVec 32))) )
))
(declare-datatypes ((tuple3!5120 0))(
  ( (tuple3!5121 (_1!19508 Regex!8193) (_2!19508 Context!4822) (_3!3030 C!16544)) )
))
(declare-datatypes ((tuple2!32956 0))(
  ( (tuple2!32957 (_1!19509 tuple3!5120) (_2!19509 (InoxSet Context!4822))) )
))
(declare-datatypes ((List!32537 0))(
  ( (Nil!32437) (Cons!32437 (h!37857 tuple2!32956) (t!228697 List!32537)) )
))
(declare-datatypes ((array!14153 0))(
  ( (array!14154 (arr!6307 (Array (_ BitVec 32) List!32537)) (size!25282 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!7960 0))(
  ( (LongMapFixedSize!7961 (defaultEntry!4365 Int) (mask!9813 (_ BitVec 32)) (extraKeys!4229 (_ BitVec 32)) (zeroValue!4239 List!32537) (minValue!4239 List!32537) (_size!8003 (_ BitVec 32)) (_keys!4280 array!14151) (_values!4261 array!14153) (_vacant!4041 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!15729 0))(
  ( (Cell!15730 (v!34038 LongMapFixedSize!7960)) )
))
(declare-datatypes ((MutLongMap!3980 0))(
  ( (LongMap!3980 (underlying!8163 Cell!15729)) (MutLongMapExt!3979 (__x!21590 Int)) )
))
(declare-fun lt!998811 () MutLongMap!3980)

(get-info :version)

(assert (=> b!2795672 (= e!1765563 (and e!1765576 ((_ is LongMap!3980) lt!998811)))))

(declare-datatypes ((Cell!15731 0))(
  ( (Cell!15732 (v!34039 MutLongMap!3980)) )
))
(declare-datatypes ((Hashable!3896 0))(
  ( (HashableExt!3895 (__x!21591 Int)) )
))
(declare-datatypes ((MutableMap!3886 0))(
  ( (MutableMapExt!3885 (__x!21592 Int)) (HashMap!3886 (underlying!8164 Cell!15731) (hashF!5928 Hashable!3896) (_size!8004 (_ BitVec 32)) (defaultValue!4057 Int)) )
))
(declare-datatypes ((CacheDown!2712 0))(
  ( (CacheDown!2713 (cache!4029 MutableMap!3886)) )
))
(declare-fun cacheDown!1009 () CacheDown!2712)

(assert (=> b!2795672 (= lt!998811 (v!34039 (underlying!8164 (cache!4029 cacheDown!1009))))))

(declare-fun b!2795673 () Bool)

(declare-fun e!1765572 () Bool)

(declare-fun tp_is_empty!14199 () Bool)

(declare-fun tp!889404 () Bool)

(assert (=> b!2795673 (= e!1765572 (and tp_is_empty!14199 tp!889404))))

(declare-fun b!2795674 () Bool)

(declare-fun e!1765557 () Bool)

(declare-fun e!1765569 () Bool)

(assert (=> b!2795674 (= e!1765557 e!1765569)))

(declare-fun tp!889395 () Bool)

(declare-fun tp!889402 () Bool)

(declare-fun e!1765568 () Bool)

(declare-datatypes ((Hashable!3897 0))(
  ( (HashableExt!3896 (__x!21593 Int)) )
))
(declare-datatypes ((tuple2!32958 0))(
  ( (tuple2!32959 (_1!19510 Context!4822) (_2!19510 C!16544)) )
))
(declare-datatypes ((tuple2!32960 0))(
  ( (tuple2!32961 (_1!19511 tuple2!32958) (_2!19511 (InoxSet Context!4822))) )
))
(declare-datatypes ((List!32538 0))(
  ( (Nil!32438) (Cons!32438 (h!37858 tuple2!32960) (t!228698 List!32538)) )
))
(declare-datatypes ((array!14155 0))(
  ( (array!14156 (arr!6308 (Array (_ BitVec 32) List!32538)) (size!25283 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!7962 0))(
  ( (LongMapFixedSize!7963 (defaultEntry!4366 Int) (mask!9814 (_ BitVec 32)) (extraKeys!4230 (_ BitVec 32)) (zeroValue!4240 List!32538) (minValue!4240 List!32538) (_size!8005 (_ BitVec 32)) (_keys!4281 array!14151) (_values!4262 array!14155) (_vacant!4042 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!15733 0))(
  ( (Cell!15734 (v!34040 LongMapFixedSize!7962)) )
))
(declare-datatypes ((MutLongMap!3981 0))(
  ( (LongMap!3981 (underlying!8165 Cell!15733)) (MutLongMapExt!3980 (__x!21594 Int)) )
))
(declare-datatypes ((Cell!15735 0))(
  ( (Cell!15736 (v!34041 MutLongMap!3981)) )
))
(declare-datatypes ((MutableMap!3887 0))(
  ( (MutableMapExt!3886 (__x!21595 Int)) (HashMap!3887 (underlying!8166 Cell!15735) (hashF!5929 Hashable!3897) (_size!8006 (_ BitVec 32)) (defaultValue!4058 Int)) )
))
(declare-datatypes ((CacheUp!2592 0))(
  ( (CacheUp!2593 (cache!4030 MutableMap!3887)) )
))
(declare-fun cacheUp!890 () CacheUp!2592)

(declare-fun array_inv!4515 (array!14151) Bool)

(declare-fun array_inv!4516 (array!14155) Bool)

(assert (=> b!2795675 (= e!1765569 (and tp!889407 tp!889395 tp!889402 (array_inv!4515 (_keys!4281 (v!34040 (underlying!8165 (v!34041 (underlying!8166 (cache!4030 cacheUp!890))))))) (array_inv!4516 (_values!4262 (v!34040 (underlying!8165 (v!34041 (underlying!8166 (cache!4030 cacheUp!890))))))) e!1765568))))

(declare-fun b!2795676 () Bool)

(declare-fun e!1765558 () Bool)

(declare-fun e!1765574 () Bool)

(assert (=> b!2795676 (= e!1765558 e!1765574)))

(declare-fun b!2795677 () Bool)

(declare-fun tp!889403 () Bool)

(declare-fun mapRes!18111 () Bool)

(assert (=> b!2795677 (= e!1765568 (and tp!889403 mapRes!18111))))

(declare-fun condMapEmpty!18111 () Bool)

(declare-fun mapDefault!18112 () List!32538)

(assert (=> b!2795677 (= condMapEmpty!18111 (= (arr!6308 (_values!4262 (v!34040 (underlying!8165 (v!34041 (underlying!8166 (cache!4030 cacheUp!890))))))) ((as const (Array (_ BitVec 32) List!32538)) mapDefault!18112)))))

(declare-fun b!2795678 () Bool)

(declare-fun e!1765566 () Bool)

(declare-fun tp!889400 () Bool)

(declare-fun inv!44062 (Conc!10056) Bool)

(assert (=> b!2795678 (= e!1765566 (and (inv!44062 (c!453590 totalInput!758)) tp!889400))))

(declare-fun mapNonEmpty!18111 () Bool)

(declare-fun tp!889393 () Bool)

(declare-fun tp!889394 () Bool)

(assert (=> mapNonEmpty!18111 (= mapRes!18111 (and tp!889393 tp!889394))))

(declare-fun mapValue!18111 () List!32538)

(declare-fun mapRest!18111 () (Array (_ BitVec 32) List!32538))

(declare-fun mapKey!18111 () (_ BitVec 32))

(assert (=> mapNonEmpty!18111 (= (arr!6308 (_values!4262 (v!34040 (underlying!8165 (v!34041 (underlying!8166 (cache!4030 cacheUp!890))))))) (store mapRest!18111 mapKey!18111 mapValue!18111))))

(declare-fun e!1765570 () Bool)

(assert (=> b!2795679 (= e!1765574 (and e!1765570 tp!889401))))

(declare-fun setElem!24179 () Context!4822)

(declare-fun tp!889396 () Bool)

(declare-fun setRes!24179 () Bool)

(declare-fun e!1765560 () Bool)

(declare-fun setNonEmpty!24179 () Bool)

(declare-fun inv!44063 (Context!4822) Bool)

(assert (=> setNonEmpty!24179 (= setRes!24179 (and tp!889396 (inv!44063 setElem!24179) e!1765560))))

(declare-fun setRest!24179 () (InoxSet Context!4822))

(assert (=> setNonEmpty!24179 (= z!3684 ((_ map or) (store ((as const (Array Context!4822 Bool)) false) setElem!24179 true) setRest!24179))))

(declare-fun b!2795680 () Bool)

(declare-fun e!1765561 () Bool)

(declare-fun tp!889390 () Bool)

(assert (=> b!2795680 (= e!1765561 (and tp_is_empty!14199 tp!889390))))

(declare-fun b!2795681 () Bool)

(declare-fun res!1165525 () Bool)

(assert (=> b!2795681 (=> (not res!1165525) (not e!1765565))))

(declare-fun testedPSize!143 () Int)

(declare-fun size!25284 (List!32535) Int)

(assert (=> b!2795681 (= res!1165525 (= testedPSize!143 (size!25284 testedP!183)))))

(declare-fun b!2795682 () Bool)

(declare-fun e!1765571 () Bool)

(declare-fun e!1765573 () Bool)

(assert (=> b!2795682 (= e!1765571 e!1765573)))

(declare-fun b!2795683 () Bool)

(declare-fun tp!889398 () Bool)

(assert (=> b!2795683 (= e!1765560 tp!889398)))

(declare-fun mapNonEmpty!18112 () Bool)

(declare-fun mapRes!18112 () Bool)

(declare-fun tp!889397 () Bool)

(declare-fun tp!889399 () Bool)

(assert (=> mapNonEmpty!18112 (= mapRes!18112 (and tp!889397 tp!889399))))

(declare-fun mapValue!18112 () List!32537)

(declare-fun mapKey!18112 () (_ BitVec 32))

(declare-fun mapRest!18112 () (Array (_ BitVec 32) List!32537))

(assert (=> mapNonEmpty!18112 (= (arr!6307 (_values!4261 (v!34038 (underlying!8163 (v!34039 (underlying!8164 (cache!4029 cacheDown!1009))))))) (store mapRest!18112 mapKey!18112 mapValue!18112))))

(declare-fun mapIsEmpty!18112 () Bool)

(assert (=> mapIsEmpty!18112 mapRes!18112))

(assert (=> b!2795684 (= e!1765573 (and e!1765563 tp!889406))))

(declare-fun b!2795685 () Bool)

(assert (=> b!2795685 (= e!1765555 true)))

(declare-fun isPrefix!2617 (List!32535 List!32535) Bool)

(assert (=> b!2795685 (isPrefix!2617 lt!998812 lt!998812)))

(declare-fun lt!998808 () Unit!46588)

(declare-fun lemmaIsPrefixRefl!1706 (List!32535 List!32535) Unit!46588)

(assert (=> b!2795685 (= lt!998808 (lemmaIsPrefixRefl!1706 lt!998812 lt!998812))))

(declare-fun b!2795686 () Bool)

(declare-fun e!1765559 () Bool)

(assert (=> b!2795686 (= e!1765559 e!1765557)))

(declare-fun b!2795687 () Bool)

(assert (=> b!2795687 (= e!1765565 (not e!1765562))))

(declare-fun res!1165528 () Bool)

(assert (=> b!2795687 (=> res!1165528 e!1765562)))

(assert (=> b!2795687 (= res!1165528 (not (isPrefix!2617 testedP!183 lt!998812)))))

(declare-fun lt!998807 () List!32535)

(assert (=> b!2795687 (isPrefix!2617 testedP!183 lt!998807)))

(declare-fun lt!998813 () Unit!46588)

(declare-fun lemmaConcatTwoListThenFirstIsPrefix!1726 (List!32535 List!32535) Unit!46588)

(assert (=> b!2795687 (= lt!998813 (lemmaConcatTwoListThenFirstIsPrefix!1726 testedP!183 testedSuffix!143))))

(declare-fun setIsEmpty!24179 () Bool)

(assert (=> setIsEmpty!24179 setRes!24179))

(declare-fun b!2795688 () Bool)

(declare-fun lt!998809 () MutLongMap!3981)

(assert (=> b!2795688 (= e!1765570 (and e!1765559 ((_ is LongMap!3981) lt!998809)))))

(assert (=> b!2795688 (= lt!998809 (v!34041 (underlying!8166 (cache!4030 cacheUp!890))))))

(declare-fun b!2795689 () Bool)

(declare-fun e!1765556 () Bool)

(assert (=> b!2795689 (= e!1765564 e!1765556)))

(declare-fun b!2795690 () Bool)

(declare-fun res!1165527 () Bool)

(assert (=> b!2795690 (=> res!1165527 e!1765555)))

(assert (=> b!2795690 (= res!1165527 (not (= testedPSize!143 totalInputSize!205)))))

(declare-fun e!1765575 () Bool)

(declare-fun tp!889408 () Bool)

(declare-fun tp!889405 () Bool)

(declare-fun array_inv!4517 (array!14153) Bool)

(assert (=> b!2795691 (= e!1765556 (and tp!889392 tp!889405 tp!889408 (array_inv!4515 (_keys!4280 (v!34038 (underlying!8163 (v!34039 (underlying!8164 (cache!4029 cacheDown!1009))))))) (array_inv!4517 (_values!4261 (v!34038 (underlying!8163 (v!34039 (underlying!8164 (cache!4029 cacheDown!1009))))))) e!1765575))))

(declare-fun b!2795692 () Bool)

(declare-fun res!1165523 () Bool)

(assert (=> b!2795692 (=> (not res!1165523) (not e!1765565))))

(declare-fun valid!3121 (CacheUp!2592) Bool)

(assert (=> b!2795692 (= res!1165523 (valid!3121 cacheUp!890))))

(declare-fun b!2795693 () Bool)

(declare-fun res!1165526 () Bool)

(assert (=> b!2795693 (=> (not res!1165526) (not e!1765565))))

(declare-fun valid!3122 (CacheDown!2712) Bool)

(assert (=> b!2795693 (= res!1165526 (valid!3122 cacheDown!1009))))

(declare-fun b!2795694 () Bool)

(declare-fun tp!889391 () Bool)

(assert (=> b!2795694 (= e!1765575 (and tp!889391 mapRes!18112))))

(declare-fun condMapEmpty!18112 () Bool)

(declare-fun mapDefault!18111 () List!32537)

(assert (=> b!2795694 (= condMapEmpty!18112 (= (arr!6307 (_values!4261 (v!34038 (underlying!8163 (v!34039 (underlying!8164 (cache!4029 cacheDown!1009))))))) ((as const (Array (_ BitVec 32) List!32537)) mapDefault!18111)))))

(declare-fun mapIsEmpty!18111 () Bool)

(assert (=> mapIsEmpty!18111 mapRes!18111))

(declare-fun res!1165524 () Bool)

(assert (=> start!270266 (=> (not res!1165524) (not e!1765565))))

(assert (=> start!270266 (= res!1165524 (= lt!998807 lt!998812))))

(declare-fun list!12191 (BalanceConc!19726) List!32535)

(assert (=> start!270266 (= lt!998812 (list!12191 totalInput!758))))

(declare-fun ++!8005 (List!32535 List!32535) List!32535)

(assert (=> start!270266 (= lt!998807 (++!8005 testedP!183 testedSuffix!143))))

(assert (=> start!270266 e!1765565))

(declare-fun inv!44064 (BalanceConc!19726) Bool)

(assert (=> start!270266 (and (inv!44064 totalInput!758) e!1765566)))

(declare-fun condSetEmpty!24179 () Bool)

(assert (=> start!270266 (= condSetEmpty!24179 (= z!3684 ((as const (Array Context!4822 Bool)) false)))))

(assert (=> start!270266 setRes!24179))

(assert (=> start!270266 true))

(assert (=> start!270266 e!1765561))

(assert (=> start!270266 e!1765572))

(declare-fun inv!44065 (CacheDown!2712) Bool)

(assert (=> start!270266 (and (inv!44065 cacheDown!1009) e!1765571)))

(declare-fun inv!44066 (CacheUp!2592) Bool)

(assert (=> start!270266 (and (inv!44066 cacheUp!890) e!1765558)))

(assert (= (and start!270266 res!1165524) b!2795681))

(assert (= (and b!2795681 res!1165525) b!2795669))

(assert (= (and b!2795669 res!1165522) b!2795692))

(assert (= (and b!2795692 res!1165523) b!2795693))

(assert (= (and b!2795693 res!1165526) b!2795687))

(assert (= (and b!2795687 (not res!1165528)) b!2795670))

(assert (= (and b!2795670 (not res!1165521)) b!2795690))

(assert (= (and b!2795690 (not res!1165527)) b!2795685))

(assert (= start!270266 b!2795678))

(assert (= (and start!270266 condSetEmpty!24179) setIsEmpty!24179))

(assert (= (and start!270266 (not condSetEmpty!24179)) setNonEmpty!24179))

(assert (= setNonEmpty!24179 b!2795683))

(assert (= (and start!270266 ((_ is Cons!32435) testedP!183)) b!2795680))

(assert (= (and start!270266 ((_ is Cons!32435) testedSuffix!143)) b!2795673))

(assert (= (and b!2795694 condMapEmpty!18112) mapIsEmpty!18112))

(assert (= (and b!2795694 (not condMapEmpty!18112)) mapNonEmpty!18112))

(assert (= b!2795691 b!2795694))

(assert (= b!2795689 b!2795691))

(assert (= b!2795671 b!2795689))

(assert (= (and b!2795672 ((_ is LongMap!3980) (v!34039 (underlying!8164 (cache!4029 cacheDown!1009))))) b!2795671))

(assert (= b!2795684 b!2795672))

(assert (= (and b!2795682 ((_ is HashMap!3886) (cache!4029 cacheDown!1009))) b!2795684))

(assert (= start!270266 b!2795682))

(assert (= (and b!2795677 condMapEmpty!18111) mapIsEmpty!18111))

(assert (= (and b!2795677 (not condMapEmpty!18111)) mapNonEmpty!18111))

(assert (= b!2795675 b!2795677))

(assert (= b!2795674 b!2795675))

(assert (= b!2795686 b!2795674))

(assert (= (and b!2795688 ((_ is LongMap!3981) (v!34041 (underlying!8166 (cache!4030 cacheUp!890))))) b!2795686))

(assert (= b!2795679 b!2795688))

(assert (= (and b!2795676 ((_ is HashMap!3887) (cache!4030 cacheUp!890))) b!2795679))

(assert (= start!270266 b!2795676))

(declare-fun m!3225529 () Bool)

(assert (=> b!2795675 m!3225529))

(declare-fun m!3225531 () Bool)

(assert (=> b!2795675 m!3225531))

(declare-fun m!3225533 () Bool)

(assert (=> b!2795693 m!3225533))

(declare-fun m!3225535 () Bool)

(assert (=> b!2795685 m!3225535))

(declare-fun m!3225537 () Bool)

(assert (=> b!2795685 m!3225537))

(declare-fun m!3225539 () Bool)

(assert (=> b!2795687 m!3225539))

(declare-fun m!3225541 () Bool)

(assert (=> b!2795687 m!3225541))

(declare-fun m!3225543 () Bool)

(assert (=> b!2795687 m!3225543))

(declare-fun m!3225545 () Bool)

(assert (=> setNonEmpty!24179 m!3225545))

(declare-fun m!3225547 () Bool)

(assert (=> mapNonEmpty!18112 m!3225547))

(declare-fun m!3225549 () Bool)

(assert (=> mapNonEmpty!18111 m!3225549))

(declare-fun m!3225551 () Bool)

(assert (=> b!2795670 m!3225551))

(declare-fun m!3225553 () Bool)

(assert (=> b!2795670 m!3225553))

(declare-fun m!3225555 () Bool)

(assert (=> b!2795670 m!3225555))

(declare-fun m!3225557 () Bool)

(assert (=> b!2795681 m!3225557))

(declare-fun m!3225559 () Bool)

(assert (=> b!2795692 m!3225559))

(declare-fun m!3225561 () Bool)

(assert (=> b!2795691 m!3225561))

(declare-fun m!3225563 () Bool)

(assert (=> b!2795691 m!3225563))

(declare-fun m!3225565 () Bool)

(assert (=> b!2795669 m!3225565))

(declare-fun m!3225567 () Bool)

(assert (=> b!2795678 m!3225567))

(declare-fun m!3225569 () Bool)

(assert (=> start!270266 m!3225569))

(declare-fun m!3225571 () Bool)

(assert (=> start!270266 m!3225571))

(declare-fun m!3225573 () Bool)

(assert (=> start!270266 m!3225573))

(declare-fun m!3225575 () Bool)

(assert (=> start!270266 m!3225575))

(declare-fun m!3225577 () Bool)

(assert (=> start!270266 m!3225577))

(check-sat (not b!2795691) (not b!2795681) (not b!2795692) (not b!2795685) (not b_next!79883) (not b!2795670) (not setNonEmpty!24179) b_and!203917 b_and!203913 b_and!203915 (not b!2795683) (not start!270266) b_and!203911 tp_is_empty!14199 (not b!2795669) (not b!2795673) (not b!2795675) (not b_next!79881) (not b!2795693) (not mapNonEmpty!18112) (not b!2795677) (not b!2795680) (not b_next!79879) (not b!2795687) (not b!2795678) (not b!2795694) (not mapNonEmpty!18111) (not b_next!79877))
(check-sat (not b_next!79881) (not b_next!79879) (not b_next!79883) (not b_next!79877) b_and!203917 b_and!203913 b_and!203915 b_and!203911)
