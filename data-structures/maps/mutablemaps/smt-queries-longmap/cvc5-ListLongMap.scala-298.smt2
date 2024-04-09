; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!5176 () Bool)

(assert start!5176)

(declare-fun res!22840 () Bool)

(declare-fun e!24020 () Bool)

(assert (=> start!5176 (=> (not res!22840) (not e!24020))))

(declare-datatypes ((B!776 0))(
  ( (B!777 (val!888 Int)) )
))
(declare-fun b!99 () B!776)

(declare-datatypes ((tuple2!1440 0))(
  ( (tuple2!1441 (_1!730 (_ BitVec 64)) (_2!730 B!776)) )
))
(declare-datatypes ((List!1014 0))(
  ( (Nil!1011) (Cons!1010 (h!1578 tuple2!1440) (t!3855 List!1014)) )
))
(declare-datatypes ((ListLongMap!1021 0))(
  ( (ListLongMap!1022 (toList!526 List!1014)) )
))
(declare-fun lm!264 () ListLongMap!1021)

(declare-fun a!526 () (_ BitVec 64))

(declare-fun contains!474 (List!1014 tuple2!1440) Bool)

(assert (=> start!5176 (= res!22840 (contains!474 (toList!526 lm!264) (tuple2!1441 a!526 b!99)))))

(assert (=> start!5176 e!24020))

(declare-fun e!24021 () Bool)

(declare-fun inv!1683 (ListLongMap!1021) Bool)

(assert (=> start!5176 (and (inv!1683 lm!264) e!24021)))

(assert (=> start!5176 true))

(declare-fun tp_is_empty!1699 () Bool)

(assert (=> start!5176 tp_is_empty!1699))

(declare-fun b!37874 () Bool)

(declare-fun isStrictlySorted!190 (List!1014) Bool)

(assert (=> b!37874 (= e!24020 (not (isStrictlySorted!190 (toList!526 lm!264))))))

(declare-fun b!37875 () Bool)

(declare-fun tp!5606 () Bool)

(assert (=> b!37875 (= e!24021 tp!5606)))

(assert (= (and start!5176 res!22840) b!37874))

(assert (= start!5176 b!37875))

(declare-fun m!30617 () Bool)

(assert (=> start!5176 m!30617))

(declare-fun m!30619 () Bool)

(assert (=> start!5176 m!30619))

(declare-fun m!30621 () Bool)

(assert (=> b!37874 m!30621))

(push 1)

(assert (not b!37874))

(assert (not start!5176))

(assert (not b!37875))

(assert tp_is_empty!1699)

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!6131 () Bool)

(declare-fun res!22855 () Bool)

(declare-fun e!24042 () Bool)

(assert (=> d!6131 (=> res!22855 e!24042)))

(assert (=> d!6131 (= res!22855 (or (is-Nil!1011 (toList!526 lm!264)) (is-Nil!1011 (t!3855 (toList!526 lm!264)))))))

(assert (=> d!6131 (= (isStrictlySorted!190 (toList!526 lm!264)) e!24042)))

(declare-fun b!37896 () Bool)

(declare-fun e!24043 () Bool)

(assert (=> b!37896 (= e!24042 e!24043)))

(declare-fun res!22856 () Bool)

(assert (=> b!37896 (=> (not res!22856) (not e!24043))))

(assert (=> b!37896 (= res!22856 (bvslt (_1!730 (h!1578 (toList!526 lm!264))) (_1!730 (h!1578 (t!3855 (toList!526 lm!264))))))))

(declare-fun b!37897 () Bool)

(assert (=> b!37897 (= e!24043 (isStrictlySorted!190 (t!3855 (toList!526 lm!264))))))

(assert (= (and d!6131 (not res!22855)) b!37896))

(assert (= (and b!37896 res!22856) b!37897))

(declare-fun m!30635 () Bool)

(assert (=> b!37897 m!30635))

(assert (=> b!37874 d!6131))

(declare-fun d!6135 () Bool)

(declare-fun lt!13942 () Bool)

(declare-fun content!20 (List!1014) (Set tuple2!1440))

(assert (=> d!6135 (= lt!13942 (set.member (tuple2!1441 a!526 b!99) (content!20 (toList!526 lm!264))))))

(declare-fun e!24054 () Bool)

(assert (=> d!6135 (= lt!13942 e!24054)))

(declare-fun res!22868 () Bool)

(assert (=> d!6135 (=> (not res!22868) (not e!24054))))

(assert (=> d!6135 (= res!22868 (is-Cons!1010 (toList!526 lm!264)))))

(assert (=> d!6135 (= (contains!474 (toList!526 lm!264) (tuple2!1441 a!526 b!99)) lt!13942)))

(declare-fun b!37906 () Bool)

(declare-fun e!24055 () Bool)

(assert (=> b!37906 (= e!24054 e!24055)))

(declare-fun res!22867 () Bool)

(assert (=> b!37906 (=> res!22867 e!24055)))

(assert (=> b!37906 (= res!22867 (= (h!1578 (toList!526 lm!264)) (tuple2!1441 a!526 b!99)))))

(declare-fun b!37907 () Bool)

(assert (=> b!37907 (= e!24055 (contains!474 (t!3855 (toList!526 lm!264)) (tuple2!1441 a!526 b!99)))))

(assert (= (and d!6135 res!22868) b!37906))

(assert (= (and b!37906 (not res!22867)) b!37907))

(declare-fun m!30643 () Bool)

(assert (=> d!6135 m!30643))

(declare-fun m!30645 () Bool)

(assert (=> d!6135 m!30645))

(declare-fun m!30647 () Bool)

(assert (=> b!37907 m!30647))

(assert (=> start!5176 d!6135))

(declare-fun d!6141 () Bool)

(assert (=> d!6141 (= (inv!1683 lm!264) (isStrictlySorted!190 (toList!526 lm!264)))))

(declare-fun bs!1505 () Bool)

(assert (= bs!1505 d!6141))

(assert (=> bs!1505 m!30621))

(assert (=> start!5176 d!6141))

(declare-fun b!37924 () Bool)

(declare-fun e!24066 () Bool)

(declare-fun tp!5617 () Bool)

(assert (=> b!37924 (= e!24066 (and tp_is_empty!1699 tp!5617))))

(assert (=> b!37875 (= tp!5606 e!24066)))

(assert (= (and b!37875 (is-Cons!1010 (toList!526 lm!264))) b!37924))

(push 1)

(assert (not b!37907))

(assert (not b!37924))

(assert (not d!6135))

(assert tp_is_empty!1699)

(assert (not d!6141))

(assert (not b!37897))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

