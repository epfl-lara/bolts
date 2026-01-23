; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!270416 () Bool)

(assert start!270416)

(declare-fun b!2797418 () Bool)

(declare-fun b_free!79285 () Bool)

(declare-fun b_next!79989 () Bool)

(assert (=> b!2797418 (= b_free!79285 (not b_next!79989))))

(declare-fun tp!890605 () Bool)

(declare-fun b_and!204023 () Bool)

(assert (=> b!2797418 (= tp!890605 b_and!204023)))

(declare-fun b!2797422 () Bool)

(declare-fun b_free!79287 () Bool)

(declare-fun b_next!79991 () Bool)

(assert (=> b!2797422 (= b_free!79287 (not b_next!79991))))

(declare-fun tp!890612 () Bool)

(declare-fun b_and!204025 () Bool)

(assert (=> b!2797422 (= tp!890612 b_and!204025)))

(declare-fun b!2797438 () Bool)

(declare-fun b_free!79289 () Bool)

(declare-fun b_next!79993 () Bool)

(assert (=> b!2797438 (= b_free!79289 (not b_next!79993))))

(declare-fun tp!890623 () Bool)

(declare-fun b_and!204027 () Bool)

(assert (=> b!2797438 (= tp!890623 b_and!204027)))

(declare-fun b!2797431 () Bool)

(declare-fun b_free!79291 () Bool)

(declare-fun b_next!79995 () Bool)

(assert (=> b!2797431 (= b_free!79291 (not b_next!79995))))

(declare-fun tp!890622 () Bool)

(declare-fun b_and!204029 () Bool)

(assert (=> b!2797431 (= tp!890622 b_and!204029)))

(declare-fun b!2797416 () Bool)

(declare-fun res!1166089 () Bool)

(declare-fun e!1767062 () Bool)

(assert (=> b!2797416 (=> res!1166089 e!1767062)))

(declare-fun testedPSize!143 () Int)

(declare-fun totalInputSize!205 () Int)

(assert (=> b!2797416 (= res!1166089 (= testedPSize!143 totalInputSize!205))))

(declare-fun e!1767056 () Bool)

(declare-fun setNonEmpty!24302 () Bool)

(declare-datatypes ((C!16572 0))(
  ( (C!16573 (val!10220 Int)) )
))
(declare-datatypes ((Regex!8207 0))(
  ( (ElementMatch!8207 (c!453696 C!16572)) (Concat!13295 (regOne!16926 Regex!8207) (regTwo!16926 Regex!8207)) (EmptyExpr!8207) (Star!8207 (reg!8536 Regex!8207)) (EmptyLang!8207) (Union!8207 (regOne!16927 Regex!8207) (regTwo!16927 Regex!8207)) )
))
(declare-datatypes ((List!32592 0))(
  ( (Nil!32492) (Cons!32492 (h!37912 Regex!8207) (t!228752 List!32592)) )
))
(declare-datatypes ((Context!4850 0))(
  ( (Context!4851 (exprs!2925 List!32592)) )
))
(declare-fun setElem!24302 () Context!4850)

(declare-fun tp!890606 () Bool)

(declare-fun setRes!24302 () Bool)

(declare-fun inv!44130 (Context!4850) Bool)

(assert (=> setNonEmpty!24302 (= setRes!24302 (and tp!890606 (inv!44130 setElem!24302) e!1767056))))

(define-sort InoxSet (T) (Array T Bool))

(declare-fun z!3684 () (InoxSet Context!4850))

(declare-fun setRest!24302 () (InoxSet Context!4850))

(assert (=> setNonEmpty!24302 (= z!3684 ((_ map or) (store ((as const (Array Context!4850 Bool)) false) setElem!24302 true) setRest!24302))))

(declare-fun b!2797417 () Bool)

(declare-fun e!1767063 () Bool)

(declare-fun e!1767071 () Bool)

(assert (=> b!2797417 (= e!1767063 e!1767071)))

(declare-fun res!1166085 () Bool)

(assert (=> b!2797417 (=> (not res!1166085) (not e!1767071))))

(declare-fun lt!999529 () Int)

(assert (=> b!2797417 (= res!1166085 (= testedPSize!143 lt!999529))))

(declare-datatypes ((List!32593 0))(
  ( (Nil!32493) (Cons!32493 (h!37913 C!16572) (t!228753 List!32593)) )
))
(declare-fun testedP!183 () List!32593)

(declare-fun size!25343 (List!32593) Int)

(assert (=> b!2797417 (= lt!999529 (size!25343 testedP!183))))

(declare-fun e!1767065 () Bool)

(declare-fun e!1767052 () Bool)

(assert (=> b!2797418 (= e!1767065 (and e!1767052 tp!890605))))

(declare-fun b!2797419 () Bool)

(declare-fun e!1767074 () Bool)

(declare-fun e!1767068 () Bool)

(assert (=> b!2797419 (= e!1767074 (not e!1767068))))

(declare-fun res!1166086 () Bool)

(assert (=> b!2797419 (=> res!1166086 e!1767068)))

(declare-fun lt!999531 () List!32593)

(declare-fun isPrefix!2628 (List!32593 List!32593) Bool)

(assert (=> b!2797419 (= res!1166086 (not (isPrefix!2628 testedP!183 lt!999531)))))

(declare-fun lt!999527 () List!32593)

(assert (=> b!2797419 (isPrefix!2628 testedP!183 lt!999527)))

(declare-datatypes ((Unit!46618 0))(
  ( (Unit!46619) )
))
(declare-fun lt!999536 () Unit!46618)

(declare-fun testedSuffix!143 () List!32593)

(declare-fun lemmaConcatTwoListThenFirstIsPrefix!1736 (List!32593 List!32593) Unit!46618)

(assert (=> b!2797419 (= lt!999536 (lemmaConcatTwoListThenFirstIsPrefix!1736 testedP!183 testedSuffix!143))))

(declare-fun b!2797420 () Bool)

(declare-fun res!1166084 () Bool)

(assert (=> b!2797420 (=> (not res!1166084) (not e!1767074))))

(declare-datatypes ((Hashable!3922 0))(
  ( (HashableExt!3921 (__x!21668 Int)) )
))
(declare-datatypes ((tuple2!33056 0))(
  ( (tuple2!33057 (_1!19572 Context!4850) (_2!19572 C!16572)) )
))
(declare-datatypes ((tuple2!33058 0))(
  ( (tuple2!33059 (_1!19573 tuple2!33056) (_2!19573 (InoxSet Context!4850))) )
))
(declare-datatypes ((List!32594 0))(
  ( (Nil!32494) (Cons!32494 (h!37914 tuple2!33058) (t!228754 List!32594)) )
))
(declare-datatypes ((array!14240 0))(
  ( (array!14241 (arr!6346 (Array (_ BitVec 32) List!32594)) (size!25344 (_ BitVec 32))) )
))
(declare-datatypes ((array!14242 0))(
  ( (array!14243 (arr!6347 (Array (_ BitVec 32) (_ BitVec 64))) (size!25345 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!8012 0))(
  ( (LongMapFixedSize!8013 (defaultEntry!4391 Int) (mask!9846 (_ BitVec 32)) (extraKeys!4255 (_ BitVec 32)) (zeroValue!4265 List!32594) (minValue!4265 List!32594) (_size!8055 (_ BitVec 32)) (_keys!4306 array!14242) (_values!4287 array!14240) (_vacant!4067 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!15833 0))(
  ( (Cell!15834 (v!34093 LongMapFixedSize!8012)) )
))
(declare-datatypes ((MutLongMap!4006 0))(
  ( (LongMap!4006 (underlying!8215 Cell!15833)) (MutLongMapExt!4005 (__x!21669 Int)) )
))
(declare-datatypes ((Cell!15835 0))(
  ( (Cell!15836 (v!34094 MutLongMap!4006)) )
))
(declare-datatypes ((MutableMap!3912 0))(
  ( (MutableMapExt!3911 (__x!21670 Int)) (HashMap!3912 (underlying!8216 Cell!15835) (hashF!5954 Hashable!3922) (_size!8056 (_ BitVec 32)) (defaultValue!4083 Int)) )
))
(declare-datatypes ((CacheUp!2616 0))(
  ( (CacheUp!2617 (cache!4055 MutableMap!3912)) )
))
(declare-fun cacheUp!890 () CacheUp!2616)

(declare-fun valid!3137 (CacheUp!2616) Bool)

(assert (=> b!2797420 (= res!1166084 (valid!3137 cacheUp!890))))

(declare-fun b!2797421 () Bool)

(declare-fun e!1767057 () Bool)

(declare-fun tp!890617 () Bool)

(declare-fun mapRes!18214 () Bool)

(assert (=> b!2797421 (= e!1767057 (and tp!890617 mapRes!18214))))

(declare-fun condMapEmpty!18214 () Bool)

(declare-fun mapDefault!18214 () List!32594)

(assert (=> b!2797421 (= condMapEmpty!18214 (= (arr!6346 (_values!4287 (v!34093 (underlying!8215 (v!34094 (underlying!8216 (cache!4055 cacheUp!890))))))) ((as const (Array (_ BitVec 32) List!32594)) mapDefault!18214)))))

(declare-fun e!1767075 () Bool)

(declare-fun e!1767055 () Bool)

(assert (=> b!2797422 (= e!1767075 (and e!1767055 tp!890612))))

(declare-fun b!2797423 () Bool)

(declare-fun e!1767050 () Bool)

(declare-fun e!1767058 () Bool)

(assert (=> b!2797423 (= e!1767050 e!1767058)))

(declare-fun b!2797424 () Bool)

(declare-fun e!1767064 () Bool)

(assert (=> b!2797424 (= e!1767062 e!1767064)))

(declare-fun res!1166091 () Bool)

(assert (=> b!2797424 (=> res!1166091 e!1767064)))

(declare-fun lt!999530 () List!32593)

(declare-fun lt!999521 () List!32593)

(declare-fun ++!8014 (List!32593 List!32593) List!32593)

(assert (=> b!2797424 (= res!1166091 (not (= (++!8014 lt!999521 lt!999530) lt!999531)))))

(declare-datatypes ((IArray!20141 0))(
  ( (IArray!20142 (innerList!10128 List!32593)) )
))
(declare-datatypes ((Conc!10068 0))(
  ( (Node!10068 (left!24569 Conc!10068) (right!24899 Conc!10068) (csize!20366 Int) (cheight!10279 Int)) (Leaf!15340 (xs!13180 IArray!20141) (csize!20367 Int)) (Empty!10068) )
))
(declare-datatypes ((BalanceConc!19750 0))(
  ( (BalanceConc!19751 (c!453697 Conc!10068)) )
))
(declare-datatypes ((tuple2!33060 0))(
  ( (tuple2!33061 (_1!19574 BalanceConc!19750) (_2!19574 BalanceConc!19750)) )
))
(declare-fun lt!999534 () tuple2!33060)

(declare-fun list!12203 (BalanceConc!19750) List!32593)

(assert (=> b!2797424 (= lt!999530 (list!12203 (_2!19574 lt!999534)))))

(assert (=> b!2797424 (= lt!999521 (list!12203 (_1!19574 lt!999534)))))

(declare-fun totalInput!758 () BalanceConc!19750)

(declare-fun splitAt!185 (BalanceConc!19750 Int) tuple2!33060)

(assert (=> b!2797424 (= lt!999534 (splitAt!185 totalInput!758 testedPSize!143))))

(declare-fun b!2797425 () Bool)

(declare-fun e!1767073 () Bool)

(assert (=> b!2797425 (= e!1767064 e!1767073)))

(declare-fun res!1166087 () Bool)

(assert (=> b!2797425 (=> res!1166087 e!1767073)))

(declare-fun apply!7585 (BalanceConc!19750 Int) C!16572)

(declare-fun head!6194 (List!32593) C!16572)

(assert (=> b!2797425 (= res!1166087 (not (= (apply!7585 totalInput!758 testedPSize!143) (head!6194 testedSuffix!143))))))

(declare-fun drop!1742 (List!32593 Int) List!32593)

(declare-fun apply!7586 (List!32593 Int) C!16572)

(assert (=> b!2797425 (= (head!6194 (drop!1742 lt!999531 testedPSize!143)) (apply!7586 lt!999531 testedPSize!143))))

(declare-fun lt!999520 () Unit!46618)

(declare-fun lemmaDropApply!946 (List!32593 Int) Unit!46618)

(assert (=> b!2797425 (= lt!999520 (lemmaDropApply!946 lt!999531 testedPSize!143))))

(assert (=> b!2797425 (not (or (not (= lt!999521 testedP!183)) (not (= lt!999530 testedSuffix!143))))))

(declare-fun lt!999524 () Unit!46618)

(declare-fun lemmaConcatSameAndSameSizesThenSameLists!376 (List!32593 List!32593 List!32593 List!32593) Unit!46618)

(assert (=> b!2797425 (= lt!999524 (lemmaConcatSameAndSameSizesThenSameLists!376 lt!999521 lt!999530 testedP!183 testedSuffix!143))))

(declare-fun res!1166082 () Bool)

(assert (=> start!270416 (=> (not res!1166082) (not e!1767063))))

(assert (=> start!270416 (= res!1166082 (= lt!999527 lt!999531))))

(assert (=> start!270416 (= lt!999531 (list!12203 totalInput!758))))

(assert (=> start!270416 (= lt!999527 (++!8014 testedP!183 testedSuffix!143))))

(assert (=> start!270416 e!1767063))

(declare-fun e!1767059 () Bool)

(declare-fun inv!44131 (BalanceConc!19750) Bool)

(assert (=> start!270416 (and (inv!44131 totalInput!758) e!1767059)))

(declare-fun condSetEmpty!24302 () Bool)

(assert (=> start!270416 (= condSetEmpty!24302 (= z!3684 ((as const (Array Context!4850 Bool)) false)))))

(assert (=> start!270416 setRes!24302))

(assert (=> start!270416 true))

(declare-fun e!1767054 () Bool)

(assert (=> start!270416 e!1767054))

(declare-fun e!1767066 () Bool)

(assert (=> start!270416 e!1767066))

(declare-datatypes ((tuple3!5148 0))(
  ( (tuple3!5149 (_1!19575 Regex!8207) (_2!19575 Context!4850) (_3!3044 C!16572)) )
))
(declare-datatypes ((tuple2!33062 0))(
  ( (tuple2!33063 (_1!19576 tuple3!5148) (_2!19576 (InoxSet Context!4850))) )
))
(declare-datatypes ((List!32595 0))(
  ( (Nil!32495) (Cons!32495 (h!37915 tuple2!33062) (t!228755 List!32595)) )
))
(declare-datatypes ((array!14244 0))(
  ( (array!14245 (arr!6348 (Array (_ BitVec 32) List!32595)) (size!25346 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!8014 0))(
  ( (LongMapFixedSize!8015 (defaultEntry!4392 Int) (mask!9847 (_ BitVec 32)) (extraKeys!4256 (_ BitVec 32)) (zeroValue!4266 List!32595) (minValue!4266 List!32595) (_size!8057 (_ BitVec 32)) (_keys!4307 array!14242) (_values!4288 array!14244) (_vacant!4068 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!15837 0))(
  ( (Cell!15838 (v!34095 LongMapFixedSize!8014)) )
))
(declare-datatypes ((MutLongMap!4007 0))(
  ( (LongMap!4007 (underlying!8217 Cell!15837)) (MutLongMapExt!4006 (__x!21671 Int)) )
))
(declare-datatypes ((Cell!15839 0))(
  ( (Cell!15840 (v!34096 MutLongMap!4007)) )
))
(declare-datatypes ((Hashable!3923 0))(
  ( (HashableExt!3922 (__x!21672 Int)) )
))
(declare-datatypes ((MutableMap!3913 0))(
  ( (MutableMapExt!3912 (__x!21673 Int)) (HashMap!3913 (underlying!8218 Cell!15839) (hashF!5955 Hashable!3923) (_size!8058 (_ BitVec 32)) (defaultValue!4084 Int)) )
))
(declare-datatypes ((CacheDown!2740 0))(
  ( (CacheDown!2741 (cache!4056 MutableMap!3913)) )
))
(declare-fun cacheDown!1009 () CacheDown!2740)

(declare-fun e!1767069 () Bool)

(declare-fun inv!44132 (CacheDown!2740) Bool)

(assert (=> start!270416 (and (inv!44132 cacheDown!1009) e!1767069)))

(declare-fun e!1767067 () Bool)

(declare-fun inv!44133 (CacheUp!2616) Bool)

(assert (=> start!270416 (and (inv!44133 cacheUp!890) e!1767067)))

(declare-fun b!2797426 () Bool)

(declare-fun e!1767061 () Unit!46618)

(declare-fun Unit!46620 () Unit!46618)

(assert (=> b!2797426 (= e!1767061 Unit!46620)))

(declare-fun lt!999532 () Unit!46618)

(declare-fun lemmaIsPrefixRefl!1712 (List!32593 List!32593) Unit!46618)

(assert (=> b!2797426 (= lt!999532 (lemmaIsPrefixRefl!1712 lt!999531 lt!999531))))

(assert (=> b!2797426 (isPrefix!2628 lt!999531 lt!999531)))

(declare-fun lt!999533 () Unit!46618)

(declare-fun lemmaIsPrefixSameLengthThenSameList!488 (List!32593 List!32593 List!32593) Unit!46618)

(assert (=> b!2797426 (= lt!999533 (lemmaIsPrefixSameLengthThenSameList!488 lt!999531 testedP!183 lt!999531))))

(assert (=> b!2797426 false))

(declare-fun mapIsEmpty!18213 () Bool)

(assert (=> mapIsEmpty!18213 mapRes!18214))

(declare-fun b!2797427 () Bool)

(declare-fun res!1166083 () Bool)

(assert (=> b!2797427 (=> (not res!1166083) (not e!1767074))))

(declare-fun valid!3138 (CacheDown!2740) Bool)

(assert (=> b!2797427 (= res!1166083 (valid!3138 cacheDown!1009))))

(declare-fun b!2797428 () Bool)

(declare-fun lt!999523 () MutLongMap!4007)

(get-info :version)

(assert (=> b!2797428 (= e!1767055 (and e!1767050 ((_ is LongMap!4007) lt!999523)))))

(assert (=> b!2797428 (= lt!999523 (v!34096 (underlying!8218 (cache!4056 cacheDown!1009))))))

(declare-fun b!2797429 () Bool)

(assert (=> b!2797429 (= e!1767071 e!1767074)))

(declare-fun res!1166090 () Bool)

(assert (=> b!2797429 (=> (not res!1166090) (not e!1767074))))

(declare-fun lt!999518 () Int)

(assert (=> b!2797429 (= res!1166090 (= totalInputSize!205 lt!999518))))

(declare-fun size!25347 (BalanceConc!19750) Int)

(assert (=> b!2797429 (= lt!999518 (size!25347 totalInput!758))))

(declare-fun b!2797430 () Bool)

(declare-fun e!1767072 () Bool)

(declare-fun e!1767060 () Bool)

(assert (=> b!2797430 (= e!1767072 e!1767060)))

(declare-fun tp!890608 () Bool)

(declare-fun tp!890615 () Bool)

(declare-fun e!1767051 () Bool)

(declare-fun array_inv!4542 (array!14242) Bool)

(declare-fun array_inv!4543 (array!14240) Bool)

(assert (=> b!2797431 (= e!1767051 (and tp!890622 tp!890615 tp!890608 (array_inv!4542 (_keys!4306 (v!34093 (underlying!8215 (v!34094 (underlying!8216 (cache!4055 cacheUp!890))))))) (array_inv!4543 (_values!4287 (v!34093 (underlying!8215 (v!34094 (underlying!8216 (cache!4055 cacheUp!890))))))) e!1767057))))

(declare-fun b!2797432 () Bool)

(declare-fun Unit!46621 () Unit!46618)

(assert (=> b!2797432 (= e!1767061 Unit!46621)))

(declare-fun b!2797433 () Bool)

(declare-fun tp!890620 () Bool)

(declare-fun inv!44134 (Conc!10068) Bool)

(assert (=> b!2797433 (= e!1767059 (and (inv!44134 (c!453697 totalInput!758)) tp!890620))))

(declare-fun mapNonEmpty!18213 () Bool)

(declare-fun mapRes!18213 () Bool)

(declare-fun tp!890619 () Bool)

(declare-fun tp!890607 () Bool)

(assert (=> mapNonEmpty!18213 (= mapRes!18213 (and tp!890619 tp!890607))))

(declare-fun mapRest!18214 () (Array (_ BitVec 32) List!32595))

(declare-fun mapKey!18213 () (_ BitVec 32))

(declare-fun mapValue!18214 () List!32595)

(assert (=> mapNonEmpty!18213 (= (arr!6348 (_values!4288 (v!34095 (underlying!8217 (v!34096 (underlying!8218 (cache!4056 cacheDown!1009))))))) (store mapRest!18214 mapKey!18213 mapValue!18214))))

(declare-fun b!2797434 () Bool)

(assert (=> b!2797434 (= e!1767068 e!1767062)))

(declare-fun res!1166081 () Bool)

(assert (=> b!2797434 (=> res!1166081 e!1767062)))

(declare-fun lostCauseZipper!499 ((InoxSet Context!4850)) Bool)

(assert (=> b!2797434 (= res!1166081 (lostCauseZipper!499 z!3684))))

(declare-fun lt!999519 () List!32593)

(assert (=> b!2797434 (and (= testedSuffix!143 lt!999519) (= lt!999519 testedSuffix!143))))

(declare-fun lt!999528 () Unit!46618)

(declare-fun lemmaSamePrefixThenSameSuffix!1202 (List!32593 List!32593 List!32593 List!32593 List!32593) Unit!46618)

(assert (=> b!2797434 (= lt!999528 (lemmaSamePrefixThenSameSuffix!1202 testedP!183 testedSuffix!143 testedP!183 lt!999519 lt!999531))))

(declare-fun getSuffix!1304 (List!32593 List!32593) List!32593)

(assert (=> b!2797434 (= lt!999519 (getSuffix!1304 lt!999531 testedP!183))))

(declare-fun mapNonEmpty!18214 () Bool)

(declare-fun tp!890609 () Bool)

(declare-fun tp!890611 () Bool)

(assert (=> mapNonEmpty!18214 (= mapRes!18214 (and tp!890609 tp!890611))))

(declare-fun mapRest!18213 () (Array (_ BitVec 32) List!32594))

(declare-fun mapValue!18213 () List!32594)

(declare-fun mapKey!18214 () (_ BitVec 32))

(assert (=> mapNonEmpty!18214 (= (arr!6346 (_values!4287 (v!34093 (underlying!8215 (v!34094 (underlying!8216 (cache!4055 cacheUp!890))))))) (store mapRest!18213 mapKey!18214 mapValue!18213))))

(declare-fun b!2797435 () Bool)

(assert (=> b!2797435 (= e!1767060 e!1767051)))

(declare-fun b!2797436 () Bool)

(assert (=> b!2797436 (= e!1767069 e!1767075)))

(declare-fun setIsEmpty!24302 () Bool)

(assert (=> setIsEmpty!24302 setRes!24302))

(declare-fun b!2797437 () Bool)

(declare-fun lt!999522 () MutLongMap!4006)

(assert (=> b!2797437 (= e!1767052 (and e!1767072 ((_ is LongMap!4006) lt!999522)))))

(assert (=> b!2797437 (= lt!999522 (v!34094 (underlying!8216 (cache!4055 cacheUp!890))))))

(declare-fun tp!890618 () Bool)

(declare-fun e!1767053 () Bool)

(declare-fun e!1767076 () Bool)

(declare-fun tp!890616 () Bool)

(declare-fun array_inv!4544 (array!14244) Bool)

(assert (=> b!2797438 (= e!1767076 (and tp!890623 tp!890618 tp!890616 (array_inv!4542 (_keys!4307 (v!34095 (underlying!8217 (v!34096 (underlying!8218 (cache!4056 cacheDown!1009))))))) (array_inv!4544 (_values!4288 (v!34095 (underlying!8217 (v!34096 (underlying!8218 (cache!4056 cacheDown!1009))))))) e!1767053))))

(declare-fun mapIsEmpty!18214 () Bool)

(assert (=> mapIsEmpty!18214 mapRes!18213))

(declare-fun b!2797439 () Bool)

(assert (=> b!2797439 (= e!1767067 e!1767065)))

(declare-fun b!2797440 () Bool)

(assert (=> b!2797440 (= e!1767058 e!1767076)))

(declare-fun b!2797441 () Bool)

(declare-fun res!1166088 () Bool)

(assert (=> b!2797441 (=> res!1166088 e!1767064)))

(assert (=> b!2797441 (= res!1166088 (not (= (size!25347 (_1!19574 lt!999534)) testedPSize!143)))))

(declare-fun b!2797442 () Bool)

(declare-fun tp_is_empty!14227 () Bool)

(declare-fun tp!890614 () Bool)

(assert (=> b!2797442 (= e!1767066 (and tp_is_empty!14227 tp!890614))))

(declare-fun lt!999525 () Int)

(declare-fun b!2797443 () Bool)

(assert (=> b!2797443 (= e!1767073 (or (>= lt!999529 lt!999518) (< lt!999529 lt!999525)))))

(declare-fun lt!999526 () Unit!46618)

(assert (=> b!2797443 (= lt!999526 e!1767061)))

(declare-fun c!453695 () Bool)

(assert (=> b!2797443 (= c!453695 (= lt!999529 lt!999518))))

(assert (=> b!2797443 (<= lt!999529 lt!999525)))

(assert (=> b!2797443 (= lt!999525 (size!25343 lt!999531))))

(declare-fun lt!999535 () Unit!46618)

(declare-fun lemmaIsPrefixThenSmallerEqSize!288 (List!32593 List!32593) Unit!46618)

(assert (=> b!2797443 (= lt!999535 (lemmaIsPrefixThenSmallerEqSize!288 testedP!183 lt!999531))))

(declare-fun b!2797444 () Bool)

(declare-fun tp!890621 () Bool)

(assert (=> b!2797444 (= e!1767056 tp!890621)))

(declare-fun b!2797445 () Bool)

(declare-fun tp!890613 () Bool)

(assert (=> b!2797445 (= e!1767053 (and tp!890613 mapRes!18213))))

(declare-fun condMapEmpty!18213 () Bool)

(declare-fun mapDefault!18213 () List!32595)

(assert (=> b!2797445 (= condMapEmpty!18213 (= (arr!6348 (_values!4288 (v!34095 (underlying!8217 (v!34096 (underlying!8218 (cache!4056 cacheDown!1009))))))) ((as const (Array (_ BitVec 32) List!32595)) mapDefault!18213)))))

(declare-fun b!2797446 () Bool)

(declare-fun tp!890610 () Bool)

(assert (=> b!2797446 (= e!1767054 (and tp_is_empty!14227 tp!890610))))

(assert (= (and start!270416 res!1166082) b!2797417))

(assert (= (and b!2797417 res!1166085) b!2797429))

(assert (= (and b!2797429 res!1166090) b!2797420))

(assert (= (and b!2797420 res!1166084) b!2797427))

(assert (= (and b!2797427 res!1166083) b!2797419))

(assert (= (and b!2797419 (not res!1166086)) b!2797434))

(assert (= (and b!2797434 (not res!1166081)) b!2797416))

(assert (= (and b!2797416 (not res!1166089)) b!2797424))

(assert (= (and b!2797424 (not res!1166091)) b!2797441))

(assert (= (and b!2797441 (not res!1166088)) b!2797425))

(assert (= (and b!2797425 (not res!1166087)) b!2797443))

(assert (= (and b!2797443 c!453695) b!2797426))

(assert (= (and b!2797443 (not c!453695)) b!2797432))

(assert (= start!270416 b!2797433))

(assert (= (and start!270416 condSetEmpty!24302) setIsEmpty!24302))

(assert (= (and start!270416 (not condSetEmpty!24302)) setNonEmpty!24302))

(assert (= setNonEmpty!24302 b!2797444))

(assert (= (and start!270416 ((_ is Cons!32493) testedP!183)) b!2797446))

(assert (= (and start!270416 ((_ is Cons!32493) testedSuffix!143)) b!2797442))

(assert (= (and b!2797445 condMapEmpty!18213) mapIsEmpty!18214))

(assert (= (and b!2797445 (not condMapEmpty!18213)) mapNonEmpty!18213))

(assert (= b!2797438 b!2797445))

(assert (= b!2797440 b!2797438))

(assert (= b!2797423 b!2797440))

(assert (= (and b!2797428 ((_ is LongMap!4007) (v!34096 (underlying!8218 (cache!4056 cacheDown!1009))))) b!2797423))

(assert (= b!2797422 b!2797428))

(assert (= (and b!2797436 ((_ is HashMap!3913) (cache!4056 cacheDown!1009))) b!2797422))

(assert (= start!270416 b!2797436))

(assert (= (and b!2797421 condMapEmpty!18214) mapIsEmpty!18213))

(assert (= (and b!2797421 (not condMapEmpty!18214)) mapNonEmpty!18214))

(assert (= b!2797431 b!2797421))

(assert (= b!2797435 b!2797431))

(assert (= b!2797430 b!2797435))

(assert (= (and b!2797437 ((_ is LongMap!4006) (v!34094 (underlying!8216 (cache!4055 cacheUp!890))))) b!2797430))

(assert (= b!2797418 b!2797437))

(assert (= (and b!2797439 ((_ is HashMap!3912) (cache!4055 cacheUp!890))) b!2797418))

(assert (= start!270416 b!2797439))

(declare-fun m!3226909 () Bool)

(assert (=> mapNonEmpty!18214 m!3226909))

(declare-fun m!3226911 () Bool)

(assert (=> b!2797429 m!3226911))

(declare-fun m!3226913 () Bool)

(assert (=> b!2797443 m!3226913))

(declare-fun m!3226915 () Bool)

(assert (=> b!2797443 m!3226915))

(declare-fun m!3226917 () Bool)

(assert (=> b!2797425 m!3226917))

(declare-fun m!3226919 () Bool)

(assert (=> b!2797425 m!3226919))

(declare-fun m!3226921 () Bool)

(assert (=> b!2797425 m!3226921))

(declare-fun m!3226923 () Bool)

(assert (=> b!2797425 m!3226923))

(declare-fun m!3226925 () Bool)

(assert (=> b!2797425 m!3226925))

(declare-fun m!3226927 () Bool)

(assert (=> b!2797425 m!3226927))

(assert (=> b!2797425 m!3226921))

(declare-fun m!3226929 () Bool)

(assert (=> b!2797425 m!3226929))

(declare-fun m!3226931 () Bool)

(assert (=> start!270416 m!3226931))

(declare-fun m!3226933 () Bool)

(assert (=> start!270416 m!3226933))

(declare-fun m!3226935 () Bool)

(assert (=> start!270416 m!3226935))

(declare-fun m!3226937 () Bool)

(assert (=> start!270416 m!3226937))

(declare-fun m!3226939 () Bool)

(assert (=> start!270416 m!3226939))

(declare-fun m!3226941 () Bool)

(assert (=> b!2797438 m!3226941))

(declare-fun m!3226943 () Bool)

(assert (=> b!2797438 m!3226943))

(declare-fun m!3226945 () Bool)

(assert (=> b!2797420 m!3226945))

(declare-fun m!3226947 () Bool)

(assert (=> b!2797431 m!3226947))

(declare-fun m!3226949 () Bool)

(assert (=> b!2797431 m!3226949))

(declare-fun m!3226951 () Bool)

(assert (=> mapNonEmpty!18213 m!3226951))

(declare-fun m!3226953 () Bool)

(assert (=> b!2797427 m!3226953))

(declare-fun m!3226955 () Bool)

(assert (=> b!2797424 m!3226955))

(declare-fun m!3226957 () Bool)

(assert (=> b!2797424 m!3226957))

(declare-fun m!3226959 () Bool)

(assert (=> b!2797424 m!3226959))

(declare-fun m!3226961 () Bool)

(assert (=> b!2797424 m!3226961))

(declare-fun m!3226963 () Bool)

(assert (=> b!2797417 m!3226963))

(declare-fun m!3226965 () Bool)

(assert (=> b!2797426 m!3226965))

(declare-fun m!3226967 () Bool)

(assert (=> b!2797426 m!3226967))

(declare-fun m!3226969 () Bool)

(assert (=> b!2797426 m!3226969))

(declare-fun m!3226971 () Bool)

(assert (=> b!2797419 m!3226971))

(declare-fun m!3226973 () Bool)

(assert (=> b!2797419 m!3226973))

(declare-fun m!3226975 () Bool)

(assert (=> b!2797419 m!3226975))

(declare-fun m!3226977 () Bool)

(assert (=> b!2797433 m!3226977))

(declare-fun m!3226979 () Bool)

(assert (=> b!2797434 m!3226979))

(declare-fun m!3226981 () Bool)

(assert (=> b!2797434 m!3226981))

(declare-fun m!3226983 () Bool)

(assert (=> b!2797434 m!3226983))

(declare-fun m!3226985 () Bool)

(assert (=> setNonEmpty!24302 m!3226985))

(declare-fun m!3226987 () Bool)

(assert (=> b!2797441 m!3226987))

(check-sat (not b_next!79995) (not b!2797434) (not b!2797419) (not b!2797443) (not start!270416) b_and!204027 (not b!2797420) (not b_next!79993) tp_is_empty!14227 (not b!2797433) (not b!2797445) b_and!204025 (not b!2797441) (not b!2797421) (not b!2797444) (not b!2797417) (not b!2797426) (not b_next!79991) (not b!2797431) (not b!2797442) (not mapNonEmpty!18213) b_and!204029 (not setNonEmpty!24302) (not b_next!79989) (not b!2797427) (not b!2797429) (not b!2797446) (not b!2797425) b_and!204023 (not b!2797424) (not mapNonEmpty!18214) (not b!2797438))
(check-sat (not b_next!79995) b_and!204025 (not b_next!79991) b_and!204027 b_and!204029 (not b_next!79989) (not b_next!79993) b_and!204023)
(get-model)

(declare-fun d!812866 () Bool)

(assert (=> d!812866 (and (= lt!999521 testedP!183) (= lt!999530 testedSuffix!143))))

(declare-fun lt!999539 () Unit!46618)

(declare-fun choose!16449 (List!32593 List!32593 List!32593 List!32593) Unit!46618)

(assert (=> d!812866 (= lt!999539 (choose!16449 lt!999521 lt!999530 testedP!183 testedSuffix!143))))

(assert (=> d!812866 (= (++!8014 lt!999521 lt!999530) (++!8014 testedP!183 testedSuffix!143))))

(assert (=> d!812866 (= (lemmaConcatSameAndSameSizesThenSameLists!376 lt!999521 lt!999530 testedP!183 testedSuffix!143) lt!999539)))

(declare-fun bs!515058 () Bool)

(assert (= bs!515058 d!812866))

(declare-fun m!3226989 () Bool)

(assert (=> bs!515058 m!3226989))

(assert (=> bs!515058 m!3226955))

(assert (=> bs!515058 m!3226939))

(assert (=> b!2797425 d!812866))

(declare-fun d!812868 () Bool)

(declare-fun lt!999542 () C!16572)

(assert (=> d!812868 (= lt!999542 (apply!7586 (list!12203 totalInput!758) testedPSize!143))))

(declare-fun apply!7587 (Conc!10068 Int) C!16572)

(assert (=> d!812868 (= lt!999542 (apply!7587 (c!453697 totalInput!758) testedPSize!143))))

(declare-fun e!1767080 () Bool)

(assert (=> d!812868 e!1767080))

(declare-fun res!1166094 () Bool)

(assert (=> d!812868 (=> (not res!1166094) (not e!1767080))))

(assert (=> d!812868 (= res!1166094 (<= 0 testedPSize!143))))

(assert (=> d!812868 (= (apply!7585 totalInput!758 testedPSize!143) lt!999542)))

(declare-fun b!2797449 () Bool)

(assert (=> b!2797449 (= e!1767080 (< testedPSize!143 (size!25347 totalInput!758)))))

(assert (= (and d!812868 res!1166094) b!2797449))

(assert (=> d!812868 m!3226931))

(assert (=> d!812868 m!3226931))

(declare-fun m!3226991 () Bool)

(assert (=> d!812868 m!3226991))

(declare-fun m!3226993 () Bool)

(assert (=> d!812868 m!3226993))

(assert (=> b!2797449 m!3226911))

(assert (=> b!2797425 d!812868))

(declare-fun d!812870 () Bool)

(declare-fun lt!999545 () C!16572)

(declare-fun contains!6013 (List!32593 C!16572) Bool)

(assert (=> d!812870 (contains!6013 lt!999531 lt!999545)))

(declare-fun e!1767085 () C!16572)

(assert (=> d!812870 (= lt!999545 e!1767085)))

(declare-fun c!453700 () Bool)

(assert (=> d!812870 (= c!453700 (= testedPSize!143 0))))

(declare-fun e!1767086 () Bool)

(assert (=> d!812870 e!1767086))

(declare-fun res!1166097 () Bool)

(assert (=> d!812870 (=> (not res!1166097) (not e!1767086))))

(assert (=> d!812870 (= res!1166097 (<= 0 testedPSize!143))))

(assert (=> d!812870 (= (apply!7586 lt!999531 testedPSize!143) lt!999545)))

(declare-fun b!2797456 () Bool)

(assert (=> b!2797456 (= e!1767086 (< testedPSize!143 (size!25343 lt!999531)))))

(declare-fun b!2797457 () Bool)

(assert (=> b!2797457 (= e!1767085 (head!6194 lt!999531))))

(declare-fun b!2797458 () Bool)

(declare-fun tail!4422 (List!32593) List!32593)

(assert (=> b!2797458 (= e!1767085 (apply!7586 (tail!4422 lt!999531) (- testedPSize!143 1)))))

(assert (= (and d!812870 res!1166097) b!2797456))

(assert (= (and d!812870 c!453700) b!2797457))

(assert (= (and d!812870 (not c!453700)) b!2797458))

(declare-fun m!3226995 () Bool)

(assert (=> d!812870 m!3226995))

(assert (=> b!2797456 m!3226913))

(declare-fun m!3226997 () Bool)

(assert (=> b!2797457 m!3226997))

(declare-fun m!3226999 () Bool)

(assert (=> b!2797458 m!3226999))

(assert (=> b!2797458 m!3226999))

(declare-fun m!3227001 () Bool)

(assert (=> b!2797458 m!3227001))

(assert (=> b!2797425 d!812870))

(declare-fun b!2797477 () Bool)

(declare-fun e!1767100 () List!32593)

(assert (=> b!2797477 (= e!1767100 (drop!1742 (t!228753 lt!999531) (- testedPSize!143 1)))))

(declare-fun b!2797478 () Bool)

(declare-fun e!1767098 () Int)

(declare-fun call!182788 () Int)

(assert (=> b!2797478 (= e!1767098 (- call!182788 testedPSize!143))))

(declare-fun b!2797479 () Bool)

(declare-fun e!1767099 () List!32593)

(assert (=> b!2797479 (= e!1767099 Nil!32493)))

(declare-fun b!2797480 () Bool)

(assert (=> b!2797480 (= e!1767100 lt!999531)))

(declare-fun d!812872 () Bool)

(declare-fun e!1767101 () Bool)

(assert (=> d!812872 e!1767101))

(declare-fun res!1166100 () Bool)

(assert (=> d!812872 (=> (not res!1166100) (not e!1767101))))

(declare-fun lt!999548 () List!32593)

(declare-fun content!4539 (List!32593) (InoxSet C!16572))

(assert (=> d!812872 (= res!1166100 (= ((_ map implies) (content!4539 lt!999548) (content!4539 lt!999531)) ((as const (InoxSet C!16572)) true)))))

(assert (=> d!812872 (= lt!999548 e!1767099)))

(declare-fun c!453712 () Bool)

(assert (=> d!812872 (= c!453712 ((_ is Nil!32493) lt!999531))))

(assert (=> d!812872 (= (drop!1742 lt!999531 testedPSize!143) lt!999548)))

(declare-fun b!2797481 () Bool)

(declare-fun e!1767097 () Int)

(assert (=> b!2797481 (= e!1767097 call!182788)))

(declare-fun b!2797482 () Bool)

(assert (=> b!2797482 (= e!1767101 (= (size!25343 lt!999548) e!1767097))))

(declare-fun c!453711 () Bool)

(assert (=> b!2797482 (= c!453711 (<= testedPSize!143 0))))

(declare-fun b!2797483 () Bool)

(assert (=> b!2797483 (= e!1767098 0)))

(declare-fun bm!182783 () Bool)

(assert (=> bm!182783 (= call!182788 (size!25343 lt!999531))))

(declare-fun b!2797484 () Bool)

(assert (=> b!2797484 (= e!1767097 e!1767098)))

(declare-fun c!453709 () Bool)

(assert (=> b!2797484 (= c!453709 (>= testedPSize!143 call!182788))))

(declare-fun b!2797485 () Bool)

(assert (=> b!2797485 (= e!1767099 e!1767100)))

(declare-fun c!453710 () Bool)

(assert (=> b!2797485 (= c!453710 (<= testedPSize!143 0))))

(assert (= (and d!812872 c!453712) b!2797479))

(assert (= (and d!812872 (not c!453712)) b!2797485))

(assert (= (and b!2797485 c!453710) b!2797480))

(assert (= (and b!2797485 (not c!453710)) b!2797477))

(assert (= (and d!812872 res!1166100) b!2797482))

(assert (= (and b!2797482 c!453711) b!2797481))

(assert (= (and b!2797482 (not c!453711)) b!2797484))

(assert (= (and b!2797484 c!453709) b!2797483))

(assert (= (and b!2797484 (not c!453709)) b!2797478))

(assert (= (or b!2797481 b!2797484 b!2797478) bm!182783))

(declare-fun m!3227003 () Bool)

(assert (=> b!2797477 m!3227003))

(declare-fun m!3227005 () Bool)

(assert (=> d!812872 m!3227005))

(declare-fun m!3227007 () Bool)

(assert (=> d!812872 m!3227007))

(declare-fun m!3227009 () Bool)

(assert (=> b!2797482 m!3227009))

(assert (=> bm!182783 m!3226913))

(assert (=> b!2797425 d!812872))

(declare-fun d!812874 () Bool)

(assert (=> d!812874 (= (head!6194 (drop!1742 lt!999531 testedPSize!143)) (h!37913 (drop!1742 lt!999531 testedPSize!143)))))

(assert (=> b!2797425 d!812874))

(declare-fun d!812876 () Bool)

(assert (=> d!812876 (= (head!6194 (drop!1742 lt!999531 testedPSize!143)) (apply!7586 lt!999531 testedPSize!143))))

(declare-fun lt!999551 () Unit!46618)

(declare-fun choose!16450 (List!32593 Int) Unit!46618)

(assert (=> d!812876 (= lt!999551 (choose!16450 lt!999531 testedPSize!143))))

(declare-fun e!1767104 () Bool)

(assert (=> d!812876 e!1767104))

(declare-fun res!1166103 () Bool)

(assert (=> d!812876 (=> (not res!1166103) (not e!1767104))))

(assert (=> d!812876 (= res!1166103 (>= testedPSize!143 0))))

(assert (=> d!812876 (= (lemmaDropApply!946 lt!999531 testedPSize!143) lt!999551)))

(declare-fun b!2797488 () Bool)

(assert (=> b!2797488 (= e!1767104 (< testedPSize!143 (size!25343 lt!999531)))))

(assert (= (and d!812876 res!1166103) b!2797488))

(assert (=> d!812876 m!3226921))

(assert (=> d!812876 m!3226921))

(assert (=> d!812876 m!3226923))

(assert (=> d!812876 m!3226927))

(declare-fun m!3227011 () Bool)

(assert (=> d!812876 m!3227011))

(assert (=> b!2797488 m!3226913))

(assert (=> b!2797425 d!812876))

(declare-fun d!812878 () Bool)

(assert (=> d!812878 (= (head!6194 testedSuffix!143) (h!37913 testedSuffix!143))))

(assert (=> b!2797425 d!812878))

(declare-fun d!812880 () Bool)

(declare-fun lt!999554 () Int)

(assert (=> d!812880 (= lt!999554 (size!25343 (list!12203 (_1!19574 lt!999534))))))

(declare-fun size!25348 (Conc!10068) Int)

(assert (=> d!812880 (= lt!999554 (size!25348 (c!453697 (_1!19574 lt!999534))))))

(assert (=> d!812880 (= (size!25347 (_1!19574 lt!999534)) lt!999554)))

(declare-fun bs!515059 () Bool)

(assert (= bs!515059 d!812880))

(assert (=> bs!515059 m!3226959))

(assert (=> bs!515059 m!3226959))

(declare-fun m!3227013 () Bool)

(assert (=> bs!515059 m!3227013))

(declare-fun m!3227015 () Bool)

(assert (=> bs!515059 m!3227015))

(assert (=> b!2797441 d!812880))

(declare-fun b!2797497 () Bool)

(declare-fun e!1767109 () List!32593)

(assert (=> b!2797497 (= e!1767109 lt!999530)))

(declare-fun lt!999557 () List!32593)

(declare-fun b!2797500 () Bool)

(declare-fun e!1767110 () Bool)

(assert (=> b!2797500 (= e!1767110 (or (not (= lt!999530 Nil!32493)) (= lt!999557 lt!999521)))))

(declare-fun b!2797499 () Bool)

(declare-fun res!1166108 () Bool)

(assert (=> b!2797499 (=> (not res!1166108) (not e!1767110))))

(assert (=> b!2797499 (= res!1166108 (= (size!25343 lt!999557) (+ (size!25343 lt!999521) (size!25343 lt!999530))))))

(declare-fun b!2797498 () Bool)

(assert (=> b!2797498 (= e!1767109 (Cons!32493 (h!37913 lt!999521) (++!8014 (t!228753 lt!999521) lt!999530)))))

(declare-fun d!812882 () Bool)

(assert (=> d!812882 e!1767110))

(declare-fun res!1166109 () Bool)

(assert (=> d!812882 (=> (not res!1166109) (not e!1767110))))

(assert (=> d!812882 (= res!1166109 (= (content!4539 lt!999557) ((_ map or) (content!4539 lt!999521) (content!4539 lt!999530))))))

(assert (=> d!812882 (= lt!999557 e!1767109)))

(declare-fun c!453715 () Bool)

(assert (=> d!812882 (= c!453715 ((_ is Nil!32493) lt!999521))))

(assert (=> d!812882 (= (++!8014 lt!999521 lt!999530) lt!999557)))

(assert (= (and d!812882 c!453715) b!2797497))

(assert (= (and d!812882 (not c!453715)) b!2797498))

(assert (= (and d!812882 res!1166109) b!2797499))

(assert (= (and b!2797499 res!1166108) b!2797500))

(declare-fun m!3227017 () Bool)

(assert (=> b!2797499 m!3227017))

(declare-fun m!3227019 () Bool)

(assert (=> b!2797499 m!3227019))

(declare-fun m!3227021 () Bool)

(assert (=> b!2797499 m!3227021))

(declare-fun m!3227023 () Bool)

(assert (=> b!2797498 m!3227023))

(declare-fun m!3227025 () Bool)

(assert (=> d!812882 m!3227025))

(declare-fun m!3227027 () Bool)

(assert (=> d!812882 m!3227027))

(declare-fun m!3227029 () Bool)

(assert (=> d!812882 m!3227029))

(assert (=> b!2797424 d!812882))

(declare-fun d!812884 () Bool)

(declare-fun list!12204 (Conc!10068) List!32593)

(assert (=> d!812884 (= (list!12203 (_2!19574 lt!999534)) (list!12204 (c!453697 (_2!19574 lt!999534))))))

(declare-fun bs!515060 () Bool)

(assert (= bs!515060 d!812884))

(declare-fun m!3227031 () Bool)

(assert (=> bs!515060 m!3227031))

(assert (=> b!2797424 d!812884))

(declare-fun d!812886 () Bool)

(assert (=> d!812886 (= (list!12203 (_1!19574 lt!999534)) (list!12204 (c!453697 (_1!19574 lt!999534))))))

(declare-fun bs!515061 () Bool)

(assert (= bs!515061 d!812886))

(declare-fun m!3227033 () Bool)

(assert (=> bs!515061 m!3227033))

(assert (=> b!2797424 d!812886))

(declare-fun d!812888 () Bool)

(declare-fun e!1767113 () Bool)

(assert (=> d!812888 e!1767113))

(declare-fun res!1166114 () Bool)

(assert (=> d!812888 (=> (not res!1166114) (not e!1767113))))

(declare-fun lt!999562 () tuple2!33060)

(declare-fun isBalanced!3071 (Conc!10068) Bool)

(assert (=> d!812888 (= res!1166114 (isBalanced!3071 (c!453697 (_1!19574 lt!999562))))))

(declare-datatypes ((tuple2!33064 0))(
  ( (tuple2!33065 (_1!19577 Conc!10068) (_2!19577 Conc!10068)) )
))
(declare-fun lt!999563 () tuple2!33064)

(assert (=> d!812888 (= lt!999562 (tuple2!33061 (BalanceConc!19751 (_1!19577 lt!999563)) (BalanceConc!19751 (_2!19577 lt!999563))))))

(declare-fun splitAt!186 (Conc!10068 Int) tuple2!33064)

(assert (=> d!812888 (= lt!999563 (splitAt!186 (c!453697 totalInput!758) testedPSize!143))))

(assert (=> d!812888 (isBalanced!3071 (c!453697 totalInput!758))))

(assert (=> d!812888 (= (splitAt!185 totalInput!758 testedPSize!143) lt!999562)))

(declare-fun b!2797505 () Bool)

(declare-fun res!1166115 () Bool)

(assert (=> b!2797505 (=> (not res!1166115) (not e!1767113))))

(assert (=> b!2797505 (= res!1166115 (isBalanced!3071 (c!453697 (_2!19574 lt!999562))))))

(declare-fun b!2797506 () Bool)

(declare-datatypes ((tuple2!33066 0))(
  ( (tuple2!33067 (_1!19578 List!32593) (_2!19578 List!32593)) )
))
(declare-fun splitAtIndex!71 (List!32593 Int) tuple2!33066)

(assert (=> b!2797506 (= e!1767113 (= (tuple2!33067 (list!12203 (_1!19574 lt!999562)) (list!12203 (_2!19574 lt!999562))) (splitAtIndex!71 (list!12203 totalInput!758) testedPSize!143)))))

(assert (= (and d!812888 res!1166114) b!2797505))

(assert (= (and b!2797505 res!1166115) b!2797506))

(declare-fun m!3227035 () Bool)

(assert (=> d!812888 m!3227035))

(declare-fun m!3227037 () Bool)

(assert (=> d!812888 m!3227037))

(declare-fun m!3227039 () Bool)

(assert (=> d!812888 m!3227039))

(declare-fun m!3227041 () Bool)

(assert (=> b!2797505 m!3227041))

(declare-fun m!3227043 () Bool)

(assert (=> b!2797506 m!3227043))

(declare-fun m!3227045 () Bool)

(assert (=> b!2797506 m!3227045))

(assert (=> b!2797506 m!3226931))

(assert (=> b!2797506 m!3226931))

(declare-fun m!3227047 () Bool)

(assert (=> b!2797506 m!3227047))

(assert (=> b!2797424 d!812888))

(declare-fun d!812890 () Bool)

(assert (=> d!812890 (isPrefix!2628 lt!999531 lt!999531)))

(declare-fun lt!999566 () Unit!46618)

(declare-fun choose!16451 (List!32593 List!32593) Unit!46618)

(assert (=> d!812890 (= lt!999566 (choose!16451 lt!999531 lt!999531))))

(assert (=> d!812890 (= (lemmaIsPrefixRefl!1712 lt!999531 lt!999531) lt!999566)))

(declare-fun bs!515062 () Bool)

(assert (= bs!515062 d!812890))

(assert (=> bs!515062 m!3226967))

(declare-fun m!3227049 () Bool)

(assert (=> bs!515062 m!3227049))

(assert (=> b!2797426 d!812890))

(declare-fun b!2797515 () Bool)

(declare-fun e!1767121 () Bool)

(declare-fun e!1767122 () Bool)

(assert (=> b!2797515 (= e!1767121 e!1767122)))

(declare-fun res!1166125 () Bool)

(assert (=> b!2797515 (=> (not res!1166125) (not e!1767122))))

(assert (=> b!2797515 (= res!1166125 (not ((_ is Nil!32493) lt!999531)))))

(declare-fun b!2797516 () Bool)

(declare-fun res!1166127 () Bool)

(assert (=> b!2797516 (=> (not res!1166127) (not e!1767122))))

(assert (=> b!2797516 (= res!1166127 (= (head!6194 lt!999531) (head!6194 lt!999531)))))

(declare-fun d!812892 () Bool)

(declare-fun e!1767120 () Bool)

(assert (=> d!812892 e!1767120))

(declare-fun res!1166126 () Bool)

(assert (=> d!812892 (=> res!1166126 e!1767120)))

(declare-fun lt!999569 () Bool)

(assert (=> d!812892 (= res!1166126 (not lt!999569))))

(assert (=> d!812892 (= lt!999569 e!1767121)))

(declare-fun res!1166124 () Bool)

(assert (=> d!812892 (=> res!1166124 e!1767121)))

(assert (=> d!812892 (= res!1166124 ((_ is Nil!32493) lt!999531))))

(assert (=> d!812892 (= (isPrefix!2628 lt!999531 lt!999531) lt!999569)))

(declare-fun b!2797518 () Bool)

(assert (=> b!2797518 (= e!1767120 (>= (size!25343 lt!999531) (size!25343 lt!999531)))))

(declare-fun b!2797517 () Bool)

(assert (=> b!2797517 (= e!1767122 (isPrefix!2628 (tail!4422 lt!999531) (tail!4422 lt!999531)))))

(assert (= (and d!812892 (not res!1166124)) b!2797515))

(assert (= (and b!2797515 res!1166125) b!2797516))

(assert (= (and b!2797516 res!1166127) b!2797517))

(assert (= (and d!812892 (not res!1166126)) b!2797518))

(assert (=> b!2797516 m!3226997))

(assert (=> b!2797516 m!3226997))

(assert (=> b!2797518 m!3226913))

(assert (=> b!2797518 m!3226913))

(assert (=> b!2797517 m!3226999))

(assert (=> b!2797517 m!3226999))

(assert (=> b!2797517 m!3226999))

(assert (=> b!2797517 m!3226999))

(declare-fun m!3227051 () Bool)

(assert (=> b!2797517 m!3227051))

(assert (=> b!2797426 d!812892))

(declare-fun d!812894 () Bool)

(assert (=> d!812894 (= lt!999531 testedP!183)))

(declare-fun lt!999572 () Unit!46618)

(declare-fun choose!16452 (List!32593 List!32593 List!32593) Unit!46618)

(assert (=> d!812894 (= lt!999572 (choose!16452 lt!999531 testedP!183 lt!999531))))

(assert (=> d!812894 (isPrefix!2628 lt!999531 lt!999531)))

(assert (=> d!812894 (= (lemmaIsPrefixSameLengthThenSameList!488 lt!999531 testedP!183 lt!999531) lt!999572)))

(declare-fun bs!515063 () Bool)

(assert (= bs!515063 d!812894))

(declare-fun m!3227053 () Bool)

(assert (=> bs!515063 m!3227053))

(assert (=> bs!515063 m!3226967))

(assert (=> b!2797426 d!812894))

(declare-fun bs!515064 () Bool)

(declare-fun b!2797523 () Bool)

(declare-fun d!812896 () Bool)

(assert (= bs!515064 (and b!2797523 d!812896)))

(declare-fun lambda!102740 () Int)

(declare-fun lambda!102739 () Int)

(assert (=> bs!515064 (not (= lambda!102740 lambda!102739))))

(declare-fun bs!515065 () Bool)

(declare-fun b!2797524 () Bool)

(assert (= bs!515065 (and b!2797524 d!812896)))

(declare-fun lambda!102741 () Int)

(assert (=> bs!515065 (not (= lambda!102741 lambda!102739))))

(declare-fun bs!515066 () Bool)

(assert (= bs!515066 (and b!2797524 b!2797523)))

(assert (=> bs!515066 (= lambda!102741 lambda!102740)))

(declare-datatypes ((List!32596 0))(
  ( (Nil!32496) (Cons!32496 (h!37916 Context!4850) (t!228756 List!32596)) )
))
(declare-fun lt!999590 () List!32596)

(declare-fun bm!182789 () Bool)

(declare-fun c!453726 () Bool)

(declare-fun lt!999592 () List!32596)

(declare-fun call!182794 () Bool)

(declare-fun exists!1012 (List!32596 Int) Bool)

(assert (=> bm!182789 (= call!182794 (exists!1012 (ite c!453726 lt!999592 lt!999590) (ite c!453726 lambda!102740 lambda!102741)))))

(declare-fun bm!182788 () Bool)

(declare-fun call!182793 () List!32596)

(declare-fun toList!1879 ((InoxSet Context!4850)) List!32596)

(assert (=> bm!182788 (= call!182793 (toList!1879 z!3684))))

(declare-fun e!1767129 () Unit!46618)

(declare-fun Unit!46622 () Unit!46618)

(assert (=> b!2797523 (= e!1767129 Unit!46622)))

(assert (=> b!2797523 (= lt!999592 call!182793)))

(declare-fun lt!999596 () Unit!46618)

(declare-fun lemmaNotForallThenExists!106 (List!32596 Int) Unit!46618)

(assert (=> b!2797523 (= lt!999596 (lemmaNotForallThenExists!106 lt!999592 lambda!102739))))

(assert (=> b!2797523 call!182794))

(declare-fun lt!999591 () Unit!46618)

(assert (=> b!2797523 (= lt!999591 lt!999596)))

(declare-fun lt!999594 () Bool)

(declare-datatypes ((Option!6284 0))(
  ( (None!6283) (Some!6283 (v!34097 List!32593)) )
))
(declare-fun isEmpty!18133 (Option!6284) Bool)

(declare-fun getLanguageWitness!218 ((InoxSet Context!4850)) Option!6284)

(assert (=> d!812896 (= lt!999594 (isEmpty!18133 (getLanguageWitness!218 z!3684)))))

(declare-fun forall!6697 ((InoxSet Context!4850) Int) Bool)

(assert (=> d!812896 (= lt!999594 (forall!6697 z!3684 lambda!102739))))

(declare-fun lt!999593 () Unit!46618)

(assert (=> d!812896 (= lt!999593 e!1767129)))

(assert (=> d!812896 (= c!453726 (not (forall!6697 z!3684 lambda!102739)))))

(assert (=> d!812896 (= (lostCauseZipper!499 z!3684) lt!999594)))

(declare-fun Unit!46623 () Unit!46618)

(assert (=> b!2797524 (= e!1767129 Unit!46623)))

(assert (=> b!2797524 (= lt!999590 call!182793)))

(declare-fun lt!999595 () Unit!46618)

(declare-fun lemmaForallThenNotExists!106 (List!32596 Int) Unit!46618)

(assert (=> b!2797524 (= lt!999595 (lemmaForallThenNotExists!106 lt!999590 lambda!102739))))

(assert (=> b!2797524 (not call!182794)))

(declare-fun lt!999589 () Unit!46618)

(assert (=> b!2797524 (= lt!999589 lt!999595)))

(assert (= (and d!812896 c!453726) b!2797523))

(assert (= (and d!812896 (not c!453726)) b!2797524))

(assert (= (or b!2797523 b!2797524) bm!182788))

(assert (= (or b!2797523 b!2797524) bm!182789))

(declare-fun m!3227055 () Bool)

(assert (=> b!2797523 m!3227055))

(declare-fun m!3227057 () Bool)

(assert (=> bm!182788 m!3227057))

(declare-fun m!3227059 () Bool)

(assert (=> bm!182789 m!3227059))

(declare-fun m!3227061 () Bool)

(assert (=> d!812896 m!3227061))

(assert (=> d!812896 m!3227061))

(declare-fun m!3227063 () Bool)

(assert (=> d!812896 m!3227063))

(declare-fun m!3227065 () Bool)

(assert (=> d!812896 m!3227065))

(assert (=> d!812896 m!3227065))

(declare-fun m!3227067 () Bool)

(assert (=> b!2797524 m!3227067))

(assert (=> b!2797434 d!812896))

(declare-fun d!812898 () Bool)

(assert (=> d!812898 (= testedSuffix!143 lt!999519)))

(declare-fun lt!999599 () Unit!46618)

(declare-fun choose!16453 (List!32593 List!32593 List!32593 List!32593 List!32593) Unit!46618)

(assert (=> d!812898 (= lt!999599 (choose!16453 testedP!183 testedSuffix!143 testedP!183 lt!999519 lt!999531))))

(assert (=> d!812898 (isPrefix!2628 testedP!183 lt!999531)))

(assert (=> d!812898 (= (lemmaSamePrefixThenSameSuffix!1202 testedP!183 testedSuffix!143 testedP!183 lt!999519 lt!999531) lt!999599)))

(declare-fun bs!515067 () Bool)

(assert (= bs!515067 d!812898))

(declare-fun m!3227069 () Bool)

(assert (=> bs!515067 m!3227069))

(assert (=> bs!515067 m!3226971))

(assert (=> b!2797434 d!812898))

(declare-fun d!812900 () Bool)

(declare-fun lt!999602 () List!32593)

(assert (=> d!812900 (= (++!8014 testedP!183 lt!999602) lt!999531)))

(declare-fun e!1767132 () List!32593)

(assert (=> d!812900 (= lt!999602 e!1767132)))

(declare-fun c!453729 () Bool)

(assert (=> d!812900 (= c!453729 ((_ is Cons!32493) testedP!183))))

(assert (=> d!812900 (>= (size!25343 lt!999531) (size!25343 testedP!183))))

(assert (=> d!812900 (= (getSuffix!1304 lt!999531 testedP!183) lt!999602)))

(declare-fun b!2797529 () Bool)

(assert (=> b!2797529 (= e!1767132 (getSuffix!1304 (tail!4422 lt!999531) (t!228753 testedP!183)))))

(declare-fun b!2797530 () Bool)

(assert (=> b!2797530 (= e!1767132 lt!999531)))

(assert (= (and d!812900 c!453729) b!2797529))

(assert (= (and d!812900 (not c!453729)) b!2797530))

(declare-fun m!3227071 () Bool)

(assert (=> d!812900 m!3227071))

(assert (=> d!812900 m!3226913))

(assert (=> d!812900 m!3226963))

(assert (=> b!2797529 m!3226999))

(assert (=> b!2797529 m!3226999))

(declare-fun m!3227073 () Bool)

(assert (=> b!2797529 m!3227073))

(assert (=> b!2797434 d!812900))

(declare-fun d!812902 () Bool)

(assert (=> d!812902 (= (array_inv!4542 (_keys!4306 (v!34093 (underlying!8215 (v!34094 (underlying!8216 (cache!4055 cacheUp!890))))))) (bvsge (size!25345 (_keys!4306 (v!34093 (underlying!8215 (v!34094 (underlying!8216 (cache!4055 cacheUp!890))))))) #b00000000000000000000000000000000))))

(assert (=> b!2797431 d!812902))

(declare-fun d!812904 () Bool)

(assert (=> d!812904 (= (array_inv!4543 (_values!4287 (v!34093 (underlying!8215 (v!34094 (underlying!8216 (cache!4055 cacheUp!890))))))) (bvsge (size!25344 (_values!4287 (v!34093 (underlying!8215 (v!34094 (underlying!8216 (cache!4055 cacheUp!890))))))) #b00000000000000000000000000000000))))

(assert (=> b!2797431 d!812904))

(declare-fun d!812906 () Bool)

(declare-fun c!453732 () Bool)

(assert (=> d!812906 (= c!453732 ((_ is Node!10068) (c!453697 totalInput!758)))))

(declare-fun e!1767137 () Bool)

(assert (=> d!812906 (= (inv!44134 (c!453697 totalInput!758)) e!1767137)))

(declare-fun b!2797537 () Bool)

(declare-fun inv!44135 (Conc!10068) Bool)

(assert (=> b!2797537 (= e!1767137 (inv!44135 (c!453697 totalInput!758)))))

(declare-fun b!2797538 () Bool)

(declare-fun e!1767138 () Bool)

(assert (=> b!2797538 (= e!1767137 e!1767138)))

(declare-fun res!1166130 () Bool)

(assert (=> b!2797538 (= res!1166130 (not ((_ is Leaf!15340) (c!453697 totalInput!758))))))

(assert (=> b!2797538 (=> res!1166130 e!1767138)))

(declare-fun b!2797539 () Bool)

(declare-fun inv!44136 (Conc!10068) Bool)

(assert (=> b!2797539 (= e!1767138 (inv!44136 (c!453697 totalInput!758)))))

(assert (= (and d!812906 c!453732) b!2797537))

(assert (= (and d!812906 (not c!453732)) b!2797538))

(assert (= (and b!2797538 (not res!1166130)) b!2797539))

(declare-fun m!3227075 () Bool)

(assert (=> b!2797537 m!3227075))

(declare-fun m!3227077 () Bool)

(assert (=> b!2797539 m!3227077))

(assert (=> b!2797433 d!812906))

(declare-fun d!812908 () Bool)

(declare-fun lt!999603 () Int)

(assert (=> d!812908 (= lt!999603 (size!25343 (list!12203 totalInput!758)))))

(assert (=> d!812908 (= lt!999603 (size!25348 (c!453697 totalInput!758)))))

(assert (=> d!812908 (= (size!25347 totalInput!758) lt!999603)))

(declare-fun bs!515068 () Bool)

(assert (= bs!515068 d!812908))

(assert (=> bs!515068 m!3226931))

(assert (=> bs!515068 m!3226931))

(declare-fun m!3227079 () Bool)

(assert (=> bs!515068 m!3227079))

(declare-fun m!3227081 () Bool)

(assert (=> bs!515068 m!3227081))

(assert (=> b!2797429 d!812908))

(declare-fun b!2797540 () Bool)

(declare-fun e!1767140 () Bool)

(declare-fun e!1767141 () Bool)

(assert (=> b!2797540 (= e!1767140 e!1767141)))

(declare-fun res!1166132 () Bool)

(assert (=> b!2797540 (=> (not res!1166132) (not e!1767141))))

(assert (=> b!2797540 (= res!1166132 (not ((_ is Nil!32493) lt!999531)))))

(declare-fun b!2797541 () Bool)

(declare-fun res!1166134 () Bool)

(assert (=> b!2797541 (=> (not res!1166134) (not e!1767141))))

(assert (=> b!2797541 (= res!1166134 (= (head!6194 testedP!183) (head!6194 lt!999531)))))

(declare-fun d!812910 () Bool)

(declare-fun e!1767139 () Bool)

(assert (=> d!812910 e!1767139))

(declare-fun res!1166133 () Bool)

(assert (=> d!812910 (=> res!1166133 e!1767139)))

(declare-fun lt!999604 () Bool)

(assert (=> d!812910 (= res!1166133 (not lt!999604))))

(assert (=> d!812910 (= lt!999604 e!1767140)))

(declare-fun res!1166131 () Bool)

(assert (=> d!812910 (=> res!1166131 e!1767140)))

(assert (=> d!812910 (= res!1166131 ((_ is Nil!32493) testedP!183))))

(assert (=> d!812910 (= (isPrefix!2628 testedP!183 lt!999531) lt!999604)))

(declare-fun b!2797543 () Bool)

(assert (=> b!2797543 (= e!1767139 (>= (size!25343 lt!999531) (size!25343 testedP!183)))))

(declare-fun b!2797542 () Bool)

(assert (=> b!2797542 (= e!1767141 (isPrefix!2628 (tail!4422 testedP!183) (tail!4422 lt!999531)))))

(assert (= (and d!812910 (not res!1166131)) b!2797540))

(assert (= (and b!2797540 res!1166132) b!2797541))

(assert (= (and b!2797541 res!1166134) b!2797542))

(assert (= (and d!812910 (not res!1166133)) b!2797543))

(declare-fun m!3227083 () Bool)

(assert (=> b!2797541 m!3227083))

(assert (=> b!2797541 m!3226997))

(assert (=> b!2797543 m!3226913))

(assert (=> b!2797543 m!3226963))

(declare-fun m!3227085 () Bool)

(assert (=> b!2797542 m!3227085))

(assert (=> b!2797542 m!3226999))

(assert (=> b!2797542 m!3227085))

(assert (=> b!2797542 m!3226999))

(declare-fun m!3227087 () Bool)

(assert (=> b!2797542 m!3227087))

(assert (=> b!2797419 d!812910))

(declare-fun b!2797544 () Bool)

(declare-fun e!1767143 () Bool)

(declare-fun e!1767144 () Bool)

(assert (=> b!2797544 (= e!1767143 e!1767144)))

(declare-fun res!1166136 () Bool)

(assert (=> b!2797544 (=> (not res!1166136) (not e!1767144))))

(assert (=> b!2797544 (= res!1166136 (not ((_ is Nil!32493) lt!999527)))))

(declare-fun b!2797545 () Bool)

(declare-fun res!1166138 () Bool)

(assert (=> b!2797545 (=> (not res!1166138) (not e!1767144))))

(assert (=> b!2797545 (= res!1166138 (= (head!6194 testedP!183) (head!6194 lt!999527)))))

(declare-fun d!812912 () Bool)

(declare-fun e!1767142 () Bool)

(assert (=> d!812912 e!1767142))

(declare-fun res!1166137 () Bool)

(assert (=> d!812912 (=> res!1166137 e!1767142)))

(declare-fun lt!999605 () Bool)

(assert (=> d!812912 (= res!1166137 (not lt!999605))))

(assert (=> d!812912 (= lt!999605 e!1767143)))

(declare-fun res!1166135 () Bool)

(assert (=> d!812912 (=> res!1166135 e!1767143)))

(assert (=> d!812912 (= res!1166135 ((_ is Nil!32493) testedP!183))))

(assert (=> d!812912 (= (isPrefix!2628 testedP!183 lt!999527) lt!999605)))

(declare-fun b!2797547 () Bool)

(assert (=> b!2797547 (= e!1767142 (>= (size!25343 lt!999527) (size!25343 testedP!183)))))

(declare-fun b!2797546 () Bool)

(assert (=> b!2797546 (= e!1767144 (isPrefix!2628 (tail!4422 testedP!183) (tail!4422 lt!999527)))))

(assert (= (and d!812912 (not res!1166135)) b!2797544))

(assert (= (and b!2797544 res!1166136) b!2797545))

(assert (= (and b!2797545 res!1166138) b!2797546))

(assert (= (and d!812912 (not res!1166137)) b!2797547))

(assert (=> b!2797545 m!3227083))

(declare-fun m!3227089 () Bool)

(assert (=> b!2797545 m!3227089))

(declare-fun m!3227091 () Bool)

(assert (=> b!2797547 m!3227091))

(assert (=> b!2797547 m!3226963))

(assert (=> b!2797546 m!3227085))

(declare-fun m!3227093 () Bool)

(assert (=> b!2797546 m!3227093))

(assert (=> b!2797546 m!3227085))

(assert (=> b!2797546 m!3227093))

(declare-fun m!3227095 () Bool)

(assert (=> b!2797546 m!3227095))

(assert (=> b!2797419 d!812912))

(declare-fun d!812914 () Bool)

(assert (=> d!812914 (isPrefix!2628 testedP!183 (++!8014 testedP!183 testedSuffix!143))))

(declare-fun lt!999608 () Unit!46618)

(declare-fun choose!16454 (List!32593 List!32593) Unit!46618)

(assert (=> d!812914 (= lt!999608 (choose!16454 testedP!183 testedSuffix!143))))

(assert (=> d!812914 (= (lemmaConcatTwoListThenFirstIsPrefix!1736 testedP!183 testedSuffix!143) lt!999608)))

(declare-fun bs!515069 () Bool)

(assert (= bs!515069 d!812914))

(assert (=> bs!515069 m!3226939))

(assert (=> bs!515069 m!3226939))

(declare-fun m!3227097 () Bool)

(assert (=> bs!515069 m!3227097))

(declare-fun m!3227099 () Bool)

(assert (=> bs!515069 m!3227099))

(assert (=> b!2797419 d!812914))

(declare-fun d!812916 () Bool)

(declare-fun res!1166141 () Bool)

(declare-fun e!1767147 () Bool)

(assert (=> d!812916 (=> (not res!1166141) (not e!1767147))))

(assert (=> d!812916 (= res!1166141 ((_ is HashMap!3912) (cache!4055 cacheUp!890)))))

(assert (=> d!812916 (= (inv!44133 cacheUp!890) e!1767147)))

(declare-fun b!2797550 () Bool)

(declare-fun validCacheMapUp!395 (MutableMap!3912) Bool)

(assert (=> b!2797550 (= e!1767147 (validCacheMapUp!395 (cache!4055 cacheUp!890)))))

(assert (= (and d!812916 res!1166141) b!2797550))

(declare-fun m!3227101 () Bool)

(assert (=> b!2797550 m!3227101))

(assert (=> start!270416 d!812916))

(declare-fun d!812918 () Bool)

(assert (=> d!812918 (= (inv!44131 totalInput!758) (isBalanced!3071 (c!453697 totalInput!758)))))

(declare-fun bs!515070 () Bool)

(assert (= bs!515070 d!812918))

(assert (=> bs!515070 m!3227039))

(assert (=> start!270416 d!812918))

(declare-fun d!812920 () Bool)

(declare-fun res!1166144 () Bool)

(declare-fun e!1767150 () Bool)

(assert (=> d!812920 (=> (not res!1166144) (not e!1767150))))

(assert (=> d!812920 (= res!1166144 ((_ is HashMap!3913) (cache!4056 cacheDown!1009)))))

(assert (=> d!812920 (= (inv!44132 cacheDown!1009) e!1767150)))

(declare-fun b!2797553 () Bool)

(declare-fun validCacheMapDown!426 (MutableMap!3913) Bool)

(assert (=> b!2797553 (= e!1767150 (validCacheMapDown!426 (cache!4056 cacheDown!1009)))))

(assert (= (and d!812920 res!1166144) b!2797553))

(declare-fun m!3227103 () Bool)

(assert (=> b!2797553 m!3227103))

(assert (=> start!270416 d!812920))

(declare-fun d!812922 () Bool)

(assert (=> d!812922 (= (list!12203 totalInput!758) (list!12204 (c!453697 totalInput!758)))))

(declare-fun bs!515071 () Bool)

(assert (= bs!515071 d!812922))

(declare-fun m!3227105 () Bool)

(assert (=> bs!515071 m!3227105))

(assert (=> start!270416 d!812922))

(declare-fun b!2797554 () Bool)

(declare-fun e!1767151 () List!32593)

(assert (=> b!2797554 (= e!1767151 testedSuffix!143)))

(declare-fun lt!999609 () List!32593)

(declare-fun b!2797557 () Bool)

(declare-fun e!1767152 () Bool)

(assert (=> b!2797557 (= e!1767152 (or (not (= testedSuffix!143 Nil!32493)) (= lt!999609 testedP!183)))))

(declare-fun b!2797556 () Bool)

(declare-fun res!1166145 () Bool)

(assert (=> b!2797556 (=> (not res!1166145) (not e!1767152))))

(assert (=> b!2797556 (= res!1166145 (= (size!25343 lt!999609) (+ (size!25343 testedP!183) (size!25343 testedSuffix!143))))))

(declare-fun b!2797555 () Bool)

(assert (=> b!2797555 (= e!1767151 (Cons!32493 (h!37913 testedP!183) (++!8014 (t!228753 testedP!183) testedSuffix!143)))))

(declare-fun d!812924 () Bool)

(assert (=> d!812924 e!1767152))

(declare-fun res!1166146 () Bool)

(assert (=> d!812924 (=> (not res!1166146) (not e!1767152))))

(assert (=> d!812924 (= res!1166146 (= (content!4539 lt!999609) ((_ map or) (content!4539 testedP!183) (content!4539 testedSuffix!143))))))

(assert (=> d!812924 (= lt!999609 e!1767151)))

(declare-fun c!453733 () Bool)

(assert (=> d!812924 (= c!453733 ((_ is Nil!32493) testedP!183))))

(assert (=> d!812924 (= (++!8014 testedP!183 testedSuffix!143) lt!999609)))

(assert (= (and d!812924 c!453733) b!2797554))

(assert (= (and d!812924 (not c!453733)) b!2797555))

(assert (= (and d!812924 res!1166146) b!2797556))

(assert (= (and b!2797556 res!1166145) b!2797557))

(declare-fun m!3227107 () Bool)

(assert (=> b!2797556 m!3227107))

(assert (=> b!2797556 m!3226963))

(declare-fun m!3227109 () Bool)

(assert (=> b!2797556 m!3227109))

(declare-fun m!3227111 () Bool)

(assert (=> b!2797555 m!3227111))

(declare-fun m!3227113 () Bool)

(assert (=> d!812924 m!3227113))

(declare-fun m!3227115 () Bool)

(assert (=> d!812924 m!3227115))

(declare-fun m!3227117 () Bool)

(assert (=> d!812924 m!3227117))

(assert (=> start!270416 d!812924))

(declare-fun d!812926 () Bool)

(assert (=> d!812926 (= (array_inv!4542 (_keys!4307 (v!34095 (underlying!8217 (v!34096 (underlying!8218 (cache!4056 cacheDown!1009))))))) (bvsge (size!25345 (_keys!4307 (v!34095 (underlying!8217 (v!34096 (underlying!8218 (cache!4056 cacheDown!1009))))))) #b00000000000000000000000000000000))))

(assert (=> b!2797438 d!812926))

(declare-fun d!812928 () Bool)

(assert (=> d!812928 (= (array_inv!4544 (_values!4288 (v!34095 (underlying!8217 (v!34096 (underlying!8218 (cache!4056 cacheDown!1009))))))) (bvsge (size!25346 (_values!4288 (v!34095 (underlying!8217 (v!34096 (underlying!8218 (cache!4056 cacheDown!1009))))))) #b00000000000000000000000000000000))))

(assert (=> b!2797438 d!812928))

(declare-fun d!812930 () Bool)

(assert (=> d!812930 (= (valid!3137 cacheUp!890) (validCacheMapUp!395 (cache!4055 cacheUp!890)))))

(declare-fun bs!515072 () Bool)

(assert (= bs!515072 d!812930))

(assert (=> bs!515072 m!3227101))

(assert (=> b!2797420 d!812930))

(declare-fun d!812932 () Bool)

(declare-fun lt!999612 () Int)

(assert (=> d!812932 (>= lt!999612 0)))

(declare-fun e!1767155 () Int)

(assert (=> d!812932 (= lt!999612 e!1767155)))

(declare-fun c!453736 () Bool)

(assert (=> d!812932 (= c!453736 ((_ is Nil!32493) testedP!183))))

(assert (=> d!812932 (= (size!25343 testedP!183) lt!999612)))

(declare-fun b!2797562 () Bool)

(assert (=> b!2797562 (= e!1767155 0)))

(declare-fun b!2797563 () Bool)

(assert (=> b!2797563 (= e!1767155 (+ 1 (size!25343 (t!228753 testedP!183))))))

(assert (= (and d!812932 c!453736) b!2797562))

(assert (= (and d!812932 (not c!453736)) b!2797563))

(declare-fun m!3227119 () Bool)

(assert (=> b!2797563 m!3227119))

(assert (=> b!2797417 d!812932))

(declare-fun d!812934 () Bool)

(declare-fun lt!999613 () Int)

(assert (=> d!812934 (>= lt!999613 0)))

(declare-fun e!1767156 () Int)

(assert (=> d!812934 (= lt!999613 e!1767156)))

(declare-fun c!453737 () Bool)

(assert (=> d!812934 (= c!453737 ((_ is Nil!32493) lt!999531))))

(assert (=> d!812934 (= (size!25343 lt!999531) lt!999613)))

(declare-fun b!2797564 () Bool)

(assert (=> b!2797564 (= e!1767156 0)))

(declare-fun b!2797565 () Bool)

(assert (=> b!2797565 (= e!1767156 (+ 1 (size!25343 (t!228753 lt!999531))))))

(assert (= (and d!812934 c!453737) b!2797564))

(assert (= (and d!812934 (not c!453737)) b!2797565))

(declare-fun m!3227121 () Bool)

(assert (=> b!2797565 m!3227121))

(assert (=> b!2797443 d!812934))

(declare-fun d!812936 () Bool)

(assert (=> d!812936 (<= (size!25343 testedP!183) (size!25343 lt!999531))))

(declare-fun lt!999616 () Unit!46618)

(declare-fun choose!16455 (List!32593 List!32593) Unit!46618)

(assert (=> d!812936 (= lt!999616 (choose!16455 testedP!183 lt!999531))))

(assert (=> d!812936 (isPrefix!2628 testedP!183 lt!999531)))

(assert (=> d!812936 (= (lemmaIsPrefixThenSmallerEqSize!288 testedP!183 lt!999531) lt!999616)))

(declare-fun bs!515073 () Bool)

(assert (= bs!515073 d!812936))

(assert (=> bs!515073 m!3226963))

(assert (=> bs!515073 m!3226913))

(declare-fun m!3227123 () Bool)

(assert (=> bs!515073 m!3227123))

(assert (=> bs!515073 m!3226971))

(assert (=> b!2797443 d!812936))

(declare-fun d!812938 () Bool)

(declare-fun lambda!102744 () Int)

(declare-fun forall!6698 (List!32592 Int) Bool)

(assert (=> d!812938 (= (inv!44130 setElem!24302) (forall!6698 (exprs!2925 setElem!24302) lambda!102744))))

(declare-fun bs!515074 () Bool)

(assert (= bs!515074 d!812938))

(declare-fun m!3227125 () Bool)

(assert (=> bs!515074 m!3227125))

(assert (=> setNonEmpty!24302 d!812938))

(declare-fun d!812940 () Bool)

(assert (=> d!812940 (= (valid!3138 cacheDown!1009) (validCacheMapDown!426 (cache!4056 cacheDown!1009)))))

(declare-fun bs!515075 () Bool)

(assert (= bs!515075 d!812940))

(assert (=> bs!515075 m!3227103))

(assert (=> b!2797427 d!812940))

(declare-fun mapNonEmpty!18217 () Bool)

(declare-fun mapRes!18217 () Bool)

(declare-fun tp!890647 () Bool)

(declare-fun e!1767169 () Bool)

(assert (=> mapNonEmpty!18217 (= mapRes!18217 (and tp!890647 e!1767169))))

(declare-fun mapKey!18217 () (_ BitVec 32))

(declare-fun mapRest!18217 () (Array (_ BitVec 32) List!32595))

(declare-fun mapValue!18217 () List!32595)

(assert (=> mapNonEmpty!18217 (= mapRest!18214 (store mapRest!18217 mapKey!18217 mapValue!18217))))

(declare-fun setIsEmpty!24307 () Bool)

(declare-fun setRes!24308 () Bool)

(assert (=> setIsEmpty!24307 setRes!24308))

(declare-fun setIsEmpty!24308 () Bool)

(declare-fun setRes!24307 () Bool)

(assert (=> setIsEmpty!24308 setRes!24307))

(declare-fun b!2797580 () Bool)

(declare-fun e!1767173 () Bool)

(declare-fun tp!890651 () Bool)

(assert (=> b!2797580 (= e!1767173 tp!890651)))

(declare-fun b!2797581 () Bool)

(declare-fun e!1767172 () Bool)

(declare-fun tp!890648 () Bool)

(assert (=> b!2797581 (= e!1767172 tp!890648)))

(declare-fun b!2797582 () Bool)

(declare-fun e!1767171 () Bool)

(declare-fun tp!890655 () Bool)

(assert (=> b!2797582 (= e!1767171 tp!890655)))

(declare-fun condMapEmpty!18217 () Bool)

(declare-fun mapDefault!18217 () List!32595)

(assert (=> mapNonEmpty!18213 (= condMapEmpty!18217 (= mapRest!18214 ((as const (Array (_ BitVec 32) List!32595)) mapDefault!18217)))))

(declare-fun e!1767174 () Bool)

(assert (=> mapNonEmpty!18213 (= tp!890619 (and e!1767174 mapRes!18217))))

(declare-fun setElem!24308 () Context!4850)

(declare-fun tp!890646 () Bool)

(declare-fun setNonEmpty!24307 () Bool)

(assert (=> setNonEmpty!24307 (= setRes!24308 (and tp!890646 (inv!44130 setElem!24308) e!1767172))))

(declare-fun setRest!24307 () (InoxSet Context!4850))

(assert (=> setNonEmpty!24307 (= (_2!19576 (h!37915 mapValue!18217)) ((_ map or) (store ((as const (Array Context!4850 Bool)) false) setElem!24308 true) setRest!24307))))

(declare-fun setNonEmpty!24308 () Bool)

(declare-fun setElem!24307 () Context!4850)

(declare-fun tp!890656 () Bool)

(assert (=> setNonEmpty!24308 (= setRes!24307 (and tp!890656 (inv!44130 setElem!24307) e!1767173))))

(declare-fun setRest!24308 () (InoxSet Context!4850))

(assert (=> setNonEmpty!24308 (= (_2!19576 (h!37915 mapDefault!18217)) ((_ map or) (store ((as const (Array Context!4850 Bool)) false) setElem!24307 true) setRest!24308))))

(declare-fun tp!890649 () Bool)

(declare-fun tp!890654 () Bool)

(declare-fun b!2797583 () Bool)

(assert (=> b!2797583 (= e!1767174 (and tp!890654 (inv!44130 (_2!19575 (_1!19576 (h!37915 mapDefault!18217)))) e!1767171 tp_is_empty!14227 setRes!24307 tp!890649))))

(declare-fun condSetEmpty!24307 () Bool)

(assert (=> b!2797583 (= condSetEmpty!24307 (= (_2!19576 (h!37915 mapDefault!18217)) ((as const (Array Context!4850 Bool)) false)))))

(declare-fun b!2797584 () Bool)

(declare-fun tp!890653 () Bool)

(declare-fun e!1767170 () Bool)

(declare-fun tp!890652 () Bool)

(assert (=> b!2797584 (= e!1767169 (and tp!890652 (inv!44130 (_2!19575 (_1!19576 (h!37915 mapValue!18217)))) e!1767170 tp_is_empty!14227 setRes!24308 tp!890653))))

(declare-fun condSetEmpty!24308 () Bool)

(assert (=> b!2797584 (= condSetEmpty!24308 (= (_2!19576 (h!37915 mapValue!18217)) ((as const (Array Context!4850 Bool)) false)))))

(declare-fun b!2797585 () Bool)

(declare-fun tp!890650 () Bool)

(assert (=> b!2797585 (= e!1767170 tp!890650)))

(declare-fun mapIsEmpty!18217 () Bool)

(assert (=> mapIsEmpty!18217 mapRes!18217))

(assert (= (and mapNonEmpty!18213 condMapEmpty!18217) mapIsEmpty!18217))

(assert (= (and mapNonEmpty!18213 (not condMapEmpty!18217)) mapNonEmpty!18217))

(assert (= b!2797584 b!2797585))

(assert (= (and b!2797584 condSetEmpty!24308) setIsEmpty!24307))

(assert (= (and b!2797584 (not condSetEmpty!24308)) setNonEmpty!24307))

(assert (= setNonEmpty!24307 b!2797581))

(assert (= (and mapNonEmpty!18217 ((_ is Cons!32495) mapValue!18217)) b!2797584))

(assert (= b!2797583 b!2797582))

(assert (= (and b!2797583 condSetEmpty!24307) setIsEmpty!24308))

(assert (= (and b!2797583 (not condSetEmpty!24307)) setNonEmpty!24308))

(assert (= setNonEmpty!24308 b!2797580))

(assert (= (and mapNonEmpty!18213 ((_ is Cons!32495) mapDefault!18217)) b!2797583))

(declare-fun m!3227127 () Bool)

(assert (=> b!2797584 m!3227127))

(declare-fun m!3227129 () Bool)

(assert (=> setNonEmpty!24307 m!3227129))

(declare-fun m!3227131 () Bool)

(assert (=> b!2797583 m!3227131))

(declare-fun m!3227133 () Bool)

(assert (=> setNonEmpty!24308 m!3227133))

(declare-fun m!3227135 () Bool)

(assert (=> mapNonEmpty!18217 m!3227135))

(declare-fun b!2797594 () Bool)

(declare-fun e!1767183 () Bool)

(declare-fun tp!890667 () Bool)

(assert (=> b!2797594 (= e!1767183 tp!890667)))

(declare-fun setIsEmpty!24311 () Bool)

(declare-fun setRes!24311 () Bool)

(assert (=> setIsEmpty!24311 setRes!24311))

(declare-fun e!1767181 () Bool)

(assert (=> mapNonEmpty!18213 (= tp!890607 e!1767181)))

(declare-fun e!1767182 () Bool)

(declare-fun setNonEmpty!24311 () Bool)

(declare-fun tp!890668 () Bool)

(declare-fun setElem!24311 () Context!4850)

(assert (=> setNonEmpty!24311 (= setRes!24311 (and tp!890668 (inv!44130 setElem!24311) e!1767182))))

(declare-fun setRest!24311 () (InoxSet Context!4850))

(assert (=> setNonEmpty!24311 (= (_2!19576 (h!37915 mapValue!18214)) ((_ map or) (store ((as const (Array Context!4850 Bool)) false) setElem!24311 true) setRest!24311))))

(declare-fun b!2797595 () Bool)

(declare-fun tp!890669 () Bool)

(declare-fun tp!890670 () Bool)

(assert (=> b!2797595 (= e!1767181 (and tp!890669 (inv!44130 (_2!19575 (_1!19576 (h!37915 mapValue!18214)))) e!1767183 tp_is_empty!14227 setRes!24311 tp!890670))))

(declare-fun condSetEmpty!24311 () Bool)

(assert (=> b!2797595 (= condSetEmpty!24311 (= (_2!19576 (h!37915 mapValue!18214)) ((as const (Array Context!4850 Bool)) false)))))

(declare-fun b!2797596 () Bool)

(declare-fun tp!890671 () Bool)

(assert (=> b!2797596 (= e!1767182 tp!890671)))

(assert (= b!2797595 b!2797594))

(assert (= (and b!2797595 condSetEmpty!24311) setIsEmpty!24311))

(assert (= (and b!2797595 (not condSetEmpty!24311)) setNonEmpty!24311))

(assert (= setNonEmpty!24311 b!2797596))

(assert (= (and mapNonEmpty!18213 ((_ is Cons!32495) mapValue!18214)) b!2797595))

(declare-fun m!3227137 () Bool)

(assert (=> setNonEmpty!24311 m!3227137))

(declare-fun m!3227139 () Bool)

(assert (=> b!2797595 m!3227139))

(declare-fun b!2797611 () Bool)

(declare-fun e!1767198 () Bool)

(declare-fun tp!890692 () Bool)

(assert (=> b!2797611 (= e!1767198 tp!890692)))

(declare-fun tp!890696 () Bool)

(declare-fun e!1767199 () Bool)

(declare-fun mapDefault!18220 () List!32594)

(declare-fun e!1767200 () Bool)

(declare-fun b!2797612 () Bool)

(declare-fun setRes!24316 () Bool)

(assert (=> b!2797612 (= e!1767199 (and (inv!44130 (_1!19572 (_1!19573 (h!37914 mapDefault!18220)))) e!1767200 tp_is_empty!14227 setRes!24316 tp!890696))))

(declare-fun condSetEmpty!24316 () Bool)

(assert (=> b!2797612 (= condSetEmpty!24316 (= (_2!19573 (h!37914 mapDefault!18220)) ((as const (Array Context!4850 Bool)) false)))))

(declare-fun b!2797613 () Bool)

(declare-fun e!1767201 () Bool)

(declare-fun tp!890698 () Bool)

(assert (=> b!2797613 (= e!1767201 tp!890698)))

(declare-fun setIsEmpty!24316 () Bool)

(assert (=> setIsEmpty!24316 setRes!24316))

(declare-fun b!2797614 () Bool)

(declare-fun tp!890690 () Bool)

(assert (=> b!2797614 (= e!1767200 tp!890690)))

(declare-fun b!2797616 () Bool)

(declare-fun setRes!24317 () Bool)

(declare-fun mapValue!18220 () List!32594)

(declare-fun e!1767197 () Bool)

(declare-fun tp!890697 () Bool)

(assert (=> b!2797616 (= e!1767197 (and (inv!44130 (_1!19572 (_1!19573 (h!37914 mapValue!18220)))) e!1767201 tp_is_empty!14227 setRes!24317 tp!890697))))

(declare-fun condSetEmpty!24317 () Bool)

(assert (=> b!2797616 (= condSetEmpty!24317 (= (_2!19573 (h!37914 mapValue!18220)) ((as const (Array Context!4850 Bool)) false)))))

(declare-fun setNonEmpty!24316 () Bool)

(declare-fun tp!890695 () Bool)

(declare-fun setElem!24316 () Context!4850)

(assert (=> setNonEmpty!24316 (= setRes!24317 (and tp!890695 (inv!44130 setElem!24316) e!1767198))))

(declare-fun setRest!24316 () (InoxSet Context!4850))

(assert (=> setNonEmpty!24316 (= (_2!19573 (h!37914 mapValue!18220)) ((_ map or) (store ((as const (Array Context!4850 Bool)) false) setElem!24316 true) setRest!24316))))

(declare-fun mapIsEmpty!18220 () Bool)

(declare-fun mapRes!18220 () Bool)

(assert (=> mapIsEmpty!18220 mapRes!18220))

(declare-fun setNonEmpty!24317 () Bool)

(declare-fun e!1767196 () Bool)

(declare-fun tp!890694 () Bool)

(declare-fun setElem!24317 () Context!4850)

(assert (=> setNonEmpty!24317 (= setRes!24316 (and tp!890694 (inv!44130 setElem!24317) e!1767196))))

(declare-fun setRest!24317 () (InoxSet Context!4850))

(assert (=> setNonEmpty!24317 (= (_2!19573 (h!37914 mapDefault!18220)) ((_ map or) (store ((as const (Array Context!4850 Bool)) false) setElem!24317 true) setRest!24317))))

(declare-fun condMapEmpty!18220 () Bool)

(assert (=> mapNonEmpty!18214 (= condMapEmpty!18220 (= mapRest!18213 ((as const (Array (_ BitVec 32) List!32594)) mapDefault!18220)))))

(assert (=> mapNonEmpty!18214 (= tp!890609 (and e!1767199 mapRes!18220))))

(declare-fun b!2797615 () Bool)

(declare-fun tp!890691 () Bool)

(assert (=> b!2797615 (= e!1767196 tp!890691)))

(declare-fun setIsEmpty!24317 () Bool)

(assert (=> setIsEmpty!24317 setRes!24317))

(declare-fun mapNonEmpty!18220 () Bool)

(declare-fun tp!890693 () Bool)

(assert (=> mapNonEmpty!18220 (= mapRes!18220 (and tp!890693 e!1767197))))

(declare-fun mapRest!18220 () (Array (_ BitVec 32) List!32594))

(declare-fun mapKey!18220 () (_ BitVec 32))

(assert (=> mapNonEmpty!18220 (= mapRest!18213 (store mapRest!18220 mapKey!18220 mapValue!18220))))

(assert (= (and mapNonEmpty!18214 condMapEmpty!18220) mapIsEmpty!18220))

(assert (= (and mapNonEmpty!18214 (not condMapEmpty!18220)) mapNonEmpty!18220))

(assert (= b!2797616 b!2797613))

(assert (= (and b!2797616 condSetEmpty!24317) setIsEmpty!24317))

(assert (= (and b!2797616 (not condSetEmpty!24317)) setNonEmpty!24316))

(assert (= setNonEmpty!24316 b!2797611))

(assert (= (and mapNonEmpty!18220 ((_ is Cons!32494) mapValue!18220)) b!2797616))

(assert (= b!2797612 b!2797614))

(assert (= (and b!2797612 condSetEmpty!24316) setIsEmpty!24316))

(assert (= (and b!2797612 (not condSetEmpty!24316)) setNonEmpty!24317))

(assert (= setNonEmpty!24317 b!2797615))

(assert (= (and mapNonEmpty!18214 ((_ is Cons!32494) mapDefault!18220)) b!2797612))

(declare-fun m!3227141 () Bool)

(assert (=> b!2797612 m!3227141))

(declare-fun m!3227143 () Bool)

(assert (=> b!2797616 m!3227143))

(declare-fun m!3227145 () Bool)

(assert (=> setNonEmpty!24317 m!3227145))

(declare-fun m!3227147 () Bool)

(assert (=> mapNonEmpty!18220 m!3227147))

(declare-fun m!3227149 () Bool)

(assert (=> setNonEmpty!24316 m!3227149))

(declare-fun b!2797625 () Bool)

(declare-fun e!1767209 () Bool)

(declare-fun tp!890709 () Bool)

(assert (=> b!2797625 (= e!1767209 tp!890709)))

(declare-fun b!2797626 () Bool)

(declare-fun e!1767208 () Bool)

(declare-fun tp!890710 () Bool)

(assert (=> b!2797626 (= e!1767208 tp!890710)))

(declare-fun tp!890708 () Bool)

(declare-fun setElem!24320 () Context!4850)

(declare-fun setRes!24320 () Bool)

(declare-fun setNonEmpty!24320 () Bool)

(assert (=> setNonEmpty!24320 (= setRes!24320 (and tp!890708 (inv!44130 setElem!24320) e!1767209))))

(declare-fun setRest!24320 () (InoxSet Context!4850))

(assert (=> setNonEmpty!24320 (= (_2!19573 (h!37914 mapValue!18213)) ((_ map or) (store ((as const (Array Context!4850 Bool)) false) setElem!24320 true) setRest!24320))))

(declare-fun b!2797627 () Bool)

(declare-fun e!1767210 () Bool)

(declare-fun tp!890707 () Bool)

(assert (=> b!2797627 (= e!1767210 (and (inv!44130 (_1!19572 (_1!19573 (h!37914 mapValue!18213)))) e!1767208 tp_is_empty!14227 setRes!24320 tp!890707))))

(declare-fun condSetEmpty!24320 () Bool)

(assert (=> b!2797627 (= condSetEmpty!24320 (= (_2!19573 (h!37914 mapValue!18213)) ((as const (Array Context!4850 Bool)) false)))))

(declare-fun setIsEmpty!24320 () Bool)

(assert (=> setIsEmpty!24320 setRes!24320))

(assert (=> mapNonEmpty!18214 (= tp!890611 e!1767210)))

(assert (= b!2797627 b!2797626))

(assert (= (and b!2797627 condSetEmpty!24320) setIsEmpty!24320))

(assert (= (and b!2797627 (not condSetEmpty!24320)) setNonEmpty!24320))

(assert (= setNonEmpty!24320 b!2797625))

(assert (= (and mapNonEmpty!18214 ((_ is Cons!32494) mapValue!18213)) b!2797627))

(declare-fun m!3227151 () Bool)

(assert (=> setNonEmpty!24320 m!3227151))

(declare-fun m!3227153 () Bool)

(assert (=> b!2797627 m!3227153))

(declare-fun b!2797632 () Bool)

(declare-fun e!1767213 () Bool)

(declare-fun tp!890713 () Bool)

(assert (=> b!2797632 (= e!1767213 (and tp_is_empty!14227 tp!890713))))

(assert (=> b!2797442 (= tp!890614 e!1767213)))

(assert (= (and b!2797442 ((_ is Cons!32493) (t!228753 testedSuffix!143))) b!2797632))

(declare-fun b!2797633 () Bool)

(declare-fun e!1767215 () Bool)

(declare-fun tp!890716 () Bool)

(assert (=> b!2797633 (= e!1767215 tp!890716)))

(declare-fun b!2797634 () Bool)

(declare-fun e!1767214 () Bool)

(declare-fun tp!890717 () Bool)

(assert (=> b!2797634 (= e!1767214 tp!890717)))

(declare-fun setElem!24321 () Context!4850)

(declare-fun tp!890715 () Bool)

(declare-fun setRes!24321 () Bool)

(declare-fun setNonEmpty!24321 () Bool)

(assert (=> setNonEmpty!24321 (= setRes!24321 (and tp!890715 (inv!44130 setElem!24321) e!1767215))))

(declare-fun setRest!24321 () (InoxSet Context!4850))

(assert (=> setNonEmpty!24321 (= (_2!19573 (h!37914 (zeroValue!4265 (v!34093 (underlying!8215 (v!34094 (underlying!8216 (cache!4055 cacheUp!890)))))))) ((_ map or) (store ((as const (Array Context!4850 Bool)) false) setElem!24321 true) setRest!24321))))

(declare-fun tp!890714 () Bool)

(declare-fun e!1767216 () Bool)

(declare-fun b!2797635 () Bool)

(assert (=> b!2797635 (= e!1767216 (and (inv!44130 (_1!19572 (_1!19573 (h!37914 (zeroValue!4265 (v!34093 (underlying!8215 (v!34094 (underlying!8216 (cache!4055 cacheUp!890)))))))))) e!1767214 tp_is_empty!14227 setRes!24321 tp!890714))))

(declare-fun condSetEmpty!24321 () Bool)

(assert (=> b!2797635 (= condSetEmpty!24321 (= (_2!19573 (h!37914 (zeroValue!4265 (v!34093 (underlying!8215 (v!34094 (underlying!8216 (cache!4055 cacheUp!890)))))))) ((as const (Array Context!4850 Bool)) false)))))

(declare-fun setIsEmpty!24321 () Bool)

(assert (=> setIsEmpty!24321 setRes!24321))

(assert (=> b!2797431 (= tp!890615 e!1767216)))

(assert (= b!2797635 b!2797634))

(assert (= (and b!2797635 condSetEmpty!24321) setIsEmpty!24321))

(assert (= (and b!2797635 (not condSetEmpty!24321)) setNonEmpty!24321))

(assert (= setNonEmpty!24321 b!2797633))

(assert (= (and b!2797431 ((_ is Cons!32494) (zeroValue!4265 (v!34093 (underlying!8215 (v!34094 (underlying!8216 (cache!4055 cacheUp!890)))))))) b!2797635))

(declare-fun m!3227155 () Bool)

(assert (=> setNonEmpty!24321 m!3227155))

(declare-fun m!3227157 () Bool)

(assert (=> b!2797635 m!3227157))

(declare-fun b!2797636 () Bool)

(declare-fun e!1767218 () Bool)

(declare-fun tp!890720 () Bool)

(assert (=> b!2797636 (= e!1767218 tp!890720)))

(declare-fun b!2797637 () Bool)

(declare-fun e!1767217 () Bool)

(declare-fun tp!890721 () Bool)

(assert (=> b!2797637 (= e!1767217 tp!890721)))

(declare-fun setElem!24322 () Context!4850)

(declare-fun setNonEmpty!24322 () Bool)

(declare-fun setRes!24322 () Bool)

(declare-fun tp!890719 () Bool)

(assert (=> setNonEmpty!24322 (= setRes!24322 (and tp!890719 (inv!44130 setElem!24322) e!1767218))))

(declare-fun setRest!24322 () (InoxSet Context!4850))

(assert (=> setNonEmpty!24322 (= (_2!19573 (h!37914 (minValue!4265 (v!34093 (underlying!8215 (v!34094 (underlying!8216 (cache!4055 cacheUp!890)))))))) ((_ map or) (store ((as const (Array Context!4850 Bool)) false) setElem!24322 true) setRest!24322))))

(declare-fun e!1767219 () Bool)

(declare-fun b!2797638 () Bool)

(declare-fun tp!890718 () Bool)

(assert (=> b!2797638 (= e!1767219 (and (inv!44130 (_1!19572 (_1!19573 (h!37914 (minValue!4265 (v!34093 (underlying!8215 (v!34094 (underlying!8216 (cache!4055 cacheUp!890)))))))))) e!1767217 tp_is_empty!14227 setRes!24322 tp!890718))))

(declare-fun condSetEmpty!24322 () Bool)

(assert (=> b!2797638 (= condSetEmpty!24322 (= (_2!19573 (h!37914 (minValue!4265 (v!34093 (underlying!8215 (v!34094 (underlying!8216 (cache!4055 cacheUp!890)))))))) ((as const (Array Context!4850 Bool)) false)))))

(declare-fun setIsEmpty!24322 () Bool)

(assert (=> setIsEmpty!24322 setRes!24322))

(assert (=> b!2797431 (= tp!890608 e!1767219)))

(assert (= b!2797638 b!2797637))

(assert (= (and b!2797638 condSetEmpty!24322) setIsEmpty!24322))

(assert (= (and b!2797638 (not condSetEmpty!24322)) setNonEmpty!24322))

(assert (= setNonEmpty!24322 b!2797636))

(assert (= (and b!2797431 ((_ is Cons!32494) (minValue!4265 (v!34093 (underlying!8215 (v!34094 (underlying!8216 (cache!4055 cacheUp!890)))))))) b!2797638))

(declare-fun m!3227159 () Bool)

(assert (=> setNonEmpty!24322 m!3227159))

(declare-fun m!3227161 () Bool)

(assert (=> b!2797638 m!3227161))

(declare-fun tp!890729 () Bool)

(declare-fun e!1767225 () Bool)

(declare-fun b!2797647 () Bool)

(declare-fun tp!890730 () Bool)

(assert (=> b!2797647 (= e!1767225 (and (inv!44134 (left!24569 (c!453697 totalInput!758))) tp!890730 (inv!44134 (right!24899 (c!453697 totalInput!758))) tp!890729))))

(declare-fun b!2797649 () Bool)

(declare-fun e!1767224 () Bool)

(declare-fun tp!890728 () Bool)

(assert (=> b!2797649 (= e!1767224 tp!890728)))

(declare-fun b!2797648 () Bool)

(declare-fun inv!44137 (IArray!20141) Bool)

(assert (=> b!2797648 (= e!1767225 (and (inv!44137 (xs!13180 (c!453697 totalInput!758))) e!1767224))))

(assert (=> b!2797433 (= tp!890620 (and (inv!44134 (c!453697 totalInput!758)) e!1767225))))

(assert (= (and b!2797433 ((_ is Node!10068) (c!453697 totalInput!758))) b!2797647))

(assert (= b!2797648 b!2797649))

(assert (= (and b!2797433 ((_ is Leaf!15340) (c!453697 totalInput!758))) b!2797648))

(declare-fun m!3227163 () Bool)

(assert (=> b!2797647 m!3227163))

(declare-fun m!3227165 () Bool)

(assert (=> b!2797647 m!3227165))

(declare-fun m!3227167 () Bool)

(assert (=> b!2797648 m!3227167))

(assert (=> b!2797433 m!3226977))

(declare-fun b!2797650 () Bool)

(declare-fun e!1767226 () Bool)

(declare-fun tp!890731 () Bool)

(assert (=> b!2797650 (= e!1767226 (and tp_is_empty!14227 tp!890731))))

(assert (=> b!2797446 (= tp!890610 e!1767226)))

(assert (= (and b!2797446 ((_ is Cons!32493) (t!228753 testedP!183))) b!2797650))

(declare-fun b!2797651 () Bool)

(declare-fun e!1767228 () Bool)

(declare-fun tp!890734 () Bool)

(assert (=> b!2797651 (= e!1767228 tp!890734)))

(declare-fun b!2797652 () Bool)

(declare-fun e!1767227 () Bool)

(declare-fun tp!890735 () Bool)

(assert (=> b!2797652 (= e!1767227 tp!890735)))

(declare-fun setNonEmpty!24323 () Bool)

(declare-fun setRes!24323 () Bool)

(declare-fun setElem!24323 () Context!4850)

(declare-fun tp!890733 () Bool)

(assert (=> setNonEmpty!24323 (= setRes!24323 (and tp!890733 (inv!44130 setElem!24323) e!1767228))))

(declare-fun setRest!24323 () (InoxSet Context!4850))

(assert (=> setNonEmpty!24323 (= (_2!19573 (h!37914 mapDefault!18214)) ((_ map or) (store ((as const (Array Context!4850 Bool)) false) setElem!24323 true) setRest!24323))))

(declare-fun tp!890732 () Bool)

(declare-fun b!2797653 () Bool)

(declare-fun e!1767229 () Bool)

(assert (=> b!2797653 (= e!1767229 (and (inv!44130 (_1!19572 (_1!19573 (h!37914 mapDefault!18214)))) e!1767227 tp_is_empty!14227 setRes!24323 tp!890732))))

(declare-fun condSetEmpty!24323 () Bool)

(assert (=> b!2797653 (= condSetEmpty!24323 (= (_2!19573 (h!37914 mapDefault!18214)) ((as const (Array Context!4850 Bool)) false)))))

(declare-fun setIsEmpty!24323 () Bool)

(assert (=> setIsEmpty!24323 setRes!24323))

(assert (=> b!2797421 (= tp!890617 e!1767229)))

(assert (= b!2797653 b!2797652))

(assert (= (and b!2797653 condSetEmpty!24323) setIsEmpty!24323))

(assert (= (and b!2797653 (not condSetEmpty!24323)) setNonEmpty!24323))

(assert (= setNonEmpty!24323 b!2797651))

(assert (= (and b!2797421 ((_ is Cons!32494) mapDefault!18214)) b!2797653))

(declare-fun m!3227169 () Bool)

(assert (=> setNonEmpty!24323 m!3227169))

(declare-fun m!3227171 () Bool)

(assert (=> b!2797653 m!3227171))

(declare-fun b!2797654 () Bool)

(declare-fun e!1767232 () Bool)

(declare-fun tp!890736 () Bool)

(assert (=> b!2797654 (= e!1767232 tp!890736)))

(declare-fun setIsEmpty!24324 () Bool)

(declare-fun setRes!24324 () Bool)

(assert (=> setIsEmpty!24324 setRes!24324))

(declare-fun e!1767230 () Bool)

(assert (=> b!2797438 (= tp!890618 e!1767230)))

(declare-fun setNonEmpty!24324 () Bool)

(declare-fun tp!890737 () Bool)

(declare-fun e!1767231 () Bool)

(declare-fun setElem!24324 () Context!4850)

(assert (=> setNonEmpty!24324 (= setRes!24324 (and tp!890737 (inv!44130 setElem!24324) e!1767231))))

(declare-fun setRest!24324 () (InoxSet Context!4850))

(assert (=> setNonEmpty!24324 (= (_2!19576 (h!37915 (zeroValue!4266 (v!34095 (underlying!8217 (v!34096 (underlying!8218 (cache!4056 cacheDown!1009)))))))) ((_ map or) (store ((as const (Array Context!4850 Bool)) false) setElem!24324 true) setRest!24324))))

(declare-fun tp!890738 () Bool)

(declare-fun tp!890739 () Bool)

(declare-fun b!2797655 () Bool)

(assert (=> b!2797655 (= e!1767230 (and tp!890738 (inv!44130 (_2!19575 (_1!19576 (h!37915 (zeroValue!4266 (v!34095 (underlying!8217 (v!34096 (underlying!8218 (cache!4056 cacheDown!1009)))))))))) e!1767232 tp_is_empty!14227 setRes!24324 tp!890739))))

(declare-fun condSetEmpty!24324 () Bool)

(assert (=> b!2797655 (= condSetEmpty!24324 (= (_2!19576 (h!37915 (zeroValue!4266 (v!34095 (underlying!8217 (v!34096 (underlying!8218 (cache!4056 cacheDown!1009)))))))) ((as const (Array Context!4850 Bool)) false)))))

(declare-fun b!2797656 () Bool)

(declare-fun tp!890740 () Bool)

(assert (=> b!2797656 (= e!1767231 tp!890740)))

(assert (= b!2797655 b!2797654))

(assert (= (and b!2797655 condSetEmpty!24324) setIsEmpty!24324))

(assert (= (and b!2797655 (not condSetEmpty!24324)) setNonEmpty!24324))

(assert (= setNonEmpty!24324 b!2797656))

(assert (= (and b!2797438 ((_ is Cons!32495) (zeroValue!4266 (v!34095 (underlying!8217 (v!34096 (underlying!8218 (cache!4056 cacheDown!1009)))))))) b!2797655))

(declare-fun m!3227173 () Bool)

(assert (=> setNonEmpty!24324 m!3227173))

(declare-fun m!3227175 () Bool)

(assert (=> b!2797655 m!3227175))

(declare-fun b!2797657 () Bool)

(declare-fun e!1767235 () Bool)

(declare-fun tp!890741 () Bool)

(assert (=> b!2797657 (= e!1767235 tp!890741)))

(declare-fun setIsEmpty!24325 () Bool)

(declare-fun setRes!24325 () Bool)

(assert (=> setIsEmpty!24325 setRes!24325))

(declare-fun e!1767233 () Bool)

(assert (=> b!2797438 (= tp!890616 e!1767233)))

(declare-fun e!1767234 () Bool)

(declare-fun setNonEmpty!24325 () Bool)

(declare-fun setElem!24325 () Context!4850)

(declare-fun tp!890742 () Bool)

(assert (=> setNonEmpty!24325 (= setRes!24325 (and tp!890742 (inv!44130 setElem!24325) e!1767234))))

(declare-fun setRest!24325 () (InoxSet Context!4850))

(assert (=> setNonEmpty!24325 (= (_2!19576 (h!37915 (minValue!4266 (v!34095 (underlying!8217 (v!34096 (underlying!8218 (cache!4056 cacheDown!1009)))))))) ((_ map or) (store ((as const (Array Context!4850 Bool)) false) setElem!24325 true) setRest!24325))))

(declare-fun tp!890743 () Bool)

(declare-fun b!2797658 () Bool)

(declare-fun tp!890744 () Bool)

(assert (=> b!2797658 (= e!1767233 (and tp!890743 (inv!44130 (_2!19575 (_1!19576 (h!37915 (minValue!4266 (v!34095 (underlying!8217 (v!34096 (underlying!8218 (cache!4056 cacheDown!1009)))))))))) e!1767235 tp_is_empty!14227 setRes!24325 tp!890744))))

(declare-fun condSetEmpty!24325 () Bool)

(assert (=> b!2797658 (= condSetEmpty!24325 (= (_2!19576 (h!37915 (minValue!4266 (v!34095 (underlying!8217 (v!34096 (underlying!8218 (cache!4056 cacheDown!1009)))))))) ((as const (Array Context!4850 Bool)) false)))))

(declare-fun b!2797659 () Bool)

(declare-fun tp!890745 () Bool)

(assert (=> b!2797659 (= e!1767234 tp!890745)))

(assert (= b!2797658 b!2797657))

(assert (= (and b!2797658 condSetEmpty!24325) setIsEmpty!24325))

(assert (= (and b!2797658 (not condSetEmpty!24325)) setNonEmpty!24325))

(assert (= setNonEmpty!24325 b!2797659))

(assert (= (and b!2797438 ((_ is Cons!32495) (minValue!4266 (v!34095 (underlying!8217 (v!34096 (underlying!8218 (cache!4056 cacheDown!1009)))))))) b!2797658))

(declare-fun m!3227177 () Bool)

(assert (=> setNonEmpty!24325 m!3227177))

(declare-fun m!3227179 () Bool)

(assert (=> b!2797658 m!3227179))

(declare-fun b!2797664 () Bool)

(declare-fun e!1767238 () Bool)

(declare-fun tp!890750 () Bool)

(declare-fun tp!890751 () Bool)

(assert (=> b!2797664 (= e!1767238 (and tp!890750 tp!890751))))

(assert (=> b!2797444 (= tp!890621 e!1767238)))

(assert (= (and b!2797444 ((_ is Cons!32492) (exprs!2925 setElem!24302))) b!2797664))

(declare-fun condSetEmpty!24328 () Bool)

(assert (=> setNonEmpty!24302 (= condSetEmpty!24328 (= setRest!24302 ((as const (Array Context!4850 Bool)) false)))))

(declare-fun setRes!24328 () Bool)

(assert (=> setNonEmpty!24302 (= tp!890606 setRes!24328)))

(declare-fun setIsEmpty!24328 () Bool)

(assert (=> setIsEmpty!24328 setRes!24328))

(declare-fun setNonEmpty!24328 () Bool)

(declare-fun setElem!24328 () Context!4850)

(declare-fun tp!890757 () Bool)

(declare-fun e!1767241 () Bool)

(assert (=> setNonEmpty!24328 (= setRes!24328 (and tp!890757 (inv!44130 setElem!24328) e!1767241))))

(declare-fun setRest!24328 () (InoxSet Context!4850))

(assert (=> setNonEmpty!24328 (= setRest!24302 ((_ map or) (store ((as const (Array Context!4850 Bool)) false) setElem!24328 true) setRest!24328))))

(declare-fun b!2797669 () Bool)

(declare-fun tp!890756 () Bool)

(assert (=> b!2797669 (= e!1767241 tp!890756)))

(assert (= (and setNonEmpty!24302 condSetEmpty!24328) setIsEmpty!24328))

(assert (= (and setNonEmpty!24302 (not condSetEmpty!24328)) setNonEmpty!24328))

(assert (= setNonEmpty!24328 b!2797669))

(declare-fun m!3227181 () Bool)

(assert (=> setNonEmpty!24328 m!3227181))

(declare-fun b!2797670 () Bool)

(declare-fun e!1767244 () Bool)

(declare-fun tp!890758 () Bool)

(assert (=> b!2797670 (= e!1767244 tp!890758)))

(declare-fun setIsEmpty!24329 () Bool)

(declare-fun setRes!24329 () Bool)

(assert (=> setIsEmpty!24329 setRes!24329))

(declare-fun e!1767242 () Bool)

(assert (=> b!2797445 (= tp!890613 e!1767242)))

(declare-fun e!1767243 () Bool)

(declare-fun tp!890759 () Bool)

(declare-fun setElem!24329 () Context!4850)

(declare-fun setNonEmpty!24329 () Bool)

(assert (=> setNonEmpty!24329 (= setRes!24329 (and tp!890759 (inv!44130 setElem!24329) e!1767243))))

(declare-fun setRest!24329 () (InoxSet Context!4850))

(assert (=> setNonEmpty!24329 (= (_2!19576 (h!37915 mapDefault!18213)) ((_ map or) (store ((as const (Array Context!4850 Bool)) false) setElem!24329 true) setRest!24329))))

(declare-fun b!2797671 () Bool)

(declare-fun tp!890760 () Bool)

(declare-fun tp!890761 () Bool)

(assert (=> b!2797671 (= e!1767242 (and tp!890760 (inv!44130 (_2!19575 (_1!19576 (h!37915 mapDefault!18213)))) e!1767244 tp_is_empty!14227 setRes!24329 tp!890761))))

(declare-fun condSetEmpty!24329 () Bool)

(assert (=> b!2797671 (= condSetEmpty!24329 (= (_2!19576 (h!37915 mapDefault!18213)) ((as const (Array Context!4850 Bool)) false)))))

(declare-fun b!2797672 () Bool)

(declare-fun tp!890762 () Bool)

(assert (=> b!2797672 (= e!1767243 tp!890762)))

(assert (= b!2797671 b!2797670))

(assert (= (and b!2797671 condSetEmpty!24329) setIsEmpty!24329))

(assert (= (and b!2797671 (not condSetEmpty!24329)) setNonEmpty!24329))

(assert (= setNonEmpty!24329 b!2797672))

(assert (= (and b!2797445 ((_ is Cons!32495) mapDefault!18213)) b!2797671))

(declare-fun m!3227183 () Bool)

(assert (=> setNonEmpty!24329 m!3227183))

(declare-fun m!3227185 () Bool)

(assert (=> b!2797671 m!3227185))

(check-sat (not b!2797658) (not b!2797664) (not d!812940) (not setNonEmpty!24324) (not d!812868) (not b_next!79995) (not b!2797614) (not b!2797647) (not b!2797524) (not b!2797670) (not b!2797545) (not b!2797612) (not b!2797553) (not b!2797632) (not d!812938) (not d!812880) (not d!812896) (not d!812888) (not b!2797458) b_and!204025 (not d!812882) (not b!2797672) (not b!2797633) (not b!2797650) (not b!2797651) (not b!2797626) (not b!2797653) (not setNonEmpty!24325) (not setNonEmpty!24322) (not d!812890) (not setNonEmpty!24316) (not b!2797449) (not b!2797659) (not b_next!79991) (not d!812866) (not setNonEmpty!24308) (not b!2797505) (not b!2797543) (not b!2797671) (not b!2797457) (not b!2797550) (not bm!182789) (not b!2797582) (not b!2797547) (not b!2797563) (not b!2797477) (not d!812922) (not b!2797539) (not b!2797517) (not mapNonEmpty!18220) (not b!2797499) (not b!2797546) (not b!2797627) (not b!2797580) (not b!2797565) b_and!204027 (not b!2797542) (not b!2797615) (not b!2797581) (not d!812900) (not b!2797648) b_and!204029 (not b_next!79989) (not setNonEmpty!24329) (not bm!182783) (not b!2797616) (not b!2797556) (not d!812872) (not setNonEmpty!24307) (not d!812930) (not b!2797596) (not d!812876) (not bm!182788) (not b!2797669) (not d!812894) (not d!812914) (not b!2797636) (not d!812886) (not b!2797649) (not b_next!79993) (not setNonEmpty!24323) (not setNonEmpty!24328) (not b!2797638) (not b!2797518) (not b!2797541) (not d!812924) (not b!2797529) (not b!2797498) (not b!2797657) (not b!2797516) (not b!2797456) (not b!2797656) tp_is_empty!14227 (not b!2797635) (not b!2797584) (not b!2797637) (not b!2797613) (not b!2797433) (not b!2797655) (not d!812870) (not b!2797482) (not b!2797488) (not b!2797611) (not mapNonEmpty!18217) (not d!812908) (not setNonEmpty!24321) (not b!2797523) (not b!2797506) (not b!2797652) (not setNonEmpty!24320) (not d!812918) (not setNonEmpty!24317) (not setNonEmpty!24311) (not b!2797625) (not b!2797585) b_and!204023 (not b!2797594) (not d!812936) (not b!2797634) (not b!2797537) (not d!812898) (not b!2797583) (not d!812884) (not b!2797595) (not b!2797654) (not b!2797555))
(check-sat (not b_next!79995) b_and!204025 (not b_next!79991) b_and!204027 b_and!204029 (not b_next!79989) (not b_next!79993) b_and!204023)
