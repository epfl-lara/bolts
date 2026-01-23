; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!268316 () Bool)

(assert start!268316)

(declare-fun b!2773416 () Bool)

(declare-fun b_free!78277 () Bool)

(declare-fun b_next!78981 () Bool)

(assert (=> b!2773416 (= b_free!78277 (not b_next!78981))))

(declare-fun tp!877270 () Bool)

(declare-fun b_and!203015 () Bool)

(assert (=> b!2773416 (= tp!877270 b_and!203015)))

(declare-fun b!2773428 () Bool)

(declare-fun b_free!78279 () Bool)

(declare-fun b_next!78983 () Bool)

(assert (=> b!2773428 (= b_free!78279 (not b_next!78983))))

(declare-fun tp!877274 () Bool)

(declare-fun b_and!203017 () Bool)

(assert (=> b!2773428 (= tp!877274 b_and!203017)))

(declare-fun b!2773409 () Bool)

(declare-fun b_free!78281 () Bool)

(declare-fun b_next!78985 () Bool)

(assert (=> b!2773409 (= b_free!78281 (not b_next!78985))))

(declare-fun tp!877275 () Bool)

(declare-fun b_and!203019 () Bool)

(assert (=> b!2773409 (= tp!877275 b_and!203019)))

(declare-fun b!2773414 () Bool)

(declare-fun b_free!78283 () Bool)

(declare-fun b_next!78987 () Bool)

(assert (=> b!2773414 (= b_free!78283 (not b_next!78987))))

(declare-fun tp!877268 () Bool)

(declare-fun b_and!203021 () Bool)

(assert (=> b!2773414 (= tp!877268 b_and!203021)))

(declare-fun b!2773407 () Bool)

(declare-fun e!1748961 () Bool)

(declare-fun e!1748966 () Bool)

(assert (=> b!2773407 (= e!1748961 e!1748966)))

(declare-fun b!2773408 () Bool)

(declare-fun e!1748977 () Bool)

(declare-fun tp!877267 () Bool)

(assert (=> b!2773408 (= e!1748977 tp!877267)))

(declare-fun setIsEmpty!22932 () Bool)

(declare-fun setRes!22932 () Bool)

(assert (=> setIsEmpty!22932 setRes!22932))

(declare-fun e!1748972 () Bool)

(declare-fun e!1748960 () Bool)

(declare-fun tp!877264 () Bool)

(declare-datatypes ((C!16336 0))(
  ( (C!16337 (val!10102 Int)) )
))
(declare-datatypes ((Regex!8089 0))(
  ( (ElementMatch!8089 (c!450338 C!16336)) (Concat!13177 (regOne!16690 Regex!8089) (regTwo!16690 Regex!8089)) (EmptyExpr!8089) (Star!8089 (reg!8418 Regex!8089)) (EmptyLang!8089) (Union!8089 (regOne!16691 Regex!8089) (regTwo!16691 Regex!8089)) )
))
(declare-datatypes ((List!32119 0))(
  ( (Nil!32019) (Cons!32019 (h!37439 Regex!8089) (t!228247 List!32119)) )
))
(declare-datatypes ((Context!4614 0))(
  ( (Context!4615 (exprs!2807 List!32119)) )
))
(declare-datatypes ((array!13480 0))(
  ( (array!13481 (arr!6008 (Array (_ BitVec 32) (_ BitVec 64))) (size!24804 (_ BitVec 32))) )
))
(declare-datatypes ((tuple3!4846 0))(
  ( (tuple3!4847 (_1!18991 Regex!8089) (_2!18991 Context!4614) (_3!2893 C!16336)) )
))
(define-sort InoxSet (T) (Array T Bool))

(declare-datatypes ((tuple2!32196 0))(
  ( (tuple2!32197 (_1!18992 tuple3!4846) (_2!18992 (InoxSet Context!4614))) )
))
(declare-datatypes ((List!32120 0))(
  ( (Nil!32020) (Cons!32020 (h!37440 tuple2!32196) (t!228248 List!32120)) )
))
(declare-datatypes ((array!13482 0))(
  ( (array!13483 (arr!6009 (Array (_ BitVec 32) List!32120)) (size!24805 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!7572 0))(
  ( (LongMapFixedSize!7573 (defaultEntry!4171 Int) (mask!9567 (_ BitVec 32)) (extraKeys!4035 (_ BitVec 32)) (zeroValue!4045 List!32120) (minValue!4045 List!32120) (_size!7615 (_ BitVec 32)) (_keys!4086 array!13480) (_values!4067 array!13482) (_vacant!3847 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!14953 0))(
  ( (Cell!14954 (v!33628 LongMapFixedSize!7572)) )
))
(declare-datatypes ((MutLongMap!3786 0))(
  ( (LongMap!3786 (underlying!7775 Cell!14953)) (MutLongMapExt!3785 (__x!21008 Int)) )
))
(declare-datatypes ((Cell!14955 0))(
  ( (Cell!14956 (v!33629 MutLongMap!3786)) )
))
(declare-datatypes ((Hashable!3702 0))(
  ( (HashableExt!3701 (__x!21009 Int)) )
))
(declare-datatypes ((MutableMap!3692 0))(
  ( (MutableMapExt!3691 (__x!21010 Int)) (HashMap!3692 (underlying!7776 Cell!14955) (hashF!5734 Hashable!3702) (_size!7616 (_ BitVec 32)) (defaultValue!3863 Int)) )
))
(declare-datatypes ((CacheDown!2518 0))(
  ( (CacheDown!2519 (cache!3835 MutableMap!3692)) )
))
(declare-fun cacheDown!939 () CacheDown!2518)

(declare-fun tp!877276 () Bool)

(declare-fun array_inv!4298 (array!13480) Bool)

(declare-fun array_inv!4299 (array!13482) Bool)

(assert (=> b!2773409 (= e!1748960 (and tp!877275 tp!877264 tp!877276 (array_inv!4298 (_keys!4086 (v!33628 (underlying!7775 (v!33629 (underlying!7776 (cache!3835 cacheDown!939))))))) (array_inv!4299 (_values!4067 (v!33628 (underlying!7775 (v!33629 (underlying!7776 (cache!3835 cacheDown!939))))))) e!1748972))))

(declare-fun mapNonEmpty!17281 () Bool)

(declare-fun mapRes!17282 () Bool)

(declare-fun tp!877265 () Bool)

(declare-fun tp!877266 () Bool)

(assert (=> mapNonEmpty!17281 (= mapRes!17282 (and tp!877265 tp!877266))))

(declare-datatypes ((tuple2!32198 0))(
  ( (tuple2!32199 (_1!18993 Context!4614) (_2!18993 C!16336)) )
))
(declare-datatypes ((tuple2!32200 0))(
  ( (tuple2!32201 (_1!18994 tuple2!32198) (_2!18994 (InoxSet Context!4614))) )
))
(declare-datatypes ((List!32121 0))(
  ( (Nil!32021) (Cons!32021 (h!37441 tuple2!32200) (t!228249 List!32121)) )
))
(declare-fun mapRest!17282 () (Array (_ BitVec 32) List!32121))

(declare-fun mapKey!17281 () (_ BitVec 32))

(declare-datatypes ((Hashable!3703 0))(
  ( (HashableExt!3702 (__x!21011 Int)) )
))
(declare-datatypes ((array!13484 0))(
  ( (array!13485 (arr!6010 (Array (_ BitVec 32) List!32121)) (size!24806 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!7574 0))(
  ( (LongMapFixedSize!7575 (defaultEntry!4172 Int) (mask!9568 (_ BitVec 32)) (extraKeys!4036 (_ BitVec 32)) (zeroValue!4046 List!32121) (minValue!4046 List!32121) (_size!7617 (_ BitVec 32)) (_keys!4087 array!13480) (_values!4068 array!13484) (_vacant!3848 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!14957 0))(
  ( (Cell!14958 (v!33630 LongMapFixedSize!7574)) )
))
(declare-datatypes ((MutLongMap!3787 0))(
  ( (LongMap!3787 (underlying!7777 Cell!14957)) (MutLongMapExt!3786 (__x!21012 Int)) )
))
(declare-datatypes ((Cell!14959 0))(
  ( (Cell!14960 (v!33631 MutLongMap!3787)) )
))
(declare-datatypes ((MutableMap!3693 0))(
  ( (MutableMapExt!3692 (__x!21013 Int)) (HashMap!3693 (underlying!7778 Cell!14959) (hashF!5735 Hashable!3703) (_size!7618 (_ BitVec 32)) (defaultValue!3864 Int)) )
))
(declare-datatypes ((CacheUp!2398 0))(
  ( (CacheUp!2399 (cache!3836 MutableMap!3693)) )
))
(declare-fun cacheUp!820 () CacheUp!2398)

(declare-fun mapValue!17282 () List!32121)

(assert (=> mapNonEmpty!17281 (= (arr!6010 (_values!4068 (v!33630 (underlying!7777 (v!33631 (underlying!7778 (cache!3836 cacheUp!820))))))) (store mapRest!17282 mapKey!17281 mapValue!17282))))

(declare-fun b!2773410 () Bool)

(declare-fun e!1748978 () Bool)

(declare-fun e!1748975 () Bool)

(assert (=> b!2773410 (= e!1748978 e!1748975)))

(declare-fun b!2773411 () Bool)

(declare-fun res!1159230 () Bool)

(declare-fun e!1748970 () Bool)

(assert (=> b!2773411 (=> (not res!1159230) (not e!1748970))))

(declare-fun valid!2955 (CacheDown!2518) Bool)

(assert (=> b!2773411 (= res!1159230 (valid!2955 cacheDown!939))))

(declare-fun mapIsEmpty!17281 () Bool)

(declare-fun mapRes!17281 () Bool)

(assert (=> mapIsEmpty!17281 mapRes!17281))

(declare-datatypes ((tuple3!4848 0))(
  ( (tuple3!4849 (_1!18995 Int) (_2!18995 CacheUp!2398) (_3!2894 CacheDown!2518)) )
))
(declare-fun lt!988616 () tuple3!4848)

(declare-fun e!1748976 () Bool)

(declare-datatypes ((List!32122 0))(
  ( (Nil!32022) (Cons!32022 (h!37442 C!16336) (t!228250 List!32122)) )
))
(declare-datatypes ((IArray!19943 0))(
  ( (IArray!19944 (innerList!10029 List!32122)) )
))
(declare-datatypes ((Conc!9969 0))(
  ( (Node!9969 (left!24399 Conc!9969) (right!24729 Conc!9969) (csize!20168 Int) (cheight!10180 Int)) (Leaf!15182 (xs!13079 IArray!19943) (csize!20169 Int)) (Empty!9969) )
))
(declare-datatypes ((BalanceConc!19552 0))(
  ( (BalanceConc!19553 (c!450339 Conc!9969)) )
))
(declare-fun input!5495 () BalanceConc!19552)

(declare-fun b!2773413 () Bool)

(declare-fun z!3597 () (InoxSet Context!4614))

(declare-fun lt!988618 () Int)

(declare-fun lt!988617 () List!32122)

(declare-fun findLongestMatchInnerZipperFast!41 ((InoxSet Context!4614) List!32122 Int List!32122 BalanceConc!19552 Int) Int)

(assert (=> b!2773413 (= e!1748976 (= (_1!18995 lt!988616) (findLongestMatchInnerZipperFast!41 z!3597 Nil!32022 0 lt!988617 input!5495 lt!988618)))))

(declare-fun tp!877278 () Bool)

(declare-fun setNonEmpty!22932 () Bool)

(declare-fun setElem!22932 () Context!4614)

(declare-fun inv!43488 (Context!4614) Bool)

(assert (=> setNonEmpty!22932 (= setRes!22932 (and tp!877278 (inv!43488 setElem!22932) e!1748977))))

(declare-fun setRest!22932 () (InoxSet Context!4614))

(assert (=> setNonEmpty!22932 (= z!3597 ((_ map or) (store ((as const (Array Context!4614 Bool)) false) setElem!22932 true) setRest!22932))))

(declare-fun mapIsEmpty!17282 () Bool)

(assert (=> mapIsEmpty!17282 mapRes!17282))

(declare-fun e!1748959 () Bool)

(assert (=> b!2773414 (= e!1748975 (and e!1748959 tp!877268))))

(declare-fun b!2773415 () Bool)

(declare-fun e!1748965 () Bool)

(declare-fun lt!988619 () Bool)

(assert (=> b!2773415 (= e!1748965 lt!988619)))

(declare-fun e!1748958 () Bool)

(declare-fun tp!877271 () Bool)

(declare-fun tp!877277 () Bool)

(declare-fun e!1748971 () Bool)

(declare-fun array_inv!4300 (array!13484) Bool)

(assert (=> b!2773416 (= e!1748971 (and tp!877270 tp!877277 tp!877271 (array_inv!4298 (_keys!4087 (v!33630 (underlying!7777 (v!33631 (underlying!7778 (cache!3836 cacheUp!820))))))) (array_inv!4300 (_values!4068 (v!33630 (underlying!7777 (v!33631 (underlying!7778 (cache!3836 cacheUp!820))))))) e!1748958))))

(declare-fun b!2773417 () Bool)

(declare-fun res!1159231 () Bool)

(assert (=> b!2773417 (=> (not res!1159231) (not e!1748976))))

(assert (=> b!2773417 (= res!1159231 (valid!2955 (_3!2894 lt!988616)))))

(declare-fun mapNonEmpty!17282 () Bool)

(declare-fun tp!877272 () Bool)

(declare-fun tp!877269 () Bool)

(assert (=> mapNonEmpty!17282 (= mapRes!17281 (and tp!877272 tp!877269))))

(declare-fun mapKey!17282 () (_ BitVec 32))

(declare-fun mapValue!17281 () List!32120)

(declare-fun mapRest!17281 () (Array (_ BitVec 32) List!32120))

(assert (=> mapNonEmpty!17282 (= (arr!6009 (_values!4067 (v!33628 (underlying!7775 (v!33629 (underlying!7776 (cache!3835 cacheDown!939))))))) (store mapRest!17281 mapKey!17282 mapValue!17281))))

(declare-fun b!2773418 () Bool)

(declare-fun res!1159235 () Bool)

(assert (=> b!2773418 (=> res!1159235 e!1748965)))

(declare-fun size!24807 (List!32122) Int)

(assert (=> b!2773418 (= res!1159235 (not (= 0 (size!24807 Nil!32022))))))

(declare-fun b!2773412 () Bool)

(declare-fun e!1748963 () Bool)

(declare-fun e!1748969 () Bool)

(assert (=> b!2773412 (= e!1748963 e!1748969)))

(declare-fun res!1159234 () Bool)

(assert (=> start!268316 (=> (not res!1159234) (not e!1748970))))

(declare-fun valid!2956 (CacheUp!2398) Bool)

(assert (=> start!268316 (= res!1159234 (valid!2956 cacheUp!820))))

(assert (=> start!268316 e!1748970))

(declare-fun e!1748968 () Bool)

(declare-fun inv!43489 (CacheUp!2398) Bool)

(assert (=> start!268316 (and (inv!43489 cacheUp!820) e!1748968)))

(declare-fun inv!43490 (CacheDown!2518) Bool)

(assert (=> start!268316 (and (inv!43490 cacheDown!939) e!1748978)))

(declare-fun condSetEmpty!22932 () Bool)

(assert (=> start!268316 (= condSetEmpty!22932 (= z!3597 ((as const (Array Context!4614 Bool)) false)))))

(assert (=> start!268316 setRes!22932))

(declare-fun e!1748967 () Bool)

(declare-fun inv!43491 (BalanceConc!19552) Bool)

(assert (=> start!268316 (and (inv!43491 input!5495) e!1748967)))

(declare-fun b!2773419 () Bool)

(declare-fun lt!988620 () MutLongMap!3786)

(get-info :version)

(assert (=> b!2773419 (= e!1748959 (and e!1748963 ((_ is LongMap!3786) lt!988620)))))

(assert (=> b!2773419 (= lt!988620 (v!33629 (underlying!7776 (cache!3835 cacheDown!939))))))

(declare-fun b!2773420 () Bool)

(declare-fun e!1748962 () Bool)

(declare-fun lt!988615 () MutLongMap!3787)

(assert (=> b!2773420 (= e!1748962 (and e!1748961 ((_ is LongMap!3787) lt!988615)))))

(assert (=> b!2773420 (= lt!988615 (v!33631 (underlying!7778 (cache!3836 cacheUp!820))))))

(declare-fun b!2773421 () Bool)

(declare-fun e!1748974 () Bool)

(assert (=> b!2773421 (= e!1748968 e!1748974)))

(declare-fun b!2773422 () Bool)

(declare-fun tp!877263 () Bool)

(assert (=> b!2773422 (= e!1748958 (and tp!877263 mapRes!17282))))

(declare-fun condMapEmpty!17281 () Bool)

(declare-fun mapDefault!17282 () List!32121)

(assert (=> b!2773422 (= condMapEmpty!17281 (= (arr!6010 (_values!4068 (v!33630 (underlying!7777 (v!33631 (underlying!7778 (cache!3836 cacheUp!820))))))) ((as const (Array (_ BitVec 32) List!32121)) mapDefault!17282)))))

(declare-fun b!2773423 () Bool)

(declare-fun tp!877262 () Bool)

(declare-fun inv!43492 (Conc!9969) Bool)

(assert (=> b!2773423 (= e!1748967 (and (inv!43492 (c!450339 input!5495)) tp!877262))))

(declare-fun b!2773424 () Bool)

(declare-fun tp!877273 () Bool)

(assert (=> b!2773424 (= e!1748972 (and tp!877273 mapRes!17281))))

(declare-fun condMapEmpty!17282 () Bool)

(declare-fun mapDefault!17281 () List!32120)

(assert (=> b!2773424 (= condMapEmpty!17282 (= (arr!6009 (_values!4067 (v!33628 (underlying!7775 (v!33629 (underlying!7776 (cache!3835 cacheDown!939))))))) ((as const (Array (_ BitVec 32) List!32120)) mapDefault!17281)))))

(declare-fun b!2773425 () Bool)

(assert (=> b!2773425 (= e!1748970 (not e!1748965))))

(declare-fun res!1159232 () Bool)

(assert (=> b!2773425 (=> res!1159232 e!1748965)))

(declare-fun ++!7922 (List!32122 List!32122) List!32122)

(assert (=> b!2773425 (= res!1159232 (not (= (++!7922 Nil!32022 lt!988617) lt!988617)))))

(assert (=> b!2773425 e!1748976))

(declare-fun res!1159233 () Bool)

(assert (=> b!2773425 (=> (not res!1159233) (not e!1748976))))

(assert (=> b!2773425 (= res!1159233 lt!988619)))

(assert (=> b!2773425 (= lt!988619 (valid!2956 (_2!18995 lt!988616)))))

(declare-fun findLongestMatchInnerZipperFastMem!35 (CacheUp!2398 CacheDown!2518 (InoxSet Context!4614) List!32122 Int List!32122 BalanceConc!19552 Int) tuple3!4848)

(assert (=> b!2773425 (= lt!988616 (findLongestMatchInnerZipperFastMem!35 cacheUp!820 cacheDown!939 z!3597 Nil!32022 0 lt!988617 input!5495 lt!988618))))

(declare-fun size!24808 (BalanceConc!19552) Int)

(assert (=> b!2773425 (= lt!988618 (size!24808 input!5495))))

(declare-fun list!12084 (BalanceConc!19552) List!32122)

(assert (=> b!2773425 (= lt!988617 (list!12084 input!5495))))

(declare-fun b!2773426 () Bool)

(assert (=> b!2773426 (= e!1748969 e!1748960)))

(declare-fun b!2773427 () Bool)

(assert (=> b!2773427 (= e!1748966 e!1748971)))

(assert (=> b!2773428 (= e!1748974 (and e!1748962 tp!877274))))

(assert (= (and start!268316 res!1159234) b!2773411))

(assert (= (and b!2773411 res!1159230) b!2773425))

(assert (= (and b!2773425 res!1159233) b!2773417))

(assert (= (and b!2773417 res!1159231) b!2773413))

(assert (= (and b!2773425 (not res!1159232)) b!2773418))

(assert (= (and b!2773418 (not res!1159235)) b!2773415))

(assert (= (and b!2773422 condMapEmpty!17281) mapIsEmpty!17282))

(assert (= (and b!2773422 (not condMapEmpty!17281)) mapNonEmpty!17281))

(assert (= b!2773416 b!2773422))

(assert (= b!2773427 b!2773416))

(assert (= b!2773407 b!2773427))

(assert (= (and b!2773420 ((_ is LongMap!3787) (v!33631 (underlying!7778 (cache!3836 cacheUp!820))))) b!2773407))

(assert (= b!2773428 b!2773420))

(assert (= (and b!2773421 ((_ is HashMap!3693) (cache!3836 cacheUp!820))) b!2773428))

(assert (= start!268316 b!2773421))

(assert (= (and b!2773424 condMapEmpty!17282) mapIsEmpty!17281))

(assert (= (and b!2773424 (not condMapEmpty!17282)) mapNonEmpty!17282))

(assert (= b!2773409 b!2773424))

(assert (= b!2773426 b!2773409))

(assert (= b!2773412 b!2773426))

(assert (= (and b!2773419 ((_ is LongMap!3786) (v!33629 (underlying!7776 (cache!3835 cacheDown!939))))) b!2773412))

(assert (= b!2773414 b!2773419))

(assert (= (and b!2773410 ((_ is HashMap!3692) (cache!3835 cacheDown!939))) b!2773414))

(assert (= start!268316 b!2773410))

(assert (= (and start!268316 condSetEmpty!22932) setIsEmpty!22932))

(assert (= (and start!268316 (not condSetEmpty!22932)) setNonEmpty!22932))

(assert (= setNonEmpty!22932 b!2773408))

(assert (= start!268316 b!2773423))

(declare-fun m!3200191 () Bool)

(assert (=> b!2773413 m!3200191))

(declare-fun m!3200193 () Bool)

(assert (=> b!2773417 m!3200193))

(declare-fun m!3200195 () Bool)

(assert (=> b!2773416 m!3200195))

(declare-fun m!3200197 () Bool)

(assert (=> b!2773416 m!3200197))

(declare-fun m!3200199 () Bool)

(assert (=> b!2773409 m!3200199))

(declare-fun m!3200201 () Bool)

(assert (=> b!2773409 m!3200201))

(declare-fun m!3200203 () Bool)

(assert (=> b!2773423 m!3200203))

(declare-fun m!3200205 () Bool)

(assert (=> b!2773411 m!3200205))

(declare-fun m!3200207 () Bool)

(assert (=> mapNonEmpty!17282 m!3200207))

(declare-fun m!3200209 () Bool)

(assert (=> b!2773425 m!3200209))

(declare-fun m!3200211 () Bool)

(assert (=> b!2773425 m!3200211))

(declare-fun m!3200213 () Bool)

(assert (=> b!2773425 m!3200213))

(declare-fun m!3200215 () Bool)

(assert (=> b!2773425 m!3200215))

(declare-fun m!3200217 () Bool)

(assert (=> b!2773425 m!3200217))

(declare-fun m!3200219 () Bool)

(assert (=> mapNonEmpty!17281 m!3200219))

(declare-fun m!3200221 () Bool)

(assert (=> b!2773418 m!3200221))

(declare-fun m!3200223 () Bool)

(assert (=> start!268316 m!3200223))

(declare-fun m!3200225 () Bool)

(assert (=> start!268316 m!3200225))

(declare-fun m!3200227 () Bool)

(assert (=> start!268316 m!3200227))

(declare-fun m!3200229 () Bool)

(assert (=> start!268316 m!3200229))

(declare-fun m!3200231 () Bool)

(assert (=> setNonEmpty!22932 m!3200231))

(check-sat (not b!2773413) b_and!203017 (not b_next!78987) (not mapNonEmpty!17282) (not b!2773423) (not setNonEmpty!22932) b_and!203015 b_and!203019 (not b!2773416) (not b!2773408) (not start!268316) (not b!2773422) (not b!2773417) (not b!2773424) (not b!2773411) (not b!2773409) (not b_next!78985) (not b_next!78983) (not b!2773425) (not b_next!78981) (not mapNonEmpty!17281) (not b!2773418) b_and!203021)
(check-sat b_and!203019 b_and!203017 (not b_next!78987) (not b_next!78985) (not b_next!78983) b_and!203015 (not b_next!78981) b_and!203021)
