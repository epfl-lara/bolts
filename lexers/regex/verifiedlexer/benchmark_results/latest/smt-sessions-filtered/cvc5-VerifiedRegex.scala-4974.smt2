; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!252422 () Bool)

(assert start!252422)

(declare-fun b!2599074 () Bool)

(declare-fun res!1094491 () Bool)

(declare-fun e!1640515 () Bool)

(assert (=> b!2599074 (=> (not res!1094491) (not e!1640515))))

(declare-datatypes ((B!2315 0))(
  ( (B!2316 (val!9625 Int)) )
))
(declare-datatypes ((List!30058 0))(
  ( (Nil!29958) (Cons!29958 (h!35378 B!2315) (t!213071 List!30058)) )
))
(declare-fun l!3217 () List!30058)

(declare-fun e!9312 () B!2315)

(declare-fun contains!5506 (List!30058 B!2315) Bool)

(assert (=> b!2599074 (= res!1094491 (contains!5506 l!3217 e!9312))))

(declare-fun res!1094492 () Bool)

(assert (=> start!252422 (=> (not res!1094492) (not e!1640515))))

(declare-fun noDuplicate!506 (List!30058) Bool)

(assert (=> start!252422 (= res!1094492 (noDuplicate!506 l!3217))))

(assert (=> start!252422 e!1640515))

(declare-fun e!1640514 () Bool)

(assert (=> start!252422 e!1640514))

(declare-fun tp_is_empty!13595 () Bool)

(assert (=> start!252422 tp_is_empty!13595))

(declare-fun b!2599076 () Bool)

(assert (=> b!2599076 (= e!1640515 (and (is-Cons!29958 l!3217) (not (= (h!35378 l!3217) e!9312))))))

(declare-fun b!2599077 () Bool)

(declare-fun tp!823603 () Bool)

(assert (=> b!2599077 (= e!1640514 (and tp_is_empty!13595 tp!823603))))

(declare-fun b!2599075 () Bool)

(declare-fun res!1094490 () Bool)

(assert (=> b!2599075 (=> (not res!1094490) (not e!1640515))))

(declare-fun head!5903 (List!30058) B!2315)

(assert (=> b!2599075 (= res!1094490 (= (head!5903 l!3217) e!9312))))

(assert (= (and start!252422 res!1094492) b!2599074))

(assert (= (and b!2599074 res!1094491) b!2599075))

(assert (= (and b!2599075 res!1094490) b!2599076))

(assert (= (and start!252422 (is-Cons!29958 l!3217)) b!2599077))

(declare-fun m!2934933 () Bool)

(assert (=> b!2599074 m!2934933))

(declare-fun m!2934935 () Bool)

(assert (=> start!252422 m!2934935))

(declare-fun m!2934937 () Bool)

(assert (=> b!2599075 m!2934937))

(push 1)

(assert (not start!252422))

(assert (not b!2599077))

(assert (not b!2599075))

(assert tp_is_empty!13595)

(assert (not b!2599074))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!736423 () Bool)

(declare-fun lt!915076 () Bool)

(declare-fun content!4233 (List!30058) (Set B!2315))

(assert (=> d!736423 (= lt!915076 (set.member e!9312 (content!4233 l!3217)))))

(declare-fun e!1640531 () Bool)

(assert (=> d!736423 (= lt!915076 e!1640531)))

(declare-fun res!1094511 () Bool)

(assert (=> d!736423 (=> (not res!1094511) (not e!1640531))))

(assert (=> d!736423 (= res!1094511 (is-Cons!29958 l!3217))))

(assert (=> d!736423 (= (contains!5506 l!3217 e!9312) lt!915076)))

(declare-fun b!2599098 () Bool)

(declare-fun e!1640530 () Bool)

(assert (=> b!2599098 (= e!1640531 e!1640530)))

(declare-fun res!1094510 () Bool)

(assert (=> b!2599098 (=> res!1094510 e!1640530)))

(assert (=> b!2599098 (= res!1094510 (= (h!35378 l!3217) e!9312))))

(declare-fun b!2599099 () Bool)

(assert (=> b!2599099 (= e!1640530 (contains!5506 (t!213071 l!3217) e!9312))))

(assert (= (and d!736423 res!1094511) b!2599098))

(assert (= (and b!2599098 (not res!1094510)) b!2599099))

(declare-fun m!2934945 () Bool)

(assert (=> d!736423 m!2934945))

(declare-fun m!2934947 () Bool)

(assert (=> d!736423 m!2934947))

(declare-fun m!2934949 () Bool)

(assert (=> b!2599099 m!2934949))

(assert (=> b!2599074 d!736423))

(declare-fun d!736427 () Bool)

(declare-fun res!1094518 () Bool)

(declare-fun e!1640538 () Bool)

(assert (=> d!736427 (=> res!1094518 e!1640538)))

(assert (=> d!736427 (= res!1094518 (is-Nil!29958 l!3217))))

(assert (=> d!736427 (= (noDuplicate!506 l!3217) e!1640538)))

(declare-fun b!2599106 () Bool)

(declare-fun e!1640539 () Bool)

(assert (=> b!2599106 (= e!1640538 e!1640539)))

(declare-fun res!1094519 () Bool)

(assert (=> b!2599106 (=> (not res!1094519) (not e!1640539))))

(assert (=> b!2599106 (= res!1094519 (not (contains!5506 (t!213071 l!3217) (h!35378 l!3217))))))

(declare-fun b!2599107 () Bool)

(assert (=> b!2599107 (= e!1640539 (noDuplicate!506 (t!213071 l!3217)))))

(assert (= (and d!736427 (not res!1094518)) b!2599106))

(assert (= (and b!2599106 res!1094519) b!2599107))

(declare-fun m!2934955 () Bool)

(assert (=> b!2599106 m!2934955))

(declare-fun m!2934957 () Bool)

(assert (=> b!2599107 m!2934957))

(assert (=> start!252422 d!736427))

(declare-fun d!736433 () Bool)

(assert (=> d!736433 (= (head!5903 l!3217) (h!35378 l!3217))))

(assert (=> b!2599075 d!736433))

(declare-fun b!2599116 () Bool)

(declare-fun e!1640546 () Bool)

(declare-fun tp!823609 () Bool)

(assert (=> b!2599116 (= e!1640546 (and tp_is_empty!13595 tp!823609))))

(assert (=> b!2599077 (= tp!823603 e!1640546)))

(assert (= (and b!2599077 (is-Cons!29958 (t!213071 l!3217))) b!2599116))

(push 1)

(assert (not d!736423))

(assert (not b!2599116))

(assert tp_is_empty!13595)

(assert (not b!2599099))

(assert (not b!2599107))

(assert (not b!2599106))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

