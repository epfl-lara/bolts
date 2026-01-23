; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!252650 () Bool)

(assert start!252650)

(declare-fun b_free!72969 () Bool)

(declare-fun b_next!73673 () Bool)

(assert (=> start!252650 (= b_free!72969 (not b_next!73673))))

(declare-fun tp!823804 () Bool)

(declare-fun b_and!190251 () Bool)

(assert (=> start!252650 (= tp!823804 b_and!190251)))

(declare-fun b!2600180 () Bool)

(declare-fun res!1095212 () Bool)

(declare-fun e!1641275 () Bool)

(assert (=> b!2600180 (=> (not res!1095212) (not e!1641275))))

(declare-datatypes ((B!2375 0))(
  ( (B!2376 (val!9655 Int)) )
))
(declare-datatypes ((List!30088 0))(
  ( (Nil!29988) (Cons!29988 (h!35408 B!2375) (t!213129 List!30088)) )
))
(declare-fun l!3788 () List!30088)

(declare-fun p!2182 () Int)

(declare-fun forall!6169 (List!30088 Int) Bool)

(assert (=> b!2600180 (= res!1095212 (forall!6169 l!3788 p!2182))))

(declare-fun b!2600181 () Bool)

(declare-fun res!1095214 () Bool)

(assert (=> b!2600181 (=> (not res!1095214) (not e!1641275))))

(assert (=> b!2600181 (= res!1095214 (not (is-Nil!29988 l!3788)))))

(declare-fun res!1095213 () Bool)

(assert (=> start!252650 (=> (not res!1095213) (not e!1641275))))

(declare-fun noDuplicate!536 (List!30088) Bool)

(assert (=> start!252650 (= res!1095213 (noDuplicate!536 l!3788))))

(assert (=> start!252650 e!1641275))

(declare-fun e!1641274 () Bool)

(assert (=> start!252650 e!1641274))

(assert (=> start!252650 tp!823804))

(declare-fun tp_is_empty!13655 () Bool)

(assert (=> start!252650 tp_is_empty!13655))

(declare-fun b!2600182 () Bool)

(declare-fun e!9458 () B!2375)

(declare-fun -!215 (List!30088 B!2375) List!30088)

(assert (=> b!2600182 (= e!1641275 (not (forall!6169 (-!215 l!3788 e!9458) p!2182)))))

(declare-datatypes ((Unit!44021 0))(
  ( (Unit!44022) )
))
(declare-fun lt!915254 () Unit!44021)

(declare-fun lemmaRemoveElmtMaintainsForall!49 (List!30088 B!2375 Int) Unit!44021)

(assert (=> b!2600182 (= lt!915254 (lemmaRemoveElmtMaintainsForall!49 (t!213129 l!3788) e!9458 p!2182))))

(declare-fun b!2600183 () Bool)

(declare-fun tp!823803 () Bool)

(assert (=> b!2600183 (= e!1641274 (and tp_is_empty!13655 tp!823803))))

(assert (= (and start!252650 res!1095213) b!2600180))

(assert (= (and b!2600180 res!1095212) b!2600181))

(assert (= (and b!2600181 res!1095214) b!2600182))

(assert (= (and start!252650 (is-Cons!29988 l!3788)) b!2600183))

(declare-fun m!2935649 () Bool)

(assert (=> b!2600180 m!2935649))

(declare-fun m!2935651 () Bool)

(assert (=> start!252650 m!2935651))

(declare-fun m!2935653 () Bool)

(assert (=> b!2600182 m!2935653))

(assert (=> b!2600182 m!2935653))

(declare-fun m!2935655 () Bool)

(assert (=> b!2600182 m!2935655))

(declare-fun m!2935657 () Bool)

(assert (=> b!2600182 m!2935657))

(push 1)

(assert (not b_next!73673))

(assert (not b!2600182))

(assert (not b!2600180))

(assert tp_is_empty!13655)

(assert (not start!252650))

(assert b_and!190251)

(assert (not b!2600183))

(check-sat)

(pop 1)

(push 1)

(assert b_and!190251)

(assert (not b_next!73673))

(check-sat)

(get-model)

(pop 1)

(declare-fun d!736658 () Bool)

(declare-fun res!1095228 () Bool)

(declare-fun e!1641286 () Bool)

(assert (=> d!736658 (=> res!1095228 e!1641286)))

(assert (=> d!736658 (= res!1095228 (is-Nil!29988 (-!215 l!3788 e!9458)))))

(assert (=> d!736658 (= (forall!6169 (-!215 l!3788 e!9458) p!2182) e!1641286)))

(declare-fun b!2600200 () Bool)

(declare-fun e!1641287 () Bool)

(assert (=> b!2600200 (= e!1641286 e!1641287)))

(declare-fun res!1095229 () Bool)

(assert (=> b!2600200 (=> (not res!1095229) (not e!1641287))))

(declare-fun dynLambda!12678 (Int B!2375) Bool)

(assert (=> b!2600200 (= res!1095229 (dynLambda!12678 p!2182 (h!35408 (-!215 l!3788 e!9458))))))

(declare-fun b!2600201 () Bool)

(assert (=> b!2600201 (= e!1641287 (forall!6169 (t!213129 (-!215 l!3788 e!9458)) p!2182))))

(assert (= (and d!736658 (not res!1095228)) b!2600200))

(assert (= (and b!2600200 res!1095229) b!2600201))

(declare-fun b_lambda!77787 () Bool)

(assert (=> (not b_lambda!77787) (not b!2600200)))

(declare-fun t!213132 () Bool)

(declare-fun tb!141509 () Bool)

(assert (=> (and start!252650 (= p!2182 p!2182) t!213132) tb!141509))

(declare-fun result!176036 () Bool)

(assert (=> tb!141509 (= result!176036 true)))

(assert (=> b!2600200 t!213132))

(declare-fun b_and!190255 () Bool)

(assert (= b_and!190251 (and (=> t!213132 result!176036) b_and!190255)))

(declare-fun m!2935669 () Bool)

(assert (=> b!2600200 m!2935669))

(declare-fun m!2935671 () Bool)

(assert (=> b!2600201 m!2935671))

(assert (=> b!2600182 d!736658))

(declare-fun bm!167418 () Bool)

(declare-fun call!167423 () List!30088)

(assert (=> bm!167418 (= call!167423 (-!215 (t!213129 l!3788) e!9458))))

(declare-fun d!736660 () Bool)

(declare-fun e!1641295 () Bool)

(assert (=> d!736660 e!1641295))

(declare-fun res!1095232 () Bool)

(assert (=> d!736660 (=> (not res!1095232) (not e!1641295))))

(declare-fun lt!915260 () List!30088)

(declare-fun size!23246 (List!30088) Int)

(assert (=> d!736660 (= res!1095232 (<= (size!23246 lt!915260) (size!23246 l!3788)))))

(declare-fun e!1641297 () List!30088)

(assert (=> d!736660 (= lt!915260 e!1641297)))

(declare-fun c!418647 () Bool)

(assert (=> d!736660 (= c!418647 (is-Cons!29988 l!3788))))

(assert (=> d!736660 (= (-!215 l!3788 e!9458) lt!915260)))

(declare-fun b!2600212 () Bool)

(declare-fun e!1641296 () List!30088)

(assert (=> b!2600212 (= e!1641296 call!167423)))

(declare-fun b!2600213 () Bool)

(declare-fun content!4251 (List!30088) (Set B!2375))

(assert (=> b!2600213 (= e!1641295 (= (content!4251 lt!915260) (set.minus (content!4251 l!3788) (set.insert e!9458 (as set.empty (Set B!2375))))))))

(declare-fun b!2600214 () Bool)

(assert (=> b!2600214 (= e!1641297 Nil!29988)))

(declare-fun b!2600215 () Bool)

(assert (=> b!2600215 (= e!1641297 e!1641296)))

(declare-fun c!418648 () Bool)

(assert (=> b!2600215 (= c!418648 (= e!9458 (h!35408 l!3788)))))

(declare-fun b!2600216 () Bool)

(assert (=> b!2600216 (= e!1641296 (Cons!29988 (h!35408 l!3788) call!167423))))

(assert (= (and d!736660 c!418647) b!2600215))

(assert (= (and d!736660 (not c!418647)) b!2600214))

(assert (= (and b!2600215 c!418648) b!2600212))

(assert (= (and b!2600215 (not c!418648)) b!2600216))

(assert (= (or b!2600212 b!2600216) bm!167418))

(assert (= (and d!736660 res!1095232) b!2600213))

(declare-fun m!2935673 () Bool)

(assert (=> bm!167418 m!2935673))

(declare-fun m!2935675 () Bool)

(assert (=> d!736660 m!2935675))

(declare-fun m!2935677 () Bool)

(assert (=> d!736660 m!2935677))

(declare-fun m!2935679 () Bool)

(assert (=> b!2600213 m!2935679))

(declare-fun m!2935681 () Bool)

(assert (=> b!2600213 m!2935681))

(declare-fun m!2935683 () Bool)

(assert (=> b!2600213 m!2935683))

(assert (=> b!2600182 d!736660))

(declare-fun d!736664 () Bool)

(assert (=> d!736664 (forall!6169 (-!215 (t!213129 l!3788) e!9458) p!2182)))

(declare-fun lt!915263 () Unit!44021)

(declare-fun choose!15458 (List!30088 B!2375 Int) Unit!44021)

(assert (=> d!736664 (= lt!915263 (choose!15458 (t!213129 l!3788) e!9458 p!2182))))

(assert (=> d!736664 (noDuplicate!536 (t!213129 l!3788))))

(assert (=> d!736664 (= (lemmaRemoveElmtMaintainsForall!49 (t!213129 l!3788) e!9458 p!2182) lt!915263)))

(declare-fun bs!473151 () Bool)

(assert (= bs!473151 d!736664))

(assert (=> bs!473151 m!2935673))

(assert (=> bs!473151 m!2935673))

(declare-fun m!2935685 () Bool)

(assert (=> bs!473151 m!2935685))

(declare-fun m!2935687 () Bool)

(assert (=> bs!473151 m!2935687))

(declare-fun m!2935689 () Bool)

(assert (=> bs!473151 m!2935689))

(assert (=> b!2600182 d!736664))

(declare-fun d!736666 () Bool)

(declare-fun res!1095237 () Bool)

(declare-fun e!1641303 () Bool)

(assert (=> d!736666 (=> res!1095237 e!1641303)))

(assert (=> d!736666 (= res!1095237 (is-Nil!29988 l!3788))))

(assert (=> d!736666 (= (forall!6169 l!3788 p!2182) e!1641303)))

(declare-fun b!2600221 () Bool)

(declare-fun e!1641304 () Bool)

(assert (=> b!2600221 (= e!1641303 e!1641304)))

(declare-fun res!1095238 () Bool)

(assert (=> b!2600221 (=> (not res!1095238) (not e!1641304))))

(assert (=> b!2600221 (= res!1095238 (dynLambda!12678 p!2182 (h!35408 l!3788)))))

(declare-fun b!2600222 () Bool)

(assert (=> b!2600222 (= e!1641304 (forall!6169 (t!213129 l!3788) p!2182))))

(assert (= (and d!736666 (not res!1095237)) b!2600221))

(assert (= (and b!2600221 res!1095238) b!2600222))

(declare-fun b_lambda!77789 () Bool)

(assert (=> (not b_lambda!77789) (not b!2600221)))

(declare-fun t!213134 () Bool)

(declare-fun tb!141511 () Bool)

(assert (=> (and start!252650 (= p!2182 p!2182) t!213134) tb!141511))

(declare-fun result!176038 () Bool)

(assert (=> tb!141511 (= result!176038 true)))

(assert (=> b!2600221 t!213134))

(declare-fun b_and!190257 () Bool)

(assert (= b_and!190255 (and (=> t!213134 result!176038) b_and!190257)))

(declare-fun m!2935691 () Bool)

(assert (=> b!2600221 m!2935691))

(declare-fun m!2935693 () Bool)

(assert (=> b!2600222 m!2935693))

(assert (=> b!2600180 d!736666))

(declare-fun d!736668 () Bool)

(declare-fun res!1095245 () Bool)

(declare-fun e!1641311 () Bool)

(assert (=> d!736668 (=> res!1095245 e!1641311)))

(assert (=> d!736668 (= res!1095245 (is-Nil!29988 l!3788))))

(assert (=> d!736668 (= (noDuplicate!536 l!3788) e!1641311)))

(declare-fun b!2600229 () Bool)

(declare-fun e!1641312 () Bool)

(assert (=> b!2600229 (= e!1641311 e!1641312)))

(declare-fun res!1095246 () Bool)

(assert (=> b!2600229 (=> (not res!1095246) (not e!1641312))))

(declare-fun contains!5535 (List!30088 B!2375) Bool)

(assert (=> b!2600229 (= res!1095246 (not (contains!5535 (t!213129 l!3788) (h!35408 l!3788))))))

(declare-fun b!2600230 () Bool)

(assert (=> b!2600230 (= e!1641312 (noDuplicate!536 (t!213129 l!3788)))))

(assert (= (and d!736668 (not res!1095245)) b!2600229))

(assert (= (and b!2600229 res!1095246) b!2600230))

(declare-fun m!2935699 () Bool)

(assert (=> b!2600229 m!2935699))

(assert (=> b!2600230 m!2935689))

(assert (=> start!252650 d!736668))

(declare-fun b!2600235 () Bool)

(declare-fun e!1641315 () Bool)

(declare-fun tp!823813 () Bool)

(assert (=> b!2600235 (= e!1641315 (and tp_is_empty!13655 tp!823813))))

(assert (=> b!2600183 (= tp!823803 e!1641315)))

(assert (= (and b!2600183 (is-Cons!29988 (t!213129 l!3788))) b!2600235))

(declare-fun b_lambda!77793 () Bool)

(assert (= b_lambda!77789 (or (and start!252650 b_free!72969) b_lambda!77793)))

(declare-fun b_lambda!77795 () Bool)

(assert (= b_lambda!77787 (or (and start!252650 b_free!72969) b_lambda!77795)))

(push 1)

(assert (not b_next!73673))

(assert (not b!2600230))

(assert (not b!2600235))

(assert tp_is_empty!13655)

(assert (not d!736664))

(assert (not b!2600222))

(assert (not d!736660))

(assert (not b_lambda!77795))

(assert (not b!2600201))

(assert (not b!2600229))

(assert (not b_lambda!77793))

(assert (not b!2600213))

(assert (not bm!167418))

(assert b_and!190257)

(check-sat)

(pop 1)

(push 1)

(assert b_and!190257)

(assert (not b_next!73673))

(check-sat)

(pop 1)

