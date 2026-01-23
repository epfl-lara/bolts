; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!271128 () Bool)

(assert start!271128)

(declare-fun b!2803170 () Bool)

(declare-fun b_free!79509 () Bool)

(declare-fun b_next!80213 () Bool)

(assert (=> b!2803170 (= b_free!79509 (not b_next!80213))))

(declare-fun tp!893716 () Bool)

(declare-fun b_and!204247 () Bool)

(assert (=> b!2803170 (= tp!893716 b_and!204247)))

(declare-fun b!2803194 () Bool)

(declare-fun b_free!79511 () Bool)

(declare-fun b_next!80215 () Bool)

(assert (=> b!2803194 (= b_free!79511 (not b_next!80215))))

(declare-fun tp!893715 () Bool)

(declare-fun b_and!204249 () Bool)

(assert (=> b!2803194 (= tp!893715 b_and!204249)))

(declare-fun b!2803175 () Bool)

(declare-fun b_free!79513 () Bool)

(declare-fun b_next!80217 () Bool)

(assert (=> b!2803175 (= b_free!79513 (not b_next!80217))))

(declare-fun tp!893719 () Bool)

(declare-fun b_and!204251 () Bool)

(assert (=> b!2803175 (= tp!893719 b_and!204251)))

(declare-fun b!2803191 () Bool)

(declare-fun b_free!79515 () Bool)

(declare-fun b_next!80219 () Bool)

(assert (=> b!2803191 (= b_free!79515 (not b_next!80219))))

(declare-fun tp!893718 () Bool)

(declare-fun b_and!204253 () Bool)

(assert (=> b!2803191 (= tp!893718 b_and!204253)))

(declare-fun b!2803165 () Bool)

(declare-fun e!1771606 () Bool)

(declare-fun e!1771593 () Bool)

(assert (=> b!2803165 (= e!1771606 e!1771593)))

(declare-fun b!2803166 () Bool)

(declare-fun res!1167995 () Bool)

(declare-fun e!1771587 () Bool)

(assert (=> b!2803166 (=> res!1167995 e!1771587)))

(declare-datatypes ((Hashable!3971 0))(
  ( (HashableExt!3970 (__x!21815 Int)) )
))
(declare-datatypes ((C!16624 0))(
  ( (C!16625 (val!10246 Int)) )
))
(declare-datatypes ((Regex!8233 0))(
  ( (ElementMatch!8233 (c!454426 C!16624)) (Concat!13321 (regOne!16978 Regex!8233) (regTwo!16978 Regex!8233)) (EmptyExpr!8233) (Star!8233 (reg!8562 Regex!8233)) (EmptyLang!8233) (Union!8233 (regOne!16979 Regex!8233) (regTwo!16979 Regex!8233)) )
))
(declare-datatypes ((List!32699 0))(
  ( (Nil!32599) (Cons!32599 (h!38019 Regex!8233) (t!228869 List!32699)) )
))
(declare-datatypes ((Context!4902 0))(
  ( (Context!4903 (exprs!2951 List!32699)) )
))
(declare-datatypes ((tuple2!33268 0))(
  ( (tuple2!33269 (_1!19718 Context!4902) (_2!19718 C!16624)) )
))
(define-sort InoxSet (T) (Array T Bool))

(declare-datatypes ((tuple2!33270 0))(
  ( (tuple2!33271 (_1!19719 tuple2!33268) (_2!19719 (InoxSet Context!4902))) )
))
(declare-datatypes ((List!32700 0))(
  ( (Nil!32600) (Cons!32600 (h!38020 tuple2!33270) (t!228870 List!32700)) )
))
(declare-datatypes ((array!14414 0))(
  ( (array!14415 (arr!6421 (Array (_ BitVec 32) List!32700)) (size!25463 (_ BitVec 32))) )
))
(declare-datatypes ((array!14416 0))(
  ( (array!14417 (arr!6422 (Array (_ BitVec 32) (_ BitVec 64))) (size!25464 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!8110 0))(
  ( (LongMapFixedSize!8111 (defaultEntry!4440 Int) (mask!9908 (_ BitVec 32)) (extraKeys!4304 (_ BitVec 32)) (zeroValue!4314 List!32700) (minValue!4314 List!32700) (_size!8153 (_ BitVec 32)) (_keys!4355 array!14416) (_values!4336 array!14414) (_vacant!4116 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!16029 0))(
  ( (Cell!16030 (v!34201 LongMapFixedSize!8110)) )
))
(declare-datatypes ((MutLongMap!4055 0))(
  ( (LongMap!4055 (underlying!8313 Cell!16029)) (MutLongMapExt!4054 (__x!21816 Int)) )
))
(declare-datatypes ((Cell!16031 0))(
  ( (Cell!16032 (v!34202 MutLongMap!4055)) )
))
(declare-datatypes ((MutableMap!3961 0))(
  ( (MutableMapExt!3960 (__x!21817 Int)) (HashMap!3961 (underlying!8314 Cell!16031) (hashF!6003 Hashable!3971) (_size!8154 (_ BitVec 32)) (defaultValue!4132 Int)) )
))
(declare-datatypes ((CacheUp!2664 0))(
  ( (CacheUp!2665 (cache!4104 MutableMap!3961)) )
))
(declare-datatypes ((tuple3!5228 0))(
  ( (tuple3!5229 (_1!19720 Regex!8233) (_2!19720 Context!4902) (_3!3084 C!16624)) )
))
(declare-datatypes ((tuple2!33272 0))(
  ( (tuple2!33273 (_1!19721 tuple3!5228) (_2!19721 (InoxSet Context!4902))) )
))
(declare-datatypes ((List!32701 0))(
  ( (Nil!32601) (Cons!32601 (h!38021 tuple2!33272) (t!228871 List!32701)) )
))
(declare-datatypes ((array!14418 0))(
  ( (array!14419 (arr!6423 (Array (_ BitVec 32) List!32701)) (size!25465 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!8112 0))(
  ( (LongMapFixedSize!8113 (defaultEntry!4441 Int) (mask!9909 (_ BitVec 32)) (extraKeys!4305 (_ BitVec 32)) (zeroValue!4315 List!32701) (minValue!4315 List!32701) (_size!8155 (_ BitVec 32)) (_keys!4356 array!14416) (_values!4337 array!14418) (_vacant!4117 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!16033 0))(
  ( (Cell!16034 (v!34203 LongMapFixedSize!8112)) )
))
(declare-datatypes ((MutLongMap!4056 0))(
  ( (LongMap!4056 (underlying!8315 Cell!16033)) (MutLongMapExt!4055 (__x!21818 Int)) )
))
(declare-datatypes ((Cell!16035 0))(
  ( (Cell!16036 (v!34204 MutLongMap!4056)) )
))
(declare-datatypes ((Hashable!3972 0))(
  ( (HashableExt!3971 (__x!21819 Int)) )
))
(declare-datatypes ((MutableMap!3962 0))(
  ( (MutableMapExt!3961 (__x!21820 Int)) (HashMap!3962 (underlying!8316 Cell!16035) (hashF!6004 Hashable!3972) (_size!8156 (_ BitVec 32)) (defaultValue!4133 Int)) )
))
(declare-datatypes ((CacheDown!2790 0))(
  ( (CacheDown!2791 (cache!4105 MutableMap!3962)) )
))
(declare-datatypes ((tuple3!5230 0))(
  ( (tuple3!5231 (_1!19722 (InoxSet Context!4902)) (_2!19722 CacheUp!2664) (_3!3085 CacheDown!2790)) )
))
(declare-fun lt!1002362 () tuple3!5230)

(declare-fun valid!3175 (CacheUp!2664) Bool)

(assert (=> b!2803166 (= res!1167995 (not (valid!3175 (_2!19722 lt!1002362))))))

(declare-fun b!2803167 () Bool)

(declare-fun e!1771586 () Bool)

(declare-fun e!1771592 () Bool)

(assert (=> b!2803167 (= e!1771586 e!1771592)))

(declare-fun res!1168002 () Bool)

(assert (=> b!2803167 (=> (not res!1168002) (not e!1771592))))

(declare-fun totalInputSize!205 () Int)

(declare-fun lt!1002370 () Int)

(assert (=> b!2803167 (= res!1168002 (= totalInputSize!205 lt!1002370))))

(declare-datatypes ((List!32702 0))(
  ( (Nil!32602) (Cons!32602 (h!38022 C!16624) (t!228872 List!32702)) )
))
(declare-datatypes ((IArray!20185 0))(
  ( (IArray!20186 (innerList!10150 List!32702)) )
))
(declare-datatypes ((Conc!10090 0))(
  ( (Node!10090 (left!24608 Conc!10090) (right!24938 Conc!10090) (csize!20410 Int) (cheight!10301 Int)) (Leaf!15375 (xs!13202 IArray!20185) (csize!20411 Int)) (Empty!10090) )
))
(declare-datatypes ((BalanceConc!19794 0))(
  ( (BalanceConc!19795 (c!454427 Conc!10090)) )
))
(declare-fun totalInput!758 () BalanceConc!19794)

(declare-fun size!25466 (BalanceConc!19794) Int)

(assert (=> b!2803167 (= lt!1002370 (size!25466 totalInput!758))))

(declare-fun b!2803168 () Bool)

(declare-fun e!1771604 () Bool)

(declare-fun lt!1002360 () MutLongMap!4056)

(get-info :version)

(assert (=> b!2803168 (= e!1771604 (and e!1771606 ((_ is LongMap!4056) lt!1002360)))))

(declare-fun cacheDown!1009 () CacheDown!2790)

(assert (=> b!2803168 (= lt!1002360 (v!34204 (underlying!8316 (cache!4105 cacheDown!1009))))))

(declare-fun b!2803169 () Bool)

(declare-fun e!1771616 () Bool)

(declare-fun e!1771605 () Bool)

(assert (=> b!2803169 (= e!1771616 e!1771605)))

(assert (=> b!2803170 (= e!1771605 (and e!1771604 tp!893716))))

(declare-fun b!2803171 () Bool)

(declare-fun e!1771610 () Bool)

(declare-fun e!1771600 () Bool)

(declare-fun lt!1002368 () MutLongMap!4055)

(assert (=> b!2803171 (= e!1771610 (and e!1771600 ((_ is LongMap!4055) lt!1002368)))))

(declare-fun cacheUp!890 () CacheUp!2664)

(assert (=> b!2803171 (= lt!1002368 (v!34202 (underlying!8314 (cache!4104 cacheUp!890))))))

(declare-fun b!2803173 () Bool)

(declare-fun e!1771611 () Bool)

(declare-fun e!1771599 () Bool)

(assert (=> b!2803173 (= e!1771611 e!1771599)))

(declare-fun res!1168005 () Bool)

(assert (=> b!2803173 (=> res!1168005 e!1771599)))

(declare-fun lt!1002354 () List!32702)

(declare-fun lt!1002371 () List!32702)

(declare-fun lt!1002377 () List!32702)

(declare-fun ++!8036 (List!32702 List!32702) List!32702)

(assert (=> b!2803173 (= res!1168005 (not (= (++!8036 lt!1002371 lt!1002354) lt!1002377)))))

(declare-datatypes ((tuple2!33274 0))(
  ( (tuple2!33275 (_1!19723 BalanceConc!19794) (_2!19723 BalanceConc!19794)) )
))
(declare-fun lt!1002357 () tuple2!33274)

(declare-fun list!12230 (BalanceConc!19794) List!32702)

(assert (=> b!2803173 (= lt!1002354 (list!12230 (_2!19723 lt!1002357)))))

(assert (=> b!2803173 (= lt!1002371 (list!12230 (_1!19723 lt!1002357)))))

(declare-fun testedPSize!143 () Int)

(declare-fun splitAt!209 (BalanceConc!19794 Int) tuple2!33274)

(assert (=> b!2803173 (= lt!1002357 (splitAt!209 totalInput!758 testedPSize!143))))

(declare-fun b!2803174 () Bool)

(declare-fun res!1167994 () Bool)

(assert (=> b!2803174 (=> (not res!1167994) (not e!1771592))))

(assert (=> b!2803174 (= res!1167994 (valid!3175 cacheUp!890))))

(declare-fun tp!893720 () Bool)

(declare-fun e!1771614 () Bool)

(declare-fun e!1771615 () Bool)

(declare-fun tp!893724 () Bool)

(declare-fun array_inv!4598 (array!14416) Bool)

(declare-fun array_inv!4599 (array!14418) Bool)

(assert (=> b!2803175 (= e!1771615 (and tp!893719 tp!893720 tp!893724 (array_inv!4598 (_keys!4356 (v!34203 (underlying!8315 (v!34204 (underlying!8316 (cache!4105 cacheDown!1009))))))) (array_inv!4599 (_values!4337 (v!34203 (underlying!8315 (v!34204 (underlying!8316 (cache!4105 cacheDown!1009))))))) e!1771614))))

(declare-fun setIsEmpty!24660 () Bool)

(declare-fun setRes!24660 () Bool)

(assert (=> setIsEmpty!24660 setRes!24660))

(declare-fun b!2803176 () Bool)

(declare-fun res!1168004 () Bool)

(assert (=> b!2803176 (=> res!1168004 e!1771599)))

(assert (=> b!2803176 (= res!1168004 (not (= (size!25466 (_1!19723 lt!1002357)) testedPSize!143)))))

(declare-fun mapIsEmpty!18433 () Bool)

(declare-fun mapRes!18433 () Bool)

(assert (=> mapIsEmpty!18433 mapRes!18433))

(declare-fun b!2803177 () Bool)

(declare-fun res!1168003 () Bool)

(assert (=> b!2803177 (=> res!1168003 e!1771611)))

(assert (=> b!2803177 (= res!1168003 (= testedPSize!143 totalInputSize!205))))

(declare-fun b!2803178 () Bool)

(declare-fun e!1771607 () Bool)

(declare-fun tp_is_empty!14279 () Bool)

(declare-fun tp!893712 () Bool)

(assert (=> b!2803178 (= e!1771607 (and tp_is_empty!14279 tp!893712))))

(declare-fun mapNonEmpty!18433 () Bool)

(declare-fun tp!893711 () Bool)

(declare-fun tp!893708 () Bool)

(assert (=> mapNonEmpty!18433 (= mapRes!18433 (and tp!893711 tp!893708))))

(declare-fun mapValue!18433 () List!32701)

(declare-fun mapRest!18434 () (Array (_ BitVec 32) List!32701))

(declare-fun mapKey!18433 () (_ BitVec 32))

(assert (=> mapNonEmpty!18433 (= (arr!6423 (_values!4337 (v!34203 (underlying!8315 (v!34204 (underlying!8316 (cache!4105 cacheDown!1009))))))) (store mapRest!18434 mapKey!18433 mapValue!18433))))

(declare-fun b!2803179 () Bool)

(declare-fun e!1771608 () Bool)

(assert (=> b!2803179 (= e!1771592 (not e!1771608))))

(declare-fun res!1167997 () Bool)

(assert (=> b!2803179 (=> res!1167997 e!1771608)))

(declare-fun testedP!183 () List!32702)

(declare-fun isPrefix!2647 (List!32702 List!32702) Bool)

(assert (=> b!2803179 (= res!1167997 (not (isPrefix!2647 testedP!183 lt!1002377)))))

(declare-fun lt!1002366 () List!32702)

(assert (=> b!2803179 (isPrefix!2647 testedP!183 lt!1002366)))

(declare-datatypes ((Unit!46707 0))(
  ( (Unit!46708) )
))
(declare-fun lt!1002374 () Unit!46707)

(declare-fun testedSuffix!143 () List!32702)

(declare-fun lemmaConcatTwoListThenFirstIsPrefix!1752 (List!32702 List!32702) Unit!46707)

(assert (=> b!2803179 (= lt!1002374 (lemmaConcatTwoListThenFirstIsPrefix!1752 testedP!183 testedSuffix!143))))

(declare-fun b!2803180 () Bool)

(assert (=> b!2803180 (= e!1771593 e!1771615)))

(declare-fun b!2803181 () Bool)

(declare-fun e!1771589 () Bool)

(declare-fun tp!893722 () Bool)

(declare-fun inv!44275 (Conc!10090) Bool)

(assert (=> b!2803181 (= e!1771589 (and (inv!44275 (c!454427 totalInput!758)) tp!893722))))

(declare-fun b!2803182 () Bool)

(declare-fun e!1771597 () Bool)

(declare-fun e!1771602 () Bool)

(assert (=> b!2803182 (= e!1771597 e!1771602)))

(declare-fun res!1167991 () Bool)

(assert (=> b!2803182 (=> res!1167991 e!1771602)))

(declare-fun lt!1002378 () Int)

(assert (=> b!2803182 (= res!1167991 (>= lt!1002378 lt!1002370))))

(declare-fun lt!1002376 () Unit!46707)

(declare-fun e!1771591 () Unit!46707)

(assert (=> b!2803182 (= lt!1002376 e!1771591)))

(declare-fun c!454425 () Bool)

(assert (=> b!2803182 (= c!454425 (= lt!1002378 lt!1002370))))

(declare-fun size!25467 (List!32702) Int)

(assert (=> b!2803182 (<= lt!1002378 (size!25467 lt!1002377))))

(declare-fun lt!1002365 () Unit!46707)

(declare-fun lemmaIsPrefixThenSmallerEqSize!303 (List!32702 List!32702) Unit!46707)

(assert (=> b!2803182 (= lt!1002365 (lemmaIsPrefixThenSmallerEqSize!303 testedP!183 lt!1002377))))

(declare-fun mapNonEmpty!18434 () Bool)

(declare-fun mapRes!18434 () Bool)

(declare-fun tp!893714 () Bool)

(declare-fun tp!893710 () Bool)

(assert (=> mapNonEmpty!18434 (= mapRes!18434 (and tp!893714 tp!893710))))

(declare-fun mapValue!18434 () List!32700)

(declare-fun mapRest!18433 () (Array (_ BitVec 32) List!32700))

(declare-fun mapKey!18434 () (_ BitVec 32))

(assert (=> mapNonEmpty!18434 (= (arr!6421 (_values!4336 (v!34201 (underlying!8313 (v!34202 (underlying!8314 (cache!4104 cacheUp!890))))))) (store mapRest!18433 mapKey!18434 mapValue!18434))))

(declare-fun b!2803183 () Bool)

(declare-fun tp!893721 () Bool)

(assert (=> b!2803183 (= e!1771614 (and tp!893721 mapRes!18433))))

(declare-fun condMapEmpty!18434 () Bool)

(declare-fun mapDefault!18433 () List!32701)

(assert (=> b!2803183 (= condMapEmpty!18434 (= (arr!6423 (_values!4337 (v!34203 (underlying!8315 (v!34204 (underlying!8316 (cache!4105 cacheDown!1009))))))) ((as const (Array (_ BitVec 32) List!32701)) mapDefault!18433)))))

(declare-fun b!2803184 () Bool)

(declare-fun e!1771598 () Bool)

(declare-fun tp!893713 () Bool)

(assert (=> b!2803184 (= e!1771598 tp!893713)))

(declare-fun b!2803185 () Bool)

(declare-fun Unit!46709 () Unit!46707)

(assert (=> b!2803185 (= e!1771591 Unit!46709)))

(declare-fun lt!1002356 () Unit!46707)

(declare-fun lemmaIsPrefixRefl!1726 (List!32702 List!32702) Unit!46707)

(assert (=> b!2803185 (= lt!1002356 (lemmaIsPrefixRefl!1726 lt!1002377 lt!1002377))))

(assert (=> b!2803185 (isPrefix!2647 lt!1002377 lt!1002377)))

(declare-fun lt!1002369 () Unit!46707)

(declare-fun lemmaIsPrefixSameLengthThenSameList!502 (List!32702 List!32702 List!32702) Unit!46707)

(assert (=> b!2803185 (= lt!1002369 (lemmaIsPrefixSameLengthThenSameList!502 lt!1002377 testedP!183 lt!1002377))))

(assert (=> b!2803185 false))

(declare-fun b!2803186 () Bool)

(declare-fun e!1771596 () Bool)

(assert (=> b!2803186 (= e!1771596 e!1771587)))

(declare-fun res!1168001 () Bool)

(assert (=> b!2803186 (=> res!1168001 e!1771587)))

(declare-fun lt!1002367 () Int)

(assert (=> b!2803186 (= res!1168001 (not (= (+ 1 testedPSize!143) lt!1002367)))))

(declare-fun lt!1002364 () List!32702)

(assert (=> b!2803186 (= lt!1002367 (size!25467 lt!1002364))))

(declare-fun lt!1002372 () C!16624)

(declare-fun z!3684 () (InoxSet Context!4902))

(declare-fun derivationStepZipperMem!121 ((InoxSet Context!4902) C!16624 CacheUp!2664 CacheDown!2790) tuple3!5230)

(assert (=> b!2803186 (= lt!1002362 (derivationStepZipperMem!121 z!3684 lt!1002372 cacheUp!890 cacheDown!1009))))

(declare-fun res!1167996 () Bool)

(declare-fun e!1771594 () Bool)

(assert (=> start!271128 (=> (not res!1167996) (not e!1771594))))

(assert (=> start!271128 (= res!1167996 (= lt!1002366 lt!1002377))))

(assert (=> start!271128 (= lt!1002377 (list!12230 totalInput!758))))

(assert (=> start!271128 (= lt!1002366 (++!8036 testedP!183 testedSuffix!143))))

(assert (=> start!271128 e!1771594))

(declare-fun inv!44276 (BalanceConc!19794) Bool)

(assert (=> start!271128 (and (inv!44276 totalInput!758) e!1771589)))

(declare-fun condSetEmpty!24660 () Bool)

(assert (=> start!271128 (= condSetEmpty!24660 (= z!3684 ((as const (Array Context!4902 Bool)) false)))))

(assert (=> start!271128 setRes!24660))

(assert (=> start!271128 true))

(assert (=> start!271128 e!1771607))

(declare-fun e!1771588 () Bool)

(assert (=> start!271128 e!1771588))

(declare-fun inv!44277 (CacheDown!2790) Bool)

(assert (=> start!271128 (and (inv!44277 cacheDown!1009) e!1771616)))

(declare-fun e!1771612 () Bool)

(declare-fun inv!44278 (CacheUp!2664) Bool)

(assert (=> start!271128 (and (inv!44278 cacheUp!890) e!1771612)))

(declare-fun b!2803172 () Bool)

(assert (=> b!2803172 (= e!1771602 e!1771596)))

(declare-fun res!1168000 () Bool)

(assert (=> b!2803172 (=> res!1168000 e!1771596)))

(declare-fun nullableZipper!667 ((InoxSet Context!4902)) Bool)

(assert (=> b!2803172 (= res!1168000 (nullableZipper!667 z!3684))))

(declare-fun lt!1002358 () List!32702)

(assert (=> b!2803172 (= (++!8036 lt!1002364 lt!1002358) lt!1002377)))

(assert (=> b!2803172 (= lt!1002364 (++!8036 testedP!183 (Cons!32602 lt!1002372 Nil!32602)))))

(declare-fun lt!1002363 () Unit!46707)

(declare-fun lemmaMoveElementToOtherListKeepsConcatEq!903 (List!32702 C!16624 List!32702 List!32702) Unit!46707)

(assert (=> b!2803172 (= lt!1002363 (lemmaMoveElementToOtherListKeepsConcatEq!903 testedP!183 lt!1002372 lt!1002358 lt!1002377))))

(declare-fun tail!4439 (List!32702) List!32702)

(assert (=> b!2803172 (= lt!1002358 (tail!4439 testedSuffix!143))))

(declare-fun lt!1002359 () List!32702)

(declare-fun head!6212 (List!32702) C!16624)

(assert (=> b!2803172 (isPrefix!2647 (++!8036 testedP!183 (Cons!32602 (head!6212 lt!1002359) Nil!32602)) lt!1002377)))

(declare-fun lt!1002355 () Unit!46707)

(declare-fun lemmaAddHeadSuffixToPrefixStillPrefix!495 (List!32702 List!32702) Unit!46707)

(assert (=> b!2803172 (= lt!1002355 (lemmaAddHeadSuffixToPrefixStillPrefix!495 testedP!183 lt!1002377))))

(declare-fun b!2803187 () Bool)

(declare-fun tp!893709 () Bool)

(assert (=> b!2803187 (= e!1771588 (and tp_is_empty!14279 tp!893709))))

(declare-fun b!2803188 () Bool)

(declare-fun e!1771603 () Bool)

(assert (=> b!2803188 (= e!1771612 e!1771603)))

(declare-fun b!2803189 () Bool)

(declare-fun res!1167992 () Bool)

(assert (=> b!2803189 (=> res!1167992 e!1771587)))

(declare-fun valid!3176 (CacheDown!2790) Bool)

(assert (=> b!2803189 (= res!1167992 (not (valid!3176 (_3!3085 lt!1002362))))))

(declare-fun b!2803190 () Bool)

(assert (=> b!2803190 (= e!1771599 e!1771597)))

(declare-fun res!1167993 () Bool)

(assert (=> b!2803190 (=> res!1167993 e!1771597)))

(assert (=> b!2803190 (= res!1167993 (not (= lt!1002372 (head!6212 testedSuffix!143))))))

(declare-fun apply!7629 (BalanceConc!19794 Int) C!16624)

(assert (=> b!2803190 (= lt!1002372 (apply!7629 totalInput!758 testedPSize!143))))

(declare-fun drop!1759 (List!32702 Int) List!32702)

(declare-fun apply!7630 (List!32702 Int) C!16624)

(assert (=> b!2803190 (= (head!6212 (drop!1759 lt!1002377 testedPSize!143)) (apply!7630 lt!1002377 testedPSize!143))))

(declare-fun lt!1002361 () Unit!46707)

(declare-fun lemmaDropApply!963 (List!32702 Int) Unit!46707)

(assert (=> b!2803190 (= lt!1002361 (lemmaDropApply!963 lt!1002377 testedPSize!143))))

(assert (=> b!2803190 (not (or (not (= lt!1002371 testedP!183)) (not (= lt!1002354 testedSuffix!143))))))

(declare-fun lt!1002373 () Unit!46707)

(declare-fun lemmaConcatSameAndSameSizesThenSameLists!393 (List!32702 List!32702 List!32702 List!32702) Unit!46707)

(assert (=> b!2803190 (= lt!1002373 (lemmaConcatSameAndSameSizesThenSameLists!393 lt!1002371 lt!1002354 testedP!183 testedSuffix!143))))

(declare-fun tp!893723 () Bool)

(declare-fun e!1771595 () Bool)

(declare-fun tp!893707 () Bool)

(declare-fun e!1771601 () Bool)

(declare-fun array_inv!4600 (array!14414) Bool)

(assert (=> b!2803191 (= e!1771595 (and tp!893718 tp!893723 tp!893707 (array_inv!4598 (_keys!4355 (v!34201 (underlying!8313 (v!34202 (underlying!8314 (cache!4104 cacheUp!890))))))) (array_inv!4600 (_values!4336 (v!34201 (underlying!8313 (v!34202 (underlying!8314 (cache!4104 cacheUp!890))))))) e!1771601))))

(declare-fun b!2803192 () Bool)

(declare-fun res!1167998 () Bool)

(assert (=> b!2803192 (=> (not res!1167998) (not e!1771592))))

(assert (=> b!2803192 (= res!1167998 (valid!3176 cacheDown!1009))))

(declare-fun b!2803193 () Bool)

(assert (=> b!2803193 (= e!1771587 (< (- lt!1002370 lt!1002367) (- lt!1002370 lt!1002378)))))

(assert (=> b!2803194 (= e!1771603 (and e!1771610 tp!893715))))

(declare-fun b!2803195 () Bool)

(declare-fun e!1771590 () Bool)

(assert (=> b!2803195 (= e!1771590 e!1771595)))

(declare-fun b!2803196 () Bool)

(declare-fun tp!893725 () Bool)

(assert (=> b!2803196 (= e!1771601 (and tp!893725 mapRes!18434))))

(declare-fun condMapEmpty!18433 () Bool)

(declare-fun mapDefault!18434 () List!32700)

(assert (=> b!2803196 (= condMapEmpty!18433 (= (arr!6421 (_values!4336 (v!34201 (underlying!8313 (v!34202 (underlying!8314 (cache!4104 cacheUp!890))))))) ((as const (Array (_ BitVec 32) List!32700)) mapDefault!18434)))))

(declare-fun tp!893717 () Bool)

(declare-fun setElem!24660 () Context!4902)

(declare-fun setNonEmpty!24660 () Bool)

(declare-fun inv!44279 (Context!4902) Bool)

(assert (=> setNonEmpty!24660 (= setRes!24660 (and tp!893717 (inv!44279 setElem!24660) e!1771598))))

(declare-fun setRest!24660 () (InoxSet Context!4902))

(assert (=> setNonEmpty!24660 (= z!3684 ((_ map or) (store ((as const (Array Context!4902 Bool)) false) setElem!24660 true) setRest!24660))))

(declare-fun b!2803197 () Bool)

(declare-fun Unit!46710 () Unit!46707)

(assert (=> b!2803197 (= e!1771591 Unit!46710)))

(declare-fun b!2803198 () Bool)

(assert (=> b!2803198 (= e!1771594 e!1771586)))

(declare-fun res!1167990 () Bool)

(assert (=> b!2803198 (=> (not res!1167990) (not e!1771586))))

(assert (=> b!2803198 (= res!1167990 (= testedPSize!143 lt!1002378))))

(assert (=> b!2803198 (= lt!1002378 (size!25467 testedP!183))))

(declare-fun mapIsEmpty!18434 () Bool)

(assert (=> mapIsEmpty!18434 mapRes!18434))

(declare-fun b!2803199 () Bool)

(assert (=> b!2803199 (= e!1771600 e!1771590)))

(declare-fun b!2803200 () Bool)

(assert (=> b!2803200 (= e!1771608 e!1771611)))

(declare-fun res!1167999 () Bool)

(assert (=> b!2803200 (=> res!1167999 e!1771611)))

(declare-fun lostCauseZipper!516 ((InoxSet Context!4902)) Bool)

(assert (=> b!2803200 (= res!1167999 (lostCauseZipper!516 z!3684))))

(assert (=> b!2803200 (and (= testedSuffix!143 lt!1002359) (= lt!1002359 testedSuffix!143))))

(declare-fun lt!1002375 () Unit!46707)

(declare-fun lemmaSamePrefixThenSameSuffix!1219 (List!32702 List!32702 List!32702 List!32702 List!32702) Unit!46707)

(assert (=> b!2803200 (= lt!1002375 (lemmaSamePrefixThenSameSuffix!1219 testedP!183 testedSuffix!143 testedP!183 lt!1002359 lt!1002377))))

(declare-fun getSuffix!1321 (List!32702 List!32702) List!32702)

(assert (=> b!2803200 (= lt!1002359 (getSuffix!1321 lt!1002377 testedP!183))))

(assert (= (and start!271128 res!1167996) b!2803198))

(assert (= (and b!2803198 res!1167990) b!2803167))

(assert (= (and b!2803167 res!1168002) b!2803174))

(assert (= (and b!2803174 res!1167994) b!2803192))

(assert (= (and b!2803192 res!1167998) b!2803179))

(assert (= (and b!2803179 (not res!1167997)) b!2803200))

(assert (= (and b!2803200 (not res!1167999)) b!2803177))

(assert (= (and b!2803177 (not res!1168003)) b!2803173))

(assert (= (and b!2803173 (not res!1168005)) b!2803176))

(assert (= (and b!2803176 (not res!1168004)) b!2803190))

(assert (= (and b!2803190 (not res!1167993)) b!2803182))

(assert (= (and b!2803182 c!454425) b!2803185))

(assert (= (and b!2803182 (not c!454425)) b!2803197))

(assert (= (and b!2803182 (not res!1167991)) b!2803172))

(assert (= (and b!2803172 (not res!1168000)) b!2803186))

(assert (= (and b!2803186 (not res!1168001)) b!2803166))

(assert (= (and b!2803166 (not res!1167995)) b!2803189))

(assert (= (and b!2803189 (not res!1167992)) b!2803193))

(assert (= start!271128 b!2803181))

(assert (= (and start!271128 condSetEmpty!24660) setIsEmpty!24660))

(assert (= (and start!271128 (not condSetEmpty!24660)) setNonEmpty!24660))

(assert (= setNonEmpty!24660 b!2803184))

(assert (= (and start!271128 ((_ is Cons!32602) testedP!183)) b!2803178))

(assert (= (and start!271128 ((_ is Cons!32602) testedSuffix!143)) b!2803187))

(assert (= (and b!2803183 condMapEmpty!18434) mapIsEmpty!18433))

(assert (= (and b!2803183 (not condMapEmpty!18434)) mapNonEmpty!18433))

(assert (= b!2803175 b!2803183))

(assert (= b!2803180 b!2803175))

(assert (= b!2803165 b!2803180))

(assert (= (and b!2803168 ((_ is LongMap!4056) (v!34204 (underlying!8316 (cache!4105 cacheDown!1009))))) b!2803165))

(assert (= b!2803170 b!2803168))

(assert (= (and b!2803169 ((_ is HashMap!3962) (cache!4105 cacheDown!1009))) b!2803170))

(assert (= start!271128 b!2803169))

(assert (= (and b!2803196 condMapEmpty!18433) mapIsEmpty!18434))

(assert (= (and b!2803196 (not condMapEmpty!18433)) mapNonEmpty!18434))

(assert (= b!2803191 b!2803196))

(assert (= b!2803195 b!2803191))

(assert (= b!2803199 b!2803195))

(assert (= (and b!2803171 ((_ is LongMap!4055) (v!34202 (underlying!8314 (cache!4104 cacheUp!890))))) b!2803199))

(assert (= b!2803194 b!2803171))

(assert (= (and b!2803188 ((_ is HashMap!3961) (cache!4104 cacheUp!890))) b!2803194))

(assert (= start!271128 b!2803188))

(declare-fun m!3232823 () Bool)

(assert (=> b!2803190 m!3232823))

(declare-fun m!3232825 () Bool)

(assert (=> b!2803190 m!3232825))

(assert (=> b!2803190 m!3232823))

(declare-fun m!3232827 () Bool)

(assert (=> b!2803190 m!3232827))

(declare-fun m!3232829 () Bool)

(assert (=> b!2803190 m!3232829))

(declare-fun m!3232831 () Bool)

(assert (=> b!2803190 m!3232831))

(declare-fun m!3232833 () Bool)

(assert (=> b!2803190 m!3232833))

(declare-fun m!3232835 () Bool)

(assert (=> b!2803190 m!3232835))

(declare-fun m!3232837 () Bool)

(assert (=> b!2803173 m!3232837))

(declare-fun m!3232839 () Bool)

(assert (=> b!2803173 m!3232839))

(declare-fun m!3232841 () Bool)

(assert (=> b!2803173 m!3232841))

(declare-fun m!3232843 () Bool)

(assert (=> b!2803173 m!3232843))

(declare-fun m!3232845 () Bool)

(assert (=> b!2803174 m!3232845))

(declare-fun m!3232847 () Bool)

(assert (=> start!271128 m!3232847))

(declare-fun m!3232849 () Bool)

(assert (=> start!271128 m!3232849))

(declare-fun m!3232851 () Bool)

(assert (=> start!271128 m!3232851))

(declare-fun m!3232853 () Bool)

(assert (=> start!271128 m!3232853))

(declare-fun m!3232855 () Bool)

(assert (=> start!271128 m!3232855))

(declare-fun m!3232857 () Bool)

(assert (=> b!2803185 m!3232857))

(declare-fun m!3232859 () Bool)

(assert (=> b!2803185 m!3232859))

(declare-fun m!3232861 () Bool)

(assert (=> b!2803185 m!3232861))

(declare-fun m!3232863 () Bool)

(assert (=> setNonEmpty!24660 m!3232863))

(declare-fun m!3232865 () Bool)

(assert (=> b!2803172 m!3232865))

(declare-fun m!3232867 () Bool)

(assert (=> b!2803172 m!3232867))

(declare-fun m!3232869 () Bool)

(assert (=> b!2803172 m!3232869))

(declare-fun m!3232871 () Bool)

(assert (=> b!2803172 m!3232871))

(declare-fun m!3232873 () Bool)

(assert (=> b!2803172 m!3232873))

(declare-fun m!3232875 () Bool)

(assert (=> b!2803172 m!3232875))

(declare-fun m!3232877 () Bool)

(assert (=> b!2803172 m!3232877))

(declare-fun m!3232879 () Bool)

(assert (=> b!2803172 m!3232879))

(assert (=> b!2803172 m!3232869))

(declare-fun m!3232881 () Bool)

(assert (=> b!2803172 m!3232881))

(declare-fun m!3232883 () Bool)

(assert (=> b!2803166 m!3232883))

(declare-fun m!3232885 () Bool)

(assert (=> b!2803167 m!3232885))

(declare-fun m!3232887 () Bool)

(assert (=> b!2803192 m!3232887))

(declare-fun m!3232889 () Bool)

(assert (=> b!2803175 m!3232889))

(declare-fun m!3232891 () Bool)

(assert (=> b!2803175 m!3232891))

(declare-fun m!3232893 () Bool)

(assert (=> b!2803181 m!3232893))

(declare-fun m!3232895 () Bool)

(assert (=> b!2803176 m!3232895))

(declare-fun m!3232897 () Bool)

(assert (=> b!2803179 m!3232897))

(declare-fun m!3232899 () Bool)

(assert (=> b!2803179 m!3232899))

(declare-fun m!3232901 () Bool)

(assert (=> b!2803179 m!3232901))

(declare-fun m!3232903 () Bool)

(assert (=> b!2803200 m!3232903))

(declare-fun m!3232905 () Bool)

(assert (=> b!2803200 m!3232905))

(declare-fun m!3232907 () Bool)

(assert (=> b!2803200 m!3232907))

(declare-fun m!3232909 () Bool)

(assert (=> b!2803186 m!3232909))

(declare-fun m!3232911 () Bool)

(assert (=> b!2803186 m!3232911))

(declare-fun m!3232913 () Bool)

(assert (=> mapNonEmpty!18433 m!3232913))

(declare-fun m!3232915 () Bool)

(assert (=> b!2803182 m!3232915))

(declare-fun m!3232917 () Bool)

(assert (=> b!2803182 m!3232917))

(declare-fun m!3232919 () Bool)

(assert (=> mapNonEmpty!18434 m!3232919))

(declare-fun m!3232921 () Bool)

(assert (=> b!2803191 m!3232921))

(declare-fun m!3232923 () Bool)

(assert (=> b!2803191 m!3232923))

(declare-fun m!3232925 () Bool)

(assert (=> b!2803189 m!3232925))

(declare-fun m!3232927 () Bool)

(assert (=> b!2803198 m!3232927))

(check-sat (not b!2803166) b_and!204253 (not b!2803189) (not b!2803173) (not b!2803200) (not b_next!80213) (not b!2803187) (not b!2803172) b_and!204249 (not b!2803186) (not mapNonEmpty!18433) (not b!2803196) (not b!2803191) (not b_next!80215) (not b!2803198) tp_is_empty!14279 (not b!2803185) (not setNonEmpty!24660) (not start!271128) (not b!2803184) (not b_next!80217) (not b!2803181) (not b_next!80219) (not b!2803190) (not b!2803192) (not b!2803182) b_and!204251 (not b!2803174) (not mapNonEmpty!18434) (not b!2803183) (not b!2803179) (not b!2803178) (not b!2803167) b_and!204247 (not b!2803176) (not b!2803175))
(check-sat b_and!204253 (not b_next!80213) b_and!204251 b_and!204247 b_and!204249 (not b_next!80215) (not b_next!80217) (not b_next!80219))
