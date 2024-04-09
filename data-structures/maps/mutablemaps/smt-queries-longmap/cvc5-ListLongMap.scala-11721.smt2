; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!137218 () Bool)

(assert start!137218)

(declare-fun b!1580385 () Bool)

(declare-fun res!1079744 () Bool)

(declare-fun e!881697 () Bool)

(assert (=> b!1580385 (=> (not res!1079744) (not e!881697))))

(declare-datatypes ((B!2666 0))(
  ( (B!2667 (val!19695 Int)) )
))
(declare-datatypes ((tuple2!25680 0))(
  ( (tuple2!25681 (_1!12850 (_ BitVec 64)) (_2!12850 B!2666)) )
))
(declare-datatypes ((List!36976 0))(
  ( (Nil!36973) (Cons!36972 (h!38516 tuple2!25680) (t!51897 List!36976)) )
))
(declare-fun l!1390 () List!36976)

(declare-fun key!405 () (_ BitVec 64))

(declare-fun containsKey!917 (List!36976 (_ BitVec 64)) Bool)

(assert (=> b!1580385 (= res!1079744 (containsKey!917 l!1390 key!405))))

(declare-fun b!1580386 () Bool)

(declare-fun e!881695 () Bool)

(declare-fun value!194 () B!2666)

(declare-datatypes ((Option!903 0))(
  ( (Some!902 (v!22399 B!2666)) (None!901) )
))
(declare-fun getValueByKey!816 (List!36976 (_ BitVec 64)) Option!903)

(assert (=> b!1580386 (= e!881695 (not (= (getValueByKey!816 l!1390 key!405) (Some!902 value!194))))))

(declare-fun b!1580387 () Bool)

(declare-fun e!881696 () Bool)

(declare-fun tp_is_empty!39211 () Bool)

(declare-fun tp!114487 () Bool)

(assert (=> b!1580387 (= e!881696 (and tp_is_empty!39211 tp!114487))))

(declare-fun b!1580388 () Bool)

(assert (=> b!1580388 (= e!881697 e!881695)))

(declare-fun res!1079743 () Bool)

(assert (=> b!1580388 (=> (not res!1079743) (not e!881695))))

(declare-datatypes ((tuple2!25682 0))(
  ( (tuple2!25683 (_1!12851 tuple2!25680) (_2!12851 List!36976)) )
))
(declare-datatypes ((Option!904 0))(
  ( (Some!903 (v!22400 tuple2!25682)) (None!902) )
))
(declare-fun lt!676708 () Option!904)

(declare-fun isEmpty!1168 (Option!904) Bool)

(assert (=> b!1580388 (= res!1079743 (not (isEmpty!1168 lt!676708)))))

(declare-fun unapply!82 (List!36976) Option!904)

(assert (=> b!1580388 (= lt!676708 (unapply!82 l!1390))))

(declare-fun res!1079740 () Bool)

(assert (=> start!137218 (=> (not res!1079740) (not e!881697))))

(declare-fun isStrictlySorted!1071 (List!36976) Bool)

(assert (=> start!137218 (= res!1079740 (isStrictlySorted!1071 l!1390))))

(assert (=> start!137218 e!881697))

(assert (=> start!137218 e!881696))

(assert (=> start!137218 true))

(assert (=> start!137218 tp_is_empty!39211))

(declare-fun b!1580389 () Bool)

(declare-fun res!1079741 () Bool)

(assert (=> b!1580389 (=> (not res!1079741) (not e!881697))))

(declare-fun contains!10504 (List!36976 tuple2!25680) Bool)

(assert (=> b!1580389 (= res!1079741 (contains!10504 l!1390 (tuple2!25681 key!405 value!194)))))

(declare-fun b!1580390 () Bool)

(declare-fun res!1079742 () Bool)

(assert (=> b!1580390 (=> (not res!1079742) (not e!881695))))

(declare-fun get!26821 (Option!904) tuple2!25682)

(assert (=> b!1580390 (= res!1079742 (is-Nil!36973 (_2!12851 (get!26821 lt!676708))))))

(assert (= (and start!137218 res!1079740) b!1580385))

(assert (= (and b!1580385 res!1079744) b!1580389))

(assert (= (and b!1580389 res!1079741) b!1580388))

(assert (= (and b!1580388 res!1079743) b!1580390))

(assert (= (and b!1580390 res!1079742) b!1580386))

(assert (= (and start!137218 (is-Cons!36972 l!1390)) b!1580387))

(declare-fun m!1451807 () Bool)

(assert (=> b!1580386 m!1451807))

(declare-fun m!1451809 () Bool)

(assert (=> b!1580385 m!1451809))

(declare-fun m!1451811 () Bool)

(assert (=> b!1580390 m!1451811))

(declare-fun m!1451813 () Bool)

(assert (=> b!1580388 m!1451813))

(declare-fun m!1451815 () Bool)

(assert (=> b!1580388 m!1451815))

(declare-fun m!1451817 () Bool)

(assert (=> start!137218 m!1451817))

(declare-fun m!1451819 () Bool)

(assert (=> b!1580389 m!1451819))

(push 1)

(assert tp_is_empty!39211)

(assert (not b!1580385))

(assert (not b!1580390))

(assert (not b!1580386))

(assert (not b!1580389))

(assert (not b!1580388))

(assert (not start!137218))

(assert (not b!1580387))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!166371 () Bool)

(declare-fun lt!676717 () Bool)

(declare-fun content!838 (List!36976) (Set tuple2!25680))

(assert (=> d!166371 (= lt!676717 (set.member (tuple2!25681 key!405 value!194) (content!838 l!1390)))))

(declare-fun e!881729 () Bool)

(assert (=> d!166371 (= lt!676717 e!881729)))

(declare-fun res!1079784 () Bool)

(assert (=> d!166371 (=> (not res!1079784) (not e!881729))))

(assert (=> d!166371 (= res!1079784 (is-Cons!36972 l!1390))))

(assert (=> d!166371 (= (contains!10504 l!1390 (tuple2!25681 key!405 value!194)) lt!676717)))

(declare-fun b!1580443 () Bool)

(declare-fun e!881728 () Bool)

(assert (=> b!1580443 (= e!881729 e!881728)))

(declare-fun res!1079783 () Bool)

(assert (=> b!1580443 (=> res!1079783 e!881728)))

(assert (=> b!1580443 (= res!1079783 (= (h!38516 l!1390) (tuple2!25681 key!405 value!194)))))

(declare-fun b!1580444 () Bool)

(assert (=> b!1580444 (= e!881728 (contains!10504 (t!51897 l!1390) (tuple2!25681 key!405 value!194)))))

(assert (= (and d!166371 res!1079784) b!1580443))

(assert (= (and b!1580443 (not res!1079783)) b!1580444))

(declare-fun m!1451849 () Bool)

(assert (=> d!166371 m!1451849))

(declare-fun m!1451851 () Bool)

(assert (=> d!166371 m!1451851))

(declare-fun m!1451853 () Bool)

(assert (=> b!1580444 m!1451853))

(assert (=> b!1580389 d!166371))

(declare-fun d!166377 () Bool)

(declare-fun res!1079799 () Bool)

(declare-fun e!881746 () Bool)

(assert (=> d!166377 (=> res!1079799 e!881746)))

(assert (=> d!166377 (= res!1079799 (or (is-Nil!36973 l!1390) (is-Nil!36973 (t!51897 l!1390))))))

(assert (=> d!166377 (= (isStrictlySorted!1071 l!1390) e!881746)))

(declare-fun b!1580463 () Bool)

(declare-fun e!881747 () Bool)

(assert (=> b!1580463 (= e!881746 e!881747)))

(declare-fun res!1079800 () Bool)

(assert (=> b!1580463 (=> (not res!1079800) (not e!881747))))

(assert (=> b!1580463 (= res!1079800 (bvslt (_1!12850 (h!38516 l!1390)) (_1!12850 (h!38516 (t!51897 l!1390)))))))

(declare-fun b!1580464 () Bool)

(assert (=> b!1580464 (= e!881747 (isStrictlySorted!1071 (t!51897 l!1390)))))

(assert (= (and d!166377 (not res!1079799)) b!1580463))

(assert (= (and b!1580463 res!1079800) b!1580464))

(declare-fun m!1451859 () Bool)

(assert (=> b!1580464 m!1451859))

(assert (=> start!137218 d!166377))

(declare-fun d!166383 () Bool)

(assert (=> d!166383 (= (isEmpty!1168 lt!676708) (not (is-Some!903 lt!676708)))))

(assert (=> b!1580388 d!166383))

(declare-fun d!166387 () Bool)

(assert (=> d!166387 (= (unapply!82 l!1390) (ite (is-Nil!36973 l!1390) None!902 (Some!903 (tuple2!25683 (h!38516 l!1390) (t!51897 l!1390)))))))

(assert (=> b!1580388 d!166387))

(declare-fun d!166393 () Bool)

(declare-fun c!146477 () Bool)

(assert (=> d!166393 (= c!146477 (and (is-Cons!36972 l!1390) (= (_1!12850 (h!38516 l!1390)) key!405)))))

(declare-fun e!881768 () Option!903)

(assert (=> d!166393 (= (getValueByKey!816 l!1390 key!405) e!881768)))

(declare-fun b!1580491 () Bool)

(declare-fun e!881769 () Option!903)

(assert (=> b!1580491 (= e!881769 (getValueByKey!816 (t!51897 l!1390) key!405))))

(declare-fun b!1580489 () Bool)

(assert (=> b!1580489 (= e!881768 (Some!902 (_2!12850 (h!38516 l!1390))))))

(declare-fun b!1580492 () Bool)

(assert (=> b!1580492 (= e!881769 None!901)))

(declare-fun b!1580490 () Bool)

(assert (=> b!1580490 (= e!881768 e!881769)))

(declare-fun c!146478 () Bool)

(assert (=> b!1580490 (= c!146478 (and (is-Cons!36972 l!1390) (not (= (_1!12850 (h!38516 l!1390)) key!405))))))

(assert (= (and d!166393 c!146477) b!1580489))

(assert (= (and d!166393 (not c!146477)) b!1580490))

(assert (= (and b!1580490 c!146478) b!1580491))

(assert (= (and b!1580490 (not c!146478)) b!1580492))

(declare-fun m!1451877 () Bool)

(assert (=> b!1580491 m!1451877))

(assert (=> b!1580386 d!166393))

(declare-fun d!166401 () Bool)

(assert (=> d!166401 (= (get!26821 lt!676708) (v!22400 lt!676708))))

(assert (=> b!1580390 d!166401))

(declare-fun d!166403 () Bool)

(declare-fun res!1079827 () Bool)

(declare-fun e!881788 () Bool)

(assert (=> d!166403 (=> res!1079827 e!881788)))

(assert (=> d!166403 (= res!1079827 (and (is-Cons!36972 l!1390) (= (_1!12850 (h!38516 l!1390)) key!405)))))

(assert (=> d!166403 (= (containsKey!917 l!1390 key!405) e!881788)))

(declare-fun b!1580519 () Bool)

(declare-fun e!881789 () Bool)

(assert (=> b!1580519 (= e!881788 e!881789)))

(declare-fun res!1079828 () Bool)

(assert (=> b!1580519 (=> (not res!1079828) (not e!881789))))

(assert (=> b!1580519 (= res!1079828 (and (or (not (is-Cons!36972 l!1390)) (bvsle (_1!12850 (h!38516 l!1390)) key!405)) (is-Cons!36972 l!1390) (bvslt (_1!12850 (h!38516 l!1390)) key!405)))))

(declare-fun b!1580520 () Bool)

(assert (=> b!1580520 (= e!881789 (containsKey!917 (t!51897 l!1390) key!405))))

(assert (= (and d!166403 (not res!1079827)) b!1580519))

(assert (= (and b!1580519 res!1079828) b!1580520))

(declare-fun m!1451883 () Bool)

(assert (=> b!1580520 m!1451883))

(assert (=> b!1580385 d!166403))

(declare-fun b!1580530 () Bool)

(declare-fun e!881795 () Bool)

(declare-fun tp!114501 () Bool)

(assert (=> b!1580530 (= e!881795 (and tp_is_empty!39211 tp!114501))))

(assert (=> b!1580387 (= tp!114487 e!881795)))

(assert (= (and b!1580387 (is-Cons!36972 (t!51897 l!1390))) b!1580530))

(push 1)

(assert tp_is_empty!39211)

(assert (not d!166371))

(assert (not b!1580464))

(assert (not b!1580491))

(assert (not b!1580520))

(assert (not b!1580530))

(assert (not b!1580444))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!166409 () Bool)

(declare-fun res!1079829 () Bool)

(declare-fun e!881797 () Bool)

(assert (=> d!166409 (=> res!1079829 e!881797)))

(assert (=> d!166409 (= res!1079829 (or (is-Nil!36973 (t!51897 l!1390)) (is-Nil!36973 (t!51897 (t!51897 l!1390)))))))

(assert (=> d!166409 (= (isStrictlySorted!1071 (t!51897 l!1390)) e!881797)))

(declare-fun b!1580532 () Bool)

(declare-fun e!881798 () Bool)

(assert (=> b!1580532 (= e!881797 e!881798)))

(declare-fun res!1079830 () Bool)

(assert (=> b!1580532 (=> (not res!1079830) (not e!881798))))

(assert (=> b!1580532 (= res!1079830 (bvslt (_1!12850 (h!38516 (t!51897 l!1390))) (_1!12850 (h!38516 (t!51897 (t!51897 l!1390))))))))

(declare-fun b!1580533 () Bool)

(assert (=> b!1580533 (= e!881798 (isStrictlySorted!1071 (t!51897 (t!51897 l!1390))))))

(assert (= (and d!166409 (not res!1079829)) b!1580532))

(assert (= (and b!1580532 res!1079830) b!1580533))

(declare-fun m!1451885 () Bool)

(assert (=> b!1580533 m!1451885))

(assert (=> b!1580464 d!166409))

(declare-fun d!166411 () Bool)

(declare-fun c!146487 () Bool)

(assert (=> d!166411 (= c!146487 (is-Nil!36973 l!1390))))

(declare-fun e!881801 () (Set tuple2!25680))

(assert (=> d!166411 (= (content!838 l!1390) e!881801)))

(declare-fun b!1580538 () Bool)

(assert (=> b!1580538 (= e!881801 (as set.empty (Set tuple2!25680)))))

(declare-fun b!1580539 () Bool)

(assert (=> b!1580539 (= e!881801 (set.union (set.insert (h!38516 l!1390) (as set.empty (Set tuple2!25680))) (content!838 (t!51897 l!1390))))))

(assert (= (and d!166411 c!146487) b!1580538))

(assert (= (and d!166411 (not c!146487)) b!1580539))

(declare-fun m!1451887 () Bool)

(assert (=> b!1580539 m!1451887))

(declare-fun m!1451889 () Bool)

(assert (=> b!1580539 m!1451889))

(assert (=> d!166371 d!166411))

(declare-fun d!166413 () Bool)

(declare-fun c!146488 () Bool)

(assert (=> d!166413 (= c!146488 (and (is-Cons!36972 (t!51897 l!1390)) (= (_1!12850 (h!38516 (t!51897 l!1390))) key!405)))))

(declare-fun e!881802 () Option!903)

(assert (=> d!166413 (= (getValueByKey!816 (t!51897 l!1390) key!405) e!881802)))

(declare-fun b!1580542 () Bool)

(declare-fun e!881803 () Option!903)

(assert (=> b!1580542 (= e!881803 (getValueByKey!816 (t!51897 (t!51897 l!1390)) key!405))))

(declare-fun b!1580540 () Bool)

(assert (=> b!1580540 (= e!881802 (Some!902 (_2!12850 (h!38516 (t!51897 l!1390)))))))

(declare-fun b!1580543 () Bool)

(assert (=> b!1580543 (= e!881803 None!901)))

(declare-fun b!1580541 () Bool)

(assert (=> b!1580541 (= e!881802 e!881803)))

(declare-fun c!146489 () Bool)

(assert (=> b!1580541 (= c!146489 (and (is-Cons!36972 (t!51897 l!1390)) (not (= (_1!12850 (h!38516 (t!51897 l!1390))) key!405))))))

(assert (= (and d!166413 c!146488) b!1580540))

(assert (= (and d!166413 (not c!146488)) b!1580541))

(assert (= (and b!1580541 c!146489) b!1580542))

(assert (= (and b!1580541 (not c!146489)) b!1580543))

(declare-fun m!1451891 () Bool)

(assert (=> b!1580542 m!1451891))

(assert (=> b!1580491 d!166413))

(declare-fun d!166415 () Bool)

(declare-fun res!1079831 () Bool)

(declare-fun e!881804 () Bool)

(assert (=> d!166415 (=> res!1079831 e!881804)))

(assert (=> d!166415 (= res!1079831 (and (is-Cons!36972 (t!51897 l!1390)) (= (_1!12850 (h!38516 (t!51897 l!1390))) key!405)))))

(assert (=> d!166415 (= (containsKey!917 (t!51897 l!1390) key!405) e!881804)))

(declare-fun b!1580544 () Bool)

(declare-fun e!881805 () Bool)

(assert (=> b!1580544 (= e!881804 e!881805)))

(declare-fun res!1079832 () Bool)

(assert (=> b!1580544 (=> (not res!1079832) (not e!881805))))

(assert (=> b!1580544 (= res!1079832 (and (or (not (is-Cons!36972 (t!51897 l!1390))) (bvsle (_1!12850 (h!38516 (t!51897 l!1390))) key!405)) (is-Cons!36972 (t!51897 l!1390)) (bvslt (_1!12850 (h!38516 (t!51897 l!1390))) key!405)))))

(declare-fun b!1580545 () Bool)

(assert (=> b!1580545 (= e!881805 (containsKey!917 (t!51897 (t!51897 l!1390)) key!405))))

(assert (= (and d!166415 (not res!1079831)) b!1580544))

(assert (= (and b!1580544 res!1079832) b!1580545))

(declare-fun m!1451893 () Bool)

(assert (=> b!1580545 m!1451893))

(assert (=> b!1580520 d!166415))

(declare-fun d!166417 () Bool)

(declare-fun lt!676724 () Bool)

(assert (=> d!166417 (= lt!676724 (set.member (tuple2!25681 key!405 value!194) (content!838 (t!51897 l!1390))))))

(declare-fun e!881807 () Bool)

(assert (=> d!166417 (= lt!676724 e!881807)))

(declare-fun res!1079834 () Bool)

(assert (=> d!166417 (=> (not res!1079834) (not e!881807))))

(assert (=> d!166417 (= res!1079834 (is-Cons!36972 (t!51897 l!1390)))))

(assert (=> d!166417 (= (contains!10504 (t!51897 l!1390) (tuple2!25681 key!405 value!194)) lt!676724)))

(declare-fun b!1580546 () Bool)

(declare-fun e!881806 () Bool)

(assert (=> b!1580546 (= e!881807 e!881806)))

(declare-fun res!1079833 () Bool)

(assert (=> b!1580546 (=> res!1079833 e!881806)))

(assert (=> b!1580546 (= res!1079833 (= (h!38516 (t!51897 l!1390)) (tuple2!25681 key!405 value!194)))))

(declare-fun b!1580547 () Bool)

(assert (=> b!1580547 (= e!881806 (contains!10504 (t!51897 (t!51897 l!1390)) (tuple2!25681 key!405 value!194)))))

(assert (= (and d!166417 res!1079834) b!1580546))

(assert (= (and b!1580546 (not res!1079833)) b!1580547))

(assert (=> d!166417 m!1451889))

(declare-fun m!1451895 () Bool)

(assert (=> d!166417 m!1451895))

(declare-fun m!1451897 () Bool)

(assert (=> b!1580547 m!1451897))

(assert (=> b!1580444 d!166417))

(declare-fun b!1580548 () Bool)

(declare-fun e!881808 () Bool)

(declare-fun tp!114503 () Bool)

(assert (=> b!1580548 (= e!881808 (and tp_is_empty!39211 tp!114503))))

(assert (=> b!1580530 (= tp!114501 e!881808)))

(assert (= (and b!1580530 (is-Cons!36972 (t!51897 (t!51897 l!1390)))) b!1580548))

(push 1)

(assert (not b!1580539))

(assert (not b!1580545))

(assert (not b!1580548))

(assert (not b!1580542))

(assert tp_is_empty!39211)

(assert (not d!166417))

(assert (not b!1580547))

(assert (not b!1580533))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

