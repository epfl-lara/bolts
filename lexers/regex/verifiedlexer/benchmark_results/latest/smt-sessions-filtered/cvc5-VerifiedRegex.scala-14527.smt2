; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!754854 () Bool)

(assert start!754854)

(declare-fun b!8019709 () Bool)

(declare-fun e!4724172 () Bool)

(declare-datatypes ((B!4123 0))(
  ( (B!4124 (val!32451 Int)) )
))
(declare-datatypes ((List!74963 0))(
  ( (Nil!74839) (Cons!74839 (h!81287 B!4123) (t!390706 List!74963)) )
))
(declare-fun s1!496 () List!74963)

(declare-fun tot!47 () List!74963)

(assert (=> b!8019709 (= e!4724172 (and (is-Cons!74839 s1!496) (= tot!47 Nil!74839)))))

(declare-fun res!3170977 () Bool)

(assert (=> start!754854 (=> (not res!3170977) (not e!4724172))))

(declare-fun tl2!39 () List!74963)

(declare-fun hd2!39 () B!4123)

(declare-fun ++!18529 (List!74963 List!74963) List!74963)

(assert (=> start!754854 (= res!3170977 (= (++!18529 s1!496 (Cons!74839 hd2!39 tl2!39)) tot!47))))

(assert (=> start!754854 e!4724172))

(declare-fun e!4724175 () Bool)

(assert (=> start!754854 e!4724175))

(declare-fun tp_is_empty!54011 () Bool)

(assert (=> start!754854 tp_is_empty!54011))

(declare-fun e!4724174 () Bool)

(assert (=> start!754854 e!4724174))

(declare-fun e!4724173 () Bool)

(assert (=> start!754854 e!4724173))

(declare-fun b!8019711 () Bool)

(declare-fun tp!2400271 () Bool)

(assert (=> b!8019711 (= e!4724174 (and tp_is_empty!54011 tp!2400271))))

(declare-fun b!8019712 () Bool)

(declare-fun tp!2400270 () Bool)

(assert (=> b!8019712 (= e!4724173 (and tp_is_empty!54011 tp!2400270))))

(declare-fun b!8019710 () Bool)

(declare-fun tp!2400269 () Bool)

(assert (=> b!8019710 (= e!4724175 (and tp_is_empty!54011 tp!2400269))))

(assert (= (and start!754854 res!3170977) b!8019709))

(assert (= (and start!754854 (is-Cons!74839 s1!496)) b!8019710))

(assert (= (and start!754854 (is-Cons!74839 tl2!39)) b!8019711))

(assert (= (and start!754854 (is-Cons!74839 tot!47)) b!8019712))

(declare-fun m!8382788 () Bool)

(assert (=> start!754854 m!8382788))

(push 1)

(assert (not b!8019711))

(assert (not b!8019710))

(assert (not b!8019712))

(assert tp_is_empty!54011)

(assert (not start!754854))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun b!8019735 () Bool)

(declare-fun res!3170985 () Bool)

(declare-fun e!4724193 () Bool)

(assert (=> b!8019735 (=> (not res!3170985) (not e!4724193))))

(declare-fun lt!2719636 () List!74963)

(declare-fun size!43630 (List!74963) Int)

(assert (=> b!8019735 (= res!3170985 (= (size!43630 lt!2719636) (+ (size!43630 s1!496) (size!43630 (Cons!74839 hd2!39 tl2!39)))))))

(declare-fun d!2391380 () Bool)

(assert (=> d!2391380 e!4724193))

(declare-fun res!3170986 () Bool)

(assert (=> d!2391380 (=> (not res!3170986) (not e!4724193))))

(declare-fun content!15929 (List!74963) (Set B!4123))

(assert (=> d!2391380 (= res!3170986 (= (content!15929 lt!2719636) (set.union (content!15929 s1!496) (content!15929 (Cons!74839 hd2!39 tl2!39)))))))

(declare-fun e!4724192 () List!74963)

(assert (=> d!2391380 (= lt!2719636 e!4724192)))

(declare-fun c!1471921 () Bool)

(assert (=> d!2391380 (= c!1471921 (is-Nil!74839 s1!496))))

(assert (=> d!2391380 (= (++!18529 s1!496 (Cons!74839 hd2!39 tl2!39)) lt!2719636)))

(declare-fun b!8019736 () Bool)

(assert (=> b!8019736 (= e!4724193 (or (not (= (Cons!74839 hd2!39 tl2!39) Nil!74839)) (= lt!2719636 s1!496)))))

(declare-fun b!8019733 () Bool)

(assert (=> b!8019733 (= e!4724192 (Cons!74839 hd2!39 tl2!39))))

(declare-fun b!8019734 () Bool)

(assert (=> b!8019734 (= e!4724192 (Cons!74839 (h!81287 s1!496) (++!18529 (t!390706 s1!496) (Cons!74839 hd2!39 tl2!39))))))

(assert (= (and d!2391380 c!1471921) b!8019733))

(assert (= (and d!2391380 (not c!1471921)) b!8019734))

(assert (= (and d!2391380 res!3170986) b!8019735))

(assert (= (and b!8019735 res!3170985) b!8019736))

(declare-fun m!8382792 () Bool)

(assert (=> b!8019735 m!8382792))

(declare-fun m!8382794 () Bool)

(assert (=> b!8019735 m!8382794))

(declare-fun m!8382796 () Bool)

(assert (=> b!8019735 m!8382796))

(declare-fun m!8382798 () Bool)

(assert (=> d!2391380 m!8382798))

(declare-fun m!8382800 () Bool)

(assert (=> d!2391380 m!8382800))

(declare-fun m!8382802 () Bool)

(assert (=> d!2391380 m!8382802))

(declare-fun m!8382804 () Bool)

(assert (=> b!8019734 m!8382804))

(assert (=> start!754854 d!2391380))

(declare-fun b!8019741 () Bool)

(declare-fun e!4724196 () Bool)

(declare-fun tp!2400283 () Bool)

(assert (=> b!8019741 (= e!4724196 (and tp_is_empty!54011 tp!2400283))))

(assert (=> b!8019711 (= tp!2400271 e!4724196)))

(assert (= (and b!8019711 (is-Cons!74839 (t!390706 tl2!39))) b!8019741))

(declare-fun b!8019742 () Bool)

(declare-fun e!4724197 () Bool)

(declare-fun tp!2400284 () Bool)

(assert (=> b!8019742 (= e!4724197 (and tp_is_empty!54011 tp!2400284))))

(assert (=> b!8019710 (= tp!2400269 e!4724197)))

(assert (= (and b!8019710 (is-Cons!74839 (t!390706 s1!496))) b!8019742))

(declare-fun b!8019743 () Bool)

(declare-fun e!4724198 () Bool)

(declare-fun tp!2400285 () Bool)

(assert (=> b!8019743 (= e!4724198 (and tp_is_empty!54011 tp!2400285))))

(assert (=> b!8019712 (= tp!2400270 e!4724198)))

(assert (= (and b!8019712 (is-Cons!74839 (t!390706 tot!47))) b!8019743))

(push 1)

(assert (not b!8019735))

(assert (not b!8019742))

(assert (not b!8019734))

(assert (not b!8019741))

(assert (not b!8019743))

(assert (not d!2391380))

(assert tp_is_empty!54011)

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

