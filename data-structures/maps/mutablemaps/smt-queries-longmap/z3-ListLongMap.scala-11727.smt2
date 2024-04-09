; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!137514 () Bool)

(assert start!137514)

(declare-fun key!405 () (_ BitVec 64))

(declare-fun e!882559 () Bool)

(declare-datatypes ((B!2704 0))(
  ( (B!2705 (val!19714 Int)) )
))
(declare-fun value!194 () B!2704)

(declare-datatypes ((tuple2!25756 0))(
  ( (tuple2!25757 (_1!12888 (_ BitVec 64)) (_2!12888 B!2704)) )
))
(declare-datatypes ((List!36995 0))(
  ( (Nil!36992) (Cons!36991 (h!38535 tuple2!25756) (t!51916 List!36995)) )
))
(declare-fun l!1390 () List!36995)

(declare-fun b!1581596 () Bool)

(declare-datatypes ((Option!932 0))(
  ( (Some!931 (v!22446 B!2704)) (None!930) )
))
(declare-fun getValueByKey!826 (List!36995 (_ BitVec 64)) Option!932)

(assert (=> b!1581596 (= e!882559 (not (= (getValueByKey!826 l!1390 key!405) (Some!931 value!194))))))

(declare-fun b!1581597 () Bool)

(declare-fun e!882560 () Bool)

(assert (=> b!1581597 (= e!882560 e!882559)))

(declare-fun res!1080630 () Bool)

(assert (=> b!1581597 (=> (not res!1080630) (not e!882559))))

(declare-fun e!882558 () Bool)

(assert (=> b!1581597 (= res!1080630 e!882558)))

(declare-fun res!1080627 () Bool)

(assert (=> b!1581597 (=> res!1080627 e!882558)))

(declare-datatypes ((tuple2!25758 0))(
  ( (tuple2!25759 (_1!12889 tuple2!25756) (_2!12889 List!36995)) )
))
(declare-datatypes ((Option!933 0))(
  ( (Some!932 (v!22447 tuple2!25758)) (None!931) )
))
(declare-fun lt!676927 () Option!933)

(declare-fun isEmpty!1187 (Option!933) Bool)

(assert (=> b!1581597 (= res!1080627 (isEmpty!1187 lt!676927))))

(declare-fun unapply!101 (List!36995) Option!933)

(assert (=> b!1581597 (= lt!676927 (unapply!101 l!1390))))

(declare-fun res!1080631 () Bool)

(assert (=> start!137514 (=> (not res!1080631) (not e!882560))))

(declare-fun isStrictlySorted!1090 (List!36995) Bool)

(assert (=> start!137514 (= res!1080631 (isStrictlySorted!1090 l!1390))))

(assert (=> start!137514 e!882560))

(declare-fun e!882561 () Bool)

(assert (=> start!137514 e!882561))

(assert (=> start!137514 true))

(declare-fun tp_is_empty!39249 () Bool)

(assert (=> start!137514 tp_is_empty!39249))

(declare-fun b!1581598 () Bool)

(declare-fun tp!114601 () Bool)

(assert (=> b!1581598 (= e!882561 (and tp_is_empty!39249 tp!114601))))

(declare-fun b!1581599 () Bool)

(get-info :version)

(declare-fun get!26852 (Option!933) tuple2!25758)

(assert (=> b!1581599 (= e!882558 (not ((_ is Nil!36992) (_2!12889 (get!26852 lt!676927)))))))

(declare-fun b!1581600 () Bool)

(declare-fun res!1080632 () Bool)

(assert (=> b!1581600 (=> (not res!1080632) (not e!882559))))

(assert (=> b!1581600 (= res!1080632 (not ((_ is Cons!36991) l!1390)))))

(declare-fun b!1581601 () Bool)

(declare-fun res!1080629 () Bool)

(assert (=> b!1581601 (=> (not res!1080629) (not e!882560))))

(declare-fun containsKey!936 (List!36995 (_ BitVec 64)) Bool)

(assert (=> b!1581601 (= res!1080629 (containsKey!936 l!1390 key!405))))

(declare-fun b!1581602 () Bool)

(declare-fun res!1080628 () Bool)

(assert (=> b!1581602 (=> (not res!1080628) (not e!882560))))

(declare-fun contains!10523 (List!36995 tuple2!25756) Bool)

(assert (=> b!1581602 (= res!1080628 (contains!10523 l!1390 (tuple2!25757 key!405 value!194)))))

(assert (= (and start!137514 res!1080631) b!1581601))

(assert (= (and b!1581601 res!1080629) b!1581602))

(assert (= (and b!1581602 res!1080628) b!1581597))

(assert (= (and b!1581597 (not res!1080627)) b!1581599))

(assert (= (and b!1581597 res!1080630) b!1581600))

(assert (= (and b!1581600 res!1080632) b!1581596))

(assert (= (and start!137514 ((_ is Cons!36991) l!1390)) b!1581598))

(declare-fun m!1452487 () Bool)

(assert (=> b!1581597 m!1452487))

(declare-fun m!1452489 () Bool)

(assert (=> b!1581597 m!1452489))

(declare-fun m!1452491 () Bool)

(assert (=> b!1581601 m!1452491))

(declare-fun m!1452493 () Bool)

(assert (=> b!1581596 m!1452493))

(declare-fun m!1452495 () Bool)

(assert (=> b!1581599 m!1452495))

(declare-fun m!1452497 () Bool)

(assert (=> b!1581602 m!1452497))

(declare-fun m!1452499 () Bool)

(assert (=> start!137514 m!1452499))

(check-sat (not b!1581598) (not b!1581599) (not b!1581602) (not start!137514) (not b!1581601) tp_is_empty!39249 (not b!1581596) (not b!1581597))
(check-sat)
(get-model)

(declare-fun d!166761 () Bool)

(declare-fun res!1080661 () Bool)

(declare-fun e!882584 () Bool)

(assert (=> d!166761 (=> res!1080661 e!882584)))

(assert (=> d!166761 (= res!1080661 (and ((_ is Cons!36991) l!1390) (= (_1!12888 (h!38535 l!1390)) key!405)))))

(assert (=> d!166761 (= (containsKey!936 l!1390 key!405) e!882584)))

(declare-fun b!1581634 () Bool)

(declare-fun e!882585 () Bool)

(assert (=> b!1581634 (= e!882584 e!882585)))

(declare-fun res!1080662 () Bool)

(assert (=> b!1581634 (=> (not res!1080662) (not e!882585))))

(assert (=> b!1581634 (= res!1080662 (and (or (not ((_ is Cons!36991) l!1390)) (bvsle (_1!12888 (h!38535 l!1390)) key!405)) ((_ is Cons!36991) l!1390) (bvslt (_1!12888 (h!38535 l!1390)) key!405)))))

(declare-fun b!1581635 () Bool)

(assert (=> b!1581635 (= e!882585 (containsKey!936 (t!51916 l!1390) key!405))))

(assert (= (and d!166761 (not res!1080661)) b!1581634))

(assert (= (and b!1581634 res!1080662) b!1581635))

(declare-fun m!1452517 () Bool)

(assert (=> b!1581635 m!1452517))

(assert (=> b!1581601 d!166761))

(declare-fun b!1581660 () Bool)

(declare-fun e!882606 () Option!932)

(assert (=> b!1581660 (= e!882606 (Some!931 (_2!12888 (h!38535 l!1390))))))

(declare-fun b!1581662 () Bool)

(declare-fun e!882607 () Option!932)

(assert (=> b!1581662 (= e!882607 (getValueByKey!826 (t!51916 l!1390) key!405))))

(declare-fun b!1581663 () Bool)

(assert (=> b!1581663 (= e!882607 None!930)))

(declare-fun d!166775 () Bool)

(declare-fun c!146558 () Bool)

(assert (=> d!166775 (= c!146558 (and ((_ is Cons!36991) l!1390) (= (_1!12888 (h!38535 l!1390)) key!405)))))

(assert (=> d!166775 (= (getValueByKey!826 l!1390 key!405) e!882606)))

(declare-fun b!1581661 () Bool)

(assert (=> b!1581661 (= e!882606 e!882607)))

(declare-fun c!146559 () Bool)

(assert (=> b!1581661 (= c!146559 (and ((_ is Cons!36991) l!1390) (not (= (_1!12888 (h!38535 l!1390)) key!405))))))

(assert (= (and d!166775 c!146558) b!1581660))

(assert (= (and d!166775 (not c!146558)) b!1581661))

(assert (= (and b!1581661 c!146559) b!1581662))

(assert (= (and b!1581661 (not c!146559)) b!1581663))

(declare-fun m!1452527 () Bool)

(assert (=> b!1581662 m!1452527))

(assert (=> b!1581596 d!166775))

(declare-fun d!166783 () Bool)

(declare-fun res!1080691 () Bool)

(declare-fun e!882626 () Bool)

(assert (=> d!166783 (=> res!1080691 e!882626)))

(assert (=> d!166783 (= res!1080691 (or ((_ is Nil!36992) l!1390) ((_ is Nil!36992) (t!51916 l!1390))))))

(assert (=> d!166783 (= (isStrictlySorted!1090 l!1390) e!882626)))

(declare-fun b!1581688 () Bool)

(declare-fun e!882627 () Bool)

(assert (=> b!1581688 (= e!882626 e!882627)))

(declare-fun res!1080692 () Bool)

(assert (=> b!1581688 (=> (not res!1080692) (not e!882627))))

(assert (=> b!1581688 (= res!1080692 (bvslt (_1!12888 (h!38535 l!1390)) (_1!12888 (h!38535 (t!51916 l!1390)))))))

(declare-fun b!1581689 () Bool)

(assert (=> b!1581689 (= e!882627 (isStrictlySorted!1090 (t!51916 l!1390)))))

(assert (= (and d!166783 (not res!1080691)) b!1581688))

(assert (= (and b!1581688 res!1080692) b!1581689))

(declare-fun m!1452535 () Bool)

(assert (=> b!1581689 m!1452535))

(assert (=> start!137514 d!166783))

(declare-fun d!166789 () Bool)

(declare-fun lt!676939 () Bool)

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!857 (List!36995) (InoxSet tuple2!25756))

(assert (=> d!166789 (= lt!676939 (select (content!857 l!1390) (tuple2!25757 key!405 value!194)))))

(declare-fun e!882641 () Bool)

(assert (=> d!166789 (= lt!676939 e!882641)))

(declare-fun res!1080704 () Bool)

(assert (=> d!166789 (=> (not res!1080704) (not e!882641))))

(assert (=> d!166789 (= res!1080704 ((_ is Cons!36991) l!1390))))

(assert (=> d!166789 (= (contains!10523 l!1390 (tuple2!25757 key!405 value!194)) lt!676939)))

(declare-fun b!1581705 () Bool)

(declare-fun e!882642 () Bool)

(assert (=> b!1581705 (= e!882641 e!882642)))

(declare-fun res!1080703 () Bool)

(assert (=> b!1581705 (=> res!1080703 e!882642)))

(assert (=> b!1581705 (= res!1080703 (= (h!38535 l!1390) (tuple2!25757 key!405 value!194)))))

