; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!43904 () Bool)

(assert start!43904)

(declare-fun b!484527 () Bool)

(declare-fun e!285243 () Bool)

(declare-datatypes ((B!1146 0))(
  ( (B!1147 (val!7025 Int)) )
))
(declare-datatypes ((tuple2!9248 0))(
  ( (tuple2!9249 (_1!4634 (_ BitVec 64)) (_2!4634 B!1146)) )
))
(declare-datatypes ((List!9324 0))(
  ( (Nil!9321) (Cons!9320 (h!10176 tuple2!9248) (t!15554 List!9324)) )
))
(declare-fun lt!219386 () List!9324)

(declare-fun l!956 () List!9324)

(declare-fun length!13 (List!9324) Int)

(assert (=> b!484527 (= e!285243 (not (= (length!13 lt!219386) (+ 1 (length!13 l!956)))))))

(declare-fun key!251 () (_ BitVec 64))

(declare-fun value!166 () B!1146)

(declare-fun insertStrictlySorted!243 (List!9324 (_ BitVec 64) B!1146) List!9324)

(assert (=> b!484527 (= (length!13 (insertStrictlySorted!243 (t!15554 l!956) key!251 value!166)) (+ 1 (length!13 (t!15554 l!956))))))

(declare-datatypes ((Unit!14154 0))(
  ( (Unit!14155) )
))
(declare-fun lt!219385 () Unit!14154)

(declare-fun lemmaAddNewKeyIncrementSize!6 (List!9324 (_ BitVec 64) B!1146) Unit!14154)

(assert (=> b!484527 (= lt!219385 (lemmaAddNewKeyIncrementSize!6 (t!15554 l!956) key!251 value!166))))

(declare-fun b!484528 () Bool)

(declare-fun res!288707 () Bool)

(assert (=> b!484528 (=> (not res!288707) (not e!285243))))

(declare-fun containsKey!390 (List!9324 (_ BitVec 64)) Bool)

(assert (=> b!484528 (= res!288707 (not (containsKey!390 (t!15554 l!956) key!251)))))

(declare-fun b!484529 () Bool)

(declare-fun e!285242 () Bool)

(declare-fun tp_is_empty!13955 () Bool)

(declare-fun tp!43558 () Bool)

(assert (=> b!484529 (= e!285242 (and tp_is_empty!13955 tp!43558))))

(declare-fun res!288710 () Bool)

(declare-fun e!285244 () Bool)

(assert (=> start!43904 (=> (not res!288710) (not e!285244))))

(declare-fun isStrictlySorted!424 (List!9324) Bool)

(assert (=> start!43904 (= res!288710 (isStrictlySorted!424 l!956))))

(assert (=> start!43904 e!285244))

(assert (=> start!43904 e!285242))

(assert (=> start!43904 true))

(assert (=> start!43904 tp_is_empty!13955))

(declare-fun b!484530 () Bool)

(assert (=> b!484530 (= e!285244 e!285243)))

(declare-fun res!288708 () Bool)

(assert (=> b!484530 (=> (not res!288708) (not e!285243))))

(assert (=> b!484530 (= res!288708 (and (is-Cons!9320 l!956) (bvslt (_1!4634 (h!10176 l!956)) key!251)))))

(assert (=> b!484530 (= lt!219386 (insertStrictlySorted!243 l!956 key!251 value!166))))

(declare-fun b!484531 () Bool)

(declare-fun res!288709 () Bool)

(assert (=> b!484531 (=> (not res!288709) (not e!285243))))

(assert (=> b!484531 (= res!288709 (isStrictlySorted!424 (t!15554 l!956)))))

(declare-fun b!484532 () Bool)

(declare-fun res!288706 () Bool)

(assert (=> b!484532 (=> (not res!288706) (not e!285244))))

(assert (=> b!484532 (= res!288706 (not (containsKey!390 l!956 key!251)))))

(assert (= (and start!43904 res!288710) b!484532))

(assert (= (and b!484532 res!288706) b!484530))

(assert (= (and b!484530 res!288708) b!484531))

(assert (= (and b!484531 res!288709) b!484528))

(assert (= (and b!484528 res!288707) b!484527))

(assert (= (and start!43904 (is-Cons!9320 l!956)) b!484529))

(declare-fun m!464991 () Bool)

(assert (=> b!484528 m!464991))

(declare-fun m!464993 () Bool)

(assert (=> b!484531 m!464993))

(declare-fun m!464995 () Bool)

(assert (=> b!484527 m!464995))

(declare-fun m!464997 () Bool)

(assert (=> b!484527 m!464997))

(declare-fun m!464999 () Bool)

(assert (=> b!484527 m!464999))

(declare-fun m!465001 () Bool)

(assert (=> b!484527 m!465001))

(assert (=> b!484527 m!464997))

(declare-fun m!465003 () Bool)

(assert (=> b!484527 m!465003))

(declare-fun m!465005 () Bool)

(assert (=> b!484527 m!465005))

(declare-fun m!465007 () Bool)

(assert (=> start!43904 m!465007))

(declare-fun m!465009 () Bool)

(assert (=> b!484530 m!465009))

(declare-fun m!465011 () Bool)

(assert (=> b!484532 m!465011))

(push 1)

(assert (not b!484531))

(assert (not b!484532))

(assert (not b!484527))

(assert (not start!43904))

(assert tp_is_empty!13955)

(assert (not b!484530))

(assert (not b!484529))

(assert (not b!484528))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun b!484625 () Bool)

(declare-fun e!285297 () List!9324)

(declare-fun call!31172 () List!9324)

(assert (=> b!484625 (= e!285297 call!31172)))

(declare-fun bm!31167 () Bool)

(declare-fun e!285298 () List!9324)

(declare-fun c!58250 () Bool)

(declare-fun call!31170 () List!9324)

(declare-fun $colon$colon!124 (List!9324 tuple2!9248) List!9324)

(assert (=> bm!31167 (= call!31170 ($colon$colon!124 e!285298 (ite c!58250 (h!10176 l!956) (tuple2!9249 key!251 value!166))))))

(declare-fun c!58253 () Bool)

(assert (=> bm!31167 (= c!58253 c!58250)))

(declare-fun d!77031 () Bool)

(declare-fun e!285299 () Bool)

(assert (=> d!77031 e!285299))

(declare-fun res!288739 () Bool)

(assert (=> d!77031 (=> (not res!288739) (not e!285299))))

(declare-fun lt!219395 () List!9324)

(assert (=> d!77031 (= res!288739 (isStrictlySorted!424 lt!219395))))

(declare-fun e!285301 () List!9324)

(assert (=> d!77031 (= lt!219395 e!285301)))

(assert (=> d!77031 (= c!58250 (and (is-Cons!9320 l!956) (bvslt (_1!4634 (h!10176 l!956)) key!251)))))

(assert (=> d!77031 (isStrictlySorted!424 l!956)))

(assert (=> d!77031 (= (insertStrictlySorted!243 l!956 key!251 value!166) lt!219395)))

(declare-fun b!484626 () Bool)

(declare-fun contains!2688 (List!9324 tuple2!9248) Bool)

(assert (=> b!484626 (= e!285299 (contains!2688 lt!219395 (tuple2!9249 key!251 value!166)))))

(declare-fun b!484627 () Bool)

(assert (=> b!484627 (= e!285297 call!31172)))

(declare-fun b!484628 () Bool)

(declare-fun res!288740 () Bool)

(assert (=> b!484628 (=> (not res!288740) (not e!285299))))

(assert (=> b!484628 (= res!288740 (containsKey!390 lt!219395 key!251))))

(declare-fun b!484629 () Bool)

(declare-fun e!285300 () List!9324)

(assert (=> b!484629 (= e!285301 e!285300)))

(declare-fun c!58252 () Bool)

(assert (=> b!484629 (= c!58252 (and (is-Cons!9320 l!956) (= (_1!4634 (h!10176 l!956)) key!251)))))

(declare-fun b!484630 () Bool)

(assert (=> b!484630 (= e!285298 (insertStrictlySorted!243 (t!15554 l!956) key!251 value!166))))

(declare-fun bm!31168 () Bool)

(declare-fun call!31171 () List!9324)

(assert (=> bm!31168 (= call!31171 call!31170)))

(declare-fun b!484631 () Bool)

(assert (=> b!484631 (= e!285300 call!31171)))

(declare-fun b!484632 () Bool)

(declare-fun c!58251 () Bool)

(assert (=> b!484632 (= c!58251 (and (is-Cons!9320 l!956) (bvsgt (_1!4634 (h!10176 l!956)) key!251)))))

(assert (=> b!484632 (= e!285300 e!285297)))

(declare-fun b!484633 () Bool)

(assert (=> b!484633 (= e!285298 (ite c!58252 (t!15554 l!956) (ite c!58251 (Cons!9320 (h!10176 l!956) (t!15554 l!956)) Nil!9321)))))

(declare-fun b!484634 () Bool)

(assert (=> b!484634 (= e!285301 call!31170)))

(declare-fun bm!31169 () Bool)

(assert (=> bm!31169 (= call!31172 call!31171)))

(assert (= (and d!77031 c!58250) b!484634))

(assert (= (and d!77031 (not c!58250)) b!484629))

(assert (= (and b!484629 c!58252) b!484631))

(assert (= (and b!484629 (not c!58252)) b!484632))

(assert (= (and b!484632 c!58251) b!484625))

(assert (= (and b!484632 (not c!58251)) b!484627))

(assert (= (or b!484625 b!484627) bm!31169))

(assert (= (or b!484631 bm!31169) bm!31168))

(assert (= (or b!484634 bm!31168) bm!31167))

(assert (= (and bm!31167 c!58253) b!484630))

(assert (= (and bm!31167 (not c!58253)) b!484633))

(assert (= (and d!77031 res!288739) b!484628))

(assert (= (and b!484628 res!288740) b!484626))

(declare-fun m!465043 () Bool)

(assert (=> bm!31167 m!465043))

(declare-fun m!465045 () Bool)

(assert (=> b!484626 m!465045))

(declare-fun m!465047 () Bool)

(assert (=> b!484628 m!465047))

(declare-fun m!465049 () Bool)

(assert (=> d!77031 m!465049))

(assert (=> d!77031 m!465007))

(assert (=> b!484630 m!464997))

(assert (=> b!484530 d!77031))

(declare-fun d!77041 () Bool)

(declare-fun res!288747 () Bool)

(declare-fun e!285311 () Bool)

(assert (=> d!77041 (=> res!288747 e!285311)))

(assert (=> d!77041 (= res!288747 (and (is-Cons!9320 l!956) (= (_1!4634 (h!10176 l!956)) key!251)))))

(assert (=> d!77041 (= (containsKey!390 l!956 key!251) e!285311)))

(declare-fun b!484649 () Bool)

(declare-fun e!285312 () Bool)

(assert (=> b!484649 (= e!285311 e!285312)))

(declare-fun res!288748 () Bool)

(assert (=> b!484649 (=> (not res!288748) (not e!285312))))

(assert (=> b!484649 (= res!288748 (and (or (not (is-Cons!9320 l!956)) (bvsle (_1!4634 (h!10176 l!956)) key!251)) (is-Cons!9320 l!956) (bvslt (_1!4634 (h!10176 l!956)) key!251)))))

(declare-fun b!484650 () Bool)

(assert (=> b!484650 (= e!285312 (containsKey!390 (t!15554 l!956) key!251))))

(assert (= (and d!77041 (not res!288747)) b!484649))

(assert (= (and b!484649 res!288748) b!484650))

(assert (=> b!484650 m!464991))

(assert (=> b!484532 d!77041))

(declare-fun d!77053 () Bool)

(declare-fun res!288763 () Bool)

(declare-fun e!285330 () Bool)

(assert (=> d!77053 (=> res!288763 e!285330)))

(assert (=> d!77053 (= res!288763 (or (is-Nil!9321 (t!15554 l!956)) (is-Nil!9321 (t!15554 (t!15554 l!956)))))))

(assert (=> d!77053 (= (isStrictlySorted!424 (t!15554 l!956)) e!285330)))

(declare-fun b!484673 () Bool)

(declare-fun e!285331 () Bool)

(assert (=> b!484673 (= e!285330 e!285331)))

(declare-fun res!288764 () Bool)

(assert (=> b!484673 (=> (not res!288764) (not e!285331))))

(assert (=> b!484673 (= res!288764 (bvslt (_1!4634 (h!10176 (t!15554 l!956))) (_1!4634 (h!10176 (t!15554 (t!15554 l!956))))))))

(declare-fun b!484674 () Bool)

(assert (=> b!484674 (= e!285331 (isStrictlySorted!424 (t!15554 (t!15554 l!956))))))

(assert (= (and d!77053 (not res!288763)) b!484673))

(assert (= (and b!484673 res!288764) b!484674))

(declare-fun m!465081 () Bool)

(assert (=> b!484674 m!465081))

(assert (=> b!484531 d!77053))

(declare-fun d!77065 () Bool)

(declare-fun res!288766 () Bool)

(declare-fun e!285335 () Bool)

(assert (=> d!77065 (=> res!288766 e!285335)))

(assert (=> d!77065 (= res!288766 (and (is-Cons!9320 (t!15554 l!956)) (= (_1!4634 (h!10176 (t!15554 l!956))) key!251)))))

(assert (=> d!77065 (= (containsKey!390 (t!15554 l!956) key!251) e!285335)))

(declare-fun b!484681 () Bool)

(declare-fun e!285337 () Bool)

(assert (=> b!484681 (= e!285335 e!285337)))

(declare-fun res!288768 () Bool)

(assert (=> b!484681 (=> (not res!288768) (not e!285337))))

(assert (=> b!484681 (= res!288768 (and (or (not (is-Cons!9320 (t!15554 l!956))) (bvsle (_1!4634 (h!10176 (t!15554 l!956))) key!251)) (is-Cons!9320 (t!15554 l!956)) (bvslt (_1!4634 (h!10176 (t!15554 l!956))) key!251)))))

(declare-fun b!484682 () Bool)

(assert (=> b!484682 (= e!285337 (containsKey!390 (t!15554 (t!15554 l!956)) key!251))))

(assert (= (and d!77065 (not res!288766)) b!484681))

(assert (= (and b!484681 res!288768) b!484682))

(declare-fun m!465084 () Bool)

(assert (=> b!484682 m!465084))

(assert (=> b!484528 d!77065))

(declare-fun b!484686 () Bool)

(declare-fun e!285341 () List!9324)

(declare-fun call!31181 () List!9324)

(assert (=> b!484686 (= e!285341 call!31181)))

(declare-fun bm!31176 () Bool)

(declare-fun call!31179 () List!9324)

(declare-fun c!58262 () Bool)

(declare-fun e!285342 () List!9324)

(assert (=> bm!31176 (= call!31179 ($colon$colon!124 e!285342 (ite c!58262 (h!10176 (t!15554 l!956)) (tuple2!9249 key!251 value!166))))))

(declare-fun c!58265 () Bool)

(assert (=> bm!31176 (= c!58265 c!58262)))

(declare-fun d!77067 () Bool)

(declare-fun e!285343 () Bool)

(assert (=> d!77067 e!285343))

(declare-fun res!288771 () Bool)

(assert (=> d!77067 (=> (not res!288771) (not e!285343))))

(declare-fun lt!219404 () List!9324)

(assert (=> d!77067 (= res!288771 (isStrictlySorted!424 lt!219404))))

(declare-fun e!285345 () List!9324)

(assert (=> d!77067 (= lt!219404 e!285345)))

(assert (=> d!77067 (= c!58262 (and (is-Cons!9320 (t!15554 l!956)) (bvslt (_1!4634 (h!10176 (t!15554 l!956))) key!251)))))

(assert (=> d!77067 (isStrictlySorted!424 (t!15554 l!956))))

(assert (=> d!77067 (= (insertStrictlySorted!243 (t!15554 l!956) key!251 value!166) lt!219404)))

(declare-fun b!484687 () Bool)

(assert (=> b!484687 (= e!285343 (contains!2688 lt!219404 (tuple2!9249 key!251 value!166)))))

(declare-fun b!484688 () Bool)

(assert (=> b!484688 (= e!285341 call!31181)))

(declare-fun b!484689 () Bool)

(declare-fun res!288772 () Bool)

(assert (=> b!484689 (=> (not res!288772) (not e!285343))))

(assert (=> b!484689 (= res!288772 (containsKey!390 lt!219404 key!251))))

(declare-fun b!484690 () Bool)

(declare-fun e!285344 () List!9324)

(assert (=> b!484690 (= e!285345 e!285344)))

(declare-fun c!58264 () Bool)

(assert (=> b!484690 (= c!58264 (and (is-Cons!9320 (t!15554 l!956)) (= (_1!4634 (h!10176 (t!15554 l!956))) key!251)))))

(declare-fun b!484691 () Bool)

(assert (=> b!484691 (= e!285342 (insertStrictlySorted!243 (t!15554 (t!15554 l!956)) key!251 value!166))))

(declare-fun bm!31177 () Bool)

(declare-fun call!31180 () List!9324)

(assert (=> bm!31177 (= call!31180 call!31179)))

(declare-fun b!484692 () Bool)

(assert (=> b!484692 (= e!285344 call!31180)))

(declare-fun b!484693 () Bool)

(declare-fun c!58263 () Bool)

(assert (=> b!484693 (= c!58263 (and (is-Cons!9320 (t!15554 l!956)) (bvsgt (_1!4634 (h!10176 (t!15554 l!956))) key!251)))))

(assert (=> b!484693 (= e!285344 e!285341)))

(declare-fun b!484694 () Bool)

(assert (=> b!484694 (= e!285342 (ite c!58264 (t!15554 (t!15554 l!956)) (ite c!58263 (Cons!9320 (h!10176 (t!15554 l!956)) (t!15554 (t!15554 l!956))) Nil!9321)))))

(declare-fun b!484695 () Bool)

(assert (=> b!484695 (= e!285345 call!31179)))

(declare-fun bm!31178 () Bool)

(assert (=> bm!31178 (= call!31181 call!31180)))

(assert (= (and d!77067 c!58262) b!484695))

(assert (= (and d!77067 (not c!58262)) b!484690))

(assert (= (and b!484690 c!58264) b!484692))

(assert (= (and b!484690 (not c!58264)) b!484693))

(assert (= (and b!484693 c!58263) b!484686))

(assert (= (and b!484693 (not c!58263)) b!484688))

(assert (= (or b!484686 b!484688) bm!31178))

(assert (= (or b!484692 bm!31178) bm!31177))

(assert (= (or b!484695 bm!31177) bm!31176))

(assert (= (and bm!31176 c!58265) b!484691))

(assert (= (and bm!31176 (not c!58265)) b!484694))

(assert (= (and d!77067 res!288771) b!484689))

(assert (= (and b!484689 res!288772) b!484687))

(declare-fun m!465087 () Bool)

(assert (=> bm!31176 m!465087))

(declare-fun m!465089 () Bool)

(assert (=> b!484687 m!465089))

(declare-fun m!465091 () Bool)

(assert (=> b!484689 m!465091))

(declare-fun m!465093 () Bool)

(assert (=> d!77067 m!465093))

(assert (=> d!77067 m!464993))

(declare-fun m!465095 () Bool)

(assert (=> b!484691 m!465095))

(assert (=> b!484527 d!77067))

(declare-fun d!77073 () Bool)

(declare-fun size!15444 (List!9324) Int)

(assert (=> d!77073 (= (length!13 (insertStrictlySorted!243 (t!15554 l!956) key!251 value!166)) (size!15444 (insertStrictlySorted!243 (t!15554 l!956) key!251 value!166)))))

(declare-fun bs!15433 () Bool)

(assert (= bs!15433 d!77073))

(assert (=> bs!15433 m!464997))

(declare-fun m!465097 () Bool)

(assert (=> bs!15433 m!465097))

(assert (=> b!484527 d!77073))

(declare-fun d!77075 () Bool)

(assert (=> d!77075 (= (length!13 (insertStrictlySorted!243 (t!15554 l!956) key!251 value!166)) (+ (length!13 (t!15554 l!956)) 1))))

(declare-fun lt!219407 () Unit!14154)

(declare-fun choose!1392 (List!9324 (_ BitVec 64) B!1146) Unit!14154)

(assert (=> d!77075 (= lt!219407 (choose!1392 (t!15554 l!956) key!251 value!166))))

(assert (=> d!77075 (isStrictlySorted!424 (t!15554 l!956))))

(assert (=> d!77075 (= (lemmaAddNewKeyIncrementSize!6 (t!15554 l!956) key!251 value!166) lt!219407)))

(declare-fun bs!15434 () Bool)

(assert (= bs!15434 d!77075))

(assert (=> bs!15434 m!464993))

(assert (=> bs!15434 m!465001))

(declare-fun m!465101 () Bool)

(assert (=> bs!15434 m!465101))

(assert (=> bs!15434 m!464997))

(assert (=> bs!15434 m!464999))

(assert (=> bs!15434 m!464997))

(assert (=> b!484527 d!77075))

(declare-fun d!77079 () Bool)

(assert (=> d!77079 (= (length!13 lt!219386) (size!15444 lt!219386))))

(declare-fun bs!15435 () Bool)

(assert (= bs!15435 d!77079))

(declare-fun m!465103 () Bool)

(assert (=> bs!15435 m!465103))

(assert (=> b!484527 d!77079))

(declare-fun d!77081 () Bool)

(assert (=> d!77081 (= (length!13 (t!15554 l!956)) (size!15444 (t!15554 l!956)))))

(declare-fun bs!15436 () Bool)

(assert (= bs!15436 d!77081))

(declare-fun m!465105 () Bool)

(assert (=> bs!15436 m!465105))

(assert (=> b!484527 d!77081))

(declare-fun d!77083 () Bool)

(assert (=> d!77083 (= (length!13 l!956) (size!15444 l!956))))

(declare-fun bs!15437 () Bool)

(assert (= bs!15437 d!77083))

(declare-fun m!465107 () Bool)

(assert (=> bs!15437 m!465107))

(assert (=> b!484527 d!77083))

(declare-fun d!77085 () Bool)

(declare-fun res!288781 () Bool)

(declare-fun e!285357 () Bool)

(assert (=> d!77085 (=> res!288781 e!285357)))

(assert (=> d!77085 (= res!288781 (or (is-Nil!9321 l!956) (is-Nil!9321 (t!15554 l!956))))))

(assert (=> d!77085 (= (isStrictlySorted!424 l!956) e!285357)))

(declare-fun b!484709 () Bool)

(declare-fun e!285358 () Bool)

(assert (=> b!484709 (= e!285357 e!285358)))

(declare-fun res!288782 () Bool)

(assert (=> b!484709 (=> (not res!288782) (not e!285358))))

(assert (=> b!484709 (= res!288782 (bvslt (_1!4634 (h!10176 l!956)) (_1!4634 (h!10176 (t!15554 l!956)))))))

(declare-fun b!484710 () Bool)

(assert (=> b!484710 (= e!285358 (isStrictlySorted!424 (t!15554 l!956)))))

(assert (= (and d!77085 (not res!288781)) b!484709))

(assert (= (and b!484709 res!288782) b!484710))

(assert (=> b!484710 m!464993))

(assert (=> start!43904 d!77085))

(declare-fun b!484715 () Bool)

(declare-fun e!285361 () Bool)

(declare-fun tp!43567 () Bool)

(assert (=> b!484715 (= e!285361 (and tp_is_empty!13955 tp!43567))))

(assert (=> b!484529 (= tp!43558 e!285361)))

(assert (= (and b!484529 (is-Cons!9320 (t!15554 l!956))) b!484715))

(push 1)

(assert (not d!77081))

(assert (not d!77075))

(assert (not b!484715))

(assert (not b!484674))

(assert (not d!77079))

(assert (not b!484628))

(assert (not b!484689))

(assert (not b!484630))

(assert (not b!484682))

(assert (not bm!31167))

(assert (not b!484687))

(assert (not d!77073))

(assert (not bm!31176))

(assert (not b!484650))

(assert (not b!484626))

(assert tp_is_empty!13955)

(assert (not b!484691))

(assert (not d!77067))

(assert (not d!77031))

(assert (not b!484710))

(assert (not d!77083))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!77151 () Bool)

(declare-fun lt!219432 () Bool)

(declare-fun content!215 (List!9324) (Set tuple2!9248))

(assert (=> d!77151 (= lt!219432 (member (tuple2!9249 key!251 value!166) (content!215 lt!219404)))))

(declare-fun e!285431 () Bool)

(assert (=> d!77151 (= lt!219432 e!285431)))

(declare-fun res!288831 () Bool)

(assert (=> d!77151 (=> (not res!288831) (not e!285431))))

(assert (=> d!77151 (= res!288831 (is-Cons!9320 lt!219404))))

(assert (=> d!77151 (= (contains!2688 lt!219404 (tuple2!9249 key!251 value!166)) lt!219432)))

(declare-fun b!484806 () Bool)

(declare-fun e!285430 () Bool)

(assert (=> b!484806 (= e!285431 e!285430)))

(declare-fun res!288832 () Bool)

(assert (=> b!484806 (=> res!288832 e!285430)))

(assert (=> b!484806 (= res!288832 (= (h!10176 lt!219404) (tuple2!9249 key!251 value!166)))))

(declare-fun b!484807 () Bool)

(assert (=> b!484807 (= e!285430 (contains!2688 (t!15554 lt!219404) (tuple2!9249 key!251 value!166)))))

(assert (= (and d!77151 res!288831) b!484806))

(assert (= (and b!484806 (not res!288832)) b!484807))

(declare-fun m!465189 () Bool)

(assert (=> d!77151 m!465189))

(declare-fun m!465191 () Bool)

(assert (=> d!77151 m!465191))

(declare-fun m!465193 () Bool)

(assert (=> b!484807 m!465193))

(assert (=> b!484687 d!77151))

(assert (=> b!484630 d!77067))

(declare-fun d!77153 () Bool)

(declare-fun lt!219435 () Int)

(assert (=> d!77153 (>= lt!219435 0)))

(declare-fun e!285434 () Int)

(assert (=> d!77153 (= lt!219435 e!285434)))

(declare-fun c!58288 () Bool)

(assert (=> d!77153 (= c!58288 (is-Nil!9321 (t!15554 l!956)))))

(assert (=> d!77153 (= (size!15444 (t!15554 l!956)) lt!219435)))

(declare-fun b!484812 () Bool)

(assert (=> b!484812 (= e!285434 0)))

(declare-fun b!484813 () Bool)

(assert (=> b!484813 (= e!285434 (+ 1 (size!15444 (t!15554 (t!15554 l!956)))))))

(assert (= (and d!77153 c!58288) b!484812))

(assert (= (and d!77153 (not c!58288)) b!484813))

(declare-fun m!465195 () Bool)

(assert (=> b!484813 m!465195))

(assert (=> d!77081 d!77153))

(declare-fun d!77155 () Bool)

(declare-fun res!288833 () Bool)

(declare-fun e!285435 () Bool)

(assert (=> d!77155 (=> res!288833 e!285435)))

(assert (=> d!77155 (= res!288833 (or (is-Nil!9321 (t!15554 (t!15554 l!956))) (is-Nil!9321 (t!15554 (t!15554 (t!15554 l!956))))))))

(assert (=> d!77155 (= (isStrictlySorted!424 (t!15554 (t!15554 l!956))) e!285435)))

(declare-fun b!484814 () Bool)

(declare-fun e!285436 () Bool)

(assert (=> b!484814 (= e!285435 e!285436)))

(declare-fun res!288834 () Bool)

(assert (=> b!484814 (=> (not res!288834) (not e!285436))))

(assert (=> b!484814 (= res!288834 (bvslt (_1!4634 (h!10176 (t!15554 (t!15554 l!956)))) (_1!4634 (h!10176 (t!15554 (t!15554 (t!15554 l!956)))))))))

(declare-fun b!484815 () Bool)

(assert (=> b!484815 (= e!285436 (isStrictlySorted!424 (t!15554 (t!15554 (t!15554 l!956)))))))

(assert (= (and d!77155 (not res!288833)) b!484814))

(assert (= (and b!484814 res!288834) b!484815))

(declare-fun m!465197 () Bool)

(assert (=> b!484815 m!465197))

(assert (=> b!484674 d!77155))

(declare-fun d!77157 () Bool)

(declare-fun lt!219436 () Int)

(assert (=> d!77157 (>= lt!219436 0)))

(declare-fun e!285437 () Int)

(assert (=> d!77157 (= lt!219436 e!285437)))

(declare-fun c!58289 () Bool)

(assert (=> d!77157 (= c!58289 (is-Nil!9321 (insertStrictlySorted!243 (t!15554 l!956) key!251 value!166)))))

(assert (=> d!77157 (= (size!15444 (insertStrictlySorted!243 (t!15554 l!956) key!251 value!166)) lt!219436)))

(declare-fun b!484816 () Bool)

(assert (=> b!484816 (= e!285437 0)))

(declare-fun b!484817 () Bool)

(assert (=> b!484817 (= e!285437 (+ 1 (size!15444 (t!15554 (insertStrictlySorted!243 (t!15554 l!956) key!251 value!166)))))))

(assert (= (and d!77157 c!58289) b!484816))

(assert (= (and d!77157 (not c!58289)) b!484817))

(declare-fun m!465199 () Bool)

(assert (=> b!484817 m!465199))

(assert (=> d!77073 d!77157))

(declare-fun d!77159 () Bool)

(declare-fun res!288835 () Bool)

(declare-fun e!285438 () Bool)

(assert (=> d!77159 (=> res!288835 e!285438)))

(assert (=> d!77159 (= res!288835 (and (is-Cons!9320 lt!219404) (= (_1!4634 (h!10176 lt!219404)) key!251)))))

(assert (=> d!77159 (= (containsKey!390 lt!219404 key!251) e!285438)))

(declare-fun b!484818 () Bool)

(declare-fun e!285439 () Bool)

(assert (=> b!484818 (= e!285438 e!285439)))

(declare-fun res!288836 () Bool)

(assert (=> b!484818 (=> (not res!288836) (not e!285439))))

(assert (=> b!484818 (= res!288836 (and (or (not (is-Cons!9320 lt!219404)) (bvsle (_1!4634 (h!10176 lt!219404)) key!251)) (is-Cons!9320 lt!219404) (bvslt (_1!4634 (h!10176 lt!219404)) key!251)))))

(declare-fun b!484819 () Bool)

(assert (=> b!484819 (= e!285439 (containsKey!390 (t!15554 lt!219404) key!251))))

(assert (= (and d!77159 (not res!288835)) b!484818))

(assert (= (and b!484818 res!288836) b!484819))

(declare-fun m!465201 () Bool)

(assert (=> b!484819 m!465201))

(assert (=> b!484689 d!77159))

(declare-fun b!484820 () Bool)

(declare-fun e!285440 () List!9324)

(declare-fun call!31190 () List!9324)

(assert (=> b!484820 (= e!285440 call!31190)))

(declare-fun e!285441 () List!9324)

(declare-fun bm!31185 () Bool)

(declare-fun call!31188 () List!9324)

(declare-fun c!58290 () Bool)

(assert (=> bm!31185 (= call!31188 ($colon$colon!124 e!285441 (ite c!58290 (h!10176 (t!15554 (t!15554 l!956))) (tuple2!9249 key!251 value!166))))))

(declare-fun c!58293 () Bool)

(assert (=> bm!31185 (= c!58293 c!58290)))

(declare-fun d!77161 () Bool)

(declare-fun e!285442 () Bool)

(assert (=> d!77161 e!285442))

(declare-fun res!288837 () Bool)

(assert (=> d!77161 (=> (not res!288837) (not e!285442))))

(declare-fun lt!219437 () List!9324)

(assert (=> d!77161 (= res!288837 (isStrictlySorted!424 lt!219437))))

(declare-fun e!285444 () List!9324)

(assert (=> d!77161 (= lt!219437 e!285444)))

(assert (=> d!77161 (= c!58290 (and (is-Cons!9320 (t!15554 (t!15554 l!956))) (bvslt (_1!4634 (h!10176 (t!15554 (t!15554 l!956)))) key!251)))))

(assert (=> d!77161 (isStrictlySorted!424 (t!15554 (t!15554 l!956)))))

(assert (=> d!77161 (= (insertStrictlySorted!243 (t!15554 (t!15554 l!956)) key!251 value!166) lt!219437)))

(declare-fun b!484821 () Bool)

(assert (=> b!484821 (= e!285442 (contains!2688 lt!219437 (tuple2!9249 key!251 value!166)))))

(declare-fun b!484822 () Bool)

(assert (=> b!484822 (= e!285440 call!31190)))

(declare-fun b!484823 () Bool)

(declare-fun res!288838 () Bool)

(assert (=> b!484823 (=> (not res!288838) (not e!285442))))

(assert (=> b!484823 (= res!288838 (containsKey!390 lt!219437 key!251))))

(declare-fun b!484824 () Bool)

(declare-fun e!285443 () List!9324)

(assert (=> b!484824 (= e!285444 e!285443)))

(declare-fun c!58292 () Bool)

(assert (=> b!484824 (= c!58292 (and (is-Cons!9320 (t!15554 (t!15554 l!956))) (= (_1!4634 (h!10176 (t!15554 (t!15554 l!956)))) key!251)))))

(declare-fun b!484825 () Bool)

(assert (=> b!484825 (= e!285441 (insertStrictlySorted!243 (t!15554 (t!15554 (t!15554 l!956))) key!251 value!166))))

(declare-fun bm!31186 () Bool)

(declare-fun call!31189 () List!9324)

(assert (=> bm!31186 (= call!31189 call!31188)))

(declare-fun b!484826 () Bool)

(assert (=> b!484826 (= e!285443 call!31189)))

(declare-fun b!484827 () Bool)

(declare-fun c!58291 () Bool)

(assert (=> b!484827 (= c!58291 (and (is-Cons!9320 (t!15554 (t!15554 l!956))) (bvsgt (_1!4634 (h!10176 (t!15554 (t!15554 l!956)))) key!251)))))

(assert (=> b!484827 (= e!285443 e!285440)))

(declare-fun b!484828 () Bool)

(assert (=> b!484828 (= e!285441 (ite c!58292 (t!15554 (t!15554 (t!15554 l!956))) (ite c!58291 (Cons!9320 (h!10176 (t!15554 (t!15554 l!956))) (t!15554 (t!15554 (t!15554 l!956)))) Nil!9321)))))

(declare-fun b!484829 () Bool)

(assert (=> b!484829 (= e!285444 call!31188)))

(declare-fun bm!31187 () Bool)

(assert (=> bm!31187 (= call!31190 call!31189)))

(assert (= (and d!77161 c!58290) b!484829))

(assert (= (and d!77161 (not c!58290)) b!484824))

(assert (= (and b!484824 c!58292) b!484826))

(assert (= (and b!484824 (not c!58292)) b!484827))

(assert (= (and b!484827 c!58291) b!484820))

(assert (= (and b!484827 (not c!58291)) b!484822))

(assert (= (or b!484820 b!484822) bm!31187))

(assert (= (or b!484826 bm!31187) bm!31186))

(assert (= (or b!484829 bm!31186) bm!31185))

(assert (= (and bm!31185 c!58293) b!484825))

