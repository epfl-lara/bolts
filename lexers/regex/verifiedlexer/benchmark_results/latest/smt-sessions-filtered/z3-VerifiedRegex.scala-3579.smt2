; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!206510 () Bool)

(assert start!206510)

(declare-fun b!2113159 () Bool)

(declare-fun b_free!61157 () Bool)

(declare-fun b_next!61861 () Bool)

(assert (=> b!2113159 (= b_free!61157 (not b_next!61861))))

(declare-fun tp!644192 () Bool)

(declare-fun b_and!170737 () Bool)

(assert (=> b!2113159 (= tp!644192 b_and!170737)))

(declare-fun b!2113162 () Bool)

(declare-fun b_free!61159 () Bool)

(declare-fun b_next!61863 () Bool)

(assert (=> b!2113162 (= b_free!61159 (not b_next!61863))))

(declare-fun tp!644209 () Bool)

(declare-fun b_and!170739 () Bool)

(assert (=> b!2113162 (= tp!644209 b_and!170739)))

(declare-fun b!2113169 () Bool)

(declare-fun b_free!61161 () Bool)

(declare-fun b_next!61865 () Bool)

(assert (=> b!2113169 (= b_free!61161 (not b_next!61865))))

(declare-fun tp!644201 () Bool)

(declare-fun b_and!170741 () Bool)

(assert (=> b!2113169 (= tp!644201 b_and!170741)))

(declare-fun b!2113181 () Bool)

(declare-fun b_free!61163 () Bool)

(declare-fun b_next!61867 () Bool)

(assert (=> b!2113181 (= b_free!61163 (not b_next!61867))))

(declare-fun tp!644197 () Bool)

(declare-fun b_and!170743 () Bool)

(assert (=> b!2113181 (= tp!644197 b_and!170743)))

(declare-fun b!2113164 () Bool)

(declare-fun b_free!61165 () Bool)

(declare-fun b_next!61869 () Bool)

(assert (=> b!2113164 (= b_free!61165 (not b_next!61869))))

(declare-fun tp!644184 () Bool)

(declare-fun b_and!170745 () Bool)

(assert (=> b!2113164 (= tp!644184 b_and!170745)))

(declare-fun b!2113161 () Bool)

(declare-fun b_free!61167 () Bool)

(declare-fun b_next!61871 () Bool)

(assert (=> b!2113161 (= b_free!61167 (not b_next!61871))))

(declare-fun tp!644210 () Bool)

(declare-fun b_and!170747 () Bool)

(assert (=> b!2113161 (= tp!644210 b_and!170747)))

(declare-fun b!2113155 () Bool)

(declare-fun e!1344475 () Bool)

(declare-fun e!1344500 () Bool)

(assert (=> b!2113155 (= e!1344475 e!1344500)))

(declare-fun b!2113156 () Bool)

(declare-fun e!1344485 () Bool)

(declare-fun e!1344476 () Bool)

(assert (=> b!2113156 (= e!1344485 e!1344476)))

(declare-fun b!2113157 () Bool)

(declare-fun e!1344489 () Bool)

(declare-datatypes ((C!11396 0))(
  ( (C!11397 (val!6684 Int)) )
))
(declare-datatypes ((List!23582 0))(
  ( (Nil!23498) (Cons!23498 (h!28899 C!11396) (t!196091 List!23582)) )
))
(declare-datatypes ((IArray!15539 0))(
  ( (IArray!15540 (innerList!7827 List!23582)) )
))
(declare-datatypes ((Conc!7767 0))(
  ( (Node!7767 (left!18234 Conc!7767) (right!18564 Conc!7767) (csize!15764 Int) (cheight!7978 Int)) (Leaf!11347 (xs!10709 IArray!15539) (csize!15765 Int)) (Empty!7767) )
))
(declare-datatypes ((BalanceConc!15296 0))(
  ( (BalanceConc!15297 (c!339186 Conc!7767)) )
))
(declare-fun input!6660 () BalanceConc!15296)

(declare-fun tp!644207 () Bool)

(declare-fun inv!31081 (Conc!7767) Bool)

(assert (=> b!2113157 (= e!1344489 (and (inv!31081 (c!339186 input!6660)) tp!644207))))

(declare-fun b!2113158 () Bool)

(declare-fun e!1344496 () Bool)

(declare-fun tp!644190 () Bool)

(declare-fun mapRes!11287 () Bool)

(assert (=> b!2113158 (= e!1344496 (and tp!644190 mapRes!11287))))

(declare-fun condMapEmpty!11287 () Bool)

(declare-datatypes ((Regex!5625 0))(
  ( (ElementMatch!5625 (c!339187 C!11396)) (Concat!9927 (regOne!11762 Regex!5625) (regTwo!11762 Regex!5625)) (EmptyExpr!5625) (Star!5625 (reg!5954 Regex!5625)) (EmptyLang!5625) (Union!5625 (regOne!11763 Regex!5625) (regTwo!11763 Regex!5625)) )
))
(declare-datatypes ((List!23583 0))(
  ( (Nil!23499) (Cons!23499 (h!28900 Regex!5625) (t!196092 List!23583)) )
))
(declare-datatypes ((Context!2390 0))(
  ( (Context!2391 (exprs!1695 List!23583)) )
))
(declare-datatypes ((tuple2!22932 0))(
  ( (tuple2!22933 (_1!13297 Context!2390) (_2!13297 C!11396)) )
))
(define-sort InoxSet (T) (Array T Bool))

(declare-datatypes ((tuple2!22934 0))(
  ( (tuple2!22935 (_1!13298 tuple2!22932) (_2!13298 (InoxSet Context!2390))) )
))
(declare-datatypes ((List!23584 0))(
  ( (Nil!23500) (Cons!23500 (h!28901 tuple2!22934) (t!196093 List!23584)) )
))
(declare-datatypes ((array!8105 0))(
  ( (array!8106 (arr!3594 (Array (_ BitVec 32) List!23584)) (size!18346 (_ BitVec 32))) )
))
(declare-datatypes ((Hashable!2262 0))(
  ( (HashableExt!2261 (__x!15220 Int)) )
))
(declare-datatypes ((array!8107 0))(
  ( (array!8108 (arr!3595 (Array (_ BitVec 32) (_ BitVec 64))) (size!18347 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!4696 0))(
  ( (LongMapFixedSize!4697 (defaultEntry!2713 Int) (mask!6476 (_ BitVec 32)) (extraKeys!2596 (_ BitVec 32)) (zeroValue!2606 List!23584) (minValue!2606 List!23584) (_size!4747 (_ BitVec 32)) (_keys!2645 array!8107) (_values!2628 array!8105) (_vacant!2409 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!9217 0))(
  ( (Cell!9218 (v!28023 LongMapFixedSize!4696)) )
))
(declare-datatypes ((MutLongMap!2348 0))(
  ( (LongMap!2348 (underlying!4891 Cell!9217)) (MutLongMapExt!2347 (__x!15221 Int)) )
))
(declare-datatypes ((Cell!9219 0))(
  ( (Cell!9220 (v!28024 MutLongMap!2348)) )
))
(declare-datatypes ((MutableMap!2262 0))(
  ( (MutableMapExt!2261 (__x!15222 Int)) (HashMap!2262 (underlying!4892 Cell!9219) (hashF!4185 Hashable!2262) (_size!4748 (_ BitVec 32)) (defaultValue!2424 Int)) )
))
(declare-datatypes ((CacheUp!1558 0))(
  ( (CacheUp!1559 (cache!2643 MutableMap!2262)) )
))
(declare-fun cacheUp!1110 () CacheUp!1558)

(declare-fun mapDefault!11287 () List!23584)

(assert (=> b!2113158 (= condMapEmpty!11287 (= (arr!3594 (_values!2628 (v!28023 (underlying!4891 (v!28024 (underlying!4892 (cache!2643 cacheUp!1110))))))) ((as const (Array (_ BitVec 32) List!23584)) mapDefault!11287)))))

(declare-fun e!1344486 () Bool)

(declare-fun e!1344493 () Bool)

(assert (=> b!2113159 (= e!1344486 (and e!1344493 tp!644192))))

(declare-fun mapIsEmpty!11287 () Bool)

(assert (=> mapIsEmpty!11287 mapRes!11287))

(declare-fun mapNonEmpty!11287 () Bool)

(declare-fun tp!644191 () Bool)

(declare-fun tp!644194 () Bool)

(assert (=> mapNonEmpty!11287 (= mapRes!11287 (and tp!644191 tp!644194))))

(declare-fun mapValue!11288 () List!23584)

(declare-fun mapRest!11287 () (Array (_ BitVec 32) List!23584))

(declare-fun mapKey!11289 () (_ BitVec 32))

(assert (=> mapNonEmpty!11287 (= (arr!3594 (_values!2628 (v!28023 (underlying!4891 (v!28024 (underlying!4892 (cache!2643 cacheUp!1110))))))) (store mapRest!11287 mapKey!11289 mapValue!11288))))

(declare-fun b!2113160 () Bool)

(declare-fun e!1344488 () Bool)

(declare-fun tp!644186 () Bool)

(declare-fun tp!644212 () Bool)

(assert (=> b!2113160 (= e!1344488 (and tp!644186 tp!644212))))

(declare-fun tp!644204 () Bool)

(declare-fun tp!644189 () Bool)

(declare-fun e!1344478 () Bool)

(declare-fun array_inv!2585 (array!8107) Bool)

(declare-fun array_inv!2586 (array!8105) Bool)

(assert (=> b!2113161 (= e!1344478 (and tp!644210 tp!644189 tp!644204 (array_inv!2585 (_keys!2645 (v!28023 (underlying!4891 (v!28024 (underlying!4892 (cache!2643 cacheUp!1110))))))) (array_inv!2586 (_values!2628 (v!28023 (underlying!4891 (v!28024 (underlying!4892 (cache!2643 cacheUp!1110))))))) e!1344496))))

(declare-fun e!1344494 () Bool)

(declare-fun e!1344492 () Bool)

(assert (=> b!2113162 (= e!1344494 (and e!1344492 tp!644209))))

(declare-fun b!2113163 () Bool)

(declare-fun e!1344481 () Bool)

(declare-fun e!1344498 () Bool)

(assert (=> b!2113163 (= e!1344481 e!1344498)))

(declare-fun e!1344473 () Bool)

(declare-fun e!1344499 () Bool)

(assert (=> b!2113164 (= e!1344473 (and e!1344499 tp!644184))))

(declare-fun b!2113165 () Bool)

(declare-fun e!1344497 () Bool)

(assert (=> b!2113165 (= e!1344497 false)))

(declare-fun lt!792820 () Regex!5625)

(declare-fun r!15373 () Regex!5625)

(declare-datatypes ((List!23585 0))(
  ( (Nil!23501) (Cons!23501 (h!28902 Context!2390) (t!196094 List!23585)) )
))
(declare-fun unfocusZipper!60 (List!23585) Regex!5625)

(declare-fun toList!1052 ((InoxSet Context!2390)) List!23585)

(declare-fun focus!267 (Regex!5625) (InoxSet Context!2390))

(assert (=> b!2113165 (= lt!792820 (unfocusZipper!60 (toList!1052 (focus!267 r!15373))))))

(declare-fun res!917398 () Bool)

(assert (=> start!206510 (=> (not res!917398) (not e!1344497))))

(declare-fun validRegex!2219 (Regex!5625) Bool)

(assert (=> start!206510 (= res!917398 (validRegex!2219 r!15373))))

(assert (=> start!206510 e!1344497))

(declare-datatypes ((tuple3!2734 0))(
  ( (tuple3!2735 (_1!13299 Regex!5625) (_2!13299 Context!2390) (_3!1831 C!11396)) )
))
(declare-datatypes ((tuple2!22936 0))(
  ( (tuple2!22937 (_1!13300 tuple3!2734) (_2!13300 (InoxSet Context!2390))) )
))
(declare-datatypes ((List!23586 0))(
  ( (Nil!23502) (Cons!23502 (h!28903 tuple2!22936) (t!196095 List!23586)) )
))
(declare-datatypes ((array!8109 0))(
  ( (array!8110 (arr!3596 (Array (_ BitVec 32) List!23586)) (size!18348 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!4698 0))(
  ( (LongMapFixedSize!4699 (defaultEntry!2714 Int) (mask!6477 (_ BitVec 32)) (extraKeys!2597 (_ BitVec 32)) (zeroValue!2607 List!23586) (minValue!2607 List!23586) (_size!4749 (_ BitVec 32)) (_keys!2646 array!8107) (_values!2629 array!8109) (_vacant!2410 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!9221 0))(
  ( (Cell!9222 (v!28025 LongMapFixedSize!4698)) )
))
(declare-datatypes ((MutLongMap!2349 0))(
  ( (LongMap!2349 (underlying!4893 Cell!9221)) (MutLongMapExt!2348 (__x!15223 Int)) )
))
(declare-datatypes ((Hashable!2263 0))(
  ( (HashableExt!2262 (__x!15224 Int)) )
))
(declare-datatypes ((Cell!9223 0))(
  ( (Cell!9224 (v!28026 MutLongMap!2349)) )
))
(declare-datatypes ((MutableMap!2263 0))(
  ( (MutableMapExt!2262 (__x!15225 Int)) (HashMap!2263 (underlying!4894 Cell!9223) (hashF!4186 Hashable!2263) (_size!4750 (_ BitVec 32)) (defaultValue!2425 Int)) )
))
(declare-datatypes ((CacheDown!1554 0))(
  ( (CacheDown!1555 (cache!2644 MutableMap!2263)) )
))
(declare-fun cacheDown!1229 () CacheDown!1554)

(declare-fun e!1344477 () Bool)

(declare-fun inv!31082 (CacheDown!1554) Bool)

(assert (=> start!206510 (and (inv!31082 cacheDown!1229) e!1344477)))

(assert (=> start!206510 e!1344488))

(declare-fun e!1344480 () Bool)

(declare-fun inv!31083 (CacheUp!1558) Bool)

(assert (=> start!206510 (and (inv!31083 cacheUp!1110) e!1344480)))

(declare-fun inv!31084 (BalanceConc!15296) Bool)

(assert (=> start!206510 (and (inv!31084 input!6660) e!1344489)))

(declare-fun totalInput!1306 () BalanceConc!15296)

(declare-fun e!1344490 () Bool)

(assert (=> start!206510 (and (inv!31084 totalInput!1306) e!1344490)))

(declare-datatypes ((Hashable!2264 0))(
  ( (HashableExt!2263 (__x!15226 Int)) )
))
(declare-datatypes ((tuple3!2736 0))(
  ( (tuple3!2737 (_1!13301 (InoxSet Context!2390)) (_2!13301 Int) (_3!1832 Int)) )
))
(declare-datatypes ((tuple2!22938 0))(
  ( (tuple2!22939 (_1!13302 tuple3!2736) (_2!13302 Int)) )
))
(declare-datatypes ((List!23587 0))(
  ( (Nil!23503) (Cons!23503 (h!28904 tuple2!22938) (t!196096 List!23587)) )
))
(declare-datatypes ((array!8111 0))(
  ( (array!8112 (arr!3597 (Array (_ BitVec 32) List!23587)) (size!18349 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!4700 0))(
  ( (LongMapFixedSize!4701 (defaultEntry!2715 Int) (mask!6478 (_ BitVec 32)) (extraKeys!2598 (_ BitVec 32)) (zeroValue!2608 List!23587) (minValue!2608 List!23587) (_size!4751 (_ BitVec 32)) (_keys!2647 array!8107) (_values!2630 array!8111) (_vacant!2411 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!9225 0))(
  ( (Cell!9226 (v!28027 LongMapFixedSize!4700)) )
))
(declare-datatypes ((MutLongMap!2350 0))(
  ( (LongMap!2350 (underlying!4895 Cell!9225)) (MutLongMapExt!2349 (__x!15227 Int)) )
))
(declare-datatypes ((Cell!9227 0))(
  ( (Cell!9228 (v!28028 MutLongMap!2350)) )
))
(declare-datatypes ((MutableMap!2264 0))(
  ( (MutableMapExt!2263 (__x!15228 Int)) (HashMap!2264 (underlying!4896 Cell!9227) (hashF!4187 Hashable!2264) (_size!4752 (_ BitVec 32)) (defaultValue!2426 Int)) )
))
(declare-datatypes ((CacheFurthestNullable!536 0))(
  ( (CacheFurthestNullable!537 (cache!2645 MutableMap!2264) (totalInput!2825 BalanceConc!15296)) )
))
(declare-fun cacheFurthestNullable!141 () CacheFurthestNullable!536)

(declare-fun e!1344484 () Bool)

(declare-fun inv!31085 (CacheFurthestNullable!536) Bool)

(assert (=> start!206510 (and (inv!31085 cacheFurthestNullable!141) e!1344484)))

(declare-fun b!2113166 () Bool)

(assert (=> b!2113166 (= e!1344480 e!1344486)))

(declare-fun b!2113167 () Bool)

(declare-fun e!1344483 () Bool)

(declare-fun tp!644203 () Bool)

(declare-fun mapRes!11289 () Bool)

(assert (=> b!2113167 (= e!1344483 (and tp!644203 mapRes!11289))))

(declare-fun condMapEmpty!11288 () Bool)

(declare-fun mapDefault!11289 () List!23587)

(assert (=> b!2113167 (= condMapEmpty!11288 (= (arr!3597 (_values!2630 (v!28027 (underlying!4895 (v!28028 (underlying!4896 (cache!2645 cacheFurthestNullable!141))))))) ((as const (Array (_ BitVec 32) List!23587)) mapDefault!11289)))))

(declare-fun b!2113168 () Bool)

(declare-fun tp!644199 () Bool)

(assert (=> b!2113168 (= e!1344490 (and (inv!31081 (c!339186 totalInput!1306)) tp!644199))))

(declare-fun e!1344482 () Bool)

(declare-fun e!1344491 () Bool)

(declare-fun tp!644193 () Bool)

(declare-fun tp!644195 () Bool)

(declare-fun array_inv!2587 (array!8109) Bool)

(assert (=> b!2113169 (= e!1344482 (and tp!644201 tp!644195 tp!644193 (array_inv!2585 (_keys!2646 (v!28025 (underlying!4893 (v!28026 (underlying!4894 (cache!2644 cacheDown!1229))))))) (array_inv!2587 (_values!2629 (v!28025 (underlying!4893 (v!28026 (underlying!4894 (cache!2644 cacheDown!1229))))))) e!1344491))))

(declare-fun b!2113170 () Bool)

(declare-fun tp!644211 () Bool)

(declare-fun tp!644205 () Bool)

(assert (=> b!2113170 (= e!1344488 (and tp!644211 tp!644205))))

(declare-fun b!2113171 () Bool)

(assert (=> b!2113171 (= e!1344500 e!1344482)))

(declare-fun mapIsEmpty!11288 () Bool)

(assert (=> mapIsEmpty!11288 mapRes!11289))

(declare-fun b!2113172 () Bool)

(declare-fun e!1344479 () Bool)

(assert (=> b!2113172 (= e!1344484 (and e!1344473 (inv!31084 (totalInput!2825 cacheFurthestNullable!141)) e!1344479))))

(declare-fun b!2113173 () Bool)

(declare-fun lt!792821 () MutLongMap!2348)

(get-info :version)

(assert (=> b!2113173 (= e!1344493 (and e!1344485 ((_ is LongMap!2348) lt!792821)))))

(assert (=> b!2113173 (= lt!792821 (v!28024 (underlying!4892 (cache!2643 cacheUp!1110))))))

(declare-fun b!2113174 () Bool)

(declare-fun e!1344474 () Bool)

(declare-fun lt!792819 () MutLongMap!2350)

(assert (=> b!2113174 (= e!1344499 (and e!1344474 ((_ is LongMap!2350) lt!792819)))))

(assert (=> b!2113174 (= lt!792819 (v!28028 (underlying!4896 (cache!2645 cacheFurthestNullable!141))))))

(declare-fun b!2113175 () Bool)

(declare-fun tp!644206 () Bool)

(declare-fun mapRes!11288 () Bool)

(assert (=> b!2113175 (= e!1344491 (and tp!644206 mapRes!11288))))

(declare-fun condMapEmpty!11289 () Bool)

(declare-fun mapDefault!11288 () List!23586)

(assert (=> b!2113175 (= condMapEmpty!11289 (= (arr!3596 (_values!2629 (v!28025 (underlying!4893 (v!28026 (underlying!4894 (cache!2644 cacheDown!1229))))))) ((as const (Array (_ BitVec 32) List!23586)) mapDefault!11288)))))

(declare-fun b!2113176 () Bool)

(declare-fun tp_is_empty!9439 () Bool)

(assert (=> b!2113176 (= e!1344488 tp_is_empty!9439)))

(declare-fun b!2113177 () Bool)

(declare-fun res!917396 () Bool)

(assert (=> b!2113177 (=> (not res!917396) (not e!1344497))))

(declare-fun valid!1852 (CacheFurthestNullable!536) Bool)

(assert (=> b!2113177 (= res!917396 (valid!1852 cacheFurthestNullable!141))))

(declare-fun b!2113178 () Bool)

(declare-fun res!917399 () Bool)

(assert (=> b!2113178 (=> (not res!917399) (not e!1344497))))

(assert (=> b!2113178 (= res!917399 (= (totalInput!2825 cacheFurthestNullable!141) totalInput!1306))))

(declare-fun b!2113179 () Bool)

(declare-fun res!917400 () Bool)

(assert (=> b!2113179 (=> (not res!917400) (not e!1344497))))

(declare-fun isSuffix!595 (List!23582 List!23582) Bool)

(declare-fun list!9493 (BalanceConc!15296) List!23582)

(assert (=> b!2113179 (= res!917400 (isSuffix!595 (list!9493 input!6660) (list!9493 totalInput!1306)))))

(declare-fun b!2113180 () Bool)

(declare-fun res!917401 () Bool)

(assert (=> b!2113180 (=> (not res!917401) (not e!1344497))))

(declare-fun valid!1853 (CacheUp!1558) Bool)

(assert (=> b!2113180 (= res!917401 (valid!1853 cacheUp!1110))))

(declare-fun tp!644188 () Bool)

(declare-fun tp!644208 () Bool)

(declare-fun array_inv!2588 (array!8111) Bool)

(assert (=> b!2113181 (= e!1344498 (and tp!644197 tp!644208 tp!644188 (array_inv!2585 (_keys!2647 (v!28027 (underlying!4895 (v!28028 (underlying!4896 (cache!2645 cacheFurthestNullable!141))))))) (array_inv!2588 (_values!2630 (v!28027 (underlying!4895 (v!28028 (underlying!4896 (cache!2645 cacheFurthestNullable!141))))))) e!1344483))))

(declare-fun b!2113182 () Bool)

(declare-fun lt!792818 () MutLongMap!2349)

(assert (=> b!2113182 (= e!1344492 (and e!1344475 ((_ is LongMap!2349) lt!792818)))))

(assert (=> b!2113182 (= lt!792818 (v!28026 (underlying!4894 (cache!2644 cacheDown!1229))))))

(declare-fun mapIsEmpty!11289 () Bool)

(assert (=> mapIsEmpty!11289 mapRes!11288))

(declare-fun b!2113183 () Bool)

(declare-fun tp!644200 () Bool)

(assert (=> b!2113183 (= e!1344479 (and (inv!31081 (c!339186 (totalInput!2825 cacheFurthestNullable!141))) tp!644200))))

(declare-fun b!2113184 () Bool)

(declare-fun res!917397 () Bool)

(assert (=> b!2113184 (=> (not res!917397) (not e!1344497))))

(declare-fun valid!1854 (CacheDown!1554) Bool)

(assert (=> b!2113184 (= res!917397 (valid!1854 cacheDown!1229))))

(declare-fun b!2113185 () Bool)

(assert (=> b!2113185 (= e!1344477 e!1344494)))

(declare-fun b!2113186 () Bool)

(assert (=> b!2113186 (= e!1344476 e!1344478)))

(declare-fun mapNonEmpty!11288 () Bool)

(declare-fun tp!644196 () Bool)

(declare-fun tp!644187 () Bool)

(assert (=> mapNonEmpty!11288 (= mapRes!11289 (and tp!644196 tp!644187))))

(declare-fun mapValue!11289 () List!23587)

(declare-fun mapKey!11288 () (_ BitVec 32))

(declare-fun mapRest!11288 () (Array (_ BitVec 32) List!23587))

(assert (=> mapNonEmpty!11288 (= (arr!3597 (_values!2630 (v!28027 (underlying!4895 (v!28028 (underlying!4896 (cache!2645 cacheFurthestNullable!141))))))) (store mapRest!11288 mapKey!11288 mapValue!11289))))

(declare-fun b!2113187 () Bool)

(assert (=> b!2113187 (= e!1344474 e!1344481)))

(declare-fun b!2113188 () Bool)

(declare-fun tp!644185 () Bool)

(assert (=> b!2113188 (= e!1344488 tp!644185)))

(declare-fun mapNonEmpty!11289 () Bool)

(declare-fun tp!644198 () Bool)

(declare-fun tp!644202 () Bool)

(assert (=> mapNonEmpty!11289 (= mapRes!11288 (and tp!644198 tp!644202))))

(declare-fun mapRest!11289 () (Array (_ BitVec 32) List!23586))

(declare-fun mapKey!11287 () (_ BitVec 32))

(declare-fun mapValue!11287 () List!23586)

(assert (=> mapNonEmpty!11289 (= (arr!3596 (_values!2629 (v!28025 (underlying!4893 (v!28026 (underlying!4894 (cache!2644 cacheDown!1229))))))) (store mapRest!11289 mapKey!11287 mapValue!11287))))

(assert (= (and start!206510 res!917398) b!2113180))

(assert (= (and b!2113180 res!917401) b!2113184))

(assert (= (and b!2113184 res!917397) b!2113177))

(assert (= (and b!2113177 res!917396) b!2113178))

(assert (= (and b!2113178 res!917399) b!2113179))

(assert (= (and b!2113179 res!917400) b!2113165))

(assert (= (and b!2113175 condMapEmpty!11289) mapIsEmpty!11289))

(assert (= (and b!2113175 (not condMapEmpty!11289)) mapNonEmpty!11289))

(assert (= b!2113169 b!2113175))

(assert (= b!2113171 b!2113169))

(assert (= b!2113155 b!2113171))

(assert (= (and b!2113182 ((_ is LongMap!2349) (v!28026 (underlying!4894 (cache!2644 cacheDown!1229))))) b!2113155))

(assert (= b!2113162 b!2113182))

(assert (= (and b!2113185 ((_ is HashMap!2263) (cache!2644 cacheDown!1229))) b!2113162))

(assert (= start!206510 b!2113185))

(assert (= (and start!206510 ((_ is ElementMatch!5625) r!15373)) b!2113176))

(assert (= (and start!206510 ((_ is Concat!9927) r!15373)) b!2113160))

(assert (= (and start!206510 ((_ is Star!5625) r!15373)) b!2113188))

(assert (= (and start!206510 ((_ is Union!5625) r!15373)) b!2113170))

(assert (= (and b!2113158 condMapEmpty!11287) mapIsEmpty!11287))

(assert (= (and b!2113158 (not condMapEmpty!11287)) mapNonEmpty!11287))

(assert (= b!2113161 b!2113158))

(assert (= b!2113186 b!2113161))

(assert (= b!2113156 b!2113186))

(assert (= (and b!2113173 ((_ is LongMap!2348) (v!28024 (underlying!4892 (cache!2643 cacheUp!1110))))) b!2113156))

(assert (= b!2113159 b!2113173))

(assert (= (and b!2113166 ((_ is HashMap!2262) (cache!2643 cacheUp!1110))) b!2113159))

(assert (= start!206510 b!2113166))

(assert (= start!206510 b!2113157))

(assert (= start!206510 b!2113168))

(assert (= (and b!2113167 condMapEmpty!11288) mapIsEmpty!11288))

(assert (= (and b!2113167 (not condMapEmpty!11288)) mapNonEmpty!11288))

(assert (= b!2113181 b!2113167))

(assert (= b!2113163 b!2113181))

(assert (= b!2113187 b!2113163))

(assert (= (and b!2113174 ((_ is LongMap!2350) (v!28028 (underlying!4896 (cache!2645 cacheFurthestNullable!141))))) b!2113187))

(assert (= b!2113164 b!2113174))

(assert (= (and b!2113172 ((_ is HashMap!2264) (cache!2645 cacheFurthestNullable!141))) b!2113164))

(assert (= b!2113172 b!2113183))

(assert (= start!206510 b!2113172))

(declare-fun m!2569415 () Bool)

(assert (=> b!2113180 m!2569415))

(declare-fun m!2569417 () Bool)

(assert (=> start!206510 m!2569417))

(declare-fun m!2569419 () Bool)

(assert (=> start!206510 m!2569419))

(declare-fun m!2569421 () Bool)

(assert (=> start!206510 m!2569421))

(declare-fun m!2569423 () Bool)

(assert (=> start!206510 m!2569423))

(declare-fun m!2569425 () Bool)

(assert (=> start!206510 m!2569425))

(declare-fun m!2569427 () Bool)

(assert (=> start!206510 m!2569427))

(declare-fun m!2569429 () Bool)

(assert (=> b!2113179 m!2569429))

(declare-fun m!2569431 () Bool)

(assert (=> b!2113179 m!2569431))

(assert (=> b!2113179 m!2569429))

(assert (=> b!2113179 m!2569431))

(declare-fun m!2569433 () Bool)

(assert (=> b!2113179 m!2569433))

(declare-fun m!2569435 () Bool)

(assert (=> b!2113172 m!2569435))

(declare-fun m!2569437 () Bool)

(assert (=> mapNonEmpty!11288 m!2569437))

(declare-fun m!2569439 () Bool)

(assert (=> b!2113181 m!2569439))

(declare-fun m!2569441 () Bool)

(assert (=> b!2113181 m!2569441))

(declare-fun m!2569443 () Bool)

(assert (=> b!2113169 m!2569443))

(declare-fun m!2569445 () Bool)

(assert (=> b!2113169 m!2569445))

(declare-fun m!2569447 () Bool)

(assert (=> b!2113184 m!2569447))

(declare-fun m!2569449 () Bool)

(assert (=> b!2113157 m!2569449))

(declare-fun m!2569451 () Bool)

(assert (=> mapNonEmpty!11289 m!2569451))

(declare-fun m!2569453 () Bool)

(assert (=> b!2113165 m!2569453))

(assert (=> b!2113165 m!2569453))

(declare-fun m!2569455 () Bool)

(assert (=> b!2113165 m!2569455))

(assert (=> b!2113165 m!2569455))

(declare-fun m!2569457 () Bool)

(assert (=> b!2113165 m!2569457))

(declare-fun m!2569459 () Bool)

(assert (=> b!2113168 m!2569459))

(declare-fun m!2569461 () Bool)

(assert (=> b!2113183 m!2569461))

(declare-fun m!2569463 () Bool)

(assert (=> mapNonEmpty!11287 m!2569463))

(declare-fun m!2569465 () Bool)

(assert (=> b!2113161 m!2569465))

(declare-fun m!2569467 () Bool)

(assert (=> b!2113161 m!2569467))

(declare-fun m!2569469 () Bool)

(assert (=> b!2113177 m!2569469))

(check-sat (not b_next!61867) (not mapNonEmpty!11288) (not b!2113177) (not b!2113179) (not b!2113175) (not b_next!61871) b_and!170745 b_and!170739 (not b!2113165) b_and!170741 (not b!2113172) (not b!2113158) (not b!2113168) (not b!2113160) (not b_next!61869) (not b!2113181) (not b_next!61863) b_and!170747 (not b_next!61865) b_and!170743 (not b!2113157) (not start!206510) (not b!2113188) (not b!2113169) (not mapNonEmpty!11287) (not mapNonEmpty!11289) (not b!2113170) (not b!2113184) (not b!2113161) (not b_next!61861) (not b!2113180) (not b!2113183) b_and!170737 (not b!2113167) tp_is_empty!9439)
(check-sat (not b_next!61867) (not b_next!61869) b_and!170743 (not b_next!61871) b_and!170745 b_and!170739 (not b_next!61861) b_and!170741 b_and!170737 (not b_next!61863) b_and!170747 (not b_next!61865))
