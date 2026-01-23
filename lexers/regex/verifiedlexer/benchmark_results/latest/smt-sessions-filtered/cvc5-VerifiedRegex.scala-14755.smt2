; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!759062 () Bool)

(assert start!759062)

(declare-fun res!3187051 () Bool)

(declare-fun e!4748015 () Bool)

(assert (=> start!759062 (=> (not res!3187051) (not e!4748015))))

(declare-datatypes ((K!22906 0))(
  ( (K!22907 (val!32997 Int)) )
))
(declare-datatypes ((V!23160 0))(
  ( (V!23161 (val!32998 Int)) )
))
(declare-datatypes ((tuple2!70962 0))(
  ( (tuple2!70963 (_1!38784 K!22906) (_2!38784 V!23160)) )
))
(declare-datatypes ((List!75729 0))(
  ( (Nil!75603) (Cons!75603 (h!82051 tuple2!70962) (t!391501 List!75729)) )
))
(declare-fun l!15222 () List!75729)

(declare-fun key!6986 () K!22906)

(declare-fun containsKey!4910 (List!75729 K!22906) Bool)

(assert (=> start!759062 (= res!3187051 (not (containsKey!4910 l!15222 key!6986)))))

(assert (=> start!759062 e!4748015))

(declare-fun e!4748016 () Bool)

(assert (=> start!759062 e!4748016))

(declare-fun tp_is_empty!55047 () Bool)

(assert (=> start!759062 tp_is_empty!55047))

(declare-fun tp_is_empty!55049 () Bool)

(assert (=> start!759062 tp_is_empty!55049))

(declare-fun b!8057026 () Bool)

(declare-fun res!3187050 () Bool)

(assert (=> b!8057026 (=> (not res!3187050) (not e!4748015))))

(assert (=> b!8057026 (= res!3187050 (and (or (not (is-Cons!75603 l!15222)) (not (= (_1!38784 (h!82051 l!15222)) key!6986))) (not (is-Cons!75603 l!15222))))))

(declare-fun v!11745 () V!23160)

(declare-fun b!8057027 () Bool)

(declare-fun contains!21277 (List!75729 tuple2!70962) Bool)

(assert (=> b!8057027 (= e!4748015 (contains!21277 l!15222 (tuple2!70963 key!6986 v!11745)))))

(declare-fun b!8057028 () Bool)

(declare-fun tp!2414032 () Bool)

(assert (=> b!8057028 (= e!4748016 (and tp_is_empty!55047 tp_is_empty!55049 tp!2414032))))

(assert (= (and start!759062 res!3187051) b!8057026))

(assert (= (and b!8057026 res!3187050) b!8057027))

(assert (= (and start!759062 (is-Cons!75603 l!15222)) b!8057028))

(declare-fun m!8410208 () Bool)

(assert (=> start!759062 m!8410208))

(declare-fun m!8410210 () Bool)

(assert (=> b!8057027 m!8410210))

(push 1)

(assert tp_is_empty!55049)

(assert (not b!8057027))

(assert (not b!8057028))

(assert tp_is_empty!55047)

(assert (not start!759062))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!2398788 () Bool)

(declare-fun lt!2730759 () Bool)

(declare-fun content!16131 (List!75729) (Set tuple2!70962))

(assert (=> d!2398788 (= lt!2730759 (set.member (tuple2!70963 key!6986 v!11745) (content!16131 l!15222)))))

(declare-fun e!4748027 () Bool)

(assert (=> d!2398788 (= lt!2730759 e!4748027)))

(declare-fun res!3187062 () Bool)

(assert (=> d!2398788 (=> (not res!3187062) (not e!4748027))))

(assert (=> d!2398788 (= res!3187062 (is-Cons!75603 l!15222))))

(assert (=> d!2398788 (= (contains!21277 l!15222 (tuple2!70963 key!6986 v!11745)) lt!2730759)))

(declare-fun b!8057042 () Bool)

(declare-fun e!4748028 () Bool)

(assert (=> b!8057042 (= e!4748027 e!4748028)))

(declare-fun res!3187063 () Bool)

(assert (=> b!8057042 (=> res!3187063 e!4748028)))

(assert (=> b!8057042 (= res!3187063 (= (h!82051 l!15222) (tuple2!70963 key!6986 v!11745)))))

(declare-fun b!8057043 () Bool)

(assert (=> b!8057043 (= e!4748028 (contains!21277 (t!391501 l!15222) (tuple2!70963 key!6986 v!11745)))))

(assert (= (and d!2398788 res!3187062) b!8057042))

(assert (= (and b!8057042 (not res!3187063)) b!8057043))

(declare-fun m!8410216 () Bool)

(assert (=> d!2398788 m!8410216))

(declare-fun m!8410218 () Bool)

(assert (=> d!2398788 m!8410218))

(declare-fun m!8410220 () Bool)

(assert (=> b!8057043 m!8410220))

(assert (=> b!8057027 d!2398788))

(declare-fun d!2398792 () Bool)

(declare-fun res!3187068 () Bool)

(declare-fun e!4748033 () Bool)

(assert (=> d!2398792 (=> res!3187068 e!4748033)))

(assert (=> d!2398792 (= res!3187068 (and (is-Cons!75603 l!15222) (= (_1!38784 (h!82051 l!15222)) key!6986)))))

(assert (=> d!2398792 (= (containsKey!4910 l!15222 key!6986) e!4748033)))

(declare-fun b!8057048 () Bool)

(declare-fun e!4748034 () Bool)

(assert (=> b!8057048 (= e!4748033 e!4748034)))

(declare-fun res!3187069 () Bool)

(assert (=> b!8057048 (=> (not res!3187069) (not e!4748034))))

(assert (=> b!8057048 (= res!3187069 (is-Cons!75603 l!15222))))

(declare-fun b!8057049 () Bool)

(assert (=> b!8057049 (= e!4748034 (containsKey!4910 (t!391501 l!15222) key!6986))))

(assert (= (and d!2398792 (not res!3187068)) b!8057048))

(assert (= (and b!8057048 res!3187069) b!8057049))

(declare-fun m!8410222 () Bool)

(assert (=> b!8057049 m!8410222))

(assert (=> start!759062 d!2398792))

(declare-fun b!8057054 () Bool)

(declare-fun tp!2414038 () Bool)

(declare-fun e!4748037 () Bool)

(assert (=> b!8057054 (= e!4748037 (and tp_is_empty!55047 tp_is_empty!55049 tp!2414038))))

(assert (=> b!8057028 (= tp!2414032 e!4748037)))

(assert (= (and b!8057028 (is-Cons!75603 (t!391501 l!15222))) b!8057054))

(push 1)

(assert tp_is_empty!55049)

(assert (not d!2398788))

(assert (not b!8057043))

(assert (not b!8057049))

(assert tp_is_empty!55047)

(assert (not b!8057054))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

