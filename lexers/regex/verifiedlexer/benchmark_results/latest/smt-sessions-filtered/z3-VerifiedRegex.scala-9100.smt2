; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!486832 () Bool)

(assert start!486832)

(declare-fun b!4760514 () Bool)

(declare-fun b_free!129351 () Bool)

(declare-fun b_next!130055 () Bool)

(assert (=> b!4760514 (= b_free!129351 (not b_next!130055))))

(declare-fun tp!1353465 () Bool)

(declare-fun b_and!340975 () Bool)

(assert (=> b!4760514 (= tp!1353465 b_and!340975)))

(declare-fun b!4760513 () Bool)

(declare-fun b_free!129353 () Bool)

(declare-fun b_next!130057 () Bool)

(assert (=> b!4760513 (= b_free!129353 (not b_next!130057))))

(declare-fun tp!1353463 () Bool)

(declare-fun b_and!340977 () Bool)

(assert (=> b!4760513 (= tp!1353463 b_and!340977)))

(declare-fun e!2970637 () Bool)

(declare-fun e!2970643 () Bool)

(declare-datatypes ((C!26312 0))(
  ( (C!26313 (val!20144 Int)) )
))
(declare-datatypes ((Regex!13057 0))(
  ( (ElementMatch!13057 (c!812123 C!26312)) (Concat!21376 (regOne!26626 Regex!13057) (regTwo!26626 Regex!13057)) (EmptyExpr!13057) (Star!13057 (reg!13386 Regex!13057)) (EmptyLang!13057) (Union!13057 (regOne!26627 Regex!13057) (regTwo!26627 Regex!13057)) )
))
(declare-datatypes ((List!53485 0))(
  ( (Nil!53361) (Cons!53361 (h!59772 Regex!13057) (t!360845 List!53485)) )
))
(declare-datatypes ((Context!5894 0))(
  ( (Context!5895 (exprs!3447 List!53485)) )
))
(define-sort InoxSet (T) (Array T Bool))

(declare-datatypes ((tuple2!55300 0))(
  ( (tuple2!55301 (_1!30944 (InoxSet Context!5894)) (_2!30944 Int)) )
))
(declare-datatypes ((tuple2!55302 0))(
  ( (tuple2!55303 (_1!30945 tuple2!55300) (_2!30945 Int)) )
))
(declare-datatypes ((List!53486 0))(
  ( (Nil!53362) (Cons!53362 (h!59773 tuple2!55302) (t!360846 List!53486)) )
))
(declare-datatypes ((List!53487 0))(
  ( (Nil!53363) (Cons!53363 (h!59774 C!26312) (t!360847 List!53487)) )
))
(declare-datatypes ((IArray!29057 0))(
  ( (IArray!29058 (innerList!14586 List!53487)) )
))
(declare-datatypes ((Conc!14498 0))(
  ( (Node!14498 (left!39140 Conc!14498) (right!39470 Conc!14498) (csize!29226 Int) (cheight!14709 Int)) (Leaf!23599 (xs!17804 IArray!29057) (csize!29227 Int)) (Empty!14498) )
))
(declare-datatypes ((Hashable!6520 0))(
  ( (HashableExt!6519 (__x!32325 Int)) )
))
(declare-datatypes ((array!17716 0))(
  ( (array!17717 (arr!7903 (Array (_ BitVec 32) (_ BitVec 64))) (size!36126 (_ BitVec 32))) )
))
(declare-datatypes ((array!17718 0))(
  ( (array!17719 (arr!7904 (Array (_ BitVec 32) List!53486)) (size!36127 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!9718 0))(
  ( (LongMapFixedSize!9719 (defaultEntry!5273 Int) (mask!14574 (_ BitVec 32)) (extraKeys!5129 (_ BitVec 32)) (zeroValue!5142 List!53486) (minValue!5142 List!53486) (_size!9743 (_ BitVec 32)) (_keys!5194 array!17716) (_values!5167 array!17718) (_vacant!4924 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!19201 0))(
  ( (Cell!19202 (v!47408 LongMapFixedSize!9718)) )
))
(declare-datatypes ((MutLongMap!4859 0))(
  ( (LongMap!4859 (underlying!9925 Cell!19201)) (MutLongMapExt!4858 (__x!32326 Int)) )
))
(declare-datatypes ((Cell!19203 0))(
  ( (Cell!19204 (v!47409 MutLongMap!4859)) )
))
(declare-datatypes ((MutableMap!4743 0))(
  ( (MutableMapExt!4742 (__x!32327 Int)) (HashMap!4743 (underlying!9926 Cell!19203) (hashF!12330 Hashable!6520) (_size!9744 (_ BitVec 32)) (defaultValue!4914 Int)) )
))
(declare-datatypes ((BalanceConc!28486 0))(
  ( (BalanceConc!28487 (c!812124 Conc!14498)) )
))
(declare-datatypes ((CacheFindLongestMatch!684 0))(
  ( (CacheFindLongestMatch!685 (cache!4585 MutableMap!4743) (totalInput!4508 BalanceConc!28486)) )
))
(declare-fun thiss!28909 () CacheFindLongestMatch!684)

(declare-fun tp!1353471 () Bool)

(declare-fun tp!1353466 () Bool)

(declare-fun array_inv!5687 (array!17716) Bool)

(declare-fun array_inv!5688 (array!17718) Bool)

(assert (=> b!4760513 (= e!2970643 (and tp!1353463 tp!1353471 tp!1353466 (array_inv!5687 (_keys!5194 (v!47408 (underlying!9925 (v!47409 (underlying!9926 (cache!4585 thiss!28909))))))) (array_inv!5688 (_values!5167 (v!47408 (underlying!9925 (v!47409 (underlying!9926 (cache!4585 thiss!28909))))))) e!2970637))))

(declare-fun setElem!27193 () Context!5894)

(declare-fun setNonEmpty!27193 () Bool)

(declare-fun e!2970636 () Bool)

(declare-fun tp!1353470 () Bool)

(declare-fun setRes!27193 () Bool)

(declare-fun inv!68889 (Context!5894) Bool)

(assert (=> setNonEmpty!27193 (= setRes!27193 (and tp!1353470 (inv!68889 setElem!27193) e!2970636))))

(declare-fun z!482 () (InoxSet Context!5894))

(declare-fun setRest!27193 () (InoxSet Context!5894))

(assert (=> setNonEmpty!27193 (= z!482 ((_ map or) (store ((as const (Array Context!5894 Bool)) false) setElem!27193 true) setRest!27193))))

(declare-fun e!2970633 () Bool)

(declare-fun e!2970641 () Bool)

(assert (=> b!4760514 (= e!2970633 (and e!2970641 tp!1353465))))

(declare-fun b!4760515 () Bool)

(declare-fun tp!1353467 () Bool)

(declare-fun mapRes!21599 () Bool)

(assert (=> b!4760515 (= e!2970637 (and tp!1353467 mapRes!21599))))

(declare-fun condMapEmpty!21599 () Bool)

(declare-fun mapDefault!21599 () List!53486)

(assert (=> b!4760515 (= condMapEmpty!21599 (= (arr!7904 (_values!5167 (v!47408 (underlying!9925 (v!47409 (underlying!9926 (cache!4585 thiss!28909))))))) ((as const (Array (_ BitVec 32) List!53486)) mapDefault!21599)))))

(declare-fun mapNonEmpty!21599 () Bool)

(declare-fun tp!1353464 () Bool)

(declare-fun tp!1353472 () Bool)

(assert (=> mapNonEmpty!21599 (= mapRes!21599 (and tp!1353464 tp!1353472))))

(declare-fun mapValue!21599 () List!53486)

(declare-fun mapKey!21599 () (_ BitVec 32))

(declare-fun mapRest!21599 () (Array (_ BitVec 32) List!53486))

(assert (=> mapNonEmpty!21599 (= (arr!7904 (_values!5167 (v!47408 (underlying!9925 (v!47409 (underlying!9926 (cache!4585 thiss!28909))))))) (store mapRest!21599 mapKey!21599 mapValue!21599))))

(declare-fun b!4760517 () Bool)

(declare-fun e!2970635 () Bool)

(get-info :version)

(assert (=> b!4760517 (= e!2970635 ((_ is HashMap!4743) (cache!4585 thiss!28909)))))

(declare-fun b!4760518 () Bool)

(declare-fun tp!1353473 () Bool)

(assert (=> b!4760518 (= e!2970636 tp!1353473)))

(declare-fun b!4760519 () Bool)

(declare-fun e!2970642 () Bool)

(assert (=> b!4760519 (= e!2970642 e!2970643)))

(declare-fun e!2970634 () Bool)

(declare-fun b!4760520 () Bool)

(declare-fun e!2970639 () Bool)

(declare-fun inv!68890 (BalanceConc!28486) Bool)

(assert (=> b!4760520 (= e!2970634 (and e!2970633 (inv!68890 (totalInput!4508 thiss!28909)) e!2970639))))

(declare-fun mapIsEmpty!21599 () Bool)

(assert (=> mapIsEmpty!21599 mapRes!21599))

(declare-fun b!4760521 () Bool)

(declare-fun e!2970645 () Bool)

(assert (=> b!4760521 (= e!2970645 e!2970642)))

(declare-fun b!4760522 () Bool)

(declare-fun e!2970640 () Bool)

(declare-fun localTotalInput!8 () BalanceConc!28486)

(declare-fun tp!1353469 () Bool)

(declare-fun inv!68891 (Conc!14498) Bool)

(assert (=> b!4760522 (= e!2970640 (and (inv!68891 (c!812124 localTotalInput!8)) tp!1353469))))

(declare-fun res!2019120 () Bool)

(declare-fun e!2970638 () Bool)

(assert (=> start!486832 (=> (not res!2019120) (not e!2970638))))

(assert (=> start!486832 (= res!2019120 (= localTotalInput!8 (totalInput!4508 thiss!28909)))))

(assert (=> start!486832 e!2970638))

(assert (=> start!486832 (and (inv!68890 localTotalInput!8) e!2970640)))

(declare-fun inv!68892 (CacheFindLongestMatch!684) Bool)

(assert (=> start!486832 (and (inv!68892 thiss!28909) e!2970634)))

(declare-fun condSetEmpty!27193 () Bool)

(assert (=> start!486832 (= condSetEmpty!27193 (= z!482 ((as const (Array Context!5894 Bool)) false)))))

(assert (=> start!486832 setRes!27193))

(assert (=> start!486832 true))

(declare-fun b!4760516 () Bool)

(declare-fun lt!1924838 () MutLongMap!4859)

(assert (=> b!4760516 (= e!2970641 (and e!2970645 ((_ is LongMap!4859) lt!1924838)))))

(assert (=> b!4760516 (= lt!1924838 (v!47409 (underlying!9926 (cache!4585 thiss!28909))))))

(declare-fun b!4760523 () Bool)

(declare-fun res!2019122 () Bool)

(assert (=> b!4760523 (=> (not res!2019122) (not e!2970638))))

(declare-fun validCacheMapFindLongestMatch!139 (MutableMap!4743 BalanceConc!28486) Bool)

(assert (=> b!4760523 (= res!2019122 (validCacheMapFindLongestMatch!139 (cache!4585 thiss!28909) (totalInput!4508 thiss!28909)))))

(declare-fun setIsEmpty!27193 () Bool)

(assert (=> setIsEmpty!27193 setRes!27193))

(declare-fun b!4760524 () Bool)

(declare-fun tp!1353468 () Bool)

(assert (=> b!4760524 (= e!2970639 (and (inv!68891 (c!812124 (totalInput!4508 thiss!28909))) tp!1353468))))

(declare-fun b!4760525 () Bool)

(assert (=> b!4760525 (= e!2970638 (not e!2970635))))

(declare-fun res!2019121 () Bool)

(assert (=> b!4760525 (=> res!2019121 e!2970635)))

(declare-fun from!922 () Int)

(declare-fun contains!16666 (MutableMap!4743 tuple2!55300) Bool)

(assert (=> b!4760525 (= res!2019121 (not (contains!16666 (cache!4585 thiss!28909) (tuple2!55301 z!482 from!922))))))

(assert (=> b!4760525 (validCacheMapFindLongestMatch!139 (cache!4585 thiss!28909) localTotalInput!8)))

(assert (= (and start!486832 res!2019120) b!4760523))

(assert (= (and b!4760523 res!2019122) b!4760525))

(assert (= (and b!4760525 (not res!2019121)) b!4760517))

(assert (= start!486832 b!4760522))

(assert (= (and b!4760515 condMapEmpty!21599) mapIsEmpty!21599))

(assert (= (and b!4760515 (not condMapEmpty!21599)) mapNonEmpty!21599))

(assert (= b!4760513 b!4760515))

(assert (= b!4760519 b!4760513))

(assert (= b!4760521 b!4760519))

(assert (= (and b!4760516 ((_ is LongMap!4859) (v!47409 (underlying!9926 (cache!4585 thiss!28909))))) b!4760521))

(assert (= b!4760514 b!4760516))

(assert (= (and b!4760520 ((_ is HashMap!4743) (cache!4585 thiss!28909))) b!4760514))

(assert (= b!4760520 b!4760524))

(assert (= start!486832 b!4760520))

(assert (= (and start!486832 condSetEmpty!27193) setIsEmpty!27193))

(assert (= (and start!486832 (not condSetEmpty!27193)) setNonEmpty!27193))

(assert (= setNonEmpty!27193 b!4760518))

(declare-fun m!5729748 () Bool)

(assert (=> b!4760523 m!5729748))

(declare-fun m!5729750 () Bool)

(assert (=> b!4760525 m!5729750))

(declare-fun m!5729752 () Bool)

(assert (=> b!4760525 m!5729752))

(declare-fun m!5729754 () Bool)

(assert (=> b!4760524 m!5729754))

(declare-fun m!5729756 () Bool)

(assert (=> b!4760513 m!5729756))

(declare-fun m!5729758 () Bool)

(assert (=> b!4760513 m!5729758))

(declare-fun m!5729760 () Bool)

(assert (=> setNonEmpty!27193 m!5729760))

(declare-fun m!5729762 () Bool)

(assert (=> b!4760522 m!5729762))

(declare-fun m!5729764 () Bool)

(assert (=> start!486832 m!5729764))

(declare-fun m!5729766 () Bool)

(assert (=> start!486832 m!5729766))

(declare-fun m!5729768 () Bool)

(assert (=> mapNonEmpty!21599 m!5729768))

(declare-fun m!5729770 () Bool)

(assert (=> b!4760520 m!5729770))

(check-sat (not setNonEmpty!27193) b_and!340977 (not b!4760522) (not b!4760515) (not b!4760513) (not b!4760525) (not b_next!130057) (not start!486832) (not mapNonEmpty!21599) b_and!340975 (not b!4760524) (not b!4760523) (not b!4760520) (not b_next!130055) (not b!4760518))
(check-sat b_and!340975 b_and!340977 (not b_next!130057) (not b_next!130055))
(get-model)

(declare-fun b!4760531 () Bool)

(assert (=> b!4760531 true))

(declare-fun d!1521353 () Bool)

(declare-fun res!2019127 () Bool)

(declare-fun e!2970648 () Bool)

(assert (=> d!1521353 (=> (not res!2019127) (not e!2970648))))

(declare-fun valid!3855 (MutableMap!4743) Bool)

(assert (=> d!1521353 (= res!2019127 (valid!3855 (cache!4585 thiss!28909)))))

(assert (=> d!1521353 (= (validCacheMapFindLongestMatch!139 (cache!4585 thiss!28909) (totalInput!4508 thiss!28909)) e!2970648)))

(declare-fun b!4760530 () Bool)

(declare-fun res!2019128 () Bool)

(assert (=> b!4760530 (=> (not res!2019128) (not e!2970648))))

(declare-fun invariantList!1647 (List!53486) Bool)

(declare-datatypes ((ListMap!5715 0))(
  ( (ListMap!5716 (toList!6214 List!53486)) )
))
(declare-fun map!11873 (MutableMap!4743) ListMap!5715)

(assert (=> b!4760530 (= res!2019128 (invariantList!1647 (toList!6214 (map!11873 (cache!4585 thiss!28909)))))))

(declare-fun lambda!223760 () Int)

(declare-fun forall!11834 (List!53486 Int) Bool)

(assert (=> b!4760531 (= e!2970648 (forall!11834 (toList!6214 (map!11873 (cache!4585 thiss!28909))) lambda!223760))))

(assert (= (and d!1521353 res!2019127) b!4760530))

(assert (= (and b!4760530 res!2019128) b!4760531))

(declare-fun m!5729773 () Bool)

(assert (=> d!1521353 m!5729773))

(declare-fun m!5729775 () Bool)

(assert (=> b!4760530 m!5729775))

(declare-fun m!5729777 () Bool)

(assert (=> b!4760530 m!5729777))

(assert (=> b!4760531 m!5729775))

(declare-fun m!5729779 () Bool)

(assert (=> b!4760531 m!5729779))

(assert (=> b!4760523 d!1521353))

(declare-fun d!1521355 () Bool)

(declare-fun isBalanced!3910 (Conc!14498) Bool)

(assert (=> d!1521355 (= (inv!68890 (totalInput!4508 thiss!28909)) (isBalanced!3910 (c!812124 (totalInput!4508 thiss!28909))))))

(declare-fun bs!1147082 () Bool)

(assert (= bs!1147082 d!1521355))

(declare-fun m!5729781 () Bool)

(assert (=> bs!1147082 m!5729781))

(assert (=> b!4760520 d!1521355))

(declare-fun d!1521357 () Bool)

(declare-fun c!812127 () Bool)

(assert (=> d!1521357 (= c!812127 ((_ is Node!14498) (c!812124 (totalInput!4508 thiss!28909))))))

(declare-fun e!2970653 () Bool)

(assert (=> d!1521357 (= (inv!68891 (c!812124 (totalInput!4508 thiss!28909))) e!2970653)))

(declare-fun b!4760540 () Bool)

(declare-fun inv!68893 (Conc!14498) Bool)

(assert (=> b!4760540 (= e!2970653 (inv!68893 (c!812124 (totalInput!4508 thiss!28909))))))

(declare-fun b!4760541 () Bool)

(declare-fun e!2970654 () Bool)

(assert (=> b!4760541 (= e!2970653 e!2970654)))

(declare-fun res!2019131 () Bool)

(assert (=> b!4760541 (= res!2019131 (not ((_ is Leaf!23599) (c!812124 (totalInput!4508 thiss!28909)))))))

(assert (=> b!4760541 (=> res!2019131 e!2970654)))

(declare-fun b!4760542 () Bool)

(declare-fun inv!68894 (Conc!14498) Bool)

(assert (=> b!4760542 (= e!2970654 (inv!68894 (c!812124 (totalInput!4508 thiss!28909))))))

(assert (= (and d!1521357 c!812127) b!4760540))

(assert (= (and d!1521357 (not c!812127)) b!4760541))

(assert (= (and b!4760541 (not res!2019131)) b!4760542))

(declare-fun m!5729783 () Bool)

(assert (=> b!4760540 m!5729783))

(declare-fun m!5729785 () Bool)

(assert (=> b!4760542 m!5729785))

(assert (=> b!4760524 d!1521357))

(declare-fun d!1521359 () Bool)

(assert (=> d!1521359 (= (array_inv!5687 (_keys!5194 (v!47408 (underlying!9925 (v!47409 (underlying!9926 (cache!4585 thiss!28909))))))) (bvsge (size!36126 (_keys!5194 (v!47408 (underlying!9925 (v!47409 (underlying!9926 (cache!4585 thiss!28909))))))) #b00000000000000000000000000000000))))

(assert (=> b!4760513 d!1521359))

(declare-fun d!1521361 () Bool)

(assert (=> d!1521361 (= (array_inv!5688 (_values!5167 (v!47408 (underlying!9925 (v!47409 (underlying!9926 (cache!4585 thiss!28909))))))) (bvsge (size!36127 (_values!5167 (v!47408 (underlying!9925 (v!47409 (underlying!9926 (cache!4585 thiss!28909))))))) #b00000000000000000000000000000000))))

(assert (=> b!4760513 d!1521361))

(declare-fun lt!1924895 () Bool)

(declare-fun d!1521363 () Bool)

(declare-fun contains!16667 (ListMap!5715 tuple2!55300) Bool)

(assert (=> d!1521363 (= lt!1924895 (contains!16667 (map!11873 (cache!4585 thiss!28909)) (tuple2!55301 z!482 from!922)))))

(declare-fun e!2970675 () Bool)

(assert (=> d!1521363 (= lt!1924895 e!2970675)))

(declare-fun res!2019138 () Bool)

(assert (=> d!1521363 (=> (not res!2019138) (not e!2970675))))

(declare-fun lt!1924880 () (_ BitVec 64))

(declare-fun contains!16668 (MutLongMap!4859 (_ BitVec 64)) Bool)

(assert (=> d!1521363 (= res!2019138 (contains!16668 (v!47409 (underlying!9926 (cache!4585 thiss!28909))) lt!1924880))))

(declare-datatypes ((Unit!137820 0))(
  ( (Unit!137821) )
))
(declare-fun lt!1924891 () Unit!137820)

(declare-fun e!2970674 () Unit!137820)

(assert (=> d!1521363 (= lt!1924891 e!2970674)))

(declare-fun c!812137 () Bool)

(declare-datatypes ((tuple2!55304 0))(
  ( (tuple2!55305 (_1!30946 (_ BitVec 64)) (_2!30946 List!53486)) )
))
(declare-datatypes ((List!53488 0))(
  ( (Nil!53364) (Cons!53364 (h!59775 tuple2!55304) (t!360848 List!53488)) )
))
(declare-fun extractMap!2119 (List!53488) ListMap!5715)

(declare-datatypes ((ListLongMap!4607 0))(
  ( (ListLongMap!4608 (toList!6215 List!53488)) )
))
(declare-fun map!11874 (MutLongMap!4859) ListLongMap!4607)

(assert (=> d!1521363 (= c!812137 (contains!16667 (extractMap!2119 (toList!6215 (map!11874 (v!47409 (underlying!9926 (cache!4585 thiss!28909)))))) (tuple2!55301 z!482 from!922)))))

(declare-fun lt!1924890 () Unit!137820)

(declare-fun e!2970670 () Unit!137820)

(assert (=> d!1521363 (= lt!1924890 e!2970670)))

(declare-fun c!812136 () Bool)

(assert (=> d!1521363 (= c!812136 (contains!16668 (v!47409 (underlying!9926 (cache!4585 thiss!28909))) lt!1924880))))

(declare-fun hash!4520 (Hashable!6520 tuple2!55300) (_ BitVec 64))

(assert (=> d!1521363 (= lt!1924880 (hash!4520 (hashF!12330 (cache!4585 thiss!28909)) (tuple2!55301 z!482 from!922)))))

(assert (=> d!1521363 (valid!3855 (cache!4585 thiss!28909))))

(assert (=> d!1521363 (= (contains!16666 (cache!4585 thiss!28909) (tuple2!55301 z!482 from!922)) lt!1924895)))

(declare-fun bm!333737 () Bool)

(declare-fun call!333746 () (_ BitVec 64))

(assert (=> bm!333737 (= call!333746 (hash!4520 (hashF!12330 (cache!4585 thiss!28909)) (tuple2!55301 z!482 from!922)))))

(declare-fun bm!333738 () Bool)

(declare-fun lt!1924898 () ListLongMap!4607)

(declare-fun call!333743 () ListLongMap!4607)

(declare-fun call!333744 () List!53486)

(declare-fun apply!12538 (ListLongMap!4607 (_ BitVec 64)) List!53486)

(assert (=> bm!333738 (= call!333744 (apply!12538 (ite c!812137 lt!1924898 call!333743) call!333746))))

(declare-fun b!4760565 () Bool)

(declare-datatypes ((Option!12602 0))(
  ( (None!12601) (Some!12601 (v!47410 tuple2!55302)) )
))
(declare-fun isDefined!9780 (Option!12602) Bool)

(declare-fun getPair!619 (List!53486 tuple2!55300) Option!12602)

(declare-fun apply!12539 (MutLongMap!4859 (_ BitVec 64)) List!53486)

(assert (=> b!4760565 (= e!2970675 (isDefined!9780 (getPair!619 (apply!12539 (v!47409 (underlying!9926 (cache!4585 thiss!28909))) lt!1924880) (tuple2!55301 z!482 from!922))))))

(declare-fun bm!333739 () Bool)

(declare-fun call!333742 () Bool)

(declare-fun call!333747 () Option!12602)

(assert (=> bm!333739 (= call!333742 (isDefined!9780 call!333747))))

(declare-fun b!4760566 () Bool)

(declare-fun e!2970671 () Unit!137820)

(declare-fun Unit!137822 () Unit!137820)

(assert (=> b!4760566 (= e!2970671 Unit!137822)))

(declare-fun b!4760567 () Bool)

(declare-fun Unit!137823 () Unit!137820)

(assert (=> b!4760567 (= e!2970670 Unit!137823)))

(declare-fun b!4760568 () Bool)

(assert (=> b!4760568 (= e!2970674 e!2970671)))

(declare-fun res!2019139 () Bool)

(declare-fun call!333745 () Bool)

(assert (=> b!4760568 (= res!2019139 call!333745)))

(declare-fun e!2970669 () Bool)

(assert (=> b!4760568 (=> (not res!2019139) (not e!2970669))))

(declare-fun c!812139 () Bool)

(assert (=> b!4760568 (= c!812139 e!2970669)))

(declare-fun bm!333740 () Bool)

(assert (=> bm!333740 (= call!333743 (map!11874 (v!47409 (underlying!9926 (cache!4585 thiss!28909)))))))

(declare-fun b!4760569 () Bool)

(declare-fun lt!1924892 () Unit!137820)

(assert (=> b!4760569 (= e!2970674 lt!1924892)))

(assert (=> b!4760569 (= lt!1924898 call!333743)))

(declare-fun lemmaInGenericMapThenInLongMap!183 (ListLongMap!4607 tuple2!55300 Hashable!6520) Unit!137820)

(assert (=> b!4760569 (= lt!1924892 (lemmaInGenericMapThenInLongMap!183 lt!1924898 (tuple2!55301 z!482 from!922) (hashF!12330 (cache!4585 thiss!28909))))))

(declare-fun res!2019140 () Bool)

(assert (=> b!4760569 (= res!2019140 call!333745)))

(declare-fun e!2970673 () Bool)

(assert (=> b!4760569 (=> (not res!2019140) (not e!2970673))))

(assert (=> b!4760569 e!2970673))

(declare-fun b!4760570 () Bool)

(assert (=> b!4760570 (= e!2970673 call!333742)))

(declare-fun bm!333741 () Bool)

(declare-fun contains!16669 (ListLongMap!4607 (_ BitVec 64)) Bool)

(assert (=> bm!333741 (= call!333745 (contains!16669 (ite c!812137 lt!1924898 call!333743) call!333746))))

(declare-fun b!4760571 () Bool)

(assert (=> b!4760571 false))

(declare-fun lt!1924896 () Unit!137820)

(declare-fun lt!1924884 () Unit!137820)

(assert (=> b!4760571 (= lt!1924896 lt!1924884)))

(declare-fun lt!1924879 () ListLongMap!4607)

(assert (=> b!4760571 (contains!16667 (extractMap!2119 (toList!6215 lt!1924879)) (tuple2!55301 z!482 from!922))))

(declare-fun lemmaInLongMapThenInGenericMap!183 (ListLongMap!4607 tuple2!55300 Hashable!6520) Unit!137820)

(assert (=> b!4760571 (= lt!1924884 (lemmaInLongMapThenInGenericMap!183 lt!1924879 (tuple2!55301 z!482 from!922) (hashF!12330 (cache!4585 thiss!28909))))))

(assert (=> b!4760571 (= lt!1924879 call!333743)))

(declare-fun Unit!137824 () Unit!137820)

(assert (=> b!4760571 (= e!2970671 Unit!137824)))

(declare-fun lambda!223763 () Int)

(declare-fun b!4760572 () Bool)

(declare-fun forallContained!3829 (List!53488 Int tuple2!55304) Unit!137820)

(assert (=> b!4760572 (= e!2970670 (forallContained!3829 (toList!6215 (map!11874 (v!47409 (underlying!9926 (cache!4585 thiss!28909))))) lambda!223763 (tuple2!55305 lt!1924880 (apply!12539 (v!47409 (underlying!9926 (cache!4585 thiss!28909))) lt!1924880))))))

(declare-fun c!812138 () Bool)

(declare-fun contains!16670 (List!53488 tuple2!55304) Bool)

(assert (=> b!4760572 (= c!812138 (not (contains!16670 (toList!6215 (map!11874 (v!47409 (underlying!9926 (cache!4585 thiss!28909))))) (tuple2!55305 lt!1924880 (apply!12539 (v!47409 (underlying!9926 (cache!4585 thiss!28909))) lt!1924880)))))))

(declare-fun lt!1924882 () Unit!137820)

(declare-fun e!2970672 () Unit!137820)

(assert (=> b!4760572 (= lt!1924882 e!2970672)))

(declare-fun bm!333742 () Bool)

(assert (=> bm!333742 (= call!333747 (getPair!619 call!333744 (tuple2!55301 z!482 from!922)))))

(declare-fun b!4760573 () Bool)

(assert (=> b!4760573 false))

(declare-fun lt!1924897 () Unit!137820)

(declare-fun lt!1924889 () Unit!137820)

(assert (=> b!4760573 (= lt!1924897 lt!1924889)))

(declare-fun lt!1924886 () List!53488)

(declare-fun lt!1924883 () List!53486)

(assert (=> b!4760573 (contains!16670 lt!1924886 (tuple2!55305 lt!1924880 lt!1924883))))

(declare-fun lemmaGetValueByKeyImpliesContainsTuple!897 (List!53488 (_ BitVec 64) List!53486) Unit!137820)

(assert (=> b!4760573 (= lt!1924889 (lemmaGetValueByKeyImpliesContainsTuple!897 lt!1924886 lt!1924880 lt!1924883))))

(assert (=> b!4760573 (= lt!1924883 (apply!12539 (v!47409 (underlying!9926 (cache!4585 thiss!28909))) lt!1924880))))

(assert (=> b!4760573 (= lt!1924886 (toList!6215 (map!11874 (v!47409 (underlying!9926 (cache!4585 thiss!28909))))))))

(declare-fun lt!1924887 () Unit!137820)

(declare-fun lt!1924885 () Unit!137820)

(assert (=> b!4760573 (= lt!1924887 lt!1924885)))

(declare-fun lt!1924888 () List!53488)

(declare-datatypes ((Option!12603 0))(
  ( (None!12602) (Some!12602 (v!47411 List!53486)) )
))
(declare-fun isDefined!9781 (Option!12603) Bool)

(declare-fun getValueByKey!2136 (List!53488 (_ BitVec 64)) Option!12603)

(assert (=> b!4760573 (isDefined!9781 (getValueByKey!2136 lt!1924888 lt!1924880))))

(declare-fun lemmaContainsKeyImpliesGetValueByKeyDefined!1955 (List!53488 (_ BitVec 64)) Unit!137820)

(assert (=> b!4760573 (= lt!1924885 (lemmaContainsKeyImpliesGetValueByKeyDefined!1955 lt!1924888 lt!1924880))))

(assert (=> b!4760573 (= lt!1924888 (toList!6215 (map!11874 (v!47409 (underlying!9926 (cache!4585 thiss!28909))))))))

(declare-fun lt!1924893 () Unit!137820)

(declare-fun lt!1924881 () Unit!137820)

(assert (=> b!4760573 (= lt!1924893 lt!1924881)))

(declare-fun lt!1924894 () List!53488)

(declare-fun containsKey!3638 (List!53488 (_ BitVec 64)) Bool)

(assert (=> b!4760573 (containsKey!3638 lt!1924894 lt!1924880)))

(declare-fun lemmaGetValueByKeyIsDefinedImpliesContainsKey!184 (List!53488 (_ BitVec 64)) Unit!137820)

(assert (=> b!4760573 (= lt!1924881 (lemmaGetValueByKeyIsDefinedImpliesContainsKey!184 lt!1924894 lt!1924880))))

(assert (=> b!4760573 (= lt!1924894 (toList!6215 (map!11874 (v!47409 (underlying!9926 (cache!4585 thiss!28909))))))))

(declare-fun Unit!137825 () Unit!137820)

(assert (=> b!4760573 (= e!2970672 Unit!137825)))

(declare-fun b!4760574 () Bool)

(assert (=> b!4760574 (= e!2970669 call!333742)))

(declare-fun b!4760575 () Bool)

(declare-fun Unit!137826 () Unit!137820)

(assert (=> b!4760575 (= e!2970672 Unit!137826)))

(assert (= (and d!1521363 c!812136) b!4760572))

(assert (= (and d!1521363 (not c!812136)) b!4760567))

(assert (= (and b!4760572 c!812138) b!4760573))

(assert (= (and b!4760572 (not c!812138)) b!4760575))

(assert (= (and d!1521363 c!812137) b!4760569))

(assert (= (and d!1521363 (not c!812137)) b!4760568))

(assert (= (and b!4760569 res!2019140) b!4760570))

(assert (= (and b!4760568 res!2019139) b!4760574))

(assert (= (and b!4760568 c!812139) b!4760571))

(assert (= (and b!4760568 (not c!812139)) b!4760566))

(assert (= (or b!4760569 b!4760568 b!4760574 b!4760571) bm!333740))

(assert (= (or b!4760569 b!4760570 b!4760568 b!4760574) bm!333737))

(assert (= (or b!4760570 b!4760574) bm!333738))

(assert (= (or b!4760569 b!4760568) bm!333741))

(assert (= (or b!4760570 b!4760574) bm!333742))

(assert (= (or b!4760570 b!4760574) bm!333739))

(assert (= (and d!1521363 res!2019138) b!4760565))

(declare-fun m!5729787 () Bool)

(assert (=> bm!333737 m!5729787))

(declare-fun m!5729789 () Bool)

(assert (=> b!4760572 m!5729789))

(declare-fun m!5729791 () Bool)

(assert (=> b!4760572 m!5729791))

(declare-fun m!5729793 () Bool)

(assert (=> b!4760572 m!5729793))

(declare-fun m!5729795 () Bool)

(assert (=> b!4760572 m!5729795))

(assert (=> b!4760565 m!5729791))

(assert (=> b!4760565 m!5729791))

(declare-fun m!5729797 () Bool)

(assert (=> b!4760565 m!5729797))

(assert (=> b!4760565 m!5729797))

(declare-fun m!5729799 () Bool)

(assert (=> b!4760565 m!5729799))

(declare-fun m!5729801 () Bool)

(assert (=> bm!333741 m!5729801))

(declare-fun m!5729803 () Bool)

(assert (=> bm!333739 m!5729803))

(assert (=> bm!333740 m!5729789))

(declare-fun m!5729805 () Bool)

(assert (=> b!4760573 m!5729805))

(assert (=> b!4760573 m!5729805))

(declare-fun m!5729807 () Bool)

(assert (=> b!4760573 m!5729807))

(declare-fun m!5729809 () Bool)

(assert (=> b!4760573 m!5729809))

(assert (=> b!4760573 m!5729789))

(declare-fun m!5729811 () Bool)

(assert (=> b!4760573 m!5729811))

(assert (=> b!4760573 m!5729791))

(declare-fun m!5729813 () Bool)

(assert (=> b!4760573 m!5729813))

(declare-fun m!5729815 () Bool)

(assert (=> b!4760573 m!5729815))

(declare-fun m!5729817 () Bool)

(assert (=> b!4760573 m!5729817))

(declare-fun m!5729819 () Bool)

(assert (=> b!4760571 m!5729819))

(assert (=> b!4760571 m!5729819))

(declare-fun m!5729821 () Bool)

(assert (=> b!4760571 m!5729821))

(declare-fun m!5729823 () Bool)

(assert (=> b!4760571 m!5729823))

(assert (=> d!1521363 m!5729775))

(declare-fun m!5729825 () Bool)

(assert (=> d!1521363 m!5729825))

(declare-fun m!5729827 () Bool)

(assert (=> d!1521363 m!5729827))

(assert (=> d!1521363 m!5729775))

(assert (=> d!1521363 m!5729787))

(declare-fun m!5729829 () Bool)

(assert (=> d!1521363 m!5729829))

(declare-fun m!5729831 () Bool)

(assert (=> d!1521363 m!5729831))

(assert (=> d!1521363 m!5729829))

(assert (=> d!1521363 m!5729773))

(assert (=> d!1521363 m!5729789))

(declare-fun m!5729833 () Bool)

(assert (=> bm!333742 m!5729833))

(declare-fun m!5729835 () Bool)

(assert (=> bm!333738 m!5729835))

(declare-fun m!5729837 () Bool)

(assert (=> b!4760569 m!5729837))

(assert (=> b!4760525 d!1521363))

(declare-fun bs!1147083 () Bool)

(declare-fun b!4760577 () Bool)

(assert (= bs!1147083 (and b!4760577 b!4760531)))

(declare-fun lambda!223764 () Int)

(assert (=> bs!1147083 (= (= localTotalInput!8 (totalInput!4508 thiss!28909)) (= lambda!223764 lambda!223760))))

(assert (=> b!4760577 true))

(declare-fun d!1521365 () Bool)

(declare-fun res!2019141 () Bool)

(declare-fun e!2970676 () Bool)

(assert (=> d!1521365 (=> (not res!2019141) (not e!2970676))))

(assert (=> d!1521365 (= res!2019141 (valid!3855 (cache!4585 thiss!28909)))))

(assert (=> d!1521365 (= (validCacheMapFindLongestMatch!139 (cache!4585 thiss!28909) localTotalInput!8) e!2970676)))

(declare-fun b!4760576 () Bool)

(declare-fun res!2019142 () Bool)

(assert (=> b!4760576 (=> (not res!2019142) (not e!2970676))))

(assert (=> b!4760576 (= res!2019142 (invariantList!1647 (toList!6214 (map!11873 (cache!4585 thiss!28909)))))))

(assert (=> b!4760577 (= e!2970676 (forall!11834 (toList!6214 (map!11873 (cache!4585 thiss!28909))) lambda!223764))))

(assert (= (and d!1521365 res!2019141) b!4760576))

(assert (= (and b!4760576 res!2019142) b!4760577))

(assert (=> d!1521365 m!5729773))

(assert (=> b!4760576 m!5729775))

(assert (=> b!4760576 m!5729777))

(assert (=> b!4760577 m!5729775))

(declare-fun m!5729839 () Bool)

(assert (=> b!4760577 m!5729839))

(assert (=> b!4760525 d!1521365))

(declare-fun d!1521367 () Bool)

(assert (=> d!1521367 (= (inv!68890 localTotalInput!8) (isBalanced!3910 (c!812124 localTotalInput!8)))))

(declare-fun bs!1147084 () Bool)

(assert (= bs!1147084 d!1521367))

(declare-fun m!5729841 () Bool)

(assert (=> bs!1147084 m!5729841))

(assert (=> start!486832 d!1521367))

(declare-fun d!1521369 () Bool)

(declare-fun res!2019145 () Bool)

(declare-fun e!2970679 () Bool)

(assert (=> d!1521369 (=> (not res!2019145) (not e!2970679))))

(assert (=> d!1521369 (= res!2019145 ((_ is HashMap!4743) (cache!4585 thiss!28909)))))

(assert (=> d!1521369 (= (inv!68892 thiss!28909) e!2970679)))

(declare-fun b!4760580 () Bool)

(assert (=> b!4760580 (= e!2970679 (validCacheMapFindLongestMatch!139 (cache!4585 thiss!28909) (totalInput!4508 thiss!28909)))))

(assert (= (and d!1521369 res!2019145) b!4760580))

(assert (=> b!4760580 m!5729748))

(assert (=> start!486832 d!1521369))

(declare-fun d!1521371 () Bool)

(declare-fun lambda!223767 () Int)

(declare-fun forall!11835 (List!53485 Int) Bool)

(assert (=> d!1521371 (= (inv!68889 setElem!27193) (forall!11835 (exprs!3447 setElem!27193) lambda!223767))))

(declare-fun bs!1147085 () Bool)

(assert (= bs!1147085 d!1521371))

(declare-fun m!5729843 () Bool)

(assert (=> bs!1147085 m!5729843))

(assert (=> setNonEmpty!27193 d!1521371))

(declare-fun d!1521373 () Bool)

(declare-fun c!812140 () Bool)

(assert (=> d!1521373 (= c!812140 ((_ is Node!14498) (c!812124 localTotalInput!8)))))

(declare-fun e!2970680 () Bool)

(assert (=> d!1521373 (= (inv!68891 (c!812124 localTotalInput!8)) e!2970680)))

(declare-fun b!4760581 () Bool)

(assert (=> b!4760581 (= e!2970680 (inv!68893 (c!812124 localTotalInput!8)))))

(declare-fun b!4760582 () Bool)

(declare-fun e!2970681 () Bool)

(assert (=> b!4760582 (= e!2970680 e!2970681)))

(declare-fun res!2019146 () Bool)

(assert (=> b!4760582 (= res!2019146 (not ((_ is Leaf!23599) (c!812124 localTotalInput!8))))))

(assert (=> b!4760582 (=> res!2019146 e!2970681)))

(declare-fun b!4760583 () Bool)

(assert (=> b!4760583 (= e!2970681 (inv!68894 (c!812124 localTotalInput!8)))))

(assert (= (and d!1521373 c!812140) b!4760581))

(assert (= (and d!1521373 (not c!812140)) b!4760582))

(assert (= (and b!4760582 (not res!2019146)) b!4760583))

(declare-fun m!5729845 () Bool)

(assert (=> b!4760581 m!5729845))

(declare-fun m!5729847 () Bool)

(assert (=> b!4760583 m!5729847))

(assert (=> b!4760522 d!1521373))

(declare-fun b!4760591 () Bool)

(declare-fun e!2970687 () Bool)

(declare-fun tp!1353480 () Bool)

(assert (=> b!4760591 (= e!2970687 tp!1353480)))

(declare-fun setNonEmpty!27196 () Bool)

(declare-fun setElem!27196 () Context!5894)

(declare-fun tp!1353482 () Bool)

(declare-fun setRes!27196 () Bool)

(assert (=> setNonEmpty!27196 (= setRes!27196 (and tp!1353482 (inv!68889 setElem!27196) e!2970687))))

(declare-fun setRest!27196 () (InoxSet Context!5894))

(assert (=> setNonEmpty!27196 (= (_1!30944 (_1!30945 (h!59773 mapDefault!21599))) ((_ map or) (store ((as const (Array Context!5894 Bool)) false) setElem!27196 true) setRest!27196))))

(declare-fun b!4760590 () Bool)

(declare-fun e!2970686 () Bool)

(declare-fun tp!1353481 () Bool)

(assert (=> b!4760590 (= e!2970686 (and setRes!27196 tp!1353481))))

(declare-fun condSetEmpty!27196 () Bool)

(assert (=> b!4760590 (= condSetEmpty!27196 (= (_1!30944 (_1!30945 (h!59773 mapDefault!21599))) ((as const (Array Context!5894 Bool)) false)))))

(assert (=> b!4760515 (= tp!1353467 e!2970686)))

(declare-fun setIsEmpty!27196 () Bool)

(assert (=> setIsEmpty!27196 setRes!27196))

(assert (= (and b!4760590 condSetEmpty!27196) setIsEmpty!27196))

(assert (= (and b!4760590 (not condSetEmpty!27196)) setNonEmpty!27196))

(assert (= setNonEmpty!27196 b!4760591))

(assert (= (and b!4760515 ((_ is Cons!53362) mapDefault!21599)) b!4760590))

(declare-fun m!5729849 () Bool)

(assert (=> setNonEmpty!27196 m!5729849))

(declare-fun setIsEmpty!27201 () Bool)

(declare-fun setRes!27201 () Bool)

(assert (=> setIsEmpty!27201 setRes!27201))

(declare-fun b!4760602 () Bool)

(declare-fun e!2970696 () Bool)

(declare-fun tp!1353497 () Bool)

(assert (=> b!4760602 (= e!2970696 (and setRes!27201 tp!1353497))))

(declare-fun condSetEmpty!27202 () Bool)

(declare-fun mapValue!21602 () List!53486)

(assert (=> b!4760602 (= condSetEmpty!27202 (= (_1!30944 (_1!30945 (h!59773 mapValue!21602))) ((as const (Array Context!5894 Bool)) false)))))

(declare-fun setIsEmpty!27202 () Bool)

(declare-fun setRes!27202 () Bool)

(assert (=> setIsEmpty!27202 setRes!27202))

(declare-fun setElem!27202 () Context!5894)

(declare-fun setNonEmpty!27201 () Bool)

(declare-fun e!2970698 () Bool)

(declare-fun tp!1353503 () Bool)

(assert (=> setNonEmpty!27201 (= setRes!27201 (and tp!1353503 (inv!68889 setElem!27202) e!2970698))))

(declare-fun setRest!27201 () (InoxSet Context!5894))

(assert (=> setNonEmpty!27201 (= (_1!30944 (_1!30945 (h!59773 mapValue!21602))) ((_ map or) (store ((as const (Array Context!5894 Bool)) false) setElem!27202 true) setRest!27201))))

(declare-fun mapIsEmpty!21602 () Bool)

(declare-fun mapRes!21602 () Bool)

(assert (=> mapIsEmpty!21602 mapRes!21602))

(declare-fun b!4760603 () Bool)

(declare-fun e!2970699 () Bool)

(declare-fun tp!1353502 () Bool)

(assert (=> b!4760603 (= e!2970699 (and setRes!27202 tp!1353502))))

(declare-fun condSetEmpty!27201 () Bool)

(declare-fun mapDefault!21602 () List!53486)

(assert (=> b!4760603 (= condSetEmpty!27201 (= (_1!30944 (_1!30945 (h!59773 mapDefault!21602))) ((as const (Array Context!5894 Bool)) false)))))

(declare-fun condMapEmpty!21602 () Bool)

(assert (=> mapNonEmpty!21599 (= condMapEmpty!21602 (= mapRest!21599 ((as const (Array (_ BitVec 32) List!53486)) mapDefault!21602)))))

(assert (=> mapNonEmpty!21599 (= tp!1353464 (and e!2970699 mapRes!21602))))

(declare-fun b!4760604 () Bool)

(declare-fun tp!1353499 () Bool)

(assert (=> b!4760604 (= e!2970698 tp!1353499)))

(declare-fun mapNonEmpty!21602 () Bool)

(declare-fun tp!1353498 () Bool)

(assert (=> mapNonEmpty!21602 (= mapRes!21602 (and tp!1353498 e!2970696))))

(declare-fun mapRest!21602 () (Array (_ BitVec 32) List!53486))

(declare-fun mapKey!21602 () (_ BitVec 32))

(assert (=> mapNonEmpty!21602 (= mapRest!21599 (store mapRest!21602 mapKey!21602 mapValue!21602))))

(declare-fun b!4760605 () Bool)

(declare-fun e!2970697 () Bool)

(declare-fun tp!1353500 () Bool)

(assert (=> b!4760605 (= e!2970697 tp!1353500)))

(declare-fun setNonEmpty!27202 () Bool)

(declare-fun setElem!27201 () Context!5894)

(declare-fun tp!1353501 () Bool)

(assert (=> setNonEmpty!27202 (= setRes!27202 (and tp!1353501 (inv!68889 setElem!27201) e!2970697))))

(declare-fun setRest!27202 () (InoxSet Context!5894))

(assert (=> setNonEmpty!27202 (= (_1!30944 (_1!30945 (h!59773 mapDefault!21602))) ((_ map or) (store ((as const (Array Context!5894 Bool)) false) setElem!27201 true) setRest!27202))))

(assert (= (and mapNonEmpty!21599 condMapEmpty!21602) mapIsEmpty!21602))

(assert (= (and mapNonEmpty!21599 (not condMapEmpty!21602)) mapNonEmpty!21602))

(assert (= (and b!4760602 condSetEmpty!27202) setIsEmpty!27201))

(assert (= (and b!4760602 (not condSetEmpty!27202)) setNonEmpty!27201))

(assert (= setNonEmpty!27201 b!4760604))

(assert (= (and mapNonEmpty!21602 ((_ is Cons!53362) mapValue!21602)) b!4760602))

(assert (= (and b!4760603 condSetEmpty!27201) setIsEmpty!27202))

(assert (= (and b!4760603 (not condSetEmpty!27201)) setNonEmpty!27202))

(assert (= setNonEmpty!27202 b!4760605))

(assert (= (and mapNonEmpty!21599 ((_ is Cons!53362) mapDefault!21602)) b!4760603))

(declare-fun m!5729851 () Bool)

(assert (=> setNonEmpty!27201 m!5729851))

(declare-fun m!5729853 () Bool)

(assert (=> mapNonEmpty!21602 m!5729853))

(declare-fun m!5729855 () Bool)

(assert (=> setNonEmpty!27202 m!5729855))

(declare-fun b!4760607 () Bool)

(declare-fun e!2970701 () Bool)

(declare-fun tp!1353504 () Bool)

(assert (=> b!4760607 (= e!2970701 tp!1353504)))

(declare-fun tp!1353506 () Bool)

(declare-fun setRes!27203 () Bool)

(declare-fun setElem!27203 () Context!5894)

(declare-fun setNonEmpty!27203 () Bool)

(assert (=> setNonEmpty!27203 (= setRes!27203 (and tp!1353506 (inv!68889 setElem!27203) e!2970701))))

(declare-fun setRest!27203 () (InoxSet Context!5894))

(assert (=> setNonEmpty!27203 (= (_1!30944 (_1!30945 (h!59773 mapValue!21599))) ((_ map or) (store ((as const (Array Context!5894 Bool)) false) setElem!27203 true) setRest!27203))))

(declare-fun b!4760606 () Bool)

(declare-fun e!2970700 () Bool)

(declare-fun tp!1353505 () Bool)

(assert (=> b!4760606 (= e!2970700 (and setRes!27203 tp!1353505))))

(declare-fun condSetEmpty!27203 () Bool)

(assert (=> b!4760606 (= condSetEmpty!27203 (= (_1!30944 (_1!30945 (h!59773 mapValue!21599))) ((as const (Array Context!5894 Bool)) false)))))

(assert (=> mapNonEmpty!21599 (= tp!1353472 e!2970700)))

(declare-fun setIsEmpty!27203 () Bool)

(assert (=> setIsEmpty!27203 setRes!27203))

(assert (= (and b!4760606 condSetEmpty!27203) setIsEmpty!27203))

(assert (= (and b!4760606 (not condSetEmpty!27203)) setNonEmpty!27203))

(assert (= setNonEmpty!27203 b!4760607))

(assert (= (and mapNonEmpty!21599 ((_ is Cons!53362) mapValue!21599)) b!4760606))

(declare-fun m!5729857 () Bool)

(assert (=> setNonEmpty!27203 m!5729857))

(declare-fun tp!1353515 () Bool)

(declare-fun e!2970706 () Bool)

(declare-fun b!4760616 () Bool)

(declare-fun tp!1353514 () Bool)

(assert (=> b!4760616 (= e!2970706 (and (inv!68891 (left!39140 (c!812124 (totalInput!4508 thiss!28909)))) tp!1353514 (inv!68891 (right!39470 (c!812124 (totalInput!4508 thiss!28909)))) tp!1353515))))

(declare-fun b!4760618 () Bool)

(declare-fun e!2970707 () Bool)

(declare-fun tp!1353513 () Bool)

(assert (=> b!4760618 (= e!2970707 tp!1353513)))

(declare-fun b!4760617 () Bool)

(declare-fun inv!68895 (IArray!29057) Bool)

(assert (=> b!4760617 (= e!2970706 (and (inv!68895 (xs!17804 (c!812124 (totalInput!4508 thiss!28909)))) e!2970707))))

(assert (=> b!4760524 (= tp!1353468 (and (inv!68891 (c!812124 (totalInput!4508 thiss!28909))) e!2970706))))

(assert (= (and b!4760524 ((_ is Node!14498) (c!812124 (totalInput!4508 thiss!28909)))) b!4760616))

(assert (= b!4760617 b!4760618))

(assert (= (and b!4760524 ((_ is Leaf!23599) (c!812124 (totalInput!4508 thiss!28909)))) b!4760617))

(declare-fun m!5729859 () Bool)

(assert (=> b!4760616 m!5729859))

(declare-fun m!5729861 () Bool)

(assert (=> b!4760616 m!5729861))

(declare-fun m!5729863 () Bool)

(assert (=> b!4760617 m!5729863))

(assert (=> b!4760524 m!5729754))

(declare-fun b!4760620 () Bool)

(declare-fun e!2970709 () Bool)

(declare-fun tp!1353516 () Bool)

(assert (=> b!4760620 (= e!2970709 tp!1353516)))

(declare-fun setRes!27204 () Bool)

(declare-fun tp!1353518 () Bool)

(declare-fun setNonEmpty!27204 () Bool)

(declare-fun setElem!27204 () Context!5894)

(assert (=> setNonEmpty!27204 (= setRes!27204 (and tp!1353518 (inv!68889 setElem!27204) e!2970709))))

(declare-fun setRest!27204 () (InoxSet Context!5894))

(assert (=> setNonEmpty!27204 (= (_1!30944 (_1!30945 (h!59773 (zeroValue!5142 (v!47408 (underlying!9925 (v!47409 (underlying!9926 (cache!4585 thiss!28909))))))))) ((_ map or) (store ((as const (Array Context!5894 Bool)) false) setElem!27204 true) setRest!27204))))

(declare-fun b!4760619 () Bool)

(declare-fun e!2970708 () Bool)

(declare-fun tp!1353517 () Bool)

(assert (=> b!4760619 (= e!2970708 (and setRes!27204 tp!1353517))))

(declare-fun condSetEmpty!27204 () Bool)

(assert (=> b!4760619 (= condSetEmpty!27204 (= (_1!30944 (_1!30945 (h!59773 (zeroValue!5142 (v!47408 (underlying!9925 (v!47409 (underlying!9926 (cache!4585 thiss!28909))))))))) ((as const (Array Context!5894 Bool)) false)))))

(assert (=> b!4760513 (= tp!1353471 e!2970708)))

(declare-fun setIsEmpty!27204 () Bool)

(assert (=> setIsEmpty!27204 setRes!27204))

(assert (= (and b!4760619 condSetEmpty!27204) setIsEmpty!27204))

(assert (= (and b!4760619 (not condSetEmpty!27204)) setNonEmpty!27204))

(assert (= setNonEmpty!27204 b!4760620))

(assert (= (and b!4760513 ((_ is Cons!53362) (zeroValue!5142 (v!47408 (underlying!9925 (v!47409 (underlying!9926 (cache!4585 thiss!28909)))))))) b!4760619))

(declare-fun m!5729865 () Bool)

(assert (=> setNonEmpty!27204 m!5729865))

(declare-fun b!4760622 () Bool)

(declare-fun e!2970711 () Bool)

(declare-fun tp!1353519 () Bool)

(assert (=> b!4760622 (= e!2970711 tp!1353519)))

(declare-fun setNonEmpty!27205 () Bool)

(declare-fun setElem!27205 () Context!5894)

(declare-fun setRes!27205 () Bool)

(declare-fun tp!1353521 () Bool)

(assert (=> setNonEmpty!27205 (= setRes!27205 (and tp!1353521 (inv!68889 setElem!27205) e!2970711))))

(declare-fun setRest!27205 () (InoxSet Context!5894))

(assert (=> setNonEmpty!27205 (= (_1!30944 (_1!30945 (h!59773 (minValue!5142 (v!47408 (underlying!9925 (v!47409 (underlying!9926 (cache!4585 thiss!28909))))))))) ((_ map or) (store ((as const (Array Context!5894 Bool)) false) setElem!27205 true) setRest!27205))))

(declare-fun b!4760621 () Bool)

(declare-fun e!2970710 () Bool)

(declare-fun tp!1353520 () Bool)

(assert (=> b!4760621 (= e!2970710 (and setRes!27205 tp!1353520))))

(declare-fun condSetEmpty!27205 () Bool)

(assert (=> b!4760621 (= condSetEmpty!27205 (= (_1!30944 (_1!30945 (h!59773 (minValue!5142 (v!47408 (underlying!9925 (v!47409 (underlying!9926 (cache!4585 thiss!28909))))))))) ((as const (Array Context!5894 Bool)) false)))))

(assert (=> b!4760513 (= tp!1353466 e!2970710)))

(declare-fun setIsEmpty!27205 () Bool)

(assert (=> setIsEmpty!27205 setRes!27205))

(assert (= (and b!4760621 condSetEmpty!27205) setIsEmpty!27205))

(assert (= (and b!4760621 (not condSetEmpty!27205)) setNonEmpty!27205))

(assert (= setNonEmpty!27205 b!4760622))

(assert (= (and b!4760513 ((_ is Cons!53362) (minValue!5142 (v!47408 (underlying!9925 (v!47409 (underlying!9926 (cache!4585 thiss!28909)))))))) b!4760621))

(declare-fun m!5729867 () Bool)

(assert (=> setNonEmpty!27205 m!5729867))

(declare-fun condSetEmpty!27208 () Bool)

(assert (=> setNonEmpty!27193 (= condSetEmpty!27208 (= setRest!27193 ((as const (Array Context!5894 Bool)) false)))))

(declare-fun setRes!27208 () Bool)

(assert (=> setNonEmpty!27193 (= tp!1353470 setRes!27208)))

(declare-fun setIsEmpty!27208 () Bool)

(assert (=> setIsEmpty!27208 setRes!27208))

(declare-fun setNonEmpty!27208 () Bool)

(declare-fun tp!1353526 () Bool)

(declare-fun setElem!27208 () Context!5894)

(declare-fun e!2970714 () Bool)

(assert (=> setNonEmpty!27208 (= setRes!27208 (and tp!1353526 (inv!68889 setElem!27208) e!2970714))))

(declare-fun setRest!27208 () (InoxSet Context!5894))

(assert (=> setNonEmpty!27208 (= setRest!27193 ((_ map or) (store ((as const (Array Context!5894 Bool)) false) setElem!27208 true) setRest!27208))))

(declare-fun b!4760627 () Bool)

(declare-fun tp!1353527 () Bool)

(assert (=> b!4760627 (= e!2970714 tp!1353527)))

(assert (= (and setNonEmpty!27193 condSetEmpty!27208) setIsEmpty!27208))

(assert (= (and setNonEmpty!27193 (not condSetEmpty!27208)) setNonEmpty!27208))

(assert (= setNonEmpty!27208 b!4760627))

(declare-fun m!5729869 () Bool)

(assert (=> setNonEmpty!27208 m!5729869))

(declare-fun tp!1353530 () Bool)

(declare-fun e!2970715 () Bool)

(declare-fun tp!1353529 () Bool)

(declare-fun b!4760628 () Bool)

(assert (=> b!4760628 (= e!2970715 (and (inv!68891 (left!39140 (c!812124 localTotalInput!8))) tp!1353529 (inv!68891 (right!39470 (c!812124 localTotalInput!8))) tp!1353530))))

(declare-fun b!4760630 () Bool)

(declare-fun e!2970716 () Bool)

(declare-fun tp!1353528 () Bool)

(assert (=> b!4760630 (= e!2970716 tp!1353528)))

(declare-fun b!4760629 () Bool)

(assert (=> b!4760629 (= e!2970715 (and (inv!68895 (xs!17804 (c!812124 localTotalInput!8))) e!2970716))))

(assert (=> b!4760522 (= tp!1353469 (and (inv!68891 (c!812124 localTotalInput!8)) e!2970715))))

(assert (= (and b!4760522 ((_ is Node!14498) (c!812124 localTotalInput!8))) b!4760628))

(assert (= b!4760629 b!4760630))

(assert (= (and b!4760522 ((_ is Leaf!23599) (c!812124 localTotalInput!8))) b!4760629))

(declare-fun m!5729871 () Bool)

(assert (=> b!4760628 m!5729871))

(declare-fun m!5729873 () Bool)

(assert (=> b!4760628 m!5729873))

(declare-fun m!5729875 () Bool)

(assert (=> b!4760629 m!5729875))

(assert (=> b!4760522 m!5729762))

(declare-fun b!4760635 () Bool)

(declare-fun e!2970719 () Bool)

(declare-fun tp!1353535 () Bool)

(declare-fun tp!1353536 () Bool)

(assert (=> b!4760635 (= e!2970719 (and tp!1353535 tp!1353536))))

(assert (=> b!4760518 (= tp!1353473 e!2970719)))

(assert (= (and b!4760518 ((_ is Cons!53361) (exprs!3447 setElem!27193))) b!4760635))

(check-sat (not b!4760530) (not b!4760605) (not b!4760522) (not b!4760580) (not setNonEmpty!27204) (not b!4760630) (not bm!333740) (not d!1521363) (not d!1521353) (not d!1521365) (not b!4760524) (not d!1521371) (not b!4760635) b_and!340977 (not b!4760565) (not b!4760540) (not b!4760573) (not b!4760591) (not b!4760571) (not bm!333738) (not b!4760542) (not b!4760622) (not b!4760620) (not b!4760569) (not d!1521367) (not b!4760604) (not setNonEmpty!27196) (not setNonEmpty!27205) (not b!4760576) (not b!4760628) (not bm!333742) (not setNonEmpty!27208) (not b!4760590) (not setNonEmpty!27202) (not bm!333739) (not bm!333737) (not bm!333741) (not b!4760531) (not b!4760629) (not b_next!130057) (not b!4760572) (not b!4760618) (not setNonEmpty!27203) (not b!4760616) (not setNonEmpty!27201) (not d!1521355) (not b!4760627) (not b!4760581) (not b!4760617) (not b!4760607) (not b!4760583) (not b!4760621) (not b_next!130055) (not b!4760603) (not b!4760602) (not b!4760619) (not b!4760606) (not b!4760577) b_and!340975 (not mapNonEmpty!21602))
(check-sat b_and!340975 b_and!340977 (not b_next!130057) (not b_next!130055))
