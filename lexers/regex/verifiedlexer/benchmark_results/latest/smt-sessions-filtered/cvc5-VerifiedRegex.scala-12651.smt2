; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!700730 () Bool)

(assert start!700730)

(declare-fun res!2932259 () Bool)

(declare-fun e!4331907 () Bool)

(assert (=> start!700730 (=> (not res!2932259) (not e!4331907))))

(declare-datatypes ((C!37094 0))(
  ( (C!37095 (val!28495 Int)) )
))
(declare-datatypes ((Regex!18410 0))(
  ( (ElementMatch!18410 (c!1340570 C!37094)) (Concat!27255 (regOne!37332 Regex!18410) (regTwo!37332 Regex!18410)) (EmptyExpr!18410) (Star!18410 (reg!18739 Regex!18410)) (EmptyLang!18410) (Union!18410 (regOne!37333 Regex!18410) (regTwo!37333 Regex!18410)) )
))
(declare-datatypes ((List!69940 0))(
  ( (Nil!69816) (Cons!69816 (h!76264 Regex!18410) (t!383971 List!69940)) )
))
(declare-datatypes ((Context!14724 0))(
  ( (Context!14725 (exprs!7862 List!69940)) )
))
(declare-datatypes ((List!69941 0))(
  ( (Nil!69817) (Cons!69817 (h!76265 Context!14724) (t!383972 List!69941)) )
))
(declare-fun zl!166 () List!69941)

(assert (=> start!700730 (= res!2932259 (is-Cons!69817 zl!166))))

(assert (=> start!700730 e!4331907))

(declare-fun e!4331908 () Bool)

(assert (=> start!700730 e!4331908))

(declare-fun b!7226520 () Bool)

(declare-fun lt!2571979 () Int)

(declare-fun lt!2571980 () Int)

(declare-fun maxBigInt!0 (Int Int) Int)

(assert (=> b!7226520 (= e!4331907 (< (maxBigInt!0 lt!2571979 lt!2571980) lt!2571980))))

(declare-fun zipperDepth!431 (List!69941) Int)

(assert (=> b!7226520 (= lt!2571980 (zipperDepth!431 (t!383972 zl!166)))))

(declare-fun contextDepth!322 (Context!14724) Int)

(assert (=> b!7226520 (= lt!2571979 (contextDepth!322 (h!76265 zl!166)))))

(declare-fun b!7226522 () Bool)

(declare-fun e!4331906 () Bool)

(declare-fun tp!2032328 () Bool)

(assert (=> b!7226522 (= e!4331906 tp!2032328)))

(declare-fun tp!2032327 () Bool)

(declare-fun b!7226521 () Bool)

(declare-fun inv!89048 (Context!14724) Bool)

(assert (=> b!7226521 (= e!4331908 (and (inv!89048 (h!76265 zl!166)) e!4331906 tp!2032327))))

(assert (= (and start!700730 res!2932259) b!7226520))

(assert (= b!7226521 b!7226522))

(assert (= (and start!700730 (is-Cons!69817 zl!166)) b!7226521))

(declare-fun m!7895892 () Bool)

(assert (=> b!7226520 m!7895892))

(declare-fun m!7895894 () Bool)

(assert (=> b!7226520 m!7895894))

(declare-fun m!7895896 () Bool)

(assert (=> b!7226520 m!7895896))

(declare-fun m!7895898 () Bool)

(assert (=> b!7226521 m!7895898))

(push 1)

(assert (not b!7226521))

(assert (not b!7226520))

(assert (not b!7226522))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!2244550 () Bool)

(declare-fun lambda!438468 () Int)

(declare-fun forall!17233 (List!69940 Int) Bool)

(assert (=> d!2244550 (= (inv!89048 (h!76265 zl!166)) (forall!17233 (exprs!7862 (h!76265 zl!166)) lambda!438468))))

(declare-fun bs!1901964 () Bool)

(assert (= bs!1901964 d!2244550))

(declare-fun m!7895908 () Bool)

(assert (=> bs!1901964 m!7895908))

(assert (=> b!7226521 d!2244550))

(declare-fun d!2244554 () Bool)

(assert (=> d!2244554 (= (maxBigInt!0 lt!2571979 lt!2571980) (ite (>= lt!2571979 lt!2571980) lt!2571979 lt!2571980))))

(assert (=> b!7226520 d!2244554))

(declare-fun b!7226539 () Bool)

(assert (=> b!7226539 true))

(declare-fun bs!1901965 () Bool)

(declare-fun b!7226541 () Bool)

(assert (= bs!1901965 (and b!7226541 b!7226539)))

(declare-fun lt!2571997 () Int)

(declare-fun lambda!438477 () Int)

(declare-fun lt!2571996 () Int)

(declare-fun lambda!438476 () Int)

(assert (=> bs!1901965 (= (= lt!2571996 lt!2571997) (= lambda!438477 lambda!438476))))

(assert (=> b!7226541 true))

(declare-fun d!2244556 () Bool)

(declare-fun e!4331922 () Bool)

(assert (=> d!2244556 e!4331922))

(declare-fun res!2932265 () Bool)

(assert (=> d!2244556 (=> (not res!2932265) (not e!4331922))))

(assert (=> d!2244556 (= res!2932265 (>= lt!2571996 0))))

(declare-fun e!4331923 () Int)

(assert (=> d!2244556 (= lt!2571996 e!4331923)))

(declare-fun c!1340580 () Bool)

(assert (=> d!2244556 (= c!1340580 (is-Cons!69817 (t!383972 zl!166)))))

(assert (=> d!2244556 (= (zipperDepth!431 (t!383972 zl!166)) lt!2571996)))

(assert (=> b!7226539 (= e!4331923 lt!2571997)))

(assert (=> b!7226539 (= lt!2571997 (maxBigInt!0 (contextDepth!322 (h!76265 (t!383972 zl!166))) (zipperDepth!431 (t!383972 (t!383972 zl!166)))))))

(declare-datatypes ((Unit!163433 0))(
  ( (Unit!163434) )
))
(declare-fun lt!2571995 () Unit!163433)

(declare-fun lambda!438475 () Int)

(declare-fun lemmaForallContextDepthBiggerThanTransitive!300 (List!69941 Int Int Int) Unit!163433)

(assert (=> b!7226539 (= lt!2571995 (lemmaForallContextDepthBiggerThanTransitive!300 (t!383972 (t!383972 zl!166)) lt!2571997 (zipperDepth!431 (t!383972 (t!383972 zl!166))) lambda!438475))))

(declare-fun forall!17234 (List!69941 Int) Bool)

(assert (=> b!7226539 (forall!17234 (t!383972 (t!383972 zl!166)) lambda!438476)))

(declare-fun lt!2571998 () Unit!163433)

(assert (=> b!7226539 (= lt!2571998 lt!2571995)))

(declare-fun b!7226540 () Bool)

(assert (=> b!7226540 (= e!4331923 0)))

(assert (=> b!7226541 (= e!4331922 (forall!17234 (t!383972 zl!166) lambda!438477))))

(assert (= (and d!2244556 c!1340580) b!7226539))

(assert (= (and d!2244556 (not c!1340580)) b!7226540))

(assert (= (and d!2244556 res!2932265) b!7226541))

(declare-fun m!7895910 () Bool)

(assert (=> b!7226539 m!7895910))

(declare-fun m!7895912 () Bool)

(assert (=> b!7226539 m!7895912))

(declare-fun m!7895914 () Bool)

(assert (=> b!7226539 m!7895914))

(assert (=> b!7226539 m!7895910))

(declare-fun m!7895916 () Bool)

(assert (=> b!7226539 m!7895916))

(assert (=> b!7226539 m!7895912))

(declare-fun m!7895918 () Bool)

(assert (=> b!7226539 m!7895918))

(assert (=> b!7226539 m!7895912))

(declare-fun m!7895920 () Bool)

(assert (=> b!7226541 m!7895920))

(assert (=> b!7226520 d!2244556))

(declare-fun bs!1901966 () Bool)

(declare-fun b!7226550 () Bool)

(assert (= bs!1901966 (and b!7226550 d!2244550)))

(declare-fun lambda!438482 () Int)

(assert (=> bs!1901966 (not (= lambda!438482 lambda!438468))))

(assert (=> b!7226550 true))

(declare-fun bs!1901967 () Bool)

(declare-fun b!7226552 () Bool)

(assert (= bs!1901967 (and b!7226552 d!2244550)))

(declare-fun lambda!438483 () Int)

(assert (=> bs!1901967 (not (= lambda!438483 lambda!438468))))

(declare-fun bs!1901968 () Bool)

(assert (= bs!1901968 (and b!7226552 b!7226550)))

(declare-fun lt!2572009 () Int)

(declare-fun lt!2572010 () Int)

(assert (=> bs!1901968 (= (= lt!2572010 lt!2572009) (= lambda!438483 lambda!438482))))

(assert (=> b!7226552 true))

(declare-fun d!2244558 () Bool)

(declare-fun e!4331929 () Bool)

(assert (=> d!2244558 e!4331929))

(declare-fun res!2932268 () Bool)

(assert (=> d!2244558 (=> (not res!2932268) (not e!4331929))))

(assert (=> d!2244558 (= res!2932268 (>= lt!2572010 0))))

(declare-fun e!4331928 () Int)

(assert (=> d!2244558 (= lt!2572010 e!4331928)))

(declare-fun c!1340584 () Bool)

(assert (=> d!2244558 (= c!1340584 (is-Cons!69816 (exprs!7862 (h!76265 zl!166))))))

(assert (=> d!2244558 (= (contextDepth!322 (h!76265 zl!166)) lt!2572010)))

(assert (=> b!7226550 (= e!4331928 lt!2572009)))

(declare-fun regexDepth!404 (Regex!18410) Int)

(assert (=> b!7226550 (= lt!2572009 (maxBigInt!0 (regexDepth!404 (h!76264 (exprs!7862 (h!76265 zl!166)))) (contextDepth!322 (Context!14725 (t!383971 (exprs!7862 (h!76265 zl!166)))))))))

(declare-fun lt!2572007 () Unit!163433)

(declare-fun lemmaForallRegexDepthBiggerThanTransitive!146 (List!69940 Int Int) Unit!163433)

(assert (=> b!7226550 (= lt!2572007 (lemmaForallRegexDepthBiggerThanTransitive!146 (t!383971 (exprs!7862 (h!76265 zl!166))) lt!2572009 (contextDepth!322 (Context!14725 (t!383971 (exprs!7862 (h!76265 zl!166)))))))))

(assert (=> b!7226550 (forall!17233 (t!383971 (exprs!7862 (h!76265 zl!166))) lambda!438482)))

(declare-fun lt!2572008 () Unit!163433)

(assert (=> b!7226550 (= lt!2572008 lt!2572007)))

(declare-fun b!7226551 () Bool)

(assert (=> b!7226551 (= e!4331928 0)))

(assert (=> b!7226552 (= e!4331929 (forall!17233 (exprs!7862 (h!76265 zl!166)) lambda!438483))))

(assert (= (and d!2244558 c!1340584) b!7226550))

(assert (= (and d!2244558 (not c!1340584)) b!7226551))

(assert (= (and d!2244558 res!2932268) b!7226552))

(declare-fun m!7895922 () Bool)

(assert (=> b!7226550 m!7895922))

(declare-fun m!7895924 () Bool)

(assert (=> b!7226550 m!7895924))

(declare-fun m!7895926 () Bool)

(assert (=> b!7226550 m!7895926))

(assert (=> b!7226550 m!7895926))

(declare-fun m!7895928 () Bool)

(assert (=> b!7226550 m!7895928))

(assert (=> b!7226550 m!7895924))

(assert (=> b!7226550 m!7895926))

(declare-fun m!7895930 () Bool)

(assert (=> b!7226550 m!7895930))

(declare-fun m!7895932 () Bool)

(assert (=> b!7226552 m!7895932))

(assert (=> b!7226520 d!2244558))

(declare-fun b!7226559 () Bool)

(declare-fun e!4331932 () Bool)

(declare-fun tp!2032339 () Bool)

(declare-fun tp!2032340 () Bool)

(assert (=> b!7226559 (= e!4331932 (and tp!2032339 tp!2032340))))

(assert (=> b!7226522 (= tp!2032328 e!4331932)))

(assert (= (and b!7226522 (is-Cons!69816 (exprs!7862 (h!76265 zl!166)))) b!7226559))

(declare-fun b!7226567 () Bool)

(declare-fun e!4331938 () Bool)

(declare-fun tp!2032345 () Bool)

(assert (=> b!7226567 (= e!4331938 tp!2032345)))

(declare-fun b!7226566 () Bool)

(declare-fun tp!2032346 () Bool)

(declare-fun e!4331937 () Bool)

(assert (=> b!7226566 (= e!4331937 (and (inv!89048 (h!76265 (t!383972 zl!166))) e!4331938 tp!2032346))))

(assert (=> b!7226521 (= tp!2032327 e!4331937)))

(assert (= b!7226566 b!7226567))

(assert (= (and b!7226521 (is-Cons!69817 (t!383972 zl!166))) b!7226566))

(declare-fun m!7895934 () Bool)

(assert (=> b!7226566 m!7895934))

(push 1)

(assert (not b!7226539))

(assert (not d!2244550))

(assert (not b!7226566))

(assert (not b!7226550))

(assert (not b!7226552))

(assert (not b!7226541))

(assert (not b!7226559))

(assert (not b!7226567))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

