; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!207548 () Bool)

(assert start!207548)

(declare-fun b!2132285 () Bool)

(declare-fun b_free!62309 () Bool)

(declare-fun b_next!63013 () Bool)

(assert (=> b!2132285 (= b_free!62309 (not b_next!63013))))

(declare-fun tp!656192 () Bool)

(declare-fun b_and!171889 () Bool)

(assert (=> b!2132285 (= tp!656192 b_and!171889)))

(declare-fun b!2132261 () Bool)

(declare-fun b_free!62311 () Bool)

(declare-fun b_next!63015 () Bool)

(assert (=> b!2132261 (= b_free!62311 (not b_next!63015))))

(declare-fun tp!656184 () Bool)

(declare-fun b_and!171891 () Bool)

(assert (=> b!2132261 (= tp!656184 b_and!171891)))

(declare-fun b!2132268 () Bool)

(declare-fun b_free!62313 () Bool)

(declare-fun b_next!63017 () Bool)

(assert (=> b!2132268 (= b_free!62313 (not b_next!63017))))

(declare-fun tp!656185 () Bool)

(declare-fun b_and!171893 () Bool)

(assert (=> b!2132268 (= tp!656185 b_and!171893)))

(declare-fun b!2132251 () Bool)

(declare-fun b_free!62315 () Bool)

(declare-fun b_next!63019 () Bool)

(assert (=> b!2132251 (= b_free!62315 (not b_next!63019))))

(declare-fun tp!656190 () Bool)

(declare-fun b_and!171895 () Bool)

(assert (=> b!2132251 (= tp!656190 b_and!171895)))

(declare-fun b!2132272 () Bool)

(declare-fun b_free!62317 () Bool)

(declare-fun b_next!63021 () Bool)

(assert (=> b!2132272 (= b_free!62317 (not b_next!63021))))

(declare-fun tp!656188 () Bool)

(declare-fun b_and!171897 () Bool)

(assert (=> b!2132272 (= tp!656188 b_and!171897)))

(declare-fun b!2132259 () Bool)

(declare-fun b_free!62319 () Bool)

(declare-fun b_next!63023 () Bool)

(assert (=> b!2132259 (= b_free!62319 (not b_next!63023))))

(declare-fun tp!656181 () Bool)

(declare-fun b_and!171899 () Bool)

(assert (=> b!2132259 (= tp!656181 b_and!171899)))

(declare-fun b!2132257 () Bool)

(assert (=> b!2132257 true))

(declare-fun bs!444268 () Bool)

(declare-fun b!2132278 () Bool)

(assert (= bs!444268 (and b!2132278 b!2132257)))

(declare-fun lambda!79259 () Int)

(declare-fun lambda!79258 () Int)

(assert (=> bs!444268 (not (= lambda!79259 lambda!79258))))

(assert (=> b!2132278 true))

(declare-fun setRes!15792 () Bool)

(declare-fun tp!656204 () Bool)

(declare-fun e!1360308 () Bool)

(declare-fun setNonEmpty!15792 () Bool)

(declare-datatypes ((C!11588 0))(
  ( (C!11589 (val!6780 Int)) )
))
(declare-datatypes ((Regex!5721 0))(
  ( (ElementMatch!5721 (c!340221 C!11588)) (Concat!10023 (regOne!11954 Regex!5721) (regTwo!11954 Regex!5721)) (EmptyExpr!5721) (Star!5721 (reg!6050 Regex!5721)) (EmptyLang!5721) (Union!5721 (regOne!11955 Regex!5721) (regTwo!11955 Regex!5721)) )
))
(declare-datatypes ((List!24102 0))(
  ( (Nil!24018) (Cons!24018 (h!29419 Regex!5721) (t!196630 List!24102)) )
))
(declare-datatypes ((Context!2582 0))(
  ( (Context!2583 (exprs!1791 List!24102)) )
))
(declare-fun setElem!15793 () Context!2582)

(declare-fun inv!31661 (Context!2582) Bool)

(assert (=> setNonEmpty!15792 (= setRes!15792 (and tp!656204 (inv!31661 setElem!15793) e!1360308))))

(define-sort InoxSet (T) (Array T Bool))

(declare-fun z!3839 () (InoxSet Context!2582))

(declare-fun setRest!15793 () (InoxSet Context!2582))

(assert (=> setNonEmpty!15792 (= z!3839 ((_ map or) (store ((as const (Array Context!2582 Bool)) false) setElem!15793 true) setRest!15793))))

(declare-fun b!2132244 () Bool)

(declare-fun e!1360304 () Bool)

(declare-fun e!1360303 () Bool)

(declare-datatypes ((tuple3!3156 0))(
  ( (tuple3!3157 (_1!13930 (InoxSet Context!2582)) (_2!13930 Int) (_3!2048 Int)) )
))
(declare-datatypes ((tuple2!23764 0))(
  ( (tuple2!23765 (_1!13931 tuple3!3156) (_2!13931 Int)) )
))
(declare-datatypes ((List!24103 0))(
  ( (Nil!24019) (Cons!24019 (h!29420 tuple2!23764) (t!196631 List!24103)) )
))
(declare-datatypes ((array!8873 0))(
  ( (array!8874 (arr!3948 (Array (_ BitVec 32) (_ BitVec 64))) (size!18787 (_ BitVec 32))) )
))
(declare-datatypes ((array!8875 0))(
  ( (array!8876 (arr!3949 (Array (_ BitVec 32) List!24103)) (size!18788 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!5212 0))(
  ( (LongMapFixedSize!5213 (defaultEntry!2971 Int) (mask!6782 (_ BitVec 32)) (extraKeys!2854 (_ BitVec 32)) (zeroValue!2864 List!24103) (minValue!2864 List!24103) (_size!5263 (_ BitVec 32)) (_keys!2903 array!8873) (_values!2886 array!8875) (_vacant!2667 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!10249 0))(
  ( (Cell!10250 (v!28574 LongMapFixedSize!5212)) )
))
(declare-datatypes ((MutLongMap!2606 0))(
  ( (LongMap!2606 (underlying!5407 Cell!10249)) (MutLongMapExt!2605 (__x!15994 Int)) )
))
(declare-fun lt!796642 () MutLongMap!2606)

(get-info :version)

(assert (=> b!2132244 (= e!1360304 (and e!1360303 ((_ is LongMap!2606) lt!796642)))))

(declare-datatypes ((List!24104 0))(
  ( (Nil!24020) (Cons!24020 (h!29421 C!11588) (t!196632 List!24104)) )
))
(declare-datatypes ((IArray!15723 0))(
  ( (IArray!15724 (innerList!7919 List!24104)) )
))
(declare-datatypes ((Conc!7859 0))(
  ( (Node!7859 (left!18520 Conc!7859) (right!18850 Conc!7859) (csize!15948 Int) (cheight!8070 Int)) (Leaf!11487 (xs!10801 IArray!15723) (csize!15949 Int)) (Empty!7859) )
))
(declare-datatypes ((Cell!10251 0))(
  ( (Cell!10252 (v!28575 MutLongMap!2606)) )
))
(declare-datatypes ((Hashable!2520 0))(
  ( (HashableExt!2519 (__x!15995 Int)) )
))
(declare-datatypes ((MutableMap!2520 0))(
  ( (MutableMapExt!2519 (__x!15996 Int)) (HashMap!2520 (underlying!5408 Cell!10251) (hashF!4443 Hashable!2520) (_size!5264 (_ BitVec 32)) (defaultValue!2682 Int)) )
))
(declare-datatypes ((BalanceConc!15480 0))(
  ( (BalanceConc!15481 (c!340222 Conc!7859)) )
))
(declare-datatypes ((CacheFurthestNullable!688 0))(
  ( (CacheFurthestNullable!689 (cache!2901 MutableMap!2520) (totalInput!3019 BalanceConc!15480)) )
))
(declare-fun cacheFurthestNullable!114 () CacheFurthestNullable!688)

(assert (=> b!2132244 (= lt!796642 (v!28575 (underlying!5408 (cache!2901 cacheFurthestNullable!114))))))

(declare-fun b!2132245 () Bool)

(declare-fun e!1360282 () Bool)

(declare-fun tp!656197 () Bool)

(assert (=> b!2132245 (= e!1360282 tp!656197)))

(declare-fun b!2132246 () Bool)

(declare-fun res!921629 () Bool)

(declare-fun e!1360309 () Bool)

(assert (=> b!2132246 (=> (not res!921629) (not e!1360309))))

(declare-fun e!1360281 () Bool)

(assert (=> b!2132246 (= res!921629 e!1360281)))

(declare-fun res!921624 () Bool)

(assert (=> b!2132246 (=> res!921624 e!1360281)))

(declare-fun nullableZipper!104 ((InoxSet Context!2582)) Bool)

(assert (=> b!2132246 (= res!921624 (not (nullableZipper!104 z!3839)))))

(declare-fun b!2132247 () Bool)

(declare-fun res!921620 () Bool)

(assert (=> b!2132247 (=> (not res!921620) (not e!1360309))))

(declare-datatypes ((tuple2!23766 0))(
  ( (tuple2!23767 (_1!13932 Context!2582) (_2!13932 C!11588)) )
))
(declare-datatypes ((tuple2!23768 0))(
  ( (tuple2!23769 (_1!13933 tuple2!23766) (_2!13933 (InoxSet Context!2582))) )
))
(declare-datatypes ((List!24105 0))(
  ( (Nil!24021) (Cons!24021 (h!29422 tuple2!23768) (t!196633 List!24105)) )
))
(declare-datatypes ((array!8877 0))(
  ( (array!8878 (arr!3950 (Array (_ BitVec 32) List!24105)) (size!18789 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!5214 0))(
  ( (LongMapFixedSize!5215 (defaultEntry!2972 Int) (mask!6783 (_ BitVec 32)) (extraKeys!2855 (_ BitVec 32)) (zeroValue!2865 List!24105) (minValue!2865 List!24105) (_size!5265 (_ BitVec 32)) (_keys!2904 array!8873) (_values!2887 array!8877) (_vacant!2668 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!10253 0))(
  ( (Cell!10254 (v!28576 LongMapFixedSize!5214)) )
))
(declare-datatypes ((MutLongMap!2607 0))(
  ( (LongMap!2607 (underlying!5409 Cell!10253)) (MutLongMapExt!2606 (__x!15997 Int)) )
))
(declare-datatypes ((Cell!10255 0))(
  ( (Cell!10256 (v!28577 MutLongMap!2607)) )
))
(declare-datatypes ((Hashable!2521 0))(
  ( (HashableExt!2520 (__x!15998 Int)) )
))
(declare-datatypes ((MutableMap!2521 0))(
  ( (MutableMapExt!2520 (__x!15999 Int)) (HashMap!2521 (underlying!5410 Cell!10255) (hashF!4444 Hashable!2521) (_size!5266 (_ BitVec 32)) (defaultValue!2683 Int)) )
))
(declare-datatypes ((CacheUp!1746 0))(
  ( (CacheUp!1747 (cache!2902 MutableMap!2521)) )
))
(declare-fun cacheUp!979 () CacheUp!1746)

(declare-fun valid!2045 (CacheUp!1746) Bool)

(assert (=> b!2132247 (= res!921620 (valid!2045 cacheUp!979))))

(declare-fun b!2132248 () Bool)

(declare-fun res!921630 () Bool)

(declare-fun e!1360306 () Bool)

(assert (=> b!2132248 (=> res!921630 e!1360306)))

(declare-fun lostCauseZipper!78 ((InoxSet Context!2582)) Bool)

(assert (=> b!2132248 (= res!921630 (lostCauseZipper!78 z!3839))))

(declare-fun b!2132249 () Bool)

(declare-fun e!1360307 () Bool)

(declare-fun tp!656187 () Bool)

(declare-fun mapRes!12593 () Bool)

(assert (=> b!2132249 (= e!1360307 (and tp!656187 mapRes!12593))))

(declare-fun condMapEmpty!12594 () Bool)

(declare-fun mapDefault!12592 () List!24105)

(assert (=> b!2132249 (= condMapEmpty!12594 (= (arr!3950 (_values!2887 (v!28576 (underlying!5409 (v!28577 (underlying!5410 (cache!2902 cacheUp!979))))))) ((as const (Array (_ BitVec 32) List!24105)) mapDefault!12592)))))

(declare-fun b!2132250 () Bool)

(declare-fun e!1360288 () Bool)

(declare-fun e!1360277 () Bool)

(declare-fun lt!796639 () MutLongMap!2607)

(assert (=> b!2132250 (= e!1360288 (and e!1360277 ((_ is LongMap!2607) lt!796639)))))

(assert (=> b!2132250 (= lt!796639 (v!28577 (underlying!5410 (cache!2902 cacheUp!979))))))

(declare-fun e!1360289 () Bool)

(declare-fun e!1360280 () Bool)

(assert (=> b!2132251 (= e!1360289 (and e!1360280 tp!656190))))

(declare-fun b!2132252 () Bool)

(declare-fun e!1360283 () Bool)

(declare-fun e!1360301 () Bool)

(assert (=> b!2132252 (= e!1360283 e!1360301)))

(declare-fun b!2132253 () Bool)

(declare-fun res!921627 () Bool)

(assert (=> b!2132253 (=> (not res!921627) (not e!1360309))))

(declare-fun totalInput!851 () BalanceConc!15480)

(assert (=> b!2132253 (= res!921627 (= (totalInput!3019 cacheFurthestNullable!114) totalInput!851))))

(declare-fun tp!656180 () Bool)

(declare-datatypes ((StackFrame!136 0))(
  ( (StackFrame!137 (z!5796 (InoxSet Context!2582)) (from!2682 Int) (lastNullablePos!369 Int) (res!921633 Int) (totalInput!3020 BalanceConc!15480)) )
))
(declare-datatypes ((List!24106 0))(
  ( (Nil!24022) (Cons!24022 (h!29423 StackFrame!136) (t!196634 List!24106)) )
))
(declare-fun stack!8 () List!24106)

(declare-fun e!1360287 () Bool)

(declare-fun b!2132254 () Bool)

(declare-fun e!1360298 () Bool)

(declare-fun inv!31662 (StackFrame!136) Bool)

(assert (=> b!2132254 (= e!1360287 (and (inv!31662 (h!29423 stack!8)) e!1360298 tp!656180))))

(declare-fun b!2132255 () Bool)

(declare-fun e!1360294 () Bool)

(declare-fun tp!656201 () Bool)

(declare-fun inv!31663 (Conc!7859) Bool)

(assert (=> b!2132255 (= e!1360294 (and (inv!31663 (c!340222 (totalInput!3019 cacheFurthestNullable!114))) tp!656201))))

(declare-fun setRes!15793 () Bool)

(declare-fun b!2132256 () Bool)

(declare-fun e!1360275 () Bool)

(declare-fun inv!31664 (BalanceConc!15480) Bool)

(assert (=> b!2132256 (= e!1360298 (and setRes!15793 (inv!31664 (totalInput!3020 (h!29423 stack!8))) e!1360275))))

(declare-fun condSetEmpty!15793 () Bool)

(assert (=> b!2132256 (= condSetEmpty!15793 (= (z!5796 (h!29423 stack!8)) ((as const (Array Context!2582 Bool)) false)))))

(declare-fun e!1360291 () Bool)

(assert (=> b!2132257 (= e!1360309 e!1360291)))

(declare-fun res!921623 () Bool)

(assert (=> b!2132257 (=> (not res!921623) (not e!1360291))))

(declare-fun forall!4914 (List!24106 Int) Bool)

(assert (=> b!2132257 (= res!921623 (forall!4914 stack!8 lambda!79258))))

(declare-fun lt!796638 () Int)

(declare-fun lastNullablePos!123 () Int)

(declare-fun lt!796640 () Int)

(declare-fun from!1043 () Int)

(declare-fun furthestNullablePosition!39 ((InoxSet Context!2582) Int BalanceConc!15480 Int Int) Int)

(assert (=> b!2132257 (= lt!796640 (furthestNullablePosition!39 z!3839 from!1043 totalInput!851 lt!796638 lastNullablePos!123))))

(declare-fun b!2132258 () Bool)

(declare-fun e!1360274 () Bool)

(assert (=> b!2132258 (= e!1360274 e!1360289)))

(declare-fun e!1360305 () Bool)

(declare-fun tp!656182 () Bool)

(declare-fun tp!656206 () Bool)

(declare-fun e!1360290 () Bool)

(declare-fun array_inv!2822 (array!8873) Bool)

(declare-fun array_inv!2823 (array!8875) Bool)

(assert (=> b!2132259 (= e!1360290 (and tp!656181 tp!656182 tp!656206 (array_inv!2822 (_keys!2903 (v!28574 (underlying!5407 (v!28575 (underlying!5408 (cache!2901 cacheFurthestNullable!114))))))) (array_inv!2823 (_values!2886 (v!28574 (underlying!5407 (v!28575 (underlying!5408 (cache!2901 cacheFurthestNullable!114))))))) e!1360305))))

(declare-fun b!2132260 () Bool)

(declare-fun e!1360285 () Bool)

(assert (=> b!2132260 (= e!1360285 e!1360309)))

(declare-fun res!921628 () Bool)

(assert (=> b!2132260 (=> (not res!921628) (not e!1360309))))

(declare-fun totalInputSize!296 () Int)

(assert (=> b!2132260 (= res!921628 (and (= totalInputSize!296 lt!796638) (>= lastNullablePos!123 (- 1)) (< lastNullablePos!123 from!1043)))))

(declare-fun size!18790 (BalanceConc!15480) Int)

(assert (=> b!2132260 (= lt!796638 (size!18790 totalInput!851))))

(declare-fun e!1360273 () Bool)

(assert (=> b!2132261 (= e!1360273 (and e!1360304 tp!656184))))

(declare-fun mapNonEmpty!12592 () Bool)

(declare-fun mapRes!12592 () Bool)

(declare-fun tp!656202 () Bool)

(declare-fun tp!656193 () Bool)

(assert (=> mapNonEmpty!12592 (= mapRes!12592 (and tp!656202 tp!656193))))

(declare-fun mapKey!12592 () (_ BitVec 32))

(declare-fun mapRest!12592 () (Array (_ BitVec 32) List!24103))

(declare-fun mapValue!12594 () List!24103)

(assert (=> mapNonEmpty!12592 (= (arr!3949 (_values!2886 (v!28574 (underlying!5407 (v!28575 (underlying!5408 (cache!2901 cacheFurthestNullable!114))))))) (store mapRest!12592 mapKey!12592 mapValue!12594))))

(declare-fun b!2132262 () Bool)

(declare-fun e!1360302 () Bool)

(declare-fun e!1360299 () Bool)

(assert (=> b!2132262 (= e!1360302 e!1360299)))

(declare-fun b!2132263 () Bool)

(declare-fun e!1360296 () Bool)

(declare-fun tp!656205 () Bool)

(assert (=> b!2132263 (= e!1360296 (and (inv!31663 (c!340222 totalInput!851)) tp!656205))))

(declare-fun setIsEmpty!15792 () Bool)

(assert (=> setIsEmpty!15792 setRes!15792))

(declare-fun b!2132264 () Bool)

(assert (=> b!2132264 (= e!1360281 (= lastNullablePos!123 (- from!1043 1)))))

(declare-fun b!2132265 () Bool)

(declare-fun tp!656191 () Bool)

(assert (=> b!2132265 (= e!1360305 (and tp!656191 mapRes!12592))))

(declare-fun condMapEmpty!12592 () Bool)

(declare-fun mapDefault!12593 () List!24103)

(assert (=> b!2132265 (= condMapEmpty!12592 (= (arr!3949 (_values!2886 (v!28574 (underlying!5407 (v!28575 (underlying!5408 (cache!2901 cacheFurthestNullable!114))))))) ((as const (Array (_ BitVec 32) List!24103)) mapDefault!12593)))))

(declare-fun mapNonEmpty!12593 () Bool)

(declare-fun mapRes!12594 () Bool)

(declare-fun tp!656199 () Bool)

(declare-fun tp!656196 () Bool)

(assert (=> mapNonEmpty!12593 (= mapRes!12594 (and tp!656199 tp!656196))))

(declare-datatypes ((tuple3!3158 0))(
  ( (tuple3!3159 (_1!13934 Regex!5721) (_2!13934 Context!2582) (_3!2049 C!11588)) )
))
(declare-datatypes ((tuple2!23770 0))(
  ( (tuple2!23771 (_1!13935 tuple3!3158) (_2!13935 (InoxSet Context!2582))) )
))
(declare-datatypes ((List!24107 0))(
  ( (Nil!24023) (Cons!24023 (h!29424 tuple2!23770) (t!196635 List!24107)) )
))
(declare-fun mapRest!12594 () (Array (_ BitVec 32) List!24107))

(declare-datatypes ((Hashable!2522 0))(
  ( (HashableExt!2521 (__x!16000 Int)) )
))
(declare-datatypes ((array!8879 0))(
  ( (array!8880 (arr!3951 (Array (_ BitVec 32) List!24107)) (size!18791 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!5216 0))(
  ( (LongMapFixedSize!5217 (defaultEntry!2973 Int) (mask!6784 (_ BitVec 32)) (extraKeys!2856 (_ BitVec 32)) (zeroValue!2866 List!24107) (minValue!2866 List!24107) (_size!5267 (_ BitVec 32)) (_keys!2905 array!8873) (_values!2888 array!8879) (_vacant!2669 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!10257 0))(
  ( (Cell!10258 (v!28578 LongMapFixedSize!5216)) )
))
(declare-datatypes ((MutLongMap!2608 0))(
  ( (LongMap!2608 (underlying!5411 Cell!10257)) (MutLongMapExt!2607 (__x!16001 Int)) )
))
(declare-datatypes ((Cell!10259 0))(
  ( (Cell!10260 (v!28579 MutLongMap!2608)) )
))
(declare-datatypes ((MutableMap!2522 0))(
  ( (MutableMapExt!2521 (__x!16002 Int)) (HashMap!2522 (underlying!5412 Cell!10259) (hashF!4445 Hashable!2522) (_size!5268 (_ BitVec 32)) (defaultValue!2684 Int)) )
))
(declare-datatypes ((CacheDown!1730 0))(
  ( (CacheDown!1731 (cache!2903 MutableMap!2522)) )
))
(declare-fun cacheDown!1098 () CacheDown!1730)

(declare-fun mapValue!12593 () List!24107)

(declare-fun mapKey!12593 () (_ BitVec 32))

(assert (=> mapNonEmpty!12593 (= (arr!3951 (_values!2888 (v!28578 (underlying!5411 (v!28579 (underlying!5412 (cache!2903 cacheDown!1098))))))) (store mapRest!12594 mapKey!12593 mapValue!12593))))

(declare-fun mapNonEmpty!12594 () Bool)

(declare-fun tp!656179 () Bool)

(declare-fun tp!656189 () Bool)

(assert (=> mapNonEmpty!12594 (= mapRes!12593 (and tp!656179 tp!656189))))

(declare-fun mapValue!12592 () List!24105)

(declare-fun mapRest!12593 () (Array (_ BitVec 32) List!24105))

(declare-fun mapKey!12594 () (_ BitVec 32))

(assert (=> mapNonEmpty!12594 (= (arr!3950 (_values!2887 (v!28576 (underlying!5409 (v!28577 (underlying!5410 (cache!2902 cacheUp!979))))))) (store mapRest!12593 mapKey!12594 mapValue!12592))))

(declare-fun b!2132266 () Bool)

(declare-fun res!921621 () Bool)

(assert (=> b!2132266 (=> res!921621 e!1360306)))

(assert (=> b!2132266 (= res!921621 (= from!1043 totalInputSize!296))))

(declare-fun setIsEmpty!15793 () Bool)

(assert (=> setIsEmpty!15793 setRes!15793))

(declare-fun setNonEmpty!15793 () Bool)

(declare-fun setElem!15792 () Context!2582)

(declare-fun tp!656200 () Bool)

(assert (=> setNonEmpty!15793 (= setRes!15793 (and tp!656200 (inv!31661 setElem!15792) e!1360282))))

(declare-fun setRest!15792 () (InoxSet Context!2582))

(assert (=> setNonEmpty!15793 (= (z!5796 (h!29423 stack!8)) ((_ map or) (store ((as const (Array Context!2582 Bool)) false) setElem!15792 true) setRest!15792))))

(declare-fun b!2132267 () Bool)

(declare-fun e!1360284 () Bool)

(assert (=> b!2132267 (= e!1360277 e!1360284)))

(declare-fun tp!656186 () Bool)

(declare-fun tp!656198 () Bool)

(declare-fun e!1360286 () Bool)

(declare-fun e!1360300 () Bool)

(declare-fun array_inv!2824 (array!8879) Bool)

(assert (=> b!2132268 (= e!1360286 (and tp!656185 tp!656186 tp!656198 (array_inv!2822 (_keys!2905 (v!28578 (underlying!5411 (v!28579 (underlying!5412 (cache!2903 cacheDown!1098))))))) (array_inv!2824 (_values!2888 (v!28578 (underlying!5411 (v!28579 (underlying!5412 (cache!2903 cacheDown!1098))))))) e!1360300))))

(declare-fun b!2132269 () Bool)

(declare-fun e!1360295 () Int)

(assert (=> b!2132269 (= e!1360295 from!1043)))

(declare-fun b!2132270 () Bool)

(assert (=> b!2132270 (= e!1360299 e!1360286)))

(declare-fun b!2132271 () Bool)

(declare-fun tp!656195 () Bool)

(assert (=> b!2132271 (= e!1360300 (and tp!656195 mapRes!12594))))

(declare-fun condMapEmpty!12593 () Bool)

(declare-fun mapDefault!12594 () List!24107)

(assert (=> b!2132271 (= condMapEmpty!12593 (= (arr!3951 (_values!2888 (v!28578 (underlying!5411 (v!28579 (underlying!5412 (cache!2903 cacheDown!1098))))))) ((as const (Array (_ BitVec 32) List!24107)) mapDefault!12594)))))

(declare-fun tp!656194 () Bool)

(declare-fun tp!656178 () Bool)

(declare-fun e!1360276 () Bool)

(declare-fun array_inv!2825 (array!8877) Bool)

(assert (=> b!2132272 (= e!1360276 (and tp!656188 tp!656194 tp!656178 (array_inv!2822 (_keys!2904 (v!28576 (underlying!5409 (v!28577 (underlying!5410 (cache!2902 cacheUp!979))))))) (array_inv!2825 (_values!2887 (v!28576 (underlying!5409 (v!28577 (underlying!5410 (cache!2902 cacheUp!979))))))) e!1360307))))

(declare-fun b!2132273 () Bool)

(declare-fun res!921626 () Bool)

(assert (=> b!2132273 (=> (not res!921626) (not e!1360309))))

(declare-fun valid!2046 (CacheFurthestNullable!688) Bool)

(assert (=> b!2132273 (= res!921626 (valid!2046 cacheFurthestNullable!114))))

(declare-fun mapIsEmpty!12592 () Bool)

(assert (=> mapIsEmpty!12592 mapRes!12594))

(declare-fun b!2132274 () Bool)

(declare-fun lt!796644 () MutLongMap!2608)

(assert (=> b!2132274 (= e!1360280 (and e!1360302 ((_ is LongMap!2608) lt!796644)))))

(assert (=> b!2132274 (= lt!796644 (v!28579 (underlying!5412 (cache!2903 cacheDown!1098))))))

(declare-fun b!2132275 () Bool)

(assert (=> b!2132275 (= e!1360291 (not e!1360306))))

(declare-fun res!921631 () Bool)

(assert (=> b!2132275 (=> res!921631 e!1360306)))

(declare-datatypes ((Option!4898 0))(
  ( (None!4897) (Some!4897 (v!28580 Int)) )
))
(declare-fun get!7368 (CacheFurthestNullable!688 (InoxSet Context!2582) Int Int) Option!4898)

(assert (=> b!2132275 (= res!921631 ((_ is Some!4897) (get!7368 cacheFurthestNullable!114 z!3839 from!1043 lastNullablePos!123)))))

(assert (=> b!2132275 (forall!4914 stack!8 lambda!79258)))

(declare-fun b!2132276 () Bool)

(declare-fun e!1360297 () Bool)

(assert (=> b!2132276 (= e!1360297 e!1360290)))

(declare-fun b!2132277 () Bool)

(assert (=> b!2132277 (= e!1360306 true)))

(declare-fun lt!796641 () Int)

(declare-datatypes ((tuple3!3160 0))(
  ( (tuple3!3161 (_1!13936 (InoxSet Context!2582)) (_2!13936 CacheUp!1746) (_3!2050 CacheDown!1730)) )
))
(declare-fun lt!796643 () tuple3!3160)

(assert (=> b!2132277 (= lt!796641 (furthestNullablePosition!39 (_1!13936 lt!796643) (+ 1 from!1043) totalInput!851 lt!796638 e!1360295))))

(declare-fun c!340220 () Bool)

(assert (=> b!2132277 (= c!340220 (nullableZipper!104 (_1!13936 lt!796643)))))

(declare-fun derivationStepZipperMem!29 ((InoxSet Context!2582) C!11588 CacheUp!1746 CacheDown!1730) tuple3!3160)

(declare-fun apply!5928 (BalanceConc!15480 Int) C!11588)

(assert (=> b!2132277 (= lt!796643 (derivationStepZipperMem!29 z!3839 (apply!5928 totalInput!851 from!1043) cacheUp!979 cacheDown!1098))))

(declare-fun res!921622 () Bool)

(assert (=> b!2132278 (=> (not res!921622) (not e!1360291))))

(assert (=> b!2132278 (= res!921622 (forall!4914 stack!8 lambda!79259))))

(declare-fun b!2132279 () Bool)

(declare-fun tp!656203 () Bool)

(assert (=> b!2132279 (= e!1360308 tp!656203)))

(declare-fun b!2132280 () Bool)

(assert (=> b!2132280 (= e!1360284 e!1360276)))

(declare-fun b!2132281 () Bool)

(declare-fun res!921625 () Bool)

(assert (=> b!2132281 (=> (not res!921625) (not e!1360309))))

(declare-fun valid!2047 (CacheDown!1730) Bool)

(assert (=> b!2132281 (= res!921625 (valid!2047 cacheDown!1098))))

(declare-fun b!2132282 () Bool)

(assert (=> b!2132282 (= e!1360303 e!1360297)))

(declare-fun b!2132283 () Bool)

(assert (=> b!2132283 (= e!1360295 lastNullablePos!123)))

(declare-fun mapIsEmpty!12593 () Bool)

(assert (=> mapIsEmpty!12593 mapRes!12593))

(declare-fun b!2132284 () Bool)

(declare-fun tp!656183 () Bool)

(assert (=> b!2132284 (= e!1360275 (and (inv!31663 (c!340222 (totalInput!3020 (h!29423 stack!8)))) tp!656183))))

(declare-fun mapIsEmpty!12594 () Bool)

(assert (=> mapIsEmpty!12594 mapRes!12592))

(declare-fun res!921632 () Bool)

(assert (=> start!207548 (=> (not res!921632) (not e!1360285))))

(assert (=> start!207548 (= res!921632 (and (>= from!1043 0) (<= from!1043 totalInputSize!296)))))

(assert (=> start!207548 e!1360285))

(declare-fun e!1360292 () Bool)

(declare-fun inv!31665 (CacheFurthestNullable!688) Bool)

(assert (=> start!207548 (and (inv!31665 cacheFurthestNullable!114) e!1360292)))

(assert (=> start!207548 true))

(declare-fun inv!31666 (CacheDown!1730) Bool)

(assert (=> start!207548 (and (inv!31666 cacheDown!1098) e!1360274)))

(declare-fun inv!31667 (CacheUp!1746) Bool)

(assert (=> start!207548 (and (inv!31667 cacheUp!979) e!1360283)))

(declare-fun condSetEmpty!15792 () Bool)

(assert (=> start!207548 (= condSetEmpty!15792 (= z!3839 ((as const (Array Context!2582 Bool)) false)))))

(assert (=> start!207548 setRes!15792))

(assert (=> start!207548 (and (inv!31664 totalInput!851) e!1360296)))

(assert (=> start!207548 e!1360287))

(assert (=> b!2132285 (= e!1360301 (and e!1360288 tp!656192))))

(declare-fun b!2132286 () Bool)

(assert (=> b!2132286 (= e!1360292 (and e!1360273 (inv!31664 (totalInput!3019 cacheFurthestNullable!114)) e!1360294))))

(assert (= (and start!207548 res!921632) b!2132260))

(assert (= (and b!2132260 res!921628) b!2132246))

(assert (= (and b!2132246 (not res!921624)) b!2132264))

(assert (= (and b!2132246 res!921629) b!2132247))

(assert (= (and b!2132247 res!921620) b!2132281))

(assert (= (and b!2132281 res!921625) b!2132273))

(assert (= (and b!2132273 res!921626) b!2132253))

(assert (= (and b!2132253 res!921627) b!2132257))

(assert (= (and b!2132257 res!921623) b!2132278))

(assert (= (and b!2132278 res!921622) b!2132275))

(assert (= (and b!2132275 (not res!921631)) b!2132266))

(assert (= (and b!2132266 (not res!921621)) b!2132248))

(assert (= (and b!2132248 (not res!921630)) b!2132277))

(assert (= (and b!2132277 c!340220) b!2132269))

(assert (= (and b!2132277 (not c!340220)) b!2132283))

(assert (= (and b!2132265 condMapEmpty!12592) mapIsEmpty!12594))

(assert (= (and b!2132265 (not condMapEmpty!12592)) mapNonEmpty!12592))

(assert (= b!2132259 b!2132265))

(assert (= b!2132276 b!2132259))

(assert (= b!2132282 b!2132276))

(assert (= (and b!2132244 ((_ is LongMap!2606) (v!28575 (underlying!5408 (cache!2901 cacheFurthestNullable!114))))) b!2132282))

(assert (= b!2132261 b!2132244))

(assert (= (and b!2132286 ((_ is HashMap!2520) (cache!2901 cacheFurthestNullable!114))) b!2132261))

(assert (= b!2132286 b!2132255))

(assert (= start!207548 b!2132286))

(assert (= (and b!2132271 condMapEmpty!12593) mapIsEmpty!12592))

(assert (= (and b!2132271 (not condMapEmpty!12593)) mapNonEmpty!12593))

(assert (= b!2132268 b!2132271))

(assert (= b!2132270 b!2132268))

(assert (= b!2132262 b!2132270))

(assert (= (and b!2132274 ((_ is LongMap!2608) (v!28579 (underlying!5412 (cache!2903 cacheDown!1098))))) b!2132262))

(assert (= b!2132251 b!2132274))

(assert (= (and b!2132258 ((_ is HashMap!2522) (cache!2903 cacheDown!1098))) b!2132251))

(assert (= start!207548 b!2132258))

(assert (= (and b!2132249 condMapEmpty!12594) mapIsEmpty!12593))

(assert (= (and b!2132249 (not condMapEmpty!12594)) mapNonEmpty!12594))

(assert (= b!2132272 b!2132249))

(assert (= b!2132280 b!2132272))

(assert (= b!2132267 b!2132280))

(assert (= (and b!2132250 ((_ is LongMap!2607) (v!28577 (underlying!5410 (cache!2902 cacheUp!979))))) b!2132267))

(assert (= b!2132285 b!2132250))

(assert (= (and b!2132252 ((_ is HashMap!2521) (cache!2902 cacheUp!979))) b!2132285))

(assert (= start!207548 b!2132252))

(assert (= (and start!207548 condSetEmpty!15792) setIsEmpty!15792))

(assert (= (and start!207548 (not condSetEmpty!15792)) setNonEmpty!15792))

(assert (= setNonEmpty!15792 b!2132279))

(assert (= start!207548 b!2132263))

(assert (= (and b!2132256 condSetEmpty!15793) setIsEmpty!15793))

(assert (= (and b!2132256 (not condSetEmpty!15793)) setNonEmpty!15793))

(assert (= setNonEmpty!15793 b!2132245))

(assert (= b!2132256 b!2132284))

(assert (= b!2132254 b!2132256))

(assert (= (and start!207548 ((_ is Cons!24022) stack!8)) b!2132254))

(declare-fun m!2581522 () Bool)

(assert (=> b!2132272 m!2581522))

(declare-fun m!2581524 () Bool)

(assert (=> b!2132272 m!2581524))

(declare-fun m!2581526 () Bool)

(assert (=> mapNonEmpty!12593 m!2581526))

(declare-fun m!2581528 () Bool)

(assert (=> b!2132273 m!2581528))

(declare-fun m!2581530 () Bool)

(assert (=> b!2132255 m!2581530))

(declare-fun m!2581532 () Bool)

(assert (=> b!2132277 m!2581532))

(declare-fun m!2581534 () Bool)

(assert (=> b!2132277 m!2581534))

(declare-fun m!2581536 () Bool)

(assert (=> b!2132277 m!2581536))

(assert (=> b!2132277 m!2581536))

(declare-fun m!2581538 () Bool)

(assert (=> b!2132277 m!2581538))

(declare-fun m!2581540 () Bool)

(assert (=> b!2132257 m!2581540))

(declare-fun m!2581542 () Bool)

(assert (=> b!2132257 m!2581542))

(declare-fun m!2581544 () Bool)

(assert (=> b!2132263 m!2581544))

(declare-fun m!2581546 () Bool)

(assert (=> b!2132278 m!2581546))

(declare-fun m!2581548 () Bool)

(assert (=> b!2132248 m!2581548))

(declare-fun m!2581550 () Bool)

(assert (=> b!2132284 m!2581550))

(declare-fun m!2581552 () Bool)

(assert (=> b!2132260 m!2581552))

(declare-fun m!2581554 () Bool)

(assert (=> mapNonEmpty!12594 m!2581554))

(declare-fun m!2581556 () Bool)

(assert (=> b!2132281 m!2581556))

(declare-fun m!2581558 () Bool)

(assert (=> mapNonEmpty!12592 m!2581558))

(declare-fun m!2581560 () Bool)

(assert (=> b!2132247 m!2581560))

(declare-fun m!2581562 () Bool)

(assert (=> b!2132286 m!2581562))

(declare-fun m!2581564 () Bool)

(assert (=> setNonEmpty!15792 m!2581564))

(declare-fun m!2581566 () Bool)

(assert (=> b!2132268 m!2581566))

(declare-fun m!2581568 () Bool)

(assert (=> b!2132268 m!2581568))

(declare-fun m!2581570 () Bool)

(assert (=> start!207548 m!2581570))

(declare-fun m!2581572 () Bool)

(assert (=> start!207548 m!2581572))

(declare-fun m!2581574 () Bool)

(assert (=> start!207548 m!2581574))

(declare-fun m!2581576 () Bool)

(assert (=> start!207548 m!2581576))

(declare-fun m!2581578 () Bool)

(assert (=> b!2132246 m!2581578))

(declare-fun m!2581580 () Bool)

(assert (=> b!2132259 m!2581580))

(declare-fun m!2581582 () Bool)

(assert (=> b!2132259 m!2581582))

(declare-fun m!2581584 () Bool)

(assert (=> b!2132275 m!2581584))

(assert (=> b!2132275 m!2581540))

(declare-fun m!2581586 () Bool)

(assert (=> b!2132256 m!2581586))

(declare-fun m!2581588 () Bool)

(assert (=> b!2132254 m!2581588))

(declare-fun m!2581590 () Bool)

(assert (=> setNonEmpty!15793 m!2581590))

(check-sat (not b!2132259) b_and!171899 b_and!171893 (not b_next!63021) (not b!2132256) b_and!171889 (not mapNonEmpty!12594) b_and!171891 (not b!2132249) (not b!2132257) (not b!2132279) (not b_next!63017) (not b!2132268) (not b!2132248) (not b!2132260) (not setNonEmpty!15792) (not b!2132275) (not b_next!63019) (not b!2132273) (not start!207548) (not b!2132286) (not b!2132245) (not b!2132284) (not b_next!63023) b_and!171895 (not setNonEmpty!15793) (not b!2132281) (not b!2132278) (not b!2132271) (not mapNonEmpty!12592) (not b_next!63015) (not b!2132246) b_and!171897 (not b!2132263) (not b!2132277) (not b!2132254) (not b!2132255) (not mapNonEmpty!12593) (not b!2132272) (not b!2132247) (not b!2132265) (not b_next!63013))
(check-sat (not b_next!63019) (not b_next!63023) b_and!171899 b_and!171895 b_and!171893 (not b_next!63021) (not b_next!63015) b_and!171897 b_and!171889 b_and!171891 (not b_next!63013) (not b_next!63017))
