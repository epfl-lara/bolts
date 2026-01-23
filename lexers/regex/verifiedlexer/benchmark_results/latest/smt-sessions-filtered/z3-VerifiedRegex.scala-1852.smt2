; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!92130 () Bool)

(assert start!92130)

(declare-fun b!1083770 () Bool)

(declare-fun b_free!26729 () Bool)

(declare-fun b_next!26793 () Bool)

(assert (=> b!1083770 (= b_free!26729 (not b_next!26793))))

(declare-fun tp!323967 () Bool)

(declare-fun b_and!79049 () Bool)

(assert (=> b!1083770 (= tp!323967 b_and!79049)))

(declare-fun b!1083769 () Bool)

(declare-fun b_free!26731 () Bool)

(declare-fun b_next!26795 () Bool)

(assert (=> b!1083769 (= b_free!26731 (not b_next!26795))))

(declare-fun tp!323964 () Bool)

(declare-fun b_and!79051 () Bool)

(assert (=> b!1083769 (= tp!323964 b_and!79051)))

(declare-fun e!685261 () Bool)

(declare-fun e!685262 () Bool)

(assert (=> b!1083769 (= e!685261 (and e!685262 tp!323964))))

(declare-fun mapNonEmpty!6072 () Bool)

(declare-fun mapRes!6072 () Bool)

(declare-fun tp!323966 () Bool)

(declare-fun tp!323965 () Bool)

(assert (=> mapNonEmpty!6072 (= mapRes!6072 (and tp!323966 tp!323965))))

(declare-datatypes ((C!6496 0))(
  ( (C!6497 (val!3496 Int)) )
))
(declare-datatypes ((Regex!2963 0))(
  ( (ElementMatch!2963 (c!182974 C!6496)) (Concat!4796 (regOne!6438 Regex!2963) (regTwo!6438 Regex!2963)) (EmptyExpr!2963) (Star!2963 (reg!3292 Regex!2963)) (EmptyLang!2963) (Union!2963 (regOne!6439 Regex!2963) (regTwo!6439 Regex!2963)) )
))
(declare-datatypes ((List!10195 0))(
  ( (Nil!10179) (Cons!10179 (h!15580 Regex!2963) (t!101241 List!10195)) )
))
(declare-datatypes ((Context!890 0))(
  ( (Context!891 (exprs!945 List!10195)) )
))
(define-sort InoxSet (T) (Array T Bool))

(declare-datatypes ((tuple2!11638 0))(
  ( (tuple2!11639 (_1!6645 (InoxSet Context!890)) (_2!6645 Int)) )
))
(declare-datatypes ((tuple2!11640 0))(
  ( (tuple2!11641 (_1!6646 tuple2!11638) (_2!6646 Int)) )
))
(declare-datatypes ((List!10196 0))(
  ( (Nil!10180) (Cons!10180 (h!15581 tuple2!11640) (t!101242 List!10196)) )
))
(declare-fun mapValue!6072 () List!10196)

(declare-fun mapRest!6072 () (Array (_ BitVec 32) List!10196))

(declare-datatypes ((List!10197 0))(
  ( (Nil!10181) (Cons!10181 (h!15582 C!6496) (t!101243 List!10197)) )
))
(declare-datatypes ((IArray!6251 0))(
  ( (IArray!6252 (innerList!3183 List!10197)) )
))
(declare-datatypes ((Conc!3123 0))(
  ( (Node!3123 (left!8717 Conc!3123) (right!9047 Conc!3123) (csize!6476 Int) (cheight!3334 Int)) (Leaf!4976 (xs!5816 IArray!6251) (csize!6477 Int)) (Empty!3123) )
))
(declare-datatypes ((Hashable!1229 0))(
  ( (HashableExt!1228 (__x!7400 Int)) )
))
(declare-datatypes ((array!4429 0))(
  ( (array!4430 (arr!1978 (Array (_ BitVec 32) List!10196)) (size!8019 (_ BitVec 32))) )
))
(declare-datatypes ((array!4431 0))(
  ( (array!4432 (arr!1979 (Array (_ BitVec 32) (_ BitVec 64))) (size!8020 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!2514 0))(
  ( (LongMapFixedSize!2515 (defaultEntry!1617 Int) (mask!3653 (_ BitVec 32)) (extraKeys!1504 (_ BitVec 32)) (zeroValue!1514 List!10196) (minValue!1514 List!10196) (_size!2623 (_ BitVec 32)) (_keys!1551 array!4431) (_values!1536 array!4429) (_vacant!1318 (_ BitVec 32))) )
))
(declare-datatypes ((BalanceConc!6260 0))(
  ( (BalanceConc!6261 (c!182975 Conc!3123)) )
))
(declare-datatypes ((Cell!4969 0))(
  ( (Cell!4970 (v!19877 LongMapFixedSize!2514)) )
))
(declare-datatypes ((MutLongMap!1257 0))(
  ( (LongMap!1257 (underlying!2699 Cell!4969)) (MutLongMapExt!1256 (__x!7401 Int)) )
))
(declare-datatypes ((Cell!4971 0))(
  ( (Cell!4972 (v!19878 MutLongMap!1257)) )
))
(declare-datatypes ((MutableMap!1229 0))(
  ( (MutableMapExt!1228 (__x!7402 Int)) (HashMap!1229 (underlying!2700 Cell!4971) (hashF!3148 Hashable!1229) (_size!2624 (_ BitVec 32)) (defaultValue!1389 Int)) )
))
(declare-datatypes ((CacheFindLongestMatch!354 0))(
  ( (CacheFindLongestMatch!355 (cache!1610 MutableMap!1229) (totalInput!2164 BalanceConc!6260)) )
))
(declare-fun thiss!28967 () CacheFindLongestMatch!354)

(declare-fun mapKey!6072 () (_ BitVec 32))

(assert (=> mapNonEmpty!6072 (= (arr!1978 (_values!1536 (v!19877 (underlying!2699 (v!19878 (underlying!2700 (cache!1610 thiss!28967))))))) (store mapRest!6072 mapKey!6072 mapValue!6072))))

(declare-fun e!685263 () Bool)

(declare-fun tp!323963 () Bool)

(declare-fun e!685264 () Bool)

(declare-fun tp!323968 () Bool)

(declare-fun array_inv!1423 (array!4431) Bool)

(declare-fun array_inv!1424 (array!4429) Bool)

(assert (=> b!1083770 (= e!685264 (and tp!323967 tp!323968 tp!323963 (array_inv!1423 (_keys!1551 (v!19877 (underlying!2699 (v!19878 (underlying!2700 (cache!1610 thiss!28967))))))) (array_inv!1424 (_values!1536 (v!19877 (underlying!2699 (v!19878 (underlying!2700 (cache!1610 thiss!28967))))))) e!685263))))

(declare-fun b!1083771 () Bool)

(declare-fun e!685266 () Bool)

(declare-fun lt!362633 () MutLongMap!1257)

(get-info :version)

(assert (=> b!1083771 (= e!685262 (and e!685266 ((_ is LongMap!1257) lt!362633)))))

(assert (=> b!1083771 (= lt!362633 (v!19878 (underlying!2700 (cache!1610 thiss!28967))))))

(assert (=> start!92130 (not ((_ is HashMap!1229) (cache!1610 thiss!28967)))))

(declare-fun e!685259 () Bool)

(declare-fun inv!13104 (CacheFindLongestMatch!354) Bool)

(assert (=> start!92130 (and (inv!13104 thiss!28967) e!685259)))

(declare-fun e!685260 () Bool)

(declare-fun b!1083772 () Bool)

(declare-fun inv!13105 (BalanceConc!6260) Bool)

(assert (=> b!1083772 (= e!685259 (and e!685261 (inv!13105 (totalInput!2164 thiss!28967)) e!685260))))

(declare-fun b!1083773 () Bool)

(declare-fun e!685265 () Bool)

(assert (=> b!1083773 (= e!685265 e!685264)))

(declare-fun mapIsEmpty!6072 () Bool)

(assert (=> mapIsEmpty!6072 mapRes!6072))

(declare-fun b!1083774 () Bool)

(declare-fun tp!323961 () Bool)

(declare-fun inv!13106 (Conc!3123) Bool)

(assert (=> b!1083774 (= e!685260 (and (inv!13106 (c!182975 (totalInput!2164 thiss!28967))) tp!323961))))

(declare-fun b!1083775 () Bool)

(declare-fun tp!323962 () Bool)

(assert (=> b!1083775 (= e!685263 (and tp!323962 mapRes!6072))))

(declare-fun condMapEmpty!6072 () Bool)

(declare-fun mapDefault!6072 () List!10196)

(assert (=> b!1083775 (= condMapEmpty!6072 (= (arr!1978 (_values!1536 (v!19877 (underlying!2699 (v!19878 (underlying!2700 (cache!1610 thiss!28967))))))) ((as const (Array (_ BitVec 32) List!10196)) mapDefault!6072)))))

(declare-fun b!1083776 () Bool)

(assert (=> b!1083776 (= e!685266 e!685265)))

(assert (= (and b!1083775 condMapEmpty!6072) mapIsEmpty!6072))

(assert (= (and b!1083775 (not condMapEmpty!6072)) mapNonEmpty!6072))

(assert (= b!1083770 b!1083775))

(assert (= b!1083773 b!1083770))

(assert (= b!1083776 b!1083773))

(assert (= (and b!1083771 ((_ is LongMap!1257) (v!19878 (underlying!2700 (cache!1610 thiss!28967))))) b!1083776))

(assert (= b!1083769 b!1083771))

(assert (= (and b!1083772 ((_ is HashMap!1229) (cache!1610 thiss!28967))) b!1083769))

(assert (= b!1083772 b!1083774))

(assert (= start!92130 b!1083772))

(declare-fun m!1233825 () Bool)

(assert (=> b!1083774 m!1233825))

(declare-fun m!1233827 () Bool)

(assert (=> b!1083770 m!1233827))

(declare-fun m!1233829 () Bool)

(assert (=> b!1083770 m!1233829))

(declare-fun m!1233831 () Bool)

(assert (=> start!92130 m!1233831))

(declare-fun m!1233833 () Bool)

(assert (=> mapNonEmpty!6072 m!1233833))

(declare-fun m!1233835 () Bool)

(assert (=> b!1083772 m!1233835))

(check-sat (not b!1083775) (not b!1083774) (not b!1083772) (not b_next!26795) b_and!79051 (not mapNonEmpty!6072) b_and!79049 (not start!92130) (not b_next!26793) (not b!1083770))
(check-sat b_and!79051 b_and!79049 (not b_next!26793) (not b_next!26795))
(get-model)

(declare-fun d!304705 () Bool)

(declare-fun res!482204 () Bool)

(declare-fun e!685270 () Bool)

(assert (=> d!304705 (=> (not res!482204) (not e!685270))))

(assert (=> d!304705 (= res!482204 ((_ is HashMap!1229) (cache!1610 thiss!28967)))))

(assert (=> d!304705 (= (inv!13104 thiss!28967) e!685270)))

(declare-fun b!1083779 () Bool)

(declare-fun validCacheMapFindLongestMatch!55 (MutableMap!1229 BalanceConc!6260) Bool)

(assert (=> b!1083779 (= e!685270 (validCacheMapFindLongestMatch!55 (cache!1610 thiss!28967) (totalInput!2164 thiss!28967)))))

(assert (= (and d!304705 res!482204) b!1083779))

(declare-fun m!1233837 () Bool)

(assert (=> b!1083779 m!1233837))

(assert (=> start!92130 d!304705))

(declare-fun d!304707 () Bool)

(declare-fun isBalanced!870 (Conc!3123) Bool)

(assert (=> d!304707 (= (inv!13105 (totalInput!2164 thiss!28967)) (isBalanced!870 (c!182975 (totalInput!2164 thiss!28967))))))

(declare-fun bs!256423 () Bool)

(assert (= bs!256423 d!304707))

(declare-fun m!1233839 () Bool)

(assert (=> bs!256423 m!1233839))

(assert (=> b!1083772 d!304707))

(declare-fun d!304709 () Bool)

(assert (=> d!304709 (= (array_inv!1423 (_keys!1551 (v!19877 (underlying!2699 (v!19878 (underlying!2700 (cache!1610 thiss!28967))))))) (bvsge (size!8020 (_keys!1551 (v!19877 (underlying!2699 (v!19878 (underlying!2700 (cache!1610 thiss!28967))))))) #b00000000000000000000000000000000))))

(assert (=> b!1083770 d!304709))

(declare-fun d!304711 () Bool)

(assert (=> d!304711 (= (array_inv!1424 (_values!1536 (v!19877 (underlying!2699 (v!19878 (underlying!2700 (cache!1610 thiss!28967))))))) (bvsge (size!8019 (_values!1536 (v!19877 (underlying!2699 (v!19878 (underlying!2700 (cache!1610 thiss!28967))))))) #b00000000000000000000000000000000))))

(assert (=> b!1083770 d!304711))

(declare-fun d!304713 () Bool)

(declare-fun c!182978 () Bool)

(assert (=> d!304713 (= c!182978 ((_ is Node!3123) (c!182975 (totalInput!2164 thiss!28967))))))

(declare-fun e!685275 () Bool)

(assert (=> d!304713 (= (inv!13106 (c!182975 (totalInput!2164 thiss!28967))) e!685275)))

(declare-fun b!1083786 () Bool)

(declare-fun inv!13107 (Conc!3123) Bool)

(assert (=> b!1083786 (= e!685275 (inv!13107 (c!182975 (totalInput!2164 thiss!28967))))))

(declare-fun b!1083787 () Bool)

(declare-fun e!685276 () Bool)

(assert (=> b!1083787 (= e!685275 e!685276)))

(declare-fun res!482207 () Bool)

(assert (=> b!1083787 (= res!482207 (not ((_ is Leaf!4976) (c!182975 (totalInput!2164 thiss!28967)))))))

(assert (=> b!1083787 (=> res!482207 e!685276)))

(declare-fun b!1083788 () Bool)

(declare-fun inv!13108 (Conc!3123) Bool)

(assert (=> b!1083788 (= e!685276 (inv!13108 (c!182975 (totalInput!2164 thiss!28967))))))

(assert (= (and d!304713 c!182978) b!1083786))

(assert (= (and d!304713 (not c!182978)) b!1083787))

(assert (= (and b!1083787 (not res!482207)) b!1083788))

(declare-fun m!1233841 () Bool)

(assert (=> b!1083786 m!1233841))

(declare-fun m!1233843 () Bool)

(assert (=> b!1083788 m!1233843))

(assert (=> b!1083774 d!304713))

(declare-fun b!1083795 () Bool)

(declare-fun e!685282 () Bool)

(declare-fun setRes!7389 () Bool)

(declare-fun tp!323975 () Bool)

(assert (=> b!1083795 (= e!685282 (and setRes!7389 tp!323975))))

(declare-fun condSetEmpty!7389 () Bool)

(assert (=> b!1083795 (= condSetEmpty!7389 (= (_1!6645 (_1!6646 (h!15581 mapDefault!6072))) ((as const (Array Context!890 Bool)) false)))))

(declare-fun setNonEmpty!7389 () Bool)

(declare-fun e!685281 () Bool)

(declare-fun tp!323976 () Bool)

(declare-fun setElem!7389 () Context!890)

(declare-fun inv!13109 (Context!890) Bool)

(assert (=> setNonEmpty!7389 (= setRes!7389 (and tp!323976 (inv!13109 setElem!7389) e!685281))))

(declare-fun setRest!7389 () (InoxSet Context!890))

(assert (=> setNonEmpty!7389 (= (_1!6645 (_1!6646 (h!15581 mapDefault!6072))) ((_ map or) (store ((as const (Array Context!890 Bool)) false) setElem!7389 true) setRest!7389))))

(declare-fun b!1083796 () Bool)

(declare-fun tp!323977 () Bool)

(assert (=> b!1083796 (= e!685281 tp!323977)))

(assert (=> b!1083775 (= tp!323962 e!685282)))

(declare-fun setIsEmpty!7389 () Bool)

(assert (=> setIsEmpty!7389 setRes!7389))

(assert (= (and b!1083795 condSetEmpty!7389) setIsEmpty!7389))

(assert (= (and b!1083795 (not condSetEmpty!7389)) setNonEmpty!7389))

(assert (= setNonEmpty!7389 b!1083796))

(assert (= (and b!1083775 ((_ is Cons!10180) mapDefault!6072)) b!1083795))

(declare-fun m!1233845 () Bool)

(assert (=> setNonEmpty!7389 m!1233845))

(declare-fun b!1083807 () Bool)

(declare-fun e!685292 () Bool)

(declare-fun tp!323996 () Bool)

(assert (=> b!1083807 (= e!685292 tp!323996)))

(declare-fun setRes!7395 () Bool)

(declare-fun setNonEmpty!7394 () Bool)

(declare-fun tp!323992 () Bool)

(declare-fun setElem!7394 () Context!890)

(assert (=> setNonEmpty!7394 (= setRes!7395 (and tp!323992 (inv!13109 setElem!7394) e!685292))))

(declare-fun mapValue!6075 () List!10196)

(declare-fun setRest!7395 () (InoxSet Context!890))

(assert (=> setNonEmpty!7394 (= (_1!6645 (_1!6646 (h!15581 mapValue!6075))) ((_ map or) (store ((as const (Array Context!890 Bool)) false) setElem!7394 true) setRest!7395))))

(declare-fun setIsEmpty!7394 () Bool)

(declare-fun setRes!7394 () Bool)

(assert (=> setIsEmpty!7394 setRes!7394))

(declare-fun mapNonEmpty!6075 () Bool)

(declare-fun mapRes!6075 () Bool)

(declare-fun tp!323994 () Bool)

(declare-fun e!685293 () Bool)

(assert (=> mapNonEmpty!6075 (= mapRes!6075 (and tp!323994 e!685293))))

(declare-fun mapRest!6075 () (Array (_ BitVec 32) List!10196))

(declare-fun mapKey!6075 () (_ BitVec 32))

(assert (=> mapNonEmpty!6075 (= mapRest!6072 (store mapRest!6075 mapKey!6075 mapValue!6075))))

(declare-fun mapIsEmpty!6075 () Bool)

(assert (=> mapIsEmpty!6075 mapRes!6075))

(declare-fun b!1083808 () Bool)

(declare-fun e!685294 () Bool)

(declare-fun tp!323993 () Bool)

(assert (=> b!1083808 (= e!685294 (and setRes!7394 tp!323993))))

(declare-fun condSetEmpty!7395 () Bool)

(declare-fun mapDefault!6075 () List!10196)

(assert (=> b!1083808 (= condSetEmpty!7395 (= (_1!6645 (_1!6646 (h!15581 mapDefault!6075))) ((as const (Array Context!890 Bool)) false)))))

(declare-fun setNonEmpty!7395 () Bool)

(declare-fun e!685291 () Bool)

(declare-fun tp!323997 () Bool)

(declare-fun setElem!7395 () Context!890)

(assert (=> setNonEmpty!7395 (= setRes!7394 (and tp!323997 (inv!13109 setElem!7395) e!685291))))

(declare-fun setRest!7394 () (InoxSet Context!890))

(assert (=> setNonEmpty!7395 (= (_1!6645 (_1!6646 (h!15581 mapDefault!6075))) ((_ map or) (store ((as const (Array Context!890 Bool)) false) setElem!7395 true) setRest!7394))))

(declare-fun b!1083809 () Bool)

(declare-fun tp!323995 () Bool)

(assert (=> b!1083809 (= e!685293 (and setRes!7395 tp!323995))))

(declare-fun condSetEmpty!7394 () Bool)

(assert (=> b!1083809 (= condSetEmpty!7394 (= (_1!6645 (_1!6646 (h!15581 mapValue!6075))) ((as const (Array Context!890 Bool)) false)))))

(declare-fun b!1083810 () Bool)

(declare-fun tp!323998 () Bool)

(assert (=> b!1083810 (= e!685291 tp!323998)))

(declare-fun setIsEmpty!7395 () Bool)

(assert (=> setIsEmpty!7395 setRes!7395))

(declare-fun condMapEmpty!6075 () Bool)

(assert (=> mapNonEmpty!6072 (= condMapEmpty!6075 (= mapRest!6072 ((as const (Array (_ BitVec 32) List!10196)) mapDefault!6075)))))

(assert (=> mapNonEmpty!6072 (= tp!323966 (and e!685294 mapRes!6075))))

(assert (= (and mapNonEmpty!6072 condMapEmpty!6075) mapIsEmpty!6075))

(assert (= (and mapNonEmpty!6072 (not condMapEmpty!6075)) mapNonEmpty!6075))

(assert (= (and b!1083809 condSetEmpty!7394) setIsEmpty!7395))

(assert (= (and b!1083809 (not condSetEmpty!7394)) setNonEmpty!7394))

(assert (= setNonEmpty!7394 b!1083807))

(assert (= (and mapNonEmpty!6075 ((_ is Cons!10180) mapValue!6075)) b!1083809))

(assert (= (and b!1083808 condSetEmpty!7395) setIsEmpty!7394))

(assert (= (and b!1083808 (not condSetEmpty!7395)) setNonEmpty!7395))

(assert (= setNonEmpty!7395 b!1083810))

(assert (= (and mapNonEmpty!6072 ((_ is Cons!10180) mapDefault!6075)) b!1083808))

(declare-fun m!1233847 () Bool)

(assert (=> setNonEmpty!7394 m!1233847))

(declare-fun m!1233849 () Bool)

(assert (=> mapNonEmpty!6075 m!1233849))

(declare-fun m!1233851 () Bool)

(assert (=> setNonEmpty!7395 m!1233851))

(declare-fun b!1083811 () Bool)

(declare-fun e!685296 () Bool)

(declare-fun setRes!7396 () Bool)

(declare-fun tp!323999 () Bool)

(assert (=> b!1083811 (= e!685296 (and setRes!7396 tp!323999))))

(declare-fun condSetEmpty!7396 () Bool)

(assert (=> b!1083811 (= condSetEmpty!7396 (= (_1!6645 (_1!6646 (h!15581 mapValue!6072))) ((as const (Array Context!890 Bool)) false)))))

(declare-fun e!685295 () Bool)

(declare-fun setElem!7396 () Context!890)

(declare-fun setNonEmpty!7396 () Bool)

(declare-fun tp!324000 () Bool)

(assert (=> setNonEmpty!7396 (= setRes!7396 (and tp!324000 (inv!13109 setElem!7396) e!685295))))

(declare-fun setRest!7396 () (InoxSet Context!890))

(assert (=> setNonEmpty!7396 (= (_1!6645 (_1!6646 (h!15581 mapValue!6072))) ((_ map or) (store ((as const (Array Context!890 Bool)) false) setElem!7396 true) setRest!7396))))

(declare-fun b!1083812 () Bool)

(declare-fun tp!324001 () Bool)

(assert (=> b!1083812 (= e!685295 tp!324001)))

(assert (=> mapNonEmpty!6072 (= tp!323965 e!685296)))

(declare-fun setIsEmpty!7396 () Bool)

(assert (=> setIsEmpty!7396 setRes!7396))

(assert (= (and b!1083811 condSetEmpty!7396) setIsEmpty!7396))

(assert (= (and b!1083811 (not condSetEmpty!7396)) setNonEmpty!7396))

(assert (= setNonEmpty!7396 b!1083812))

(assert (= (and mapNonEmpty!6072 ((_ is Cons!10180) mapValue!6072)) b!1083811))

(declare-fun m!1233853 () Bool)

(assert (=> setNonEmpty!7396 m!1233853))

(declare-fun b!1083813 () Bool)

(declare-fun e!685298 () Bool)

(declare-fun setRes!7397 () Bool)

(declare-fun tp!324002 () Bool)

(assert (=> b!1083813 (= e!685298 (and setRes!7397 tp!324002))))

(declare-fun condSetEmpty!7397 () Bool)

(assert (=> b!1083813 (= condSetEmpty!7397 (= (_1!6645 (_1!6646 (h!15581 (zeroValue!1514 (v!19877 (underlying!2699 (v!19878 (underlying!2700 (cache!1610 thiss!28967))))))))) ((as const (Array Context!890 Bool)) false)))))

(declare-fun setElem!7397 () Context!890)

(declare-fun tp!324003 () Bool)

(declare-fun setNonEmpty!7397 () Bool)

(declare-fun e!685297 () Bool)

(assert (=> setNonEmpty!7397 (= setRes!7397 (and tp!324003 (inv!13109 setElem!7397) e!685297))))

(declare-fun setRest!7397 () (InoxSet Context!890))

(assert (=> setNonEmpty!7397 (= (_1!6645 (_1!6646 (h!15581 (zeroValue!1514 (v!19877 (underlying!2699 (v!19878 (underlying!2700 (cache!1610 thiss!28967))))))))) ((_ map or) (store ((as const (Array Context!890 Bool)) false) setElem!7397 true) setRest!7397))))

(declare-fun b!1083814 () Bool)

(declare-fun tp!324004 () Bool)

(assert (=> b!1083814 (= e!685297 tp!324004)))

(assert (=> b!1083770 (= tp!323968 e!685298)))

(declare-fun setIsEmpty!7397 () Bool)

(assert (=> setIsEmpty!7397 setRes!7397))

(assert (= (and b!1083813 condSetEmpty!7397) setIsEmpty!7397))

(assert (= (and b!1083813 (not condSetEmpty!7397)) setNonEmpty!7397))

(assert (= setNonEmpty!7397 b!1083814))

(assert (= (and b!1083770 ((_ is Cons!10180) (zeroValue!1514 (v!19877 (underlying!2699 (v!19878 (underlying!2700 (cache!1610 thiss!28967)))))))) b!1083813))

(declare-fun m!1233855 () Bool)

(assert (=> setNonEmpty!7397 m!1233855))

(declare-fun b!1083815 () Bool)

(declare-fun e!685300 () Bool)

(declare-fun setRes!7398 () Bool)

(declare-fun tp!324005 () Bool)

(assert (=> b!1083815 (= e!685300 (and setRes!7398 tp!324005))))

(declare-fun condSetEmpty!7398 () Bool)

(assert (=> b!1083815 (= condSetEmpty!7398 (= (_1!6645 (_1!6646 (h!15581 (minValue!1514 (v!19877 (underlying!2699 (v!19878 (underlying!2700 (cache!1610 thiss!28967))))))))) ((as const (Array Context!890 Bool)) false)))))

(declare-fun e!685299 () Bool)

(declare-fun setNonEmpty!7398 () Bool)

(declare-fun tp!324006 () Bool)

(declare-fun setElem!7398 () Context!890)

(assert (=> setNonEmpty!7398 (= setRes!7398 (and tp!324006 (inv!13109 setElem!7398) e!685299))))

(declare-fun setRest!7398 () (InoxSet Context!890))

(assert (=> setNonEmpty!7398 (= (_1!6645 (_1!6646 (h!15581 (minValue!1514 (v!19877 (underlying!2699 (v!19878 (underlying!2700 (cache!1610 thiss!28967))))))))) ((_ map or) (store ((as const (Array Context!890 Bool)) false) setElem!7398 true) setRest!7398))))

(declare-fun b!1083816 () Bool)

(declare-fun tp!324007 () Bool)

(assert (=> b!1083816 (= e!685299 tp!324007)))

(assert (=> b!1083770 (= tp!323963 e!685300)))

(declare-fun setIsEmpty!7398 () Bool)

(assert (=> setIsEmpty!7398 setRes!7398))

(assert (= (and b!1083815 condSetEmpty!7398) setIsEmpty!7398))

(assert (= (and b!1083815 (not condSetEmpty!7398)) setNonEmpty!7398))

(assert (= setNonEmpty!7398 b!1083816))

(assert (= (and b!1083770 ((_ is Cons!10180) (minValue!1514 (v!19877 (underlying!2699 (v!19878 (underlying!2700 (cache!1610 thiss!28967)))))))) b!1083815))

(declare-fun m!1233857 () Bool)

(assert (=> setNonEmpty!7398 m!1233857))

(declare-fun e!685306 () Bool)

(declare-fun tp!324016 () Bool)

(declare-fun b!1083825 () Bool)

(declare-fun tp!324015 () Bool)

(assert (=> b!1083825 (= e!685306 (and (inv!13106 (left!8717 (c!182975 (totalInput!2164 thiss!28967)))) tp!324016 (inv!13106 (right!9047 (c!182975 (totalInput!2164 thiss!28967)))) tp!324015))))

(declare-fun b!1083827 () Bool)

(declare-fun e!685305 () Bool)

(declare-fun tp!324014 () Bool)

(assert (=> b!1083827 (= e!685305 tp!324014)))

(declare-fun b!1083826 () Bool)

(declare-fun inv!13110 (IArray!6251) Bool)

(assert (=> b!1083826 (= e!685306 (and (inv!13110 (xs!5816 (c!182975 (totalInput!2164 thiss!28967)))) e!685305))))

(assert (=> b!1083774 (= tp!323961 (and (inv!13106 (c!182975 (totalInput!2164 thiss!28967))) e!685306))))

(assert (= (and b!1083774 ((_ is Node!3123) (c!182975 (totalInput!2164 thiss!28967)))) b!1083825))

(assert (= b!1083826 b!1083827))

(assert (= (and b!1083774 ((_ is Leaf!4976) (c!182975 (totalInput!2164 thiss!28967)))) b!1083826))

(declare-fun m!1233859 () Bool)

(assert (=> b!1083825 m!1233859))

(declare-fun m!1233861 () Bool)

(assert (=> b!1083825 m!1233861))

(declare-fun m!1233863 () Bool)

(assert (=> b!1083826 m!1233863))

(assert (=> b!1083774 m!1233825))

(check-sat (not b!1083809) (not b!1083814) (not b!1083811) (not b!1083826) (not b!1083825) (not setNonEmpty!7389) (not b!1083807) (not b!1083779) (not b!1083827) (not setNonEmpty!7398) (not b!1083774) (not b!1083808) b_and!79049 (not d!304707) (not b_next!26793) (not b!1083810) (not setNonEmpty!7397) (not b!1083786) (not b!1083796) (not setNonEmpty!7395) (not b_next!26795) b_and!79051 (not b!1083816) (not b!1083795) (not setNonEmpty!7394) (not b!1083815) (not setNonEmpty!7396) (not b!1083813) (not b!1083812) (not b!1083788) (not mapNonEmpty!6075))
(check-sat b_and!79051 b_and!79049 (not b_next!26793) (not b_next!26795))
