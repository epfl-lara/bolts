; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!252078 () Bool)

(assert start!252078)

(declare-fun b!2597161 () Bool)

(assert (=> b!2597161 true))

(declare-fun b!2597160 () Bool)

(declare-fun m!2933509 () Bool)

(assert (=> b!2597160 m!2933509))

(declare-fun bs!472998 () Bool)

(assert (= bs!472998 (and b!2597160 b!2597161)))

(declare-datatypes ((B!2219 0))(
  ( (B!2220 (val!9577 Int)) )
))
(declare-datatypes ((List!30010 0))(
  ( (Nil!29910) (Cons!29910 (h!35330 B!2219) (t!213023 List!30010)) )
))
(declare-fun l1!1546 () List!30010)

(declare-fun lambda!97112 () Int)

(declare-fun lambda!97111 () Int)

(declare-fun tail!4162 (List!30010) List!30010)

(assert (=> bs!472998 (= (= (tail!4162 l1!1546) l1!1546) (= lambda!97112 lambda!97111))))

(assert (=> b!2597160 true))

(declare-fun lambda!97113 () Int)

(assert (=> bs!472998 (= (= (t!213023 l1!1546) l1!1546) (= lambda!97113 lambda!97111))))

(assert (=> b!2597160 (= (= (t!213023 l1!1546) (tail!4162 l1!1546)) (= lambda!97113 lambda!97112))))

(assert (=> b!2597160 true))

(declare-fun res!1093284 () Bool)

(declare-fun e!1639188 () Bool)

(assert (=> start!252078 (=> (not res!1093284) (not e!1639188))))

(declare-fun noDuplicate!458 (List!30010) Bool)

(assert (=> start!252078 (= res!1093284 (noDuplicate!458 l1!1546))))

(assert (=> start!252078 e!1639188))

(declare-fun e!1639187 () Bool)

(assert (=> start!252078 e!1639187))

(declare-fun e!1639192 () Bool)

(assert (=> start!252078 e!1639192))

(declare-fun b!2597158 () Bool)

(declare-fun res!1093290 () Bool)

(declare-fun e!1639189 () Bool)

(assert (=> b!2597158 (=> (not res!1093290) (not e!1639189))))

(assert (=> b!2597158 (= res!1093290 (is-Cons!29910 l1!1546))))

(declare-fun b!2597159 () Bool)

(declare-fun tp_is_empty!13499 () Bool)

(declare-fun tp!823317 () Bool)

(assert (=> b!2597159 (= e!1639192 (and tp_is_empty!13499 tp!823317))))

(declare-fun e!1639190 () Bool)

(declare-fun e!1639186 () Bool)

(assert (=> b!2597160 (= e!1639190 e!1639186)))

(declare-fun res!1093285 () Bool)

(assert (=> b!2597160 (=> res!1093285 e!1639186)))

(declare-fun lt!914678 () List!30010)

(declare-fun forall!6147 (List!30010 Int) Bool)

(assert (=> b!2597160 (= res!1093285 (not (forall!6147 lt!914678 lambda!97113)))))

(assert (=> b!2597160 (forall!6147 lt!914678 lambda!97112)))

(declare-datatypes ((Unit!43977 0))(
  ( (Unit!43978) )
))
(declare-fun lt!914686 () Unit!43977)

(declare-fun lemmaForallContainsThenForTailIfContainsNotHead!27 (List!30010 List!30010 B!2219) Unit!43977)

(assert (=> b!2597160 (= lt!914686 (lemmaForallContainsThenForTailIfContainsNotHead!27 lt!914678 l1!1546 (h!35330 l1!1546)))))

(declare-fun res!1093291 () Bool)

(assert (=> b!2597161 (=> (not res!1093291) (not e!1639189))))

(declare-fun l2!1515 () List!30010)

(assert (=> b!2597161 (= res!1093291 (forall!6147 l2!1515 lambda!97111))))

(declare-fun b!2597162 () Bool)

(declare-fun res!1093293 () Bool)

(assert (=> b!2597162 (=> (not res!1093293) (not e!1639188))))

(assert (=> b!2597162 (= res!1093293 (noDuplicate!458 l2!1515))))

(declare-fun b!2597163 () Bool)

(declare-fun tp!823318 () Bool)

(assert (=> b!2597163 (= e!1639187 (and tp_is_empty!13499 tp!823318))))

(declare-fun b!2597164 () Bool)

(declare-fun res!1093288 () Bool)

(assert (=> b!2597164 (=> (not res!1093288) (not e!1639189))))

(declare-fun contains!5458 (List!30010 B!2219) Bool)

(assert (=> b!2597164 (= res!1093288 (contains!5458 l2!1515 (h!35330 l1!1546)))))

(declare-fun b!2597165 () Bool)

(declare-fun e!1639191 () Bool)

(assert (=> b!2597165 (= e!1639186 e!1639191)))

(declare-fun res!1093292 () Bool)

(assert (=> b!2597165 (=> res!1093292 e!1639191)))

(declare-fun lt!914684 () Int)

(declare-fun lt!914680 () Int)

(assert (=> b!2597165 (= res!1093292 (<= lt!914684 lt!914680))))

(declare-fun size!23215 (List!30010) Int)

(assert (=> b!2597165 (= lt!914684 (size!23215 (t!213023 l1!1546)))))

(declare-fun b!2597166 () Bool)

(assert (=> b!2597166 (= e!1639189 (not e!1639190))))

(declare-fun res!1093289 () Bool)

(assert (=> b!2597166 (=> res!1093289 e!1639190)))

(assert (=> b!2597166 (= res!1093289 (not (forall!6147 lt!914678 lambda!97111)))))

(declare-fun lt!914682 () Int)

(assert (=> b!2597166 (= lt!914680 (- lt!914682 1))))

(assert (=> b!2597166 (= lt!914680 (size!23215 lt!914678))))

(declare-fun lt!914683 () Unit!43977)

(declare-fun lemmaRemoveElmtNoDuplicateRemoveOne!43 (List!30010 B!2219) Unit!43977)

(assert (=> b!2597166 (= lt!914683 (lemmaRemoveElmtNoDuplicateRemoveOne!43 l2!1515 (h!35330 l1!1546)))))

(assert (=> b!2597166 (forall!6147 lt!914678 lambda!97111)))

(declare-fun lt!914681 () Unit!43977)

(declare-fun lemmaRemoveElmtMaintainsForall!45 (List!30010 B!2219 Int) Unit!43977)

(assert (=> b!2597166 (= lt!914681 (lemmaRemoveElmtMaintainsForall!45 l2!1515 (h!35330 l1!1546) lambda!97111))))

(assert (=> b!2597166 (noDuplicate!458 lt!914678)))

(declare-fun -!185 (List!30010 B!2219) List!30010)

(assert (=> b!2597166 (= lt!914678 (-!185 l2!1515 (h!35330 l1!1546)))))

(declare-fun lt!914685 () Unit!43977)

(declare-fun lemmaRemoveElmtMaintainsNoDuplicate!51 (List!30010 B!2219) Unit!43977)

(assert (=> b!2597166 (= lt!914685 (lemmaRemoveElmtMaintainsNoDuplicate!51 l2!1515 (h!35330 l1!1546)))))

(declare-fun b!2597167 () Bool)

(declare-fun res!1093286 () Bool)

(assert (=> b!2597167 (=> res!1093286 e!1639186)))

(assert (=> b!2597167 (= res!1093286 (not (noDuplicate!458 (t!213023 l1!1546))))))

(declare-fun b!2597168 () Bool)

(declare-fun lt!914679 () Int)

(assert (=> b!2597168 (= e!1639191 (< lt!914684 lt!914679))))

(declare-fun b!2597169 () Bool)

(declare-fun res!1093294 () Bool)

(assert (=> b!2597169 (=> res!1093294 e!1639191)))

(assert (=> b!2597169 (= res!1093294 (not (forall!6147 lt!914678 lambda!97113)))))

(declare-fun b!2597170 () Bool)

(assert (=> b!2597170 (= e!1639188 e!1639189)))

(declare-fun res!1093287 () Bool)

(assert (=> b!2597170 (=> (not res!1093287) (not e!1639189))))

(assert (=> b!2597170 (= res!1093287 (> lt!914679 lt!914682))))

(assert (=> b!2597170 (= lt!914682 (size!23215 l2!1515))))

(assert (=> b!2597170 (= lt!914679 (size!23215 l1!1546))))

(assert (= (and start!252078 res!1093284) b!2597162))

(assert (= (and b!2597162 res!1093293) b!2597170))

(assert (= (and b!2597170 res!1093287) b!2597161))

(assert (= (and b!2597161 res!1093291) b!2597158))

(assert (= (and b!2597158 res!1093290) b!2597164))

(assert (= (and b!2597164 res!1093288) b!2597166))

(assert (= (and b!2597166 (not res!1093289)) b!2597160))

(assert (= (and b!2597160 (not res!1093285)) b!2597167))

(assert (= (and b!2597167 (not res!1093286)) b!2597165))

(assert (= (and b!2597165 (not res!1093292)) b!2597169))

(assert (= (and b!2597169 (not res!1093294)) b!2597168))

(assert (= (and start!252078 (is-Cons!29910 l1!1546)) b!2597163))

(assert (= (and start!252078 (is-Cons!29910 l2!1515)) b!2597159))

(declare-fun m!2933511 () Bool)

(assert (=> b!2597166 m!2933511))

(declare-fun m!2933513 () Bool)

(assert (=> b!2597166 m!2933513))

(declare-fun m!2933515 () Bool)

(assert (=> b!2597166 m!2933515))

(declare-fun m!2933517 () Bool)

(assert (=> b!2597166 m!2933517))

(declare-fun m!2933519 () Bool)

(assert (=> b!2597166 m!2933519))

(declare-fun m!2933521 () Bool)

(assert (=> b!2597166 m!2933521))

(assert (=> b!2597166 m!2933519))

(declare-fun m!2933523 () Bool)

(assert (=> b!2597166 m!2933523))

(declare-fun m!2933525 () Bool)

(assert (=> start!252078 m!2933525))

(declare-fun m!2933527 () Bool)

(assert (=> b!2597165 m!2933527))

(declare-fun m!2933529 () Bool)

(assert (=> b!2597160 m!2933529))

(declare-fun m!2933531 () Bool)

(assert (=> b!2597160 m!2933531))

(declare-fun m!2933533 () Bool)

(assert (=> b!2597160 m!2933533))

(assert (=> b!2597169 m!2933529))

(declare-fun m!2933535 () Bool)

(assert (=> b!2597167 m!2933535))

(declare-fun m!2933537 () Bool)

(assert (=> b!2597164 m!2933537))

(declare-fun m!2933539 () Bool)

(assert (=> b!2597170 m!2933539))

(declare-fun m!2933541 () Bool)

(assert (=> b!2597170 m!2933541))

(declare-fun m!2933543 () Bool)

(assert (=> b!2597161 m!2933543))

(declare-fun m!2933545 () Bool)

(assert (=> b!2597162 m!2933545))

(push 1)

(assert tp_is_empty!13499)

(assert (not b!2597164))

(assert (not b!2597163))

(assert (not b!2597162))

(assert (not b!2597170))

(assert (not b!2597160))

(assert (not b!2597166))

(assert (not b!2597159))

(assert (not b!2597167))

(assert (not start!252078))

(assert (not b!2597161))

(assert (not b!2597165))

(assert (not b!2597169))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!735929 () Bool)

(declare-fun lt!914716 () Int)

(assert (=> d!735929 (>= lt!914716 0)))

(declare-fun e!1639228 () Int)

(assert (=> d!735929 (= lt!914716 e!1639228)))

(declare-fun c!418399 () Bool)

(assert (=> d!735929 (= c!418399 (is-Nil!29910 (t!213023 l1!1546)))))

(assert (=> d!735929 (= (size!23215 (t!213023 l1!1546)) lt!914716)))

(declare-fun b!2597218 () Bool)

(assert (=> b!2597218 (= e!1639228 0)))

(declare-fun b!2597219 () Bool)

(assert (=> b!2597219 (= e!1639228 (+ 1 (size!23215 (t!213023 (t!213023 l1!1546)))))))

(assert (= (and d!735929 c!418399) b!2597218))

(assert (= (and d!735929 (not c!418399)) b!2597219))

(declare-fun m!2933585 () Bool)

(assert (=> b!2597219 m!2933585))

(assert (=> b!2597165 d!735929))

(declare-fun d!735933 () Bool)

(assert (=> d!735933 (= (tail!4162 l1!1546) (t!213023 l1!1546))))

(assert (=> b!2597160 d!735933))

(declare-fun d!735935 () Bool)

(declare-fun res!1093332 () Bool)

(declare-fun e!1639233 () Bool)

(assert (=> d!735935 (=> res!1093332 e!1639233)))

(assert (=> d!735935 (= res!1093332 (is-Nil!29910 lt!914678))))

(assert (=> d!735935 (= (forall!6147 lt!914678 lambda!97113) e!1639233)))

(declare-fun b!2597226 () Bool)

(declare-fun e!1639234 () Bool)

(assert (=> b!2597226 (= e!1639233 e!1639234)))

(declare-fun res!1093333 () Bool)

(assert (=> b!2597226 (=> (not res!1093333) (not e!1639234))))

(declare-fun dynLambda!12659 (Int B!2219) Bool)

(assert (=> b!2597226 (= res!1093333 (dynLambda!12659 lambda!97113 (h!35330 lt!914678)))))

(declare-fun b!2597227 () Bool)

(assert (=> b!2597227 (= e!1639234 (forall!6147 (t!213023 lt!914678) lambda!97113))))

(assert (= (and d!735935 (not res!1093332)) b!2597226))

(assert (= (and b!2597226 res!1093333) b!2597227))

(declare-fun b_lambda!77661 () Bool)

(assert (=> (not b_lambda!77661) (not b!2597226)))

(declare-fun m!2933587 () Bool)

(assert (=> b!2597226 m!2933587))

(declare-fun m!2933589 () Bool)

(assert (=> b!2597227 m!2933589))

(assert (=> b!2597160 d!735935))

(declare-fun d!735937 () Bool)

(declare-fun res!1093334 () Bool)

(declare-fun e!1639237 () Bool)

(assert (=> d!735937 (=> res!1093334 e!1639237)))

(assert (=> d!735937 (= res!1093334 (is-Nil!29910 lt!914678))))

(assert (=> d!735937 (= (forall!6147 lt!914678 lambda!97112) e!1639237)))

(declare-fun b!2597230 () Bool)

(declare-fun e!1639238 () Bool)

(assert (=> b!2597230 (= e!1639237 e!1639238)))

(declare-fun res!1093335 () Bool)

(assert (=> b!2597230 (=> (not res!1093335) (not e!1639238))))

(assert (=> b!2597230 (= res!1093335 (dynLambda!12659 lambda!97112 (h!35330 lt!914678)))))

(declare-fun b!2597231 () Bool)

(assert (=> b!2597231 (= e!1639238 (forall!6147 (t!213023 lt!914678) lambda!97112))))

(assert (= (and d!735937 (not res!1093334)) b!2597230))

(assert (= (and b!2597230 res!1093335) b!2597231))

(declare-fun b_lambda!77663 () Bool)

(assert (=> (not b_lambda!77663) (not b!2597230)))

(declare-fun m!2933591 () Bool)

(assert (=> b!2597230 m!2933591))

(declare-fun m!2933593 () Bool)

(assert (=> b!2597231 m!2933593))

(assert (=> b!2597160 d!735937))

(declare-fun bs!473000 () Bool)

(declare-fun d!735939 () Bool)

(assert (= bs!473000 d!735939))

(assert (=> bs!473000 m!2933509))

(declare-fun bs!473001 () Bool)

(assert (= bs!473001 (and d!735939 b!2597161)))

(declare-fun lambda!97131 () Int)

(assert (=> bs!473001 (= (= (tail!4162 l1!1546) l1!1546) (= lambda!97131 lambda!97111))))

(declare-fun bs!473002 () Bool)

(assert (= bs!473002 (and d!735939 b!2597160)))

(assert (=> bs!473002 (= lambda!97131 lambda!97112)))

(assert (=> bs!473002 (= (= (tail!4162 l1!1546) (t!213023 l1!1546)) (= lambda!97131 lambda!97113))))

(assert (=> d!735939 true))

(assert (=> d!735939 (forall!6147 lt!914678 lambda!97131)))

(declare-fun lt!914722 () Unit!43977)

(declare-fun choose!15440 (List!30010 List!30010 B!2219) Unit!43977)

(assert (=> d!735939 (= lt!914722 (choose!15440 lt!914678 l1!1546 (h!35330 l1!1546)))))

(declare-fun isEmpty!17144 (List!30010) Bool)

(assert (=> d!735939 (not (isEmpty!17144 l1!1546))))

(assert (=> d!735939 (= (lemmaForallContainsThenForTailIfContainsNotHead!27 lt!914678 l1!1546 (h!35330 l1!1546)) lt!914722)))

(declare-fun m!2933597 () Bool)

(assert (=> bs!473000 m!2933597))

(declare-fun m!2933599 () Bool)

(assert (=> bs!473000 m!2933599))

(declare-fun m!2933601 () Bool)

(assert (=> bs!473000 m!2933601))

(assert (=> b!2597160 d!735939))

(declare-fun d!735943 () Bool)

(declare-fun lt!914723 () Int)

(assert (=> d!735943 (>= lt!914723 0)))

(declare-fun e!1639242 () Int)

(assert (=> d!735943 (= lt!914723 e!1639242)))

(declare-fun c!418403 () Bool)

(assert (=> d!735943 (= c!418403 (is-Nil!29910 l2!1515))))

(assert (=> d!735943 (= (size!23215 l2!1515) lt!914723)))

(declare-fun b!2597234 () Bool)

(assert (=> b!2597234 (= e!1639242 0)))

(declare-fun b!2597235 () Bool)

(assert (=> b!2597235 (= e!1639242 (+ 1 (size!23215 (t!213023 l2!1515))))))

(assert (= (and d!735943 c!418403) b!2597234))

(assert (= (and d!735943 (not c!418403)) b!2597235))

(declare-fun m!2933603 () Bool)

(assert (=> b!2597235 m!2933603))

(assert (=> b!2597170 d!735943))

(declare-fun d!735945 () Bool)

(declare-fun lt!914724 () Int)

(assert (=> d!735945 (>= lt!914724 0)))

(declare-fun e!1639243 () Int)

(assert (=> d!735945 (= lt!914724 e!1639243)))

(declare-fun c!418404 () Bool)

(assert (=> d!735945 (= c!418404 (is-Nil!29910 l1!1546))))

(assert (=> d!735945 (= (size!23215 l1!1546) lt!914724)))

(declare-fun b!2597236 () Bool)

(assert (=> b!2597236 (= e!1639243 0)))

(declare-fun b!2597237 () Bool)

(assert (=> b!2597237 (= e!1639243 (+ 1 (size!23215 (t!213023 l1!1546))))))

(assert (= (and d!735945 c!418404) b!2597236))

(assert (= (and d!735945 (not c!418404)) b!2597237))

(assert (=> b!2597237 m!2933527))

(assert (=> b!2597170 d!735945))

(assert (=> b!2597169 d!735935))

(declare-fun d!735947 () Bool)

(declare-fun lt!914729 () Bool)

(declare-fun content!4207 (List!30010) (Set B!2219))

(assert (=> d!735947 (= lt!914729 (set.member (h!35330 l1!1546) (content!4207 l2!1515)))))

(declare-fun e!1639252 () Bool)

(assert (=> d!735947 (= lt!914729 e!1639252)))

(declare-fun res!1093344 () Bool)

(assert (=> d!735947 (=> (not res!1093344) (not e!1639252))))

(assert (=> d!735947 (= res!1093344 (is-Cons!29910 l2!1515))))

(assert (=> d!735947 (= (contains!5458 l2!1515 (h!35330 l1!1546)) lt!914729)))

(declare-fun b!2597246 () Bool)

(declare-fun e!1639253 () Bool)

(assert (=> b!2597246 (= e!1639252 e!1639253)))

(declare-fun res!1093345 () Bool)

(assert (=> b!2597246 (=> res!1093345 e!1639253)))

(assert (=> b!2597246 (= res!1093345 (= (h!35330 l2!1515) (h!35330 l1!1546)))))

(declare-fun b!2597247 () Bool)

(assert (=> b!2597247 (= e!1639253 (contains!5458 (t!213023 l2!1515) (h!35330 l1!1546)))))

(assert (= (and d!735947 res!1093344) b!2597246))

(assert (= (and b!2597246 (not res!1093345)) b!2597247))

(declare-fun m!2933605 () Bool)

(assert (=> d!735947 m!2933605))

(declare-fun m!2933607 () Bool)

(assert (=> d!735947 m!2933607))

(declare-fun m!2933609 () Bool)

(assert (=> b!2597247 m!2933609))

(assert (=> b!2597164 d!735947))

(declare-fun d!735949 () Bool)

(declare-fun res!1093350 () Bool)

(declare-fun e!1639258 () Bool)

(assert (=> d!735949 (=> res!1093350 e!1639258)))

(assert (=> d!735949 (= res!1093350 (is-Nil!29910 l1!1546))))

(assert (=> d!735949 (= (noDuplicate!458 l1!1546) e!1639258)))

(declare-fun b!2597252 () Bool)

(declare-fun e!1639259 () Bool)

(assert (=> b!2597252 (= e!1639258 e!1639259)))

(declare-fun res!1093351 () Bool)

(assert (=> b!2597252 (=> (not res!1093351) (not e!1639259))))

(assert (=> b!2597252 (= res!1093351 (not (contains!5458 (t!213023 l1!1546) (h!35330 l1!1546))))))

(declare-fun b!2597253 () Bool)

(assert (=> b!2597253 (= e!1639259 (noDuplicate!458 (t!213023 l1!1546)))))

(assert (= (and d!735949 (not res!1093350)) b!2597252))

(assert (= (and b!2597252 res!1093351) b!2597253))

(declare-fun m!2933611 () Bool)

(assert (=> b!2597252 m!2933611))

(assert (=> b!2597253 m!2933535))

(assert (=> start!252078 d!735949))

(declare-fun d!735951 () Bool)

(declare-fun res!1093354 () Bool)

(declare-fun e!1639262 () Bool)

(assert (=> d!735951 (=> res!1093354 e!1639262)))

(assert (=> d!735951 (= res!1093354 (is-Nil!29910 (t!213023 l1!1546)))))

(assert (=> d!735951 (= (noDuplicate!458 (t!213023 l1!1546)) e!1639262)))

(declare-fun b!2597256 () Bool)

(declare-fun e!1639263 () Bool)

(assert (=> b!2597256 (= e!1639262 e!1639263)))

(declare-fun res!1093355 () Bool)

(assert (=> b!2597256 (=> (not res!1093355) (not e!1639263))))

(assert (=> b!2597256 (= res!1093355 (not (contains!5458 (t!213023 (t!213023 l1!1546)) (h!35330 (t!213023 l1!1546)))))))

(declare-fun b!2597257 () Bool)

(assert (=> b!2597257 (= e!1639263 (noDuplicate!458 (t!213023 (t!213023 l1!1546))))))

(assert (= (and d!735951 (not res!1093354)) b!2597256))

(assert (= (and b!2597256 res!1093355) b!2597257))

(declare-fun m!2933613 () Bool)

(assert (=> b!2597256 m!2933613))

(declare-fun m!2933615 () Bool)

(assert (=> b!2597257 m!2933615))

(assert (=> b!2597167 d!735951))

(declare-fun d!735953 () Bool)

(declare-fun res!1093356 () Bool)

(declare-fun e!1639264 () Bool)

(assert (=> d!735953 (=> res!1093356 e!1639264)))

(assert (=> d!735953 (= res!1093356 (is-Nil!29910 l2!1515))))

(assert (=> d!735953 (= (noDuplicate!458 l2!1515) e!1639264)))

(declare-fun b!2597258 () Bool)

(declare-fun e!1639265 () Bool)

(assert (=> b!2597258 (= e!1639264 e!1639265)))

(declare-fun res!1093357 () Bool)

(assert (=> b!2597258 (=> (not res!1093357) (not e!1639265))))

(assert (=> b!2597258 (= res!1093357 (not (contains!5458 (t!213023 l2!1515) (h!35330 l2!1515))))))

(declare-fun b!2597259 () Bool)

(assert (=> b!2597259 (= e!1639265 (noDuplicate!458 (t!213023 l2!1515)))))

(assert (= (and d!735953 (not res!1093356)) b!2597258))

(assert (= (and b!2597258 res!1093357) b!2597259))

(declare-fun m!2933617 () Bool)

(assert (=> b!2597258 m!2933617))

(declare-fun m!2933621 () Bool)

(assert (=> b!2597259 m!2933621))

(assert (=> b!2597162 d!735953))

(declare-fun d!735955 () Bool)

(declare-fun res!1093358 () Bool)

(declare-fun e!1639266 () Bool)

(assert (=> d!735955 (=> res!1093358 e!1639266)))

(assert (=> d!735955 (= res!1093358 (is-Nil!29910 l2!1515))))

(assert (=> d!735955 (= (forall!6147 l2!1515 lambda!97111) e!1639266)))

(declare-fun b!2597260 () Bool)

(declare-fun e!1639267 () Bool)

(assert (=> b!2597260 (= e!1639266 e!1639267)))

(declare-fun res!1093359 () Bool)

(assert (=> b!2597260 (=> (not res!1093359) (not e!1639267))))

(assert (=> b!2597260 (= res!1093359 (dynLambda!12659 lambda!97111 (h!35330 l2!1515)))))

(declare-fun b!2597261 () Bool)

(assert (=> b!2597261 (= e!1639267 (forall!6147 (t!213023 l2!1515) lambda!97111))))

(assert (= (and d!735955 (not res!1093358)) b!2597260))

(assert (= (and b!2597260 res!1093359) b!2597261))

(declare-fun b_lambda!77665 () Bool)

(assert (=> (not b_lambda!77665) (not b!2597260)))

(declare-fun m!2933627 () Bool)

(assert (=> b!2597260 m!2933627))

(declare-fun m!2933629 () Bool)

(assert (=> b!2597261 m!2933629))

(assert (=> b!2597161 d!735955))

(declare-fun d!735959 () Bool)

(declare-fun res!1093360 () Bool)

(declare-fun e!1639268 () Bool)

(assert (=> d!735959 (=> res!1093360 e!1639268)))

(assert (=> d!735959 (= res!1093360 (is-Nil!29910 lt!914678))))

(assert (=> d!735959 (= (noDuplicate!458 lt!914678) e!1639268)))

(declare-fun b!2597262 () Bool)

(declare-fun e!1639269 () Bool)

(assert (=> b!2597262 (= e!1639268 e!1639269)))

(declare-fun res!1093361 () Bool)

(assert (=> b!2597262 (=> (not res!1093361) (not e!1639269))))

(assert (=> b!2597262 (= res!1093361 (not (contains!5458 (t!213023 lt!914678) (h!35330 lt!914678))))))

(declare-fun b!2597263 () Bool)

(assert (=> b!2597263 (= e!1639269 (noDuplicate!458 (t!213023 lt!914678)))))

(assert (= (and d!735959 (not res!1093360)) b!2597262))

(assert (= (and b!2597262 res!1093361) b!2597263))

(declare-fun m!2933631 () Bool)

(assert (=> b!2597262 m!2933631))

(declare-fun m!2933633 () Bool)

(assert (=> b!2597263 m!2933633))

(assert (=> b!2597166 d!735959))

(declare-fun b!2597280 () Bool)

(declare-fun e!1639284 () List!30010)

(assert (=> b!2597280 (= e!1639284 Nil!29910)))

(declare-fun b!2597281 () Bool)

(declare-fun e!1639285 () List!30010)

(declare-fun call!167355 () List!30010)

(assert (=> b!2597281 (= e!1639285 call!167355)))

(declare-fun b!2597282 () Bool)

(assert (=> b!2597282 (= e!1639285 (Cons!29910 (h!35330 l2!1515) call!167355))))

(declare-fun d!735961 () Bool)

(declare-fun e!1639283 () Bool)

(assert (=> d!735961 e!1639283))

(declare-fun res!1093370 () Bool)

(assert (=> d!735961 (=> (not res!1093370) (not e!1639283))))

(declare-fun lt!914733 () List!30010)

(assert (=> d!735961 (= res!1093370 (<= (size!23215 lt!914733) (size!23215 l2!1515)))))

(assert (=> d!735961 (= lt!914733 e!1639284)))

(declare-fun c!418409 () Bool)

(assert (=> d!735961 (= c!418409 (is-Cons!29910 l2!1515))))

(assert (=> d!735961 (= (-!185 l2!1515 (h!35330 l1!1546)) lt!914733)))

(declare-fun bm!167350 () Bool)

(assert (=> bm!167350 (= call!167355 (-!185 (t!213023 l2!1515) (h!35330 l1!1546)))))

(declare-fun b!2597283 () Bool)

(assert (=> b!2597283 (= e!1639283 (= (content!4207 lt!914733) (set.minus (content!4207 l2!1515) (set.insert (h!35330 l1!1546) (as set.empty (Set B!2219))))))))

(declare-fun b!2597284 () Bool)

(assert (=> b!2597284 (= e!1639284 e!1639285)))

(declare-fun c!418410 () Bool)

(assert (=> b!2597284 (= c!418410 (= (h!35330 l1!1546) (h!35330 l2!1515)))))

(assert (= (and d!735961 c!418409) b!2597284))

(assert (= (and d!735961 (not c!418409)) b!2597280))

(assert (= (and b!2597284 c!418410) b!2597281))

(assert (= (and b!2597284 (not c!418410)) b!2597282))

(assert (= (or b!2597281 b!2597282) bm!167350))

(assert (= (and d!735961 res!1093370) b!2597283))

(declare-fun m!2933639 () Bool)

(assert (=> d!735961 m!2933639))

(assert (=> d!735961 m!2933539))

(declare-fun m!2933641 () Bool)

(assert (=> bm!167350 m!2933641))

(declare-fun m!2933643 () Bool)

(assert (=> b!2597283 m!2933643))

(assert (=> b!2597283 m!2933605))

(declare-fun m!2933645 () Bool)

(assert (=> b!2597283 m!2933645))

(assert (=> b!2597166 d!735961))

(declare-fun d!735965 () Bool)

(assert (=> d!735965 (forall!6147 (-!185 l2!1515 (h!35330 l1!1546)) lambda!97111)))

(declare-fun lt!914738 () Unit!43977)

(declare-fun choose!15441 (List!30010 B!2219 Int) Unit!43977)

(assert (=> d!735965 (= lt!914738 (choose!15441 l2!1515 (h!35330 l1!1546) lambda!97111))))

(assert (=> d!735965 (noDuplicate!458 l2!1515)))

(assert (=> d!735965 (= (lemmaRemoveElmtMaintainsForall!45 l2!1515 (h!35330 l1!1546) lambda!97111) lt!914738)))

(declare-fun bs!473003 () Bool)

(assert (= bs!473003 d!735965))

(assert (=> bs!473003 m!2933521))

(assert (=> bs!473003 m!2933521))

(declare-fun m!2933659 () Bool)

(assert (=> bs!473003 m!2933659))

(declare-fun m!2933661 () Bool)

(assert (=> bs!473003 m!2933661))

(assert (=> bs!473003 m!2933545))

(assert (=> b!2597166 d!735965))

(declare-fun d!735977 () Bool)

(declare-fun lt!914739 () Int)

(assert (=> d!735977 (>= lt!914739 0)))

(declare-fun e!1639295 () Int)

(assert (=> d!735977 (= lt!914739 e!1639295)))

(declare-fun c!418413 () Bool)

(assert (=> d!735977 (= c!418413 (is-Nil!29910 lt!914678))))

(assert (=> d!735977 (= (size!23215 lt!914678) lt!914739)))

(declare-fun b!2597295 () Bool)

(assert (=> b!2597295 (= e!1639295 0)))

(declare-fun b!2597296 () Bool)

(assert (=> b!2597296 (= e!1639295 (+ 1 (size!23215 (t!213023 lt!914678))))))

(assert (= (and d!735977 c!418413) b!2597295))

(assert (= (and d!735977 (not c!418413)) b!2597296))

(declare-fun m!2933663 () Bool)

(assert (=> b!2597296 m!2933663))

(assert (=> b!2597166 d!735977))

(declare-fun d!735979 () Bool)

(assert (=> d!735979 (noDuplicate!458 (-!185 l2!1515 (h!35330 l1!1546)))))

(declare-fun lt!914742 () Unit!43977)

(declare-fun choose!15442 (List!30010 B!2219) Unit!43977)

(assert (=> d!735979 (= lt!914742 (choose!15442 l2!1515 (h!35330 l1!1546)))))

(assert (=> d!735979 (noDuplicate!458 l2!1515)))

(assert (=> d!735979 (= (lemmaRemoveElmtMaintainsNoDuplicate!51 l2!1515 (h!35330 l1!1546)) lt!914742)))

(declare-fun bs!473004 () Bool)

(assert (= bs!473004 d!735979))

(assert (=> bs!473004 m!2933521))

(assert (=> bs!473004 m!2933521))

(declare-fun m!2933665 () Bool)

(assert (=> bs!473004 m!2933665))

(declare-fun m!2933667 () Bool)

(assert (=> bs!473004 m!2933667))

(assert (=> bs!473004 m!2933545))

(assert (=> b!2597166 d!735979))

(declare-fun d!735981 () Bool)

(assert (=> d!735981 (= (size!23215 (-!185 l2!1515 (h!35330 l1!1546))) (- (size!23215 l2!1515) 1))))

(declare-fun lt!914745 () Unit!43977)

(declare-fun choose!15443 (List!30010 B!2219) Unit!43977)

(assert (=> d!735981 (= lt!914745 (choose!15443 l2!1515 (h!35330 l1!1546)))))

(assert (=> d!735981 (noDuplicate!458 l2!1515)))

(assert (=> d!735981 (= (lemmaRemoveElmtNoDuplicateRemoveOne!43 l2!1515 (h!35330 l1!1546)) lt!914745)))

(declare-fun bs!473005 () Bool)

(assert (= bs!473005 d!735981))

(assert (=> bs!473005 m!2933521))

(declare-fun m!2933669 () Bool)

(assert (=> bs!473005 m!2933669))

(assert (=> bs!473005 m!2933521))

(declare-fun m!2933671 () Bool)

(assert (=> bs!473005 m!2933671))

(assert (=> bs!473005 m!2933545))

(assert (=> bs!473005 m!2933539))

(assert (=> b!2597166 d!735981))

(declare-fun d!735983 () Bool)

(declare-fun res!1093377 () Bool)

(declare-fun e!1639298 () Bool)

(assert (=> d!735983 (=> res!1093377 e!1639298)))

(assert (=> d!735983 (= res!1093377 (is-Nil!29910 lt!914678))))

(assert (=> d!735983 (= (forall!6147 lt!914678 lambda!97111) e!1639298)))

(declare-fun b!2597297 () Bool)

(declare-fun e!1639299 () Bool)

(assert (=> b!2597297 (= e!1639298 e!1639299)))

(declare-fun res!1093378 () Bool)

(assert (=> b!2597297 (=> (not res!1093378) (not e!1639299))))

(assert (=> b!2597297 (= res!1093378 (dynLambda!12659 lambda!97111 (h!35330 lt!914678)))))

(declare-fun b!2597298 () Bool)

(assert (=> b!2597298 (= e!1639299 (forall!6147 (t!213023 lt!914678) lambda!97111))))

(assert (= (and d!735983 (not res!1093377)) b!2597297))

(assert (= (and b!2597297 res!1093378) b!2597298))

(declare-fun b_lambda!77667 () Bool)

(assert (=> (not b_lambda!77667) (not b!2597297)))

(declare-fun m!2933673 () Bool)

(assert (=> b!2597297 m!2933673))

(declare-fun m!2933675 () Bool)

(assert (=> b!2597298 m!2933675))

(assert (=> b!2597166 d!735983))

(declare-fun b!2597311 () Bool)

(declare-fun e!1639307 () Bool)

(declare-fun tp!823327 () Bool)

(assert (=> b!2597311 (= e!1639307 (and tp_is_empty!13499 tp!823327))))

(assert (=> b!2597159 (= tp!823317 e!1639307)))

(assert (= (and b!2597159 (is-Cons!29910 (t!213023 l2!1515))) b!2597311))

(declare-fun b!2597312 () Bool)

(declare-fun e!1639308 () Bool)

(declare-fun tp!823328 () Bool)

(assert (=> b!2597312 (= e!1639308 (and tp_is_empty!13499 tp!823328))))

(assert (=> b!2597163 (= tp!823318 e!1639308)))

(assert (= (and b!2597163 (is-Cons!29910 (t!213023 l1!1546))) b!2597312))

(declare-fun b_lambda!77669 () Bool)

(assert (= b_lambda!77663 (or b!2597160 b_lambda!77669)))

(declare-fun bs!473006 () Bool)

(declare-fun d!735985 () Bool)

(assert (= bs!473006 (and d!735985 b!2597160)))

(assert (=> bs!473006 (= (dynLambda!12659 lambda!97112 (h!35330 lt!914678)) (contains!5458 (tail!4162 l1!1546) (h!35330 lt!914678)))))

(declare-fun m!2933677 () Bool)

(assert (=> bs!473006 m!2933677))

(assert (=> b!2597230 d!735985))

(declare-fun b_lambda!77671 () Bool)

(assert (= b_lambda!77661 (or b!2597160 b_lambda!77671)))

(declare-fun bs!473007 () Bool)

(declare-fun d!735987 () Bool)

(assert (= bs!473007 (and d!735987 b!2597160)))

(assert (=> bs!473007 (= (dynLambda!12659 lambda!97113 (h!35330 lt!914678)) (contains!5458 (t!213023 l1!1546) (h!35330 lt!914678)))))

(declare-fun m!2933679 () Bool)

(assert (=> bs!473007 m!2933679))

(assert (=> b!2597226 d!735987))

(declare-fun b_lambda!77673 () Bool)

(assert (= b_lambda!77665 (or b!2597161 b_lambda!77673)))

(declare-fun bs!473008 () Bool)

(declare-fun d!735989 () Bool)

(assert (= bs!473008 (and d!735989 b!2597161)))

(assert (=> bs!473008 (= (dynLambda!12659 lambda!97111 (h!35330 l2!1515)) (contains!5458 l1!1546 (h!35330 l2!1515)))))

(declare-fun m!2933681 () Bool)

(assert (=> bs!473008 m!2933681))

(assert (=> b!2597260 d!735989))

(declare-fun b_lambda!77675 () Bool)

(assert (= b_lambda!77667 (or b!2597161 b_lambda!77675)))

(declare-fun bs!473009 () Bool)

(declare-fun d!735991 () Bool)

(assert (= bs!473009 (and d!735991 b!2597161)))

(assert (=> bs!473009 (= (dynLambda!12659 lambda!97111 (h!35330 lt!914678)) (contains!5458 l1!1546 (h!35330 lt!914678)))))

(declare-fun m!2933683 () Bool)

(assert (=> bs!473009 m!2933683))

(assert (=> b!2597297 d!735991))

(push 1)

(assert (not b!2597298))

(assert (not b!2597253))

(assert (not b!2597256))

(assert (not b!2597261))

(assert (not b!2597312))

(assert (not b!2597252))

(assert (not b!2597283))

(assert (not b!2597231))

(assert (not b_lambda!77675))

(assert (not b!2597235))

(assert (not b!2597219))

(assert (not b!2597237))

(assert tp_is_empty!13499)

(assert (not b!2597258))

(assert (not b_lambda!77671))

(assert (not b!2597311))

(assert (not bs!473006))

(assert (not b!2597227))

(assert (not b!2597257))

(assert (not b_lambda!77673))

(assert (not d!735979))

(assert (not b!2597263))

(assert (not bm!167350))

(assert (not b!2597296))

(assert (not b_lambda!77669))

(assert (not d!735939))

(assert (not bs!473009))

(assert (not b!2597259))

(assert (not d!735961))

(assert (not b!2597247))

(assert (not b!2597262))

(assert (not d!735981))

(assert (not bs!473007))

(assert (not bs!473008))

(assert (not d!735947))

(assert (not d!735965))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

