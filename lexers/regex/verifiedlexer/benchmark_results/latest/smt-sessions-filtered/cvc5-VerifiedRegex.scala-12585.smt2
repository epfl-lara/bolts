; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!697564 () Bool)

(assert start!697564)

(declare-fun b!7156418 () Bool)

(declare-fun e!4299091 () Bool)

(declare-fun tp!1978943 () Bool)

(assert (=> b!7156418 (= e!4299091 tp!1978943)))

(declare-fun e!4299092 () Bool)

(declare-fun e!4299090 () Bool)

(declare-fun b!7156419 () Bool)

(declare-fun tp!1978944 () Bool)

(declare-datatypes ((C!36830 0))(
  ( (C!36831 (val!28363 Int)) )
))
(declare-datatypes ((Regex!18278 0))(
  ( (ElementMatch!18278 (c!1333635 C!36830)) (Concat!27123 (regOne!37068 Regex!18278) (regTwo!37068 Regex!18278)) (EmptyExpr!18278) (Star!18278 (reg!18607 Regex!18278)) (EmptyLang!18278) (Union!18278 (regOne!37069 Regex!18278) (regTwo!37069 Regex!18278)) )
))
(declare-datatypes ((List!69592 0))(
  ( (Nil!69468) (Cons!69468 (h!75916 Regex!18278) (t!383609 List!69592)) )
))
(declare-datatypes ((Context!14460 0))(
  ( (Context!14461 (exprs!7730 List!69592)) )
))
(declare-datatypes ((List!69593 0))(
  ( (Nil!69469) (Cons!69469 (h!75917 Context!14460) (t!383610 List!69593)) )
))
(declare-fun zl!300 () List!69593)

(declare-fun inv!88718 (Context!14460) Bool)

(assert (=> b!7156419 (= e!4299090 (and (inv!88718 (h!75917 zl!300)) e!4299092 tp!1978944))))

(declare-fun res!2918018 () Bool)

(declare-fun e!4299093 () Bool)

(assert (=> start!697564 (=> (not res!2918018) (not e!4299093))))

(declare-fun c!7723 () Context!14460)

(declare-fun contains!20670 (List!69593 Context!14460) Bool)

(assert (=> start!697564 (= res!2918018 (contains!20670 zl!300 c!7723))))

(assert (=> start!697564 e!4299093))

(assert (=> start!697564 e!4299090))

(assert (=> start!697564 (and (inv!88718 c!7723) e!4299091)))

(declare-fun b!7156420 () Bool)

(declare-fun tp!1978942 () Bool)

(assert (=> b!7156420 (= e!4299092 tp!1978942)))

(declare-fun b!7156421 () Bool)

(declare-fun res!2918020 () Bool)

(assert (=> b!7156421 (=> (not res!2918020) (not e!4299093))))

(assert (=> b!7156421 (= res!2918020 (and (is-Cons!69469 zl!300) (not (= (h!75917 zl!300) c!7723))))))

(declare-fun b!7156422 () Bool)

(declare-fun size!41516 (List!69593) Int)

(assert (=> b!7156422 (= e!4299093 (>= (size!41516 (t!383610 zl!300)) (size!41516 zl!300)))))

(declare-fun b!7156423 () Bool)

(declare-fun res!2918019 () Bool)

(assert (=> b!7156423 (=> (not res!2918019) (not e!4299093))))

(assert (=> b!7156423 (= res!2918019 (contains!20670 (t!383610 zl!300) c!7723))))

(assert (= (and start!697564 res!2918018) b!7156421))

(assert (= (and b!7156421 res!2918020) b!7156423))

(assert (= (and b!7156423 res!2918019) b!7156422))

(assert (= b!7156419 b!7156420))

(assert (= (and start!697564 (is-Cons!69469 zl!300)) b!7156419))

(assert (= start!697564 b!7156418))

(declare-fun m!7863046 () Bool)

(assert (=> b!7156419 m!7863046))

(declare-fun m!7863048 () Bool)

(assert (=> start!697564 m!7863048))

(declare-fun m!7863050 () Bool)

(assert (=> start!697564 m!7863050))

(declare-fun m!7863052 () Bool)

(assert (=> b!7156422 m!7863052))

(declare-fun m!7863054 () Bool)

(assert (=> b!7156422 m!7863054))

(declare-fun m!7863056 () Bool)

(assert (=> b!7156423 m!7863056))

(push 1)

(assert (not b!7156423))

(assert (not b!7156422))

(assert (not start!697564))

(assert (not b!7156420))

(assert (not b!7156418))

(assert (not b!7156419))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!2229710 () Bool)

(declare-fun lambda!436452 () Int)

(declare-fun forall!17116 (List!69592 Int) Bool)

(assert (=> d!2229710 (= (inv!88718 (h!75917 zl!300)) (forall!17116 (exprs!7730 (h!75917 zl!300)) lambda!436452))))

(declare-fun bs!1889939 () Bool)

(assert (= bs!1889939 d!2229710))

(declare-fun m!7863070 () Bool)

(assert (=> bs!1889939 m!7863070))

(assert (=> b!7156419 d!2229710))

(declare-fun d!2229712 () Bool)

(declare-fun lt!2569278 () Int)

(assert (=> d!2229712 (>= lt!2569278 0)))

(declare-fun e!4299108 () Int)

(assert (=> d!2229712 (= lt!2569278 e!4299108)))

(declare-fun c!1333639 () Bool)

(assert (=> d!2229712 (= c!1333639 (is-Nil!69469 (t!383610 zl!300)))))

(assert (=> d!2229712 (= (size!41516 (t!383610 zl!300)) lt!2569278)))

(declare-fun b!7156446 () Bool)

(assert (=> b!7156446 (= e!4299108 0)))

(declare-fun b!7156447 () Bool)

(assert (=> b!7156447 (= e!4299108 (+ 1 (size!41516 (t!383610 (t!383610 zl!300)))))))

(assert (= (and d!2229712 c!1333639) b!7156446))

(assert (= (and d!2229712 (not c!1333639)) b!7156447))

(declare-fun m!7863072 () Bool)

(assert (=> b!7156447 m!7863072))

(assert (=> b!7156422 d!2229712))

(declare-fun d!2229714 () Bool)

(declare-fun lt!2569279 () Int)

(assert (=> d!2229714 (>= lt!2569279 0)))

(declare-fun e!4299109 () Int)

(assert (=> d!2229714 (= lt!2569279 e!4299109)))

(declare-fun c!1333640 () Bool)

(assert (=> d!2229714 (= c!1333640 (is-Nil!69469 zl!300))))

(assert (=> d!2229714 (= (size!41516 zl!300) lt!2569279)))

(declare-fun b!7156448 () Bool)

(assert (=> b!7156448 (= e!4299109 0)))

(declare-fun b!7156449 () Bool)

(assert (=> b!7156449 (= e!4299109 (+ 1 (size!41516 (t!383610 zl!300))))))

(assert (= (and d!2229714 c!1333640) b!7156448))

(assert (= (and d!2229714 (not c!1333640)) b!7156449))

(assert (=> b!7156449 m!7863052))

(assert (=> b!7156422 d!2229714))

(declare-fun d!2229716 () Bool)

(declare-fun lt!2569282 () Bool)

(declare-fun content!14253 (List!69593) (Set Context!14460))

(assert (=> d!2229716 (= lt!2569282 (set.member c!7723 (content!14253 zl!300)))))

(declare-fun e!4299114 () Bool)

(assert (=> d!2229716 (= lt!2569282 e!4299114)))

(declare-fun res!2918035 () Bool)

(assert (=> d!2229716 (=> (not res!2918035) (not e!4299114))))

(assert (=> d!2229716 (= res!2918035 (is-Cons!69469 zl!300))))

(assert (=> d!2229716 (= (contains!20670 zl!300 c!7723) lt!2569282)))

(declare-fun b!7156454 () Bool)

(declare-fun e!4299115 () Bool)

(assert (=> b!7156454 (= e!4299114 e!4299115)))

(declare-fun res!2918034 () Bool)

(assert (=> b!7156454 (=> res!2918034 e!4299115)))

(assert (=> b!7156454 (= res!2918034 (= (h!75917 zl!300) c!7723))))

(declare-fun b!7156455 () Bool)

(assert (=> b!7156455 (= e!4299115 (contains!20670 (t!383610 zl!300) c!7723))))

(assert (= (and d!2229716 res!2918035) b!7156454))

(assert (= (and b!7156454 (not res!2918034)) b!7156455))

(declare-fun m!7863074 () Bool)

(assert (=> d!2229716 m!7863074))

(declare-fun m!7863076 () Bool)

(assert (=> d!2229716 m!7863076))

(assert (=> b!7156455 m!7863056))

(assert (=> start!697564 d!2229716))

(declare-fun bs!1889940 () Bool)

(declare-fun d!2229718 () Bool)

(assert (= bs!1889940 (and d!2229718 d!2229710)))

(declare-fun lambda!436453 () Int)

(assert (=> bs!1889940 (= lambda!436453 lambda!436452)))

(assert (=> d!2229718 (= (inv!88718 c!7723) (forall!17116 (exprs!7730 c!7723) lambda!436453))))

(declare-fun bs!1889941 () Bool)

(assert (= bs!1889941 d!2229718))

(declare-fun m!7863078 () Bool)

(assert (=> bs!1889941 m!7863078))

(assert (=> start!697564 d!2229718))

(declare-fun d!2229720 () Bool)

(declare-fun lt!2569283 () Bool)

(assert (=> d!2229720 (= lt!2569283 (set.member c!7723 (content!14253 (t!383610 zl!300))))))

(declare-fun e!4299116 () Bool)

(assert (=> d!2229720 (= lt!2569283 e!4299116)))

(declare-fun res!2918037 () Bool)

(assert (=> d!2229720 (=> (not res!2918037) (not e!4299116))))

(assert (=> d!2229720 (= res!2918037 (is-Cons!69469 (t!383610 zl!300)))))

(assert (=> d!2229720 (= (contains!20670 (t!383610 zl!300) c!7723) lt!2569283)))

(declare-fun b!7156456 () Bool)

(declare-fun e!4299117 () Bool)

(assert (=> b!7156456 (= e!4299116 e!4299117)))

(declare-fun res!2918036 () Bool)

(assert (=> b!7156456 (=> res!2918036 e!4299117)))

(assert (=> b!7156456 (= res!2918036 (= (h!75917 (t!383610 zl!300)) c!7723))))

(declare-fun b!7156457 () Bool)

(assert (=> b!7156457 (= e!4299117 (contains!20670 (t!383610 (t!383610 zl!300)) c!7723))))

(assert (= (and d!2229720 res!2918037) b!7156456))

(assert (= (and b!7156456 (not res!2918036)) b!7156457))

(declare-fun m!7863080 () Bool)

(assert (=> d!2229720 m!7863080))

(declare-fun m!7863082 () Bool)

(assert (=> d!2229720 m!7863082))

(declare-fun m!7863084 () Bool)

(assert (=> b!7156457 m!7863084))

(assert (=> b!7156423 d!2229720))

(declare-fun b!7156462 () Bool)

(declare-fun e!4299120 () Bool)

(declare-fun tp!1978958 () Bool)

(declare-fun tp!1978959 () Bool)

(assert (=> b!7156462 (= e!4299120 (and tp!1978958 tp!1978959))))

(assert (=> b!7156420 (= tp!1978942 e!4299120)))

(assert (= (and b!7156420 (is-Cons!69468 (exprs!7730 (h!75917 zl!300)))) b!7156462))

(declare-fun b!7156470 () Bool)

(declare-fun e!4299126 () Bool)

(declare-fun tp!1978964 () Bool)

(assert (=> b!7156470 (= e!4299126 tp!1978964)))

(declare-fun e!4299125 () Bool)

(declare-fun tp!1978965 () Bool)

(declare-fun b!7156469 () Bool)

(assert (=> b!7156469 (= e!4299125 (and (inv!88718 (h!75917 (t!383610 zl!300))) e!4299126 tp!1978965))))

(assert (=> b!7156419 (= tp!1978944 e!4299125)))

(assert (= b!7156469 b!7156470))

(assert (= (and b!7156419 (is-Cons!69469 (t!383610 zl!300))) b!7156469))

(declare-fun m!7863086 () Bool)

(assert (=> b!7156469 m!7863086))

(declare-fun b!7156471 () Bool)

(declare-fun e!4299127 () Bool)

(declare-fun tp!1978966 () Bool)

(declare-fun tp!1978967 () Bool)

(assert (=> b!7156471 (= e!4299127 (and tp!1978966 tp!1978967))))

(assert (=> b!7156418 (= tp!1978943 e!4299127)))

(assert (= (and b!7156418 (is-Cons!69468 (exprs!7730 c!7723))) b!7156471))

(push 1)

(assert (not d!2229716))

(assert (not b!7156455))

(assert (not d!2229710))

(assert (not d!2229718))

(assert (not b!7156449))

(assert (not b!7156469))

(assert (not b!7156471))

(assert (not b!7156470))

(assert (not b!7156457))

(assert (not b!7156462))

(assert (not b!7156447))

(assert (not d!2229720))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

