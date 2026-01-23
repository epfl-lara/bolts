; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!411830 () Bool)

(assert start!411830)

(declare-fun b!4287026 () Bool)

(declare-fun b_free!127127 () Bool)

(declare-fun b_next!127831 () Bool)

(assert (=> b!4287026 (= b_free!127127 (not b_next!127831))))

(declare-fun tp!1313113 () Bool)

(declare-fun b_and!338343 () Bool)

(assert (=> b!4287026 (= tp!1313113 b_and!338343)))

(declare-fun b!4287014 () Bool)

(declare-fun b_free!127129 () Bool)

(declare-fun b_next!127833 () Bool)

(assert (=> b!4287014 (= b_free!127129 (not b_next!127833))))

(declare-fun tp!1313116 () Bool)

(declare-fun b_and!338345 () Bool)

(assert (=> b!4287014 (= tp!1313116 b_and!338345)))

(declare-fun b!4287029 () Bool)

(declare-fun b_free!127131 () Bool)

(declare-fun b_next!127835 () Bool)

(assert (=> b!4287029 (= b_free!127131 (not b_next!127835))))

(declare-fun tp!1313126 () Bool)

(declare-fun b_and!338347 () Bool)

(assert (=> b!4287029 (= tp!1313126 b_and!338347)))

(declare-fun b!4287015 () Bool)

(declare-fun b_free!127133 () Bool)

(declare-fun b_next!127837 () Bool)

(assert (=> b!4287015 (= b_free!127133 (not b_next!127837))))

(declare-fun tp!1313125 () Bool)

(declare-fun b_and!338349 () Bool)

(assert (=> b!4287015 (= tp!1313125 b_and!338349)))

(declare-fun b!4287008 () Bool)

(declare-fun b_free!127135 () Bool)

(declare-fun b_next!127839 () Bool)

(assert (=> b!4287008 (= b_free!127135 (not b_next!127839))))

(declare-fun tp!1313132 () Bool)

(declare-fun b_and!338351 () Bool)

(assert (=> b!4287008 (= tp!1313132 b_and!338351)))

(declare-fun b!4287007 () Bool)

(declare-fun b_free!127137 () Bool)

(declare-fun b_next!127841 () Bool)

(assert (=> b!4287007 (= b_free!127137 (not b_next!127841))))

(declare-fun tp!1313133 () Bool)

(declare-fun b_and!338353 () Bool)

(assert (=> b!4287007 (= tp!1313133 b_and!338353)))

(declare-fun b!4286990 () Bool)

(declare-fun e!2662385 () Bool)

(declare-fun e!2662396 () Bool)

(assert (=> b!4286990 (= e!2662385 e!2662396)))

(declare-fun b!4286991 () Bool)

(declare-fun e!2662384 () Bool)

(declare-datatypes ((C!26052 0))(
  ( (C!26053 (val!15352 Int)) )
))
(declare-datatypes ((Regex!12927 0))(
  ( (ElementMatch!12927 (c!730163 C!26052)) (Concat!21246 (regOne!26366 Regex!12927) (regTwo!26366 Regex!12927)) (EmptyExpr!12927) (Star!12927 (reg!13256 Regex!12927)) (EmptyLang!12927) (Union!12927 (regOne!26367 Regex!12927) (regTwo!26367 Regex!12927)) )
))
(declare-datatypes ((List!47681 0))(
  ( (Nil!47557) (Cons!47557 (h!52977 Regex!12927) (t!354280 List!47681)) )
))
(declare-datatypes ((Context!5634 0))(
  ( (Context!5635 (exprs!3317 List!47681)) )
))
(define-sort InoxSet (T) (Array T Bool))

(declare-datatypes ((tuple2!45050 0))(
  ( (tuple2!45051 (_1!25694 (InoxSet Context!5634)) (_2!25694 Int)) )
))
(declare-datatypes ((tuple2!45052 0))(
  ( (tuple2!45053 (_1!25695 tuple2!45050) (_2!25695 Int)) )
))
(declare-datatypes ((List!47682 0))(
  ( (Nil!47558) (Cons!47558 (h!52978 tuple2!45052) (t!354281 List!47682)) )
))
(declare-datatypes ((array!15500 0))(
  ( (array!15501 (arr!6920 (Array (_ BitVec 32) (_ BitVec 64))) (size!34866 (_ BitVec 32))) )
))
(declare-datatypes ((array!15502 0))(
  ( (array!15503 (arr!6921 (Array (_ BitVec 32) List!47682)) (size!34867 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!8652 0))(
  ( (LongMapFixedSize!8653 (defaultEntry!4711 Int) (mask!12759 (_ BitVec 32)) (extraKeys!4575 (_ BitVec 32)) (zeroValue!4585 List!47682) (minValue!4585 List!47682) (_size!8695 (_ BitVec 32)) (_keys!4626 array!15500) (_values!4607 array!15502) (_vacant!4387 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!17113 0))(
  ( (Cell!17114 (v!41462 LongMapFixedSize!8652)) )
))
(declare-datatypes ((MutLongMap!4326 0))(
  ( (LongMap!4326 (underlying!8881 Cell!17113)) (MutLongMapExt!4325 (__x!29003 Int)) )
))
(declare-datatypes ((Cell!17115 0))(
  ( (Cell!17116 (v!41463 MutLongMap!4326)) )
))
(declare-datatypes ((Hashable!4242 0))(
  ( (HashableExt!4241 (__x!29004 Int)) )
))
(declare-datatypes ((MutableMap!4232 0))(
  ( (MutableMapExt!4231 (__x!29005 Int)) (HashMap!4232 (underlying!8882 Cell!17115) (hashF!6274 Hashable!4242) (_size!8696 (_ BitVec 32)) (defaultValue!4403 Int)) )
))
(declare-datatypes ((List!47683 0))(
  ( (Nil!47559) (Cons!47559 (h!52979 C!26052) (t!354282 List!47683)) )
))
(declare-datatypes ((IArray!28799 0))(
  ( (IArray!28800 (innerList!14457 List!47683)) )
))
(declare-datatypes ((Conc!14369 0))(
  ( (Node!14369 (left!35365 Conc!14369) (right!35695 Conc!14369) (csize!28968 Int) (cheight!14580 Int)) (Leaf!22234 (xs!17675 IArray!28799) (csize!28969 Int)) (Empty!14369) )
))
(declare-datatypes ((BalanceConc!28228 0))(
  ( (BalanceConc!28229 (c!730164 Conc!14369)) )
))
(declare-datatypes ((CacheFindLongestMatch!426 0))(
  ( (CacheFindLongestMatch!427 (cache!4372 MutableMap!4232) (totalInput!4323 BalanceConc!28228)) )
))
(declare-fun cacheFindLongestMatch!199 () CacheFindLongestMatch!426)

(declare-fun tp!1313134 () Bool)

(declare-fun inv!63023 (Conc!14369) Bool)

(assert (=> b!4286991 (= e!2662384 (and (inv!63023 (c!730164 (totalInput!4323 cacheFindLongestMatch!199))) tp!1313134))))

(declare-fun b!4286992 () Bool)

(declare-fun e!2662399 () Bool)

(declare-datatypes ((tuple2!45054 0))(
  ( (tuple2!45055 (_1!25696 BalanceConc!28228) (_2!25696 BalanceConc!28228)) )
))
(declare-fun lt!1516172 () tuple2!45054)

(declare-datatypes ((tuple2!45056 0))(
  ( (tuple2!45057 (_1!25697 List!47683) (_2!25697 List!47683)) )
))
(declare-fun lt!1516173 () tuple2!45056)

(declare-fun list!17336 (BalanceConc!28228) List!47683)

(assert (=> b!4286992 (= e!2662399 (= (list!17336 (_2!25696 lt!1516172)) (_2!25697 lt!1516173)))))

(declare-fun mapIsEmpty!19551 () Bool)

(declare-fun mapRes!19551 () Bool)

(assert (=> mapIsEmpty!19551 mapRes!19551))

(declare-fun b!4286993 () Bool)

(declare-fun e!2662380 () Bool)

(declare-fun e!2662400 () Bool)

(assert (=> b!4286993 (= e!2662380 e!2662400)))

(declare-fun mapNonEmpty!19551 () Bool)

(declare-fun mapRes!19552 () Bool)

(declare-fun tp!1313140 () Bool)

(declare-fun tp!1313128 () Bool)

(assert (=> mapNonEmpty!19551 (= mapRes!19552 (and tp!1313140 tp!1313128))))

(declare-datatypes ((tuple3!5374 0))(
  ( (tuple3!5375 (_1!25698 Regex!12927) (_2!25698 Context!5634) (_3!3169 C!26052)) )
))
(declare-datatypes ((tuple2!45058 0))(
  ( (tuple2!45059 (_1!25699 tuple3!5374) (_2!25699 (InoxSet Context!5634))) )
))
(declare-datatypes ((List!47684 0))(
  ( (Nil!47560) (Cons!47560 (h!52980 tuple2!45058) (t!354283 List!47684)) )
))
(declare-datatypes ((array!15504 0))(
  ( (array!15505 (arr!6922 (Array (_ BitVec 32) List!47684)) (size!34868 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!8654 0))(
  ( (LongMapFixedSize!8655 (defaultEntry!4712 Int) (mask!12760 (_ BitVec 32)) (extraKeys!4576 (_ BitVec 32)) (zeroValue!4586 List!47684) (minValue!4586 List!47684) (_size!8697 (_ BitVec 32)) (_keys!4627 array!15500) (_values!4608 array!15504) (_vacant!4388 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!17117 0))(
  ( (Cell!17118 (v!41464 LongMapFixedSize!8654)) )
))
(declare-datatypes ((MutLongMap!4327 0))(
  ( (LongMap!4327 (underlying!8883 Cell!17117)) (MutLongMapExt!4326 (__x!29006 Int)) )
))
(declare-datatypes ((Cell!17119 0))(
  ( (Cell!17120 (v!41465 MutLongMap!4327)) )
))
(declare-datatypes ((Hashable!4243 0))(
  ( (HashableExt!4242 (__x!29007 Int)) )
))
(declare-datatypes ((MutableMap!4233 0))(
  ( (MutableMapExt!4232 (__x!29008 Int)) (HashMap!4233 (underlying!8884 Cell!17119) (hashF!6275 Hashable!4243) (_size!8698 (_ BitVec 32)) (defaultValue!4404 Int)) )
))
(declare-datatypes ((CacheDown!2882 0))(
  ( (CacheDown!2883 (cache!4373 MutableMap!4233)) )
))
(declare-fun cacheDown!1163 () CacheDown!2882)

(declare-fun mapKey!19552 () (_ BitVec 32))

(declare-fun mapRest!19552 () (Array (_ BitVec 32) List!47684))

(declare-fun mapValue!19553 () List!47684)

(assert (=> mapNonEmpty!19551 (= (arr!6922 (_values!4608 (v!41464 (underlying!8883 (v!41465 (underlying!8884 (cache!4373 cacheDown!1163))))))) (store mapRest!19552 mapKey!19552 mapValue!19553))))

(declare-fun b!4286994 () Bool)

(declare-fun e!2662394 () Bool)

(declare-fun tp!1313139 () Bool)

(assert (=> b!4286994 (= e!2662394 (and tp!1313139 mapRes!19552))))

(declare-fun condMapEmpty!19552 () Bool)

(declare-fun mapDefault!19552 () List!47684)

(assert (=> b!4286994 (= condMapEmpty!19552 (= (arr!6922 (_values!4608 (v!41464 (underlying!8883 (v!41465 (underlying!8884 (cache!4373 cacheDown!1163))))))) ((as const (Array (_ BitVec 32) List!47684)) mapDefault!19552)))))

(declare-fun b!4286995 () Bool)

(declare-fun e!2662383 () Bool)

(declare-fun e!2662395 () Bool)

(assert (=> b!4286995 (= e!2662383 e!2662395)))

(declare-fun b!4286996 () Bool)

(declare-fun e!2662405 () Bool)

(declare-fun tp!1313124 () Bool)

(declare-fun mapRes!19553 () Bool)

(assert (=> b!4286996 (= e!2662405 (and tp!1313124 mapRes!19553))))

(declare-fun condMapEmpty!19551 () Bool)

(declare-datatypes ((tuple2!45060 0))(
  ( (tuple2!45061 (_1!25700 Context!5634) (_2!25700 C!26052)) )
))
(declare-datatypes ((tuple2!45062 0))(
  ( (tuple2!45063 (_1!25701 tuple2!45060) (_2!25701 (InoxSet Context!5634))) )
))
(declare-datatypes ((List!47685 0))(
  ( (Nil!47561) (Cons!47561 (h!52981 tuple2!45062) (t!354284 List!47685)) )
))
(declare-datatypes ((array!15506 0))(
  ( (array!15507 (arr!6923 (Array (_ BitVec 32) List!47685)) (size!34869 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!8656 0))(
  ( (LongMapFixedSize!8657 (defaultEntry!4713 Int) (mask!12761 (_ BitVec 32)) (extraKeys!4577 (_ BitVec 32)) (zeroValue!4587 List!47685) (minValue!4587 List!47685) (_size!8699 (_ BitVec 32)) (_keys!4628 array!15500) (_values!4609 array!15506) (_vacant!4389 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!17121 0))(
  ( (Cell!17122 (v!41466 LongMapFixedSize!8656)) )
))
(declare-datatypes ((MutLongMap!4328 0))(
  ( (LongMap!4328 (underlying!8885 Cell!17121)) (MutLongMapExt!4327 (__x!29009 Int)) )
))
(declare-datatypes ((Cell!17123 0))(
  ( (Cell!17124 (v!41467 MutLongMap!4328)) )
))
(declare-datatypes ((Hashable!4244 0))(
  ( (HashableExt!4243 (__x!29010 Int)) )
))
(declare-datatypes ((MutableMap!4234 0))(
  ( (MutableMapExt!4233 (__x!29011 Int)) (HashMap!4234 (underlying!8886 Cell!17123) (hashF!6276 Hashable!4244) (_size!8700 (_ BitVec 32)) (defaultValue!4405 Int)) )
))
(declare-datatypes ((CacheUp!2764 0))(
  ( (CacheUp!2765 (cache!4374 MutableMap!4234)) )
))
(declare-fun cacheUp!1044 () CacheUp!2764)

(declare-fun mapDefault!19551 () List!47685)

(assert (=> b!4286996 (= condMapEmpty!19551 (= (arr!6923 (_values!4609 (v!41466 (underlying!8885 (v!41467 (underlying!8886 (cache!4374 cacheUp!1044))))))) ((as const (Array (_ BitVec 32) List!47685)) mapDefault!19551)))))

(declare-fun b!4286997 () Bool)

(declare-fun e!2662382 () Bool)

(declare-fun tp!1313115 () Bool)

(assert (=> b!4286997 (= e!2662382 (and tp!1313115 mapRes!19551))))

(declare-fun condMapEmpty!19553 () Bool)

(declare-fun mapDefault!19553 () List!47682)

(assert (=> b!4286997 (= condMapEmpty!19553 (= (arr!6921 (_values!4607 (v!41462 (underlying!8881 (v!41463 (underlying!8882 (cache!4372 cacheFindLongestMatch!199))))))) ((as const (Array (_ BitVec 32) List!47682)) mapDefault!19553)))))

(declare-fun totalInput!1189 () BalanceConc!28228)

(declare-fun r!15285 () Regex!12927)

(declare-fun input!6546 () BalanceConc!28228)

(declare-fun e!2662386 () Bool)

(declare-fun b!4286998 () Bool)

(declare-fun findLongestMatchWithZipperSequenceV2!124 (Regex!12927 BalanceConc!28228 BalanceConc!28228) tuple2!45054)

(assert (=> b!4286998 (= e!2662386 (= (findLongestMatchWithZipperSequenceV2!124 r!15285 input!6546 totalInput!1189) lt!1516172))))

(declare-fun b!4286999 () Bool)

(declare-fun e!2662393 () Bool)

(declare-fun tp!1313121 () Bool)

(assert (=> b!4286999 (= e!2662393 tp!1313121)))

(declare-fun b!4287000 () Bool)

(declare-fun e!2662378 () Bool)

(declare-fun tp!1313127 () Bool)

(assert (=> b!4287000 (= e!2662378 (and (inv!63023 (c!730164 totalInput!1189)) tp!1313127))))

(declare-fun b!4287001 () Bool)

(declare-fun res!1758654 () Bool)

(declare-fun e!2662390 () Bool)

(assert (=> b!4287001 (=> (not res!1758654) (not e!2662390))))

(declare-fun valid!3359 (CacheDown!2882) Bool)

(assert (=> b!4287001 (= res!1758654 (valid!3359 cacheDown!1163))))

(declare-fun b!4287002 () Bool)

(declare-fun e!2662388 () Bool)

(declare-fun e!2662391 () Bool)

(assert (=> b!4287002 (= e!2662388 e!2662391)))

(declare-fun b!4287003 () Bool)

(declare-fun tp!1313123 () Bool)

(declare-fun tp!1313114 () Bool)

(assert (=> b!4287003 (= e!2662393 (and tp!1313123 tp!1313114))))

(declare-fun b!4287004 () Bool)

(declare-fun e!2662398 () Bool)

(declare-fun e!2662402 () Bool)

(declare-fun lt!1516178 () MutLongMap!4328)

(get-info :version)

(assert (=> b!4287004 (= e!2662398 (and e!2662402 ((_ is LongMap!4328) lt!1516178)))))

(assert (=> b!4287004 (= lt!1516178 (v!41467 (underlying!8886 (cache!4374 cacheUp!1044))))))

(declare-fun mapNonEmpty!19552 () Bool)

(declare-fun tp!1313137 () Bool)

(declare-fun tp!1313122 () Bool)

(assert (=> mapNonEmpty!19552 (= mapRes!19553 (and tp!1313137 tp!1313122))))

(declare-fun mapRest!19551 () (Array (_ BitVec 32) List!47685))

(declare-fun mapValue!19551 () List!47685)

(declare-fun mapKey!19553 () (_ BitVec 32))

(assert (=> mapNonEmpty!19552 (= (arr!6923 (_values!4609 (v!41466 (underlying!8885 (v!41467 (underlying!8886 (cache!4374 cacheUp!1044))))))) (store mapRest!19551 mapKey!19553 mapValue!19551))))

(declare-fun res!1758647 () Bool)

(assert (=> start!411830 (=> (not res!1758647) (not e!2662390))))

(declare-fun validRegex!5849 (Regex!12927) Bool)

(assert (=> start!411830 (= res!1758647 (validRegex!5849 r!15285))))

(assert (=> start!411830 e!2662390))

(declare-fun inv!63024 (BalanceConc!28228) Bool)

(assert (=> start!411830 (and (inv!63024 totalInput!1189) e!2662378)))

(assert (=> start!411830 e!2662393))

(declare-fun e!2662375 () Bool)

(assert (=> start!411830 (and (inv!63024 input!6546) e!2662375)))

(declare-fun e!2662389 () Bool)

(declare-fun inv!63025 (CacheFindLongestMatch!426) Bool)

(assert (=> start!411830 (and (inv!63025 cacheFindLongestMatch!199) e!2662389)))

(declare-fun e!2662387 () Bool)

(declare-fun inv!63026 (CacheDown!2882) Bool)

(assert (=> start!411830 (and (inv!63026 cacheDown!1163) e!2662387)))

(declare-fun inv!63027 (CacheUp!2764) Bool)

(assert (=> start!411830 (and (inv!63027 cacheUp!1044) e!2662380)))

(declare-fun b!4287005 () Bool)

(declare-fun e!2662401 () Bool)

(assert (=> b!4287005 (= e!2662401 e!2662383)))

(declare-fun b!4287006 () Bool)

(declare-fun e!2662406 () Bool)

(declare-fun e!2662381 () Bool)

(declare-fun lt!1516181 () MutLongMap!4326)

(assert (=> b!4287006 (= e!2662406 (and e!2662381 ((_ is LongMap!4326) lt!1516181)))))

(assert (=> b!4287006 (= lt!1516181 (v!41463 (underlying!8882 (cache!4372 cacheFindLongestMatch!199))))))

(declare-fun tp!1313118 () Bool)

(declare-fun tp!1313135 () Bool)

(declare-fun array_inv!4958 (array!15500) Bool)

(declare-fun array_inv!4959 (array!15504) Bool)

(assert (=> b!4287007 (= e!2662395 (and tp!1313133 tp!1313118 tp!1313135 (array_inv!4958 (_keys!4627 (v!41464 (underlying!8883 (v!41465 (underlying!8884 (cache!4373 cacheDown!1163))))))) (array_inv!4959 (_values!4608 (v!41464 (underlying!8883 (v!41465 (underlying!8884 (cache!4373 cacheDown!1163))))))) e!2662394))))

(declare-fun tp!1313138 () Bool)

(declare-fun tp!1313120 () Bool)

(declare-fun array_inv!4960 (array!15506) Bool)

(assert (=> b!4287008 (= e!2662396 (and tp!1313132 tp!1313138 tp!1313120 (array_inv!4958 (_keys!4628 (v!41466 (underlying!8885 (v!41467 (underlying!8886 (cache!4374 cacheUp!1044))))))) (array_inv!4960 (_values!4609 (v!41466 (underlying!8885 (v!41467 (underlying!8886 (cache!4374 cacheUp!1044))))))) e!2662405))))

(declare-fun b!4287009 () Bool)

(declare-fun tp!1313131 () Bool)

(assert (=> b!4287009 (= e!2662375 (and (inv!63023 (c!730164 input!6546)) tp!1313131))))

(declare-fun b!4287010 () Bool)

(declare-fun e!2662377 () Bool)

(assert (=> b!4287010 (= e!2662377 (not true))))

(declare-fun e!2662376 () Bool)

(assert (=> b!4287010 e!2662376))

(declare-fun res!1758649 () Bool)

(assert (=> b!4287010 (=> (not res!1758649) (not e!2662376))))

(declare-datatypes ((tuple4!964 0))(
  ( (tuple4!965 (_1!25702 tuple2!45054) (_2!25702 CacheUp!2764) (_3!3170 CacheDown!2882) (_4!482 CacheFindLongestMatch!426)) )
))
(declare-fun lt!1516180 () tuple4!964)

(assert (=> b!4287010 (= res!1758649 (= (_1!25702 lt!1516180) lt!1516172))))

(declare-fun lt!1516179 () (InoxSet Context!5634))

(declare-fun findLongestMatchZipperFastV2Mem!2 ((InoxSet Context!5634) BalanceConc!28228 BalanceConc!28228 CacheUp!2764 CacheDown!2882 CacheFindLongestMatch!426) tuple4!964)

(assert (=> b!4287010 (= lt!1516180 (findLongestMatchZipperFastV2Mem!2 lt!1516179 input!6546 totalInput!1189 cacheUp!1044 cacheDown!1163 cacheFindLongestMatch!199))))

(assert (=> b!4287010 e!2662386))

(declare-fun res!1758652 () Bool)

(assert (=> b!4287010 (=> (not res!1758652) (not e!2662386))))

(declare-fun lt!1516177 () List!47683)

(declare-fun sizeTr!332 (List!47683 Int) Int)

(declare-fun size!34870 (List!47683) Int)

(assert (=> b!4287010 (= res!1758652 (= (sizeTr!332 lt!1516177 0) (size!34870 lt!1516177)))))

(declare-datatypes ((Unit!66393 0))(
  ( (Unit!66394) )
))
(declare-fun lt!1516174 () Unit!66393)

(declare-fun lemmaSizeTrEqualsSize!331 (List!47683 Int) Unit!66393)

(assert (=> b!4287010 (= lt!1516174 (lemmaSizeTrEqualsSize!331 lt!1516177 0))))

(assert (=> b!4287010 e!2662399))

(declare-fun res!1758648 () Bool)

(assert (=> b!4287010 (=> (not res!1758648) (not e!2662399))))

(assert (=> b!4287010 (= res!1758648 (= (list!17336 (_1!25696 lt!1516172)) (_1!25697 lt!1516173)))))

(declare-fun findLongestMatch!1623 (Regex!12927 List!47683) tuple2!45056)

(assert (=> b!4287010 (= lt!1516173 (findLongestMatch!1623 r!15285 lt!1516177))))

(declare-fun findLongestMatchZipperFastV2!18 ((InoxSet Context!5634) BalanceConc!28228 BalanceConc!28228) tuple2!45054)

(assert (=> b!4287010 (= lt!1516172 (findLongestMatchZipperFastV2!18 lt!1516179 input!6546 totalInput!1189))))

(declare-fun lt!1516176 () Unit!66393)

(declare-fun longestMatchV2SameAsRegex!17 (Regex!12927 (InoxSet Context!5634) BalanceConc!28228 BalanceConc!28228) Unit!66393)

(assert (=> b!4287010 (= lt!1516176 (longestMatchV2SameAsRegex!17 r!15285 lt!1516179 input!6546 totalInput!1189))))

(declare-fun focus!319 (Regex!12927) (InoxSet Context!5634))

(assert (=> b!4287010 (= lt!1516179 (focus!319 r!15285))))

(declare-fun b!4287011 () Bool)

(declare-fun tp!1313119 () Bool)

(declare-fun tp!1313117 () Bool)

(assert (=> b!4287011 (= e!2662393 (and tp!1313119 tp!1313117))))

(declare-fun b!4287012 () Bool)

(assert (=> b!4287012 (= e!2662376 (= (totalInput!4323 (_4!482 lt!1516180)) totalInput!1189))))

(declare-fun b!4287013 () Bool)

(declare-fun res!1758653 () Bool)

(assert (=> b!4287013 (=> (not res!1758653) (not e!2662390))))

(declare-fun valid!3360 (CacheUp!2764) Bool)

(assert (=> b!4287013 (= res!1758653 (valid!3360 cacheUp!1044))))

(declare-fun mapIsEmpty!19552 () Bool)

(assert (=> mapIsEmpty!19552 mapRes!19553))

(declare-fun tp!1313130 () Bool)

(declare-fun tp!1313141 () Bool)

(declare-fun array_inv!4961 (array!15502) Bool)

(assert (=> b!4287014 (= e!2662391 (and tp!1313116 tp!1313130 tp!1313141 (array_inv!4958 (_keys!4626 (v!41462 (underlying!8881 (v!41463 (underlying!8882 (cache!4372 cacheFindLongestMatch!199))))))) (array_inv!4961 (_values!4607 (v!41462 (underlying!8881 (v!41463 (underlying!8882 (cache!4372 cacheFindLongestMatch!199))))))) e!2662382))))

(declare-fun e!2662404 () Bool)

(assert (=> b!4287015 (= e!2662404 (and e!2662406 tp!1313125))))

(declare-fun b!4287016 () Bool)

(declare-fun e!2662403 () Bool)

(assert (=> b!4287016 (= e!2662387 e!2662403)))

(declare-fun mapIsEmpty!19553 () Bool)

(assert (=> mapIsEmpty!19553 mapRes!19552))

(declare-fun mapNonEmpty!19553 () Bool)

(declare-fun tp!1313129 () Bool)

(declare-fun tp!1313136 () Bool)

(assert (=> mapNonEmpty!19553 (= mapRes!19551 (and tp!1313129 tp!1313136))))

(declare-fun mapValue!19552 () List!47682)

(declare-fun mapRest!19553 () (Array (_ BitVec 32) List!47682))

(declare-fun mapKey!19551 () (_ BitVec 32))

(assert (=> mapNonEmpty!19553 (= (arr!6921 (_values!4607 (v!41462 (underlying!8881 (v!41463 (underlying!8882 (cache!4372 cacheFindLongestMatch!199))))))) (store mapRest!19553 mapKey!19551 mapValue!19552))))

(declare-fun b!4287017 () Bool)

(declare-fun res!1758650 () Bool)

(assert (=> b!4287017 (=> (not res!1758650) (not e!2662376))))

(assert (=> b!4287017 (= res!1758650 (valid!3359 (_3!3170 lt!1516180)))))

(declare-fun b!4287018 () Bool)

(declare-fun res!1758646 () Bool)

(assert (=> b!4287018 (=> (not res!1758646) (not e!2662390))))

(declare-fun valid!3361 (CacheFindLongestMatch!426) Bool)

(assert (=> b!4287018 (= res!1758646 (valid!3361 cacheFindLongestMatch!199))))

(declare-fun b!4287019 () Bool)

(declare-fun e!2662379 () Bool)

(declare-fun lt!1516175 () MutLongMap!4327)

(assert (=> b!4287019 (= e!2662379 (and e!2662401 ((_ is LongMap!4327) lt!1516175)))))

(assert (=> b!4287019 (= lt!1516175 (v!41465 (underlying!8884 (cache!4373 cacheDown!1163))))))

(declare-fun b!4287020 () Bool)

(declare-fun tp_is_empty!23085 () Bool)

(assert (=> b!4287020 (= e!2662393 tp_is_empty!23085)))

(declare-fun b!4287021 () Bool)

(assert (=> b!4287021 (= e!2662402 e!2662385)))

(declare-fun b!4287022 () Bool)

(declare-fun res!1758645 () Bool)

(assert (=> b!4287022 (=> (not res!1758645) (not e!2662376))))

(assert (=> b!4287022 (= res!1758645 (valid!3361 (_4!482 lt!1516180)))))

(declare-fun b!4287023 () Bool)

(declare-fun res!1758651 () Bool)

(assert (=> b!4287023 (=> (not res!1758651) (not e!2662376))))

(assert (=> b!4287023 (= res!1758651 (valid!3360 (_2!25702 lt!1516180)))))

(declare-fun b!4287024 () Bool)

(assert (=> b!4287024 (= e!2662389 (and e!2662404 (inv!63024 (totalInput!4323 cacheFindLongestMatch!199)) e!2662384))))

(declare-fun b!4287025 () Bool)

(assert (=> b!4287025 (= e!2662381 e!2662388)))

(assert (=> b!4287026 (= e!2662403 (and e!2662379 tp!1313113))))

(declare-fun b!4287027 () Bool)

(declare-fun res!1758643 () Bool)

(assert (=> b!4287027 (=> (not res!1758643) (not e!2662390))))

(assert (=> b!4287027 (= res!1758643 (= (totalInput!4323 cacheFindLongestMatch!199) totalInput!1189))))

(declare-fun b!4287028 () Bool)

(assert (=> b!4287028 (= e!2662390 e!2662377)))

(declare-fun res!1758644 () Bool)

(assert (=> b!4287028 (=> (not res!1758644) (not e!2662377))))

(declare-fun isSuffix!1020 (List!47683 List!47683) Bool)

(assert (=> b!4287028 (= res!1758644 (isSuffix!1020 lt!1516177 (list!17336 totalInput!1189)))))

(assert (=> b!4287028 (= lt!1516177 (list!17336 input!6546))))

(assert (=> b!4287029 (= e!2662400 (and e!2662398 tp!1313126))))

(assert (= (and start!411830 res!1758647) b!4287013))

(assert (= (and b!4287013 res!1758653) b!4287001))

(assert (= (and b!4287001 res!1758654) b!4287018))

(assert (= (and b!4287018 res!1758646) b!4287027))

(assert (= (and b!4287027 res!1758643) b!4287028))

(assert (= (and b!4287028 res!1758644) b!4287010))

(assert (= (and b!4287010 res!1758648) b!4286992))

(assert (= (and b!4287010 res!1758652) b!4286998))

(assert (= (and b!4287010 res!1758649) b!4287023))

(assert (= (and b!4287023 res!1758651) b!4287017))

(assert (= (and b!4287017 res!1758650) b!4287022))

(assert (= (and b!4287022 res!1758645) b!4287012))

(assert (= start!411830 b!4287000))

(assert (= (and start!411830 ((_ is ElementMatch!12927) r!15285)) b!4287020))

(assert (= (and start!411830 ((_ is Concat!21246) r!15285)) b!4287011))

(assert (= (and start!411830 ((_ is Star!12927) r!15285)) b!4286999))

(assert (= (and start!411830 ((_ is Union!12927) r!15285)) b!4287003))

(assert (= start!411830 b!4287009))

(assert (= (and b!4286997 condMapEmpty!19553) mapIsEmpty!19551))

(assert (= (and b!4286997 (not condMapEmpty!19553)) mapNonEmpty!19553))

(assert (= b!4287014 b!4286997))

(assert (= b!4287002 b!4287014))

(assert (= b!4287025 b!4287002))

(assert (= (and b!4287006 ((_ is LongMap!4326) (v!41463 (underlying!8882 (cache!4372 cacheFindLongestMatch!199))))) b!4287025))

(assert (= b!4287015 b!4287006))

(assert (= (and b!4287024 ((_ is HashMap!4232) (cache!4372 cacheFindLongestMatch!199))) b!4287015))

(assert (= b!4287024 b!4286991))

(assert (= start!411830 b!4287024))

(assert (= (and b!4286994 condMapEmpty!19552) mapIsEmpty!19553))

(assert (= (and b!4286994 (not condMapEmpty!19552)) mapNonEmpty!19551))

(assert (= b!4287007 b!4286994))

(assert (= b!4286995 b!4287007))

(assert (= b!4287005 b!4286995))

(assert (= (and b!4287019 ((_ is LongMap!4327) (v!41465 (underlying!8884 (cache!4373 cacheDown!1163))))) b!4287005))

(assert (= b!4287026 b!4287019))

(assert (= (and b!4287016 ((_ is HashMap!4233) (cache!4373 cacheDown!1163))) b!4287026))

(assert (= start!411830 b!4287016))

(assert (= (and b!4286996 condMapEmpty!19551) mapIsEmpty!19552))

(assert (= (and b!4286996 (not condMapEmpty!19551)) mapNonEmpty!19552))

(assert (= b!4287008 b!4286996))

(assert (= b!4286990 b!4287008))

(assert (= b!4287021 b!4286990))

(assert (= (and b!4287004 ((_ is LongMap!4328) (v!41467 (underlying!8886 (cache!4374 cacheUp!1044))))) b!4287021))

(assert (= b!4287029 b!4287004))

(assert (= (and b!4286993 ((_ is HashMap!4234) (cache!4374 cacheUp!1044))) b!4287029))

(assert (= start!411830 b!4286993))

(declare-fun m!4882411 () Bool)

(assert (=> b!4287024 m!4882411))

(declare-fun m!4882413 () Bool)

(assert (=> b!4286998 m!4882413))

(declare-fun m!4882415 () Bool)

(assert (=> b!4287007 m!4882415))

(declare-fun m!4882417 () Bool)

(assert (=> b!4287007 m!4882417))

(declare-fun m!4882419 () Bool)

(assert (=> b!4287028 m!4882419))

(assert (=> b!4287028 m!4882419))

(declare-fun m!4882421 () Bool)

(assert (=> b!4287028 m!4882421))

(declare-fun m!4882423 () Bool)

(assert (=> b!4287028 m!4882423))

(declare-fun m!4882425 () Bool)

(assert (=> b!4287008 m!4882425))

(declare-fun m!4882427 () Bool)

(assert (=> b!4287008 m!4882427))

(declare-fun m!4882429 () Bool)

(assert (=> mapNonEmpty!19551 m!4882429))

(declare-fun m!4882431 () Bool)

(assert (=> start!411830 m!4882431))

(declare-fun m!4882433 () Bool)

(assert (=> start!411830 m!4882433))

(declare-fun m!4882435 () Bool)

(assert (=> start!411830 m!4882435))

(declare-fun m!4882437 () Bool)

(assert (=> start!411830 m!4882437))

(declare-fun m!4882439 () Bool)

(assert (=> start!411830 m!4882439))

(declare-fun m!4882441 () Bool)

(assert (=> start!411830 m!4882441))

(declare-fun m!4882443 () Bool)

(assert (=> b!4287001 m!4882443))

(declare-fun m!4882445 () Bool)

(assert (=> b!4287014 m!4882445))

(declare-fun m!4882447 () Bool)

(assert (=> b!4287014 m!4882447))

(declare-fun m!4882449 () Bool)

(assert (=> b!4287017 m!4882449))

(declare-fun m!4882451 () Bool)

(assert (=> b!4287009 m!4882451))

(declare-fun m!4882453 () Bool)

(assert (=> b!4286992 m!4882453))

(declare-fun m!4882455 () Bool)

(assert (=> mapNonEmpty!19552 m!4882455))

(declare-fun m!4882457 () Bool)

(assert (=> b!4287013 m!4882457))

(declare-fun m!4882459 () Bool)

(assert (=> b!4287000 m!4882459))

(declare-fun m!4882461 () Bool)

(assert (=> b!4287023 m!4882461))

(declare-fun m!4882463 () Bool)

(assert (=> b!4287010 m!4882463))

(declare-fun m!4882465 () Bool)

(assert (=> b!4287010 m!4882465))

(declare-fun m!4882467 () Bool)

(assert (=> b!4287010 m!4882467))

(declare-fun m!4882469 () Bool)

(assert (=> b!4287010 m!4882469))

(declare-fun m!4882471 () Bool)

(assert (=> b!4287010 m!4882471))

(declare-fun m!4882473 () Bool)

(assert (=> b!4287010 m!4882473))

(declare-fun m!4882475 () Bool)

(assert (=> b!4287010 m!4882475))

(declare-fun m!4882477 () Bool)

(assert (=> b!4287010 m!4882477))

(declare-fun m!4882479 () Bool)

(assert (=> b!4287010 m!4882479))

(declare-fun m!4882481 () Bool)

(assert (=> mapNonEmpty!19553 m!4882481))

(declare-fun m!4882483 () Bool)

(assert (=> b!4286991 m!4882483))

(declare-fun m!4882485 () Bool)

(assert (=> b!4287022 m!4882485))

(declare-fun m!4882487 () Bool)

(assert (=> b!4287018 m!4882487))

(check-sat (not start!411830) (not b!4287000) b_and!338351 (not b!4286994) (not b!4287009) (not b_next!127839) (not b!4287022) (not b!4287017) (not b!4287023) (not b_next!127833) (not b!4287003) (not b!4287028) (not b_next!127841) (not b!4286992) b_and!338349 (not b!4287014) (not b!4287010) (not b!4287018) tp_is_empty!23085 (not mapNonEmpty!19553) (not b!4287013) (not b!4287024) (not b_next!127831) (not b!4287007) (not b!4286998) b_and!338345 (not b!4286996) (not mapNonEmpty!19552) b_and!338353 (not b!4287001) (not b!4286997) (not b!4286991) (not b_next!127835) b_and!338343 (not b!4287011) (not b!4287008) (not b_next!127837) (not mapNonEmpty!19551) (not b!4286999) b_and!338347)
(check-sat (not b_next!127841) b_and!338351 b_and!338349 (not b_next!127839) (not b_next!127831) b_and!338345 b_and!338353 (not b_next!127835) b_and!338343 (not b_next!127837) b_and!338347 (not b_next!127833))
