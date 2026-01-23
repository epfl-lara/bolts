; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!208616 () Bool)

(assert start!208616)

(declare-fun b!2150841 () Bool)

(declare-fun b_free!63541 () Bool)

(declare-fun b_next!64245 () Bool)

(assert (=> b!2150841 (= b_free!63541 (not b_next!64245))))

(declare-fun tp!668358 () Bool)

(declare-fun b_and!173153 () Bool)

(assert (=> b!2150841 (= tp!668358 b_and!173153)))

(declare-fun b!2150844 () Bool)

(declare-fun b_free!63543 () Bool)

(declare-fun b_next!64247 () Bool)

(assert (=> b!2150844 (= b_free!63543 (not b_next!64247))))

(declare-fun tp!668353 () Bool)

(declare-fun b_and!173155 () Bool)

(assert (=> b!2150844 (= tp!668353 b_and!173155)))

(declare-fun b!2150836 () Bool)

(declare-fun e!1375464 () Bool)

(declare-datatypes ((C!11872 0))(
  ( (C!11873 (val!6922 Int)) )
))
(declare-datatypes ((List!24754 0))(
  ( (Nil!24670) (Cons!24670 (h!30071 C!11872) (t!197300 List!24754)) )
))
(declare-datatypes ((IArray!16003 0))(
  ( (IArray!16004 (innerList!8059 List!24754)) )
))
(declare-datatypes ((Conc!7999 0))(
  ( (Node!7999 (left!18945 Conc!7999) (right!19275 Conc!7999) (csize!16228 Int) (cheight!8210 Int)) (Leaf!11698 (xs!10941 IArray!16003) (csize!16229 Int)) (Empty!7999) )
))
(declare-datatypes ((BalanceConc!15760 0))(
  ( (BalanceConc!15761 (c!341198 Conc!7999)) )
))
(declare-fun localTotalInput!13 () BalanceConc!15760)

(declare-fun tp!668361 () Bool)

(declare-fun inv!32510 (Conc!7999) Bool)

(assert (=> b!2150836 (= e!1375464 (and (inv!32510 (c!341198 localTotalInput!13)) tp!668361))))

(declare-fun b!2150837 () Bool)

(declare-fun res!927525 () Bool)

(declare-fun e!1375475 () Bool)

(assert (=> b!2150837 (=> (not res!927525) (not e!1375475))))

(declare-datatypes ((Regex!5863 0))(
  ( (ElementMatch!5863 (c!341199 C!11872)) (Concat!10165 (regOne!12238 Regex!5863) (regTwo!12238 Regex!5863)) (EmptyExpr!5863) (Star!5863 (reg!6192 Regex!5863)) (EmptyLang!5863) (Union!5863 (regOne!12239 Regex!5863) (regTwo!12239 Regex!5863)) )
))
(declare-datatypes ((List!24755 0))(
  ( (Nil!24671) (Cons!24671 (h!30072 Regex!5863) (t!197301 List!24755)) )
))
(declare-datatypes ((Context!2866 0))(
  ( (Context!2867 (exprs!1933 List!24755)) )
))
(define-sort InoxSet (T) (Array T Bool))

(declare-datatypes ((tuple3!3658 0))(
  ( (tuple3!3659 (_1!14547 (InoxSet Context!2866)) (_2!14547 Int) (_3!2299 Int)) )
))
(declare-datatypes ((tuple2!24496 0))(
  ( (tuple2!24497 (_1!14548 tuple3!3658) (_2!14548 Int)) )
))
(declare-datatypes ((List!24756 0))(
  ( (Nil!24672) (Cons!24672 (h!30073 tuple2!24496) (t!197302 List!24756)) )
))
(declare-datatypes ((array!9789 0))(
  ( (array!9790 (arr!4372 (Array (_ BitVec 32) (_ BitVec 64))) (size!19324 (_ BitVec 32))) )
))
(declare-datatypes ((Hashable!2802 0))(
  ( (HashableExt!2801 (__x!16840 Int)) )
))
(declare-datatypes ((array!9791 0))(
  ( (array!9792 (arr!4373 (Array (_ BitVec 32) List!24756)) (size!19325 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!5776 0))(
  ( (LongMapFixedSize!5777 (defaultEntry!3253 Int) (mask!7135 (_ BitVec 32)) (extraKeys!3136 (_ BitVec 32)) (zeroValue!3146 List!24756) (minValue!3146 List!24756) (_size!5827 (_ BitVec 32)) (_keys!3185 array!9789) (_values!3168 array!9791) (_vacant!2949 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!11377 0))(
  ( (Cell!11378 (v!29230 LongMapFixedSize!5776)) )
))
(declare-datatypes ((MutLongMap!2888 0))(
  ( (LongMap!2888 (underlying!5971 Cell!11377)) (MutLongMapExt!2887 (__x!16841 Int)) )
))
(declare-datatypes ((Cell!11379 0))(
  ( (Cell!11380 (v!29231 MutLongMap!2888)) )
))
(declare-datatypes ((MutableMap!2802 0))(
  ( (MutableMapExt!2801 (__x!16842 Int)) (HashMap!2802 (underlying!5972 Cell!11379) (hashF!4725 Hashable!2802) (_size!5828 (_ BitVec 32)) (defaultValue!2964 Int)) )
))
(declare-datatypes ((CacheFurthestNullable!962 0))(
  ( (CacheFurthestNullable!963 (cache!3183 MutableMap!2802) (totalInput!3258 BalanceConc!15760)) )
))
(declare-fun thiss!29110 () CacheFurthestNullable!962)

(declare-fun validCacheMapFurthestNullable!155 (MutableMap!2802 BalanceConc!15760) Bool)

(assert (=> b!2150837 (= res!927525 (validCacheMapFurthestNullable!155 (cache!3183 thiss!29110) (totalInput!3258 thiss!29110)))))

(declare-fun res!927526 () Bool)

(assert (=> start!208616 (=> (not res!927526) (not e!1375475))))

(declare-fun lastNullablePos!91 () Int)

(declare-fun from!952 () Int)

(assert (=> start!208616 (= res!927526 (and (= localTotalInput!13 (totalInput!3258 thiss!29110)) (>= lastNullablePos!91 (- 1)) (< lastNullablePos!91 from!952)))))

(assert (=> start!208616 e!1375475))

(declare-fun condSetEmpty!17188 () Bool)

(declare-fun z!514 () (InoxSet Context!2866))

(assert (=> start!208616 (= condSetEmpty!17188 (= z!514 ((as const (Array Context!2866 Bool)) false)))))

(declare-fun setRes!17188 () Bool)

(assert (=> start!208616 setRes!17188))

(assert (=> start!208616 true))

(declare-fun e!1375467 () Bool)

(declare-fun inv!32511 (CacheFurthestNullable!962) Bool)

(assert (=> start!208616 (and (inv!32511 thiss!29110) e!1375467)))

(declare-fun inv!32512 (BalanceConc!15760) Bool)

(assert (=> start!208616 (and (inv!32512 localTotalInput!13) e!1375464)))

(declare-fun b!2150838 () Bool)

(declare-fun e!1375472 () Bool)

(declare-fun e!1375463 () Bool)

(declare-fun lt!800816 () MutLongMap!2888)

(get-info :version)

(assert (=> b!2150838 (= e!1375472 (and e!1375463 ((_ is LongMap!2888) lt!800816)))))

(assert (=> b!2150838 (= lt!800816 (v!29231 (underlying!5972 (cache!3183 thiss!29110))))))

(declare-fun b!2150839 () Bool)

(declare-fun e!1375473 () Bool)

(declare-fun tp!668356 () Bool)

(declare-fun mapRes!13667 () Bool)

(assert (=> b!2150839 (= e!1375473 (and tp!668356 mapRes!13667))))

(declare-fun condMapEmpty!13667 () Bool)

(declare-fun mapDefault!13667 () List!24756)

(assert (=> b!2150839 (= condMapEmpty!13667 (= (arr!4373 (_values!3168 (v!29230 (underlying!5971 (v!29231 (underlying!5972 (cache!3183 thiss!29110))))))) ((as const (Array (_ BitVec 32) List!24756)) mapDefault!13667)))))

(declare-fun b!2150840 () Bool)

(declare-fun e!1375476 () Bool)

(declare-fun e!1375469 () Bool)

(assert (=> b!2150840 (= e!1375476 e!1375469)))

(declare-fun mapNonEmpty!13667 () Bool)

(declare-fun tp!668357 () Bool)

(declare-fun tp!668362 () Bool)

(assert (=> mapNonEmpty!13667 (= mapRes!13667 (and tp!668357 tp!668362))))

(declare-fun mapKey!13667 () (_ BitVec 32))

(declare-fun mapValue!13667 () List!24756)

(declare-fun mapRest!13667 () (Array (_ BitVec 32) List!24756))

(assert (=> mapNonEmpty!13667 (= (arr!4373 (_values!3168 (v!29230 (underlying!5971 (v!29231 (underlying!5972 (cache!3183 thiss!29110))))))) (store mapRest!13667 mapKey!13667 mapValue!13667))))

(declare-fun tp!668363 () Bool)

(declare-fun tp!668354 () Bool)

(declare-fun array_inv!3136 (array!9789) Bool)

(declare-fun array_inv!3137 (array!9791) Bool)

(assert (=> b!2150841 (= e!1375469 (and tp!668358 tp!668354 tp!668363 (array_inv!3136 (_keys!3185 (v!29230 (underlying!5971 (v!29231 (underlying!5972 (cache!3183 thiss!29110))))))) (array_inv!3137 (_values!3168 (v!29230 (underlying!5971 (v!29231 (underlying!5972 (cache!3183 thiss!29110))))))) e!1375473))))

(declare-fun b!2150842 () Bool)

(declare-fun res!927528 () Bool)

(assert (=> b!2150842 (=> (not res!927528) (not e!1375475))))

(declare-fun e!1375466 () Bool)

(assert (=> b!2150842 (= res!927528 e!1375466)))

(declare-fun res!927527 () Bool)

(assert (=> b!2150842 (=> res!927527 e!1375466)))

(declare-fun nullableZipper!198 ((InoxSet Context!2866)) Bool)

(assert (=> b!2150842 (= res!927527 (not (nullableZipper!198 z!514)))))

(declare-fun setNonEmpty!17188 () Bool)

(declare-fun tp!668355 () Bool)

(declare-fun e!1375471 () Bool)

(declare-fun setElem!17188 () Context!2866)

(declare-fun inv!32513 (Context!2866) Bool)

(assert (=> setNonEmpty!17188 (= setRes!17188 (and tp!668355 (inv!32513 setElem!17188) e!1375471))))

(declare-fun setRest!17188 () (InoxSet Context!2866))

(assert (=> setNonEmpty!17188 (= z!514 ((_ map or) (store ((as const (Array Context!2866 Bool)) false) setElem!17188 true) setRest!17188))))

(declare-fun b!2150843 () Bool)

(declare-fun e!1375468 () Bool)

(assert (=> b!2150843 (= e!1375468 ((_ is HashMap!2802) (cache!3183 thiss!29110)))))

(declare-fun e!1375474 () Bool)

(assert (=> b!2150844 (= e!1375474 (and e!1375472 tp!668353))))

(declare-fun setIsEmpty!17188 () Bool)

(assert (=> setIsEmpty!17188 setRes!17188))

(declare-fun mapIsEmpty!13667 () Bool)

(assert (=> mapIsEmpty!13667 mapRes!13667))

(declare-fun b!2150845 () Bool)

(assert (=> b!2150845 (= e!1375475 (not e!1375468))))

(declare-fun res!927524 () Bool)

(assert (=> b!2150845 (=> res!927524 e!1375468)))

(declare-fun contains!4230 (MutableMap!2802 tuple3!3658) Bool)

(assert (=> b!2150845 (= res!927524 (not (contains!4230 (cache!3183 thiss!29110) (tuple3!3659 z!514 from!952 lastNullablePos!91))))))

(assert (=> b!2150845 (validCacheMapFurthestNullable!155 (cache!3183 thiss!29110) localTotalInput!13)))

(declare-fun b!2150846 () Bool)

(assert (=> b!2150846 (= e!1375466 (= lastNullablePos!91 (- from!952 1)))))

(declare-fun b!2150847 () Bool)

(declare-fun tp!668360 () Bool)

(assert (=> b!2150847 (= e!1375471 tp!668360)))

(declare-fun b!2150848 () Bool)

(assert (=> b!2150848 (= e!1375463 e!1375476)))

(declare-fun e!1375465 () Bool)

(declare-fun b!2150849 () Bool)

(assert (=> b!2150849 (= e!1375467 (and e!1375474 (inv!32512 (totalInput!3258 thiss!29110)) e!1375465))))

(declare-fun b!2150850 () Bool)

(declare-fun tp!668359 () Bool)

(assert (=> b!2150850 (= e!1375465 (and (inv!32510 (c!341198 (totalInput!3258 thiss!29110))) tp!668359))))

(assert (= (and start!208616 res!927526) b!2150842))

(assert (= (and b!2150842 (not res!927527)) b!2150846))

(assert (= (and b!2150842 res!927528) b!2150837))

(assert (= (and b!2150837 res!927525) b!2150845))

(assert (= (and b!2150845 (not res!927524)) b!2150843))

(assert (= (and start!208616 condSetEmpty!17188) setIsEmpty!17188))

(assert (= (and start!208616 (not condSetEmpty!17188)) setNonEmpty!17188))

(assert (= setNonEmpty!17188 b!2150847))

(assert (= (and b!2150839 condMapEmpty!13667) mapIsEmpty!13667))

(assert (= (and b!2150839 (not condMapEmpty!13667)) mapNonEmpty!13667))

(assert (= b!2150841 b!2150839))

(assert (= b!2150840 b!2150841))

(assert (= b!2150848 b!2150840))

(assert (= (and b!2150838 ((_ is LongMap!2888) (v!29231 (underlying!5972 (cache!3183 thiss!29110))))) b!2150848))

(assert (= b!2150844 b!2150838))

(assert (= (and b!2150849 ((_ is HashMap!2802) (cache!3183 thiss!29110))) b!2150844))

(assert (= b!2150849 b!2150850))

(assert (= start!208616 b!2150849))

(assert (= start!208616 b!2150836))

(declare-fun m!2593456 () Bool)

(assert (=> b!2150837 m!2593456))

(declare-fun m!2593458 () Bool)

(assert (=> mapNonEmpty!13667 m!2593458))

(declare-fun m!2593460 () Bool)

(assert (=> b!2150849 m!2593460))

(declare-fun m!2593462 () Bool)

(assert (=> b!2150845 m!2593462))

(declare-fun m!2593464 () Bool)

(assert (=> b!2150845 m!2593464))

(declare-fun m!2593466 () Bool)

(assert (=> setNonEmpty!17188 m!2593466))

(declare-fun m!2593468 () Bool)

(assert (=> b!2150836 m!2593468))

(declare-fun m!2593470 () Bool)

(assert (=> b!2150842 m!2593470))

(declare-fun m!2593472 () Bool)

(assert (=> start!208616 m!2593472))

(declare-fun m!2593474 () Bool)

(assert (=> start!208616 m!2593474))

(declare-fun m!2593476 () Bool)

(assert (=> b!2150850 m!2593476))

(declare-fun m!2593478 () Bool)

(assert (=> b!2150841 m!2593478))

(declare-fun m!2593480 () Bool)

(assert (=> b!2150841 m!2593480))

(check-sat (not mapNonEmpty!13667) (not b!2150849) (not b!2150847) (not start!208616) (not b!2150842) (not b!2150850) (not b!2150839) (not b!2150845) (not setNonEmpty!17188) (not b!2150841) b_and!173153 (not b!2150837) b_and!173155 (not b!2150836) (not b_next!64247) (not b_next!64245))
(check-sat b_and!173155 b_and!173153 (not b_next!64245) (not b_next!64247))
(get-model)

(declare-fun d!645673 () Bool)

(declare-fun c!341202 () Bool)

(assert (=> d!645673 (= c!341202 ((_ is Node!7999) (c!341198 (totalInput!3258 thiss!29110))))))

(declare-fun e!1375481 () Bool)

(assert (=> d!645673 (= (inv!32510 (c!341198 (totalInput!3258 thiss!29110))) e!1375481)))

(declare-fun b!2150857 () Bool)

(declare-fun inv!32514 (Conc!7999) Bool)

(assert (=> b!2150857 (= e!1375481 (inv!32514 (c!341198 (totalInput!3258 thiss!29110))))))

(declare-fun b!2150858 () Bool)

(declare-fun e!1375482 () Bool)

(assert (=> b!2150858 (= e!1375481 e!1375482)))

(declare-fun res!927531 () Bool)

(assert (=> b!2150858 (= res!927531 (not ((_ is Leaf!11698) (c!341198 (totalInput!3258 thiss!29110)))))))

(assert (=> b!2150858 (=> res!927531 e!1375482)))

(declare-fun b!2150859 () Bool)

(declare-fun inv!32515 (Conc!7999) Bool)

(assert (=> b!2150859 (= e!1375482 (inv!32515 (c!341198 (totalInput!3258 thiss!29110))))))

(assert (= (and d!645673 c!341202) b!2150857))

(assert (= (and d!645673 (not c!341202)) b!2150858))

(assert (= (and b!2150858 (not res!927531)) b!2150859))

(declare-fun m!2593482 () Bool)

(assert (=> b!2150857 m!2593482))

(declare-fun m!2593484 () Bool)

(assert (=> b!2150859 m!2593484))

(assert (=> b!2150850 d!645673))

(declare-fun d!645675 () Bool)

(declare-fun lambda!80880 () Int)

(declare-fun exists!733 ((InoxSet Context!2866) Int) Bool)

(assert (=> d!645675 (= (nullableZipper!198 z!514) (exists!733 z!514 lambda!80880))))

(declare-fun bs!445598 () Bool)

(assert (= bs!445598 d!645675))

(declare-fun m!2593486 () Bool)

(assert (=> bs!445598 m!2593486))

(assert (=> b!2150842 d!645675))

(declare-fun d!645677 () Bool)

(declare-fun lambda!80883 () Int)

(declare-fun forall!5032 (List!24755 Int) Bool)

(assert (=> d!645677 (= (inv!32513 setElem!17188) (forall!5032 (exprs!1933 setElem!17188) lambda!80883))))

(declare-fun bs!445599 () Bool)

(assert (= bs!445599 d!645677))

(declare-fun m!2593488 () Bool)

(assert (=> bs!445599 m!2593488))

(assert (=> setNonEmpty!17188 d!645677))

(declare-fun b!2150882 () Bool)

(declare-datatypes ((Unit!37832 0))(
  ( (Unit!37833) )
))
(declare-fun e!1375502 () Unit!37832)

(declare-fun lt!800866 () Unit!37832)

(assert (=> b!2150882 (= e!1375502 lt!800866)))

(declare-datatypes ((tuple2!24498 0))(
  ( (tuple2!24499 (_1!14549 (_ BitVec 64)) (_2!14549 List!24756)) )
))
(declare-datatypes ((List!24757 0))(
  ( (Nil!24673) (Cons!24673 (h!30074 tuple2!24498) (t!197303 List!24757)) )
))
(declare-datatypes ((ListLongMap!257 0))(
  ( (ListLongMap!258 (toList!1110 List!24757)) )
))
(declare-fun lt!800865 () ListLongMap!257)

(declare-fun call!129038 () ListLongMap!257)

(assert (=> b!2150882 (= lt!800865 call!129038)))

(declare-fun lemmaInGenericMapThenInLongMap!16 (ListLongMap!257 tuple3!3658 Hashable!2802) Unit!37832)

(assert (=> b!2150882 (= lt!800866 (lemmaInGenericMapThenInLongMap!16 lt!800865 (tuple3!3659 z!514 from!952 lastNullablePos!91) (hashF!4725 (cache!3183 thiss!29110))))))

(declare-fun res!927539 () Bool)

(declare-fun call!129035 () Bool)

(assert (=> b!2150882 (= res!927539 call!129035)))

(declare-fun e!1375503 () Bool)

(assert (=> b!2150882 (=> (not res!927539) (not e!1375503))))

(assert (=> b!2150882 e!1375503))

(declare-fun b!2150883 () Bool)

(declare-fun call!129036 () Bool)

(assert (=> b!2150883 (= e!1375503 call!129036)))

(declare-fun b!2150884 () Bool)

(declare-fun e!1375501 () Unit!37832)

(declare-fun Unit!37834 () Unit!37832)

(assert (=> b!2150884 (= e!1375501 Unit!37834)))

(declare-fun call!129034 () List!24756)

(declare-fun bm!129028 () Bool)

(declare-fun c!341215 () Bool)

(declare-fun call!129033 () (_ BitVec 64))

(declare-fun apply!6027 (ListLongMap!257 (_ BitVec 64)) List!24756)

(assert (=> bm!129028 (= call!129034 (apply!6027 (ite c!341215 lt!800865 call!129038) call!129033))))

(declare-fun b!2150885 () Bool)

(declare-fun e!1375499 () Unit!37832)

(declare-fun Unit!37835 () Unit!37832)

(assert (=> b!2150885 (= e!1375499 Unit!37835)))

(declare-fun bm!129029 () Bool)

(declare-datatypes ((Option!4990 0))(
  ( (None!4989) (Some!4989 (v!29232 tuple2!24496)) )
))
(declare-fun call!129037 () Option!4990)

(declare-fun isDefined!4098 (Option!4990) Bool)

(assert (=> bm!129029 (= call!129036 (isDefined!4098 call!129037))))

(declare-fun b!2150886 () Bool)

(assert (=> b!2150886 false))

(declare-fun lt!800862 () Unit!37832)

(declare-fun lt!800869 () Unit!37832)

(assert (=> b!2150886 (= lt!800862 lt!800869)))

(declare-fun lt!800859 () ListLongMap!257)

(declare-datatypes ((ListMap!701 0))(
  ( (ListMap!702 (toList!1111 List!24756)) )
))
(declare-fun contains!4231 (ListMap!701 tuple3!3658) Bool)

(declare-fun extractMap!79 (List!24757) ListMap!701)

(assert (=> b!2150886 (contains!4231 (extractMap!79 (toList!1110 lt!800859)) (tuple3!3659 z!514 from!952 lastNullablePos!91))))

(declare-fun lemmaInLongMapThenInGenericMap!16 (ListLongMap!257 tuple3!3658 Hashable!2802) Unit!37832)

(assert (=> b!2150886 (= lt!800869 (lemmaInLongMapThenInGenericMap!16 lt!800859 (tuple3!3659 z!514 from!952 lastNullablePos!91) (hashF!4725 (cache!3183 thiss!29110))))))

(assert (=> b!2150886 (= lt!800859 call!129038)))

(declare-fun Unit!37836 () Unit!37832)

(assert (=> b!2150886 (= e!1375501 Unit!37836)))

(declare-fun b!2150887 () Bool)

(declare-fun e!1375497 () Bool)

(assert (=> b!2150887 (= e!1375497 call!129036)))

(declare-fun b!2150888 () Bool)

(declare-fun e!1375500 () Unit!37832)

(declare-fun Unit!37837 () Unit!37832)

(assert (=> b!2150888 (= e!1375500 Unit!37837)))

(declare-fun lt!800867 () (_ BitVec 64))

(declare-fun e!1375498 () Bool)

(declare-fun b!2150889 () Bool)

(declare-fun getPair!16 (List!24756 tuple3!3658) Option!4990)

(declare-fun apply!6028 (MutLongMap!2888 (_ BitVec 64)) List!24756)

(assert (=> b!2150889 (= e!1375498 (isDefined!4098 (getPair!16 (apply!6028 (v!29231 (underlying!5972 (cache!3183 thiss!29110))) lt!800867) (tuple3!3659 z!514 from!952 lastNullablePos!91))))))

(declare-fun bm!129030 () Bool)

(declare-fun hash!551 (Hashable!2802 tuple3!3658) (_ BitVec 64))

(assert (=> bm!129030 (= call!129033 (hash!551 (hashF!4725 (cache!3183 thiss!29110)) (tuple3!3659 z!514 from!952 lastNullablePos!91)))))

(declare-fun b!2150890 () Bool)

(assert (=> b!2150890 false))

(declare-fun lt!800870 () Unit!37832)

(declare-fun lt!800871 () Unit!37832)

(assert (=> b!2150890 (= lt!800870 lt!800871)))

(declare-fun lt!800875 () List!24757)

(declare-fun lt!800872 () List!24756)

(declare-fun contains!4232 (List!24757 tuple2!24498) Bool)

(assert (=> b!2150890 (contains!4232 lt!800875 (tuple2!24499 lt!800867 lt!800872))))

(declare-fun lemmaGetValueByKeyImpliesContainsTuple!17 (List!24757 (_ BitVec 64) List!24756) Unit!37832)

(assert (=> b!2150890 (= lt!800871 (lemmaGetValueByKeyImpliesContainsTuple!17 lt!800875 lt!800867 lt!800872))))

(assert (=> b!2150890 (= lt!800872 (apply!6028 (v!29231 (underlying!5972 (cache!3183 thiss!29110))) lt!800867))))

(declare-fun map!4968 (MutLongMap!2888) ListLongMap!257)

(assert (=> b!2150890 (= lt!800875 (toList!1110 (map!4968 (v!29231 (underlying!5972 (cache!3183 thiss!29110))))))))

(declare-fun lt!800860 () Unit!37832)

(declare-fun lt!800863 () Unit!37832)

(assert (=> b!2150890 (= lt!800860 lt!800863)))

(declare-fun lt!800873 () List!24757)

(declare-datatypes ((Option!4991 0))(
  ( (None!4990) (Some!4990 (v!29233 List!24756)) )
))
(declare-fun isDefined!4099 (Option!4991) Bool)

(declare-fun getValueByKey!51 (List!24757 (_ BitVec 64)) Option!4991)

(assert (=> b!2150890 (isDefined!4099 (getValueByKey!51 lt!800873 lt!800867))))

(declare-fun lemmaContainsKeyImpliesGetValueByKeyDefined!33 (List!24757 (_ BitVec 64)) Unit!37832)

(assert (=> b!2150890 (= lt!800863 (lemmaContainsKeyImpliesGetValueByKeyDefined!33 lt!800873 lt!800867))))

(assert (=> b!2150890 (= lt!800873 (toList!1110 (map!4968 (v!29231 (underlying!5972 (cache!3183 thiss!29110))))))))

(declare-fun lt!800857 () Unit!37832)

(declare-fun lt!800868 () Unit!37832)

(assert (=> b!2150890 (= lt!800857 lt!800868)))

(declare-fun lt!800864 () List!24757)

(declare-fun containsKey!52 (List!24757 (_ BitVec 64)) Bool)

(assert (=> b!2150890 (containsKey!52 lt!800864 lt!800867)))

(declare-fun lemmaGetValueByKeyIsDefinedImpliesContainsKey!17 (List!24757 (_ BitVec 64)) Unit!37832)

(assert (=> b!2150890 (= lt!800868 (lemmaGetValueByKeyIsDefinedImpliesContainsKey!17 lt!800864 lt!800867))))

(assert (=> b!2150890 (= lt!800864 (toList!1110 (map!4968 (v!29231 (underlying!5972 (cache!3183 thiss!29110))))))))

(declare-fun Unit!37838 () Unit!37832)

(assert (=> b!2150890 (= e!1375499 Unit!37838)))

(declare-fun bm!129031 () Bool)

(declare-fun contains!4233 (ListLongMap!257 (_ BitVec 64)) Bool)

(assert (=> bm!129031 (= call!129035 (contains!4233 (ite c!341215 lt!800865 call!129038) call!129033))))

(declare-fun b!2150891 () Bool)

(assert (=> b!2150891 (= e!1375502 e!1375501)))

(declare-fun res!927540 () Bool)

(assert (=> b!2150891 (= res!927540 call!129035)))

(assert (=> b!2150891 (=> (not res!927540) (not e!1375497))))

(declare-fun c!341214 () Bool)

(assert (=> b!2150891 (= c!341214 e!1375497)))

(declare-fun lt!800876 () Bool)

(declare-fun d!645679 () Bool)

(declare-fun map!4969 (MutableMap!2802) ListMap!701)

(assert (=> d!645679 (= lt!800876 (contains!4231 (map!4969 (cache!3183 thiss!29110)) (tuple3!3659 z!514 from!952 lastNullablePos!91)))))

(assert (=> d!645679 (= lt!800876 e!1375498)))

(declare-fun res!927538 () Bool)

(assert (=> d!645679 (=> (not res!927538) (not e!1375498))))

(declare-fun contains!4234 (MutLongMap!2888 (_ BitVec 64)) Bool)

(assert (=> d!645679 (= res!927538 (contains!4234 (v!29231 (underlying!5972 (cache!3183 thiss!29110))) lt!800867))))

(declare-fun lt!800861 () Unit!37832)

(assert (=> d!645679 (= lt!800861 e!1375502)))

(assert (=> d!645679 (= c!341215 (contains!4231 (extractMap!79 (toList!1110 (map!4968 (v!29231 (underlying!5972 (cache!3183 thiss!29110)))))) (tuple3!3659 z!514 from!952 lastNullablePos!91)))))

(declare-fun lt!800874 () Unit!37832)

(assert (=> d!645679 (= lt!800874 e!1375500)))

(declare-fun c!341213 () Bool)

(assert (=> d!645679 (= c!341213 (contains!4234 (v!29231 (underlying!5972 (cache!3183 thiss!29110))) lt!800867))))

(assert (=> d!645679 (= lt!800867 (hash!551 (hashF!4725 (cache!3183 thiss!29110)) (tuple3!3659 z!514 from!952 lastNullablePos!91)))))

(declare-fun valid!2226 (MutableMap!2802) Bool)

(assert (=> d!645679 (valid!2226 (cache!3183 thiss!29110))))

(assert (=> d!645679 (= (contains!4230 (cache!3183 thiss!29110) (tuple3!3659 z!514 from!952 lastNullablePos!91)) lt!800876)))

(declare-fun bm!129032 () Bool)

(assert (=> bm!129032 (= call!129038 (map!4968 (v!29231 (underlying!5972 (cache!3183 thiss!29110)))))))

(declare-fun bm!129033 () Bool)

(assert (=> bm!129033 (= call!129037 (getPair!16 call!129034 (tuple3!3659 z!514 from!952 lastNullablePos!91)))))

(declare-fun b!2150892 () Bool)

(declare-fun lambda!80886 () Int)

(declare-fun forallContained!763 (List!24757 Int tuple2!24498) Unit!37832)

(assert (=> b!2150892 (= e!1375500 (forallContained!763 (toList!1110 (map!4968 (v!29231 (underlying!5972 (cache!3183 thiss!29110))))) lambda!80886 (tuple2!24499 lt!800867 (apply!6028 (v!29231 (underlying!5972 (cache!3183 thiss!29110))) lt!800867))))))

(declare-fun c!341216 () Bool)

(assert (=> b!2150892 (= c!341216 (not (contains!4232 (toList!1110 (map!4968 (v!29231 (underlying!5972 (cache!3183 thiss!29110))))) (tuple2!24499 lt!800867 (apply!6028 (v!29231 (underlying!5972 (cache!3183 thiss!29110))) lt!800867)))))))

(declare-fun lt!800858 () Unit!37832)

(assert (=> b!2150892 (= lt!800858 e!1375499)))

(assert (= (and d!645679 c!341213) b!2150892))

(assert (= (and d!645679 (not c!341213)) b!2150888))

(assert (= (and b!2150892 c!341216) b!2150890))

(assert (= (and b!2150892 (not c!341216)) b!2150885))

(assert (= (and d!645679 c!341215) b!2150882))

(assert (= (and d!645679 (not c!341215)) b!2150891))

(assert (= (and b!2150882 res!927539) b!2150883))

(assert (= (and b!2150891 res!927540) b!2150887))

(assert (= (and b!2150891 c!341214) b!2150886))

(assert (= (and b!2150891 (not c!341214)) b!2150884))

(assert (= (or b!2150882 b!2150883 b!2150891 b!2150887) bm!129030))

(assert (= (or b!2150882 b!2150891 b!2150887 b!2150886) bm!129032))

(assert (= (or b!2150883 b!2150887) bm!129028))

(assert (= (or b!2150882 b!2150891) bm!129031))

(assert (= (or b!2150883 b!2150887) bm!129033))

(assert (= (or b!2150883 b!2150887) bm!129029))

(assert (= (and d!645679 res!927538) b!2150889))

(declare-fun m!2593490 () Bool)

(assert (=> b!2150890 m!2593490))

(assert (=> b!2150890 m!2593490))

(declare-fun m!2593492 () Bool)

(assert (=> b!2150890 m!2593492))

(declare-fun m!2593494 () Bool)

(assert (=> b!2150890 m!2593494))

(declare-fun m!2593496 () Bool)

(assert (=> b!2150890 m!2593496))

(declare-fun m!2593498 () Bool)

(assert (=> b!2150890 m!2593498))

(declare-fun m!2593500 () Bool)

(assert (=> b!2150890 m!2593500))

(declare-fun m!2593502 () Bool)

(assert (=> b!2150890 m!2593502))

(declare-fun m!2593504 () Bool)

(assert (=> b!2150890 m!2593504))

(declare-fun m!2593506 () Bool)

(assert (=> b!2150890 m!2593506))

(declare-fun m!2593508 () Bool)

(assert (=> bm!129033 m!2593508))

(declare-fun m!2593510 () Bool)

(assert (=> d!645679 m!2593510))

(declare-fun m!2593512 () Bool)

(assert (=> d!645679 m!2593512))

(declare-fun m!2593514 () Bool)

(assert (=> d!645679 m!2593514))

(declare-fun m!2593516 () Bool)

(assert (=> d!645679 m!2593516))

(assert (=> d!645679 m!2593502))

(declare-fun m!2593518 () Bool)

(assert (=> d!645679 m!2593518))

(assert (=> d!645679 m!2593512))

(declare-fun m!2593520 () Bool)

(assert (=> d!645679 m!2593520))

(assert (=> d!645679 m!2593520))

(declare-fun m!2593522 () Bool)

(assert (=> d!645679 m!2593522))

(assert (=> bm!129032 m!2593502))

(assert (=> bm!129030 m!2593510))

(declare-fun m!2593524 () Bool)

(assert (=> b!2150882 m!2593524))

(declare-fun m!2593526 () Bool)

(assert (=> bm!129029 m!2593526))

(declare-fun m!2593528 () Bool)

(assert (=> b!2150886 m!2593528))

(assert (=> b!2150886 m!2593528))

(declare-fun m!2593530 () Bool)

(assert (=> b!2150886 m!2593530))

(declare-fun m!2593532 () Bool)

(assert (=> b!2150886 m!2593532))

(assert (=> b!2150892 m!2593502))

(assert (=> b!2150892 m!2593498))

(declare-fun m!2593534 () Bool)

(assert (=> b!2150892 m!2593534))

(declare-fun m!2593536 () Bool)

(assert (=> b!2150892 m!2593536))

(declare-fun m!2593538 () Bool)

(assert (=> bm!129031 m!2593538))

(assert (=> b!2150889 m!2593498))

(assert (=> b!2150889 m!2593498))

(declare-fun m!2593540 () Bool)

(assert (=> b!2150889 m!2593540))

(assert (=> b!2150889 m!2593540))

(declare-fun m!2593542 () Bool)

(assert (=> b!2150889 m!2593542))

(declare-fun m!2593544 () Bool)

(assert (=> bm!129028 m!2593544))

(assert (=> b!2150845 d!645679))

(declare-fun b!2150898 () Bool)

(assert (=> b!2150898 true))

(declare-fun d!645681 () Bool)

(declare-fun res!927545 () Bool)

(declare-fun e!1375506 () Bool)

(assert (=> d!645681 (=> (not res!927545) (not e!1375506))))

(assert (=> d!645681 (= res!927545 (valid!2226 (cache!3183 thiss!29110)))))

(assert (=> d!645681 (= (validCacheMapFurthestNullable!155 (cache!3183 thiss!29110) localTotalInput!13) e!1375506)))

(declare-fun b!2150897 () Bool)

(declare-fun res!927546 () Bool)

(assert (=> b!2150897 (=> (not res!927546) (not e!1375506))))

(declare-fun invariantList!324 (List!24756) Bool)

(assert (=> b!2150897 (= res!927546 (invariantList!324 (toList!1111 (map!4969 (cache!3183 thiss!29110)))))))

(declare-fun lambda!80889 () Int)

(declare-fun forall!5033 (List!24756 Int) Bool)

(assert (=> b!2150898 (= e!1375506 (forall!5033 (toList!1111 (map!4969 (cache!3183 thiss!29110))) lambda!80889))))

(assert (= (and d!645681 res!927545) b!2150897))

(assert (= (and b!2150897 res!927546) b!2150898))

(assert (=> d!645681 m!2593516))

(assert (=> b!2150897 m!2593512))

(declare-fun m!2593547 () Bool)

(assert (=> b!2150897 m!2593547))

(assert (=> b!2150898 m!2593512))

(declare-fun m!2593549 () Bool)

(assert (=> b!2150898 m!2593549))

(assert (=> b!2150845 d!645681))

(declare-fun d!645683 () Bool)

(declare-fun res!927549 () Bool)

(declare-fun e!1375509 () Bool)

(assert (=> d!645683 (=> (not res!927549) (not e!1375509))))

(assert (=> d!645683 (= res!927549 ((_ is HashMap!2802) (cache!3183 thiss!29110)))))

(assert (=> d!645683 (= (inv!32511 thiss!29110) e!1375509)))

(declare-fun b!2150903 () Bool)

(assert (=> b!2150903 (= e!1375509 (validCacheMapFurthestNullable!155 (cache!3183 thiss!29110) (totalInput!3258 thiss!29110)))))

(assert (= (and d!645683 res!927549) b!2150903))

(assert (=> b!2150903 m!2593456))

(assert (=> start!208616 d!645683))

(declare-fun d!645685 () Bool)

(declare-fun isBalanced!2479 (Conc!7999) Bool)

(assert (=> d!645685 (= (inv!32512 localTotalInput!13) (isBalanced!2479 (c!341198 localTotalInput!13)))))

(declare-fun bs!445600 () Bool)

(assert (= bs!445600 d!645685))

(declare-fun m!2593551 () Bool)

(assert (=> bs!445600 m!2593551))

(assert (=> start!208616 d!645685))

(declare-fun d!645687 () Bool)

(declare-fun c!341217 () Bool)

(assert (=> d!645687 (= c!341217 ((_ is Node!7999) (c!341198 localTotalInput!13)))))

(declare-fun e!1375510 () Bool)

(assert (=> d!645687 (= (inv!32510 (c!341198 localTotalInput!13)) e!1375510)))

(declare-fun b!2150904 () Bool)

(assert (=> b!2150904 (= e!1375510 (inv!32514 (c!341198 localTotalInput!13)))))

(declare-fun b!2150905 () Bool)

(declare-fun e!1375511 () Bool)

(assert (=> b!2150905 (= e!1375510 e!1375511)))

(declare-fun res!927550 () Bool)

(assert (=> b!2150905 (= res!927550 (not ((_ is Leaf!11698) (c!341198 localTotalInput!13))))))

(assert (=> b!2150905 (=> res!927550 e!1375511)))

(declare-fun b!2150906 () Bool)

(assert (=> b!2150906 (= e!1375511 (inv!32515 (c!341198 localTotalInput!13)))))

(assert (= (and d!645687 c!341217) b!2150904))

(assert (= (and d!645687 (not c!341217)) b!2150905))

(assert (= (and b!2150905 (not res!927550)) b!2150906))

(declare-fun m!2593553 () Bool)

(assert (=> b!2150904 m!2593553))

(declare-fun m!2593555 () Bool)

(assert (=> b!2150906 m!2593555))

(assert (=> b!2150836 d!645687))

(declare-fun d!645689 () Bool)

(assert (=> d!645689 (= (array_inv!3136 (_keys!3185 (v!29230 (underlying!5971 (v!29231 (underlying!5972 (cache!3183 thiss!29110))))))) (bvsge (size!19324 (_keys!3185 (v!29230 (underlying!5971 (v!29231 (underlying!5972 (cache!3183 thiss!29110))))))) #b00000000000000000000000000000000))))

(assert (=> b!2150841 d!645689))

(declare-fun d!645691 () Bool)

(assert (=> d!645691 (= (array_inv!3137 (_values!3168 (v!29230 (underlying!5971 (v!29231 (underlying!5972 (cache!3183 thiss!29110))))))) (bvsge (size!19325 (_values!3168 (v!29230 (underlying!5971 (v!29231 (underlying!5972 (cache!3183 thiss!29110))))))) #b00000000000000000000000000000000))))

(assert (=> b!2150841 d!645691))

(declare-fun d!645693 () Bool)

(assert (=> d!645693 (= (inv!32512 (totalInput!3258 thiss!29110)) (isBalanced!2479 (c!341198 (totalInput!3258 thiss!29110))))))

(declare-fun bs!445601 () Bool)

(assert (= bs!445601 d!645693))

(declare-fun m!2593557 () Bool)

(assert (=> bs!445601 m!2593557))

(assert (=> b!2150849 d!645693))

(declare-fun bs!445602 () Bool)

(declare-fun b!2150908 () Bool)

(assert (= bs!445602 (and b!2150908 b!2150898)))

(declare-fun lambda!80890 () Int)

(assert (=> bs!445602 (= (= (totalInput!3258 thiss!29110) localTotalInput!13) (= lambda!80890 lambda!80889))))

(assert (=> b!2150908 true))

(declare-fun d!645695 () Bool)

(declare-fun res!927551 () Bool)

(declare-fun e!1375512 () Bool)

(assert (=> d!645695 (=> (not res!927551) (not e!1375512))))

(assert (=> d!645695 (= res!927551 (valid!2226 (cache!3183 thiss!29110)))))

(assert (=> d!645695 (= (validCacheMapFurthestNullable!155 (cache!3183 thiss!29110) (totalInput!3258 thiss!29110)) e!1375512)))

(declare-fun b!2150907 () Bool)

(declare-fun res!927552 () Bool)

(assert (=> b!2150907 (=> (not res!927552) (not e!1375512))))

(assert (=> b!2150907 (= res!927552 (invariantList!324 (toList!1111 (map!4969 (cache!3183 thiss!29110)))))))

(assert (=> b!2150908 (= e!1375512 (forall!5033 (toList!1111 (map!4969 (cache!3183 thiss!29110))) lambda!80890))))

(assert (= (and d!645695 res!927551) b!2150907))

(assert (= (and b!2150907 res!927552) b!2150908))

(assert (=> d!645695 m!2593516))

(assert (=> b!2150907 m!2593512))

(assert (=> b!2150907 m!2593547))

(assert (=> b!2150908 m!2593512))

(declare-fun m!2593559 () Bool)

(assert (=> b!2150908 m!2593559))

(assert (=> b!2150837 d!645695))

(declare-fun tp!668371 () Bool)

(declare-fun e!1375518 () Bool)

(declare-fun tp!668372 () Bool)

(declare-fun b!2150917 () Bool)

(assert (=> b!2150917 (= e!1375518 (and (inv!32510 (left!18945 (c!341198 (totalInput!3258 thiss!29110)))) tp!668371 (inv!32510 (right!19275 (c!341198 (totalInput!3258 thiss!29110)))) tp!668372))))

(declare-fun b!2150919 () Bool)

(declare-fun e!1375517 () Bool)

(declare-fun tp!668370 () Bool)

(assert (=> b!2150919 (= e!1375517 tp!668370)))

(declare-fun b!2150918 () Bool)

(declare-fun inv!32516 (IArray!16003) Bool)

(assert (=> b!2150918 (= e!1375518 (and (inv!32516 (xs!10941 (c!341198 (totalInput!3258 thiss!29110)))) e!1375517))))

(assert (=> b!2150850 (= tp!668359 (and (inv!32510 (c!341198 (totalInput!3258 thiss!29110))) e!1375518))))

(assert (= (and b!2150850 ((_ is Node!7999) (c!341198 (totalInput!3258 thiss!29110)))) b!2150917))

(assert (= b!2150918 b!2150919))

(assert (= (and b!2150850 ((_ is Leaf!11698) (c!341198 (totalInput!3258 thiss!29110)))) b!2150918))

(declare-fun m!2593561 () Bool)

(assert (=> b!2150917 m!2593561))

(declare-fun m!2593563 () Bool)

(assert (=> b!2150917 m!2593563))

(declare-fun m!2593565 () Bool)

(assert (=> b!2150918 m!2593565))

(assert (=> b!2150850 m!2593476))

(declare-fun condSetEmpty!17191 () Bool)

(assert (=> setNonEmpty!17188 (= condSetEmpty!17191 (= setRest!17188 ((as const (Array Context!2866 Bool)) false)))))

(declare-fun setRes!17191 () Bool)

(assert (=> setNonEmpty!17188 (= tp!668355 setRes!17191)))

(declare-fun setIsEmpty!17191 () Bool)

(assert (=> setIsEmpty!17191 setRes!17191))

(declare-fun setElem!17191 () Context!2866)

(declare-fun setNonEmpty!17191 () Bool)

(declare-fun tp!668378 () Bool)

(declare-fun e!1375521 () Bool)

(assert (=> setNonEmpty!17191 (= setRes!17191 (and tp!668378 (inv!32513 setElem!17191) e!1375521))))

(declare-fun setRest!17191 () (InoxSet Context!2866))

(assert (=> setNonEmpty!17191 (= setRest!17188 ((_ map or) (store ((as const (Array Context!2866 Bool)) false) setElem!17191 true) setRest!17191))))

(declare-fun b!2150924 () Bool)

(declare-fun tp!668377 () Bool)

(assert (=> b!2150924 (= e!1375521 tp!668377)))

(assert (= (and setNonEmpty!17188 condSetEmpty!17191) setIsEmpty!17191))

(assert (= (and setNonEmpty!17188 (not condSetEmpty!17191)) setNonEmpty!17191))

(assert (= setNonEmpty!17191 b!2150924))

(declare-fun m!2593567 () Bool)

(assert (=> setNonEmpty!17191 m!2593567))

(declare-fun b!2150932 () Bool)

(declare-fun e!1375527 () Bool)

(declare-fun tp!668387 () Bool)

(assert (=> b!2150932 (= e!1375527 tp!668387)))

(declare-fun setIsEmpty!17194 () Bool)

(declare-fun setRes!17194 () Bool)

(assert (=> setIsEmpty!17194 setRes!17194))

(declare-fun e!1375526 () Bool)

(assert (=> b!2150839 (= tp!668356 e!1375526)))

(declare-fun setNonEmpty!17194 () Bool)

(declare-fun setElem!17194 () Context!2866)

(declare-fun tp!668386 () Bool)

(assert (=> setNonEmpty!17194 (= setRes!17194 (and tp!668386 (inv!32513 setElem!17194) e!1375527))))

(declare-fun setRest!17194 () (InoxSet Context!2866))

(assert (=> setNonEmpty!17194 (= (_1!14547 (_1!14548 (h!30073 mapDefault!13667))) ((_ map or) (store ((as const (Array Context!2866 Bool)) false) setElem!17194 true) setRest!17194))))

(declare-fun b!2150931 () Bool)

(declare-fun tp!668385 () Bool)

(assert (=> b!2150931 (= e!1375526 (and setRes!17194 tp!668385))))

(declare-fun condSetEmpty!17194 () Bool)

(assert (=> b!2150931 (= condSetEmpty!17194 (= (_1!14547 (_1!14548 (h!30073 mapDefault!13667))) ((as const (Array Context!2866 Bool)) false)))))

(assert (= (and b!2150931 condSetEmpty!17194) setIsEmpty!17194))

(assert (= (and b!2150931 (not condSetEmpty!17194)) setNonEmpty!17194))

(assert (= setNonEmpty!17194 b!2150932))

(assert (= (and b!2150839 ((_ is Cons!24672) mapDefault!13667)) b!2150931))

(declare-fun m!2593569 () Bool)

(assert (=> setNonEmpty!17194 m!2593569))

(declare-fun b!2150937 () Bool)

(declare-fun e!1375530 () Bool)

(declare-fun tp!668392 () Bool)

(declare-fun tp!668393 () Bool)

(assert (=> b!2150937 (= e!1375530 (and tp!668392 tp!668393))))

(assert (=> b!2150847 (= tp!668360 e!1375530)))

(assert (= (and b!2150847 ((_ is Cons!24671) (exprs!1933 setElem!17188))) b!2150937))

(declare-fun tp!668395 () Bool)

(declare-fun e!1375532 () Bool)

(declare-fun tp!668396 () Bool)

(declare-fun b!2150938 () Bool)

(assert (=> b!2150938 (= e!1375532 (and (inv!32510 (left!18945 (c!341198 localTotalInput!13))) tp!668395 (inv!32510 (right!19275 (c!341198 localTotalInput!13))) tp!668396))))

(declare-fun b!2150940 () Bool)

(declare-fun e!1375531 () Bool)

(declare-fun tp!668394 () Bool)

(assert (=> b!2150940 (= e!1375531 tp!668394)))

(declare-fun b!2150939 () Bool)

(assert (=> b!2150939 (= e!1375532 (and (inv!32516 (xs!10941 (c!341198 localTotalInput!13))) e!1375531))))

(assert (=> b!2150836 (= tp!668361 (and (inv!32510 (c!341198 localTotalInput!13)) e!1375532))))

(assert (= (and b!2150836 ((_ is Node!7999) (c!341198 localTotalInput!13))) b!2150938))

(assert (= b!2150939 b!2150940))

(assert (= (and b!2150836 ((_ is Leaf!11698) (c!341198 localTotalInput!13))) b!2150939))

(declare-fun m!2593571 () Bool)

(assert (=> b!2150938 m!2593571))

(declare-fun m!2593573 () Bool)

(assert (=> b!2150938 m!2593573))

(declare-fun m!2593575 () Bool)

(assert (=> b!2150939 m!2593575))

(assert (=> b!2150836 m!2593468))

(declare-fun condMapEmpty!13670 () Bool)

(declare-fun mapDefault!13670 () List!24756)

(assert (=> mapNonEmpty!13667 (= condMapEmpty!13670 (= mapRest!13667 ((as const (Array (_ BitVec 32) List!24756)) mapDefault!13670)))))

(declare-fun e!1375542 () Bool)

(declare-fun mapRes!13670 () Bool)

(assert (=> mapNonEmpty!13667 (= tp!668357 (and e!1375542 mapRes!13670))))

(declare-fun setIsEmpty!17199 () Bool)

(declare-fun setRes!17199 () Bool)

(assert (=> setIsEmpty!17199 setRes!17199))

(declare-fun setElem!17199 () Context!2866)

(declare-fun tp!668414 () Bool)

(declare-fun setNonEmpty!17199 () Bool)

(declare-fun setRes!17200 () Bool)

(declare-fun e!1375543 () Bool)

(assert (=> setNonEmpty!17199 (= setRes!17200 (and tp!668414 (inv!32513 setElem!17199) e!1375543))))

(declare-fun mapValue!13670 () List!24756)

(declare-fun setRest!17200 () (InoxSet Context!2866))

(assert (=> setNonEmpty!17199 (= (_1!14547 (_1!14548 (h!30073 mapValue!13670))) ((_ map or) (store ((as const (Array Context!2866 Bool)) false) setElem!17199 true) setRest!17200))))

(declare-fun b!2150951 () Bool)

(declare-fun e!1375541 () Bool)

(declare-fun tp!668413 () Bool)

(assert (=> b!2150951 (= e!1375541 (and setRes!17200 tp!668413))))

(declare-fun condSetEmpty!17199 () Bool)

(assert (=> b!2150951 (= condSetEmpty!17199 (= (_1!14547 (_1!14548 (h!30073 mapValue!13670))) ((as const (Array Context!2866 Bool)) false)))))

(declare-fun b!2150952 () Bool)

(declare-fun tp!668417 () Bool)

(assert (=> b!2150952 (= e!1375542 (and setRes!17199 tp!668417))))

(declare-fun condSetEmpty!17200 () Bool)

(assert (=> b!2150952 (= condSetEmpty!17200 (= (_1!14547 (_1!14548 (h!30073 mapDefault!13670))) ((as const (Array Context!2866 Bool)) false)))))

(declare-fun b!2150953 () Bool)

(declare-fun tp!668416 () Bool)

(assert (=> b!2150953 (= e!1375543 tp!668416)))

(declare-fun setIsEmpty!17200 () Bool)

(assert (=> setIsEmpty!17200 setRes!17200))

(declare-fun mapIsEmpty!13670 () Bool)

(assert (=> mapIsEmpty!13670 mapRes!13670))

(declare-fun b!2150954 () Bool)

(declare-fun e!1375544 () Bool)

(declare-fun tp!668415 () Bool)

(assert (=> b!2150954 (= e!1375544 tp!668415)))

(declare-fun mapNonEmpty!13670 () Bool)

(declare-fun tp!668412 () Bool)

(assert (=> mapNonEmpty!13670 (= mapRes!13670 (and tp!668412 e!1375541))))

(declare-fun mapRest!13670 () (Array (_ BitVec 32) List!24756))

(declare-fun mapKey!13670 () (_ BitVec 32))

(assert (=> mapNonEmpty!13670 (= mapRest!13667 (store mapRest!13670 mapKey!13670 mapValue!13670))))

(declare-fun setNonEmpty!17200 () Bool)

(declare-fun setElem!17200 () Context!2866)

(declare-fun tp!668411 () Bool)

(assert (=> setNonEmpty!17200 (= setRes!17199 (and tp!668411 (inv!32513 setElem!17200) e!1375544))))

(declare-fun setRest!17199 () (InoxSet Context!2866))

(assert (=> setNonEmpty!17200 (= (_1!14547 (_1!14548 (h!30073 mapDefault!13670))) ((_ map or) (store ((as const (Array Context!2866 Bool)) false) setElem!17200 true) setRest!17199))))

(assert (= (and mapNonEmpty!13667 condMapEmpty!13670) mapIsEmpty!13670))

(assert (= (and mapNonEmpty!13667 (not condMapEmpty!13670)) mapNonEmpty!13670))

(assert (= (and b!2150951 condSetEmpty!17199) setIsEmpty!17200))

(assert (= (and b!2150951 (not condSetEmpty!17199)) setNonEmpty!17199))

(assert (= setNonEmpty!17199 b!2150953))

(assert (= (and mapNonEmpty!13670 ((_ is Cons!24672) mapValue!13670)) b!2150951))

(assert (= (and b!2150952 condSetEmpty!17200) setIsEmpty!17199))

(assert (= (and b!2150952 (not condSetEmpty!17200)) setNonEmpty!17200))

(assert (= setNonEmpty!17200 b!2150954))

(assert (= (and mapNonEmpty!13667 ((_ is Cons!24672) mapDefault!13670)) b!2150952))

(declare-fun m!2593577 () Bool)

(assert (=> setNonEmpty!17199 m!2593577))

(declare-fun m!2593579 () Bool)

(assert (=> mapNonEmpty!13670 m!2593579))

(declare-fun m!2593581 () Bool)

(assert (=> setNonEmpty!17200 m!2593581))

(declare-fun b!2150956 () Bool)

(declare-fun e!1375546 () Bool)

(declare-fun tp!668420 () Bool)

(assert (=> b!2150956 (= e!1375546 tp!668420)))

(declare-fun setIsEmpty!17201 () Bool)

(declare-fun setRes!17201 () Bool)

(assert (=> setIsEmpty!17201 setRes!17201))

(declare-fun e!1375545 () Bool)

(assert (=> mapNonEmpty!13667 (= tp!668362 e!1375545)))

(declare-fun setNonEmpty!17201 () Bool)

(declare-fun setElem!17201 () Context!2866)

(declare-fun tp!668419 () Bool)

(assert (=> setNonEmpty!17201 (= setRes!17201 (and tp!668419 (inv!32513 setElem!17201) e!1375546))))

(declare-fun setRest!17201 () (InoxSet Context!2866))

(assert (=> setNonEmpty!17201 (= (_1!14547 (_1!14548 (h!30073 mapValue!13667))) ((_ map or) (store ((as const (Array Context!2866 Bool)) false) setElem!17201 true) setRest!17201))))

(declare-fun b!2150955 () Bool)

(declare-fun tp!668418 () Bool)

(assert (=> b!2150955 (= e!1375545 (and setRes!17201 tp!668418))))

(declare-fun condSetEmpty!17201 () Bool)

(assert (=> b!2150955 (= condSetEmpty!17201 (= (_1!14547 (_1!14548 (h!30073 mapValue!13667))) ((as const (Array Context!2866 Bool)) false)))))

(assert (= (and b!2150955 condSetEmpty!17201) setIsEmpty!17201))

(assert (= (and b!2150955 (not condSetEmpty!17201)) setNonEmpty!17201))

(assert (= setNonEmpty!17201 b!2150956))

(assert (= (and mapNonEmpty!13667 ((_ is Cons!24672) mapValue!13667)) b!2150955))

(declare-fun m!2593583 () Bool)

(assert (=> setNonEmpty!17201 m!2593583))

(declare-fun b!2150958 () Bool)

(declare-fun e!1375548 () Bool)

(declare-fun tp!668423 () Bool)

(assert (=> b!2150958 (= e!1375548 tp!668423)))

(declare-fun setIsEmpty!17202 () Bool)

(declare-fun setRes!17202 () Bool)

(assert (=> setIsEmpty!17202 setRes!17202))

(declare-fun e!1375547 () Bool)

(assert (=> b!2150841 (= tp!668354 e!1375547)))

(declare-fun tp!668422 () Bool)

(declare-fun setElem!17202 () Context!2866)

(declare-fun setNonEmpty!17202 () Bool)

(assert (=> setNonEmpty!17202 (= setRes!17202 (and tp!668422 (inv!32513 setElem!17202) e!1375548))))

(declare-fun setRest!17202 () (InoxSet Context!2866))

(assert (=> setNonEmpty!17202 (= (_1!14547 (_1!14548 (h!30073 (zeroValue!3146 (v!29230 (underlying!5971 (v!29231 (underlying!5972 (cache!3183 thiss!29110))))))))) ((_ map or) (store ((as const (Array Context!2866 Bool)) false) setElem!17202 true) setRest!17202))))

(declare-fun b!2150957 () Bool)

(declare-fun tp!668421 () Bool)

(assert (=> b!2150957 (= e!1375547 (and setRes!17202 tp!668421))))

(declare-fun condSetEmpty!17202 () Bool)

(assert (=> b!2150957 (= condSetEmpty!17202 (= (_1!14547 (_1!14548 (h!30073 (zeroValue!3146 (v!29230 (underlying!5971 (v!29231 (underlying!5972 (cache!3183 thiss!29110))))))))) ((as const (Array Context!2866 Bool)) false)))))

(assert (= (and b!2150957 condSetEmpty!17202) setIsEmpty!17202))

(assert (= (and b!2150957 (not condSetEmpty!17202)) setNonEmpty!17202))

(assert (= setNonEmpty!17202 b!2150958))

(assert (= (and b!2150841 ((_ is Cons!24672) (zeroValue!3146 (v!29230 (underlying!5971 (v!29231 (underlying!5972 (cache!3183 thiss!29110)))))))) b!2150957))

(declare-fun m!2593585 () Bool)

(assert (=> setNonEmpty!17202 m!2593585))

(declare-fun b!2150960 () Bool)

(declare-fun e!1375550 () Bool)

(declare-fun tp!668426 () Bool)

(assert (=> b!2150960 (= e!1375550 tp!668426)))

(declare-fun setIsEmpty!17203 () Bool)

(declare-fun setRes!17203 () Bool)

(assert (=> setIsEmpty!17203 setRes!17203))

(declare-fun e!1375549 () Bool)

(assert (=> b!2150841 (= tp!668363 e!1375549)))

(declare-fun setElem!17203 () Context!2866)

(declare-fun tp!668425 () Bool)

(declare-fun setNonEmpty!17203 () Bool)

(assert (=> setNonEmpty!17203 (= setRes!17203 (and tp!668425 (inv!32513 setElem!17203) e!1375550))))

(declare-fun setRest!17203 () (InoxSet Context!2866))

(assert (=> setNonEmpty!17203 (= (_1!14547 (_1!14548 (h!30073 (minValue!3146 (v!29230 (underlying!5971 (v!29231 (underlying!5972 (cache!3183 thiss!29110))))))))) ((_ map or) (store ((as const (Array Context!2866 Bool)) false) setElem!17203 true) setRest!17203))))

(declare-fun b!2150959 () Bool)

(declare-fun tp!668424 () Bool)

(assert (=> b!2150959 (= e!1375549 (and setRes!17203 tp!668424))))

(declare-fun condSetEmpty!17203 () Bool)

(assert (=> b!2150959 (= condSetEmpty!17203 (= (_1!14547 (_1!14548 (h!30073 (minValue!3146 (v!29230 (underlying!5971 (v!29231 (underlying!5972 (cache!3183 thiss!29110))))))))) ((as const (Array Context!2866 Bool)) false)))))

(assert (= (and b!2150959 condSetEmpty!17203) setIsEmpty!17203))

(assert (= (and b!2150959 (not condSetEmpty!17203)) setNonEmpty!17203))

(assert (= setNonEmpty!17203 b!2150960))

(assert (= (and b!2150841 ((_ is Cons!24672) (minValue!3146 (v!29230 (underlying!5971 (v!29231 (underlying!5972 (cache!3183 thiss!29110)))))))) b!2150959))

(declare-fun m!2593587 () Bool)

(assert (=> setNonEmpty!17203 m!2593587))

(check-sat (not b!2150939) (not b!2150859) (not b!2150882) (not setNonEmpty!17199) (not setNonEmpty!17194) (not bm!129029) (not d!645679) (not b!2150937) b_and!173153 (not b!2150857) (not d!645693) (not b!2150889) (not b!2150931) (not b!2150957) (not setNonEmpty!17191) (not b!2150932) (not b!2150897) (not b!2150850) (not b!2150924) (not b!2150904) (not bm!129028) (not bm!129031) (not b!2150952) (not d!645685) (not setNonEmpty!17201) (not b!2150958) (not b!2150951) (not bm!129030) (not b!2150890) (not b!2150919) (not b!2150959) (not b!2150906) (not b!2150903) (not bm!129032) (not setNonEmpty!17200) (not bm!129033) (not b!2150892) (not b!2150955) (not b!2150918) (not b!2150960) (not b!2150908) (not b!2150886) (not d!645677) (not d!645681) (not b!2150953) (not b!2150907) (not b!2150898) (not d!645675) (not b_next!64247) (not d!645695) (not b!2150836) (not b_next!64245) (not b!2150940) (not b!2150954) (not setNonEmpty!17202) (not b!2150938) (not b!2150956) (not setNonEmpty!17203) (not b!2150917) (not mapNonEmpty!13670) b_and!173155)
(check-sat b_and!173155 b_and!173153 (not b_next!64245) (not b_next!64247))
