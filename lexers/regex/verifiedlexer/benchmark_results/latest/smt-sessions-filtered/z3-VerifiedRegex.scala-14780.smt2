; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!759504 () Bool)

(assert start!759504)

(declare-fun res!3188482 () Bool)

(declare-fun e!4749576 () Bool)

(assert (=> start!759504 (=> (not res!3188482) (not e!4749576))))

(declare-datatypes ((K!23033 0))(
  ( (K!23034 (val!33099 Int)) )
))
(declare-datatypes ((B!4509 0))(
  ( (B!4510 (val!33100 Int)) )
))
(declare-datatypes ((tuple2!71064 0))(
  ( (tuple2!71065 (_1!38835 K!23033) (_2!38835 B!4509)) )
))
(declare-datatypes ((List!75791 0))(
  ( (Nil!75665) (Cons!75665 (h!82113 tuple2!71064) (t!391563 List!75791)) )
))
(declare-fun lt!2732745 () List!75791)

(declare-fun keyValue!4 () tuple2!71064)

(declare-datatypes ((ListMap!7431 0))(
  ( (ListMap!7432 (toList!11990 List!75791)) )
))
(declare-fun contains!21335 (ListMap!7431 K!23033) Bool)

(assert (=> start!759504 (= res!3188482 (contains!21335 (ListMap!7432 lt!2732745) (_1!38835 keyValue!4)))))

(declare-datatypes ((Option!18033 0))(
  ( (None!18032) (Some!18032 (v!55391 B!4509)) )
))
(declare-fun getValueByKey!2817 (List!75791 K!23033) Option!18033)

(assert (=> start!759504 (= (getValueByKey!2817 lt!2732745 (_1!38835 keyValue!4)) (Some!18032 (_2!38835 keyValue!4)))))

(declare-datatypes ((Unit!172778 0))(
  ( (Unit!172779) )
))
(declare-fun lt!2732746 () Unit!172778)

(declare-fun lemmaContainsTupThenGetReturnValue!1310 (List!75791 K!23033 B!4509) Unit!172778)

(assert (=> start!759504 (= lt!2732746 (lemmaContainsTupThenGetReturnValue!1310 lt!2732745 (_1!38835 keyValue!4) (_2!38835 keyValue!4)))))

(declare-fun thiss!41857 () ListMap!7431)

(declare-fun insertNoDuplicatedKeys!822 (List!75791 K!23033 B!4509) List!75791)

(assert (=> start!759504 (= lt!2732745 (insertNoDuplicatedKeys!822 (toList!11990 thiss!41857) (_1!38835 keyValue!4) (_2!38835 keyValue!4)))))

(assert (=> start!759504 (not e!4749576)))

(declare-fun e!4749575 () Bool)

(declare-fun inv!97504 (ListMap!7431) Bool)

(assert (=> start!759504 (and (inv!97504 thiss!41857) e!4749575)))

(declare-fun tp_is_empty!55243 () Bool)

(declare-fun tp_is_empty!55245 () Bool)

(assert (=> start!759504 (and tp_is_empty!55243 tp_is_empty!55245)))

(declare-fun b!8059440 () Bool)

(declare-fun contains!21336 (List!75791 tuple2!71064) Bool)

(assert (=> b!8059440 (= e!4749576 (contains!21336 lt!2732745 keyValue!4))))

(declare-fun b!8059441 () Bool)

(declare-fun tp!2414400 () Bool)

(assert (=> b!8059441 (= e!4749575 tp!2414400)))

(assert (= (and start!759504 res!3188482) b!8059440))

(assert (= start!759504 b!8059441))

(declare-fun m!8412684 () Bool)

(assert (=> start!759504 m!8412684))

(declare-fun m!8412686 () Bool)

(assert (=> start!759504 m!8412686))

(declare-fun m!8412688 () Bool)

(assert (=> start!759504 m!8412688))

(declare-fun m!8412690 () Bool)

(assert (=> start!759504 m!8412690))

(declare-fun m!8412692 () Bool)

(assert (=> start!759504 m!8412692))

(declare-fun m!8412694 () Bool)

(assert (=> b!8059440 m!8412694))

(check-sat (not start!759504) tp_is_empty!55245 (not b!8059440) (not b!8059441) tp_is_empty!55243)
(check-sat)
(get-model)

(declare-fun d!2399361 () Bool)

(declare-fun lt!2732752 () Bool)

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!16141 (List!75791) (InoxSet tuple2!71064))

(assert (=> d!2399361 (= lt!2732752 (select (content!16141 lt!2732745) keyValue!4))))

(declare-fun e!4749588 () Bool)

(assert (=> d!2399361 (= lt!2732752 e!4749588)))

(declare-fun res!3188494 () Bool)

(assert (=> d!2399361 (=> (not res!3188494) (not e!4749588))))

(get-info :version)

(assert (=> d!2399361 (= res!3188494 ((_ is Cons!75665) lt!2732745))))

(assert (=> d!2399361 (= (contains!21336 lt!2732745 keyValue!4) lt!2732752)))

(declare-fun b!8059452 () Bool)

(declare-fun e!4749587 () Bool)

(assert (=> b!8059452 (= e!4749588 e!4749587)))

(declare-fun res!3188493 () Bool)

(assert (=> b!8059452 (=> res!3188493 e!4749587)))

(assert (=> b!8059452 (= res!3188493 (= (h!82113 lt!2732745) keyValue!4))))

(declare-fun b!8059453 () Bool)

(assert (=> b!8059453 (= e!4749587 (contains!21336 (t!391563 lt!2732745) keyValue!4))))

(assert (= (and d!2399361 res!3188494) b!8059452))

(assert (= (and b!8059452 (not res!3188493)) b!8059453))

(declare-fun m!8412702 () Bool)

(assert (=> d!2399361 m!8412702))

(declare-fun m!8412704 () Bool)

(assert (=> d!2399361 m!8412704))

(declare-fun m!8412706 () Bool)

(assert (=> b!8059453 m!8412706))

(assert (=> b!8059440 d!2399361))

(declare-fun d!2399365 () Bool)

(assert (=> d!2399365 (= (getValueByKey!2817 lt!2732745 (_1!38835 keyValue!4)) (Some!18032 (_2!38835 keyValue!4)))))

(declare-fun lt!2732758 () Unit!172778)

(declare-fun choose!60588 (List!75791 K!23033 B!4509) Unit!172778)

(assert (=> d!2399365 (= lt!2732758 (choose!60588 lt!2732745 (_1!38835 keyValue!4) (_2!38835 keyValue!4)))))

(declare-fun e!4749598 () Bool)

(assert (=> d!2399365 e!4749598))

(declare-fun res!3188505 () Bool)

(assert (=> d!2399365 (=> (not res!3188505) (not e!4749598))))

(declare-fun invariantList!1979 (List!75791) Bool)

(assert (=> d!2399365 (= res!3188505 (invariantList!1979 lt!2732745))))

(assert (=> d!2399365 (= (lemmaContainsTupThenGetReturnValue!1310 lt!2732745 (_1!38835 keyValue!4) (_2!38835 keyValue!4)) lt!2732758)))

(declare-fun b!8059472 () Bool)

(declare-fun res!3188506 () Bool)

(assert (=> b!8059472 (=> (not res!3188506) (not e!4749598))))

(declare-fun containsKey!4943 (List!75791 K!23033) Bool)

(assert (=> b!8059472 (= res!3188506 (containsKey!4943 lt!2732745 (_1!38835 keyValue!4)))))

(declare-fun b!8059473 () Bool)

(assert (=> b!8059473 (= e!4749598 (contains!21336 lt!2732745 (tuple2!71065 (_1!38835 keyValue!4) (_2!38835 keyValue!4))))))

(assert (= (and d!2399365 res!3188505) b!8059472))

(assert (= (and b!8059472 res!3188506) b!8059473))

(assert (=> d!2399365 m!8412688))

(declare-fun m!8412716 () Bool)

(assert (=> d!2399365 m!8412716))

(declare-fun m!8412718 () Bool)

(assert (=> d!2399365 m!8412718))

(declare-fun m!8412720 () Bool)

(assert (=> b!8059472 m!8412720))

(declare-fun m!8412722 () Bool)

(assert (=> b!8059473 m!8412722))

(assert (=> start!759504 d!2399365))

(declare-fun b!8059514 () Bool)

(declare-fun e!4749626 () Unit!172778)

(declare-fun lt!2732793 () Unit!172778)

(assert (=> b!8059514 (= e!4749626 lt!2732793)))

(declare-fun lt!2732794 () Unit!172778)

(declare-fun lemmaContainsKeyImpliesGetValueByKeyDefined!2582 (List!75791 K!23033) Unit!172778)

(assert (=> b!8059514 (= lt!2732794 (lemmaContainsKeyImpliesGetValueByKeyDefined!2582 (toList!11990 (ListMap!7432 lt!2732745)) (_1!38835 keyValue!4)))))

(declare-fun isDefined!14560 (Option!18033) Bool)

(assert (=> b!8059514 (isDefined!14560 (getValueByKey!2817 (toList!11990 (ListMap!7432 lt!2732745)) (_1!38835 keyValue!4)))))

(declare-fun lt!2732798 () Unit!172778)

(assert (=> b!8059514 (= lt!2732798 lt!2732794)))

(declare-fun lemmaInListThenGetKeysListContains!1269 (List!75791 K!23033) Unit!172778)

(assert (=> b!8059514 (= lt!2732793 (lemmaInListThenGetKeysListContains!1269 (toList!11990 (ListMap!7432 lt!2732745)) (_1!38835 keyValue!4)))))

(declare-fun call!747744 () Bool)

(assert (=> b!8059514 call!747744))

(declare-fun b!8059515 () Bool)

(assert (=> b!8059515 false))

(declare-fun lt!2732796 () Unit!172778)

(declare-fun lt!2732791 () Unit!172778)

(assert (=> b!8059515 (= lt!2732796 lt!2732791)))

(assert (=> b!8059515 (containsKey!4943 (toList!11990 (ListMap!7432 lt!2732745)) (_1!38835 keyValue!4))))

(declare-fun lemmaInGetKeysListThenContainsKey!1274 (List!75791 K!23033) Unit!172778)

(assert (=> b!8059515 (= lt!2732791 (lemmaInGetKeysListThenContainsKey!1274 (toList!11990 (ListMap!7432 lt!2732745)) (_1!38835 keyValue!4)))))

(declare-fun e!4749625 () Unit!172778)

(declare-fun Unit!172782 () Unit!172778)

(assert (=> b!8059515 (= e!4749625 Unit!172782)))

(declare-fun d!2399369 () Bool)

(declare-fun e!4749630 () Bool)

(assert (=> d!2399369 e!4749630))

(declare-fun res!3188520 () Bool)

(assert (=> d!2399369 (=> res!3188520 e!4749630)))

(declare-fun e!4749627 () Bool)

(assert (=> d!2399369 (= res!3188520 e!4749627)))

(declare-fun res!3188521 () Bool)

(assert (=> d!2399369 (=> (not res!3188521) (not e!4749627))))

(declare-fun lt!2732795 () Bool)

(assert (=> d!2399369 (= res!3188521 (not lt!2732795))))

(declare-fun lt!2732797 () Bool)

(assert (=> d!2399369 (= lt!2732795 lt!2732797)))

(declare-fun lt!2732792 () Unit!172778)

(assert (=> d!2399369 (= lt!2732792 e!4749626)))

(declare-fun c!1476933 () Bool)

(assert (=> d!2399369 (= c!1476933 lt!2732797)))

(assert (=> d!2399369 (= lt!2732797 (containsKey!4943 (toList!11990 (ListMap!7432 lt!2732745)) (_1!38835 keyValue!4)))))

(assert (=> d!2399369 (= (contains!21335 (ListMap!7432 lt!2732745) (_1!38835 keyValue!4)) lt!2732795)))

(declare-fun b!8059516 () Bool)

(declare-datatypes ((List!75793 0))(
  ( (Nil!75667) (Cons!75667 (h!82115 K!23033) (t!391565 List!75793)) )
))
(declare-fun e!4749628 () List!75793)

(declare-fun getKeysList!1274 (List!75791) List!75793)

(assert (=> b!8059516 (= e!4749628 (getKeysList!1274 (toList!11990 (ListMap!7432 lt!2732745))))))

(declare-fun b!8059517 () Bool)

(declare-fun e!4749629 () Bool)

(assert (=> b!8059517 (= e!4749630 e!4749629)))

(declare-fun res!3188519 () Bool)

(assert (=> b!8059517 (=> (not res!3188519) (not e!4749629))))

(assert (=> b!8059517 (= res!3188519 (isDefined!14560 (getValueByKey!2817 (toList!11990 (ListMap!7432 lt!2732745)) (_1!38835 keyValue!4))))))

(declare-fun b!8059518 () Bool)

(declare-fun keys!30953 (ListMap!7431) List!75793)

(assert (=> b!8059518 (= e!4749628 (keys!30953 (ListMap!7432 lt!2732745)))))

(declare-fun bm!747739 () Bool)

(declare-fun contains!21338 (List!75793 K!23033) Bool)

(assert (=> bm!747739 (= call!747744 (contains!21338 e!4749628 (_1!38835 keyValue!4)))))

(declare-fun c!1476934 () Bool)

(assert (=> bm!747739 (= c!1476934 c!1476933)))

(declare-fun b!8059519 () Bool)

(assert (=> b!8059519 (= e!4749629 (contains!21338 (keys!30953 (ListMap!7432 lt!2732745)) (_1!38835 keyValue!4)))))

(declare-fun b!8059520 () Bool)

(assert (=> b!8059520 (= e!4749626 e!4749625)))

(declare-fun c!1476932 () Bool)

(assert (=> b!8059520 (= c!1476932 call!747744)))

(declare-fun b!8059521 () Bool)

(assert (=> b!8059521 (= e!4749627 (not (contains!21338 (keys!30953 (ListMap!7432 lt!2732745)) (_1!38835 keyValue!4))))))

(declare-fun b!8059522 () Bool)

(declare-fun Unit!172783 () Unit!172778)

(assert (=> b!8059522 (= e!4749625 Unit!172783)))

(assert (= (and d!2399369 c!1476933) b!8059514))

(assert (= (and d!2399369 (not c!1476933)) b!8059520))

(assert (= (and b!8059520 c!1476932) b!8059515))

(assert (= (and b!8059520 (not c!1476932)) b!8059522))

(assert (= (or b!8059514 b!8059520) bm!747739))

(assert (= (and bm!747739 c!1476934) b!8059516))

(assert (= (and bm!747739 (not c!1476934)) b!8059518))

(assert (= (and d!2399369 res!3188521) b!8059521))

(assert (= (and d!2399369 (not res!3188520)) b!8059517))

(assert (= (and b!8059517 res!3188519) b!8059519))

(declare-fun m!8412728 () Bool)

(assert (=> b!8059517 m!8412728))

(assert (=> b!8059517 m!8412728))

(declare-fun m!8412730 () Bool)

(assert (=> b!8059517 m!8412730))

(declare-fun m!8412732 () Bool)

(assert (=> b!8059519 m!8412732))

(assert (=> b!8059519 m!8412732))

(declare-fun m!8412734 () Bool)

(assert (=> b!8059519 m!8412734))

(declare-fun m!8412736 () Bool)

(assert (=> b!8059515 m!8412736))

(declare-fun m!8412738 () Bool)

(assert (=> b!8059515 m!8412738))

(assert (=> b!8059521 m!8412732))

(assert (=> b!8059521 m!8412732))

(assert (=> b!8059521 m!8412734))

(declare-fun m!8412740 () Bool)

(assert (=> b!8059516 m!8412740))

(assert (=> d!2399369 m!8412736))

(declare-fun m!8412742 () Bool)

(assert (=> b!8059514 m!8412742))

(assert (=> b!8059514 m!8412728))

(assert (=> b!8059514 m!8412728))

(assert (=> b!8059514 m!8412730))

(declare-fun m!8412744 () Bool)

(assert (=> b!8059514 m!8412744))

(declare-fun m!8412746 () Bool)

(assert (=> bm!747739 m!8412746))

(assert (=> b!8059518 m!8412732))

(assert (=> start!759504 d!2399369))

(declare-fun b!8059607 () Bool)

(declare-fun e!4749677 () Bool)

(assert (=> b!8059607 (= e!4749677 (not (containsKey!4943 (toList!11990 thiss!41857) (_1!38835 keyValue!4))))))

(declare-fun b!8059608 () Bool)

(declare-fun e!4749675 () List!75791)

(declare-fun e!4749681 () List!75791)

(assert (=> b!8059608 (= e!4749675 e!4749681)))

(declare-fun res!3188548 () Bool)

(assert (=> b!8059608 (= res!3188548 ((_ is Cons!75665) (toList!11990 thiss!41857)))))

(assert (=> b!8059608 (=> (not res!3188548) (not e!4749677))))

(declare-fun c!1476964 () Bool)

(assert (=> b!8059608 (= c!1476964 e!4749677)))

(declare-fun bm!747761 () Bool)

(declare-fun call!747767 () List!75791)

(declare-fun call!747766 () List!75791)

(assert (=> bm!747761 (= call!747767 call!747766)))

(declare-fun c!1476966 () Bool)

(declare-fun c!1476965 () Bool)

(assert (=> bm!747761 (= c!1476966 c!1476965)))

(declare-fun b!8059609 () Bool)

(declare-fun e!4749678 () Unit!172778)

(declare-fun Unit!172785 () Unit!172778)

(assert (=> b!8059609 (= e!4749678 Unit!172785)))

(declare-fun b!8059610 () Bool)

(assert (=> b!8059610 false))

(declare-fun lt!2732868 () Unit!172778)

(declare-fun lt!2732869 () Unit!172778)

(assert (=> b!8059610 (= lt!2732868 lt!2732869)))

(assert (=> b!8059610 (containsKey!4943 (t!391563 (toList!11990 thiss!41857)) (_1!38835 (h!82113 (toList!11990 thiss!41857))))))

(assert (=> b!8059610 (= lt!2732869 (lemmaInGetKeysListThenContainsKey!1274 (t!391563 (toList!11990 thiss!41857)) (_1!38835 (h!82113 (toList!11990 thiss!41857)))))))

(declare-fun lt!2732862 () Unit!172778)

(declare-fun lt!2732864 () Unit!172778)

(assert (=> b!8059610 (= lt!2732862 lt!2732864)))

(declare-fun call!747768 () List!75793)

(assert (=> b!8059610 (contains!21338 call!747768 (_1!38835 (h!82113 (toList!11990 thiss!41857))))))

(declare-fun lt!2732872 () List!75791)

(assert (=> b!8059610 (= lt!2732864 (lemmaInListThenGetKeysListContains!1269 lt!2732872 (_1!38835 (h!82113 (toList!11990 thiss!41857)))))))

(assert (=> b!8059610 (= lt!2732872 (insertNoDuplicatedKeys!822 (t!391563 (toList!11990 thiss!41857)) (_1!38835 keyValue!4) (_2!38835 keyValue!4)))))

(declare-fun Unit!172787 () Unit!172778)

(assert (=> b!8059610 (= e!4749678 Unit!172787)))

(declare-fun b!8059611 () Bool)

(declare-fun call!747769 () List!75791)

(assert (=> b!8059611 (= e!4749675 call!747769)))

(declare-fun lt!2732863 () List!75793)

(assert (=> b!8059611 (= lt!2732863 call!747768)))

(declare-fun lt!2732866 () Unit!172778)

(declare-fun lemmaSubseqRefl!212 (List!75793) Unit!172778)

(assert (=> b!8059611 (= lt!2732866 (lemmaSubseqRefl!212 lt!2732863))))

(declare-fun subseq!934 (List!75793 List!75793) Bool)

(assert (=> b!8059611 (subseq!934 lt!2732863 lt!2732863)))

(declare-fun lt!2732871 () Unit!172778)

(assert (=> b!8059611 (= lt!2732871 lt!2732866)))

(declare-fun b!8059612 () Bool)

(declare-fun res!3188546 () Bool)

(declare-fun e!4749680 () Bool)

(assert (=> b!8059612 (=> (not res!3188546) (not e!4749680))))

(declare-fun lt!2732865 () List!75791)

(assert (=> b!8059612 (= res!3188546 (contains!21336 lt!2732865 (tuple2!71065 (_1!38835 keyValue!4) (_2!38835 keyValue!4))))))

(declare-fun b!8059613 () Bool)

(declare-fun e!4749676 () List!75791)

(assert (=> b!8059613 (= e!4749676 call!747767)))

(declare-fun d!2399375 () Bool)

(assert (=> d!2399375 e!4749680))

(declare-fun res!3188545 () Bool)

(assert (=> d!2399375 (=> (not res!3188545) (not e!4749680))))

(assert (=> d!2399375 (= res!3188545 (invariantList!1979 lt!2732865))))

(assert (=> d!2399375 (= lt!2732865 e!4749675)))

(declare-fun c!1476963 () Bool)

(assert (=> d!2399375 (= c!1476963 (and ((_ is Cons!75665) (toList!11990 thiss!41857)) (= (_1!38835 (h!82113 (toList!11990 thiss!41857))) (_1!38835 keyValue!4))))))

(assert (=> d!2399375 (invariantList!1979 (toList!11990 thiss!41857))))

(assert (=> d!2399375 (= (insertNoDuplicatedKeys!822 (toList!11990 thiss!41857) (_1!38835 keyValue!4) (_2!38835 keyValue!4)) lt!2732865)))

(declare-fun b!8059614 () Bool)

(declare-fun res!3188547 () Bool)

(assert (=> b!8059614 (=> (not res!3188547) (not e!4749680))))

(assert (=> b!8059614 (= res!3188547 (containsKey!4943 lt!2732865 (_1!38835 keyValue!4)))))

(declare-fun b!8059615 () Bool)

(declare-fun lt!2732870 () List!75791)

(assert (=> b!8059615 (= e!4749676 lt!2732870)))

(assert (=> b!8059615 (= lt!2732870 call!747767)))

(declare-fun c!1476967 () Bool)

(assert (=> b!8059615 (= c!1476967 (containsKey!4943 (insertNoDuplicatedKeys!822 (t!391563 (toList!11990 thiss!41857)) (_1!38835 keyValue!4) (_2!38835 keyValue!4)) (_1!38835 (h!82113 (toList!11990 thiss!41857)))))))

(declare-fun lt!2732867 () Unit!172778)

(assert (=> b!8059615 (= lt!2732867 e!4749678)))

(declare-fun b!8059616 () Bool)

(assert (=> b!8059616 (= c!1476965 ((_ is Cons!75665) (toList!11990 thiss!41857)))))

(assert (=> b!8059616 (= e!4749681 e!4749676)))

(declare-fun b!8059617 () Bool)

(assert (=> b!8059617 (= e!4749681 call!747766)))

(declare-fun bm!747762 () Bool)

(assert (=> bm!747762 (= call!747768 (getKeysList!1274 (ite c!1476963 (toList!11990 thiss!41857) lt!2732872)))))

(declare-fun b!8059618 () Bool)

(declare-fun e!4749679 () List!75791)

(assert (=> b!8059618 (= e!4749679 (insertNoDuplicatedKeys!822 (t!391563 (toList!11990 thiss!41857)) (_1!38835 keyValue!4) (_2!38835 keyValue!4)))))

(declare-fun bm!747763 () Bool)

(assert (=> bm!747763 (= call!747766 call!747769)))

(declare-fun b!8059619 () Bool)

(declare-fun content!16143 (List!75793) (InoxSet K!23033))

(assert (=> b!8059619 (= e!4749680 (= (content!16143 (getKeysList!1274 lt!2732865)) ((_ map or) (content!16143 (getKeysList!1274 (toList!11990 thiss!41857))) (store ((as const (Array K!23033 Bool)) false) (_1!38835 keyValue!4) true))))))

(declare-fun b!8059620 () Bool)

(assert (=> b!8059620 (= e!4749679 Nil!75665)))

(declare-fun bm!747764 () Bool)

(declare-fun $colon$colon!3435 (List!75791 tuple2!71064) List!75791)

(assert (=> bm!747764 (= call!747769 ($colon$colon!3435 (ite c!1476963 (t!391563 (toList!11990 thiss!41857)) (ite c!1476964 (toList!11990 thiss!41857) e!4749679)) (ite (or c!1476963 c!1476964) (tuple2!71065 (_1!38835 keyValue!4) (_2!38835 keyValue!4)) (ite c!1476965 (h!82113 (toList!11990 thiss!41857)) (tuple2!71065 (_1!38835 keyValue!4) (_2!38835 keyValue!4))))))))

(assert (= (and d!2399375 c!1476963) b!8059611))

(assert (= (and d!2399375 (not c!1476963)) b!8059608))

(assert (= (and b!8059608 res!3188548) b!8059607))

(assert (= (and b!8059608 c!1476964) b!8059617))

(assert (= (and b!8059608 (not c!1476964)) b!8059616))

(assert (= (and b!8059616 c!1476965) b!8059615))

(assert (= (and b!8059616 (not c!1476965)) b!8059613))

(assert (= (and b!8059615 c!1476967) b!8059610))

(assert (= (and b!8059615 (not c!1476967)) b!8059609))

(assert (= (or b!8059615 b!8059613) bm!747761))

(assert (= (and bm!747761 c!1476966) b!8059618))

(assert (= (and bm!747761 (not c!1476966)) b!8059620))

(assert (= (or b!8059617 bm!747761) bm!747763))

(assert (= (or b!8059611 b!8059610) bm!747762))

(assert (= (or b!8059611 bm!747763) bm!747764))

(assert (= (and d!2399375 res!3188545) b!8059614))

(assert (= (and b!8059614 res!3188547) b!8059612))

(assert (= (and b!8059612 res!3188546) b!8059619))

(declare-fun m!8412806 () Bool)

(assert (=> b!8059611 m!8412806))

(declare-fun m!8412808 () Bool)

(assert (=> b!8059611 m!8412808))

(declare-fun m!8412810 () Bool)

(assert (=> b!8059607 m!8412810))

(declare-fun m!8412812 () Bool)

(assert (=> bm!747762 m!8412812))

(declare-fun m!8412814 () Bool)

(assert (=> d!2399375 m!8412814))

(declare-fun m!8412816 () Bool)

(assert (=> d!2399375 m!8412816))

(declare-fun m!8412818 () Bool)

(assert (=> b!8059612 m!8412818))

(declare-fun m!8412820 () Bool)

(assert (=> b!8059619 m!8412820))

(declare-fun m!8412822 () Bool)

(assert (=> b!8059619 m!8412822))

(declare-fun m!8412824 () Bool)

(assert (=> b!8059619 m!8412824))

(declare-fun m!8412826 () Bool)

(assert (=> b!8059619 m!8412826))

(declare-fun m!8412828 () Bool)

(assert (=> b!8059619 m!8412828))

(assert (=> b!8059619 m!8412824))

(assert (=> b!8059619 m!8412820))

(declare-fun m!8412830 () Bool)

(assert (=> b!8059610 m!8412830))

(declare-fun m!8412832 () Bool)

(assert (=> b!8059610 m!8412832))

(declare-fun m!8412834 () Bool)

(assert (=> b!8059610 m!8412834))

(declare-fun m!8412836 () Bool)

(assert (=> b!8059610 m!8412836))

(declare-fun m!8412838 () Bool)

(assert (=> b!8059610 m!8412838))

(declare-fun m!8412840 () Bool)

(assert (=> bm!747764 m!8412840))

(declare-fun m!8412842 () Bool)

(assert (=> b!8059614 m!8412842))

(assert (=> b!8059615 m!8412832))

(assert (=> b!8059615 m!8412832))

(declare-fun m!8412844 () Bool)

(assert (=> b!8059615 m!8412844))

(assert (=> b!8059618 m!8412832))

(assert (=> start!759504 d!2399375))

(declare-fun b!8059632 () Bool)

(declare-fun e!4749687 () Option!18033)

(assert (=> b!8059632 (= e!4749687 None!18032)))

(declare-fun d!2399379 () Bool)

(declare-fun c!1476972 () Bool)

(assert (=> d!2399379 (= c!1476972 (and ((_ is Cons!75665) lt!2732745) (= (_1!38835 (h!82113 lt!2732745)) (_1!38835 keyValue!4))))))

(declare-fun e!4749686 () Option!18033)

(assert (=> d!2399379 (= (getValueByKey!2817 lt!2732745 (_1!38835 keyValue!4)) e!4749686)))

(declare-fun b!8059630 () Bool)

(assert (=> b!8059630 (= e!4749686 e!4749687)))

(declare-fun c!1476973 () Bool)

(assert (=> b!8059630 (= c!1476973 (and ((_ is Cons!75665) lt!2732745) (not (= (_1!38835 (h!82113 lt!2732745)) (_1!38835 keyValue!4)))))))

(declare-fun b!8059629 () Bool)

(assert (=> b!8059629 (= e!4749686 (Some!18032 (_2!38835 (h!82113 lt!2732745))))))

(declare-fun b!8059631 () Bool)

(assert (=> b!8059631 (= e!4749687 (getValueByKey!2817 (t!391563 lt!2732745) (_1!38835 keyValue!4)))))

(assert (= (and d!2399379 c!1476972) b!8059629))

(assert (= (and d!2399379 (not c!1476972)) b!8059630))

(assert (= (and b!8059630 c!1476973) b!8059631))

(assert (= (and b!8059630 (not c!1476973)) b!8059632))

(declare-fun m!8412846 () Bool)

(assert (=> b!8059631 m!8412846))

(assert (=> start!759504 d!2399379))

(declare-fun d!2399381 () Bool)

(assert (=> d!2399381 (= (inv!97504 thiss!41857) (invariantList!1979 (toList!11990 thiss!41857)))))

(declare-fun bs!1973568 () Bool)

(assert (= bs!1973568 d!2399381))

(assert (=> bs!1973568 m!8412816))

(assert (=> start!759504 d!2399381))

(declare-fun tp!2414406 () Bool)

(declare-fun b!8059637 () Bool)

(declare-fun e!4749690 () Bool)

(assert (=> b!8059637 (= e!4749690 (and tp_is_empty!55243 tp_is_empty!55245 tp!2414406))))

(assert (=> b!8059441 (= tp!2414400 e!4749690)))

(assert (= (and b!8059441 ((_ is Cons!75665) (toList!11990 thiss!41857))) b!8059637))

(check-sat (not b!8059607) (not d!2399375) (not d!2399381) (not b!8059619) (not d!2399361) (not b!8059615) (not b!8059472) (not b!8059631) (not b!8059517) (not b!8059618) (not b!8059518) (not bm!747764) (not b!8059614) (not b!8059611) (not b!8059612) (not b!8059610) (not b!8059521) (not bm!747739) (not d!2399365) (not bm!747762) tp_is_empty!55245 (not b!8059519) (not b!8059515) (not b!8059514) (not b!8059516) (not d!2399369) (not b!8059637) tp_is_empty!55243 (not b!8059453) (not b!8059473))
(check-sat)
