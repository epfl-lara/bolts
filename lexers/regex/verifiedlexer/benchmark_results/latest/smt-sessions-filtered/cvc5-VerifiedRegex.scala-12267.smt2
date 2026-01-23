; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!690058 () Bool)

(assert start!690058)

(declare-fun b!7089485 () Bool)

(declare-fun e!4261950 () Bool)

(declare-fun tp!1947094 () Bool)

(declare-fun tp!1947098 () Bool)

(assert (=> b!7089485 (= e!4261950 (and tp!1947094 tp!1947098))))

(declare-fun b!7089486 () Bool)

(declare-fun tp!1947097 () Bool)

(assert (=> b!7089486 (= e!4261950 tp!1947097)))

(declare-fun b!7089487 () Bool)

(declare-fun res!2895555 () Bool)

(declare-fun e!4261951 () Bool)

(assert (=> b!7089487 (=> (not res!2895555) (not e!4261951))))

(declare-datatypes ((C!35822 0))(
  ( (C!35823 (val!27617 Int)) )
))
(declare-datatypes ((Regex!17776 0))(
  ( (ElementMatch!17776 (c!1323163 C!35822)) (Concat!26621 (regOne!36064 Regex!17776) (regTwo!36064 Regex!17776)) (EmptyExpr!17776) (Star!17776 (reg!18105 Regex!17776)) (EmptyLang!17776) (Union!17776 (regOne!36065 Regex!17776) (regTwo!36065 Regex!17776)) )
))
(declare-fun r!11554 () Regex!17776)

(declare-fun a!1901 () C!35822)

(assert (=> b!7089487 (= res!2895555 (and (or (not (is-ElementMatch!17776 r!11554)) (not (= (c!1323163 r!11554) a!1901))) (not (is-Union!17776 r!11554)) (is-Concat!26621 r!11554)))))

(declare-fun res!2895553 () Bool)

(assert (=> start!690058 (=> (not res!2895553) (not e!4261951))))

(declare-fun validRegex!9051 (Regex!17776) Bool)

(assert (=> start!690058 (= res!2895553 (validRegex!9051 r!11554))))

(assert (=> start!690058 e!4261951))

(assert (=> start!690058 e!4261950))

(declare-fun tp_is_empty!44785 () Bool)

(assert (=> start!690058 tp_is_empty!44785))

(declare-datatypes ((List!68739 0))(
  ( (Nil!68615) (Cons!68615 (h!75063 Regex!17776) (t!382524 List!68739)) )
))
(declare-datatypes ((Context!13544 0))(
  ( (Context!13545 (exprs!7272 List!68739)) )
))
(declare-fun c!9994 () Context!13544)

(declare-fun e!4261949 () Bool)

(declare-fun inv!87306 (Context!13544) Bool)

(assert (=> start!690058 (and (inv!87306 c!9994) e!4261949)))

(declare-fun b!7089488 () Bool)

(assert (=> b!7089488 (= e!4261950 tp_is_empty!44785)))

(declare-fun b!7089489 () Bool)

(declare-fun tp!1947093 () Bool)

(declare-fun tp!1947096 () Bool)

(assert (=> b!7089489 (= e!4261950 (and tp!1947093 tp!1947096))))

(declare-fun b!7089490 () Bool)

(declare-fun res!2895554 () Bool)

(assert (=> b!7089490 (=> (not res!2895554) (not e!4261951))))

(declare-fun nullable!7416 (Regex!17776) Bool)

(assert (=> b!7089490 (= res!2895554 (nullable!7416 (regOne!36064 r!11554)))))

(declare-fun b!7089491 () Bool)

(declare-fun tp!1947095 () Bool)

(assert (=> b!7089491 (= e!4261949 tp!1947095)))

(declare-fun b!7089492 () Bool)

(declare-fun lambda!429638 () Int)

(declare-fun forall!16716 (List!68739 Int) Bool)

(assert (=> b!7089492 (= e!4261951 (not (forall!16716 (exprs!7272 c!9994) lambda!429638)))))

(assert (= (and start!690058 res!2895553) b!7089487))

(assert (= (and b!7089487 res!2895555) b!7089490))

(assert (= (and b!7089490 res!2895554) b!7089492))

(assert (= (and start!690058 (is-ElementMatch!17776 r!11554)) b!7089488))

(assert (= (and start!690058 (is-Concat!26621 r!11554)) b!7089485))

(assert (= (and start!690058 (is-Star!17776 r!11554)) b!7089486))

(assert (= (and start!690058 (is-Union!17776 r!11554)) b!7089489))

(assert (= start!690058 b!7089491))

(declare-fun m!7819272 () Bool)

(assert (=> start!690058 m!7819272))

(declare-fun m!7819274 () Bool)

(assert (=> start!690058 m!7819274))

(declare-fun m!7819276 () Bool)

(assert (=> b!7089490 m!7819276))

(declare-fun m!7819278 () Bool)

(assert (=> b!7089492 m!7819278))

(push 1)

(assert (not b!7089486))

(assert (not b!7089491))

(assert (not b!7089492))

(assert (not b!7089489))

(assert (not b!7089485))

(assert (not b!7089490))

(assert tp_is_empty!44785)

(assert (not start!690058))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!2216646 () Bool)

(declare-fun nullableFct!2839 (Regex!17776) Bool)

(assert (=> d!2216646 (= (nullable!7416 (regOne!36064 r!11554)) (nullableFct!2839 (regOne!36064 r!11554)))))

(declare-fun bs!1883333 () Bool)

(assert (= bs!1883333 d!2216646))

(declare-fun m!7819288 () Bool)

(assert (=> bs!1883333 m!7819288))

(assert (=> b!7089490 d!2216646))

(declare-fun d!2216648 () Bool)

(declare-fun res!2895569 () Bool)

(declare-fun e!4261965 () Bool)

(assert (=> d!2216648 (=> res!2895569 e!4261965)))

(assert (=> d!2216648 (= res!2895569 (is-Nil!68615 (exprs!7272 c!9994)))))

(assert (=> d!2216648 (= (forall!16716 (exprs!7272 c!9994) lambda!429638) e!4261965)))

(declare-fun b!7089521 () Bool)

(declare-fun e!4261966 () Bool)

(assert (=> b!7089521 (= e!4261965 e!4261966)))

(declare-fun res!2895570 () Bool)

(assert (=> b!7089521 (=> (not res!2895570) (not e!4261966))))

(declare-fun dynLambda!27988 (Int Regex!17776) Bool)

(assert (=> b!7089521 (= res!2895570 (dynLambda!27988 lambda!429638 (h!75063 (exprs!7272 c!9994))))))

(declare-fun b!7089522 () Bool)

(assert (=> b!7089522 (= e!4261966 (forall!16716 (t!382524 (exprs!7272 c!9994)) lambda!429638))))

(assert (= (and d!2216648 (not res!2895569)) b!7089521))

(assert (= (and b!7089521 res!2895570) b!7089522))

(declare-fun b_lambda!270953 () Bool)

(assert (=> (not b_lambda!270953) (not b!7089521)))

(declare-fun m!7819290 () Bool)

(assert (=> b!7089521 m!7819290))

(declare-fun m!7819292 () Bool)

(assert (=> b!7089522 m!7819292))

(assert (=> b!7089492 d!2216648))

(declare-fun d!2216650 () Bool)

(declare-fun res!2895585 () Bool)

(declare-fun e!4261991 () Bool)

(assert (=> d!2216650 (=> res!2895585 e!4261991)))

(assert (=> d!2216650 (= res!2895585 (is-ElementMatch!17776 r!11554))))

(assert (=> d!2216650 (= (validRegex!9051 r!11554) e!4261991)))

(declare-fun b!7089547 () Bool)

(declare-fun e!4261993 () Bool)

(declare-fun e!4261988 () Bool)

(assert (=> b!7089547 (= e!4261993 e!4261988)))

(declare-fun res!2895588 () Bool)

(assert (=> b!7089547 (= res!2895588 (not (nullable!7416 (reg!18105 r!11554))))))

(assert (=> b!7089547 (=> (not res!2895588) (not e!4261988))))

(declare-fun b!7089548 () Bool)

(assert (=> b!7089548 (= e!4261991 e!4261993)))

(declare-fun c!1323171 () Bool)

(assert (=> b!7089548 (= c!1323171 (is-Star!17776 r!11554))))

(declare-fun b!7089549 () Bool)

(declare-fun e!4261987 () Bool)

(declare-fun e!4261990 () Bool)

(assert (=> b!7089549 (= e!4261987 e!4261990)))

(declare-fun res!2895587 () Bool)

(assert (=> b!7089549 (=> (not res!2895587) (not e!4261990))))

(declare-fun call!644635 () Bool)

(assert (=> b!7089549 (= res!2895587 call!644635)))

(declare-fun b!7089550 () Bool)

(declare-fun res!2895586 () Bool)

(assert (=> b!7089550 (=> res!2895586 e!4261987)))

(assert (=> b!7089550 (= res!2895586 (not (is-Concat!26621 r!11554)))))

(declare-fun e!4261989 () Bool)

(assert (=> b!7089550 (= e!4261989 e!4261987)))

(declare-fun b!7089551 () Bool)

(declare-fun res!2895589 () Bool)

(declare-fun e!4261992 () Bool)

(assert (=> b!7089551 (=> (not res!2895589) (not e!4261992))))

(declare-fun call!644634 () Bool)

(assert (=> b!7089551 (= res!2895589 call!644634)))

(assert (=> b!7089551 (= e!4261989 e!4261992)))

(declare-fun b!7089552 () Bool)

(declare-fun call!644636 () Bool)

(assert (=> b!7089552 (= e!4261988 call!644636)))

(declare-fun b!7089553 () Bool)

(assert (=> b!7089553 (= e!4261993 e!4261989)))

(declare-fun c!1323172 () Bool)

(assert (=> b!7089553 (= c!1323172 (is-Union!17776 r!11554))))

(declare-fun bm!644629 () Bool)

(assert (=> bm!644629 (= call!644634 (validRegex!9051 (ite c!1323172 (regOne!36065 r!11554) (regTwo!36064 r!11554))))))

(declare-fun b!7089556 () Bool)

(assert (=> b!7089556 (= e!4261992 call!644635)))

(declare-fun b!7089557 () Bool)

(assert (=> b!7089557 (= e!4261990 call!644634)))

(declare-fun bm!644630 () Bool)

(assert (=> bm!644630 (= call!644635 call!644636)))

(declare-fun bm!644631 () Bool)

(assert (=> bm!644631 (= call!644636 (validRegex!9051 (ite c!1323171 (reg!18105 r!11554) (ite c!1323172 (regTwo!36065 r!11554) (regOne!36064 r!11554)))))))

(assert (= (and d!2216650 (not res!2895585)) b!7089548))

(assert (= (and b!7089548 c!1323171) b!7089547))

(assert (= (and b!7089548 (not c!1323171)) b!7089553))

(assert (= (and b!7089547 res!2895588) b!7089552))

(assert (= (and b!7089553 c!1323172) b!7089551))

(assert (= (and b!7089553 (not c!1323172)) b!7089550))

(assert (= (and b!7089551 res!2895589) b!7089556))

(assert (= (and b!7089550 (not res!2895586)) b!7089549))

(assert (= (and b!7089549 res!2895587) b!7089557))

(assert (= (or b!7089551 b!7089557) bm!644629))

(assert (= (or b!7089556 b!7089549) bm!644630))

(assert (= (or b!7089552 bm!644630) bm!644631))

(declare-fun m!7819296 () Bool)

(assert (=> b!7089547 m!7819296))

(declare-fun m!7819298 () Bool)

(assert (=> bm!644629 m!7819298))

(declare-fun m!7819300 () Bool)

(assert (=> bm!644631 m!7819300))

(assert (=> start!690058 d!2216650))

(declare-fun bs!1883335 () Bool)

(declare-fun d!2216656 () Bool)

(assert (= bs!1883335 (and d!2216656 b!7089492)))

(declare-fun lambda!429644 () Int)

(assert (=> bs!1883335 (= lambda!429644 lambda!429638)))

(assert (=> d!2216656 (= (inv!87306 c!9994) (forall!16716 (exprs!7272 c!9994) lambda!429644))))

(declare-fun bs!1883336 () Bool)

(assert (= bs!1883336 d!2216656))

(declare-fun m!7819302 () Bool)

(assert (=> bs!1883336 m!7819302))

(assert (=> start!690058 d!2216656))

(declare-fun b!7089581 () Bool)

(declare-fun e!4262004 () Bool)

(declare-fun tp!1947131 () Bool)

(declare-fun tp!1947128 () Bool)

(assert (=> b!7089581 (= e!4262004 (and tp!1947131 tp!1947128))))

(declare-fun b!7089580 () Bool)

(declare-fun tp!1947127 () Bool)

(assert (=> b!7089580 (= e!4262004 tp!1947127)))

(declare-fun b!7089579 () Bool)

(declare-fun tp!1947130 () Bool)

(declare-fun tp!1947129 () Bool)

(assert (=> b!7089579 (= e!4262004 (and tp!1947130 tp!1947129))))

(assert (=> b!7089485 (= tp!1947094 e!4262004)))

(declare-fun b!7089578 () Bool)

(assert (=> b!7089578 (= e!4262004 tp_is_empty!44785)))

(assert (= (and b!7089485 (is-ElementMatch!17776 (regOne!36064 r!11554))) b!7089578))

(assert (= (and b!7089485 (is-Concat!26621 (regOne!36064 r!11554))) b!7089579))

(assert (= (and b!7089485 (is-Star!17776 (regOne!36064 r!11554))) b!7089580))

(assert (= (and b!7089485 (is-Union!17776 (regOne!36064 r!11554))) b!7089581))

(declare-fun b!7089585 () Bool)

(declare-fun e!4262005 () Bool)

(declare-fun tp!1947136 () Bool)

(declare-fun tp!1947133 () Bool)

(assert (=> b!7089585 (= e!4262005 (and tp!1947136 tp!1947133))))

(declare-fun b!7089584 () Bool)

(declare-fun tp!1947132 () Bool)

(assert (=> b!7089584 (= e!4262005 tp!1947132)))

(declare-fun b!7089583 () Bool)

(declare-fun tp!1947135 () Bool)

(declare-fun tp!1947134 () Bool)

(assert (=> b!7089583 (= e!4262005 (and tp!1947135 tp!1947134))))

(assert (=> b!7089485 (= tp!1947098 e!4262005)))

(declare-fun b!7089582 () Bool)

(assert (=> b!7089582 (= e!4262005 tp_is_empty!44785)))

(assert (= (and b!7089485 (is-ElementMatch!17776 (regTwo!36064 r!11554))) b!7089582))

(assert (= (and b!7089485 (is-Concat!26621 (regTwo!36064 r!11554))) b!7089583))

(assert (= (and b!7089485 (is-Star!17776 (regTwo!36064 r!11554))) b!7089584))

(assert (= (and b!7089485 (is-Union!17776 (regTwo!36064 r!11554))) b!7089585))

(declare-fun b!7089589 () Bool)

(declare-fun e!4262006 () Bool)

(declare-fun tp!1947141 () Bool)

(declare-fun tp!1947138 () Bool)

(assert (=> b!7089589 (= e!4262006 (and tp!1947141 tp!1947138))))

(declare-fun b!7089588 () Bool)

(declare-fun tp!1947137 () Bool)

(assert (=> b!7089588 (= e!4262006 tp!1947137)))

(declare-fun b!7089587 () Bool)

(declare-fun tp!1947140 () Bool)

(declare-fun tp!1947139 () Bool)

(assert (=> b!7089587 (= e!4262006 (and tp!1947140 tp!1947139))))

(assert (=> b!7089489 (= tp!1947093 e!4262006)))

(declare-fun b!7089586 () Bool)

(assert (=> b!7089586 (= e!4262006 tp_is_empty!44785)))

(assert (= (and b!7089489 (is-ElementMatch!17776 (regOne!36065 r!11554))) b!7089586))

(assert (= (and b!7089489 (is-Concat!26621 (regOne!36065 r!11554))) b!7089587))

(assert (= (and b!7089489 (is-Star!17776 (regOne!36065 r!11554))) b!7089588))

(assert (= (and b!7089489 (is-Union!17776 (regOne!36065 r!11554))) b!7089589))

(declare-fun b!7089593 () Bool)

(declare-fun e!4262007 () Bool)

(declare-fun tp!1947146 () Bool)

(declare-fun tp!1947143 () Bool)

(assert (=> b!7089593 (= e!4262007 (and tp!1947146 tp!1947143))))

(declare-fun b!7089592 () Bool)

(declare-fun tp!1947142 () Bool)

(assert (=> b!7089592 (= e!4262007 tp!1947142)))

(declare-fun b!7089591 () Bool)

(declare-fun tp!1947145 () Bool)

(declare-fun tp!1947144 () Bool)

(assert (=> b!7089591 (= e!4262007 (and tp!1947145 tp!1947144))))

(assert (=> b!7089489 (= tp!1947096 e!4262007)))

(declare-fun b!7089590 () Bool)

(assert (=> b!7089590 (= e!4262007 tp_is_empty!44785)))

(assert (= (and b!7089489 (is-ElementMatch!17776 (regTwo!36065 r!11554))) b!7089590))

(assert (= (and b!7089489 (is-Concat!26621 (regTwo!36065 r!11554))) b!7089591))

(assert (= (and b!7089489 (is-Star!17776 (regTwo!36065 r!11554))) b!7089592))

(assert (= (and b!7089489 (is-Union!17776 (regTwo!36065 r!11554))) b!7089593))

(declare-fun b!7089598 () Bool)

(declare-fun e!4262010 () Bool)

(declare-fun tp!1947151 () Bool)

(declare-fun tp!1947152 () Bool)

(assert (=> b!7089598 (= e!4262010 (and tp!1947151 tp!1947152))))

(assert (=> b!7089491 (= tp!1947095 e!4262010)))

(assert (= (and b!7089491 (is-Cons!68615 (exprs!7272 c!9994))) b!7089598))

(declare-fun b!7089602 () Bool)

(declare-fun e!4262011 () Bool)

(declare-fun tp!1947157 () Bool)

(declare-fun tp!1947154 () Bool)

(assert (=> b!7089602 (= e!4262011 (and tp!1947157 tp!1947154))))

(declare-fun b!7089601 () Bool)

(declare-fun tp!1947153 () Bool)

(assert (=> b!7089601 (= e!4262011 tp!1947153)))

(declare-fun b!7089600 () Bool)

(declare-fun tp!1947156 () Bool)

(declare-fun tp!1947155 () Bool)

(assert (=> b!7089600 (= e!4262011 (and tp!1947156 tp!1947155))))

(assert (=> b!7089486 (= tp!1947097 e!4262011)))

(declare-fun b!7089599 () Bool)

(assert (=> b!7089599 (= e!4262011 tp_is_empty!44785)))

(assert (= (and b!7089486 (is-ElementMatch!17776 (reg!18105 r!11554))) b!7089599))

(assert (= (and b!7089486 (is-Concat!26621 (reg!18105 r!11554))) b!7089600))

(assert (= (and b!7089486 (is-Star!17776 (reg!18105 r!11554))) b!7089601))

(assert (= (and b!7089486 (is-Union!17776 (reg!18105 r!11554))) b!7089602))

(declare-fun b_lambda!270955 () Bool)

(assert (= b_lambda!270953 (or b!7089492 b_lambda!270955)))

(declare-fun bs!1883337 () Bool)

(declare-fun d!2216658 () Bool)

(assert (= bs!1883337 (and d!2216658 b!7089492)))

(assert (=> bs!1883337 (= (dynLambda!27988 lambda!429638 (h!75063 (exprs!7272 c!9994))) (validRegex!9051 (h!75063 (exprs!7272 c!9994))))))

(declare-fun m!7819304 () Bool)

(assert (=> bs!1883337 m!7819304))

(assert (=> b!7089521 d!2216658))

(push 1)

(assert (not b!7089602))

(assert (not b!7089593))

(assert tp_is_empty!44785)

(assert (not b!7089579))

(assert (not b!7089589))

(assert (not b!7089580))

(assert (not b!7089522))

(assert (not b!7089592))

(assert (not b!7089600))

(assert (not d!2216656))

(assert (not d!2216646))

(assert (not bm!644629))

(assert (not b!7089598))

(assert (not b!7089547))

(assert (not b!7089584))

(assert (not b!7089583))

(assert (not b!7089601))

(assert (not bm!644631))

(assert (not b!7089587))

(assert (not b!7089588))

(assert (not b!7089585))

(assert (not b_lambda!270955))

(assert (not bs!1883337))

(assert (not b!7089581))

(assert (not b!7089591))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

