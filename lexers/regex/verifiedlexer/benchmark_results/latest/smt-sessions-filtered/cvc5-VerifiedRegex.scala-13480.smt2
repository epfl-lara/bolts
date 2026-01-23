; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!727914 () Bool)

(assert start!727914)

(declare-fun b_free!134427 () Bool)

(declare-fun b_next!135217 () Bool)

(assert (=> start!727914 (= b_free!134427 (not b_next!135217))))

(declare-fun tp!2184238 () Bool)

(declare-fun b_and!352215 () Bool)

(assert (=> start!727914 (= tp!2184238 b_and!352215)))

(declare-fun b!7520132 () Bool)

(assert (=> b!7520132 true))

(declare-fun order!29749 () Int)

(declare-fun p!2194 () Int)

(declare-fun lambda!466346 () Int)

(declare-fun dynLambda!29871 (Int Int) Int)

(assert (=> b!7520132 (< (dynLambda!29871 order!29749 p!2194) (dynLambda!29871 order!29749 lambda!466346))))

(declare-fun b!7520126 () Bool)

(declare-fun res!3014320 () Bool)

(declare-fun e!4482879 () Bool)

(assert (=> b!7520126 (=> (not res!3014320) (not e!4482879))))

(declare-datatypes ((B!3963 0))(
  ( (B!3964 (val!30357 Int)) )
))
(declare-datatypes ((List!72665 0))(
  ( (Nil!72541) (Cons!72541 (h!78989 B!3963) (t!387344 List!72665)) )
))
(declare-fun l!3837 () List!72665)

(declare-fun forall!18395 (List!72665 Int) Bool)

(assert (=> b!7520126 (= res!3014320 (not (forall!18395 (t!387344 l!3837) p!2194)))))

(declare-fun b!7520127 () Bool)

(declare-fun e!4482878 () Bool)

(declare-fun tp_is_empty!49873 () Bool)

(declare-fun tp!2184237 () Bool)

(assert (=> b!7520127 (= e!4482878 (and tp_is_empty!49873 tp!2184237))))

(declare-fun b!7520128 () Bool)

(declare-fun e!4482880 () Bool)

(declare-fun dynLambda!29872 (Int B!3963) Bool)

(assert (=> b!7520128 (= e!4482880 (dynLambda!29872 p!2194 (h!78989 l!3837)))))

(declare-fun b!7520129 () Bool)

(declare-fun res!3014318 () Bool)

(assert (=> b!7520129 (=> (not res!3014318) (not e!4482879))))

(assert (=> b!7520129 (= res!3014318 e!4482880)))

(declare-fun res!3014319 () Bool)

(assert (=> b!7520129 (=> res!3014319 e!4482880)))

(assert (=> b!7520129 (= res!3014319 (not (is-Cons!72541 l!3837)))))

(declare-fun b!7520130 () Bool)

(declare-fun res!3014317 () Bool)

(assert (=> b!7520130 (=> (not res!3014317) (not e!4482879))))

(assert (=> b!7520130 (= res!3014317 (dynLambda!29872 p!2194 (h!78989 l!3837)))))

(declare-fun res!3014316 () Bool)

(assert (=> start!727914 (=> (not res!3014316) (not e!4482879))))

(assert (=> start!727914 (= res!3014316 (not (forall!18395 l!3837 p!2194)))))

(assert (=> start!727914 e!4482879))

(assert (=> start!727914 e!4482878))

(assert (=> start!727914 tp!2184238))

(declare-fun b!7520131 () Bool)

(declare-fun res!3014321 () Bool)

(assert (=> b!7520131 (=> (not res!3014321) (not e!4482879))))

(assert (=> b!7520131 (= res!3014321 (is-Cons!72541 l!3837))))

(declare-fun exists!4946 (List!72665 Int) Bool)

(assert (=> b!7520132 (= e!4482879 (not (exists!4946 l!3837 lambda!466346)))))

(assert (=> b!7520132 (exists!4946 (t!387344 l!3837) lambda!466346)))

(declare-datatypes ((Unit!166523 0))(
  ( (Unit!166524) )
))
(declare-fun lt!2638583 () Unit!166523)

(declare-fun lemmaNotForallThenExists!516 (List!72665 Int) Unit!166523)

(assert (=> b!7520132 (= lt!2638583 (lemmaNotForallThenExists!516 (t!387344 l!3837) p!2194))))

(assert (= (and start!727914 res!3014316) b!7520129))

(assert (= (and b!7520129 (not res!3014319)) b!7520128))

(assert (= (and b!7520129 res!3014318) b!7520131))

(assert (= (and b!7520131 res!3014321) b!7520130))

(assert (= (and b!7520130 res!3014317) b!7520126))

(assert (= (and b!7520126 res!3014320) b!7520132))

(assert (= (and start!727914 (is-Cons!72541 l!3837)) b!7520127))

(declare-fun b_lambda!288649 () Bool)

(assert (=> (not b_lambda!288649) (not b!7520128)))

(declare-fun t!387343 () Bool)

(declare-fun tb!262559 () Bool)

(assert (=> (and start!727914 (= p!2194 p!2194) t!387343) tb!262559))

(declare-fun result!356412 () Bool)

(assert (=> tb!262559 (= result!356412 true)))

(assert (=> b!7520128 t!387343))

(declare-fun b_and!352217 () Bool)

(assert (= b_and!352215 (and (=> t!387343 result!356412) b_and!352217)))

(declare-fun b_lambda!288651 () Bool)

(assert (=> (not b_lambda!288651) (not b!7520130)))

(assert (=> b!7520130 t!387343))

(declare-fun b_and!352219 () Bool)

(assert (= b_and!352217 (and (=> t!387343 result!356412) b_and!352219)))

(declare-fun m!8099868 () Bool)

(assert (=> start!727914 m!8099868))

(declare-fun m!8099870 () Bool)

(assert (=> b!7520132 m!8099870))

(declare-fun m!8099872 () Bool)

(assert (=> b!7520132 m!8099872))

(declare-fun m!8099874 () Bool)

(assert (=> b!7520132 m!8099874))

(declare-fun m!8099876 () Bool)

(assert (=> b!7520128 m!8099876))

(assert (=> b!7520130 m!8099876))

(declare-fun m!8099878 () Bool)

(assert (=> b!7520126 m!8099878))

(push 1)

(assert (not b_lambda!288649))

(assert (not b_next!135217))

(assert tp_is_empty!49873)

(assert (not b!7520132))

(assert b_and!352219)

(assert (not b!7520126))

(assert (not b!7520127))

(assert (not b_lambda!288651))

(assert (not start!727914))

(check-sat)

(pop 1)

(push 1)

(assert b_and!352219)

(assert (not b_next!135217))

(check-sat)

(get-model)

(pop 1)

(declare-fun b_lambda!288657 () Bool)

(assert (= b_lambda!288649 (or (and start!727914 b_free!134427) b_lambda!288657)))

(declare-fun b_lambda!288659 () Bool)

(assert (= b_lambda!288651 (or (and start!727914 b_free!134427) b_lambda!288659)))

(push 1)

(assert (not start!727914))

(assert (not b_next!135217))

(assert tp_is_empty!49873)

(assert b_and!352219)

(assert (not b!7520126))

(assert (not b!7520132))

(assert (not b_lambda!288659))

(assert (not b!7520127))

(assert (not b_lambda!288657))

(check-sat)

(pop 1)

(push 1)

(assert b_and!352219)

(assert (not b_next!135217))

(check-sat)

(get-model)

(pop 1)

(declare-fun d!2308775 () Bool)

(declare-fun res!3014344 () Bool)

(declare-fun e!4482898 () Bool)

(assert (=> d!2308775 (=> res!3014344 e!4482898)))

(assert (=> d!2308775 (= res!3014344 (is-Nil!72541 (t!387344 l!3837)))))

(assert (=> d!2308775 (= (forall!18395 (t!387344 l!3837) p!2194) e!4482898)))

(declare-fun b!7520162 () Bool)

(declare-fun e!4482899 () Bool)

(assert (=> b!7520162 (= e!4482898 e!4482899)))

(declare-fun res!3014345 () Bool)

(assert (=> b!7520162 (=> (not res!3014345) (not e!4482899))))

(assert (=> b!7520162 (= res!3014345 (dynLambda!29872 p!2194 (h!78989 (t!387344 l!3837))))))

(declare-fun b!7520163 () Bool)

(assert (=> b!7520163 (= e!4482899 (forall!18395 (t!387344 (t!387344 l!3837)) p!2194))))

(assert (= (and d!2308775 (not res!3014344)) b!7520162))

(assert (= (and b!7520162 res!3014345) b!7520163))

(declare-fun b_lambda!288665 () Bool)

(assert (=> (not b_lambda!288665) (not b!7520162)))

(declare-fun t!387349 () Bool)

(declare-fun tb!262563 () Bool)

(assert (=> (and start!727914 (= p!2194 p!2194) t!387349) tb!262563))

(declare-fun result!356416 () Bool)

(assert (=> tb!262563 (= result!356416 true)))

(assert (=> b!7520162 t!387349))

(declare-fun b_and!352227 () Bool)

(assert (= b_and!352219 (and (=> t!387349 result!356416) b_and!352227)))

(declare-fun m!8099892 () Bool)

(assert (=> b!7520162 m!8099892))

(declare-fun m!8099894 () Bool)

(assert (=> b!7520163 m!8099894))

(assert (=> b!7520126 d!2308775))

(declare-fun bs!1939533 () Bool)

(declare-fun d!2308777 () Bool)

(assert (= bs!1939533 (and d!2308777 b!7520132)))

(declare-fun lambda!466354 () Int)

(assert (=> bs!1939533 (= (= lambda!466346 p!2194) (= lambda!466354 lambda!466346))))

(assert (=> d!2308777 true))

(assert (=> d!2308777 (< (dynLambda!29871 order!29749 lambda!466346) (dynLambda!29871 order!29749 lambda!466354))))

(assert (=> d!2308777 (= (exists!4946 l!3837 lambda!466346) (not (forall!18395 l!3837 lambda!466354)))))

(declare-fun bs!1939534 () Bool)

(assert (= bs!1939534 d!2308777))

(declare-fun m!8099896 () Bool)

(assert (=> bs!1939534 m!8099896))

(assert (=> b!7520132 d!2308777))

(declare-fun bs!1939535 () Bool)

(declare-fun d!2308779 () Bool)

(assert (= bs!1939535 (and d!2308779 b!7520132)))

(declare-fun lambda!466355 () Int)

(assert (=> bs!1939535 (= (= lambda!466346 p!2194) (= lambda!466355 lambda!466346))))

(declare-fun bs!1939536 () Bool)

(assert (= bs!1939536 (and d!2308779 d!2308777)))

(assert (=> bs!1939536 (= lambda!466355 lambda!466354)))

(assert (=> d!2308779 true))

(assert (=> d!2308779 (< (dynLambda!29871 order!29749 lambda!466346) (dynLambda!29871 order!29749 lambda!466355))))

(assert (=> d!2308779 (= (exists!4946 (t!387344 l!3837) lambda!466346) (not (forall!18395 (t!387344 l!3837) lambda!466355)))))

(declare-fun bs!1939537 () Bool)

(assert (= bs!1939537 d!2308779))

(declare-fun m!8099898 () Bool)

(assert (=> bs!1939537 m!8099898))

(assert (=> b!7520132 d!2308779))

(declare-fun bs!1939538 () Bool)

(declare-fun d!2308781 () Bool)

(assert (= bs!1939538 (and d!2308781 b!7520132)))

(declare-fun lambda!466358 () Int)

(assert (=> bs!1939538 (= lambda!466358 lambda!466346)))

(declare-fun bs!1939539 () Bool)

(assert (= bs!1939539 (and d!2308781 d!2308777)))

(assert (=> bs!1939539 (= (= p!2194 lambda!466346) (= lambda!466358 lambda!466354))))

(declare-fun bs!1939540 () Bool)

(assert (= bs!1939540 (and d!2308781 d!2308779)))

(assert (=> bs!1939540 (= (= p!2194 lambda!466346) (= lambda!466358 lambda!466355))))

(assert (=> d!2308781 true))

(assert (=> d!2308781 (< (dynLambda!29871 order!29749 p!2194) (dynLambda!29871 order!29749 lambda!466358))))

(assert (=> d!2308781 (exists!4946 (t!387344 l!3837) lambda!466358)))

(declare-fun lt!2638589 () Unit!166523)

(declare-fun choose!58257 (List!72665 Int) Unit!166523)

(assert (=> d!2308781 (= lt!2638589 (choose!58257 (t!387344 l!3837) p!2194))))

(assert (=> d!2308781 (not (forall!18395 (t!387344 l!3837) p!2194))))

(assert (=> d!2308781 (= (lemmaNotForallThenExists!516 (t!387344 l!3837) p!2194) lt!2638589)))

(declare-fun bs!1939541 () Bool)

(assert (= bs!1939541 d!2308781))

(declare-fun m!8099900 () Bool)

(assert (=> bs!1939541 m!8099900))

(declare-fun m!8099902 () Bool)

(assert (=> bs!1939541 m!8099902))

(assert (=> bs!1939541 m!8099878))

(assert (=> b!7520132 d!2308781))

(declare-fun d!2308783 () Bool)

(declare-fun res!3014346 () Bool)

(declare-fun e!4482902 () Bool)

(assert (=> d!2308783 (=> res!3014346 e!4482902)))

(assert (=> d!2308783 (= res!3014346 (is-Nil!72541 l!3837))))

(assert (=> d!2308783 (= (forall!18395 l!3837 p!2194) e!4482902)))

(declare-fun b!7520164 () Bool)

(declare-fun e!4482903 () Bool)

(assert (=> b!7520164 (= e!4482902 e!4482903)))

(declare-fun res!3014347 () Bool)

(assert (=> b!7520164 (=> (not res!3014347) (not e!4482903))))

(assert (=> b!7520164 (= res!3014347 (dynLambda!29872 p!2194 (h!78989 l!3837)))))

(declare-fun b!7520165 () Bool)

(assert (=> b!7520165 (= e!4482903 (forall!18395 (t!387344 l!3837) p!2194))))

(assert (= (and d!2308783 (not res!3014346)) b!7520164))

(assert (= (and b!7520164 res!3014347) b!7520165))

(declare-fun b_lambda!288667 () Bool)

(assert (=> (not b_lambda!288667) (not b!7520164)))

(assert (=> b!7520164 t!387343))

(declare-fun b_and!352229 () Bool)

(assert (= b_and!352227 (and (=> t!387343 result!356412) b_and!352229)))

(assert (=> b!7520164 m!8099876))

(assert (=> b!7520165 m!8099878))

(assert (=> start!727914 d!2308783))

(declare-fun b!7520170 () Bool)

(declare-fun e!4482906 () Bool)

(declare-fun tp!2184247 () Bool)

(assert (=> b!7520170 (= e!4482906 (and tp_is_empty!49873 tp!2184247))))

(assert (=> b!7520127 (= tp!2184237 e!4482906)))

(assert (= (and b!7520127 (is-Cons!72541 (t!387344 l!3837))) b!7520170))

(declare-fun b_lambda!288669 () Bool)

(assert (= b_lambda!288665 (or (and start!727914 b_free!134427) (and d!2308777 (= lambda!466354 p!2194)) (and d!2308779 (= lambda!466355 p!2194)) (and d!2308781 (= lambda!466358 p!2194)) b_lambda!288669)))

(declare-fun bs!1939542 () Bool)

(declare-fun d!2308787 () Bool)

(assert (= bs!1939542 (and d!2308787 d!2308777)))

(assert (=> bs!1939542 (= (dynLambda!29872 lambda!466354 (h!78989 (t!387344 l!3837))) (not (dynLambda!29872 lambda!466346 (h!78989 (t!387344 l!3837)))))))

(declare-fun b_lambda!288673 () Bool)

(assert (=> (not b_lambda!288673) (not bs!1939542)))

(declare-fun m!8099904 () Bool)

(assert (=> bs!1939542 m!8099904))

(assert (=> (and d!2308777 (= lambda!466354 p!2194) b!7520162) d!2308787))

(declare-fun bs!1939543 () Bool)

(declare-fun d!2308789 () Bool)

(assert (= bs!1939543 (and d!2308789 d!2308779)))

(assert (=> bs!1939543 (= (dynLambda!29872 lambda!466355 (h!78989 (t!387344 l!3837))) (not (dynLambda!29872 lambda!466346 (h!78989 (t!387344 l!3837)))))))

(declare-fun b_lambda!288675 () Bool)

(assert (=> (not b_lambda!288675) (not bs!1939543)))

(assert (=> bs!1939543 m!8099904))

(assert (=> (and d!2308779 (= lambda!466355 p!2194) b!7520162) d!2308789))

(declare-fun bs!1939544 () Bool)

(declare-fun d!2308791 () Bool)

(assert (= bs!1939544 (and d!2308791 d!2308781)))

(assert (=> bs!1939544 (= (dynLambda!29872 lambda!466358 (h!78989 (t!387344 l!3837))) (not (dynLambda!29872 p!2194 (h!78989 (t!387344 l!3837)))))))

(declare-fun b_lambda!288677 () Bool)

(assert (=> (not b_lambda!288677) (not bs!1939544)))

(assert (=> bs!1939544 t!387349))

(declare-fun b_and!352231 () Bool)

(assert (= b_and!352229 (and (=> t!387349 result!356416) b_and!352231)))

(assert (=> bs!1939544 m!8099892))

(assert (=> (and d!2308781 (= lambda!466358 p!2194) b!7520162) d!2308791))

(declare-fun b_lambda!288671 () Bool)

(assert (= b_lambda!288667 (or (and start!727914 b_free!134427) b_lambda!288671)))

(push 1)

(assert (not b_lambda!288671))

(assert (not d!2308781))

(assert (not d!2308779))

(assert (not b_next!135217))

(assert tp_is_empty!49873)

(assert (not b!7520165))

(assert b_and!352231)

(assert (not b_lambda!288659))

(assert (not b_lambda!288677))

(assert (not b!7520170))

(assert (not b_lambda!288657))

(assert (not b_lambda!288673))

(assert (not b_lambda!288669))

(assert (not b_lambda!288675))

(assert (not b!7520163))

(assert (not d!2308777))

(check-sat)

(pop 1)

(push 1)

(assert b_and!352231)

(assert (not b_next!135217))

(check-sat)

(get-model)

(pop 1)

(declare-fun b_lambda!288693 () Bool)

(assert (= b_lambda!288673 (or b!7520132 b_lambda!288693)))

(declare-fun bs!1939557 () Bool)

(declare-fun d!2308807 () Bool)

(assert (= bs!1939557 (and d!2308807 b!7520132)))

(assert (=> bs!1939557 (= (dynLambda!29872 lambda!466346 (h!78989 (t!387344 l!3837))) (not (dynLambda!29872 p!2194 (h!78989 (t!387344 l!3837)))))))

(declare-fun b_lambda!288699 () Bool)

(assert (=> (not b_lambda!288699) (not bs!1939557)))

(assert (=> bs!1939557 t!387349))

(declare-fun b_and!352239 () Bool)

(assert (= b_and!352231 (and (=> t!387349 result!356416) b_and!352239)))

(assert (=> bs!1939557 m!8099892))

(assert (=> bs!1939542 d!2308807))

(declare-fun b_lambda!288695 () Bool)

(assert (= b_lambda!288675 (or b!7520132 b_lambda!288695)))

(assert (=> bs!1939543 d!2308807))

(declare-fun b_lambda!288697 () Bool)

(assert (= b_lambda!288677 (or (and start!727914 b_free!134427) b_lambda!288697)))

(push 1)

(assert (not b_lambda!288693))

(assert (not b_lambda!288671))

(assert (not b_lambda!288699))

(assert (not d!2308781))

(assert (not b_next!135217))

(assert tp_is_empty!49873)

(assert (not b!7520165))

(assert (not b_lambda!288659))

(assert (not b_lambda!288669))

(assert (not b_lambda!288695))

(assert (not b_lambda!288657))

(assert (not b_lambda!288697))

(assert (not d!2308779))

(assert (not b!7520163))

(assert (not d!2308777))

(assert (not b!7520170))

(assert b_and!352239)

(check-sat)

(pop 1)

(push 1)

(assert b_and!352239)

(assert (not b_next!135217))

(check-sat)

(get-model)

(pop 1)

(declare-fun b_lambda!288701 () Bool)

(assert (= b_lambda!288699 (or (and start!727914 b_free!134427) b_lambda!288701)))

(push 1)

(assert (not b_lambda!288693))

(assert (not b_lambda!288671))

(assert (not d!2308781))

(assert (not b_next!135217))

(assert tp_is_empty!49873)

(assert (not b!7520165))

(assert (not b_lambda!288659))

(assert (not b_lambda!288669))

(assert (not b_lambda!288695))

(assert (not b_lambda!288657))

(assert (not b_lambda!288701))

(assert (not b_lambda!288697))

(assert (not d!2308779))

(assert (not b!7520163))

(assert (not d!2308777))

(assert (not b!7520170))

(assert b_and!352239)

(check-sat)

(pop 1)

(push 1)

(assert b_and!352239)

(assert (not b_next!135217))

(check-sat)

(get-model)

(pop 1)

(declare-fun d!2308811 () Bool)

(declare-fun res!3014356 () Bool)

(declare-fun e!4482920 () Bool)

(assert (=> d!2308811 (=> res!3014356 e!4482920)))

(assert (=> d!2308811 (= res!3014356 (is-Nil!72541 (t!387344 (t!387344 l!3837))))))

(assert (=> d!2308811 (= (forall!18395 (t!387344 (t!387344 l!3837)) p!2194) e!4482920)))

(declare-fun b!7520184 () Bool)

(declare-fun e!4482921 () Bool)

(assert (=> b!7520184 (= e!4482920 e!4482921)))

(declare-fun res!3014357 () Bool)

(assert (=> b!7520184 (=> (not res!3014357) (not e!4482921))))

(assert (=> b!7520184 (= res!3014357 (dynLambda!29872 p!2194 (h!78989 (t!387344 (t!387344 l!3837)))))))

(declare-fun b!7520185 () Bool)

(assert (=> b!7520185 (= e!4482921 (forall!18395 (t!387344 (t!387344 (t!387344 l!3837))) p!2194))))

(assert (= (and d!2308811 (not res!3014356)) b!7520184))

(assert (= (and b!7520184 res!3014357) b!7520185))

(declare-fun b_lambda!288711 () Bool)

(assert (=> (not b_lambda!288711) (not b!7520184)))

(declare-fun t!387353 () Bool)

(declare-fun tb!262567 () Bool)

(assert (=> (and start!727914 (= p!2194 p!2194) t!387353) tb!262567))

(declare-fun result!356424 () Bool)

(assert (=> tb!262567 (= result!356424 true)))

(assert (=> b!7520184 t!387353))

(declare-fun b_and!352243 () Bool)

(assert (= b_and!352239 (and (=> t!387353 result!356424) b_and!352243)))

(declare-fun m!8099920 () Bool)

(assert (=> b!7520184 m!8099920))

(declare-fun m!8099922 () Bool)

(assert (=> b!7520185 m!8099922))

(assert (=> b!7520163 d!2308811))

(declare-fun d!2308813 () Bool)

(declare-fun res!3014358 () Bool)

(declare-fun e!4482922 () Bool)

(assert (=> d!2308813 (=> res!3014358 e!4482922)))

(assert (=> d!2308813 (= res!3014358 (is-Nil!72541 l!3837))))

(assert (=> d!2308813 (= (forall!18395 l!3837 lambda!466354) e!4482922)))

(declare-fun b!7520186 () Bool)

(declare-fun e!4482923 () Bool)

(assert (=> b!7520186 (= e!4482922 e!4482923)))

(declare-fun res!3014359 () Bool)

(assert (=> b!7520186 (=> (not res!3014359) (not e!4482923))))

(assert (=> b!7520186 (= res!3014359 (dynLambda!29872 lambda!466354 (h!78989 l!3837)))))

(declare-fun b!7520187 () Bool)

(assert (=> b!7520187 (= e!4482923 (forall!18395 (t!387344 l!3837) lambda!466354))))

(assert (= (and d!2308813 (not res!3014358)) b!7520186))

(assert (= (and b!7520186 res!3014359) b!7520187))

(declare-fun b_lambda!288713 () Bool)

(assert (=> (not b_lambda!288713) (not b!7520186)))

(declare-fun m!8099924 () Bool)

(assert (=> b!7520186 m!8099924))

(declare-fun m!8099926 () Bool)

(assert (=> b!7520187 m!8099926))

(assert (=> d!2308777 d!2308813))

(declare-fun d!2308815 () Bool)

(declare-fun res!3014360 () Bool)

(declare-fun e!4482924 () Bool)

(assert (=> d!2308815 (=> res!3014360 e!4482924)))

(assert (=> d!2308815 (= res!3014360 (is-Nil!72541 (t!387344 l!3837)))))

(assert (=> d!2308815 (= (forall!18395 (t!387344 l!3837) lambda!466355) e!4482924)))

(declare-fun b!7520188 () Bool)

(declare-fun e!4482925 () Bool)

(assert (=> b!7520188 (= e!4482924 e!4482925)))

(declare-fun res!3014361 () Bool)

(assert (=> b!7520188 (=> (not res!3014361) (not e!4482925))))

(assert (=> b!7520188 (= res!3014361 (dynLambda!29872 lambda!466355 (h!78989 (t!387344 l!3837))))))

(declare-fun b!7520189 () Bool)

(assert (=> b!7520189 (= e!4482925 (forall!18395 (t!387344 (t!387344 l!3837)) lambda!466355))))

(assert (= (and d!2308815 (not res!3014360)) b!7520188))

(assert (= (and b!7520188 res!3014361) b!7520189))

(declare-fun b_lambda!288715 () Bool)

(assert (=> (not b_lambda!288715) (not b!7520188)))

(declare-fun m!8099928 () Bool)

(assert (=> b!7520188 m!8099928))

(declare-fun m!8099930 () Bool)

(assert (=> b!7520189 m!8099930))

(assert (=> d!2308779 d!2308815))

(assert (=> b!7520165 d!2308775))

(declare-fun bs!1939559 () Bool)

(declare-fun d!2308817 () Bool)

(assert (= bs!1939559 (and d!2308817 b!7520132)))

(declare-fun lambda!466366 () Int)

(assert (=> bs!1939559 (= (= lambda!466358 p!2194) (= lambda!466366 lambda!466346))))

(declare-fun bs!1939560 () Bool)

(assert (= bs!1939560 (and d!2308817 d!2308777)))

(assert (=> bs!1939560 (= (= lambda!466358 lambda!466346) (= lambda!466366 lambda!466354))))

(declare-fun bs!1939561 () Bool)

(assert (= bs!1939561 (and d!2308817 d!2308779)))

(assert (=> bs!1939561 (= (= lambda!466358 lambda!466346) (= lambda!466366 lambda!466355))))

(declare-fun bs!1939562 () Bool)

(assert (= bs!1939562 (and d!2308817 d!2308781)))

(assert (=> bs!1939562 (= (= lambda!466358 p!2194) (= lambda!466366 lambda!466358))))

(assert (=> d!2308817 true))

(assert (=> d!2308817 (< (dynLambda!29871 order!29749 lambda!466358) (dynLambda!29871 order!29749 lambda!466366))))

(assert (=> d!2308817 (= (exists!4946 (t!387344 l!3837) lambda!466358) (not (forall!18395 (t!387344 l!3837) lambda!466366)))))

(declare-fun bs!1939563 () Bool)

(assert (= bs!1939563 d!2308817))

(declare-fun m!8099932 () Bool)

(assert (=> bs!1939563 m!8099932))

(assert (=> d!2308781 d!2308817))

(declare-fun bs!1939564 () Bool)

(declare-fun d!2308819 () Bool)

(assert (= bs!1939564 (and d!2308819 b!7520132)))

(declare-fun lambda!466369 () Int)

(assert (=> bs!1939564 (= lambda!466369 lambda!466346)))

(declare-fun bs!1939565 () Bool)

(assert (= bs!1939565 (and d!2308819 d!2308817)))

(assert (=> bs!1939565 (= (= p!2194 lambda!466358) (= lambda!466369 lambda!466366))))

(declare-fun bs!1939566 () Bool)

(assert (= bs!1939566 (and d!2308819 d!2308781)))

(assert (=> bs!1939566 (= lambda!466369 lambda!466358)))

(declare-fun bs!1939567 () Bool)

(assert (= bs!1939567 (and d!2308819 d!2308777)))

(assert (=> bs!1939567 (= (= p!2194 lambda!466346) (= lambda!466369 lambda!466354))))

(declare-fun bs!1939568 () Bool)

(assert (= bs!1939568 (and d!2308819 d!2308779)))

(assert (=> bs!1939568 (= (= p!2194 lambda!466346) (= lambda!466369 lambda!466355))))

(assert (=> d!2308819 true))

(assert (=> d!2308819 (< (dynLambda!29871 order!29749 p!2194) (dynLambda!29871 order!29749 lambda!466369))))

(assert (=> d!2308819 (exists!4946 (t!387344 l!3837) lambda!466369)))

(assert (=> d!2308819 true))

(declare-fun _$97!206 () Unit!166523)

(assert (=> d!2308819 (= (choose!58257 (t!387344 l!3837) p!2194) _$97!206)))

(declare-fun bs!1939569 () Bool)

(assert (= bs!1939569 d!2308819))

(declare-fun m!8099934 () Bool)

(assert (=> bs!1939569 m!8099934))

(assert (=> d!2308781 d!2308819))

(assert (=> d!2308781 d!2308775))

(declare-fun b!7520190 () Bool)

(declare-fun e!4482928 () Bool)

(declare-fun tp!2184251 () Bool)

(assert (=> b!7520190 (= e!4482928 (and tp_is_empty!49873 tp!2184251))))

(assert (=> b!7520170 (= tp!2184247 e!4482928)))

(assert (= (and b!7520170 (is-Cons!72541 (t!387344 (t!387344 l!3837)))) b!7520190))

(declare-fun b_lambda!288717 () Bool)

(assert (= b_lambda!288711 (or (and start!727914 b_free!134427) (and d!2308817 (= lambda!466366 p!2194)) (and d!2308819 (= lambda!466369 p!2194)) b_lambda!288717)))

(declare-fun bs!1939570 () Bool)

(declare-fun d!2308821 () Bool)

(assert (= bs!1939570 (and d!2308821 d!2308817)))

(assert (=> bs!1939570 (= (dynLambda!29872 lambda!466366 (h!78989 (t!387344 (t!387344 l!3837)))) (not (dynLambda!29872 lambda!466358 (h!78989 (t!387344 (t!387344 l!3837))))))))

(declare-fun b_lambda!288727 () Bool)

(assert (=> (not b_lambda!288727) (not bs!1939570)))

(declare-fun m!8099936 () Bool)

(assert (=> bs!1939570 m!8099936))

(assert (=> (and d!2308817 (= lambda!466366 p!2194) b!7520184) d!2308821))

(declare-fun bs!1939571 () Bool)

(declare-fun d!2308823 () Bool)

(assert (= bs!1939571 (and d!2308823 d!2308819)))

(assert (=> bs!1939571 (= (dynLambda!29872 lambda!466369 (h!78989 (t!387344 (t!387344 l!3837)))) (not (dynLambda!29872 p!2194 (h!78989 (t!387344 (t!387344 l!3837))))))))

(declare-fun b_lambda!288729 () Bool)

(assert (=> (not b_lambda!288729) (not bs!1939571)))

(assert (=> bs!1939571 t!387353))

(declare-fun b_and!352245 () Bool)

(assert (= b_and!352243 (and (=> t!387353 result!356424) b_and!352245)))

(assert (=> bs!1939571 m!8099920))

(assert (=> (and d!2308819 (= lambda!466369 p!2194) b!7520184) d!2308823))

(declare-fun b_lambda!288719 () Bool)

(assert (= b_lambda!288715 (or d!2308779 b_lambda!288719)))

(declare-fun bs!1939572 () Bool)

(declare-fun d!2308825 () Bool)

(assert (= bs!1939572 (and d!2308825 d!2308779)))

(assert (=> bs!1939572 (= (dynLambda!29872 lambda!466355 (h!78989 (t!387344 l!3837))) (not (dynLambda!29872 lambda!466346 (h!78989 (t!387344 l!3837)))))))

(declare-fun b_lambda!288731 () Bool)

(assert (=> (not b_lambda!288731) (not bs!1939572)))

(assert (=> bs!1939572 m!8099904))

(assert (=> b!7520188 d!2308825))

(declare-fun b_lambda!288721 () Bool)

(assert (= b_lambda!288657 (or (and d!2308819 (= lambda!466369 p!2194)) (and d!2308817 (= lambda!466366 p!2194)) (and d!2308781 (= lambda!466358 p!2194)) (and d!2308779 (= lambda!466355 p!2194)) (and d!2308777 (= lambda!466354 p!2194)) b_lambda!288721)))

(declare-fun bs!1939573 () Bool)

(declare-fun d!2308827 () Bool)

(assert (= bs!1939573 (and d!2308827 d!2308777)))

(assert (=> bs!1939573 (= (dynLambda!29872 lambda!466354 (h!78989 l!3837)) (not (dynLambda!29872 lambda!466346 (h!78989 l!3837))))))

(declare-fun b_lambda!288733 () Bool)

(assert (=> (not b_lambda!288733) (not bs!1939573)))

(declare-fun m!8099938 () Bool)

(assert (=> bs!1939573 m!8099938))

(assert (=> (and d!2308777 (= lambda!466354 p!2194) b!7520128) d!2308827))

(declare-fun bs!1939574 () Bool)

(declare-fun d!2308829 () Bool)

(assert (= bs!1939574 (and d!2308829 d!2308779)))

(assert (=> bs!1939574 (= (dynLambda!29872 lambda!466355 (h!78989 l!3837)) (not (dynLambda!29872 lambda!466346 (h!78989 l!3837))))))

(declare-fun b_lambda!288735 () Bool)

(assert (=> (not b_lambda!288735) (not bs!1939574)))

(assert (=> bs!1939574 m!8099938))

(assert (=> (and d!2308779 (= lambda!466355 p!2194) b!7520128) d!2308829))

(declare-fun bs!1939575 () Bool)

(declare-fun d!2308831 () Bool)

(assert (= bs!1939575 (and d!2308831 d!2308817)))

(assert (=> bs!1939575 (= (dynLambda!29872 lambda!466366 (h!78989 l!3837)) (not (dynLambda!29872 lambda!466358 (h!78989 l!3837))))))

(declare-fun b_lambda!288737 () Bool)

(assert (=> (not b_lambda!288737) (not bs!1939575)))

(declare-fun m!8099940 () Bool)

(assert (=> bs!1939575 m!8099940))

(assert (=> (and d!2308817 (= lambda!466366 p!2194) b!7520128) d!2308831))

(declare-fun bs!1939576 () Bool)

(declare-fun d!2308833 () Bool)

(assert (= bs!1939576 (and d!2308833 d!2308819)))

(assert (=> bs!1939576 (= (dynLambda!29872 lambda!466369 (h!78989 l!3837)) (not (dynLambda!29872 p!2194 (h!78989 l!3837))))))

(declare-fun b_lambda!288739 () Bool)

(assert (=> (not b_lambda!288739) (not bs!1939576)))

(assert (=> bs!1939576 t!387343))

(declare-fun b_and!352247 () Bool)

(assert (= b_and!352245 (and (=> t!387343 result!356412) b_and!352247)))

(assert (=> bs!1939576 m!8099876))

(assert (=> (and d!2308819 (= lambda!466369 p!2194) b!7520128) d!2308833))

(declare-fun bs!1939577 () Bool)

(declare-fun d!2308835 () Bool)

(assert (= bs!1939577 (and d!2308835 d!2308781)))

(assert (=> bs!1939577 (= (dynLambda!29872 lambda!466358 (h!78989 l!3837)) (not (dynLambda!29872 p!2194 (h!78989 l!3837))))))

(declare-fun b_lambda!288741 () Bool)

(assert (=> (not b_lambda!288741) (not bs!1939577)))

(assert (=> bs!1939577 t!387343))

(declare-fun b_and!352249 () Bool)

(assert (= b_and!352247 (and (=> t!387343 result!356412) b_and!352249)))

(assert (=> bs!1939577 m!8099876))

(assert (=> (and d!2308781 (= lambda!466358 p!2194) b!7520128) d!2308835))

(declare-fun b_lambda!288723 () Bool)

(assert (= b_lambda!288713 (or d!2308777 b_lambda!288723)))

(declare-fun bs!1939578 () Bool)

(declare-fun d!2308837 () Bool)

(assert (= bs!1939578 (and d!2308837 d!2308777)))

(assert (=> bs!1939578 (= (dynLambda!29872 lambda!466354 (h!78989 l!3837)) (not (dynLambda!29872 lambda!466346 (h!78989 l!3837))))))

(declare-fun b_lambda!288743 () Bool)

(assert (=> (not b_lambda!288743) (not bs!1939578)))

(assert (=> bs!1939578 m!8099938))

(assert (=> b!7520186 d!2308837))

(declare-fun b_lambda!288725 () Bool)

(assert (= b_lambda!288659 (or (and d!2308819 (= lambda!466369 p!2194)) (and d!2308817 (= lambda!466366 p!2194)) (and d!2308781 (= lambda!466358 p!2194)) (and d!2308779 (= lambda!466355 p!2194)) (and d!2308777 (= lambda!466354 p!2194)) b_lambda!288725)))

(assert (=> (and d!2308777 (= lambda!466354 p!2194) b!7520130) d!2308827))

(assert (=> (and d!2308779 (= lambda!466355 p!2194) b!7520130) d!2308829))

(assert (=> (and d!2308817 (= lambda!466366 p!2194) b!7520130) d!2308831))

(assert (=> (and d!2308819 (= lambda!466369 p!2194) b!7520130) d!2308833))

(assert (=> (and d!2308781 (= lambda!466358 p!2194) b!7520130) d!2308835))

(push 1)

(assert (not b_lambda!288693))

(assert (not b_lambda!288717))

(assert (not b!7520185))

(assert (not b_lambda!288721))

(assert b_and!352249)

(assert (not b_lambda!288697))

(assert tp_is_empty!49873)

(assert (not d!2308819))

(assert (not b_lambda!288669))

(assert (not b_lambda!288735))

(assert (not b_lambda!288739))

(assert (not b_lambda!288727))

(assert (not b_lambda!288743))

(assert (not b_lambda!288671))

(assert (not b!7520187))

(assert (not b_lambda!288729))

(assert (not b_lambda!288737))

(assert (not b_lambda!288723))

(assert (not b_lambda!288719))

(assert (not b_next!135217))

(assert (not b!7520190))

(assert (not b_lambda!288731))

(assert (not b_lambda!288733))

(assert (not b_lambda!288695))

(assert (not b!7520189))

(assert (not b_lambda!288741))

(assert (not b_lambda!288725))

(assert (not d!2308817))

(assert (not b_lambda!288701))

(check-sat)

(pop 1)

(push 1)

(assert b_and!352249)

(assert (not b_next!135217))

(check-sat)

(pop 1)

