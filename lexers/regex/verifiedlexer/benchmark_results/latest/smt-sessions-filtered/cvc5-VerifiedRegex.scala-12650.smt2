; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!700710 () Bool)

(assert start!700710)

(declare-fun res!2932241 () Bool)

(declare-fun e!4331838 () Bool)

(assert (=> start!700710 (=> (not res!2932241) (not e!4331838))))

(declare-datatypes ((C!37090 0))(
  ( (C!37091 (val!28493 Int)) )
))
(declare-datatypes ((Regex!18408 0))(
  ( (ElementMatch!18408 (c!1340534 C!37090)) (Concat!27253 (regOne!37328 Regex!18408) (regTwo!37328 Regex!18408)) (EmptyExpr!18408) (Star!18408 (reg!18737 Regex!18408)) (EmptyLang!18408) (Union!18408 (regOne!37329 Regex!18408) (regTwo!37329 Regex!18408)) )
))
(declare-datatypes ((List!69936 0))(
  ( (Nil!69812) (Cons!69812 (h!76260 Regex!18408) (t!383967 List!69936)) )
))
(declare-datatypes ((Context!14720 0))(
  ( (Context!14721 (exprs!7860 List!69936)) )
))
(declare-datatypes ((List!69937 0))(
  ( (Nil!69813) (Cons!69813 (h!76261 Context!14720) (t!383968 List!69937)) )
))
(declare-fun zl!166 () List!69937)

(assert (=> start!700710 (= res!2932241 (is-Cons!69813 zl!166))))

(assert (=> start!700710 e!4331838))

(declare-fun e!4331839 () Bool)

(assert (=> start!700710 e!4331839))

(declare-fun b!7226416 () Bool)

(declare-fun size!41520 (List!69937) Int)

(assert (=> b!7226416 (= e!4331838 (>= (size!41520 (t!383968 zl!166)) (size!41520 zl!166)))))

(declare-fun lt!2571911 () Int)

(declare-fun zipperDepth!429 (List!69937) Int)

(assert (=> b!7226416 (= lt!2571911 (zipperDepth!429 (t!383968 zl!166)))))

(declare-fun lt!2571912 () Int)

(declare-fun contextDepth!320 (Context!14720) Int)

(assert (=> b!7226416 (= lt!2571912 (contextDepth!320 (h!76261 zl!166)))))

(declare-fun b!7226418 () Bool)

(declare-fun e!4331840 () Bool)

(declare-fun tp!2032292 () Bool)

(assert (=> b!7226418 (= e!4331840 tp!2032292)))

(declare-fun tp!2032291 () Bool)

(declare-fun b!7226417 () Bool)

(declare-fun inv!89043 (Context!14720) Bool)

(assert (=> b!7226417 (= e!4331839 (and (inv!89043 (h!76261 zl!166)) e!4331840 tp!2032291))))

(assert (= (and start!700710 res!2932241) b!7226416))

(assert (= b!7226417 b!7226418))

(assert (= (and start!700710 (is-Cons!69813 zl!166)) b!7226417))

(declare-fun m!7895812 () Bool)

(assert (=> b!7226416 m!7895812))

(declare-fun m!7895814 () Bool)

(assert (=> b!7226416 m!7895814))

(declare-fun m!7895816 () Bool)

(assert (=> b!7226416 m!7895816))

(declare-fun m!7895818 () Bool)

(assert (=> b!7226416 m!7895818))

(declare-fun m!7895820 () Bool)

(assert (=> b!7226417 m!7895820))

(push 1)

(assert (not b!7226416))

(assert (not b!7226417))

(assert (not b!7226418))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!2244529 () Bool)

(declare-fun lt!2571923 () Int)

(assert (=> d!2244529 (>= lt!2571923 0)))

(declare-fun e!4331854 () Int)

(assert (=> d!2244529 (= lt!2571923 e!4331854)))

(declare-fun c!1340540 () Bool)

(assert (=> d!2244529 (= c!1340540 (is-Nil!69813 (t!383968 zl!166)))))

(assert (=> d!2244529 (= (size!41520 (t!383968 zl!166)) lt!2571923)))

(declare-fun b!7226436 () Bool)

(assert (=> b!7226436 (= e!4331854 0)))

(declare-fun b!7226437 () Bool)

(assert (=> b!7226437 (= e!4331854 (+ 1 (size!41520 (t!383968 (t!383968 zl!166)))))))

(assert (= (and d!2244529 c!1340540) b!7226436))

(assert (= (and d!2244529 (not c!1340540)) b!7226437))

(declare-fun m!7895832 () Bool)

(assert (=> b!7226437 m!7895832))

(assert (=> b!7226416 d!2244529))

(declare-fun d!2244533 () Bool)

(declare-fun lt!2571924 () Int)

(assert (=> d!2244533 (>= lt!2571924 0)))

(declare-fun e!4331855 () Int)

(assert (=> d!2244533 (= lt!2571924 e!4331855)))

(declare-fun c!1340541 () Bool)

(assert (=> d!2244533 (= c!1340541 (is-Nil!69813 zl!166))))

(assert (=> d!2244533 (= (size!41520 zl!166) lt!2571924)))

(declare-fun b!7226438 () Bool)

(assert (=> b!7226438 (= e!4331855 0)))

(declare-fun b!7226439 () Bool)

(assert (=> b!7226439 (= e!4331855 (+ 1 (size!41520 (t!383968 zl!166))))))

(assert (= (and d!2244533 c!1340541) b!7226438))

(assert (= (and d!2244533 (not c!1340541)) b!7226439))

(assert (=> b!7226439 m!7895812))

(assert (=> b!7226416 d!2244533))

(declare-fun b!7226454 () Bool)

(assert (=> b!7226454 true))

(declare-fun bs!1901952 () Bool)

(declare-fun b!7226456 () Bool)

(assert (= bs!1901952 (and b!7226456 b!7226454)))

(declare-fun lambda!438437 () Int)

(declare-fun lt!2571945 () Int)

(declare-fun lambda!438438 () Int)

(declare-fun lt!2571946 () Int)

(assert (=> bs!1901952 (= (= lt!2571945 lt!2571946) (= lambda!438438 lambda!438437))))

(assert (=> b!7226456 true))

(declare-fun d!2244535 () Bool)

(declare-fun e!4331864 () Bool)

(assert (=> d!2244535 e!4331864))

(declare-fun res!2932247 () Bool)

(assert (=> d!2244535 (=> (not res!2932247) (not e!4331864))))

(assert (=> d!2244535 (= res!2932247 (>= lt!2571945 0))))

(declare-fun e!4331865 () Int)

(assert (=> d!2244535 (= lt!2571945 e!4331865)))

(declare-fun c!1340556 () Bool)

(assert (=> d!2244535 (= c!1340556 (is-Cons!69813 (t!383968 zl!166)))))

(assert (=> d!2244535 (= (zipperDepth!429 (t!383968 zl!166)) lt!2571945)))

(assert (=> b!7226454 (= e!4331865 lt!2571946)))

(declare-fun maxBigInt!0 (Int Int) Int)

(assert (=> b!7226454 (= lt!2571946 (maxBigInt!0 (contextDepth!320 (h!76261 (t!383968 zl!166))) (zipperDepth!429 (t!383968 (t!383968 zl!166)))))))

(declare-fun lambda!438436 () Int)

(declare-datatypes ((Unit!163429 0))(
  ( (Unit!163430) )
))
(declare-fun lt!2571944 () Unit!163429)

(declare-fun lemmaForallContextDepthBiggerThanTransitive!298 (List!69937 Int Int Int) Unit!163429)

(assert (=> b!7226454 (= lt!2571944 (lemmaForallContextDepthBiggerThanTransitive!298 (t!383968 (t!383968 zl!166)) lt!2571946 (zipperDepth!429 (t!383968 (t!383968 zl!166))) lambda!438436))))

(declare-fun forall!17229 (List!69937 Int) Bool)

(assert (=> b!7226454 (forall!17229 (t!383968 (t!383968 zl!166)) lambda!438437)))

(declare-fun lt!2571943 () Unit!163429)

(assert (=> b!7226454 (= lt!2571943 lt!2571944)))

(declare-fun b!7226455 () Bool)

(assert (=> b!7226455 (= e!4331865 0)))

(assert (=> b!7226456 (= e!4331864 (forall!17229 (t!383968 zl!166) lambda!438438))))

(assert (= (and d!2244535 c!1340556) b!7226454))

(assert (= (and d!2244535 (not c!1340556)) b!7226455))

(assert (= (and d!2244535 res!2932247) b!7226456))

(declare-fun m!7895836 () Bool)

(assert (=> b!7226454 m!7895836))

(declare-fun m!7895838 () Bool)

(assert (=> b!7226454 m!7895838))

(assert (=> b!7226454 m!7895838))

(assert (=> b!7226454 m!7895836))

(declare-fun m!7895840 () Bool)

(assert (=> b!7226454 m!7895840))

(declare-fun m!7895842 () Bool)

(assert (=> b!7226454 m!7895842))

(assert (=> b!7226454 m!7895836))

(declare-fun m!7895844 () Bool)

(assert (=> b!7226454 m!7895844))

(declare-fun m!7895846 () Bool)

(assert (=> b!7226456 m!7895846))

(assert (=> b!7226416 d!2244535))

(declare-fun b!7226465 () Bool)

(assert (=> b!7226465 true))

(declare-fun bs!1901953 () Bool)

(declare-fun b!7226467 () Bool)

(assert (= bs!1901953 (and b!7226467 b!7226465)))

(declare-fun lambda!438443 () Int)

(declare-fun lt!2571957 () Int)

(declare-fun lt!2571955 () Int)

(declare-fun lambda!438444 () Int)

(assert (=> bs!1901953 (= (= lt!2571957 lt!2571955) (= lambda!438444 lambda!438443))))

(assert (=> b!7226467 true))

(declare-fun d!2244541 () Bool)

(declare-fun e!4331870 () Bool)

(assert (=> d!2244541 e!4331870))

(declare-fun res!2932250 () Bool)

(assert (=> d!2244541 (=> (not res!2932250) (not e!4331870))))

(assert (=> d!2244541 (= res!2932250 (>= lt!2571957 0))))

(declare-fun e!4331871 () Int)

(assert (=> d!2244541 (= lt!2571957 e!4331871)))

(declare-fun c!1340560 () Bool)

(assert (=> d!2244541 (= c!1340560 (is-Cons!69812 (exprs!7860 (h!76261 zl!166))))))

(assert (=> d!2244541 (= (contextDepth!320 (h!76261 zl!166)) lt!2571957)))

(assert (=> b!7226465 (= e!4331871 lt!2571955)))

(declare-fun regexDepth!402 (Regex!18408) Int)

(assert (=> b!7226465 (= lt!2571955 (maxBigInt!0 (regexDepth!402 (h!76260 (exprs!7860 (h!76261 zl!166)))) (contextDepth!320 (Context!14721 (t!383967 (exprs!7860 (h!76261 zl!166)))))))))

(declare-fun lt!2571958 () Unit!163429)

(declare-fun lemmaForallRegexDepthBiggerThanTransitive!144 (List!69936 Int Int) Unit!163429)

(assert (=> b!7226465 (= lt!2571958 (lemmaForallRegexDepthBiggerThanTransitive!144 (t!383967 (exprs!7860 (h!76261 zl!166))) lt!2571955 (contextDepth!320 (Context!14721 (t!383967 (exprs!7860 (h!76261 zl!166)))))))))

(declare-fun forall!17230 (List!69936 Int) Bool)

(assert (=> b!7226465 (forall!17230 (t!383967 (exprs!7860 (h!76261 zl!166))) lambda!438443)))

(declare-fun lt!2571956 () Unit!163429)

(assert (=> b!7226465 (= lt!2571956 lt!2571958)))

(declare-fun b!7226466 () Bool)

(assert (=> b!7226466 (= e!4331871 0)))

(assert (=> b!7226467 (= e!4331870 (forall!17230 (exprs!7860 (h!76261 zl!166)) lambda!438444))))

(assert (= (and d!2244541 c!1340560) b!7226465))

(assert (= (and d!2244541 (not c!1340560)) b!7226466))

(assert (= (and d!2244541 res!2932250) b!7226467))

(declare-fun m!7895848 () Bool)

(assert (=> b!7226465 m!7895848))

(declare-fun m!7895850 () Bool)

(assert (=> b!7226465 m!7895850))

(assert (=> b!7226465 m!7895850))

(declare-fun m!7895852 () Bool)

(assert (=> b!7226465 m!7895852))

(assert (=> b!7226465 m!7895848))

(assert (=> b!7226465 m!7895850))

(declare-fun m!7895854 () Bool)

(assert (=> b!7226465 m!7895854))

(declare-fun m!7895856 () Bool)

(assert (=> b!7226465 m!7895856))

(declare-fun m!7895858 () Bool)

(assert (=> b!7226467 m!7895858))

(assert (=> b!7226416 d!2244541))

(declare-fun bs!1901954 () Bool)

(declare-fun d!2244543 () Bool)

(assert (= bs!1901954 (and d!2244543 b!7226465)))

(declare-fun lambda!438447 () Int)

(assert (=> bs!1901954 (not (= lambda!438447 lambda!438443))))

(declare-fun bs!1901955 () Bool)

(assert (= bs!1901955 (and d!2244543 b!7226467)))

(assert (=> bs!1901955 (not (= lambda!438447 lambda!438444))))

(assert (=> d!2244543 (= (inv!89043 (h!76261 zl!166)) (forall!17230 (exprs!7860 (h!76261 zl!166)) lambda!438447))))

(declare-fun bs!1901956 () Bool)

(assert (= bs!1901956 d!2244543))

(declare-fun m!7895860 () Bool)

(assert (=> bs!1901956 m!7895860))

(assert (=> b!7226417 d!2244543))

(declare-fun b!7226477 () Bool)

(declare-fun e!4331877 () Bool)

(declare-fun tp!2032303 () Bool)

(assert (=> b!7226477 (= e!4331877 tp!2032303)))

(declare-fun tp!2032304 () Bool)

(declare-fun b!7226476 () Bool)

(declare-fun e!4331876 () Bool)

(assert (=> b!7226476 (= e!4331876 (and (inv!89043 (h!76261 (t!383968 zl!166))) e!4331877 tp!2032304))))

(assert (=> b!7226417 (= tp!2032291 e!4331876)))

(assert (= b!7226476 b!7226477))

(assert (= (and b!7226417 (is-Cons!69813 (t!383968 zl!166))) b!7226476))

(declare-fun m!7895862 () Bool)

(assert (=> b!7226476 m!7895862))

(declare-fun b!7226482 () Bool)

(declare-fun e!4331880 () Bool)

(declare-fun tp!2032309 () Bool)

(declare-fun tp!2032310 () Bool)

(assert (=> b!7226482 (= e!4331880 (and tp!2032309 tp!2032310))))

(assert (=> b!7226418 (= tp!2032292 e!4331880)))

(assert (= (and b!7226418 (is-Cons!69812 (exprs!7860 (h!76261 zl!166)))) b!7226482))

(push 1)

(assert (not b!7226454))

(assert (not b!7226482))

(assert (not b!7226439))

(assert (not b!7226467))

(assert (not b!7226456))

(assert (not d!2244543))

(assert (not b!7226465))

(assert (not b!7226476))

(assert (not b!7226477))

(assert (not b!7226437))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

