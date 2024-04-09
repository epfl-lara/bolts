; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!137274 () Bool)

(assert start!137274)

(declare-fun res!1079885 () Bool)

(declare-fun e!881858 () Bool)

(assert (=> start!137274 (=> (not res!1079885) (not e!881858))))

(declare-datatypes ((B!2674 0))(
  ( (B!2675 (val!19699 Int)) )
))
(declare-datatypes ((tuple2!25696 0))(
  ( (tuple2!25697 (_1!12858 (_ BitVec 64)) (_2!12858 B!2674)) )
))
(declare-datatypes ((List!36980 0))(
  ( (Nil!36977) (Cons!36976 (h!38520 tuple2!25696) (t!51901 List!36980)) )
))
(declare-fun l!1390 () List!36980)

(declare-fun isStrictlySorted!1075 (List!36980) Bool)

(assert (=> start!137274 (= res!1079885 (isStrictlySorted!1075 l!1390))))

(assert (=> start!137274 e!881858))

(declare-fun e!881861 () Bool)

(assert (=> start!137274 e!881861))

(assert (=> start!137274 true))

(declare-fun tp_is_empty!39219 () Bool)

(assert (=> start!137274 tp_is_empty!39219))

(declare-fun b!1580623 () Bool)

(declare-fun e!881862 () Bool)

(declare-fun key!405 () (_ BitVec 64))

(declare-fun containsKey!921 (List!36980 (_ BitVec 64)) Bool)

(assert (=> b!1580623 (= e!881862 (containsKey!921 (t!51901 l!1390) key!405))))

(declare-fun b!1580624 () Bool)

(declare-fun res!1079888 () Bool)

(declare-fun e!881860 () Bool)

(assert (=> b!1580624 (=> (not res!1079888) (not e!881860))))

(get-info :version)

(assert (=> b!1580624 (= res!1079888 (and ((_ is Cons!36976) l!1390) (= (_1!12858 (h!38520 l!1390)) key!405)))))

(declare-fun b!1580625 () Bool)

(declare-fun res!1079884 () Bool)

(assert (=> b!1580625 (=> (not res!1079884) (not e!881858))))

(assert (=> b!1580625 (= res!1079884 (containsKey!921 l!1390 key!405))))

(declare-fun b!1580626 () Bool)

(declare-fun tp!114511 () Bool)

(assert (=> b!1580626 (= e!881861 (and tp_is_empty!39219 tp!114511))))

(declare-fun b!1580627 () Bool)

(assert (=> b!1580627 (= e!881858 e!881860)))

(declare-fun res!1079882 () Bool)

(assert (=> b!1580627 (=> (not res!1079882) (not e!881860))))

(declare-fun e!881859 () Bool)

(assert (=> b!1580627 (= res!1079882 e!881859)))

(declare-fun res!1079883 () Bool)

(assert (=> b!1580627 (=> res!1079883 e!881859)))

(declare-datatypes ((tuple2!25698 0))(
  ( (tuple2!25699 (_1!12859 tuple2!25696) (_2!12859 List!36980)) )
))
(declare-datatypes ((Option!910 0))(
  ( (Some!909 (v!22409 tuple2!25698)) (None!908) )
))
(declare-fun lt!676732 () Option!910)

(declare-fun isEmpty!1172 (Option!910) Bool)

(assert (=> b!1580627 (= res!1079883 (isEmpty!1172 lt!676732))))

(declare-fun unapply!86 (List!36980) Option!910)

(assert (=> b!1580627 (= lt!676732 (unapply!86 l!1390))))

(declare-fun b!1580628 () Bool)

(declare-fun res!1079886 () Bool)

(assert (=> b!1580628 (=> (not res!1079886) (not e!881858))))

(declare-fun value!194 () B!2674)

(declare-fun contains!10508 (List!36980 tuple2!25696) Bool)

(assert (=> b!1580628 (= res!1079886 (contains!10508 l!1390 (tuple2!25697 key!405 value!194)))))

(declare-fun b!1580629 () Bool)

(declare-fun get!26827 (Option!910) tuple2!25698)

(assert (=> b!1580629 (= e!881859 (not ((_ is Nil!36977) (_2!12859 (get!26827 lt!676732)))))))

(declare-fun b!1580630 () Bool)

(assert (=> b!1580630 (= e!881860 e!881862)))

(declare-fun res!1079887 () Bool)

(assert (=> b!1580630 (=> res!1079887 e!881862)))

(assert (=> b!1580630 (= res!1079887 (not (isStrictlySorted!1075 (t!51901 l!1390))))))

(assert (= (and start!137274 res!1079885) b!1580625))

(assert (= (and b!1580625 res!1079884) b!1580628))

(assert (= (and b!1580628 res!1079886) b!1580627))

(assert (= (and b!1580627 (not res!1079883)) b!1580629))

(assert (= (and b!1580627 res!1079882) b!1580624))

(assert (= (and b!1580624 res!1079888) b!1580630))

(assert (= (and b!1580630 (not res!1079887)) b!1580623))

(assert (= (and start!137274 ((_ is Cons!36976) l!1390)) b!1580626))

(declare-fun m!1451943 () Bool)

(assert (=> b!1580623 m!1451943))

(declare-fun m!1451945 () Bool)

(assert (=> b!1580629 m!1451945))

(declare-fun m!1451947 () Bool)

(assert (=> start!137274 m!1451947))

(declare-fun m!1451949 () Bool)

(assert (=> b!1580630 m!1451949))

(declare-fun m!1451951 () Bool)

(assert (=> b!1580625 m!1451951))

(declare-fun m!1451953 () Bool)

(assert (=> b!1580628 m!1451953))

(declare-fun m!1451955 () Bool)

(assert (=> b!1580627 m!1451955))

(declare-fun m!1451957 () Bool)

(assert (=> b!1580627 m!1451957))

(check-sat (not b!1580626) (not b!1580628) (not b!1580627) (not b!1580625) (not b!1580623) (not start!137274) (not b!1580629) tp_is_empty!39219 (not b!1580630))
(check-sat)
(get-model)

(declare-fun d!166441 () Bool)

(declare-fun res!1079914 () Bool)

(declare-fun e!881882 () Bool)

(assert (=> d!166441 (=> res!1079914 e!881882)))

(assert (=> d!166441 (= res!1079914 (or ((_ is Nil!36977) l!1390) ((_ is Nil!36977) (t!51901 l!1390))))))

(assert (=> d!166441 (= (isStrictlySorted!1075 l!1390) e!881882)))

(declare-fun b!1580659 () Bool)

(declare-fun e!881883 () Bool)

(assert (=> b!1580659 (= e!881882 e!881883)))

(declare-fun res!1079915 () Bool)

(assert (=> b!1580659 (=> (not res!1079915) (not e!881883))))

(assert (=> b!1580659 (= res!1079915 (bvslt (_1!12858 (h!38520 l!1390)) (_1!12858 (h!38520 (t!51901 l!1390)))))))

(declare-fun b!1580660 () Bool)

(assert (=> b!1580660 (= e!881883 (isStrictlySorted!1075 (t!51901 l!1390)))))

(assert (= (and d!166441 (not res!1079914)) b!1580659))

(assert (= (and b!1580659 res!1079915) b!1580660))

(assert (=> b!1580660 m!1451949))

(assert (=> start!137274 d!166441))

(declare-fun d!166445 () Bool)

(assert (=> d!166445 (= (isEmpty!1172 lt!676732) (not ((_ is Some!909) lt!676732)))))

(assert (=> b!1580627 d!166445))

(declare-fun d!166447 () Bool)

(assert (=> d!166447 (= (unapply!86 l!1390) (ite ((_ is Nil!36977) l!1390) None!908 (Some!909 (tuple2!25699 (h!38520 l!1390) (t!51901 l!1390)))))))

(assert (=> b!1580627 d!166447))

(declare-fun d!166455 () Bool)

(declare-fun res!1079940 () Bool)

(declare-fun e!881908 () Bool)

(assert (=> d!166455 (=> res!1079940 e!881908)))

(assert (=> d!166455 (= res!1079940 (and ((_ is Cons!36976) l!1390) (= (_1!12858 (h!38520 l!1390)) key!405)))))

(assert (=> d!166455 (= (containsKey!921 l!1390 key!405) e!881908)))

(declare-fun b!1580685 () Bool)

(declare-fun e!881909 () Bool)

(assert (=> b!1580685 (= e!881908 e!881909)))

(declare-fun res!1079941 () Bool)

(assert (=> b!1580685 (=> (not res!1079941) (not e!881909))))

(assert (=> b!1580685 (= res!1079941 (and (or (not ((_ is Cons!36976) l!1390)) (bvsle (_1!12858 (h!38520 l!1390)) key!405)) ((_ is Cons!36976) l!1390) (bvslt (_1!12858 (h!38520 l!1390)) key!405)))))

(declare-fun b!1580686 () Bool)

(assert (=> b!1580686 (= e!881909 (containsKey!921 (t!51901 l!1390) key!405))))

(assert (= (and d!166455 (not res!1079940)) b!1580685))

(assert (= (and b!1580685 res!1079941) b!1580686))

(assert (=> b!1580686 m!1451943))

(assert (=> b!1580625 d!166455))

(declare-fun d!166467 () Bool)

(declare-fun res!1079942 () Bool)

(declare-fun e!881910 () Bool)

(assert (=> d!166467 (=> res!1079942 e!881910)))

(assert (=> d!166467 (= res!1079942 (or ((_ is Nil!36977) (t!51901 l!1390)) ((_ is Nil!36977) (t!51901 (t!51901 l!1390)))))))

(assert (=> d!166467 (= (isStrictlySorted!1075 (t!51901 l!1390)) e!881910)))

(declare-fun b!1580687 () Bool)

(declare-fun e!881911 () Bool)

(assert (=> b!1580687 (= e!881910 e!881911)))

(declare-fun res!1079943 () Bool)

(assert (=> b!1580687 (=> (not res!1079943) (not e!881911))))

(assert (=> b!1580687 (= res!1079943 (bvslt (_1!12858 (h!38520 (t!51901 l!1390))) (_1!12858 (h!38520 (t!51901 (t!51901 l!1390))))))))

(declare-fun b!1580688 () Bool)

(assert (=> b!1580688 (= e!881911 (isStrictlySorted!1075 (t!51901 (t!51901 l!1390))))))

(assert (= (and d!166467 (not res!1079942)) b!1580687))

(assert (= (and b!1580687 res!1079943) b!1580688))

(declare-fun m!1451979 () Bool)

(assert (=> b!1580688 m!1451979))

(assert (=> b!1580630 d!166467))

(declare-fun d!166469 () Bool)

(assert (=> d!166469 (= (get!26827 lt!676732) (v!22409 lt!676732))))

(assert (=> b!1580629 d!166469))

(declare-fun d!166473 () Bool)

(declare-fun res!1079944 () Bool)

(declare-fun e!881912 () Bool)

(assert (=> d!166473 (=> res!1079944 e!881912)))

(assert (=> d!166473 (= res!1079944 (and ((_ is Cons!36976) (t!51901 l!1390)) (= (_1!12858 (h!38520 (t!51901 l!1390))) key!405)))))

(assert (=> d!166473 (= (containsKey!921 (t!51901 l!1390) key!405) e!881912)))

(declare-fun b!1580689 () Bool)

(declare-fun e!881913 () Bool)

(assert (=> b!1580689 (= e!881912 e!881913)))

(declare-fun res!1079945 () Bool)

(assert (=> b!1580689 (=> (not res!1079945) (not e!881913))))

(assert (=> b!1580689 (= res!1079945 (and (or (not ((_ is Cons!36976) (t!51901 l!1390))) (bvsle (_1!12858 (h!38520 (t!51901 l!1390))) key!405)) ((_ is Cons!36976) (t!51901 l!1390)) (bvslt (_1!12858 (h!38520 (t!51901 l!1390))) key!405)))))

(declare-fun b!1580690 () Bool)

(assert (=> b!1580690 (= e!881913 (containsKey!921 (t!51901 (t!51901 l!1390)) key!405))))

(assert (= (and d!166473 (not res!1079944)) b!1580689))

(assert (= (and b!1580689 res!1079945) b!1580690))

(declare-fun m!1451981 () Bool)

(assert (=> b!1580690 m!1451981))

(assert (=> b!1580623 d!166473))

(declare-fun lt!676741 () Bool)

(declare-fun d!166475 () Bool)

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!842 (List!36980) (InoxSet tuple2!25696))

(assert (=> d!166475 (= lt!676741 (select (content!842 l!1390) (tuple2!25697 key!405 value!194)))))

(declare-fun e!881937 () Bool)

(assert (=> d!166475 (= lt!676741 e!881937)))

(declare-fun res!1079966 () Bool)

(assert (=> d!166475 (=> (not res!1079966) (not e!881937))))

(assert (=> d!166475 (= res!1079966 ((_ is Cons!36976) l!1390))))

(assert (=> d!166475 (= (contains!10508 l!1390 (tuple2!25697 key!405 value!194)) lt!676741)))

(declare-fun b!1580716 () Bool)

(declare-fun e!881938 () Bool)

(assert (=> b!1580716 (= e!881937 e!881938)))

(declare-fun res!1079967 () Bool)

(assert (=> b!1580716 (=> res!1079967 e!881938)))

(assert (=> b!1580716 (= res!1079967 (= (h!38520 l!1390) (tuple2!25697 key!405 value!194)))))

(declare-fun b!1580717 () Bool)

(assert (=> b!1580717 (= e!881938 (contains!10508 (t!51901 l!1390) (tuple2!25697 key!405 value!194)))))

(assert (= (and d!166475 res!1079966) b!1580716))

(assert (= (and b!1580716 (not res!1079967)) b!1580717))

(declare-fun m!1451991 () Bool)

(assert (=> d!166475 m!1451991))

(declare-fun m!1451993 () Bool)

(assert (=> d!166475 m!1451993))

(declare-fun m!1451995 () Bool)

(assert (=> b!1580717 m!1451995))

(assert (=> b!1580628 d!166475))

(declare-fun b!1580722 () Bool)

(declare-fun e!881941 () Bool)

(declare-fun tp!114520 () Bool)

(assert (=> b!1580722 (= e!881941 (and tp_is_empty!39219 tp!114520))))

(assert (=> b!1580626 (= tp!114511 e!881941)))

(assert (= (and b!1580626 ((_ is Cons!36976) (t!51901 l!1390))) b!1580722))

(check-sat (not b!1580690) (not b!1580660) (not d!166475) (not b!1580688) tp_is_empty!39219 (not b!1580686) (not b!1580722) (not b!1580717))
(check-sat)
