; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!411818 () Bool)

(assert start!411818)

(declare-fun b!4286346 () Bool)

(declare-fun b_free!127055 () Bool)

(declare-fun b_next!127759 () Bool)

(assert (=> b!4286346 (= b_free!127055 (not b_next!127759))))

(declare-fun tp!1312611 () Bool)

(declare-fun b_and!338271 () Bool)

(assert (=> b!4286346 (= tp!1312611 b_and!338271)))

(declare-fun b!4286343 () Bool)

(declare-fun b_free!127057 () Bool)

(declare-fun b_next!127761 () Bool)

(assert (=> b!4286343 (= b_free!127057 (not b_next!127761))))

(declare-fun tp!1312599 () Bool)

(declare-fun b_and!338273 () Bool)

(assert (=> b!4286343 (= tp!1312599 b_and!338273)))

(declare-fun b!4286330 () Bool)

(declare-fun b_free!127059 () Bool)

(declare-fun b_next!127763 () Bool)

(assert (=> b!4286330 (= b_free!127059 (not b_next!127763))))

(declare-fun tp!1312596 () Bool)

(declare-fun b_and!338275 () Bool)

(assert (=> b!4286330 (= tp!1312596 b_and!338275)))

(declare-fun b!4286340 () Bool)

(declare-fun b_free!127061 () Bool)

(declare-fun b_next!127765 () Bool)

(assert (=> b!4286340 (= b_free!127061 (not b_next!127765))))

(declare-fun tp!1312602 () Bool)

(declare-fun b_and!338277 () Bool)

(assert (=> b!4286340 (= tp!1312602 b_and!338277)))

(declare-fun b!4286341 () Bool)

(declare-fun b_free!127063 () Bool)

(declare-fun b_next!127767 () Bool)

(assert (=> b!4286341 (= b_free!127063 (not b_next!127767))))

(declare-fun tp!1312603 () Bool)

(declare-fun b_and!338279 () Bool)

(assert (=> b!4286341 (= tp!1312603 b_and!338279)))

(declare-fun b!4286362 () Bool)

(declare-fun b_free!127065 () Bool)

(declare-fun b_next!127769 () Bool)

(assert (=> b!4286362 (= b_free!127065 (not b_next!127769))))

(declare-fun tp!1312616 () Bool)

(declare-fun b_and!338281 () Bool)

(assert (=> b!4286362 (= tp!1312616 b_and!338281)))

(declare-fun e!2661829 () Bool)

(declare-fun e!2661805 () Bool)

(assert (=> b!4286330 (= e!2661829 (and e!2661805 tp!1312596))))

(declare-fun b!4286331 () Bool)

(declare-fun e!2661815 () Bool)

(declare-datatypes ((C!26040 0))(
  ( (C!26041 (val!15346 Int)) )
))
(declare-datatypes ((Regex!12921 0))(
  ( (ElementMatch!12921 (c!730152 C!26040)) (Concat!21240 (regOne!26354 Regex!12921) (regTwo!26354 Regex!12921)) (EmptyExpr!12921) (Star!12921 (reg!13250 Regex!12921)) (EmptyLang!12921) (Union!12921 (regOne!26355 Regex!12921) (regTwo!26355 Regex!12921)) )
))
(declare-datatypes ((List!47655 0))(
  ( (Nil!47531) (Cons!47531 (h!52951 Regex!12921) (t!354254 List!47655)) )
))
(declare-datatypes ((Context!5622 0))(
  ( (Context!5623 (exprs!3311 List!47655)) )
))
(define-sort InoxSet (T) (Array T Bool))

(declare-datatypes ((tuple2!44990 0))(
  ( (tuple2!44991 (_1!25659 (InoxSet Context!5622)) (_2!25659 Int)) )
))
(declare-datatypes ((tuple2!44992 0))(
  ( (tuple2!44993 (_1!25660 tuple2!44990) (_2!25660 Int)) )
))
(declare-datatypes ((List!47656 0))(
  ( (Nil!47532) (Cons!47532 (h!52952 tuple2!44992) (t!354255 List!47656)) )
))
(declare-datatypes ((array!15460 0))(
  ( (array!15461 (arr!6900 (Array (_ BitVec 32) (_ BitVec 64))) (size!34843 (_ BitVec 32))) )
))
(declare-datatypes ((array!15462 0))(
  ( (array!15463 (arr!6901 (Array (_ BitVec 32) List!47656)) (size!34844 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!8624 0))(
  ( (LongMapFixedSize!8625 (defaultEntry!4697 Int) (mask!12742 (_ BitVec 32)) (extraKeys!4561 (_ BitVec 32)) (zeroValue!4571 List!47656) (minValue!4571 List!47656) (_size!8667 (_ BitVec 32)) (_keys!4612 array!15460) (_values!4593 array!15462) (_vacant!4373 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!17057 0))(
  ( (Cell!17058 (v!41434 LongMapFixedSize!8624)) )
))
(declare-datatypes ((MutLongMap!4312 0))(
  ( (LongMap!4312 (underlying!8853 Cell!17057)) (MutLongMapExt!4311 (__x!28961 Int)) )
))
(declare-datatypes ((Cell!17059 0))(
  ( (Cell!17060 (v!41435 MutLongMap!4312)) )
))
(declare-datatypes ((Hashable!4228 0))(
  ( (HashableExt!4227 (__x!28962 Int)) )
))
(declare-datatypes ((MutableMap!4218 0))(
  ( (MutableMapExt!4217 (__x!28963 Int)) (HashMap!4218 (underlying!8854 Cell!17059) (hashF!6260 Hashable!4228) (_size!8668 (_ BitVec 32)) (defaultValue!4389 Int)) )
))
(declare-datatypes ((List!47657 0))(
  ( (Nil!47533) (Cons!47533 (h!52953 C!26040) (t!354256 List!47657)) )
))
(declare-datatypes ((IArray!28789 0))(
  ( (IArray!28790 (innerList!14452 List!47657)) )
))
(declare-datatypes ((Conc!14364 0))(
  ( (Node!14364 (left!35357 Conc!14364) (right!35687 Conc!14364) (csize!28958 Int) (cheight!14575 Int)) (Leaf!22226 (xs!17670 IArray!28789) (csize!28959 Int)) (Empty!14364) )
))
(declare-datatypes ((BalanceConc!28218 0))(
  ( (BalanceConc!28219 (c!730153 Conc!14364)) )
))
(declare-datatypes ((CacheFindLongestMatch!416 0))(
  ( (CacheFindLongestMatch!417 (cache!4358 MutableMap!4218) (totalInput!4318 BalanceConc!28218)) )
))
(declare-fun cacheFindLongestMatch!199 () CacheFindLongestMatch!416)

(declare-fun tp!1312600 () Bool)

(declare-fun inv!62993 (Conc!14364) Bool)

(assert (=> b!4286331 (= e!2661815 (and (inv!62993 (c!730153 (totalInput!4318 cacheFindLongestMatch!199))) tp!1312600))))

(declare-fun b!4286332 () Bool)

(declare-fun e!2661826 () Bool)

(declare-fun lt!1516013 () MutLongMap!4312)

(get-info :version)

(assert (=> b!4286332 (= e!2661805 (and e!2661826 ((_ is LongMap!4312) lt!1516013)))))

(assert (=> b!4286332 (= lt!1516013 (v!41435 (underlying!8854 (cache!4358 cacheFindLongestMatch!199))))))

(declare-fun mapIsEmpty!19497 () Bool)

(declare-fun mapRes!19497 () Bool)

(assert (=> mapIsEmpty!19497 mapRes!19497))

(declare-fun b!4286333 () Bool)

(declare-fun e!2661827 () Bool)

(declare-fun tp!1312594 () Bool)

(declare-fun tp!1312615 () Bool)

(assert (=> b!4286333 (= e!2661827 (and tp!1312594 tp!1312615))))

(declare-fun b!4286334 () Bool)

(declare-fun e!2661819 () Bool)

(declare-fun tp!1312612 () Bool)

(declare-fun mapRes!19499 () Bool)

(assert (=> b!4286334 (= e!2661819 (and tp!1312612 mapRes!19499))))

(declare-fun condMapEmpty!19499 () Bool)

(declare-datatypes ((tuple2!44994 0))(
  ( (tuple2!44995 (_1!25661 Context!5622) (_2!25661 C!26040)) )
))
(declare-datatypes ((tuple2!44996 0))(
  ( (tuple2!44997 (_1!25662 tuple2!44994) (_2!25662 (InoxSet Context!5622))) )
))
(declare-datatypes ((List!47658 0))(
  ( (Nil!47534) (Cons!47534 (h!52954 tuple2!44996) (t!354257 List!47658)) )
))
(declare-datatypes ((array!15464 0))(
  ( (array!15465 (arr!6902 (Array (_ BitVec 32) List!47658)) (size!34845 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!8626 0))(
  ( (LongMapFixedSize!8627 (defaultEntry!4698 Int) (mask!12743 (_ BitVec 32)) (extraKeys!4562 (_ BitVec 32)) (zeroValue!4572 List!47658) (minValue!4572 List!47658) (_size!8669 (_ BitVec 32)) (_keys!4613 array!15460) (_values!4594 array!15464) (_vacant!4374 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!17061 0))(
  ( (Cell!17062 (v!41436 LongMapFixedSize!8626)) )
))
(declare-datatypes ((MutLongMap!4313 0))(
  ( (LongMap!4313 (underlying!8855 Cell!17061)) (MutLongMapExt!4312 (__x!28964 Int)) )
))
(declare-datatypes ((Cell!17063 0))(
  ( (Cell!17064 (v!41437 MutLongMap!4313)) )
))
(declare-datatypes ((Hashable!4229 0))(
  ( (HashableExt!4228 (__x!28965 Int)) )
))
(declare-datatypes ((MutableMap!4219 0))(
  ( (MutableMapExt!4218 (__x!28966 Int)) (HashMap!4219 (underlying!8856 Cell!17063) (hashF!6261 Hashable!4229) (_size!8670 (_ BitVec 32)) (defaultValue!4390 Int)) )
))
(declare-datatypes ((CacheUp!2754 0))(
  ( (CacheUp!2755 (cache!4359 MutableMap!4219)) )
))
(declare-fun cacheUp!1044 () CacheUp!2754)

(declare-fun mapDefault!19497 () List!47658)

(assert (=> b!4286334 (= condMapEmpty!19499 (= (arr!6902 (_values!4594 (v!41436 (underlying!8855 (v!41437 (underlying!8856 (cache!4359 cacheUp!1044))))))) ((as const (Array (_ BitVec 32) List!47658)) mapDefault!19497)))))

(declare-fun b!4286335 () Bool)

(declare-fun e!2661802 () Bool)

(declare-fun totalInput!1189 () BalanceConc!28218)

(declare-fun tp!1312601 () Bool)

(assert (=> b!4286335 (= e!2661802 (and (inv!62993 (c!730153 totalInput!1189)) tp!1312601))))

(declare-fun b!4286336 () Bool)

(declare-fun e!2661809 () Bool)

(declare-fun e!2661822 () Bool)

(assert (=> b!4286336 (= e!2661809 e!2661822)))

(declare-fun b!4286337 () Bool)

(declare-fun res!1758487 () Bool)

(declare-fun e!2661823 () Bool)

(assert (=> b!4286337 (=> (not res!1758487) (not e!2661823))))

(declare-fun input!6546 () BalanceConc!28218)

(declare-fun isSuffix!1017 (List!47657 List!47657) Bool)

(declare-fun list!17332 (BalanceConc!28218) List!47657)

(assert (=> b!4286337 (= res!1758487 (isSuffix!1017 (list!17332 input!6546) (list!17332 totalInput!1189)))))

(declare-fun b!4286338 () Bool)

(declare-fun e!2661828 () Bool)

(declare-fun e!2661804 () Bool)

(assert (=> b!4286338 (= e!2661828 e!2661804)))

(declare-fun b!4286339 () Bool)

(declare-fun e!2661806 () Bool)

(assert (=> b!4286339 (= e!2661826 e!2661806)))

(declare-datatypes ((tuple3!5366 0))(
  ( (tuple3!5367 (_1!25663 Regex!12921) (_2!25663 Context!5622) (_3!3164 C!26040)) )
))
(declare-datatypes ((tuple2!44998 0))(
  ( (tuple2!44999 (_1!25664 tuple3!5366) (_2!25664 (InoxSet Context!5622))) )
))
(declare-datatypes ((List!47659 0))(
  ( (Nil!47535) (Cons!47535 (h!52955 tuple2!44998) (t!354258 List!47659)) )
))
(declare-datatypes ((array!15466 0))(
  ( (array!15467 (arr!6903 (Array (_ BitVec 32) List!47659)) (size!34846 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!8628 0))(
  ( (LongMapFixedSize!8629 (defaultEntry!4699 Int) (mask!12744 (_ BitVec 32)) (extraKeys!4563 (_ BitVec 32)) (zeroValue!4573 List!47659) (minValue!4573 List!47659) (_size!8671 (_ BitVec 32)) (_keys!4614 array!15460) (_values!4595 array!15466) (_vacant!4375 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!17065 0))(
  ( (Cell!17066 (v!41438 LongMapFixedSize!8628)) )
))
(declare-datatypes ((MutLongMap!4314 0))(
  ( (LongMap!4314 (underlying!8857 Cell!17065)) (MutLongMapExt!4313 (__x!28967 Int)) )
))
(declare-datatypes ((Cell!17067 0))(
  ( (Cell!17068 (v!41439 MutLongMap!4314)) )
))
(declare-datatypes ((Hashable!4230 0))(
  ( (HashableExt!4229 (__x!28968 Int)) )
))
(declare-datatypes ((MutableMap!4220 0))(
  ( (MutableMapExt!4219 (__x!28969 Int)) (HashMap!4220 (underlying!8858 Cell!17067) (hashF!6262 Hashable!4230) (_size!8672 (_ BitVec 32)) (defaultValue!4391 Int)) )
))
(declare-datatypes ((CacheDown!2874 0))(
  ( (CacheDown!2875 (cache!4360 MutableMap!4220)) )
))
(declare-fun cacheDown!1163 () CacheDown!2874)

(declare-fun e!2661803 () Bool)

(declare-fun tp!1312597 () Bool)

(declare-fun e!2661821 () Bool)

(declare-fun tp!1312619 () Bool)

(declare-fun array_inv!4943 (array!15460) Bool)

(declare-fun array_inv!4944 (array!15466) Bool)

(assert (=> b!4286340 (= e!2661821 (and tp!1312602 tp!1312619 tp!1312597 (array_inv!4943 (_keys!4614 (v!41438 (underlying!8857 (v!41439 (underlying!8858 (cache!4360 cacheDown!1163))))))) (array_inv!4944 (_values!4595 (v!41438 (underlying!8857 (v!41439 (underlying!8858 (cache!4360 cacheDown!1163))))))) e!2661803))))

(declare-fun e!2661812 () Bool)

(declare-fun e!2661818 () Bool)

(assert (=> b!4286341 (= e!2661812 (and e!2661818 tp!1312603))))

(declare-fun b!4286342 () Bool)

(assert (=> b!4286342 (= e!2661823 false)))

(declare-fun lt!1516010 () Regex!12921)

(declare-fun r!15285 () Regex!12921)

(declare-datatypes ((List!47660 0))(
  ( (Nil!47536) (Cons!47536 (h!52956 Context!5622) (t!354259 List!47660)) )
))
(declare-fun unfocusZipper!243 (List!47660) Regex!12921)

(declare-fun toList!2121 ((InoxSet Context!5622)) List!47660)

(declare-fun focus!315 (Regex!12921) (InoxSet Context!5622))

(assert (=> b!4286342 (= lt!1516010 (unfocusZipper!243 (toList!2121 (focus!315 r!15285))))))

(declare-fun tp!1312607 () Bool)

(declare-fun e!2661807 () Bool)

(declare-fun tp!1312609 () Bool)

(declare-fun e!2661820 () Bool)

(declare-fun array_inv!4945 (array!15462) Bool)

(assert (=> b!4286343 (= e!2661820 (and tp!1312599 tp!1312607 tp!1312609 (array_inv!4943 (_keys!4612 (v!41434 (underlying!8853 (v!41435 (underlying!8854 (cache!4358 cacheFindLongestMatch!199))))))) (array_inv!4945 (_values!4593 (v!41434 (underlying!8853 (v!41435 (underlying!8854 (cache!4358 cacheFindLongestMatch!199))))))) e!2661807))))

(declare-fun b!4286344 () Bool)

(declare-fun e!2661808 () Bool)

(declare-fun tp!1312608 () Bool)

(assert (=> b!4286344 (= e!2661808 (and (inv!62993 (c!730153 input!6546)) tp!1312608))))

(declare-fun mapNonEmpty!19497 () Bool)

(declare-fun tp!1312604 () Bool)

(declare-fun tp!1312614 () Bool)

(assert (=> mapNonEmpty!19497 (= mapRes!19499 (and tp!1312604 tp!1312614))))

(declare-fun mapKey!19498 () (_ BitVec 32))

(declare-fun mapRest!19497 () (Array (_ BitVec 32) List!47658))

(declare-fun mapValue!19499 () List!47658)

(assert (=> mapNonEmpty!19497 (= (arr!6902 (_values!4594 (v!41436 (underlying!8855 (v!41437 (underlying!8856 (cache!4359 cacheUp!1044))))))) (store mapRest!19497 mapKey!19498 mapValue!19499))))

(declare-fun b!4286345 () Bool)

(declare-fun res!1758490 () Bool)

(assert (=> b!4286345 (=> (not res!1758490) (not e!2661823))))

(declare-fun valid!3347 (CacheFindLongestMatch!416) Bool)

(assert (=> b!4286345 (= res!1758490 (valid!3347 cacheFindLongestMatch!199))))

(declare-fun tp!1312592 () Bool)

(declare-fun tp!1312598 () Bool)

(declare-fun array_inv!4946 (array!15464) Bool)

(assert (=> b!4286346 (= e!2661822 (and tp!1312611 tp!1312592 tp!1312598 (array_inv!4943 (_keys!4613 (v!41436 (underlying!8855 (v!41437 (underlying!8856 (cache!4359 cacheUp!1044))))))) (array_inv!4946 (_values!4594 (v!41436 (underlying!8855 (v!41437 (underlying!8856 (cache!4359 cacheUp!1044))))))) e!2661819))))

(declare-fun b!4286347 () Bool)

(declare-fun tp!1312606 () Bool)

(declare-fun mapRes!19498 () Bool)

(assert (=> b!4286347 (= e!2661803 (and tp!1312606 mapRes!19498))))

(declare-fun condMapEmpty!19498 () Bool)

(declare-fun mapDefault!19498 () List!47659)

(assert (=> b!4286347 (= condMapEmpty!19498 (= (arr!6903 (_values!4595 (v!41438 (underlying!8857 (v!41439 (underlying!8858 (cache!4360 cacheDown!1163))))))) ((as const (Array (_ BitVec 32) List!47659)) mapDefault!19498)))))

(declare-fun b!4286348 () Bool)

(declare-fun e!2661811 () Bool)

(declare-fun e!2661824 () Bool)

(assert (=> b!4286348 (= e!2661811 e!2661824)))

(declare-fun b!4286349 () Bool)

(declare-fun res!1758488 () Bool)

(assert (=> b!4286349 (=> (not res!1758488) (not e!2661823))))

(assert (=> b!4286349 (= res!1758488 (= (totalInput!4318 cacheFindLongestMatch!199) totalInput!1189))))

(declare-fun res!1758491 () Bool)

(assert (=> start!411818 (=> (not res!1758491) (not e!2661823))))

(declare-fun validRegex!5845 (Regex!12921) Bool)

(assert (=> start!411818 (= res!1758491 (validRegex!5845 r!15285))))

(assert (=> start!411818 e!2661823))

(declare-fun inv!62994 (BalanceConc!28218) Bool)

(assert (=> start!411818 (and (inv!62994 totalInput!1189) e!2661802)))

(assert (=> start!411818 e!2661827))

(assert (=> start!411818 (and (inv!62994 input!6546) e!2661808)))

(declare-fun e!2661814 () Bool)

(declare-fun inv!62995 (CacheFindLongestMatch!416) Bool)

(assert (=> start!411818 (and (inv!62995 cacheFindLongestMatch!199) e!2661814)))

(declare-fun inv!62996 (CacheDown!2874) Bool)

(assert (=> start!411818 (and (inv!62996 cacheDown!1163) e!2661828)))

(declare-fun e!2661816 () Bool)

(declare-fun inv!62997 (CacheUp!2754) Bool)

(assert (=> start!411818 (and (inv!62997 cacheUp!1044) e!2661816)))

(declare-fun b!4286350 () Bool)

(declare-fun tp!1312593 () Bool)

(declare-fun tp!1312605 () Bool)

(assert (=> b!4286350 (= e!2661827 (and tp!1312593 tp!1312605))))

(declare-fun b!4286351 () Bool)

(assert (=> b!4286351 (= e!2661814 (and e!2661829 (inv!62994 (totalInput!4318 cacheFindLongestMatch!199)) e!2661815))))

(declare-fun mapIsEmpty!19498 () Bool)

(assert (=> mapIsEmpty!19498 mapRes!19498))

(declare-fun b!4286352 () Bool)

(declare-fun res!1758489 () Bool)

(assert (=> b!4286352 (=> (not res!1758489) (not e!2661823))))

(declare-fun valid!3348 (CacheUp!2754) Bool)

(assert (=> b!4286352 (= res!1758489 (valid!3348 cacheUp!1044))))

(declare-fun b!4286353 () Bool)

(declare-fun res!1758492 () Bool)

(assert (=> b!4286353 (=> (not res!1758492) (not e!2661823))))

(declare-fun valid!3349 (CacheDown!2874) Bool)

(assert (=> b!4286353 (= res!1758492 (valid!3349 cacheDown!1163))))

(declare-fun b!4286354 () Bool)

(assert (=> b!4286354 (= e!2661824 e!2661821)))

(declare-fun b!4286355 () Bool)

(declare-fun tp!1312610 () Bool)

(assert (=> b!4286355 (= e!2661807 (and tp!1312610 mapRes!19497))))

(declare-fun condMapEmpty!19497 () Bool)

(declare-fun mapDefault!19499 () List!47656)

(assert (=> b!4286355 (= condMapEmpty!19497 (= (arr!6901 (_values!4593 (v!41434 (underlying!8853 (v!41435 (underlying!8854 (cache!4358 cacheFindLongestMatch!199))))))) ((as const (Array (_ BitVec 32) List!47656)) mapDefault!19499)))))

(declare-fun b!4286356 () Bool)

(declare-fun e!2661830 () Bool)

(assert (=> b!4286356 (= e!2661830 e!2661809)))

(declare-fun b!4286357 () Bool)

(assert (=> b!4286357 (= e!2661816 e!2661812)))

(declare-fun mapIsEmpty!19499 () Bool)

(assert (=> mapIsEmpty!19499 mapRes!19499))

(declare-fun b!4286358 () Bool)

(declare-fun e!2661813 () Bool)

(declare-fun lt!1516012 () MutLongMap!4314)

(assert (=> b!4286358 (= e!2661813 (and e!2661811 ((_ is LongMap!4314) lt!1516012)))))

(assert (=> b!4286358 (= lt!1516012 (v!41439 (underlying!8858 (cache!4360 cacheDown!1163))))))

(declare-fun b!4286359 () Bool)

(declare-fun tp!1312595 () Bool)

(assert (=> b!4286359 (= e!2661827 tp!1312595)))

(declare-fun b!4286360 () Bool)

(assert (=> b!4286360 (= e!2661806 e!2661820)))

(declare-fun b!4286361 () Bool)

(declare-fun lt!1516011 () MutLongMap!4313)

(assert (=> b!4286361 (= e!2661818 (and e!2661830 ((_ is LongMap!4313) lt!1516011)))))

(assert (=> b!4286361 (= lt!1516011 (v!41437 (underlying!8856 (cache!4359 cacheUp!1044))))))

(assert (=> b!4286362 (= e!2661804 (and e!2661813 tp!1312616))))

(declare-fun mapNonEmpty!19498 () Bool)

(declare-fun tp!1312617 () Bool)

(declare-fun tp!1312613 () Bool)

(assert (=> mapNonEmpty!19498 (= mapRes!19498 (and tp!1312617 tp!1312613))))

(declare-fun mapRest!19498 () (Array (_ BitVec 32) List!47659))

(declare-fun mapKey!19499 () (_ BitVec 32))

(declare-fun mapValue!19497 () List!47659)

(assert (=> mapNonEmpty!19498 (= (arr!6903 (_values!4595 (v!41438 (underlying!8857 (v!41439 (underlying!8858 (cache!4360 cacheDown!1163))))))) (store mapRest!19498 mapKey!19499 mapValue!19497))))

(declare-fun mapNonEmpty!19499 () Bool)

(declare-fun tp!1312618 () Bool)

(declare-fun tp!1312591 () Bool)

(assert (=> mapNonEmpty!19499 (= mapRes!19497 (and tp!1312618 tp!1312591))))

(declare-fun mapKey!19497 () (_ BitVec 32))

(declare-fun mapValue!19498 () List!47656)

(declare-fun mapRest!19499 () (Array (_ BitVec 32) List!47656))

(assert (=> mapNonEmpty!19499 (= (arr!6901 (_values!4593 (v!41434 (underlying!8853 (v!41435 (underlying!8854 (cache!4358 cacheFindLongestMatch!199))))))) (store mapRest!19499 mapKey!19497 mapValue!19498))))

(declare-fun b!4286363 () Bool)

(declare-fun tp_is_empty!23073 () Bool)

(assert (=> b!4286363 (= e!2661827 tp_is_empty!23073)))

(assert (= (and start!411818 res!1758491) b!4286352))

(assert (= (and b!4286352 res!1758489) b!4286353))

(assert (= (and b!4286353 res!1758492) b!4286345))

(assert (= (and b!4286345 res!1758490) b!4286349))

(assert (= (and b!4286349 res!1758488) b!4286337))

(assert (= (and b!4286337 res!1758487) b!4286342))

(assert (= start!411818 b!4286335))

(assert (= (and start!411818 ((_ is ElementMatch!12921) r!15285)) b!4286363))

(assert (= (and start!411818 ((_ is Concat!21240) r!15285)) b!4286333))

(assert (= (and start!411818 ((_ is Star!12921) r!15285)) b!4286359))

(assert (= (and start!411818 ((_ is Union!12921) r!15285)) b!4286350))

(assert (= start!411818 b!4286344))

(assert (= (and b!4286355 condMapEmpty!19497) mapIsEmpty!19497))

(assert (= (and b!4286355 (not condMapEmpty!19497)) mapNonEmpty!19499))

(assert (= b!4286343 b!4286355))

(assert (= b!4286360 b!4286343))

(assert (= b!4286339 b!4286360))

(assert (= (and b!4286332 ((_ is LongMap!4312) (v!41435 (underlying!8854 (cache!4358 cacheFindLongestMatch!199))))) b!4286339))

(assert (= b!4286330 b!4286332))

(assert (= (and b!4286351 ((_ is HashMap!4218) (cache!4358 cacheFindLongestMatch!199))) b!4286330))

(assert (= b!4286351 b!4286331))

(assert (= start!411818 b!4286351))

(assert (= (and b!4286347 condMapEmpty!19498) mapIsEmpty!19498))

(assert (= (and b!4286347 (not condMapEmpty!19498)) mapNonEmpty!19498))

(assert (= b!4286340 b!4286347))

(assert (= b!4286354 b!4286340))

(assert (= b!4286348 b!4286354))

(assert (= (and b!4286358 ((_ is LongMap!4314) (v!41439 (underlying!8858 (cache!4360 cacheDown!1163))))) b!4286348))

(assert (= b!4286362 b!4286358))

(assert (= (and b!4286338 ((_ is HashMap!4220) (cache!4360 cacheDown!1163))) b!4286362))

(assert (= start!411818 b!4286338))

(assert (= (and b!4286334 condMapEmpty!19499) mapIsEmpty!19499))

(assert (= (and b!4286334 (not condMapEmpty!19499)) mapNonEmpty!19497))

(assert (= b!4286346 b!4286334))

(assert (= b!4286336 b!4286346))

(assert (= b!4286356 b!4286336))

(assert (= (and b!4286361 ((_ is LongMap!4313) (v!41437 (underlying!8856 (cache!4359 cacheUp!1044))))) b!4286356))

(assert (= b!4286341 b!4286361))

(assert (= (and b!4286357 ((_ is HashMap!4219) (cache!4359 cacheUp!1044))) b!4286341))

(assert (= start!411818 b!4286357))

(declare-fun m!4882001 () Bool)

(assert (=> mapNonEmpty!19498 m!4882001))

(declare-fun m!4882003 () Bool)

(assert (=> b!4286331 m!4882003))

(declare-fun m!4882005 () Bool)

(assert (=> mapNonEmpty!19499 m!4882005))

(declare-fun m!4882007 () Bool)

(assert (=> b!4286335 m!4882007))

(declare-fun m!4882009 () Bool)

(assert (=> b!4286337 m!4882009))

(declare-fun m!4882011 () Bool)

(assert (=> b!4286337 m!4882011))

(assert (=> b!4286337 m!4882009))

(assert (=> b!4286337 m!4882011))

(declare-fun m!4882013 () Bool)

(assert (=> b!4286337 m!4882013))

(declare-fun m!4882015 () Bool)

(assert (=> b!4286340 m!4882015))

(declare-fun m!4882017 () Bool)

(assert (=> b!4286340 m!4882017))

(declare-fun m!4882019 () Bool)

(assert (=> b!4286352 m!4882019))

(declare-fun m!4882021 () Bool)

(assert (=> b!4286343 m!4882021))

(declare-fun m!4882023 () Bool)

(assert (=> b!4286343 m!4882023))

(declare-fun m!4882025 () Bool)

(assert (=> b!4286342 m!4882025))

(assert (=> b!4286342 m!4882025))

(declare-fun m!4882027 () Bool)

(assert (=> b!4286342 m!4882027))

(assert (=> b!4286342 m!4882027))

(declare-fun m!4882029 () Bool)

(assert (=> b!4286342 m!4882029))

(declare-fun m!4882031 () Bool)

(assert (=> mapNonEmpty!19497 m!4882031))

(declare-fun m!4882033 () Bool)

(assert (=> b!4286344 m!4882033))

(declare-fun m!4882035 () Bool)

(assert (=> start!411818 m!4882035))

(declare-fun m!4882037 () Bool)

(assert (=> start!411818 m!4882037))

(declare-fun m!4882039 () Bool)

(assert (=> start!411818 m!4882039))

(declare-fun m!4882041 () Bool)

(assert (=> start!411818 m!4882041))

(declare-fun m!4882043 () Bool)

(assert (=> start!411818 m!4882043))

(declare-fun m!4882045 () Bool)

(assert (=> start!411818 m!4882045))

(declare-fun m!4882047 () Bool)

(assert (=> b!4286351 m!4882047))

(declare-fun m!4882049 () Bool)

(assert (=> b!4286345 m!4882049))

(declare-fun m!4882051 () Bool)

(assert (=> b!4286346 m!4882051))

(declare-fun m!4882053 () Bool)

(assert (=> b!4286346 m!4882053))

(declare-fun m!4882055 () Bool)

(assert (=> b!4286353 m!4882055))

(check-sat (not mapNonEmpty!19499) (not b_next!127767) tp_is_empty!23073 (not b!4286335) b_and!338281 (not b!4286343) b_and!338275 (not b_next!127763) (not start!411818) (not b!4286345) b_and!338279 (not b!4286346) (not mapNonEmpty!19497) (not b!4286342) (not b!4286355) (not b_next!127769) (not b!4286347) (not b_next!127759) (not b!4286351) (not b!4286331) b_and!338273 (not b!4286334) (not b_next!127765) (not mapNonEmpty!19498) (not b!4286350) (not b!4286344) (not b!4286353) (not b!4286359) (not b!4286333) (not b!4286340) (not b!4286352) b_and!338271 b_and!338277 (not b!4286337) (not b_next!127761))
(check-sat (not b_next!127767) b_and!338273 (not b_next!127765) b_and!338281 b_and!338275 (not b_next!127763) (not b_next!127761) b_and!338279 (not b_next!127769) (not b_next!127759) b_and!338271 b_and!338277)
