; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!690122 () Bool)

(assert start!690122)

(declare-fun res!2895748 () Bool)

(declare-fun e!4262257 () Bool)

(assert (=> start!690122 (=> (not res!2895748) (not e!4262257))))

(declare-datatypes ((C!35834 0))(
  ( (C!35835 (val!27623 Int)) )
))
(declare-datatypes ((Regex!17782 0))(
  ( (ElementMatch!17782 (c!1323205 C!35834)) (Concat!26627 (regOne!36076 Regex!17782) (regTwo!36076 Regex!17782)) (EmptyExpr!17782) (Star!17782 (reg!18111 Regex!17782)) (EmptyLang!17782) (Union!17782 (regOne!36077 Regex!17782) (regTwo!36077 Regex!17782)) )
))
(declare-fun r!11554 () Regex!17782)

(declare-fun validRegex!9057 (Regex!17782) Bool)

(assert (=> start!690122 (= res!2895748 (validRegex!9057 r!11554))))

(assert (=> start!690122 e!4262257))

(declare-fun e!4262259 () Bool)

(assert (=> start!690122 e!4262259))

(declare-fun tp_is_empty!44797 () Bool)

(assert (=> start!690122 tp_is_empty!44797))

(declare-datatypes ((List!68745 0))(
  ( (Nil!68621) (Cons!68621 (h!75069 Regex!17782) (t!382530 List!68745)) )
))
(declare-datatypes ((Context!13556 0))(
  ( (Context!13557 (exprs!7278 List!68745)) )
))
(declare-fun c!9994 () Context!13556)

(declare-fun e!4262255 () Bool)

(declare-fun inv!87321 (Context!13556) Bool)

(assert (=> start!690122 (and (inv!87321 c!9994) e!4262255)))

(declare-fun auxCtx!45 () Context!13556)

(declare-fun e!4262256 () Bool)

(assert (=> start!690122 (and (inv!87321 auxCtx!45) e!4262256)))

(declare-fun b!7090067 () Bool)

(declare-fun e!4262258 () Bool)

(assert (=> b!7090067 (= e!4262257 e!4262258)))

(declare-fun res!2895745 () Bool)

(assert (=> b!7090067 (=> (not res!2895745) (not e!4262258))))

(declare-fun lambda!429684 () Int)

(declare-fun forall!16722 (List!68745 Int) Bool)

(assert (=> b!7090067 (= res!2895745 (forall!16722 (exprs!7278 c!9994) lambda!429684))))

(declare-datatypes ((Unit!162255 0))(
  ( (Unit!162256) )
))
(declare-fun lt!2555665 () Unit!162255)

(declare-fun lemmaConcatPreservesForall!1081 (List!68745 List!68745 Int) Unit!162255)

(assert (=> b!7090067 (= lt!2555665 (lemmaConcatPreservesForall!1081 (exprs!7278 c!9994) (exprs!7278 auxCtx!45) lambda!429684))))

(declare-fun b!7090068 () Bool)

(declare-fun tp!1947475 () Bool)

(declare-fun tp!1947473 () Bool)

(assert (=> b!7090068 (= e!4262259 (and tp!1947475 tp!1947473))))

(declare-fun b!7090069 () Bool)

(declare-fun tp!1947472 () Bool)

(assert (=> b!7090069 (= e!4262255 tp!1947472)))

(declare-fun b!7090070 () Bool)

(declare-fun tp!1947471 () Bool)

(assert (=> b!7090070 (= e!4262259 tp!1947471)))

(declare-fun b!7090071 () Bool)

(assert (=> b!7090071 (= e!4262258 (not (forall!16722 (exprs!7278 auxCtx!45) lambda!429684)))))

(declare-fun b!7090072 () Bool)

(declare-fun res!2895746 () Bool)

(assert (=> b!7090072 (=> (not res!2895746) (not e!4262257))))

(declare-fun a!1901 () C!35834)

(assert (=> b!7090072 (= res!2895746 (and (or (not (is-ElementMatch!17782 r!11554)) (not (= (c!1323205 r!11554) a!1901))) (not (is-Union!17782 r!11554)) (is-Concat!26627 r!11554)))))

(declare-fun b!7090073 () Bool)

(assert (=> b!7090073 (= e!4262259 tp_is_empty!44797)))

(declare-fun b!7090074 () Bool)

(declare-fun res!2895747 () Bool)

(assert (=> b!7090074 (=> (not res!2895747) (not e!4262257))))

(declare-fun nullable!7422 (Regex!17782) Bool)

(assert (=> b!7090074 (= res!2895747 (nullable!7422 (regOne!36076 r!11554)))))

(declare-fun b!7090075 () Bool)

(declare-fun tp!1947469 () Bool)

(declare-fun tp!1947474 () Bool)

(assert (=> b!7090075 (= e!4262259 (and tp!1947469 tp!1947474))))

(declare-fun b!7090076 () Bool)

(declare-fun tp!1947470 () Bool)

(assert (=> b!7090076 (= e!4262256 tp!1947470)))

(assert (= (and start!690122 res!2895748) b!7090072))

(assert (= (and b!7090072 res!2895746) b!7090074))

(assert (= (and b!7090074 res!2895747) b!7090067))

(assert (= (and b!7090067 res!2895745) b!7090071))

(assert (= (and start!690122 (is-ElementMatch!17782 r!11554)) b!7090073))

(assert (= (and start!690122 (is-Concat!26627 r!11554)) b!7090075))

(assert (= (and start!690122 (is-Star!17782 r!11554)) b!7090070))

(assert (= (and start!690122 (is-Union!17782 r!11554)) b!7090068))

(assert (= start!690122 b!7090069))

(assert (= start!690122 b!7090076))

(declare-fun m!7819464 () Bool)

(assert (=> start!690122 m!7819464))

(declare-fun m!7819466 () Bool)

(assert (=> start!690122 m!7819466))

(declare-fun m!7819468 () Bool)

(assert (=> start!690122 m!7819468))

(declare-fun m!7819470 () Bool)

(assert (=> b!7090067 m!7819470))

(declare-fun m!7819472 () Bool)

(assert (=> b!7090067 m!7819472))

(declare-fun m!7819474 () Bool)

(assert (=> b!7090071 m!7819474))

(declare-fun m!7819476 () Bool)

(assert (=> b!7090074 m!7819476))

(push 1)

(assert (not start!690122))

(assert (not b!7090067))

(assert (not b!7090071))

(assert tp_is_empty!44797)

(assert (not b!7090075))

(assert (not b!7090070))

(assert (not b!7090068))

(assert (not b!7090076))

(assert (not b!7090069))

(assert (not b!7090074))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!2216729 () Bool)

(declare-fun nullableFct!2845 (Regex!17782) Bool)

(assert (=> d!2216729 (= (nullable!7422 (regOne!36076 r!11554)) (nullableFct!2845 (regOne!36076 r!11554)))))

(declare-fun bs!1883379 () Bool)

(assert (= bs!1883379 d!2216729))

(declare-fun m!7819492 () Bool)

(assert (=> bs!1883379 m!7819492))

(assert (=> b!7090074 d!2216729))

(declare-fun d!2216731 () Bool)

(declare-fun res!2895765 () Bool)

(declare-fun e!4262279 () Bool)

(assert (=> d!2216731 (=> res!2895765 e!4262279)))

(assert (=> d!2216731 (= res!2895765 (is-Nil!68621 (exprs!7278 auxCtx!45)))))

(assert (=> d!2216731 (= (forall!16722 (exprs!7278 auxCtx!45) lambda!429684) e!4262279)))

(declare-fun b!7090111 () Bool)

(declare-fun e!4262280 () Bool)

(assert (=> b!7090111 (= e!4262279 e!4262280)))

(declare-fun res!2895766 () Bool)

(assert (=> b!7090111 (=> (not res!2895766) (not e!4262280))))

(declare-fun dynLambda!27994 (Int Regex!17782) Bool)

(assert (=> b!7090111 (= res!2895766 (dynLambda!27994 lambda!429684 (h!75069 (exprs!7278 auxCtx!45))))))

(declare-fun b!7090112 () Bool)

(assert (=> b!7090112 (= e!4262280 (forall!16722 (t!382530 (exprs!7278 auxCtx!45)) lambda!429684))))

(assert (= (and d!2216731 (not res!2895765)) b!7090111))

(assert (= (and b!7090111 res!2895766) b!7090112))

(declare-fun b_lambda!270985 () Bool)

(assert (=> (not b_lambda!270985) (not b!7090111)))

(declare-fun m!7819494 () Bool)

(assert (=> b!7090111 m!7819494))

(declare-fun m!7819496 () Bool)

(assert (=> b!7090112 m!7819496))

(assert (=> b!7090071 d!2216731))

(declare-fun b!7090131 () Bool)

(declare-fun e!4262301 () Bool)

(declare-fun e!4262300 () Bool)

(assert (=> b!7090131 (= e!4262301 e!4262300)))

(declare-fun res!2895781 () Bool)

(assert (=> b!7090131 (=> (not res!2895781) (not e!4262300))))

(declare-fun call!644688 () Bool)

(assert (=> b!7090131 (= res!2895781 call!644688)))

(declare-fun b!7090132 () Bool)

(declare-fun e!4262298 () Bool)

(assert (=> b!7090132 (= e!4262298 call!644688)))

(declare-fun d!2216733 () Bool)

(declare-fun res!2895779 () Bool)

(declare-fun e!4262296 () Bool)

(assert (=> d!2216733 (=> res!2895779 e!4262296)))

(assert (=> d!2216733 (= res!2895779 (is-ElementMatch!17782 r!11554))))

(assert (=> d!2216733 (= (validRegex!9057 r!11554) e!4262296)))

(declare-fun bm!644683 () Bool)

(declare-fun c!1323212 () Bool)

(assert (=> bm!644683 (= call!644688 (validRegex!9057 (ite c!1323212 (regTwo!36077 r!11554) (regOne!36076 r!11554))))))

(declare-fun b!7090133 () Bool)

(declare-fun res!2895778 () Bool)

(assert (=> b!7090133 (=> res!2895778 e!4262301)))

(assert (=> b!7090133 (= res!2895778 (not (is-Concat!26627 r!11554)))))

(declare-fun e!4262295 () Bool)

(assert (=> b!7090133 (= e!4262295 e!4262301)))

(declare-fun bm!644684 () Bool)

(declare-fun call!644690 () Bool)

(declare-fun call!644689 () Bool)

(assert (=> bm!644684 (= call!644690 call!644689)))

(declare-fun b!7090134 () Bool)

(declare-fun e!4262297 () Bool)

(declare-fun e!4262299 () Bool)

(assert (=> b!7090134 (= e!4262297 e!4262299)))

(declare-fun res!2895780 () Bool)

(assert (=> b!7090134 (= res!2895780 (not (nullable!7422 (reg!18111 r!11554))))))

(assert (=> b!7090134 (=> (not res!2895780) (not e!4262299))))

(declare-fun b!7090135 () Bool)

(declare-fun res!2895777 () Bool)

(assert (=> b!7090135 (=> (not res!2895777) (not e!4262298))))

(assert (=> b!7090135 (= res!2895777 call!644690)))

(assert (=> b!7090135 (= e!4262295 e!4262298)))

(declare-fun bm!644685 () Bool)

(declare-fun c!1323211 () Bool)

(assert (=> bm!644685 (= call!644689 (validRegex!9057 (ite c!1323211 (reg!18111 r!11554) (ite c!1323212 (regOne!36077 r!11554) (regTwo!36076 r!11554)))))))

(declare-fun b!7090136 () Bool)

(assert (=> b!7090136 (= e!4262300 call!644690)))

(declare-fun b!7090137 () Bool)

(assert (=> b!7090137 (= e!4262297 e!4262295)))

(assert (=> b!7090137 (= c!1323212 (is-Union!17782 r!11554))))

(declare-fun b!7090138 () Bool)

(assert (=> b!7090138 (= e!4262296 e!4262297)))

(assert (=> b!7090138 (= c!1323211 (is-Star!17782 r!11554))))

(declare-fun b!7090139 () Bool)

(assert (=> b!7090139 (= e!4262299 call!644689)))

(assert (= (and d!2216733 (not res!2895779)) b!7090138))

(assert (= (and b!7090138 c!1323211) b!7090134))

(assert (= (and b!7090138 (not c!1323211)) b!7090137))

(assert (= (and b!7090134 res!2895780) b!7090139))

(assert (= (and b!7090137 c!1323212) b!7090135))

(assert (= (and b!7090137 (not c!1323212)) b!7090133))

(assert (= (and b!7090135 res!2895777) b!7090132))

(assert (= (and b!7090133 (not res!2895778)) b!7090131))

(assert (= (and b!7090131 res!2895781) b!7090136))

(assert (= (or b!7090135 b!7090136) bm!644684))

(assert (= (or b!7090132 b!7090131) bm!644683))

(assert (= (or b!7090139 bm!644684) bm!644685))

(declare-fun m!7819498 () Bool)

(assert (=> bm!644683 m!7819498))

(declare-fun m!7819500 () Bool)

(assert (=> b!7090134 m!7819500))

(declare-fun m!7819502 () Bool)

(assert (=> bm!644685 m!7819502))

(assert (=> start!690122 d!2216733))

(declare-fun bs!1883380 () Bool)

(declare-fun d!2216737 () Bool)

(assert (= bs!1883380 (and d!2216737 b!7090067)))

(declare-fun lambda!429692 () Int)

(assert (=> bs!1883380 (= lambda!429692 lambda!429684)))

(assert (=> d!2216737 (= (inv!87321 c!9994) (forall!16722 (exprs!7278 c!9994) lambda!429692))))

(declare-fun bs!1883381 () Bool)

(assert (= bs!1883381 d!2216737))

(declare-fun m!7819504 () Bool)

(assert (=> bs!1883381 m!7819504))

(assert (=> start!690122 d!2216737))

(declare-fun bs!1883382 () Bool)

(declare-fun d!2216739 () Bool)

(assert (= bs!1883382 (and d!2216739 b!7090067)))

(declare-fun lambda!429693 () Int)

(assert (=> bs!1883382 (= lambda!429693 lambda!429684)))

(declare-fun bs!1883383 () Bool)

(assert (= bs!1883383 (and d!2216739 d!2216737)))

(assert (=> bs!1883383 (= lambda!429693 lambda!429692)))

(assert (=> d!2216739 (= (inv!87321 auxCtx!45) (forall!16722 (exprs!7278 auxCtx!45) lambda!429693))))

(declare-fun bs!1883384 () Bool)

(assert (= bs!1883384 d!2216739))

(declare-fun m!7819506 () Bool)

(assert (=> bs!1883384 m!7819506))

(assert (=> start!690122 d!2216739))

(declare-fun d!2216741 () Bool)

(declare-fun res!2895782 () Bool)

(declare-fun e!4262302 () Bool)

(assert (=> d!2216741 (=> res!2895782 e!4262302)))

(assert (=> d!2216741 (= res!2895782 (is-Nil!68621 (exprs!7278 c!9994)))))

(assert (=> d!2216741 (= (forall!16722 (exprs!7278 c!9994) lambda!429684) e!4262302)))

(declare-fun b!7090140 () Bool)

(declare-fun e!4262303 () Bool)

(assert (=> b!7090140 (= e!4262302 e!4262303)))

(declare-fun res!2895783 () Bool)

(assert (=> b!7090140 (=> (not res!2895783) (not e!4262303))))

(assert (=> b!7090140 (= res!2895783 (dynLambda!27994 lambda!429684 (h!75069 (exprs!7278 c!9994))))))

(declare-fun b!7090141 () Bool)

(assert (=> b!7090141 (= e!4262303 (forall!16722 (t!382530 (exprs!7278 c!9994)) lambda!429684))))

(assert (= (and d!2216741 (not res!2895782)) b!7090140))

(assert (= (and b!7090140 res!2895783) b!7090141))

(declare-fun b_lambda!270987 () Bool)

(assert (=> (not b_lambda!270987) (not b!7090140)))

(declare-fun m!7819508 () Bool)

(assert (=> b!7090140 m!7819508))

(declare-fun m!7819510 () Bool)

(assert (=> b!7090141 m!7819510))

(assert (=> b!7090067 d!2216741))

(declare-fun d!2216743 () Bool)

(declare-fun ++!15951 (List!68745 List!68745) List!68745)

(assert (=> d!2216743 (forall!16722 (++!15951 (exprs!7278 c!9994) (exprs!7278 auxCtx!45)) lambda!429684)))

(declare-fun lt!2555671 () Unit!162255)

(declare-fun choose!54660 (List!68745 List!68745 Int) Unit!162255)

(assert (=> d!2216743 (= lt!2555671 (choose!54660 (exprs!7278 c!9994) (exprs!7278 auxCtx!45) lambda!429684))))

(assert (=> d!2216743 (forall!16722 (exprs!7278 c!9994) lambda!429684)))

(assert (=> d!2216743 (= (lemmaConcatPreservesForall!1081 (exprs!7278 c!9994) (exprs!7278 auxCtx!45) lambda!429684) lt!2555671)))

(declare-fun bs!1883385 () Bool)

(assert (= bs!1883385 d!2216743))

(declare-fun m!7819512 () Bool)

(assert (=> bs!1883385 m!7819512))

(assert (=> bs!1883385 m!7819512))

(declare-fun m!7819514 () Bool)

(assert (=> bs!1883385 m!7819514))

(declare-fun m!7819516 () Bool)

(assert (=> bs!1883385 m!7819516))

(assert (=> bs!1883385 m!7819470))

(assert (=> b!7090067 d!2216743))

(declare-fun b!7090158 () Bool)

(declare-fun e!4262312 () Bool)

(assert (=> b!7090158 (= e!4262312 tp_is_empty!44797)))

(declare-fun b!7090159 () Bool)

(declare-fun tp!1947508 () Bool)

(declare-fun tp!1947511 () Bool)

(assert (=> b!7090159 (= e!4262312 (and tp!1947508 tp!1947511))))

(declare-fun b!7090161 () Bool)

(declare-fun tp!1947507 () Bool)

(declare-fun tp!1947510 () Bool)

(assert (=> b!7090161 (= e!4262312 (and tp!1947507 tp!1947510))))

(declare-fun b!7090160 () Bool)

(declare-fun tp!1947509 () Bool)

(assert (=> b!7090160 (= e!4262312 tp!1947509)))

(assert (=> b!7090068 (= tp!1947475 e!4262312)))

(assert (= (and b!7090068 (is-ElementMatch!17782 (regOne!36077 r!11554))) b!7090158))

(assert (= (and b!7090068 (is-Concat!26627 (regOne!36077 r!11554))) b!7090159))

(assert (= (and b!7090068 (is-Star!17782 (regOne!36077 r!11554))) b!7090160))

(assert (= (and b!7090068 (is-Union!17782 (regOne!36077 r!11554))) b!7090161))

(declare-fun b!7090162 () Bool)

(declare-fun e!4262313 () Bool)

(assert (=> b!7090162 (= e!4262313 tp_is_empty!44797)))

(declare-fun b!7090163 () Bool)

(declare-fun tp!1947513 () Bool)

(declare-fun tp!1947516 () Bool)

(assert (=> b!7090163 (= e!4262313 (and tp!1947513 tp!1947516))))

(declare-fun b!7090165 () Bool)

(declare-fun tp!1947512 () Bool)

(declare-fun tp!1947515 () Bool)

(assert (=> b!7090165 (= e!4262313 (and tp!1947512 tp!1947515))))

(declare-fun b!7090164 () Bool)

(declare-fun tp!1947514 () Bool)

(assert (=> b!7090164 (= e!4262313 tp!1947514)))

(assert (=> b!7090068 (= tp!1947473 e!4262313)))

(assert (= (and b!7090068 (is-ElementMatch!17782 (regTwo!36077 r!11554))) b!7090162))

(assert (= (and b!7090068 (is-Concat!26627 (regTwo!36077 r!11554))) b!7090163))

(assert (= (and b!7090068 (is-Star!17782 (regTwo!36077 r!11554))) b!7090164))

(assert (= (and b!7090068 (is-Union!17782 (regTwo!36077 r!11554))) b!7090165))

(declare-fun b!7090170 () Bool)

(declare-fun e!4262316 () Bool)

(declare-fun tp!1947521 () Bool)

(declare-fun tp!1947522 () Bool)

(assert (=> b!7090170 (= e!4262316 (and tp!1947521 tp!1947522))))

(assert (=> b!7090069 (= tp!1947472 e!4262316)))

(assert (= (and b!7090069 (is-Cons!68621 (exprs!7278 c!9994))) b!7090170))

(declare-fun b!7090171 () Bool)

(declare-fun e!4262317 () Bool)

(assert (=> b!7090171 (= e!4262317 tp_is_empty!44797)))

(declare-fun b!7090172 () Bool)

(declare-fun tp!1947524 () Bool)

(declare-fun tp!1947527 () Bool)

(assert (=> b!7090172 (= e!4262317 (and tp!1947524 tp!1947527))))

(declare-fun b!7090174 () Bool)

(declare-fun tp!1947523 () Bool)

(declare-fun tp!1947526 () Bool)

(assert (=> b!7090174 (= e!4262317 (and tp!1947523 tp!1947526))))

(declare-fun b!7090173 () Bool)

(declare-fun tp!1947525 () Bool)

(assert (=> b!7090173 (= e!4262317 tp!1947525)))

(assert (=> b!7090070 (= tp!1947471 e!4262317)))

(assert (= (and b!7090070 (is-ElementMatch!17782 (reg!18111 r!11554))) b!7090171))

(assert (= (and b!7090070 (is-Concat!26627 (reg!18111 r!11554))) b!7090172))

(assert (= (and b!7090070 (is-Star!17782 (reg!18111 r!11554))) b!7090173))

(assert (= (and b!7090070 (is-Union!17782 (reg!18111 r!11554))) b!7090174))

(declare-fun b!7090175 () Bool)

(declare-fun e!4262318 () Bool)

(assert (=> b!7090175 (= e!4262318 tp_is_empty!44797)))

(declare-fun b!7090176 () Bool)

(declare-fun tp!1947529 () Bool)

(declare-fun tp!1947532 () Bool)

(assert (=> b!7090176 (= e!4262318 (and tp!1947529 tp!1947532))))

(declare-fun b!7090178 () Bool)

(declare-fun tp!1947528 () Bool)

(declare-fun tp!1947531 () Bool)

(assert (=> b!7090178 (= e!4262318 (and tp!1947528 tp!1947531))))

(declare-fun b!7090177 () Bool)

(declare-fun tp!1947530 () Bool)

(assert (=> b!7090177 (= e!4262318 tp!1947530)))

(assert (=> b!7090075 (= tp!1947469 e!4262318)))

(assert (= (and b!7090075 (is-ElementMatch!17782 (regOne!36076 r!11554))) b!7090175))

(assert (= (and b!7090075 (is-Concat!26627 (regOne!36076 r!11554))) b!7090176))

(assert (= (and b!7090075 (is-Star!17782 (regOne!36076 r!11554))) b!7090177))

(assert (= (and b!7090075 (is-Union!17782 (regOne!36076 r!11554))) b!7090178))

(declare-fun b!7090179 () Bool)

(declare-fun e!4262319 () Bool)

(assert (=> b!7090179 (= e!4262319 tp_is_empty!44797)))

(declare-fun b!7090180 () Bool)

(declare-fun tp!1947534 () Bool)

(declare-fun tp!1947537 () Bool)

(assert (=> b!7090180 (= e!4262319 (and tp!1947534 tp!1947537))))

(declare-fun b!7090182 () Bool)

(declare-fun tp!1947533 () Bool)

(declare-fun tp!1947536 () Bool)

(assert (=> b!7090182 (= e!4262319 (and tp!1947533 tp!1947536))))

(declare-fun b!7090181 () Bool)

(declare-fun tp!1947535 () Bool)

(assert (=> b!7090181 (= e!4262319 tp!1947535)))

(assert (=> b!7090075 (= tp!1947474 e!4262319)))

(assert (= (and b!7090075 (is-ElementMatch!17782 (regTwo!36076 r!11554))) b!7090179))

(assert (= (and b!7090075 (is-Concat!26627 (regTwo!36076 r!11554))) b!7090180))

(assert (= (and b!7090075 (is-Star!17782 (regTwo!36076 r!11554))) b!7090181))

(assert (= (and b!7090075 (is-Union!17782 (regTwo!36076 r!11554))) b!7090182))

(declare-fun b!7090183 () Bool)

(declare-fun e!4262320 () Bool)

(declare-fun tp!1947538 () Bool)

(declare-fun tp!1947539 () Bool)

(assert (=> b!7090183 (= e!4262320 (and tp!1947538 tp!1947539))))

(assert (=> b!7090076 (= tp!1947470 e!4262320)))

(assert (= (and b!7090076 (is-Cons!68621 (exprs!7278 auxCtx!45))) b!7090183))

(declare-fun b_lambda!270991 () Bool)

(assert (= b_lambda!270985 (or b!7090067 b_lambda!270991)))

(declare-fun bs!1883386 () Bool)

(declare-fun d!2216747 () Bool)

(assert (= bs!1883386 (and d!2216747 b!7090067)))

(assert (=> bs!1883386 (= (dynLambda!27994 lambda!429684 (h!75069 (exprs!7278 auxCtx!45))) (validRegex!9057 (h!75069 (exprs!7278 auxCtx!45))))))

(declare-fun m!7819522 () Bool)

(assert (=> bs!1883386 m!7819522))

(assert (=> b!7090111 d!2216747))

(declare-fun b_lambda!270993 () Bool)

(assert (= b_lambda!270987 (or b!7090067 b_lambda!270993)))

(declare-fun bs!1883387 () Bool)

(declare-fun d!2216749 () Bool)

(assert (= bs!1883387 (and d!2216749 b!7090067)))

(assert (=> bs!1883387 (= (dynLambda!27994 lambda!429684 (h!75069 (exprs!7278 c!9994))) (validRegex!9057 (h!75069 (exprs!7278 c!9994))))))

(declare-fun m!7819524 () Bool)

(assert (=> bs!1883387 m!7819524))

(assert (=> b!7090140 d!2216749))

(push 1)

(assert (not b!7090172))

(assert (not bs!1883387))

(assert (not d!2216739))

(assert (not b!7090183))

(assert (not b!7090159))

(assert (not b!7090134))

(assert (not b!7090181))

(assert (not b!7090182))

(assert (not b!7090173))

(assert tp_is_empty!44797)

(assert (not b!7090161))

(assert (not b!7090141))

(assert (not b!7090163))

(assert (not b_lambda!270993))

(assert (not b!7090164))

(assert (not b!7090180))

(assert (not b!7090174))

(assert (not bm!644685))

(assert (not d!2216737))

(assert (not b!7090178))

(assert (not b!7090176))

(assert (not b!7090160))

(assert (not b!7090112))

(assert (not b!7090165))

(assert (not d!2216729))

(assert (not bs!1883386))

(assert (not bm!644683))

(assert (not b!7090177))

(assert (not d!2216743))

(assert (not b_lambda!270991))

(assert (not b!7090170))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

