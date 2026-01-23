; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!206674 () Bool)

(assert start!206674)

(declare-fun b!2116499 () Bool)

(declare-fun b_free!61373 () Bool)

(declare-fun b_next!62077 () Bool)

(assert (=> b!2116499 (= b_free!61373 (not b_next!62077))))

(declare-fun tp!646162 () Bool)

(declare-fun b_and!170953 () Bool)

(assert (=> b!2116499 (= tp!646162 b_and!170953)))

(declare-fun b!2116491 () Bool)

(declare-fun b_free!61375 () Bool)

(declare-fun b_next!62079 () Bool)

(assert (=> b!2116491 (= b_free!61375 (not b_next!62079))))

(declare-fun tp!646180 () Bool)

(declare-fun b_and!170955 () Bool)

(assert (=> b!2116491 (= tp!646180 b_and!170955)))

(declare-fun b!2116508 () Bool)

(declare-fun b_free!61377 () Bool)

(declare-fun b_next!62081 () Bool)

(assert (=> b!2116508 (= b_free!61377 (not b_next!62081))))

(declare-fun tp!646182 () Bool)

(declare-fun b_and!170957 () Bool)

(assert (=> b!2116508 (= tp!646182 b_and!170957)))

(declare-fun b!2116517 () Bool)

(declare-fun b_free!61379 () Bool)

(declare-fun b_next!62083 () Bool)

(assert (=> b!2116517 (= b_free!61379 (not b_next!62083))))

(declare-fun tp!646172 () Bool)

(declare-fun b_and!170959 () Bool)

(assert (=> b!2116517 (= tp!646172 b_and!170959)))

(declare-fun b!2116504 () Bool)

(declare-fun b_free!61381 () Bool)

(declare-fun b_next!62085 () Bool)

(assert (=> b!2116504 (= b_free!61381 (not b_next!62085))))

(declare-fun tp!646171 () Bool)

(declare-fun b_and!170961 () Bool)

(assert (=> b!2116504 (= tp!646171 b_and!170961)))

(declare-fun b!2116514 () Bool)

(declare-fun b_free!61383 () Bool)

(declare-fun b_next!62087 () Bool)

(assert (=> b!2116514 (= b_free!61383 (not b_next!62087))))

(declare-fun tp!646169 () Bool)

(declare-fun b_and!170963 () Bool)

(assert (=> b!2116514 (= tp!646169 b_and!170963)))

(declare-datatypes ((C!11432 0))(
  ( (C!11433 (val!6702 Int)) )
))
(declare-datatypes ((Regex!5643 0))(
  ( (ElementMatch!5643 (c!339359 C!11432)) (Concat!9945 (regOne!11798 Regex!5643) (regTwo!11798 Regex!5643)) (EmptyExpr!5643) (Star!5643 (reg!5972 Regex!5643)) (EmptyLang!5643) (Union!5643 (regOne!11799 Regex!5643) (regTwo!11799 Regex!5643)) )
))
(declare-datatypes ((List!23669 0))(
  ( (Nil!23585) (Cons!23585 (h!28986 Regex!5643) (t!196178 List!23669)) )
))
(declare-datatypes ((Context!2426 0))(
  ( (Context!2427 (exprs!1713 List!23669)) )
))
(declare-datatypes ((tuple2!23114 0))(
  ( (tuple2!23115 (_1!13428 Context!2426) (_2!13428 C!11432)) )
))
(define-sort InoxSet (T) (Array T Bool))

(declare-datatypes ((tuple2!23116 0))(
  ( (tuple2!23117 (_1!13429 tuple2!23114) (_2!13429 (InoxSet Context!2426))) )
))
(declare-datatypes ((List!23670 0))(
  ( (Nil!23586) (Cons!23586 (h!28987 tuple2!23116) (t!196179 List!23670)) )
))
(declare-datatypes ((array!8235 0))(
  ( (array!8236 (arr!3655 (Array (_ BitVec 32) List!23670)) (size!18420 (_ BitVec 32))) )
))
(declare-datatypes ((Hashable!2305 0))(
  ( (HashableExt!2304 (__x!15349 Int)) )
))
(declare-datatypes ((array!8237 0))(
  ( (array!8238 (arr!3656 (Array (_ BitVec 32) (_ BitVec 64))) (size!18421 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!4782 0))(
  ( (LongMapFixedSize!4783 (defaultEntry!2756 Int) (mask!6528 (_ BitVec 32)) (extraKeys!2639 (_ BitVec 32)) (zeroValue!2649 List!23670) (minValue!2649 List!23670) (_size!4833 (_ BitVec 32)) (_keys!2688 array!8237) (_values!2671 array!8235) (_vacant!2452 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!9389 0))(
  ( (Cell!9390 (v!28111 LongMapFixedSize!4782)) )
))
(declare-datatypes ((MutLongMap!2391 0))(
  ( (LongMap!2391 (underlying!4977 Cell!9389)) (MutLongMapExt!2390 (__x!15350 Int)) )
))
(declare-datatypes ((Cell!9391 0))(
  ( (Cell!9392 (v!28112 MutLongMap!2391)) )
))
(declare-datatypes ((MutableMap!2305 0))(
  ( (MutableMapExt!2304 (__x!15351 Int)) (HashMap!2305 (underlying!4978 Cell!9391) (hashF!4228 Hashable!2305) (_size!4834 (_ BitVec 32)) (defaultValue!2467 Int)) )
))
(declare-datatypes ((CacheUp!1594 0))(
  ( (CacheUp!1595 (cache!2686 MutableMap!2305)) )
))
(declare-fun cacheUp!1110 () CacheUp!1594)

(declare-fun e!1347193 () Bool)

(declare-fun e!1347208 () Bool)

(declare-fun tp!646177 () Bool)

(declare-fun tp!646159 () Bool)

(declare-fun array_inv!2623 (array!8237) Bool)

(declare-fun array_inv!2624 (array!8235) Bool)

(assert (=> b!2116491 (= e!1347208 (and tp!646180 tp!646159 tp!646177 (array_inv!2623 (_keys!2688 (v!28111 (underlying!4977 (v!28112 (underlying!4978 (cache!2686 cacheUp!1110))))))) (array_inv!2624 (_values!2671 (v!28111 (underlying!4977 (v!28112 (underlying!4978 (cache!2686 cacheUp!1110))))))) e!1347193))))

(declare-fun b!2116492 () Bool)

(declare-fun e!1347214 () Bool)

(declare-fun e!1347212 () Bool)

(assert (=> b!2116492 (= e!1347214 e!1347212)))

(declare-fun b!2116493 () Bool)

(declare-fun e!1347209 () Bool)

(declare-fun tp_is_empty!9475 () Bool)

(assert (=> b!2116493 (= e!1347209 tp_is_empty!9475)))

(declare-fun b!2116494 () Bool)

(declare-fun res!918086 () Bool)

(declare-fun e!1347211 () Bool)

(assert (=> b!2116494 (=> (not res!918086) (not e!1347211))))

(declare-datatypes ((List!23671 0))(
  ( (Nil!23587) (Cons!23587 (h!28988 C!11432) (t!196180 List!23671)) )
))
(declare-datatypes ((IArray!15569 0))(
  ( (IArray!15570 (innerList!7842 List!23671)) )
))
(declare-datatypes ((Conc!7782 0))(
  ( (Node!7782 (left!18274 Conc!7782) (right!18604 Conc!7782) (csize!15794 Int) (cheight!7993 Int)) (Leaf!11371 (xs!10724 IArray!15569) (csize!15795 Int)) (Empty!7782) )
))
(declare-datatypes ((BalanceConc!15326 0))(
  ( (BalanceConc!15327 (c!339360 Conc!7782)) )
))
(declare-fun input!6660 () BalanceConc!15326)

(declare-fun totalInput!1306 () BalanceConc!15326)

(declare-fun isSuffix!604 (List!23671 List!23671) Bool)

(declare-fun list!9505 (BalanceConc!15326) List!23671)

(assert (=> b!2116494 (= res!918086 (isSuffix!604 (list!9505 input!6660) (list!9505 totalInput!1306)))))

(declare-fun b!2116495 () Bool)

(declare-fun e!1347198 () Bool)

(declare-fun tp!646181 () Bool)

(declare-fun inv!31163 (Conc!7782) Bool)

(assert (=> b!2116495 (= e!1347198 (and (inv!31163 (c!339360 totalInput!1306)) tp!646181))))

(declare-fun b!2116496 () Bool)

(declare-fun e!1347213 () Bool)

(declare-fun e!1347201 () Bool)

(assert (=> b!2116496 (= e!1347213 e!1347201)))

(declare-fun b!2116497 () Bool)

(declare-fun res!918084 () Bool)

(assert (=> b!2116497 (=> (not res!918084) (not e!1347211))))

(declare-datatypes ((Hashable!2306 0))(
  ( (HashableExt!2305 (__x!15352 Int)) )
))
(declare-datatypes ((tuple3!2804 0))(
  ( (tuple3!2805 (_1!13430 (InoxSet Context!2426)) (_2!13430 Int) (_3!1871 Int)) )
))
(declare-datatypes ((tuple2!23118 0))(
  ( (tuple2!23119 (_1!13431 tuple3!2804) (_2!13431 Int)) )
))
(declare-datatypes ((List!23672 0))(
  ( (Nil!23588) (Cons!23588 (h!28989 tuple2!23118) (t!196181 List!23672)) )
))
(declare-datatypes ((array!8239 0))(
  ( (array!8240 (arr!3657 (Array (_ BitVec 32) List!23672)) (size!18422 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!4784 0))(
  ( (LongMapFixedSize!4785 (defaultEntry!2757 Int) (mask!6529 (_ BitVec 32)) (extraKeys!2640 (_ BitVec 32)) (zeroValue!2650 List!23672) (minValue!2650 List!23672) (_size!4835 (_ BitVec 32)) (_keys!2689 array!8237) (_values!2672 array!8239) (_vacant!2453 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!9393 0))(
  ( (Cell!9394 (v!28113 LongMapFixedSize!4784)) )
))
(declare-datatypes ((MutLongMap!2392 0))(
  ( (LongMap!2392 (underlying!4979 Cell!9393)) (MutLongMapExt!2391 (__x!15353 Int)) )
))
(declare-datatypes ((Cell!9395 0))(
  ( (Cell!9396 (v!28114 MutLongMap!2392)) )
))
(declare-datatypes ((MutableMap!2306 0))(
  ( (MutableMapExt!2305 (__x!15354 Int)) (HashMap!2306 (underlying!4980 Cell!9395) (hashF!4229 Hashable!2306) (_size!4836 (_ BitVec 32)) (defaultValue!2468 Int)) )
))
(declare-datatypes ((CacheFurthestNullable!558 0))(
  ( (CacheFurthestNullable!559 (cache!2687 MutableMap!2306) (totalInput!2860 BalanceConc!15326)) )
))
(declare-fun cacheFurthestNullable!141 () CacheFurthestNullable!558)

(declare-fun valid!1882 (CacheFurthestNullable!558) Bool)

(assert (=> b!2116497 (= res!918084 (valid!1882 cacheFurthestNullable!141))))

(declare-fun b!2116498 () Bool)

(declare-fun e!1347204 () Bool)

(declare-fun tp!646160 () Bool)

(declare-fun mapRes!11537 () Bool)

(assert (=> b!2116498 (= e!1347204 (and tp!646160 mapRes!11537))))

(declare-fun condMapEmpty!11536 () Bool)

(declare-fun mapDefault!11535 () List!23672)

(assert (=> b!2116498 (= condMapEmpty!11536 (= (arr!3657 (_values!2672 (v!28113 (underlying!4979 (v!28114 (underlying!4980 (cache!2687 cacheFurthestNullable!141))))))) ((as const (Array (_ BitVec 32) List!23672)) mapDefault!11535)))))

(declare-fun tp!646163 () Bool)

(declare-fun e!1347196 () Bool)

(declare-fun tp!646168 () Bool)

(declare-fun array_inv!2625 (array!8239) Bool)

(assert (=> b!2116499 (= e!1347196 (and tp!646162 tp!646168 tp!646163 (array_inv!2623 (_keys!2689 (v!28113 (underlying!4979 (v!28114 (underlying!4980 (cache!2687 cacheFurthestNullable!141))))))) (array_inv!2625 (_values!2672 (v!28113 (underlying!4979 (v!28114 (underlying!4980 (cache!2687 cacheFurthestNullable!141))))))) e!1347204))))

(declare-fun mapNonEmpty!11535 () Bool)

(declare-fun mapRes!11535 () Bool)

(declare-fun tp!646178 () Bool)

(declare-fun tp!646161 () Bool)

(assert (=> mapNonEmpty!11535 (= mapRes!11535 (and tp!646178 tp!646161))))

(declare-fun mapKey!11535 () (_ BitVec 32))

(declare-fun mapRest!11537 () (Array (_ BitVec 32) List!23670))

(declare-fun mapValue!11535 () List!23670)

(assert (=> mapNonEmpty!11535 (= (arr!3655 (_values!2671 (v!28111 (underlying!4977 (v!28112 (underlying!4978 (cache!2686 cacheUp!1110))))))) (store mapRest!11537 mapKey!11535 mapValue!11535))))

(declare-fun b!2116500 () Bool)

(declare-fun tp!646183 () Bool)

(assert (=> b!2116500 (= e!1347193 (and tp!646183 mapRes!11535))))

(declare-fun condMapEmpty!11537 () Bool)

(declare-fun mapDefault!11537 () List!23670)

(assert (=> b!2116500 (= condMapEmpty!11537 (= (arr!3655 (_values!2671 (v!28111 (underlying!4977 (v!28112 (underlying!4978 (cache!2686 cacheUp!1110))))))) ((as const (Array (_ BitVec 32) List!23670)) mapDefault!11537)))))

(declare-fun b!2116501 () Bool)

(declare-fun tp!646164 () Bool)

(declare-fun tp!646166 () Bool)

(assert (=> b!2116501 (= e!1347209 (and tp!646164 tp!646166))))

(declare-fun b!2116502 () Bool)

(declare-fun e!1347202 () Bool)

(assert (=> b!2116502 (= e!1347202 e!1347214)))

(declare-fun b!2116503 () Bool)

(declare-fun e!1347187 () Bool)

(assert (=> b!2116503 (= e!1347187 e!1347196)))

(declare-fun e!1347195 () Bool)

(declare-fun e!1347203 () Bool)

(assert (=> b!2116504 (= e!1347195 (and e!1347203 tp!646171))))

(declare-fun res!918087 () Bool)

(assert (=> start!206674 (=> (not res!918087) (not e!1347211))))

(declare-fun r!15373 () Regex!5643)

(declare-fun validRegex!2228 (Regex!5643) Bool)

(assert (=> start!206674 (= res!918087 (validRegex!2228 r!15373))))

(assert (=> start!206674 e!1347211))

(declare-datatypes ((tuple3!2806 0))(
  ( (tuple3!2807 (_1!13432 Regex!5643) (_2!13432 Context!2426) (_3!1872 C!11432)) )
))
(declare-datatypes ((tuple2!23120 0))(
  ( (tuple2!23121 (_1!13433 tuple3!2806) (_2!13433 (InoxSet Context!2426))) )
))
(declare-datatypes ((List!23673 0))(
  ( (Nil!23589) (Cons!23589 (h!28990 tuple2!23120) (t!196182 List!23673)) )
))
(declare-datatypes ((array!8241 0))(
  ( (array!8242 (arr!3658 (Array (_ BitVec 32) List!23673)) (size!18423 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!4786 0))(
  ( (LongMapFixedSize!4787 (defaultEntry!2758 Int) (mask!6530 (_ BitVec 32)) (extraKeys!2641 (_ BitVec 32)) (zeroValue!2651 List!23673) (minValue!2651 List!23673) (_size!4837 (_ BitVec 32)) (_keys!2690 array!8237) (_values!2673 array!8241) (_vacant!2454 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!9397 0))(
  ( (Cell!9398 (v!28115 LongMapFixedSize!4786)) )
))
(declare-datatypes ((MutLongMap!2393 0))(
  ( (LongMap!2393 (underlying!4981 Cell!9397)) (MutLongMapExt!2392 (__x!15355 Int)) )
))
(declare-datatypes ((Hashable!2307 0))(
  ( (HashableExt!2306 (__x!15356 Int)) )
))
(declare-datatypes ((Cell!9399 0))(
  ( (Cell!9400 (v!28116 MutLongMap!2393)) )
))
(declare-datatypes ((MutableMap!2307 0))(
  ( (MutableMapExt!2306 (__x!15357 Int)) (HashMap!2307 (underlying!4982 Cell!9399) (hashF!4230 Hashable!2307) (_size!4838 (_ BitVec 32)) (defaultValue!2469 Int)) )
))
(declare-datatypes ((CacheDown!1582 0))(
  ( (CacheDown!1583 (cache!2688 MutableMap!2307)) )
))
(declare-fun cacheDown!1229 () CacheDown!1582)

(declare-fun e!1347186 () Bool)

(declare-fun inv!31164 (CacheDown!1582) Bool)

(assert (=> start!206674 (and (inv!31164 cacheDown!1229) e!1347186)))

(assert (=> start!206674 e!1347209))

(declare-fun e!1347194 () Bool)

(declare-fun inv!31165 (CacheUp!1594) Bool)

(assert (=> start!206674 (and (inv!31165 cacheUp!1110) e!1347194)))

(declare-fun e!1347206 () Bool)

(declare-fun inv!31166 (BalanceConc!15326) Bool)

(assert (=> start!206674 (and (inv!31166 input!6660) e!1347206)))

(assert (=> start!206674 (and (inv!31166 totalInput!1306) e!1347198)))

(declare-fun e!1347190 () Bool)

(declare-fun inv!31167 (CacheFurthestNullable!558) Bool)

(assert (=> start!206674 (and (inv!31167 cacheFurthestNullable!141) e!1347190)))

(declare-fun b!2116505 () Bool)

(declare-fun tp!646175 () Bool)

(assert (=> b!2116505 (= e!1347209 tp!646175)))

(declare-fun b!2116506 () Bool)

(declare-fun e!1347199 () Bool)

(declare-fun tp!646158 () Bool)

(assert (=> b!2116506 (= e!1347199 (and (inv!31163 (c!339360 (totalInput!2860 cacheFurthestNullable!141))) tp!646158))))

(declare-fun b!2116507 () Bool)

(declare-fun tp!646157 () Bool)

(assert (=> b!2116507 (= e!1347206 (and (inv!31163 (c!339360 input!6660)) tp!646157))))

(declare-fun e!1347210 () Bool)

(declare-fun e!1347189 () Bool)

(assert (=> b!2116508 (= e!1347210 (and e!1347189 tp!646182))))

(declare-fun mapNonEmpty!11536 () Bool)

(declare-fun mapRes!11536 () Bool)

(declare-fun tp!646165 () Bool)

(declare-fun tp!646173 () Bool)

(assert (=> mapNonEmpty!11536 (= mapRes!11536 (and tp!646165 tp!646173))))

(declare-fun mapKey!11537 () (_ BitVec 32))

(declare-fun mapValue!11537 () List!23673)

(declare-fun mapRest!11536 () (Array (_ BitVec 32) List!23673))

(assert (=> mapNonEmpty!11536 (= (arr!3658 (_values!2673 (v!28115 (underlying!4981 (v!28116 (underlying!4982 (cache!2688 cacheDown!1229))))))) (store mapRest!11536 mapKey!11537 mapValue!11537))))

(declare-fun b!2116509 () Bool)

(declare-fun res!918083 () Bool)

(assert (=> b!2116509 (=> (not res!918083) (not e!1347211))))

(declare-fun valid!1883 (CacheDown!1582) Bool)

(assert (=> b!2116509 (= res!918083 (valid!1883 cacheDown!1229))))

(declare-fun mapIsEmpty!11535 () Bool)

(assert (=> mapIsEmpty!11535 mapRes!11536))

(declare-fun b!2116510 () Bool)

(declare-fun lt!793790 () MutLongMap!2393)

(get-info :version)

(assert (=> b!2116510 (= e!1347189 (and e!1347202 ((_ is LongMap!2393) lt!793790)))))

(assert (=> b!2116510 (= lt!793790 (v!28116 (underlying!4982 (cache!2688 cacheDown!1229))))))

(declare-fun mapIsEmpty!11536 () Bool)

(assert (=> mapIsEmpty!11536 mapRes!11537))

(declare-fun b!2116511 () Bool)

(declare-datatypes ((List!23674 0))(
  ( (Nil!23590) (Cons!23590 (h!28991 Context!2426) (t!196183 List!23674)) )
))
(declare-fun unfocusZipper!63 (List!23674) Regex!5643)

(declare-fun toList!1055 ((InoxSet Context!2426)) List!23674)

(declare-fun focus!276 (Regex!5643) (InoxSet Context!2426))

(assert (=> b!2116511 (= e!1347211 (not (= (unfocusZipper!63 (toList!1055 (focus!276 r!15373))) r!15373)))))

(declare-fun b!2116512 () Bool)

(declare-fun res!918085 () Bool)

(assert (=> b!2116512 (=> (not res!918085) (not e!1347211))))

(declare-fun valid!1884 (CacheUp!1594) Bool)

(assert (=> b!2116512 (= res!918085 (valid!1884 cacheUp!1110))))

(declare-fun mapIsEmpty!11537 () Bool)

(assert (=> mapIsEmpty!11537 mapRes!11535))

(declare-fun b!2116513 () Bool)

(assert (=> b!2116513 (= e!1347194 e!1347195)))

(declare-fun e!1347197 () Bool)

(declare-fun e!1347205 () Bool)

(assert (=> b!2116514 (= e!1347197 (and e!1347205 tp!646169))))

(declare-fun b!2116515 () Bool)

(declare-fun res!918082 () Bool)

(assert (=> b!2116515 (=> (not res!918082) (not e!1347211))))

(assert (=> b!2116515 (= res!918082 (= (totalInput!2860 cacheFurthestNullable!141) totalInput!1306))))

(declare-fun b!2116516 () Bool)

(declare-fun e!1347207 () Bool)

(declare-fun tp!646184 () Bool)

(assert (=> b!2116516 (= e!1347207 (and tp!646184 mapRes!11536))))

(declare-fun condMapEmpty!11535 () Bool)

(declare-fun mapDefault!11536 () List!23673)

(assert (=> b!2116516 (= condMapEmpty!11535 (= (arr!3658 (_values!2673 (v!28115 (underlying!4981 (v!28116 (underlying!4982 (cache!2688 cacheDown!1229))))))) ((as const (Array (_ BitVec 32) List!23673)) mapDefault!11536)))))

(declare-fun tp!646156 () Bool)

(declare-fun tp!646179 () Bool)

(declare-fun array_inv!2626 (array!8241) Bool)

(assert (=> b!2116517 (= e!1347212 (and tp!646172 tp!646179 tp!646156 (array_inv!2623 (_keys!2690 (v!28115 (underlying!4981 (v!28116 (underlying!4982 (cache!2688 cacheDown!1229))))))) (array_inv!2626 (_values!2673 (v!28115 (underlying!4981 (v!28116 (underlying!4982 (cache!2688 cacheDown!1229))))))) e!1347207))))

(declare-fun b!2116518 () Bool)

(declare-fun e!1347188 () Bool)

(assert (=> b!2116518 (= e!1347188 e!1347187)))

(declare-fun b!2116519 () Bool)

(declare-fun lt!793789 () MutLongMap!2392)

(assert (=> b!2116519 (= e!1347205 (and e!1347188 ((_ is LongMap!2392) lt!793789)))))

(assert (=> b!2116519 (= lt!793789 (v!28114 (underlying!4980 (cache!2687 cacheFurthestNullable!141))))))

(declare-fun b!2116520 () Bool)

(declare-fun lt!793791 () MutLongMap!2391)

(assert (=> b!2116520 (= e!1347203 (and e!1347213 ((_ is LongMap!2391) lt!793791)))))

(assert (=> b!2116520 (= lt!793791 (v!28112 (underlying!4978 (cache!2686 cacheUp!1110))))))

(declare-fun b!2116521 () Bool)

(declare-fun tp!646176 () Bool)

(declare-fun tp!646170 () Bool)

(assert (=> b!2116521 (= e!1347209 (and tp!646176 tp!646170))))

(declare-fun b!2116522 () Bool)

(assert (=> b!2116522 (= e!1347190 (and e!1347197 (inv!31166 (totalInput!2860 cacheFurthestNullable!141)) e!1347199))))

(declare-fun b!2116523 () Bool)

(assert (=> b!2116523 (= e!1347186 e!1347210)))

(declare-fun mapNonEmpty!11537 () Bool)

(declare-fun tp!646167 () Bool)

(declare-fun tp!646174 () Bool)

(assert (=> mapNonEmpty!11537 (= mapRes!11537 (and tp!646167 tp!646174))))

(declare-fun mapKey!11536 () (_ BitVec 32))

(declare-fun mapRest!11535 () (Array (_ BitVec 32) List!23672))

(declare-fun mapValue!11536 () List!23672)

(assert (=> mapNonEmpty!11537 (= (arr!3657 (_values!2672 (v!28113 (underlying!4979 (v!28114 (underlying!4980 (cache!2687 cacheFurthestNullable!141))))))) (store mapRest!11535 mapKey!11536 mapValue!11536))))

(declare-fun b!2116524 () Bool)

(assert (=> b!2116524 (= e!1347201 e!1347208)))

(assert (= (and start!206674 res!918087) b!2116512))

(assert (= (and b!2116512 res!918085) b!2116509))

(assert (= (and b!2116509 res!918083) b!2116497))

(assert (= (and b!2116497 res!918084) b!2116515))

(assert (= (and b!2116515 res!918082) b!2116494))

(assert (= (and b!2116494 res!918086) b!2116511))

(assert (= (and b!2116516 condMapEmpty!11535) mapIsEmpty!11535))

(assert (= (and b!2116516 (not condMapEmpty!11535)) mapNonEmpty!11536))

(assert (= b!2116517 b!2116516))

(assert (= b!2116492 b!2116517))

(assert (= b!2116502 b!2116492))

(assert (= (and b!2116510 ((_ is LongMap!2393) (v!28116 (underlying!4982 (cache!2688 cacheDown!1229))))) b!2116502))

(assert (= b!2116508 b!2116510))

(assert (= (and b!2116523 ((_ is HashMap!2307) (cache!2688 cacheDown!1229))) b!2116508))

(assert (= start!206674 b!2116523))

(assert (= (and start!206674 ((_ is ElementMatch!5643) r!15373)) b!2116493))

(assert (= (and start!206674 ((_ is Concat!9945) r!15373)) b!2116521))

(assert (= (and start!206674 ((_ is Star!5643) r!15373)) b!2116505))

(assert (= (and start!206674 ((_ is Union!5643) r!15373)) b!2116501))

(assert (= (and b!2116500 condMapEmpty!11537) mapIsEmpty!11537))

(assert (= (and b!2116500 (not condMapEmpty!11537)) mapNonEmpty!11535))

(assert (= b!2116491 b!2116500))

(assert (= b!2116524 b!2116491))

(assert (= b!2116496 b!2116524))

(assert (= (and b!2116520 ((_ is LongMap!2391) (v!28112 (underlying!4978 (cache!2686 cacheUp!1110))))) b!2116496))

(assert (= b!2116504 b!2116520))

(assert (= (and b!2116513 ((_ is HashMap!2305) (cache!2686 cacheUp!1110))) b!2116504))

(assert (= start!206674 b!2116513))

(assert (= start!206674 b!2116507))

(assert (= start!206674 b!2116495))

(assert (= (and b!2116498 condMapEmpty!11536) mapIsEmpty!11536))

(assert (= (and b!2116498 (not condMapEmpty!11536)) mapNonEmpty!11537))

(assert (= b!2116499 b!2116498))

(assert (= b!2116503 b!2116499))

(assert (= b!2116518 b!2116503))

(assert (= (and b!2116519 ((_ is LongMap!2392) (v!28114 (underlying!4980 (cache!2687 cacheFurthestNullable!141))))) b!2116518))

(assert (= b!2116514 b!2116519))

(assert (= (and b!2116522 ((_ is HashMap!2306) (cache!2687 cacheFurthestNullable!141))) b!2116514))

(assert (= b!2116522 b!2116506))

(assert (= start!206674 b!2116522))

(declare-fun m!2571515 () Bool)

(assert (=> start!206674 m!2571515))

(declare-fun m!2571517 () Bool)

(assert (=> start!206674 m!2571517))

(declare-fun m!2571519 () Bool)

(assert (=> start!206674 m!2571519))

(declare-fun m!2571521 () Bool)

(assert (=> start!206674 m!2571521))

(declare-fun m!2571523 () Bool)

(assert (=> start!206674 m!2571523))

(declare-fun m!2571525 () Bool)

(assert (=> start!206674 m!2571525))

(declare-fun m!2571527 () Bool)

(assert (=> b!2116497 m!2571527))

(declare-fun m!2571529 () Bool)

(assert (=> b!2116522 m!2571529))

(declare-fun m!2571531 () Bool)

(assert (=> b!2116491 m!2571531))

(declare-fun m!2571533 () Bool)

(assert (=> b!2116491 m!2571533))

(declare-fun m!2571535 () Bool)

(assert (=> b!2116499 m!2571535))

(declare-fun m!2571537 () Bool)

(assert (=> b!2116499 m!2571537))

(declare-fun m!2571539 () Bool)

(assert (=> b!2116507 m!2571539))

(declare-fun m!2571541 () Bool)

(assert (=> b!2116495 m!2571541))

(declare-fun m!2571543 () Bool)

(assert (=> mapNonEmpty!11535 m!2571543))

(declare-fun m!2571545 () Bool)

(assert (=> mapNonEmpty!11536 m!2571545))

(declare-fun m!2571547 () Bool)

(assert (=> b!2116494 m!2571547))

(declare-fun m!2571549 () Bool)

(assert (=> b!2116494 m!2571549))

(assert (=> b!2116494 m!2571547))

(assert (=> b!2116494 m!2571549))

(declare-fun m!2571551 () Bool)

(assert (=> b!2116494 m!2571551))

(declare-fun m!2571553 () Bool)

(assert (=> b!2116512 m!2571553))

(declare-fun m!2571555 () Bool)

(assert (=> b!2116506 m!2571555))

(declare-fun m!2571557 () Bool)

(assert (=> b!2116511 m!2571557))

(assert (=> b!2116511 m!2571557))

(declare-fun m!2571559 () Bool)

(assert (=> b!2116511 m!2571559))

(assert (=> b!2116511 m!2571559))

(declare-fun m!2571561 () Bool)

(assert (=> b!2116511 m!2571561))

(declare-fun m!2571563 () Bool)

(assert (=> mapNonEmpty!11537 m!2571563))

(declare-fun m!2571565 () Bool)

(assert (=> b!2116509 m!2571565))

(declare-fun m!2571567 () Bool)

(assert (=> b!2116517 m!2571567))

(declare-fun m!2571569 () Bool)

(assert (=> b!2116517 m!2571569))

(check-sat b_and!170959 b_and!170961 (not b!2116505) b_and!170955 b_and!170963 b_and!170957 (not b!2116507) (not b!2116516) (not start!206674) (not b!2116521) (not b!2116517) (not b_next!62083) (not mapNonEmpty!11536) (not b!2116497) (not b!2116491) (not b_next!62081) (not b!2116511) (not b_next!62077) (not b_next!62087) (not b!2116499) (not b!2116509) (not b!2116495) (not b!2116522) (not mapNonEmpty!11537) (not b!2116501) (not mapNonEmpty!11535) tp_is_empty!9475 (not b_next!62085) (not b_next!62079) (not b!2116512) (not b!2116494) b_and!170953 (not b!2116498) (not b!2116506) (not b!2116500))
(check-sat b_and!170959 b_and!170961 b_and!170955 b_and!170963 (not b_next!62081) b_and!170957 (not b_next!62085) (not b_next!62079) (not b_next!62083) b_and!170953 (not b_next!62077) (not b_next!62087))
(get-model)

(declare-fun d!642617 () Bool)

(assert (=> d!642617 (= (array_inv!2623 (_keys!2689 (v!28113 (underlying!4979 (v!28114 (underlying!4980 (cache!2687 cacheFurthestNullable!141))))))) (bvsge (size!18421 (_keys!2689 (v!28113 (underlying!4979 (v!28114 (underlying!4980 (cache!2687 cacheFurthestNullable!141))))))) #b00000000000000000000000000000000))))

(assert (=> b!2116499 d!642617))

(declare-fun d!642619 () Bool)

(assert (=> d!642619 (= (array_inv!2625 (_values!2672 (v!28113 (underlying!4979 (v!28114 (underlying!4980 (cache!2687 cacheFurthestNullable!141))))))) (bvsge (size!18422 (_values!2672 (v!28113 (underlying!4979 (v!28114 (underlying!4980 (cache!2687 cacheFurthestNullable!141))))))) #b00000000000000000000000000000000))))

(assert (=> b!2116499 d!642619))

(declare-fun d!642621 () Bool)

(assert (=> d!642621 (= (array_inv!2623 (_keys!2690 (v!28115 (underlying!4981 (v!28116 (underlying!4982 (cache!2688 cacheDown!1229))))))) (bvsge (size!18421 (_keys!2690 (v!28115 (underlying!4981 (v!28116 (underlying!4982 (cache!2688 cacheDown!1229))))))) #b00000000000000000000000000000000))))

(assert (=> b!2116517 d!642621))

(declare-fun d!642623 () Bool)

(assert (=> d!642623 (= (array_inv!2626 (_values!2673 (v!28115 (underlying!4981 (v!28116 (underlying!4982 (cache!2688 cacheDown!1229))))))) (bvsge (size!18423 (_values!2673 (v!28115 (underlying!4981 (v!28116 (underlying!4982 (cache!2688 cacheDown!1229))))))) #b00000000000000000000000000000000))))

(assert (=> b!2116517 d!642623))

(declare-fun d!642625 () Bool)

(declare-fun validCacheMapDown!236 (MutableMap!2307) Bool)

(assert (=> d!642625 (= (valid!1883 cacheDown!1229) (validCacheMapDown!236 (cache!2688 cacheDown!1229)))))

(declare-fun bs!441231 () Bool)

(assert (= bs!441231 d!642625))

(declare-fun m!2571571 () Bool)

(assert (=> bs!441231 m!2571571))

(assert (=> b!2116509 d!642625))

(declare-fun d!642627 () Bool)

(assert (=> d!642627 (= (array_inv!2623 (_keys!2688 (v!28111 (underlying!4977 (v!28112 (underlying!4978 (cache!2686 cacheUp!1110))))))) (bvsge (size!18421 (_keys!2688 (v!28111 (underlying!4977 (v!28112 (underlying!4978 (cache!2686 cacheUp!1110))))))) #b00000000000000000000000000000000))))

(assert (=> b!2116491 d!642627))

(declare-fun d!642629 () Bool)

(assert (=> d!642629 (= (array_inv!2624 (_values!2671 (v!28111 (underlying!4977 (v!28112 (underlying!4978 (cache!2686 cacheUp!1110))))))) (bvsge (size!18420 (_values!2671 (v!28111 (underlying!4977 (v!28112 (underlying!4978 (cache!2686 cacheUp!1110))))))) #b00000000000000000000000000000000))))

(assert (=> b!2116491 d!642629))

(declare-fun d!642631 () Bool)

(declare-fun res!918090 () Bool)

(declare-fun e!1347217 () Bool)

(assert (=> d!642631 (=> (not res!918090) (not e!1347217))))

(assert (=> d!642631 (= res!918090 ((_ is HashMap!2306) (cache!2687 cacheFurthestNullable!141)))))

(assert (=> d!642631 (= (inv!31167 cacheFurthestNullable!141) e!1347217)))

(declare-fun b!2116527 () Bool)

(declare-fun validCacheMapFurthestNullable!88 (MutableMap!2306 BalanceConc!15326) Bool)

(assert (=> b!2116527 (= e!1347217 (validCacheMapFurthestNullable!88 (cache!2687 cacheFurthestNullable!141) (totalInput!2860 cacheFurthestNullable!141)))))

(assert (= (and d!642631 res!918090) b!2116527))

(declare-fun m!2571573 () Bool)

(assert (=> b!2116527 m!2571573))

(assert (=> start!206674 d!642631))

(declare-fun d!642633 () Bool)

(declare-fun res!918093 () Bool)

(declare-fun e!1347220 () Bool)

(assert (=> d!642633 (=> (not res!918093) (not e!1347220))))

(assert (=> d!642633 (= res!918093 ((_ is HashMap!2305) (cache!2686 cacheUp!1110)))))

(assert (=> d!642633 (= (inv!31165 cacheUp!1110) e!1347220)))

(declare-fun b!2116530 () Bool)

(declare-fun validCacheMapUp!238 (MutableMap!2305) Bool)

(assert (=> b!2116530 (= e!1347220 (validCacheMapUp!238 (cache!2686 cacheUp!1110)))))

(assert (= (and d!642633 res!918093) b!2116530))

(declare-fun m!2571575 () Bool)

(assert (=> b!2116530 m!2571575))

(assert (=> start!206674 d!642633))

(declare-fun b!2116549 () Bool)

(declare-fun e!1347238 () Bool)

(declare-fun e!1347236 () Bool)

(assert (=> b!2116549 (= e!1347238 e!1347236)))

(declare-fun c!339365 () Bool)

(assert (=> b!2116549 (= c!339365 ((_ is Union!5643) r!15373))))

(declare-fun c!339366 () Bool)

(declare-fun bm!128565 () Bool)

(declare-fun call!128571 () Bool)

(assert (=> bm!128565 (= call!128571 (validRegex!2228 (ite c!339366 (reg!5972 r!15373) (ite c!339365 (regTwo!11799 r!15373) (regTwo!11798 r!15373)))))))

(declare-fun b!2116550 () Bool)

(declare-fun e!1347237 () Bool)

(declare-fun e!1347240 () Bool)

(assert (=> b!2116550 (= e!1347237 e!1347240)))

(declare-fun res!918108 () Bool)

(assert (=> b!2116550 (=> (not res!918108) (not e!1347240))))

(declare-fun call!128572 () Bool)

(assert (=> b!2116550 (= res!918108 call!128572)))

(declare-fun b!2116551 () Bool)

(declare-fun call!128570 () Bool)

(assert (=> b!2116551 (= e!1347240 call!128570)))

(declare-fun bm!128566 () Bool)

(assert (=> bm!128566 (= call!128570 call!128571)))

(declare-fun b!2116553 () Bool)

(declare-fun e!1347241 () Bool)

(assert (=> b!2116553 (= e!1347241 call!128570)))

(declare-fun bm!128567 () Bool)

(assert (=> bm!128567 (= call!128572 (validRegex!2228 (ite c!339365 (regOne!11799 r!15373) (regOne!11798 r!15373))))))

(declare-fun b!2116554 () Bool)

(declare-fun e!1347239 () Bool)

(assert (=> b!2116554 (= e!1347238 e!1347239)))

(declare-fun res!918104 () Bool)

(declare-fun nullable!1681 (Regex!5643) Bool)

(assert (=> b!2116554 (= res!918104 (not (nullable!1681 (reg!5972 r!15373))))))

(assert (=> b!2116554 (=> (not res!918104) (not e!1347239))))

(declare-fun b!2116555 () Bool)

(declare-fun res!918106 () Bool)

(assert (=> b!2116555 (=> (not res!918106) (not e!1347241))))

(assert (=> b!2116555 (= res!918106 call!128572)))

(assert (=> b!2116555 (= e!1347236 e!1347241)))

(declare-fun b!2116552 () Bool)

(declare-fun e!1347235 () Bool)

(assert (=> b!2116552 (= e!1347235 e!1347238)))

(assert (=> b!2116552 (= c!339366 ((_ is Star!5643) r!15373))))

(declare-fun d!642635 () Bool)

(declare-fun res!918105 () Bool)

(assert (=> d!642635 (=> res!918105 e!1347235)))

(assert (=> d!642635 (= res!918105 ((_ is ElementMatch!5643) r!15373))))

(assert (=> d!642635 (= (validRegex!2228 r!15373) e!1347235)))

(declare-fun b!2116556 () Bool)

(assert (=> b!2116556 (= e!1347239 call!128571)))

(declare-fun b!2116557 () Bool)

(declare-fun res!918107 () Bool)

(assert (=> b!2116557 (=> res!918107 e!1347237)))

(assert (=> b!2116557 (= res!918107 (not ((_ is Concat!9945) r!15373)))))

(assert (=> b!2116557 (= e!1347236 e!1347237)))

(assert (= (and d!642635 (not res!918105)) b!2116552))

(assert (= (and b!2116552 c!339366) b!2116554))

(assert (= (and b!2116552 (not c!339366)) b!2116549))

(assert (= (and b!2116554 res!918104) b!2116556))

(assert (= (and b!2116549 c!339365) b!2116555))

(assert (= (and b!2116549 (not c!339365)) b!2116557))

(assert (= (and b!2116555 res!918106) b!2116553))

(assert (= (and b!2116557 (not res!918107)) b!2116550))

(assert (= (and b!2116550 res!918108) b!2116551))

(assert (= (or b!2116553 b!2116551) bm!128566))

(assert (= (or b!2116555 b!2116550) bm!128567))

(assert (= (or b!2116556 bm!128566) bm!128565))

(declare-fun m!2571577 () Bool)

(assert (=> bm!128565 m!2571577))

(declare-fun m!2571579 () Bool)

(assert (=> bm!128567 m!2571579))

(declare-fun m!2571581 () Bool)

(assert (=> b!2116554 m!2571581))

(assert (=> start!206674 d!642635))

(declare-fun d!642637 () Bool)

(declare-fun isBalanced!2442 (Conc!7782) Bool)

(assert (=> d!642637 (= (inv!31166 input!6660) (isBalanced!2442 (c!339360 input!6660)))))

(declare-fun bs!441232 () Bool)

(assert (= bs!441232 d!642637))

(declare-fun m!2571583 () Bool)

(assert (=> bs!441232 m!2571583))

(assert (=> start!206674 d!642637))

(declare-fun d!642639 () Bool)

(assert (=> d!642639 (= (inv!31166 totalInput!1306) (isBalanced!2442 (c!339360 totalInput!1306)))))

(declare-fun bs!441233 () Bool)

(assert (= bs!441233 d!642639))

(declare-fun m!2571585 () Bool)

(assert (=> bs!441233 m!2571585))

(assert (=> start!206674 d!642639))

(declare-fun d!642641 () Bool)

(declare-fun res!918111 () Bool)

(declare-fun e!1347244 () Bool)

(assert (=> d!642641 (=> (not res!918111) (not e!1347244))))

(assert (=> d!642641 (= res!918111 ((_ is HashMap!2307) (cache!2688 cacheDown!1229)))))

(assert (=> d!642641 (= (inv!31164 cacheDown!1229) e!1347244)))

(declare-fun b!2116560 () Bool)

(assert (=> b!2116560 (= e!1347244 (validCacheMapDown!236 (cache!2688 cacheDown!1229)))))

(assert (= (and d!642641 res!918111) b!2116560))

(assert (=> b!2116560 m!2571571))

(assert (=> start!206674 d!642641))

(declare-fun d!642643 () Bool)

(declare-fun e!1347247 () Bool)

(assert (=> d!642643 e!1347247))

(declare-fun res!918114 () Bool)

(assert (=> d!642643 (=> res!918114 e!1347247)))

(declare-fun lt!793794 () Bool)

(assert (=> d!642643 (= res!918114 (not lt!793794))))

(declare-fun drop!1177 (List!23671 Int) List!23671)

(declare-fun size!18424 (List!23671) Int)

(assert (=> d!642643 (= lt!793794 (= (list!9505 input!6660) (drop!1177 (list!9505 totalInput!1306) (- (size!18424 (list!9505 totalInput!1306)) (size!18424 (list!9505 input!6660))))))))

(assert (=> d!642643 (= (isSuffix!604 (list!9505 input!6660) (list!9505 totalInput!1306)) lt!793794)))

(declare-fun b!2116563 () Bool)

(assert (=> b!2116563 (= e!1347247 (>= (size!18424 (list!9505 totalInput!1306)) (size!18424 (list!9505 input!6660))))))

(assert (= (and d!642643 (not res!918114)) b!2116563))

(assert (=> d!642643 m!2571549))

(declare-fun m!2571587 () Bool)

(assert (=> d!642643 m!2571587))

(assert (=> d!642643 m!2571547))

(declare-fun m!2571589 () Bool)

(assert (=> d!642643 m!2571589))

(assert (=> d!642643 m!2571549))

(declare-fun m!2571591 () Bool)

(assert (=> d!642643 m!2571591))

(assert (=> b!2116563 m!2571549))

(assert (=> b!2116563 m!2571587))

(assert (=> b!2116563 m!2571547))

(assert (=> b!2116563 m!2571589))

(assert (=> b!2116494 d!642643))

(declare-fun d!642645 () Bool)

(declare-fun list!9506 (Conc!7782) List!23671)

(assert (=> d!642645 (= (list!9505 input!6660) (list!9506 (c!339360 input!6660)))))

(declare-fun bs!441234 () Bool)

(assert (= bs!441234 d!642645))

(declare-fun m!2571593 () Bool)

(assert (=> bs!441234 m!2571593))

(assert (=> b!2116494 d!642645))

(declare-fun d!642647 () Bool)

(assert (=> d!642647 (= (list!9505 totalInput!1306) (list!9506 (c!339360 totalInput!1306)))))

(declare-fun bs!441235 () Bool)

(assert (= bs!441235 d!642647))

(declare-fun m!2571595 () Bool)

(assert (=> bs!441235 m!2571595))

(assert (=> b!2116494 d!642647))

(declare-fun d!642649 () Bool)

(declare-fun lt!793797 () Regex!5643)

(assert (=> d!642649 (validRegex!2228 lt!793797)))

(declare-fun generalisedUnion!497 (List!23669) Regex!5643)

(declare-fun unfocusZipperList!21 (List!23674) List!23669)

(assert (=> d!642649 (= lt!793797 (generalisedUnion!497 (unfocusZipperList!21 (toList!1055 (focus!276 r!15373)))))))

(assert (=> d!642649 (= (unfocusZipper!63 (toList!1055 (focus!276 r!15373))) lt!793797)))

(declare-fun bs!441236 () Bool)

(assert (= bs!441236 d!642649))

(declare-fun m!2571597 () Bool)

(assert (=> bs!441236 m!2571597))

(assert (=> bs!441236 m!2571559))

(declare-fun m!2571599 () Bool)

(assert (=> bs!441236 m!2571599))

(assert (=> bs!441236 m!2571599))

(declare-fun m!2571601 () Bool)

(assert (=> bs!441236 m!2571601))

(assert (=> b!2116511 d!642649))

(declare-fun d!642651 () Bool)

(declare-fun e!1347250 () Bool)

(assert (=> d!642651 e!1347250))

(declare-fun res!918117 () Bool)

(assert (=> d!642651 (=> (not res!918117) (not e!1347250))))

(declare-fun lt!793800 () List!23674)

(declare-fun noDuplicate!274 (List!23674) Bool)

(assert (=> d!642651 (= res!918117 (noDuplicate!274 lt!793800))))

(declare-fun choose!12654 ((InoxSet Context!2426)) List!23674)

(assert (=> d!642651 (= lt!793800 (choose!12654 (focus!276 r!15373)))))

(assert (=> d!642651 (= (toList!1055 (focus!276 r!15373)) lt!793800)))

(declare-fun b!2116566 () Bool)

(declare-fun content!3386 (List!23674) (InoxSet Context!2426))

(assert (=> b!2116566 (= e!1347250 (= (content!3386 lt!793800) (focus!276 r!15373)))))

(assert (= (and d!642651 res!918117) b!2116566))

(declare-fun m!2571603 () Bool)

(assert (=> d!642651 m!2571603))

(assert (=> d!642651 m!2571557))

(declare-fun m!2571605 () Bool)

(assert (=> d!642651 m!2571605))

(declare-fun m!2571607 () Bool)

(assert (=> b!2116566 m!2571607))

(assert (=> b!2116511 d!642651))

(declare-fun d!642653 () Bool)

(declare-fun e!1347253 () Bool)

(assert (=> d!642653 e!1347253))

(declare-fun res!918121 () Bool)

(assert (=> d!642653 (=> (not res!918121) (not e!1347253))))

(assert (=> d!642653 (= res!918121 (validRegex!2228 r!15373))))

(assert (=> d!642653 (= (focus!276 r!15373) (store ((as const (Array Context!2426 Bool)) false) (Context!2427 (Cons!23585 r!15373 Nil!23585)) true))))

(declare-fun b!2116569 () Bool)

(assert (=> b!2116569 (= e!1347253 (= (unfocusZipper!63 (toList!1055 (store ((as const (Array Context!2426 Bool)) false) (Context!2427 (Cons!23585 r!15373 Nil!23585)) true))) r!15373))))

(assert (= (and d!642653 res!918121) b!2116569))

(assert (=> d!642653 m!2571515))

(declare-fun m!2571609 () Bool)

(assert (=> d!642653 m!2571609))

(assert (=> b!2116569 m!2571609))

(assert (=> b!2116569 m!2571609))

(declare-fun m!2571611 () Bool)

(assert (=> b!2116569 m!2571611))

(assert (=> b!2116569 m!2571611))

(declare-fun m!2571613 () Bool)

(assert (=> b!2116569 m!2571613))

(assert (=> b!2116511 d!642653))

(declare-fun d!642655 () Bool)

(assert (=> d!642655 (= (inv!31166 (totalInput!2860 cacheFurthestNullable!141)) (isBalanced!2442 (c!339360 (totalInput!2860 cacheFurthestNullable!141))))))

(declare-fun bs!441237 () Bool)

(assert (= bs!441237 d!642655))

(declare-fun m!2571615 () Bool)

(assert (=> bs!441237 m!2571615))

(assert (=> b!2116522 d!642655))

(declare-fun d!642657 () Bool)

(declare-fun c!339369 () Bool)

(assert (=> d!642657 (= c!339369 ((_ is Node!7782) (c!339360 totalInput!1306)))))

(declare-fun e!1347258 () Bool)

(assert (=> d!642657 (= (inv!31163 (c!339360 totalInput!1306)) e!1347258)))

(declare-fun b!2116576 () Bool)

(declare-fun inv!31168 (Conc!7782) Bool)

(assert (=> b!2116576 (= e!1347258 (inv!31168 (c!339360 totalInput!1306)))))

(declare-fun b!2116577 () Bool)

(declare-fun e!1347259 () Bool)

(assert (=> b!2116577 (= e!1347258 e!1347259)))

(declare-fun res!918124 () Bool)

(assert (=> b!2116577 (= res!918124 (not ((_ is Leaf!11371) (c!339360 totalInput!1306))))))

(assert (=> b!2116577 (=> res!918124 e!1347259)))

(declare-fun b!2116578 () Bool)

(declare-fun inv!31169 (Conc!7782) Bool)

(assert (=> b!2116578 (= e!1347259 (inv!31169 (c!339360 totalInput!1306)))))

(assert (= (and d!642657 c!339369) b!2116576))

(assert (= (and d!642657 (not c!339369)) b!2116577))

(assert (= (and b!2116577 (not res!918124)) b!2116578))

(declare-fun m!2571617 () Bool)

(assert (=> b!2116576 m!2571617))

(declare-fun m!2571619 () Bool)

(assert (=> b!2116578 m!2571619))

(assert (=> b!2116495 d!642657))

(declare-fun d!642659 () Bool)

(assert (=> d!642659 (= (valid!1884 cacheUp!1110) (validCacheMapUp!238 (cache!2686 cacheUp!1110)))))

(declare-fun bs!441238 () Bool)

(assert (= bs!441238 d!642659))

(assert (=> bs!441238 m!2571575))

(assert (=> b!2116512 d!642659))

(declare-fun d!642661 () Bool)

(declare-fun c!339370 () Bool)

(assert (=> d!642661 (= c!339370 ((_ is Node!7782) (c!339360 (totalInput!2860 cacheFurthestNullable!141))))))

(declare-fun e!1347260 () Bool)

(assert (=> d!642661 (= (inv!31163 (c!339360 (totalInput!2860 cacheFurthestNullable!141))) e!1347260)))

(declare-fun b!2116579 () Bool)

(assert (=> b!2116579 (= e!1347260 (inv!31168 (c!339360 (totalInput!2860 cacheFurthestNullable!141))))))

(declare-fun b!2116580 () Bool)

(declare-fun e!1347261 () Bool)

(assert (=> b!2116580 (= e!1347260 e!1347261)))

(declare-fun res!918125 () Bool)

(assert (=> b!2116580 (= res!918125 (not ((_ is Leaf!11371) (c!339360 (totalInput!2860 cacheFurthestNullable!141)))))))

(assert (=> b!2116580 (=> res!918125 e!1347261)))

(declare-fun b!2116581 () Bool)

(assert (=> b!2116581 (= e!1347261 (inv!31169 (c!339360 (totalInput!2860 cacheFurthestNullable!141))))))

(assert (= (and d!642661 c!339370) b!2116579))

(assert (= (and d!642661 (not c!339370)) b!2116580))

(assert (= (and b!2116580 (not res!918125)) b!2116581))

(declare-fun m!2571621 () Bool)

(assert (=> b!2116579 m!2571621))

(declare-fun m!2571623 () Bool)

(assert (=> b!2116581 m!2571623))

(assert (=> b!2116506 d!642661))

(declare-fun d!642663 () Bool)

(declare-fun c!339371 () Bool)

(assert (=> d!642663 (= c!339371 ((_ is Node!7782) (c!339360 input!6660)))))

(declare-fun e!1347262 () Bool)

(assert (=> d!642663 (= (inv!31163 (c!339360 input!6660)) e!1347262)))

(declare-fun b!2116582 () Bool)

(assert (=> b!2116582 (= e!1347262 (inv!31168 (c!339360 input!6660)))))

(declare-fun b!2116583 () Bool)

(declare-fun e!1347263 () Bool)

(assert (=> b!2116583 (= e!1347262 e!1347263)))

(declare-fun res!918126 () Bool)

(assert (=> b!2116583 (= res!918126 (not ((_ is Leaf!11371) (c!339360 input!6660))))))

(assert (=> b!2116583 (=> res!918126 e!1347263)))

(declare-fun b!2116584 () Bool)

(assert (=> b!2116584 (= e!1347263 (inv!31169 (c!339360 input!6660)))))

(assert (= (and d!642663 c!339371) b!2116582))

(assert (= (and d!642663 (not c!339371)) b!2116583))

(assert (= (and b!2116583 (not res!918126)) b!2116584))

(declare-fun m!2571625 () Bool)

(assert (=> b!2116582 m!2571625))

(declare-fun m!2571627 () Bool)

(assert (=> b!2116584 m!2571627))

(assert (=> b!2116507 d!642663))

(declare-fun d!642665 () Bool)

(assert (=> d!642665 (= (valid!1882 cacheFurthestNullable!141) (validCacheMapFurthestNullable!88 (cache!2687 cacheFurthestNullable!141) (totalInput!2860 cacheFurthestNullable!141)))))

(declare-fun bs!441239 () Bool)

(assert (= bs!441239 d!642665))

(assert (=> bs!441239 m!2571573))

(assert (=> b!2116497 d!642665))

(declare-fun condMapEmpty!11540 () Bool)

(declare-fun mapDefault!11540 () List!23673)

(assert (=> mapNonEmpty!11536 (= condMapEmpty!11540 (= mapRest!11536 ((as const (Array (_ BitVec 32) List!23673)) mapDefault!11540)))))

(declare-fun e!1347279 () Bool)

(declare-fun mapRes!11540 () Bool)

(assert (=> mapNonEmpty!11536 (= tp!646165 (and e!1347279 mapRes!11540))))

(declare-fun mapIsEmpty!11540 () Bool)

(assert (=> mapIsEmpty!11540 mapRes!11540))

(declare-fun b!2116599 () Bool)

(declare-fun e!1347276 () Bool)

(declare-fun tp!646211 () Bool)

(assert (=> b!2116599 (= e!1347276 tp!646211)))

(declare-fun tp!646207 () Bool)

(declare-fun e!1347281 () Bool)

(declare-fun setRes!14295 () Bool)

(declare-fun setNonEmpty!14294 () Bool)

(declare-fun setElem!14294 () Context!2426)

(declare-fun inv!31170 (Context!2426) Bool)

(assert (=> setNonEmpty!14294 (= setRes!14295 (and tp!646207 (inv!31170 setElem!14294) e!1347281))))

(declare-fun mapValue!11540 () List!23673)

(declare-fun setRest!14295 () (InoxSet Context!2426))

(assert (=> setNonEmpty!14294 (= (_2!13433 (h!28990 mapValue!11540)) ((_ map or) (store ((as const (Array Context!2426 Bool)) false) setElem!14294 true) setRest!14295))))

(declare-fun mapNonEmpty!11540 () Bool)

(declare-fun tp!646208 () Bool)

(declare-fun e!1347277 () Bool)

(assert (=> mapNonEmpty!11540 (= mapRes!11540 (and tp!646208 e!1347277))))

(declare-fun mapRest!11540 () (Array (_ BitVec 32) List!23673))

(declare-fun mapKey!11540 () (_ BitVec 32))

(assert (=> mapNonEmpty!11540 (= mapRest!11536 (store mapRest!11540 mapKey!11540 mapValue!11540))))

(declare-fun setRes!14294 () Bool)

(declare-fun tp!646209 () Bool)

(declare-fun e!1347280 () Bool)

(declare-fun b!2116600 () Bool)

(declare-fun tp!646210 () Bool)

(assert (=> b!2116600 (= e!1347279 (and tp!646209 (inv!31170 (_2!13432 (_1!13433 (h!28990 mapDefault!11540)))) e!1347280 tp_is_empty!9475 setRes!14294 tp!646210))))

(declare-fun condSetEmpty!14295 () Bool)

(assert (=> b!2116600 (= condSetEmpty!14295 (= (_2!13433 (h!28990 mapDefault!11540)) ((as const (Array Context!2426 Bool)) false)))))

(declare-fun setIsEmpty!14294 () Bool)

(assert (=> setIsEmpty!14294 setRes!14294))

(declare-fun b!2116601 () Bool)

(declare-fun e!1347278 () Bool)

(declare-fun tp!646215 () Bool)

(assert (=> b!2116601 (= e!1347278 tp!646215)))

(declare-fun b!2116602 () Bool)

(declare-fun tp!646217 () Bool)

(assert (=> b!2116602 (= e!1347281 tp!646217)))

(declare-fun setNonEmpty!14295 () Bool)

(declare-fun tp!646212 () Bool)

(declare-fun setElem!14295 () Context!2426)

(assert (=> setNonEmpty!14295 (= setRes!14294 (and tp!646212 (inv!31170 setElem!14295) e!1347278))))

(declare-fun setRest!14294 () (InoxSet Context!2426))

(assert (=> setNonEmpty!14295 (= (_2!13433 (h!28990 mapDefault!11540)) ((_ map or) (store ((as const (Array Context!2426 Bool)) false) setElem!14295 true) setRest!14294))))

(declare-fun setIsEmpty!14295 () Bool)

(assert (=> setIsEmpty!14295 setRes!14295))

(declare-fun tp!646214 () Bool)

(declare-fun b!2116603 () Bool)

(declare-fun tp!646213 () Bool)

(assert (=> b!2116603 (= e!1347277 (and tp!646214 (inv!31170 (_2!13432 (_1!13433 (h!28990 mapValue!11540)))) e!1347276 tp_is_empty!9475 setRes!14295 tp!646213))))

(declare-fun condSetEmpty!14294 () Bool)

(assert (=> b!2116603 (= condSetEmpty!14294 (= (_2!13433 (h!28990 mapValue!11540)) ((as const (Array Context!2426 Bool)) false)))))

(declare-fun b!2116604 () Bool)

(declare-fun tp!646216 () Bool)

(assert (=> b!2116604 (= e!1347280 tp!646216)))

(assert (= (and mapNonEmpty!11536 condMapEmpty!11540) mapIsEmpty!11540))

(assert (= (and mapNonEmpty!11536 (not condMapEmpty!11540)) mapNonEmpty!11540))

(assert (= b!2116603 b!2116599))

(assert (= (and b!2116603 condSetEmpty!14294) setIsEmpty!14295))

(assert (= (and b!2116603 (not condSetEmpty!14294)) setNonEmpty!14294))

(assert (= setNonEmpty!14294 b!2116602))

(assert (= (and mapNonEmpty!11540 ((_ is Cons!23589) mapValue!11540)) b!2116603))

(assert (= b!2116600 b!2116604))

(assert (= (and b!2116600 condSetEmpty!14295) setIsEmpty!14294))

(assert (= (and b!2116600 (not condSetEmpty!14295)) setNonEmpty!14295))

(assert (= setNonEmpty!14295 b!2116601))

(assert (= (and mapNonEmpty!11536 ((_ is Cons!23589) mapDefault!11540)) b!2116600))

(declare-fun m!2571629 () Bool)

(assert (=> setNonEmpty!14295 m!2571629))

(declare-fun m!2571631 () Bool)

(assert (=> mapNonEmpty!11540 m!2571631))

(declare-fun m!2571633 () Bool)

(assert (=> setNonEmpty!14294 m!2571633))

(declare-fun m!2571635 () Bool)

(assert (=> b!2116603 m!2571635))

(declare-fun m!2571637 () Bool)

(assert (=> b!2116600 m!2571637))

(declare-fun b!2116613 () Bool)

(declare-fun e!1347289 () Bool)

(declare-fun tp!646232 () Bool)

(assert (=> b!2116613 (= e!1347289 tp!646232)))

(declare-fun b!2116614 () Bool)

(declare-fun e!1347290 () Bool)

(declare-fun tp!646230 () Bool)

(assert (=> b!2116614 (= e!1347290 tp!646230)))

(declare-fun e!1347288 () Bool)

(assert (=> mapNonEmpty!11536 (= tp!646173 e!1347288)))

(declare-fun setRes!14298 () Bool)

(declare-fun tp!646231 () Bool)

(declare-fun tp!646228 () Bool)

(declare-fun b!2116615 () Bool)

(assert (=> b!2116615 (= e!1347288 (and tp!646231 (inv!31170 (_2!13432 (_1!13433 (h!28990 mapValue!11537)))) e!1347290 tp_is_empty!9475 setRes!14298 tp!646228))))

(declare-fun condSetEmpty!14298 () Bool)

(assert (=> b!2116615 (= condSetEmpty!14298 (= (_2!13433 (h!28990 mapValue!11537)) ((as const (Array Context!2426 Bool)) false)))))

(declare-fun setIsEmpty!14298 () Bool)

(assert (=> setIsEmpty!14298 setRes!14298))

(declare-fun tp!646229 () Bool)

(declare-fun setElem!14298 () Context!2426)

(declare-fun setNonEmpty!14298 () Bool)

(assert (=> setNonEmpty!14298 (= setRes!14298 (and tp!646229 (inv!31170 setElem!14298) e!1347289))))

(declare-fun setRest!14298 () (InoxSet Context!2426))

(assert (=> setNonEmpty!14298 (= (_2!13433 (h!28990 mapValue!11537)) ((_ map or) (store ((as const (Array Context!2426 Bool)) false) setElem!14298 true) setRest!14298))))

(assert (= b!2116615 b!2116614))

(assert (= (and b!2116615 condSetEmpty!14298) setIsEmpty!14298))

(assert (= (and b!2116615 (not condSetEmpty!14298)) setNonEmpty!14298))

(assert (= setNonEmpty!14298 b!2116613))

(assert (= (and mapNonEmpty!11536 ((_ is Cons!23589) mapValue!11537)) b!2116615))

(declare-fun m!2571639 () Bool)

(assert (=> b!2116615 m!2571639))

(declare-fun m!2571641 () Bool)

(assert (=> setNonEmpty!14298 m!2571641))

(declare-fun e!1347295 () Bool)

(declare-fun setRes!14301 () Bool)

(declare-fun tp!646239 () Bool)

(declare-fun setElem!14301 () Context!2426)

(declare-fun setNonEmpty!14301 () Bool)

(assert (=> setNonEmpty!14301 (= setRes!14301 (and tp!646239 (inv!31170 setElem!14301) e!1347295))))

(declare-fun setRest!14301 () (InoxSet Context!2426))

(assert (=> setNonEmpty!14301 (= (_1!13430 (_1!13431 (h!28989 (zeroValue!2650 (v!28113 (underlying!4979 (v!28114 (underlying!4980 (cache!2687 cacheFurthestNullable!141))))))))) ((_ map or) (store ((as const (Array Context!2426 Bool)) false) setElem!14301 true) setRest!14301))))

(declare-fun setIsEmpty!14301 () Bool)

(assert (=> setIsEmpty!14301 setRes!14301))

(declare-fun b!2116623 () Bool)

(declare-fun tp!646241 () Bool)

(assert (=> b!2116623 (= e!1347295 tp!646241)))

(declare-fun b!2116622 () Bool)

(declare-fun e!1347296 () Bool)

(declare-fun tp!646240 () Bool)

(assert (=> b!2116622 (= e!1347296 (and setRes!14301 tp!646240))))

(declare-fun condSetEmpty!14301 () Bool)

(assert (=> b!2116622 (= condSetEmpty!14301 (= (_1!13430 (_1!13431 (h!28989 (zeroValue!2650 (v!28113 (underlying!4979 (v!28114 (underlying!4980 (cache!2687 cacheFurthestNullable!141))))))))) ((as const (Array Context!2426 Bool)) false)))))

(assert (=> b!2116499 (= tp!646168 e!1347296)))

(assert (= (and b!2116622 condSetEmpty!14301) setIsEmpty!14301))

(assert (= (and b!2116622 (not condSetEmpty!14301)) setNonEmpty!14301))

(assert (= setNonEmpty!14301 b!2116623))

(assert (= (and b!2116499 ((_ is Cons!23588) (zeroValue!2650 (v!28113 (underlying!4979 (v!28114 (underlying!4980 (cache!2687 cacheFurthestNullable!141)))))))) b!2116622))

(declare-fun m!2571643 () Bool)

(assert (=> setNonEmpty!14301 m!2571643))

(declare-fun setRes!14302 () Bool)

(declare-fun setElem!14302 () Context!2426)

(declare-fun tp!646242 () Bool)

(declare-fun setNonEmpty!14302 () Bool)

(declare-fun e!1347297 () Bool)

(assert (=> setNonEmpty!14302 (= setRes!14302 (and tp!646242 (inv!31170 setElem!14302) e!1347297))))

(declare-fun setRest!14302 () (InoxSet Context!2426))

(assert (=> setNonEmpty!14302 (= (_1!13430 (_1!13431 (h!28989 (minValue!2650 (v!28113 (underlying!4979 (v!28114 (underlying!4980 (cache!2687 cacheFurthestNullable!141))))))))) ((_ map or) (store ((as const (Array Context!2426 Bool)) false) setElem!14302 true) setRest!14302))))

(declare-fun setIsEmpty!14302 () Bool)

(assert (=> setIsEmpty!14302 setRes!14302))

(declare-fun b!2116625 () Bool)

(declare-fun tp!646244 () Bool)

(assert (=> b!2116625 (= e!1347297 tp!646244)))

(declare-fun b!2116624 () Bool)

(declare-fun e!1347298 () Bool)

(declare-fun tp!646243 () Bool)

(assert (=> b!2116624 (= e!1347298 (and setRes!14302 tp!646243))))

(declare-fun condSetEmpty!14302 () Bool)

(assert (=> b!2116624 (= condSetEmpty!14302 (= (_1!13430 (_1!13431 (h!28989 (minValue!2650 (v!28113 (underlying!4979 (v!28114 (underlying!4980 (cache!2687 cacheFurthestNullable!141))))))))) ((as const (Array Context!2426 Bool)) false)))))

(assert (=> b!2116499 (= tp!646163 e!1347298)))

(assert (= (and b!2116624 condSetEmpty!14302) setIsEmpty!14302))

(assert (= (and b!2116624 (not condSetEmpty!14302)) setNonEmpty!14302))

(assert (= setNonEmpty!14302 b!2116625))

(assert (= (and b!2116499 ((_ is Cons!23588) (minValue!2650 (v!28113 (underlying!4979 (v!28114 (underlying!4980 (cache!2687 cacheFurthestNullable!141)))))))) b!2116624))

(declare-fun m!2571645 () Bool)

(assert (=> setNonEmpty!14302 m!2571645))

(declare-fun b!2116626 () Bool)

(declare-fun e!1347300 () Bool)

(declare-fun tp!646249 () Bool)

(assert (=> b!2116626 (= e!1347300 tp!646249)))

(declare-fun b!2116627 () Bool)

(declare-fun e!1347301 () Bool)

(declare-fun tp!646247 () Bool)

(assert (=> b!2116627 (= e!1347301 tp!646247)))

(declare-fun e!1347299 () Bool)

(assert (=> b!2116517 (= tp!646179 e!1347299)))

(declare-fun b!2116628 () Bool)

(declare-fun tp!646245 () Bool)

(declare-fun setRes!14303 () Bool)

(declare-fun tp!646248 () Bool)

(assert (=> b!2116628 (= e!1347299 (and tp!646248 (inv!31170 (_2!13432 (_1!13433 (h!28990 (zeroValue!2651 (v!28115 (underlying!4981 (v!28116 (underlying!4982 (cache!2688 cacheDown!1229)))))))))) e!1347301 tp_is_empty!9475 setRes!14303 tp!646245))))

(declare-fun condSetEmpty!14303 () Bool)

(assert (=> b!2116628 (= condSetEmpty!14303 (= (_2!13433 (h!28990 (zeroValue!2651 (v!28115 (underlying!4981 (v!28116 (underlying!4982 (cache!2688 cacheDown!1229)))))))) ((as const (Array Context!2426 Bool)) false)))))

(declare-fun setIsEmpty!14303 () Bool)

(assert (=> setIsEmpty!14303 setRes!14303))

(declare-fun setNonEmpty!14303 () Bool)

(declare-fun tp!646246 () Bool)

(declare-fun setElem!14303 () Context!2426)

(assert (=> setNonEmpty!14303 (= setRes!14303 (and tp!646246 (inv!31170 setElem!14303) e!1347300))))

(declare-fun setRest!14303 () (InoxSet Context!2426))

(assert (=> setNonEmpty!14303 (= (_2!13433 (h!28990 (zeroValue!2651 (v!28115 (underlying!4981 (v!28116 (underlying!4982 (cache!2688 cacheDown!1229)))))))) ((_ map or) (store ((as const (Array Context!2426 Bool)) false) setElem!14303 true) setRest!14303))))

(assert (= b!2116628 b!2116627))

(assert (= (and b!2116628 condSetEmpty!14303) setIsEmpty!14303))

(assert (= (and b!2116628 (not condSetEmpty!14303)) setNonEmpty!14303))

(assert (= setNonEmpty!14303 b!2116626))

(assert (= (and b!2116517 ((_ is Cons!23589) (zeroValue!2651 (v!28115 (underlying!4981 (v!28116 (underlying!4982 (cache!2688 cacheDown!1229)))))))) b!2116628))

(declare-fun m!2571647 () Bool)

(assert (=> b!2116628 m!2571647))

(declare-fun m!2571649 () Bool)

(assert (=> setNonEmpty!14303 m!2571649))

(declare-fun b!2116629 () Bool)

(declare-fun e!1347303 () Bool)

(declare-fun tp!646254 () Bool)

(assert (=> b!2116629 (= e!1347303 tp!646254)))

(declare-fun b!2116630 () Bool)

(declare-fun e!1347304 () Bool)

(declare-fun tp!646252 () Bool)

(assert (=> b!2116630 (= e!1347304 tp!646252)))

(declare-fun e!1347302 () Bool)

(assert (=> b!2116517 (= tp!646156 e!1347302)))

(declare-fun setRes!14304 () Bool)

(declare-fun tp!646250 () Bool)

(declare-fun tp!646253 () Bool)

(declare-fun b!2116631 () Bool)

(assert (=> b!2116631 (= e!1347302 (and tp!646253 (inv!31170 (_2!13432 (_1!13433 (h!28990 (minValue!2651 (v!28115 (underlying!4981 (v!28116 (underlying!4982 (cache!2688 cacheDown!1229)))))))))) e!1347304 tp_is_empty!9475 setRes!14304 tp!646250))))

(declare-fun condSetEmpty!14304 () Bool)

(assert (=> b!2116631 (= condSetEmpty!14304 (= (_2!13433 (h!28990 (minValue!2651 (v!28115 (underlying!4981 (v!28116 (underlying!4982 (cache!2688 cacheDown!1229)))))))) ((as const (Array Context!2426 Bool)) false)))))

(declare-fun setIsEmpty!14304 () Bool)

(assert (=> setIsEmpty!14304 setRes!14304))

(declare-fun setElem!14304 () Context!2426)

(declare-fun setNonEmpty!14304 () Bool)

(declare-fun tp!646251 () Bool)

(assert (=> setNonEmpty!14304 (= setRes!14304 (and tp!646251 (inv!31170 setElem!14304) e!1347303))))

(declare-fun setRest!14304 () (InoxSet Context!2426))

(assert (=> setNonEmpty!14304 (= (_2!13433 (h!28990 (minValue!2651 (v!28115 (underlying!4981 (v!28116 (underlying!4982 (cache!2688 cacheDown!1229)))))))) ((_ map or) (store ((as const (Array Context!2426 Bool)) false) setElem!14304 true) setRest!14304))))

(assert (= b!2116631 b!2116630))

(assert (= (and b!2116631 condSetEmpty!14304) setIsEmpty!14304))

(assert (= (and b!2116631 (not condSetEmpty!14304)) setNonEmpty!14304))

(assert (= setNonEmpty!14304 b!2116629))

(assert (= (and b!2116517 ((_ is Cons!23589) (minValue!2651 (v!28115 (underlying!4981 (v!28116 (underlying!4982 (cache!2688 cacheDown!1229)))))))) b!2116631))

(declare-fun m!2571651 () Bool)

(assert (=> b!2116631 m!2571651))

(declare-fun m!2571653 () Bool)

(assert (=> setNonEmpty!14304 m!2571653))

(declare-fun setNonEmpty!14309 () Bool)

(declare-fun setRes!14309 () Bool)

(declare-fun tp!646277 () Bool)

(declare-fun setElem!14309 () Context!2426)

(declare-fun e!1347317 () Bool)

(assert (=> setNonEmpty!14309 (= setRes!14309 (and tp!646277 (inv!31170 setElem!14309) e!1347317))))

(declare-fun mapDefault!11543 () List!23670)

(declare-fun setRest!14310 () (InoxSet Context!2426))

(assert (=> setNonEmpty!14309 (= (_2!13429 (h!28987 mapDefault!11543)) ((_ map or) (store ((as const (Array Context!2426 Bool)) false) setElem!14309 true) setRest!14310))))

(declare-fun setIsEmpty!14309 () Bool)

(assert (=> setIsEmpty!14309 setRes!14309))

(declare-fun tp!646274 () Bool)

(declare-fun b!2116646 () Bool)

(declare-fun e!1347322 () Bool)

(declare-fun mapValue!11543 () List!23670)

(declare-fun setRes!14310 () Bool)

(declare-fun e!1347321 () Bool)

(assert (=> b!2116646 (= e!1347321 (and (inv!31170 (_1!13428 (_1!13429 (h!28987 mapValue!11543)))) e!1347322 tp_is_empty!9475 setRes!14310 tp!646274))))

(declare-fun condSetEmpty!14309 () Bool)

(assert (=> b!2116646 (= condSetEmpty!14309 (= (_2!13429 (h!28987 mapValue!11543)) ((as const (Array Context!2426 Bool)) false)))))

(declare-fun condMapEmpty!11543 () Bool)

(assert (=> mapNonEmpty!11535 (= condMapEmpty!11543 (= mapRest!11537 ((as const (Array (_ BitVec 32) List!23670)) mapDefault!11543)))))

(declare-fun e!1347318 () Bool)

(declare-fun mapRes!11543 () Bool)

(assert (=> mapNonEmpty!11535 (= tp!646178 (and e!1347318 mapRes!11543))))

(declare-fun b!2116647 () Bool)

(declare-fun e!1347319 () Bool)

(declare-fun tp!646275 () Bool)

(assert (=> b!2116647 (= e!1347319 tp!646275)))

(declare-fun setIsEmpty!14310 () Bool)

(assert (=> setIsEmpty!14310 setRes!14310))

(declare-fun mapNonEmpty!11543 () Bool)

(declare-fun tp!646278 () Bool)

(assert (=> mapNonEmpty!11543 (= mapRes!11543 (and tp!646278 e!1347321))))

(declare-fun mapKey!11543 () (_ BitVec 32))

(declare-fun mapRest!11543 () (Array (_ BitVec 32) List!23670))

(assert (=> mapNonEmpty!11543 (= mapRest!11537 (store mapRest!11543 mapKey!11543 mapValue!11543))))

(declare-fun b!2116648 () Bool)

(declare-fun tp!646273 () Bool)

(assert (=> b!2116648 (= e!1347322 tp!646273)))

(declare-fun e!1347320 () Bool)

(declare-fun tp!646280 () Bool)

(declare-fun setElem!14310 () Context!2426)

(declare-fun setNonEmpty!14310 () Bool)

(assert (=> setNonEmpty!14310 (= setRes!14310 (and tp!646280 (inv!31170 setElem!14310) e!1347320))))

(declare-fun setRest!14309 () (InoxSet Context!2426))

(assert (=> setNonEmpty!14310 (= (_2!13429 (h!28987 mapValue!11543)) ((_ map or) (store ((as const (Array Context!2426 Bool)) false) setElem!14310 true) setRest!14309))))

(declare-fun b!2116649 () Bool)

(declare-fun tp!646279 () Bool)

(assert (=> b!2116649 (= e!1347317 tp!646279)))

(declare-fun mapIsEmpty!11543 () Bool)

(assert (=> mapIsEmpty!11543 mapRes!11543))

(declare-fun b!2116650 () Bool)

(declare-fun tp!646276 () Bool)

(assert (=> b!2116650 (= e!1347320 tp!646276)))

(declare-fun b!2116651 () Bool)

(declare-fun tp!646281 () Bool)

(assert (=> b!2116651 (= e!1347318 (and (inv!31170 (_1!13428 (_1!13429 (h!28987 mapDefault!11543)))) e!1347319 tp_is_empty!9475 setRes!14309 tp!646281))))

(declare-fun condSetEmpty!14310 () Bool)

(assert (=> b!2116651 (= condSetEmpty!14310 (= (_2!13429 (h!28987 mapDefault!11543)) ((as const (Array Context!2426 Bool)) false)))))

(assert (= (and mapNonEmpty!11535 condMapEmpty!11543) mapIsEmpty!11543))

(assert (= (and mapNonEmpty!11535 (not condMapEmpty!11543)) mapNonEmpty!11543))

(assert (= b!2116646 b!2116648))

(assert (= (and b!2116646 condSetEmpty!14309) setIsEmpty!14310))

(assert (= (and b!2116646 (not condSetEmpty!14309)) setNonEmpty!14310))

(assert (= setNonEmpty!14310 b!2116650))

(assert (= (and mapNonEmpty!11543 ((_ is Cons!23586) mapValue!11543)) b!2116646))

(assert (= b!2116651 b!2116647))

(assert (= (and b!2116651 condSetEmpty!14310) setIsEmpty!14309))

(assert (= (and b!2116651 (not condSetEmpty!14310)) setNonEmpty!14309))

(assert (= setNonEmpty!14309 b!2116649))

(assert (= (and mapNonEmpty!11535 ((_ is Cons!23586) mapDefault!11543)) b!2116651))

(declare-fun m!2571655 () Bool)

(assert (=> mapNonEmpty!11543 m!2571655))

(declare-fun m!2571657 () Bool)

(assert (=> b!2116651 m!2571657))

(declare-fun m!2571659 () Bool)

(assert (=> b!2116646 m!2571659))

(declare-fun m!2571661 () Bool)

(assert (=> setNonEmpty!14310 m!2571661))

(declare-fun m!2571663 () Bool)

(assert (=> setNonEmpty!14309 m!2571663))

(declare-fun b!2116660 () Bool)

(declare-fun e!1347330 () Bool)

(declare-fun tp!646291 () Bool)

(assert (=> b!2116660 (= e!1347330 tp!646291)))

(declare-fun setElem!14313 () Context!2426)

(declare-fun tp!646290 () Bool)

(declare-fun setNonEmpty!14313 () Bool)

(declare-fun setRes!14313 () Bool)

(declare-fun e!1347329 () Bool)

(assert (=> setNonEmpty!14313 (= setRes!14313 (and tp!646290 (inv!31170 setElem!14313) e!1347329))))

(declare-fun setRest!14313 () (InoxSet Context!2426))

(assert (=> setNonEmpty!14313 (= (_2!13429 (h!28987 mapValue!11535)) ((_ map or) (store ((as const (Array Context!2426 Bool)) false) setElem!14313 true) setRest!14313))))

(declare-fun e!1347331 () Bool)

(declare-fun tp!646293 () Bool)

(declare-fun b!2116661 () Bool)

(assert (=> b!2116661 (= e!1347331 (and (inv!31170 (_1!13428 (_1!13429 (h!28987 mapValue!11535)))) e!1347330 tp_is_empty!9475 setRes!14313 tp!646293))))

(declare-fun condSetEmpty!14313 () Bool)

(assert (=> b!2116661 (= condSetEmpty!14313 (= (_2!13429 (h!28987 mapValue!11535)) ((as const (Array Context!2426 Bool)) false)))))

(assert (=> mapNonEmpty!11535 (= tp!646161 e!1347331)))

(declare-fun b!2116662 () Bool)

(declare-fun tp!646292 () Bool)

(assert (=> b!2116662 (= e!1347329 tp!646292)))

(declare-fun setIsEmpty!14313 () Bool)

(assert (=> setIsEmpty!14313 setRes!14313))

(assert (= b!2116661 b!2116660))

(assert (= (and b!2116661 condSetEmpty!14313) setIsEmpty!14313))

(assert (= (and b!2116661 (not condSetEmpty!14313)) setNonEmpty!14313))

(assert (= setNonEmpty!14313 b!2116662))

(assert (= (and mapNonEmpty!11535 ((_ is Cons!23586) mapValue!11535)) b!2116661))

(declare-fun m!2571665 () Bool)

(assert (=> setNonEmpty!14313 m!2571665))

(declare-fun m!2571667 () Bool)

(assert (=> b!2116661 m!2571667))

(declare-fun b!2116663 () Bool)

(declare-fun e!1347333 () Bool)

(declare-fun tp!646298 () Bool)

(assert (=> b!2116663 (= e!1347333 tp!646298)))

(declare-fun b!2116664 () Bool)

(declare-fun e!1347334 () Bool)

(declare-fun tp!646296 () Bool)

(assert (=> b!2116664 (= e!1347334 tp!646296)))

(declare-fun e!1347332 () Bool)

(assert (=> b!2116516 (= tp!646184 e!1347332)))

(declare-fun setRes!14314 () Bool)

(declare-fun tp!646294 () Bool)

(declare-fun b!2116665 () Bool)

(declare-fun tp!646297 () Bool)

(assert (=> b!2116665 (= e!1347332 (and tp!646297 (inv!31170 (_2!13432 (_1!13433 (h!28990 mapDefault!11536)))) e!1347334 tp_is_empty!9475 setRes!14314 tp!646294))))

(declare-fun condSetEmpty!14314 () Bool)

(assert (=> b!2116665 (= condSetEmpty!14314 (= (_2!13433 (h!28990 mapDefault!11536)) ((as const (Array Context!2426 Bool)) false)))))

(declare-fun setIsEmpty!14314 () Bool)

(assert (=> setIsEmpty!14314 setRes!14314))

(declare-fun tp!646295 () Bool)

(declare-fun setNonEmpty!14314 () Bool)

(declare-fun setElem!14314 () Context!2426)

(assert (=> setNonEmpty!14314 (= setRes!14314 (and tp!646295 (inv!31170 setElem!14314) e!1347333))))

(declare-fun setRest!14314 () (InoxSet Context!2426))

(assert (=> setNonEmpty!14314 (= (_2!13433 (h!28990 mapDefault!11536)) ((_ map or) (store ((as const (Array Context!2426 Bool)) false) setElem!14314 true) setRest!14314))))

(assert (= b!2116665 b!2116664))

(assert (= (and b!2116665 condSetEmpty!14314) setIsEmpty!14314))

(assert (= (and b!2116665 (not condSetEmpty!14314)) setNonEmpty!14314))

(assert (= setNonEmpty!14314 b!2116663))

(assert (= (and b!2116516 ((_ is Cons!23589) mapDefault!11536)) b!2116665))

(declare-fun m!2571669 () Bool)

(assert (=> b!2116665 m!2571669))

(declare-fun m!2571671 () Bool)

(assert (=> setNonEmpty!14314 m!2571671))

(declare-fun b!2116678 () Bool)

(declare-fun e!1347337 () Bool)

(declare-fun tp!646312 () Bool)

(assert (=> b!2116678 (= e!1347337 tp!646312)))

(declare-fun b!2116679 () Bool)

(declare-fun tp!646313 () Bool)

(declare-fun tp!646311 () Bool)

(assert (=> b!2116679 (= e!1347337 (and tp!646313 tp!646311))))

(declare-fun b!2116676 () Bool)

(assert (=> b!2116676 (= e!1347337 tp_is_empty!9475)))

(declare-fun b!2116677 () Bool)

(declare-fun tp!646309 () Bool)

(declare-fun tp!646310 () Bool)

(assert (=> b!2116677 (= e!1347337 (and tp!646309 tp!646310))))

(assert (=> b!2116501 (= tp!646164 e!1347337)))

(assert (= (and b!2116501 ((_ is ElementMatch!5643) (regOne!11799 r!15373))) b!2116676))

(assert (= (and b!2116501 ((_ is Concat!9945) (regOne!11799 r!15373))) b!2116677))

(assert (= (and b!2116501 ((_ is Star!5643) (regOne!11799 r!15373))) b!2116678))

(assert (= (and b!2116501 ((_ is Union!5643) (regOne!11799 r!15373))) b!2116679))

(declare-fun b!2116682 () Bool)

(declare-fun e!1347338 () Bool)

(declare-fun tp!646317 () Bool)

(assert (=> b!2116682 (= e!1347338 tp!646317)))

(declare-fun b!2116683 () Bool)

(declare-fun tp!646318 () Bool)

(declare-fun tp!646316 () Bool)

(assert (=> b!2116683 (= e!1347338 (and tp!646318 tp!646316))))

(declare-fun b!2116680 () Bool)

(assert (=> b!2116680 (= e!1347338 tp_is_empty!9475)))

(declare-fun b!2116681 () Bool)

(declare-fun tp!646314 () Bool)

(declare-fun tp!646315 () Bool)

(assert (=> b!2116681 (= e!1347338 (and tp!646314 tp!646315))))

(assert (=> b!2116501 (= tp!646166 e!1347338)))

(assert (= (and b!2116501 ((_ is ElementMatch!5643) (regTwo!11799 r!15373))) b!2116680))

(assert (= (and b!2116501 ((_ is Concat!9945) (regTwo!11799 r!15373))) b!2116681))

(assert (= (and b!2116501 ((_ is Star!5643) (regTwo!11799 r!15373))) b!2116682))

(assert (= (and b!2116501 ((_ is Union!5643) (regTwo!11799 r!15373))) b!2116683))

(declare-fun b!2116684 () Bool)

(declare-fun e!1347340 () Bool)

(declare-fun tp!646320 () Bool)

(assert (=> b!2116684 (= e!1347340 tp!646320)))

(declare-fun e!1347339 () Bool)

(declare-fun tp!646319 () Bool)

(declare-fun setElem!14315 () Context!2426)

(declare-fun setRes!14315 () Bool)

(declare-fun setNonEmpty!14315 () Bool)

(assert (=> setNonEmpty!14315 (= setRes!14315 (and tp!646319 (inv!31170 setElem!14315) e!1347339))))

(declare-fun setRest!14315 () (InoxSet Context!2426))

(assert (=> setNonEmpty!14315 (= (_2!13429 (h!28987 (zeroValue!2649 (v!28111 (underlying!4977 (v!28112 (underlying!4978 (cache!2686 cacheUp!1110)))))))) ((_ map or) (store ((as const (Array Context!2426 Bool)) false) setElem!14315 true) setRest!14315))))

(declare-fun tp!646322 () Bool)

(declare-fun b!2116685 () Bool)

(declare-fun e!1347341 () Bool)

(assert (=> b!2116685 (= e!1347341 (and (inv!31170 (_1!13428 (_1!13429 (h!28987 (zeroValue!2649 (v!28111 (underlying!4977 (v!28112 (underlying!4978 (cache!2686 cacheUp!1110)))))))))) e!1347340 tp_is_empty!9475 setRes!14315 tp!646322))))

(declare-fun condSetEmpty!14315 () Bool)

(assert (=> b!2116685 (= condSetEmpty!14315 (= (_2!13429 (h!28987 (zeroValue!2649 (v!28111 (underlying!4977 (v!28112 (underlying!4978 (cache!2686 cacheUp!1110)))))))) ((as const (Array Context!2426 Bool)) false)))))

(assert (=> b!2116491 (= tp!646159 e!1347341)))

(declare-fun b!2116686 () Bool)

(declare-fun tp!646321 () Bool)

(assert (=> b!2116686 (= e!1347339 tp!646321)))

(declare-fun setIsEmpty!14315 () Bool)

(assert (=> setIsEmpty!14315 setRes!14315))

(assert (= b!2116685 b!2116684))

(assert (= (and b!2116685 condSetEmpty!14315) setIsEmpty!14315))

(assert (= (and b!2116685 (not condSetEmpty!14315)) setNonEmpty!14315))

(assert (= setNonEmpty!14315 b!2116686))

(assert (= (and b!2116491 ((_ is Cons!23586) (zeroValue!2649 (v!28111 (underlying!4977 (v!28112 (underlying!4978 (cache!2686 cacheUp!1110)))))))) b!2116685))

(declare-fun m!2571673 () Bool)

(assert (=> setNonEmpty!14315 m!2571673))

(declare-fun m!2571675 () Bool)

(assert (=> b!2116685 m!2571675))

(declare-fun b!2116687 () Bool)

(declare-fun e!1347343 () Bool)

(declare-fun tp!646324 () Bool)

(assert (=> b!2116687 (= e!1347343 tp!646324)))

(declare-fun setRes!14316 () Bool)

(declare-fun setNonEmpty!14316 () Bool)

(declare-fun tp!646323 () Bool)

(declare-fun e!1347342 () Bool)

(declare-fun setElem!14316 () Context!2426)

(assert (=> setNonEmpty!14316 (= setRes!14316 (and tp!646323 (inv!31170 setElem!14316) e!1347342))))

(declare-fun setRest!14316 () (InoxSet Context!2426))

(assert (=> setNonEmpty!14316 (= (_2!13429 (h!28987 (minValue!2649 (v!28111 (underlying!4977 (v!28112 (underlying!4978 (cache!2686 cacheUp!1110)))))))) ((_ map or) (store ((as const (Array Context!2426 Bool)) false) setElem!14316 true) setRest!14316))))

(declare-fun tp!646326 () Bool)

(declare-fun b!2116688 () Bool)

(declare-fun e!1347344 () Bool)

(assert (=> b!2116688 (= e!1347344 (and (inv!31170 (_1!13428 (_1!13429 (h!28987 (minValue!2649 (v!28111 (underlying!4977 (v!28112 (underlying!4978 (cache!2686 cacheUp!1110)))))))))) e!1347343 tp_is_empty!9475 setRes!14316 tp!646326))))

(declare-fun condSetEmpty!14316 () Bool)

(assert (=> b!2116688 (= condSetEmpty!14316 (= (_2!13429 (h!28987 (minValue!2649 (v!28111 (underlying!4977 (v!28112 (underlying!4978 (cache!2686 cacheUp!1110)))))))) ((as const (Array Context!2426 Bool)) false)))))

(assert (=> b!2116491 (= tp!646177 e!1347344)))

(declare-fun b!2116689 () Bool)

(declare-fun tp!646325 () Bool)

(assert (=> b!2116689 (= e!1347342 tp!646325)))

(declare-fun setIsEmpty!14316 () Bool)

(assert (=> setIsEmpty!14316 setRes!14316))

(assert (= b!2116688 b!2116687))

(assert (= (and b!2116688 condSetEmpty!14316) setIsEmpty!14316))

(assert (= (and b!2116688 (not condSetEmpty!14316)) setNonEmpty!14316))

(assert (= setNonEmpty!14316 b!2116689))

(assert (= (and b!2116491 ((_ is Cons!23586) (minValue!2649 (v!28111 (underlying!4977 (v!28112 (underlying!4978 (cache!2686 cacheUp!1110)))))))) b!2116688))

(declare-fun m!2571677 () Bool)

(assert (=> setNonEmpty!14316 m!2571677))

(declare-fun m!2571679 () Bool)

(assert (=> b!2116688 m!2571679))

(declare-fun b!2116690 () Bool)

(declare-fun e!1347346 () Bool)

(declare-fun tp!646328 () Bool)

(assert (=> b!2116690 (= e!1347346 tp!646328)))

(declare-fun e!1347345 () Bool)

(declare-fun tp!646327 () Bool)

(declare-fun setRes!14317 () Bool)

(declare-fun setElem!14317 () Context!2426)

(declare-fun setNonEmpty!14317 () Bool)

(assert (=> setNonEmpty!14317 (= setRes!14317 (and tp!646327 (inv!31170 setElem!14317) e!1347345))))

(declare-fun setRest!14317 () (InoxSet Context!2426))

(assert (=> setNonEmpty!14317 (= (_2!13429 (h!28987 mapDefault!11537)) ((_ map or) (store ((as const (Array Context!2426 Bool)) false) setElem!14317 true) setRest!14317))))

(declare-fun b!2116691 () Bool)

(declare-fun e!1347347 () Bool)

(declare-fun tp!646330 () Bool)

(assert (=> b!2116691 (= e!1347347 (and (inv!31170 (_1!13428 (_1!13429 (h!28987 mapDefault!11537)))) e!1347346 tp_is_empty!9475 setRes!14317 tp!646330))))

(declare-fun condSetEmpty!14317 () Bool)

(assert (=> b!2116691 (= condSetEmpty!14317 (= (_2!13429 (h!28987 mapDefault!11537)) ((as const (Array Context!2426 Bool)) false)))))

(assert (=> b!2116500 (= tp!646183 e!1347347)))

(declare-fun b!2116692 () Bool)

(declare-fun tp!646329 () Bool)

(assert (=> b!2116692 (= e!1347345 tp!646329)))

(declare-fun setIsEmpty!14317 () Bool)

(assert (=> setIsEmpty!14317 setRes!14317))

(assert (= b!2116691 b!2116690))

(assert (= (and b!2116691 condSetEmpty!14317) setIsEmpty!14317))

(assert (= (and b!2116691 (not condSetEmpty!14317)) setNonEmpty!14317))

(assert (= setNonEmpty!14317 b!2116692))

(assert (= (and b!2116500 ((_ is Cons!23586) mapDefault!11537)) b!2116691))

(declare-fun m!2571681 () Bool)

(assert (=> setNonEmpty!14317 m!2571681))

(declare-fun m!2571683 () Bool)

(assert (=> b!2116691 m!2571683))

(declare-fun b!2116695 () Bool)

(declare-fun e!1347348 () Bool)

(declare-fun tp!646334 () Bool)

(assert (=> b!2116695 (= e!1347348 tp!646334)))

(declare-fun b!2116696 () Bool)

(declare-fun tp!646335 () Bool)

(declare-fun tp!646333 () Bool)

(assert (=> b!2116696 (= e!1347348 (and tp!646335 tp!646333))))

(declare-fun b!2116693 () Bool)

(assert (=> b!2116693 (= e!1347348 tp_is_empty!9475)))

(declare-fun b!2116694 () Bool)

(declare-fun tp!646331 () Bool)

(declare-fun tp!646332 () Bool)

(assert (=> b!2116694 (= e!1347348 (and tp!646331 tp!646332))))

(assert (=> b!2116521 (= tp!646176 e!1347348)))

(assert (= (and b!2116521 ((_ is ElementMatch!5643) (regOne!11798 r!15373))) b!2116693))

(assert (= (and b!2116521 ((_ is Concat!9945) (regOne!11798 r!15373))) b!2116694))

(assert (= (and b!2116521 ((_ is Star!5643) (regOne!11798 r!15373))) b!2116695))

(assert (= (and b!2116521 ((_ is Union!5643) (regOne!11798 r!15373))) b!2116696))

(declare-fun b!2116699 () Bool)

(declare-fun e!1347349 () Bool)

(declare-fun tp!646339 () Bool)

(assert (=> b!2116699 (= e!1347349 tp!646339)))

(declare-fun b!2116700 () Bool)

(declare-fun tp!646340 () Bool)

(declare-fun tp!646338 () Bool)

(assert (=> b!2116700 (= e!1347349 (and tp!646340 tp!646338))))

(declare-fun b!2116697 () Bool)

(assert (=> b!2116697 (= e!1347349 tp_is_empty!9475)))

(declare-fun b!2116698 () Bool)

(declare-fun tp!646336 () Bool)

(declare-fun tp!646337 () Bool)

(assert (=> b!2116698 (= e!1347349 (and tp!646336 tp!646337))))

(assert (=> b!2116521 (= tp!646170 e!1347349)))

(assert (= (and b!2116521 ((_ is ElementMatch!5643) (regTwo!11798 r!15373))) b!2116697))

(assert (= (and b!2116521 ((_ is Concat!9945) (regTwo!11798 r!15373))) b!2116698))

(assert (= (and b!2116521 ((_ is Star!5643) (regTwo!11798 r!15373))) b!2116699))

(assert (= (and b!2116521 ((_ is Union!5643) (regTwo!11798 r!15373))) b!2116700))

(declare-fun b!2116703 () Bool)

(declare-fun e!1347350 () Bool)

(declare-fun tp!646344 () Bool)

(assert (=> b!2116703 (= e!1347350 tp!646344)))

(declare-fun b!2116704 () Bool)

(declare-fun tp!646345 () Bool)

(declare-fun tp!646343 () Bool)

(assert (=> b!2116704 (= e!1347350 (and tp!646345 tp!646343))))

(declare-fun b!2116701 () Bool)

(assert (=> b!2116701 (= e!1347350 tp_is_empty!9475)))

(declare-fun b!2116702 () Bool)

(declare-fun tp!646341 () Bool)

(declare-fun tp!646342 () Bool)

(assert (=> b!2116702 (= e!1347350 (and tp!646341 tp!646342))))

(assert (=> b!2116505 (= tp!646175 e!1347350)))

(assert (= (and b!2116505 ((_ is ElementMatch!5643) (reg!5972 r!15373))) b!2116701))

(assert (= (and b!2116505 ((_ is Concat!9945) (reg!5972 r!15373))) b!2116702))

(assert (= (and b!2116505 ((_ is Star!5643) (reg!5972 r!15373))) b!2116703))

(assert (= (and b!2116505 ((_ is Union!5643) (reg!5972 r!15373))) b!2116704))

(declare-fun b!2116713 () Bool)

(declare-fun tp!646353 () Bool)

(declare-fun tp!646352 () Bool)

(declare-fun e!1347356 () Bool)

(assert (=> b!2116713 (= e!1347356 (and (inv!31163 (left!18274 (c!339360 totalInput!1306))) tp!646352 (inv!31163 (right!18604 (c!339360 totalInput!1306))) tp!646353))))

(declare-fun b!2116715 () Bool)

(declare-fun e!1347355 () Bool)

(declare-fun tp!646354 () Bool)

(assert (=> b!2116715 (= e!1347355 tp!646354)))

(declare-fun b!2116714 () Bool)

(declare-fun inv!31171 (IArray!15569) Bool)

(assert (=> b!2116714 (= e!1347356 (and (inv!31171 (xs!10724 (c!339360 totalInput!1306))) e!1347355))))

(assert (=> b!2116495 (= tp!646181 (and (inv!31163 (c!339360 totalInput!1306)) e!1347356))))

(assert (= (and b!2116495 ((_ is Node!7782) (c!339360 totalInput!1306))) b!2116713))

(assert (= b!2116714 b!2116715))

(assert (= (and b!2116495 ((_ is Leaf!11371) (c!339360 totalInput!1306))) b!2116714))

(declare-fun m!2571685 () Bool)

(assert (=> b!2116713 m!2571685))

(declare-fun m!2571687 () Bool)

(assert (=> b!2116713 m!2571687))

(declare-fun m!2571689 () Bool)

(assert (=> b!2116714 m!2571689))

(assert (=> b!2116495 m!2571541))

(declare-fun tp!646355 () Bool)

(declare-fun tp!646356 () Bool)

(declare-fun e!1347358 () Bool)

(declare-fun b!2116716 () Bool)

(assert (=> b!2116716 (= e!1347358 (and (inv!31163 (left!18274 (c!339360 (totalInput!2860 cacheFurthestNullable!141)))) tp!646355 (inv!31163 (right!18604 (c!339360 (totalInput!2860 cacheFurthestNullable!141)))) tp!646356))))

(declare-fun b!2116718 () Bool)

(declare-fun e!1347357 () Bool)

(declare-fun tp!646357 () Bool)

(assert (=> b!2116718 (= e!1347357 tp!646357)))

(declare-fun b!2116717 () Bool)

(assert (=> b!2116717 (= e!1347358 (and (inv!31171 (xs!10724 (c!339360 (totalInput!2860 cacheFurthestNullable!141)))) e!1347357))))

(assert (=> b!2116506 (= tp!646158 (and (inv!31163 (c!339360 (totalInput!2860 cacheFurthestNullable!141))) e!1347358))))

(assert (= (and b!2116506 ((_ is Node!7782) (c!339360 (totalInput!2860 cacheFurthestNullable!141)))) b!2116716))

(assert (= b!2116717 b!2116718))

(assert (= (and b!2116506 ((_ is Leaf!11371) (c!339360 (totalInput!2860 cacheFurthestNullable!141)))) b!2116717))

(declare-fun m!2571691 () Bool)

(assert (=> b!2116716 m!2571691))

(declare-fun m!2571693 () Bool)

(assert (=> b!2116716 m!2571693))

(declare-fun m!2571695 () Bool)

(assert (=> b!2116717 m!2571695))

(assert (=> b!2116506 m!2571555))

(declare-fun setElem!14318 () Context!2426)

(declare-fun e!1347359 () Bool)

(declare-fun setNonEmpty!14318 () Bool)

(declare-fun setRes!14318 () Bool)

(declare-fun tp!646358 () Bool)

(assert (=> setNonEmpty!14318 (= setRes!14318 (and tp!646358 (inv!31170 setElem!14318) e!1347359))))

(declare-fun setRest!14318 () (InoxSet Context!2426))

(assert (=> setNonEmpty!14318 (= (_1!13430 (_1!13431 (h!28989 mapDefault!11535))) ((_ map or) (store ((as const (Array Context!2426 Bool)) false) setElem!14318 true) setRest!14318))))

(declare-fun setIsEmpty!14318 () Bool)

(assert (=> setIsEmpty!14318 setRes!14318))

(declare-fun b!2116720 () Bool)

(declare-fun tp!646360 () Bool)

(assert (=> b!2116720 (= e!1347359 tp!646360)))

(declare-fun b!2116719 () Bool)

(declare-fun e!1347360 () Bool)

(declare-fun tp!646359 () Bool)

(assert (=> b!2116719 (= e!1347360 (and setRes!14318 tp!646359))))

(declare-fun condSetEmpty!14318 () Bool)

(assert (=> b!2116719 (= condSetEmpty!14318 (= (_1!13430 (_1!13431 (h!28989 mapDefault!11535))) ((as const (Array Context!2426 Bool)) false)))))

(assert (=> b!2116498 (= tp!646160 e!1347360)))

(assert (= (and b!2116719 condSetEmpty!14318) setIsEmpty!14318))

(assert (= (and b!2116719 (not condSetEmpty!14318)) setNonEmpty!14318))

(assert (= setNonEmpty!14318 b!2116720))

(assert (= (and b!2116498 ((_ is Cons!23588) mapDefault!11535)) b!2116719))

(declare-fun m!2571697 () Bool)

(assert (=> setNonEmpty!14318 m!2571697))

(declare-fun tp!646361 () Bool)

(declare-fun b!2116721 () Bool)

(declare-fun e!1347362 () Bool)

(declare-fun tp!646362 () Bool)

(assert (=> b!2116721 (= e!1347362 (and (inv!31163 (left!18274 (c!339360 input!6660))) tp!646361 (inv!31163 (right!18604 (c!339360 input!6660))) tp!646362))))

(declare-fun b!2116723 () Bool)

(declare-fun e!1347361 () Bool)

(declare-fun tp!646363 () Bool)

(assert (=> b!2116723 (= e!1347361 tp!646363)))

(declare-fun b!2116722 () Bool)

(assert (=> b!2116722 (= e!1347362 (and (inv!31171 (xs!10724 (c!339360 input!6660))) e!1347361))))

(assert (=> b!2116507 (= tp!646157 (and (inv!31163 (c!339360 input!6660)) e!1347362))))

(assert (= (and b!2116507 ((_ is Node!7782) (c!339360 input!6660))) b!2116721))

(assert (= b!2116722 b!2116723))

(assert (= (and b!2116507 ((_ is Leaf!11371) (c!339360 input!6660))) b!2116722))

(declare-fun m!2571699 () Bool)

(assert (=> b!2116721 m!2571699))

(declare-fun m!2571701 () Bool)

(assert (=> b!2116721 m!2571701))

(declare-fun m!2571703 () Bool)

(assert (=> b!2116722 m!2571703))

(assert (=> b!2116507 m!2571539))

(declare-fun b!2116734 () Bool)

(declare-fun e!1347374 () Bool)

(declare-fun tp!646384 () Bool)

(assert (=> b!2116734 (= e!1347374 tp!646384)))

(declare-fun b!2116735 () Bool)

(declare-fun e!1347373 () Bool)

(declare-fun setRes!14323 () Bool)

(declare-fun tp!646381 () Bool)

(assert (=> b!2116735 (= e!1347373 (and setRes!14323 tp!646381))))

(declare-fun condSetEmpty!14324 () Bool)

(declare-fun mapDefault!11546 () List!23672)

(assert (=> b!2116735 (= condSetEmpty!14324 (= (_1!13430 (_1!13431 (h!28989 mapDefault!11546))) ((as const (Array Context!2426 Bool)) false)))))

(declare-fun mapNonEmpty!11546 () Bool)

(declare-fun mapRes!11546 () Bool)

(declare-fun tp!646382 () Bool)

(declare-fun e!1347371 () Bool)

(assert (=> mapNonEmpty!11546 (= mapRes!11546 (and tp!646382 e!1347371))))

(declare-fun mapKey!11546 () (_ BitVec 32))

(declare-fun mapRest!11546 () (Array (_ BitVec 32) List!23672))

(declare-fun mapValue!11546 () List!23672)

(assert (=> mapNonEmpty!11546 (= mapRest!11535 (store mapRest!11546 mapKey!11546 mapValue!11546))))

(declare-fun setIsEmpty!14323 () Bool)

(assert (=> setIsEmpty!14323 setRes!14323))

(declare-fun condMapEmpty!11546 () Bool)

(assert (=> mapNonEmpty!11537 (= condMapEmpty!11546 (= mapRest!11535 ((as const (Array (_ BitVec 32) List!23672)) mapDefault!11546)))))

(assert (=> mapNonEmpty!11537 (= tp!646167 (and e!1347373 mapRes!11546))))

(declare-fun b!2116736 () Bool)

(declare-fun e!1347372 () Bool)

(declare-fun tp!646378 () Bool)

(assert (=> b!2116736 (= e!1347372 tp!646378)))

(declare-fun setElem!14323 () Context!2426)

(declare-fun tp!646383 () Bool)

(declare-fun setNonEmpty!14323 () Bool)

(assert (=> setNonEmpty!14323 (= setRes!14323 (and tp!646383 (inv!31170 setElem!14323) e!1347374))))

(declare-fun setRest!14324 () (InoxSet Context!2426))

(assert (=> setNonEmpty!14323 (= (_1!13430 (_1!13431 (h!28989 mapDefault!11546))) ((_ map or) (store ((as const (Array Context!2426 Bool)) false) setElem!14323 true) setRest!14324))))

(declare-fun mapIsEmpty!11546 () Bool)

(assert (=> mapIsEmpty!11546 mapRes!11546))

(declare-fun setIsEmpty!14324 () Bool)

(declare-fun setRes!14324 () Bool)

(assert (=> setIsEmpty!14324 setRes!14324))

(declare-fun b!2116737 () Bool)

(declare-fun tp!646379 () Bool)

(assert (=> b!2116737 (= e!1347371 (and setRes!14324 tp!646379))))

(declare-fun condSetEmpty!14323 () Bool)

(assert (=> b!2116737 (= condSetEmpty!14323 (= (_1!13430 (_1!13431 (h!28989 mapValue!11546))) ((as const (Array Context!2426 Bool)) false)))))

(declare-fun setNonEmpty!14324 () Bool)

(declare-fun tp!646380 () Bool)

(declare-fun setElem!14324 () Context!2426)

(assert (=> setNonEmpty!14324 (= setRes!14324 (and tp!646380 (inv!31170 setElem!14324) e!1347372))))

(declare-fun setRest!14323 () (InoxSet Context!2426))

(assert (=> setNonEmpty!14324 (= (_1!13430 (_1!13431 (h!28989 mapValue!11546))) ((_ map or) (store ((as const (Array Context!2426 Bool)) false) setElem!14324 true) setRest!14323))))

(assert (= (and mapNonEmpty!11537 condMapEmpty!11546) mapIsEmpty!11546))

(assert (= (and mapNonEmpty!11537 (not condMapEmpty!11546)) mapNonEmpty!11546))

(assert (= (and b!2116737 condSetEmpty!14323) setIsEmpty!14324))

(assert (= (and b!2116737 (not condSetEmpty!14323)) setNonEmpty!14324))

(assert (= setNonEmpty!14324 b!2116736))

(assert (= (and mapNonEmpty!11546 ((_ is Cons!23588) mapValue!11546)) b!2116737))

(assert (= (and b!2116735 condSetEmpty!14324) setIsEmpty!14323))

(assert (= (and b!2116735 (not condSetEmpty!14324)) setNonEmpty!14323))

(assert (= setNonEmpty!14323 b!2116734))

(assert (= (and mapNonEmpty!11537 ((_ is Cons!23588) mapDefault!11546)) b!2116735))

(declare-fun m!2571705 () Bool)

(assert (=> mapNonEmpty!11546 m!2571705))

(declare-fun m!2571707 () Bool)

(assert (=> setNonEmpty!14323 m!2571707))

(declare-fun m!2571709 () Bool)

(assert (=> setNonEmpty!14324 m!2571709))

(declare-fun setElem!14325 () Context!2426)

(declare-fun e!1347375 () Bool)

(declare-fun setRes!14325 () Bool)

(declare-fun tp!646385 () Bool)

(declare-fun setNonEmpty!14325 () Bool)

(assert (=> setNonEmpty!14325 (= setRes!14325 (and tp!646385 (inv!31170 setElem!14325) e!1347375))))

(declare-fun setRest!14325 () (InoxSet Context!2426))

(assert (=> setNonEmpty!14325 (= (_1!13430 (_1!13431 (h!28989 mapValue!11536))) ((_ map or) (store ((as const (Array Context!2426 Bool)) false) setElem!14325 true) setRest!14325))))

(declare-fun setIsEmpty!14325 () Bool)

(assert (=> setIsEmpty!14325 setRes!14325))

(declare-fun b!2116739 () Bool)

(declare-fun tp!646387 () Bool)

(assert (=> b!2116739 (= e!1347375 tp!646387)))

(declare-fun b!2116738 () Bool)

(declare-fun e!1347376 () Bool)

(declare-fun tp!646386 () Bool)

(assert (=> b!2116738 (= e!1347376 (and setRes!14325 tp!646386))))

(declare-fun condSetEmpty!14325 () Bool)

(assert (=> b!2116738 (= condSetEmpty!14325 (= (_1!13430 (_1!13431 (h!28989 mapValue!11536))) ((as const (Array Context!2426 Bool)) false)))))

(assert (=> mapNonEmpty!11537 (= tp!646174 e!1347376)))

(assert (= (and b!2116738 condSetEmpty!14325) setIsEmpty!14325))

(assert (= (and b!2116738 (not condSetEmpty!14325)) setNonEmpty!14325))

(assert (= setNonEmpty!14325 b!2116739))

(assert (= (and mapNonEmpty!11537 ((_ is Cons!23588) mapValue!11536)) b!2116738))

(declare-fun m!2571711 () Bool)

(assert (=> setNonEmpty!14325 m!2571711))

(check-sat (not b!2116603) (not setNonEmpty!14318) (not b!2116720) (not b!2116738) b_and!170959 (not b!2116688) (not b!2116563) (not b!2116723) (not d!642649) (not b!2116576) b_and!170961 (not d!642643) (not d!642651) (not d!642637) (not b!2116648) (not b!2116622) (not b!2116628) (not b!2116718) (not b!2116527) (not setNonEmpty!14313) (not b!2116627) (not setNonEmpty!14303) b_and!170955 (not b!2116690) (not b!2116566) (not b!2116665) (not b!2116713) (not setNonEmpty!14309) (not b!2116584) (not b!2116679) (not b!2116554) (not b!2116664) (not b!2116649) (not b!2116604) (not b!2116599) b_and!170963 (not b!2116678) (not b_next!62081) (not d!642647) (not b!2116560) (not d!642645) (not b!2116582) (not b!2116623) (not b_next!62077) (not b_next!62087) b_and!170957 (not b!2116629) (not b!2116704) (not d!642639) (not b!2116716) (not b!2116682) (not b!2116683) (not b!2116719) (not d!642659) (not b!2116703) (not b!2116699) (not b!2116651) (not b!2116602) (not mapNonEmpty!11540) (not b!2116624) (not b!2116698) (not setNonEmpty!14295) (not b!2116579) (not b!2116507) (not b!2116695) (not b!2116650) (not b!2116681) (not b!2116630) (not setNonEmpty!14324) (not b!2116661) (not setNonEmpty!14314) (not setNonEmpty!14302) (not b!2116692) (not b!2116714) (not b!2116646) (not setNonEmpty!14304) (not b!2116722) (not b!2116615) (not b!2116663) (not b!2116647) (not bm!128567) (not setNonEmpty!14323) (not setNonEmpty!14325) (not b!2116734) (not b!2116696) (not d!642665) (not bm!128565) (not b!2116495) (not b!2116601) (not b!2116569) (not d!642625) (not b!2116581) (not b!2116687) (not b!2116737) (not d!642655) (not b!2116530) (not b!2116721) (not b!2116715) (not b!2116578) (not b!2116735) (not b!2116600) (not b!2116625) (not setNonEmpty!14310) (not b!2116613) (not mapNonEmpty!11543) tp_is_empty!9475 (not b_next!62085) (not setNonEmpty!14301) (not b!2116739) (not b!2116677) (not b!2116684) (not setNonEmpty!14294) (not b!2116689) (not b!2116702) (not setNonEmpty!14298) (not setNonEmpty!14315) (not setNonEmpty!14317) (not b!2116685) (not b_next!62079) (not setNonEmpty!14316) (not b_next!62083) (not b!2116694) (not b!2116736) (not mapNonEmpty!11546) (not b!2116686) (not b!2116631) b_and!170953 (not b!2116626) (not b!2116662) (not d!642653) (not b!2116691) (not b!2116717) (not b!2116614) (not b!2116700) (not b!2116506) (not b!2116660))
(check-sat b_and!170959 b_and!170961 b_and!170955 b_and!170963 (not b_next!62081) b_and!170957 (not b_next!62085) (not b_next!62079) (not b_next!62083) b_and!170953 (not b_next!62077) (not b_next!62087))
