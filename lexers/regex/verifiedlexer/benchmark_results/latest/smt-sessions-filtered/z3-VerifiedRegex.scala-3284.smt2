; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!188756 () Bool)

(assert start!188756)

(declare-fun b!1885363 () Bool)

(declare-fun b_free!52421 () Bool)

(declare-fun b_next!53125 () Bool)

(assert (=> b!1885363 (= b_free!52421 (not b_next!53125))))

(declare-fun tp!537214 () Bool)

(declare-fun b_and!145211 () Bool)

(assert (=> b!1885363 (= tp!537214 b_and!145211)))

(declare-fun b!1885367 () Bool)

(declare-fun b_free!52423 () Bool)

(declare-fun b_next!53127 () Bool)

(assert (=> b!1885367 (= b_free!52423 (not b_next!53127))))

(declare-fun tp!537225 () Bool)

(declare-fun b_and!145213 () Bool)

(assert (=> b!1885367 (= tp!537225 b_and!145213)))

(declare-fun b!1885359 () Bool)

(declare-fun b_free!52425 () Bool)

(declare-fun b_next!53129 () Bool)

(assert (=> b!1885359 (= b_free!52425 (not b_next!53129))))

(declare-fun tp!537217 () Bool)

(declare-fun b_and!145215 () Bool)

(assert (=> b!1885359 (= tp!537217 b_and!145215)))

(declare-fun b!1885371 () Bool)

(declare-fun b_free!52427 () Bool)

(declare-fun b_next!53131 () Bool)

(assert (=> b!1885371 (= b_free!52427 (not b_next!53131))))

(declare-fun tp!537224 () Bool)

(declare-fun b_and!145217 () Bool)

(assert (=> b!1885371 (= tp!537224 b_and!145217)))

(declare-fun b!1885356 () Bool)

(declare-fun e!1202780 () Bool)

(declare-datatypes ((C!10432 0))(
  ( (C!10433 (val!6104 Int)) )
))
(declare-datatypes ((List!21051 0))(
  ( (Nil!20969) (Cons!20969 (h!26370 C!10432) (t!175050 List!21051)) )
))
(declare-datatypes ((IArray!13947 0))(
  ( (IArray!13948 (innerList!7031 List!21051)) )
))
(declare-datatypes ((Conc!6971 0))(
  ( (Node!6971 (left!16851 Conc!6971) (right!17181 Conc!6971) (csize!14172 Int) (cheight!7182 Int)) (Leaf!10256 (xs!9861 IArray!13947) (csize!14173 Int)) (Empty!6971) )
))
(declare-datatypes ((BalanceConc!13758 0))(
  ( (BalanceConc!13759 (c!308011 Conc!6971)) )
))
(declare-fun input!3724 () BalanceConc!13758)

(declare-fun tp!537213 () Bool)

(declare-fun inv!27935 (Conc!6971) Bool)

(assert (=> b!1885356 (= e!1202780 (and (inv!27935 (c!308011 input!3724)) tp!537213))))

(declare-fun b!1885357 () Bool)

(declare-fun e!1202786 () Bool)

(declare-fun e!1202775 () Bool)

(declare-datatypes ((Regex!5135 0))(
  ( (ElementMatch!5135 (c!308012 C!10432)) (Concat!8988 (regOne!10782 Regex!5135) (regTwo!10782 Regex!5135)) (EmptyExpr!5135) (Star!5135 (reg!5464 Regex!5135)) (EmptyLang!5135) (Union!5135 (regOne!10783 Regex!5135) (regTwo!10783 Regex!5135)) )
))
(declare-datatypes ((List!21052 0))(
  ( (Nil!20970) (Cons!20970 (h!26371 Regex!5135) (t!175051 List!21052)) )
))
(declare-datatypes ((Context!1978 0))(
  ( (Context!1979 (exprs!1489 List!21052)) )
))
(declare-datatypes ((tuple3!1990 0))(
  ( (tuple3!1991 (_1!11467 Regex!5135) (_2!11467 Context!1978) (_3!1459 C!10432)) )
))
(define-sort InoxSet (T) (Array T Bool))

(declare-datatypes ((tuple2!20016 0))(
  ( (tuple2!20017 (_1!11468 tuple3!1990) (_2!11468 (InoxSet Context!1978))) )
))
(declare-datatypes ((array!6764 0))(
  ( (array!6765 (arr!3003 (Array (_ BitVec 32) (_ BitVec 64))) (size!16656 (_ BitVec 32))) )
))
(declare-datatypes ((List!21053 0))(
  ( (Nil!20971) (Cons!20971 (h!26372 tuple2!20016) (t!175052 List!21053)) )
))
(declare-datatypes ((array!6766 0))(
  ( (array!6767 (arr!3004 (Array (_ BitVec 32) List!21053)) (size!16657 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!3922 0))(
  ( (LongMapFixedSize!3923 (defaultEntry!2326 Int) (mask!5794 (_ BitVec 32)) (extraKeys!2209 (_ BitVec 32)) (zeroValue!2219 List!21053) (minValue!2219 List!21053) (_size!3973 (_ BitVec 32)) (_keys!2258 array!6764) (_values!2241 array!6766) (_vacant!2022 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!7669 0))(
  ( (Cell!7670 (v!26239 LongMapFixedSize!3922)) )
))
(declare-datatypes ((MutLongMap!1961 0))(
  ( (LongMap!1961 (underlying!4115 Cell!7669)) (MutLongMapExt!1960 (__x!13186 Int)) )
))
(declare-fun lt!723336 () MutLongMap!1961)

(get-info :version)

(assert (=> b!1885357 (= e!1202786 (and e!1202775 ((_ is LongMap!1961) lt!723336)))))

(declare-datatypes ((Hashable!1875 0))(
  ( (HashableExt!1874 (__x!13187 Int)) )
))
(declare-datatypes ((Cell!7671 0))(
  ( (Cell!7672 (v!26240 MutLongMap!1961)) )
))
(declare-datatypes ((MutableMap!1875 0))(
  ( (MutableMapExt!1874 (__x!13188 Int)) (HashMap!1875 (underlying!4116 Cell!7671) (hashF!3798 Hashable!1875) (_size!3974 (_ BitVec 32)) (defaultValue!2037 Int)) )
))
(declare-datatypes ((CacheDown!1170 0))(
  ( (CacheDown!1171 (cache!2256 MutableMap!1875)) )
))
(declare-fun cacheDown!779 () CacheDown!1170)

(assert (=> b!1885357 (= lt!723336 (v!26240 (underlying!4116 (cache!2256 cacheDown!779))))))

(declare-fun b!1885358 () Bool)

(declare-fun e!1202788 () Bool)

(declare-fun tp!537215 () Bool)

(declare-fun mapRes!9082 () Bool)

(assert (=> b!1885358 (= e!1202788 (and tp!537215 mapRes!9082))))

(declare-fun condMapEmpty!9083 () Bool)

(declare-fun mapDefault!9083 () List!21053)

(assert (=> b!1885358 (= condMapEmpty!9083 (= (arr!3004 (_values!2241 (v!26239 (underlying!4115 (v!26240 (underlying!4116 (cache!2256 cacheDown!779))))))) ((as const (Array (_ BitVec 32) List!21053)) mapDefault!9083)))))

(declare-fun e!1202776 () Bool)

(assert (=> b!1885359 (= e!1202776 (and e!1202786 tp!537217))))

(declare-fun e!1202778 () Bool)

(declare-fun setNonEmpty!11680 () Bool)

(declare-fun setElem!11680 () Context!1978)

(declare-fun tp!537210 () Bool)

(declare-fun setRes!11680 () Bool)

(declare-fun inv!27936 (Context!1978) Bool)

(assert (=> setNonEmpty!11680 (= setRes!11680 (and tp!537210 (inv!27936 setElem!11680) e!1202778))))

(declare-fun z!580 () (InoxSet Context!1978))

(declare-fun setRest!11680 () (InoxSet Context!1978))

(assert (=> setNonEmpty!11680 (= z!580 ((_ map or) (store ((as const (Array Context!1978 Bool)) false) setElem!11680 true) setRest!11680))))

(declare-fun b!1885360 () Bool)

(declare-fun e!1202777 () Bool)

(declare-fun e!1202784 () Bool)

(assert (=> b!1885360 (= e!1202777 e!1202784)))

(declare-fun b!1885362 () Bool)

(declare-fun tp!537218 () Bool)

(assert (=> b!1885362 (= e!1202778 tp!537218)))

(declare-fun tp!537222 () Bool)

(declare-fun e!1202773 () Bool)

(declare-datatypes ((tuple2!20018 0))(
  ( (tuple2!20019 (_1!11469 Context!1978) (_2!11469 C!10432)) )
))
(declare-datatypes ((tuple2!20020 0))(
  ( (tuple2!20021 (_1!11470 tuple2!20018) (_2!11470 (InoxSet Context!1978))) )
))
(declare-datatypes ((List!21054 0))(
  ( (Nil!20972) (Cons!20972 (h!26373 tuple2!20020) (t!175053 List!21054)) )
))
(declare-datatypes ((array!6768 0))(
  ( (array!6769 (arr!3005 (Array (_ BitVec 32) List!21054)) (size!16658 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!3924 0))(
  ( (LongMapFixedSize!3925 (defaultEntry!2327 Int) (mask!5795 (_ BitVec 32)) (extraKeys!2210 (_ BitVec 32)) (zeroValue!2220 List!21054) (minValue!2220 List!21054) (_size!3975 (_ BitVec 32)) (_keys!2259 array!6764) (_values!2242 array!6768) (_vacant!2023 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!7673 0))(
  ( (Cell!7674 (v!26241 LongMapFixedSize!3924)) )
))
(declare-datatypes ((MutLongMap!1962 0))(
  ( (LongMap!1962 (underlying!4117 Cell!7673)) (MutLongMapExt!1961 (__x!13189 Int)) )
))
(declare-datatypes ((Cell!7675 0))(
  ( (Cell!7676 (v!26242 MutLongMap!1962)) )
))
(declare-datatypes ((Hashable!1876 0))(
  ( (HashableExt!1875 (__x!13190 Int)) )
))
(declare-datatypes ((MutableMap!1876 0))(
  ( (MutableMapExt!1875 (__x!13191 Int)) (HashMap!1876 (underlying!4118 Cell!7675) (hashF!3799 Hashable!1876) (_size!3976 (_ BitVec 32)) (defaultValue!2038 Int)) )
))
(declare-datatypes ((CacheUp!1174 0))(
  ( (CacheUp!1175 (cache!2257 MutableMap!1876)) )
))
(declare-fun cacheUp!766 () CacheUp!1174)

(declare-fun tp!537219 () Bool)

(declare-fun array_inv!2153 (array!6764) Bool)

(declare-fun array_inv!2154 (array!6768) Bool)

(assert (=> b!1885363 (= e!1202784 (and tp!537214 tp!537219 tp!537222 (array_inv!2153 (_keys!2259 (v!26241 (underlying!4117 (v!26242 (underlying!4118 (cache!2257 cacheUp!766))))))) (array_inv!2154 (_values!2242 (v!26241 (underlying!4117 (v!26242 (underlying!4118 (cache!2257 cacheUp!766))))))) e!1202773))))

(declare-fun mapIsEmpty!9082 () Bool)

(assert (=> mapIsEmpty!9082 mapRes!9082))

(declare-fun b!1885364 () Bool)

(declare-fun e!1202779 () Bool)

(declare-fun e!1202783 () Bool)

(declare-fun lt!723335 () MutLongMap!1962)

(assert (=> b!1885364 (= e!1202779 (and e!1202783 ((_ is LongMap!1962) lt!723335)))))

(assert (=> b!1885364 (= lt!723335 (v!26242 (underlying!4118 (cache!2257 cacheUp!766))))))

(declare-fun mapNonEmpty!9082 () Bool)

(declare-fun tp!537209 () Bool)

(declare-fun tp!537220 () Bool)

(assert (=> mapNonEmpty!9082 (= mapRes!9082 (and tp!537209 tp!537220))))

(declare-fun mapRest!9082 () (Array (_ BitVec 32) List!21053))

(declare-fun mapKey!9083 () (_ BitVec 32))

(declare-fun mapValue!9083 () List!21053)

(assert (=> mapNonEmpty!9082 (= (arr!3004 (_values!2241 (v!26239 (underlying!4115 (v!26240 (underlying!4116 (cache!2256 cacheDown!779))))))) (store mapRest!9082 mapKey!9083 mapValue!9083))))

(declare-fun b!1885365 () Bool)

(declare-fun tp!537211 () Bool)

(declare-fun mapRes!9083 () Bool)

(assert (=> b!1885365 (= e!1202773 (and tp!537211 mapRes!9083))))

(declare-fun condMapEmpty!9082 () Bool)

(declare-fun mapDefault!9082 () List!21054)

(assert (=> b!1885365 (= condMapEmpty!9082 (= (arr!3005 (_values!2242 (v!26241 (underlying!4117 (v!26242 (underlying!4118 (cache!2257 cacheUp!766))))))) ((as const (Array (_ BitVec 32) List!21054)) mapDefault!9082)))))

(declare-fun res!841632 () Bool)

(declare-fun e!1202789 () Bool)

(assert (=> start!188756 (=> (not res!841632) (not e!1202789))))

(declare-fun i!1815 () Int)

(assert (=> start!188756 (= res!841632 (>= i!1815 0))))

(assert (=> start!188756 e!1202789))

(assert (=> start!188756 true))

(declare-fun e!1202774 () Bool)

(declare-fun inv!27937 (CacheUp!1174) Bool)

(assert (=> start!188756 (and (inv!27937 cacheUp!766) e!1202774)))

(declare-fun e!1202772 () Bool)

(declare-fun inv!27938 (CacheDown!1170) Bool)

(assert (=> start!188756 (and (inv!27938 cacheDown!779) e!1202772)))

(declare-fun condSetEmpty!11680 () Bool)

(assert (=> start!188756 (= condSetEmpty!11680 (= z!580 ((as const (Array Context!1978 Bool)) false)))))

(assert (=> start!188756 setRes!11680))

(declare-fun inv!27939 (BalanceConc!13758) Bool)

(assert (=> start!188756 (and (inv!27939 input!3724) e!1202780)))

(declare-fun b!1885361 () Bool)

(declare-fun e!1202781 () Bool)

(assert (=> b!1885361 (= e!1202774 e!1202781)))

(declare-fun setIsEmpty!11680 () Bool)

(assert (=> setIsEmpty!11680 setRes!11680))

(declare-fun b!1885366 () Bool)

(declare-fun e!1202782 () Bool)

(declare-fun e!1202770 () Bool)

(assert (=> b!1885366 (= e!1202782 e!1202770)))

(declare-fun tp!537212 () Bool)

(declare-fun tp!537221 () Bool)

(declare-fun array_inv!2155 (array!6766) Bool)

(assert (=> b!1885367 (= e!1202770 (and tp!537225 tp!537212 tp!537221 (array_inv!2153 (_keys!2258 (v!26239 (underlying!4115 (v!26240 (underlying!4116 (cache!2256 cacheDown!779))))))) (array_inv!2155 (_values!2241 (v!26239 (underlying!4115 (v!26240 (underlying!4116 (cache!2256 cacheDown!779))))))) e!1202788))))

(declare-fun mapNonEmpty!9083 () Bool)

(declare-fun tp!537216 () Bool)

(declare-fun tp!537223 () Bool)

(assert (=> mapNonEmpty!9083 (= mapRes!9083 (and tp!537216 tp!537223))))

(declare-fun mapKey!9082 () (_ BitVec 32))

(declare-fun mapValue!9082 () List!21054)

(declare-fun mapRest!9083 () (Array (_ BitVec 32) List!21054))

(assert (=> mapNonEmpty!9083 (= (arr!3005 (_values!2242 (v!26241 (underlying!4117 (v!26242 (underlying!4118 (cache!2257 cacheUp!766))))))) (store mapRest!9083 mapKey!9082 mapValue!9082))))

(declare-fun b!1885368 () Bool)

(assert (=> b!1885368 (= e!1202783 e!1202777)))

(declare-fun b!1885369 () Bool)

(assert (=> b!1885369 (= e!1202775 e!1202782)))

(declare-fun b!1885370 () Bool)

(declare-fun e!1202785 () Bool)

(assert (=> b!1885370 (= e!1202789 e!1202785)))

(declare-fun res!841631 () Bool)

(assert (=> b!1885370 (=> (not res!841631) (not e!1202785))))

(declare-fun lt!723334 () Int)

(assert (=> b!1885370 (= res!841631 (and (<= i!1815 lt!723334) (not (= i!1815 lt!723334))))))

(declare-fun size!16659 (BalanceConc!13758) Int)

(assert (=> b!1885370 (= lt!723334 (size!16659 input!3724))))

(assert (=> b!1885371 (= e!1202781 (and e!1202779 tp!537224))))

(declare-fun b!1885372 () Bool)

(assert (=> b!1885372 (= e!1202772 e!1202776)))

(declare-fun b!1885373 () Bool)

(assert (=> b!1885373 (= e!1202785 false)))

(declare-datatypes ((tuple3!1992 0))(
  ( (tuple3!1993 (_1!11471 Bool) (_2!11471 CacheUp!1174) (_3!1460 CacheDown!1170)) )
))
(declare-fun lt!723333 () tuple3!1992)

(declare-datatypes ((tuple3!1994 0))(
  ( (tuple3!1995 (_1!11472 (InoxSet Context!1978)) (_2!11472 CacheUp!1174) (_3!1461 CacheDown!1170)) )
))
(declare-fun lt!723337 () tuple3!1994)

(declare-fun matchZipperSequenceMem!5 ((InoxSet Context!1978) BalanceConc!13758 Int CacheUp!1174 CacheDown!1170) tuple3!1992)

(assert (=> b!1885373 (= lt!723333 (matchZipperSequenceMem!5 (_1!11472 lt!723337) input!3724 (+ 1 i!1815) (_2!11472 lt!723337) (_3!1461 lt!723337)))))

(declare-fun derivationStepZipperMem!9 ((InoxSet Context!1978) C!10432 CacheUp!1174 CacheDown!1170) tuple3!1994)

(declare-fun apply!5543 (BalanceConc!13758 Int) C!10432)

(assert (=> b!1885373 (= lt!723337 (derivationStepZipperMem!9 z!580 (apply!5543 input!3724 i!1815) cacheUp!766 cacheDown!779))))

(declare-fun mapIsEmpty!9083 () Bool)

(assert (=> mapIsEmpty!9083 mapRes!9083))

(assert (= (and start!188756 res!841632) b!1885370))

(assert (= (and b!1885370 res!841631) b!1885373))

(assert (= (and b!1885365 condMapEmpty!9082) mapIsEmpty!9083))

(assert (= (and b!1885365 (not condMapEmpty!9082)) mapNonEmpty!9083))

(assert (= b!1885363 b!1885365))

(assert (= b!1885360 b!1885363))

(assert (= b!1885368 b!1885360))

(assert (= (and b!1885364 ((_ is LongMap!1962) (v!26242 (underlying!4118 (cache!2257 cacheUp!766))))) b!1885368))

(assert (= b!1885371 b!1885364))

(assert (= (and b!1885361 ((_ is HashMap!1876) (cache!2257 cacheUp!766))) b!1885371))

(assert (= start!188756 b!1885361))

(assert (= (and b!1885358 condMapEmpty!9083) mapIsEmpty!9082))

(assert (= (and b!1885358 (not condMapEmpty!9083)) mapNonEmpty!9082))

(assert (= b!1885367 b!1885358))

(assert (= b!1885366 b!1885367))

(assert (= b!1885369 b!1885366))

(assert (= (and b!1885357 ((_ is LongMap!1961) (v!26240 (underlying!4116 (cache!2256 cacheDown!779))))) b!1885369))

(assert (= b!1885359 b!1885357))

(assert (= (and b!1885372 ((_ is HashMap!1875) (cache!2256 cacheDown!779))) b!1885359))

(assert (= start!188756 b!1885372))

(assert (= (and start!188756 condSetEmpty!11680) setIsEmpty!11680))

(assert (= (and start!188756 (not condSetEmpty!11680)) setNonEmpty!11680))

(assert (= setNonEmpty!11680 b!1885362))

(assert (= start!188756 b!1885356))

(declare-fun m!2318347 () Bool)

(assert (=> b!1885356 m!2318347))

(declare-fun m!2318349 () Bool)

(assert (=> setNonEmpty!11680 m!2318349))

(declare-fun m!2318351 () Bool)

(assert (=> b!1885370 m!2318351))

(declare-fun m!2318353 () Bool)

(assert (=> b!1885373 m!2318353))

(declare-fun m!2318355 () Bool)

(assert (=> b!1885373 m!2318355))

(assert (=> b!1885373 m!2318355))

(declare-fun m!2318357 () Bool)

(assert (=> b!1885373 m!2318357))

(declare-fun m!2318359 () Bool)

(assert (=> start!188756 m!2318359))

(declare-fun m!2318361 () Bool)

(assert (=> start!188756 m!2318361))

(declare-fun m!2318363 () Bool)

(assert (=> start!188756 m!2318363))

(declare-fun m!2318365 () Bool)

(assert (=> b!1885363 m!2318365))

(declare-fun m!2318367 () Bool)

(assert (=> b!1885363 m!2318367))

(declare-fun m!2318369 () Bool)

(assert (=> mapNonEmpty!9082 m!2318369))

(declare-fun m!2318371 () Bool)

(assert (=> b!1885367 m!2318371))

(declare-fun m!2318373 () Bool)

(assert (=> b!1885367 m!2318373))

(declare-fun m!2318375 () Bool)

(assert (=> mapNonEmpty!9083 m!2318375))

(check-sat (not b!1885370) (not start!188756) (not b!1885358) (not b_next!53129) (not b_next!53131) (not b!1885365) (not setNonEmpty!11680) (not mapNonEmpty!9083) (not b!1885373) (not mapNonEmpty!9082) (not b!1885363) (not b_next!53125) (not b!1885362) b_and!145215 (not b!1885367) (not b!1885356) (not b_next!53127) b_and!145217 b_and!145211 b_and!145213)
(check-sat (not b_next!53125) b_and!145215 (not b_next!53129) (not b_next!53131) (not b_next!53127) b_and!145217 b_and!145211 b_and!145213)
