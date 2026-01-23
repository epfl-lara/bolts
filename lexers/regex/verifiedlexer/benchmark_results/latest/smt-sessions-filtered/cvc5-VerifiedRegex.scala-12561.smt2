; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!697014 () Bool)

(assert start!697014)

(declare-fun b!7148496 () Bool)

(declare-fun e!4295529 () Bool)

(declare-fun tp!1973187 () Bool)

(assert (=> b!7148496 (= e!4295529 tp!1973187)))

(declare-fun b!7148498 () Bool)

(declare-fun e!4295530 () Bool)

(declare-datatypes ((C!36734 0))(
  ( (C!36735 (val!28315 Int)) )
))
(declare-datatypes ((Regex!18230 0))(
  ( (ElementMatch!18230 (c!1332881 C!36734)) (Concat!27075 (regOne!36972 Regex!18230) (regTwo!36972 Regex!18230)) (EmptyExpr!18230) (Star!18230 (reg!18559 Regex!18230)) (EmptyLang!18230) (Union!18230 (regOne!36973 Regex!18230) (regTwo!36973 Regex!18230)) )
))
(declare-datatypes ((List!69534 0))(
  ( (Nil!69410) (Cons!69410 (h!75858 Regex!18230) (t!383551 List!69534)) )
))
(declare-fun l!9154 () List!69534)

(declare-fun size!41510 (List!69534) Int)

(assert (=> b!7148498 (= e!4295530 (< (size!41510 l!9154) 0))))

(declare-fun b!7148499 () Bool)

(declare-fun tp!1973183 () Bool)

(declare-fun tp!1973186 () Bool)

(assert (=> b!7148499 (= e!4295529 (and tp!1973183 tp!1973186))))

(declare-fun b!7148500 () Bool)

(declare-fun tp!1973185 () Bool)

(declare-fun tp!1973182 () Bool)

(assert (=> b!7148500 (= e!4295529 (and tp!1973185 tp!1973182))))

(declare-fun b!7148501 () Bool)

(declare-fun res!2916162 () Bool)

(assert (=> b!7148501 (=> (not res!2916162) (not e!4295530))))

(declare-fun r!13911 () Regex!18230)

(declare-fun generalisedConcat!2405 (List!69534) Regex!18230)

(assert (=> b!7148501 (= res!2916162 (= r!13911 (generalisedConcat!2405 l!9154)))))

(declare-fun b!7148502 () Bool)

(declare-fun tp_is_empty!46097 () Bool)

(assert (=> b!7148502 (= e!4295529 tp_is_empty!46097)))

(declare-fun b!7148497 () Bool)

(declare-fun e!4295531 () Bool)

(declare-fun tp!1973184 () Bool)

(declare-fun tp!1973188 () Bool)

(assert (=> b!7148497 (= e!4295531 (and tp!1973184 tp!1973188))))

(declare-fun res!2916163 () Bool)

(assert (=> start!697014 (=> (not res!2916163) (not e!4295530))))

(declare-fun lambda!435987 () Int)

(declare-fun forall!17070 (List!69534 Int) Bool)

(assert (=> start!697014 (= res!2916163 (forall!17070 l!9154 lambda!435987))))

(assert (=> start!697014 e!4295530))

(assert (=> start!697014 e!4295531))

(assert (=> start!697014 e!4295529))

(assert (= (and start!697014 res!2916163) b!7148501))

(assert (= (and b!7148501 res!2916162) b!7148498))

(assert (= (and start!697014 (is-Cons!69410 l!9154)) b!7148497))

(assert (= (and start!697014 (is-ElementMatch!18230 r!13911)) b!7148502))

(assert (= (and start!697014 (is-Concat!27075 r!13911)) b!7148500))

(assert (= (and start!697014 (is-Star!18230 r!13911)) b!7148496))

(assert (= (and start!697014 (is-Union!18230 r!13911)) b!7148499))

(declare-fun m!7860288 () Bool)

(assert (=> b!7148498 m!7860288))

(declare-fun m!7860290 () Bool)

(assert (=> b!7148501 m!7860290))

(declare-fun m!7860292 () Bool)

(assert (=> start!697014 m!7860292))

(push 1)

(assert (not b!7148497))

(assert (not start!697014))

(assert (not b!7148496))

(assert (not b!7148498))

(assert (not b!7148500))

(assert (not b!7148499))

(assert (not b!7148501))

(assert tp_is_empty!46097)

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!2228500 () Bool)

(declare-fun lt!2569019 () Int)

(assert (=> d!2228500 (>= lt!2569019 0)))

(declare-fun e!4295543 () Int)

(assert (=> d!2228500 (= lt!2569019 e!4295543)))

(declare-fun c!1332885 () Bool)

(assert (=> d!2228500 (= c!1332885 (is-Nil!69410 l!9154))))

(assert (=> d!2228500 (= (size!41510 l!9154) lt!2569019)))

(declare-fun b!7148528 () Bool)

(assert (=> b!7148528 (= e!4295543 0)))

(declare-fun b!7148529 () Bool)

(assert (=> b!7148529 (= e!4295543 (+ 1 (size!41510 (t!383551 l!9154))))))

(assert (= (and d!2228500 c!1332885) b!7148528))

(assert (= (and d!2228500 (not c!1332885)) b!7148529))

(declare-fun m!7860300 () Bool)

(assert (=> b!7148529 m!7860300))

(assert (=> b!7148498 d!2228500))

(declare-fun d!2228502 () Bool)

(declare-fun res!2916174 () Bool)

(declare-fun e!4295548 () Bool)

(assert (=> d!2228502 (=> res!2916174 e!4295548)))

(assert (=> d!2228502 (= res!2916174 (is-Nil!69410 l!9154))))

(assert (=> d!2228502 (= (forall!17070 l!9154 lambda!435987) e!4295548)))

(declare-fun b!7148534 () Bool)

(declare-fun e!4295549 () Bool)

(assert (=> b!7148534 (= e!4295548 e!4295549)))

(declare-fun res!2916175 () Bool)

(assert (=> b!7148534 (=> (not res!2916175) (not e!4295549))))

(declare-fun dynLambda!28273 (Int Regex!18230) Bool)

(assert (=> b!7148534 (= res!2916175 (dynLambda!28273 lambda!435987 (h!75858 l!9154)))))

(declare-fun b!7148535 () Bool)

(assert (=> b!7148535 (= e!4295549 (forall!17070 (t!383551 l!9154) lambda!435987))))

(assert (= (and d!2228502 (not res!2916174)) b!7148534))

(assert (= (and b!7148534 res!2916175) b!7148535))

(declare-fun b_lambda!272859 () Bool)

(assert (=> (not b_lambda!272859) (not b!7148534)))

(declare-fun m!7860302 () Bool)

(assert (=> b!7148534 m!7860302))

(declare-fun m!7860304 () Bool)

(assert (=> b!7148535 m!7860304))

(assert (=> start!697014 d!2228502))

(declare-fun bs!1889400 () Bool)

(declare-fun d!2228504 () Bool)

(assert (= bs!1889400 (and d!2228504 start!697014)))

(declare-fun lambda!435993 () Int)

(assert (=> bs!1889400 (= lambda!435993 lambda!435987)))

(declare-fun b!7148556 () Bool)

(declare-fun e!4295567 () Bool)

(declare-fun e!4295564 () Bool)

(assert (=> b!7148556 (= e!4295567 e!4295564)))

(declare-fun c!1332897 () Bool)

(declare-fun isEmpty!40100 (List!69534) Bool)

(assert (=> b!7148556 (= c!1332897 (isEmpty!40100 l!9154))))

(declare-fun b!7148557 () Bool)

(declare-fun e!4295566 () Regex!18230)

(assert (=> b!7148557 (= e!4295566 (Concat!27075 (h!75858 l!9154) (generalisedConcat!2405 (t!383551 l!9154))))))

(assert (=> d!2228504 e!4295567))

(declare-fun res!2916181 () Bool)

(assert (=> d!2228504 (=> (not res!2916181) (not e!4295567))))

(declare-fun lt!2569022 () Regex!18230)

(declare-fun validRegex!9386 (Regex!18230) Bool)

(assert (=> d!2228504 (= res!2916181 (validRegex!9386 lt!2569022))))

(declare-fun e!4295563 () Regex!18230)

(assert (=> d!2228504 (= lt!2569022 e!4295563)))

(declare-fun c!1332894 () Bool)

(declare-fun e!4295565 () Bool)

(assert (=> d!2228504 (= c!1332894 e!4295565)))

(declare-fun res!2916180 () Bool)

(assert (=> d!2228504 (=> (not res!2916180) (not e!4295565))))

(assert (=> d!2228504 (= res!2916180 (is-Cons!69410 l!9154))))

(assert (=> d!2228504 (forall!17070 l!9154 lambda!435993)))

(assert (=> d!2228504 (= (generalisedConcat!2405 l!9154) lt!2569022)))

(declare-fun b!7148558 () Bool)

(assert (=> b!7148558 (= e!4295563 e!4295566)))

(declare-fun c!1332896 () Bool)

(assert (=> b!7148558 (= c!1332896 (is-Cons!69410 l!9154))))

(declare-fun b!7148559 () Bool)

(assert (=> b!7148559 (= e!4295566 EmptyExpr!18230)))

(declare-fun b!7148560 () Bool)

(declare-fun isEmptyExpr!2057 (Regex!18230) Bool)

(assert (=> b!7148560 (= e!4295564 (isEmptyExpr!2057 lt!2569022))))

(declare-fun b!7148561 () Bool)

(assert (=> b!7148561 (= e!4295565 (isEmpty!40100 (t!383551 l!9154)))))

(declare-fun b!7148562 () Bool)

(declare-fun e!4295562 () Bool)

(declare-fun isConcat!1580 (Regex!18230) Bool)

(assert (=> b!7148562 (= e!4295562 (isConcat!1580 lt!2569022))))

(declare-fun b!7148563 () Bool)

(declare-fun head!14537 (List!69534) Regex!18230)

(assert (=> b!7148563 (= e!4295562 (= lt!2569022 (head!14537 l!9154)))))

(declare-fun b!7148564 () Bool)

(assert (=> b!7148564 (= e!4295563 (h!75858 l!9154))))

(declare-fun b!7148565 () Bool)

(assert (=> b!7148565 (= e!4295564 e!4295562)))

(declare-fun c!1332895 () Bool)

(declare-fun tail!14007 (List!69534) List!69534)

(assert (=> b!7148565 (= c!1332895 (isEmpty!40100 (tail!14007 l!9154)))))

(assert (= (and d!2228504 res!2916180) b!7148561))

(assert (= (and d!2228504 c!1332894) b!7148564))

(assert (= (and d!2228504 (not c!1332894)) b!7148558))

(assert (= (and b!7148558 c!1332896) b!7148557))

(assert (= (and b!7148558 (not c!1332896)) b!7148559))

(assert (= (and d!2228504 res!2916181) b!7148556))

(assert (= (and b!7148556 c!1332897) b!7148560))

(assert (= (and b!7148556 (not c!1332897)) b!7148565))

(assert (= (and b!7148565 c!1332895) b!7148563))

(assert (= (and b!7148565 (not c!1332895)) b!7148562))

(declare-fun m!7860306 () Bool)

(assert (=> b!7148556 m!7860306))

(declare-fun m!7860308 () Bool)

(assert (=> b!7148557 m!7860308))

(declare-fun m!7860310 () Bool)

(assert (=> b!7148562 m!7860310))

(declare-fun m!7860312 () Bool)

(assert (=> b!7148563 m!7860312))

(declare-fun m!7860314 () Bool)

(assert (=> d!2228504 m!7860314))

(declare-fun m!7860316 () Bool)

(assert (=> d!2228504 m!7860316))

(declare-fun m!7860318 () Bool)

(assert (=> b!7148560 m!7860318))

(declare-fun m!7860320 () Bool)

(assert (=> b!7148561 m!7860320))

(declare-fun m!7860322 () Bool)

(assert (=> b!7148565 m!7860322))

(assert (=> b!7148565 m!7860322))

(declare-fun m!7860324 () Bool)

(assert (=> b!7148565 m!7860324))

(assert (=> b!7148501 d!2228504))

(declare-fun b!7148577 () Bool)

(declare-fun e!4295570 () Bool)

(declare-fun tp!1973224 () Bool)

(declare-fun tp!1973222 () Bool)

(assert (=> b!7148577 (= e!4295570 (and tp!1973224 tp!1973222))))

(assert (=> b!7148499 (= tp!1973183 e!4295570)))

(declare-fun b!7148576 () Bool)

(assert (=> b!7148576 (= e!4295570 tp_is_empty!46097)))

(declare-fun b!7148579 () Bool)

(declare-fun tp!1973221 () Bool)

(declare-fun tp!1973223 () Bool)

(assert (=> b!7148579 (= e!4295570 (and tp!1973221 tp!1973223))))

(declare-fun b!7148578 () Bool)

(declare-fun tp!1973220 () Bool)

(assert (=> b!7148578 (= e!4295570 tp!1973220)))

(assert (= (and b!7148499 (is-ElementMatch!18230 (regOne!36973 r!13911))) b!7148576))

(assert (= (and b!7148499 (is-Concat!27075 (regOne!36973 r!13911))) b!7148577))

(assert (= (and b!7148499 (is-Star!18230 (regOne!36973 r!13911))) b!7148578))

(assert (= (and b!7148499 (is-Union!18230 (regOne!36973 r!13911))) b!7148579))

(declare-fun b!7148581 () Bool)

(declare-fun e!4295571 () Bool)

(declare-fun tp!1973229 () Bool)

(declare-fun tp!1973227 () Bool)

(assert (=> b!7148581 (= e!4295571 (and tp!1973229 tp!1973227))))

(assert (=> b!7148499 (= tp!1973186 e!4295571)))

(declare-fun b!7148580 () Bool)

(assert (=> b!7148580 (= e!4295571 tp_is_empty!46097)))

(declare-fun b!7148583 () Bool)

(declare-fun tp!1973226 () Bool)

(declare-fun tp!1973228 () Bool)

(assert (=> b!7148583 (= e!4295571 (and tp!1973226 tp!1973228))))

(declare-fun b!7148582 () Bool)

(declare-fun tp!1973225 () Bool)

(assert (=> b!7148582 (= e!4295571 tp!1973225)))

(assert (= (and b!7148499 (is-ElementMatch!18230 (regTwo!36973 r!13911))) b!7148580))

(assert (= (and b!7148499 (is-Concat!27075 (regTwo!36973 r!13911))) b!7148581))

(assert (= (and b!7148499 (is-Star!18230 (regTwo!36973 r!13911))) b!7148582))

(assert (= (and b!7148499 (is-Union!18230 (regTwo!36973 r!13911))) b!7148583))

(declare-fun b!7148585 () Bool)

(declare-fun e!4295572 () Bool)

(declare-fun tp!1973234 () Bool)

(declare-fun tp!1973232 () Bool)

(assert (=> b!7148585 (= e!4295572 (and tp!1973234 tp!1973232))))

(assert (=> b!7148500 (= tp!1973185 e!4295572)))

(declare-fun b!7148584 () Bool)

(assert (=> b!7148584 (= e!4295572 tp_is_empty!46097)))

(declare-fun b!7148587 () Bool)

(declare-fun tp!1973231 () Bool)

(declare-fun tp!1973233 () Bool)

(assert (=> b!7148587 (= e!4295572 (and tp!1973231 tp!1973233))))

(declare-fun b!7148586 () Bool)

(declare-fun tp!1973230 () Bool)

(assert (=> b!7148586 (= e!4295572 tp!1973230)))

(assert (= (and b!7148500 (is-ElementMatch!18230 (regOne!36972 r!13911))) b!7148584))

(assert (= (and b!7148500 (is-Concat!27075 (regOne!36972 r!13911))) b!7148585))

(assert (= (and b!7148500 (is-Star!18230 (regOne!36972 r!13911))) b!7148586))

(assert (= (and b!7148500 (is-Union!18230 (regOne!36972 r!13911))) b!7148587))

(declare-fun b!7148589 () Bool)

(declare-fun e!4295573 () Bool)

(declare-fun tp!1973239 () Bool)

(declare-fun tp!1973237 () Bool)

(assert (=> b!7148589 (= e!4295573 (and tp!1973239 tp!1973237))))

(assert (=> b!7148500 (= tp!1973182 e!4295573)))

(declare-fun b!7148588 () Bool)

(assert (=> b!7148588 (= e!4295573 tp_is_empty!46097)))

(declare-fun b!7148591 () Bool)

(declare-fun tp!1973236 () Bool)

(declare-fun tp!1973238 () Bool)

(assert (=> b!7148591 (= e!4295573 (and tp!1973236 tp!1973238))))

(declare-fun b!7148590 () Bool)

(declare-fun tp!1973235 () Bool)

(assert (=> b!7148590 (= e!4295573 tp!1973235)))

(assert (= (and b!7148500 (is-ElementMatch!18230 (regTwo!36972 r!13911))) b!7148588))

(assert (= (and b!7148500 (is-Concat!27075 (regTwo!36972 r!13911))) b!7148589))

(assert (= (and b!7148500 (is-Star!18230 (regTwo!36972 r!13911))) b!7148590))

(assert (= (and b!7148500 (is-Union!18230 (regTwo!36972 r!13911))) b!7148591))

(declare-fun b!7148593 () Bool)

(declare-fun e!4295574 () Bool)

(declare-fun tp!1973244 () Bool)

(declare-fun tp!1973242 () Bool)

(assert (=> b!7148593 (= e!4295574 (and tp!1973244 tp!1973242))))

(assert (=> b!7148496 (= tp!1973187 e!4295574)))

(declare-fun b!7148592 () Bool)

(assert (=> b!7148592 (= e!4295574 tp_is_empty!46097)))

(declare-fun b!7148595 () Bool)

(declare-fun tp!1973241 () Bool)

(declare-fun tp!1973243 () Bool)

(assert (=> b!7148595 (= e!4295574 (and tp!1973241 tp!1973243))))

(declare-fun b!7148594 () Bool)

(declare-fun tp!1973240 () Bool)

(assert (=> b!7148594 (= e!4295574 tp!1973240)))

(assert (= (and b!7148496 (is-ElementMatch!18230 (reg!18559 r!13911))) b!7148592))

(assert (= (and b!7148496 (is-Concat!27075 (reg!18559 r!13911))) b!7148593))

(assert (= (and b!7148496 (is-Star!18230 (reg!18559 r!13911))) b!7148594))

(assert (= (and b!7148496 (is-Union!18230 (reg!18559 r!13911))) b!7148595))

(declare-fun b!7148597 () Bool)

(declare-fun e!4295575 () Bool)

(declare-fun tp!1973249 () Bool)

(declare-fun tp!1973247 () Bool)

(assert (=> b!7148597 (= e!4295575 (and tp!1973249 tp!1973247))))

(assert (=> b!7148497 (= tp!1973184 e!4295575)))

(declare-fun b!7148596 () Bool)

(assert (=> b!7148596 (= e!4295575 tp_is_empty!46097)))

(declare-fun b!7148599 () Bool)

(declare-fun tp!1973246 () Bool)

(declare-fun tp!1973248 () Bool)

(assert (=> b!7148599 (= e!4295575 (and tp!1973246 tp!1973248))))

(declare-fun b!7148598 () Bool)

(declare-fun tp!1973245 () Bool)

(assert (=> b!7148598 (= e!4295575 tp!1973245)))

(assert (= (and b!7148497 (is-ElementMatch!18230 (h!75858 l!9154))) b!7148596))

(assert (= (and b!7148497 (is-Concat!27075 (h!75858 l!9154))) b!7148597))

(assert (= (and b!7148497 (is-Star!18230 (h!75858 l!9154))) b!7148598))

(assert (= (and b!7148497 (is-Union!18230 (h!75858 l!9154))) b!7148599))

(declare-fun b!7148604 () Bool)

(declare-fun e!4295578 () Bool)

(declare-fun tp!1973254 () Bool)

(declare-fun tp!1973255 () Bool)

(assert (=> b!7148604 (= e!4295578 (and tp!1973254 tp!1973255))))

(assert (=> b!7148497 (= tp!1973188 e!4295578)))

(assert (= (and b!7148497 (is-Cons!69410 (t!383551 l!9154))) b!7148604))

(declare-fun b_lambda!272861 () Bool)

(assert (= b_lambda!272859 (or start!697014 b_lambda!272861)))

(declare-fun bs!1889401 () Bool)

(declare-fun d!2228508 () Bool)

(assert (= bs!1889401 (and d!2228508 start!697014)))

(assert (=> bs!1889401 (= (dynLambda!28273 lambda!435987 (h!75858 l!9154)) (validRegex!9386 (h!75858 l!9154)))))

(declare-fun m!7860326 () Bool)

(assert (=> bs!1889401 m!7860326))

(assert (=> b!7148534 d!2228508))

(push 1)

(assert (not b!7148587))

(assert (not b!7148604))

(assert (not b!7148589))

(assert (not b!7148557))

(assert (not b!7148563))

(assert (not b!7148535))

(assert (not b!7148579))

(assert tp_is_empty!46097)

(assert (not b!7148585))

(assert (not d!2228504))

(assert (not b!7148577))

(assert (not b!7148594))

(assert (not b!7148593))

(assert (not b!7148582))

(assert (not b!7148578))

(assert (not b!7148556))

(assert (not bs!1889401))

(assert (not b!7148597))

(assert (not b!7148590))

(assert (not b!7148581))

(assert (not b!7148599))

(assert (not b!7148565))

(assert (not b!7148529))

(assert (not b!7148598))

(assert (not b_lambda!272861))

(assert (not b!7148560))

(assert (not b!7148561))

(assert (not b!7148583))

(assert (not b!7148591))

(assert (not b!7148586))

(assert (not b!7148562))

(assert (not b!7148595))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

