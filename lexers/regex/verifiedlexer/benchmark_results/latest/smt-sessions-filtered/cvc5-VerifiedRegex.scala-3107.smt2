; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!184032 () Bool)

(assert start!184032)

(declare-fun b_free!51575 () Bool)

(declare-fun b_next!52279 () Bool)

(assert (=> start!184032 (= b_free!51575 (not b_next!52279))))

(declare-fun tp!521914 () Bool)

(declare-fun b_and!143729 () Bool)

(assert (=> start!184032 (= tp!521914 b_and!143729)))

(declare-fun res!828798 () Bool)

(declare-fun e!1179489 () Bool)

(assert (=> start!184032 (=> (not res!828798) (not e!1179489))))

(declare-datatypes ((A!429 0))(
  ( (A!430 (val!5765 Int)) )
))
(declare-fun a!855 () A!429)

(declare-datatypes ((B!1587 0))(
  ( (B!1588 (val!5766 Int)) )
))
(declare-datatypes ((List!20433 0))(
  ( (Nil!20361) (Cons!20361 (h!25762 B!1587) (t!172062 List!20433)) )
))
(declare-fun l!2946 () List!20433)

(declare-fun f!1069 () Int)

(declare-datatypes ((List!20434 0))(
  ( (Nil!20362) (Cons!20362 (h!25763 A!429) (t!172063 List!20434)) )
))
(declare-fun contains!3743 (List!20434 A!429) Bool)

(declare-fun map!4270 (List!20433 Int) List!20434)

(assert (=> start!184032 (= res!828798 (contains!3743 (map!4270 l!2946 f!1069) a!855))))

(assert (=> start!184032 e!1179489))

(declare-fun e!1179490 () Bool)

(assert (=> start!184032 e!1179490))

(assert (=> start!184032 tp!521914))

(declare-fun tp_is_empty!8379 () Bool)

(assert (=> start!184032 tp_is_empty!8379))

(declare-fun b!1845572 () Bool)

(declare-fun ListPrimitiveSize!127 (List!20433) Int)

(assert (=> b!1845572 (= e!1179489 (< (ListPrimitiveSize!127 l!2946) 0))))

(declare-fun b!1845573 () Bool)

(declare-fun tp_is_empty!8377 () Bool)

(declare-fun tp!521915 () Bool)

(assert (=> b!1845573 (= e!1179490 (and tp_is_empty!8377 tp!521915))))

(assert (= (and start!184032 res!828798) b!1845572))

(assert (= (and start!184032 (is-Cons!20361 l!2946)) b!1845573))

(declare-fun m!2273943 () Bool)

(assert (=> start!184032 m!2273943))

(assert (=> start!184032 m!2273943))

(declare-fun m!2273945 () Bool)

(assert (=> start!184032 m!2273945))

(declare-fun m!2273947 () Bool)

(assert (=> b!1845572 m!2273947))

(push 1)

(assert tp_is_empty!8377)

(assert b_and!143729)

(assert (not start!184032))

(assert tp_is_empty!8379)

(assert (not b!1845573))

(assert (not b_next!52279))

(assert (not b!1845572))

(check-sat)

(pop 1)

(push 1)

(assert b_and!143729)

(assert (not b_next!52279))

(check-sat)

(get-model)

(pop 1)

(declare-fun d!564888 () Bool)

(declare-fun lt!714771 () Int)

(assert (=> d!564888 (>= lt!714771 0)))

(declare-fun e!1179499 () Int)

(assert (=> d!564888 (= lt!714771 e!1179499)))

(declare-fun c!301313 () Bool)

(assert (=> d!564888 (= c!301313 (is-Nil!20361 l!2946))))

(assert (=> d!564888 (= (ListPrimitiveSize!127 l!2946) lt!714771)))

(declare-fun b!1845584 () Bool)

(assert (=> b!1845584 (= e!1179499 0)))

(declare-fun b!1845585 () Bool)

(assert (=> b!1845585 (= e!1179499 (+ 1 (ListPrimitiveSize!127 (t!172062 l!2946))))))

(assert (= (and d!564888 c!301313) b!1845584))

(assert (= (and d!564888 (not c!301313)) b!1845585))

(declare-fun m!2273955 () Bool)

(assert (=> b!1845585 m!2273955))

(assert (=> b!1845572 d!564888))

(declare-fun lt!714777 () Bool)

(declare-fun d!564890 () Bool)

(declare-fun content!3027 (List!20434) (Set A!429))

(assert (=> d!564890 (= lt!714777 (set.member a!855 (content!3027 (map!4270 l!2946 f!1069))))))

(declare-fun e!1179507 () Bool)

(assert (=> d!564890 (= lt!714777 e!1179507)))

(declare-fun res!828806 () Bool)

(assert (=> d!564890 (=> (not res!828806) (not e!1179507))))

(assert (=> d!564890 (= res!828806 (is-Cons!20362 (map!4270 l!2946 f!1069)))))

(assert (=> d!564890 (= (contains!3743 (map!4270 l!2946 f!1069) a!855) lt!714777)))

(declare-fun b!1845596 () Bool)

(declare-fun e!1179508 () Bool)

(assert (=> b!1845596 (= e!1179507 e!1179508)))

(declare-fun res!828807 () Bool)

(assert (=> b!1845596 (=> res!828807 e!1179508)))

(assert (=> b!1845596 (= res!828807 (= (h!25763 (map!4270 l!2946 f!1069)) a!855))))

(declare-fun b!1845597 () Bool)

(assert (=> b!1845597 (= e!1179508 (contains!3743 (t!172063 (map!4270 l!2946 f!1069)) a!855))))

(assert (= (and d!564890 res!828806) b!1845596))

(assert (= (and b!1845596 (not res!828807)) b!1845597))

(assert (=> d!564890 m!2273943))

(declare-fun m!2273959 () Bool)

(assert (=> d!564890 m!2273959))

(declare-fun m!2273961 () Bool)

(assert (=> d!564890 m!2273961))

(declare-fun m!2273963 () Bool)

(assert (=> b!1845597 m!2273963))

(assert (=> start!184032 d!564890))

(declare-fun d!564896 () Bool)

(declare-fun lt!714783 () List!20434)

(declare-fun size!16112 (List!20434) Int)

(declare-fun size!16113 (List!20433) Int)

(assert (=> d!564896 (= (size!16112 lt!714783) (size!16113 l!2946))))

(declare-fun e!1179517 () List!20434)

(assert (=> d!564896 (= lt!714783 e!1179517)))

(declare-fun c!301319 () Bool)

(assert (=> d!564896 (= c!301319 (is-Nil!20361 l!2946))))

(assert (=> d!564896 (= (map!4270 l!2946 f!1069) lt!714783)))

(declare-fun b!1845608 () Bool)

(assert (=> b!1845608 (= e!1179517 Nil!20362)))

(declare-fun b!1845609 () Bool)

(declare-fun $colon$colon!475 (List!20434 A!429) List!20434)

(declare-fun dynLambda!10116 (Int B!1587) A!429)

(assert (=> b!1845609 (= e!1179517 ($colon$colon!475 (map!4270 (t!172062 l!2946) f!1069) (dynLambda!10116 f!1069 (h!25762 l!2946))))))

(assert (= (and d!564896 c!301319) b!1845608))

(assert (= (and d!564896 (not c!301319)) b!1845609))

(declare-fun b_lambda!61209 () Bool)

(assert (=> (not b_lambda!61209) (not b!1845609)))

(declare-fun t!172067 () Bool)

(declare-fun tb!112829 () Bool)

(assert (=> (and start!184032 (= f!1069 f!1069) t!172067) tb!112829))

(declare-fun result!135896 () Bool)

(assert (=> tb!112829 (= result!135896 tp_is_empty!8379)))

(assert (=> b!1845609 t!172067))

(declare-fun b_and!143733 () Bool)

(assert (= b_and!143729 (and (=> t!172067 result!135896) b_and!143733)))

(declare-fun m!2273971 () Bool)

(assert (=> d!564896 m!2273971))

(declare-fun m!2273973 () Bool)

(assert (=> d!564896 m!2273973))

(declare-fun m!2273975 () Bool)

(assert (=> b!1845609 m!2273975))

(declare-fun m!2273977 () Bool)

(assert (=> b!1845609 m!2273977))

(assert (=> b!1845609 m!2273975))

(assert (=> b!1845609 m!2273977))

(declare-fun m!2273979 () Bool)

(assert (=> b!1845609 m!2273979))

(assert (=> start!184032 d!564896))

(declare-fun b!1845616 () Bool)

(declare-fun e!1179520 () Bool)

(declare-fun tp!521924 () Bool)

(assert (=> b!1845616 (= e!1179520 (and tp_is_empty!8377 tp!521924))))

(assert (=> b!1845573 (= tp!521915 e!1179520)))

(assert (= (and b!1845573 (is-Cons!20361 (t!172062 l!2946))) b!1845616))

(declare-fun b_lambda!61211 () Bool)

(assert (= b_lambda!61209 (or (and start!184032 b_free!51575) b_lambda!61211)))

(push 1)

(assert tp_is_empty!8377)

(assert (not b!1845616))

(assert (not b!1845585))

(assert (not b_lambda!61211))

(assert tp_is_empty!8379)

(assert b_and!143733)

(assert (not b_next!52279))

(assert (not d!564890))

(assert (not d!564896))

(assert (not b!1845597))

(assert (not b!1845609))

(check-sat)

(pop 1)

(push 1)

(assert b_and!143733)

(assert (not b_next!52279))

(check-sat)

(pop 1)

