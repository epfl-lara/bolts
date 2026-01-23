; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!700774 () Bool)

(assert start!700774)

(declare-fun b!7226720 () Bool)

(assert (=> b!7226720 true))

(declare-fun res!2932316 () Bool)

(declare-fun e!4332049 () Bool)

(assert (=> start!700774 (=> (not res!2932316) (not e!4332049))))

(declare-datatypes ((C!37102 0))(
  ( (C!37103 (val!28499 Int)) )
))
(declare-datatypes ((Regex!18414 0))(
  ( (ElementMatch!18414 (c!1340632 C!37102)) (Concat!27259 (regOne!37340 Regex!18414) (regTwo!37340 Regex!18414)) (EmptyExpr!18414) (Star!18414 (reg!18743 Regex!18414)) (EmptyLang!18414) (Union!18414 (regOne!37341 Regex!18414) (regTwo!37341 Regex!18414)) )
))
(declare-datatypes ((List!69948 0))(
  ( (Nil!69824) (Cons!69824 (h!76272 Regex!18414) (t!383979 List!69948)) )
))
(declare-datatypes ((Context!14732 0))(
  ( (Context!14733 (exprs!7866 List!69948)) )
))
(declare-datatypes ((List!69949 0))(
  ( (Nil!69825) (Cons!69825 (h!76273 Context!14732) (t!383980 List!69949)) )
))
(declare-fun zl!166 () List!69949)

(assert (=> start!700774 (= res!2932316 (is-Cons!69825 zl!166))))

(assert (=> start!700774 e!4332049))

(declare-fun e!4332046 () Bool)

(assert (=> start!700774 e!4332046))

(declare-fun b!7226721 () Bool)

(declare-fun e!4332048 () Bool)

(declare-fun lambda!438551 () Int)

(declare-fun forall!17239 (List!69949 Int) Bool)

(assert (=> b!7226721 (= e!4332048 (forall!17239 zl!166 lambda!438551))))

(declare-fun b!7226723 () Bool)

(declare-fun e!4332047 () Bool)

(declare-fun tp!2032400 () Bool)

(assert (=> b!7226723 (= e!4332047 tp!2032400)))

(assert (=> b!7226720 (= e!4332049 (not e!4332048))))

(declare-fun res!2932315 () Bool)

(assert (=> b!7226720 (=> (not res!2932315) (not e!4332048))))

(declare-fun lt!2572103 () Int)

(assert (=> b!7226720 (= res!2932315 (>= lt!2572103 0))))

(assert (=> b!7226720 (forall!17239 (t!383980 zl!166) lambda!438551)))

(declare-datatypes ((Unit!163437 0))(
  ( (Unit!163438) )
))
(declare-fun lt!2572104 () Unit!163437)

(declare-fun lambda!438550 () Int)

(declare-fun lt!2572105 () Int)

(declare-fun lemmaForallContextDepthBiggerThanTransitive!302 (List!69949 Int Int Int) Unit!163437)

(assert (=> b!7226720 (= lt!2572104 (lemmaForallContextDepthBiggerThanTransitive!302 (t!383980 zl!166) lt!2572103 lt!2572105 lambda!438550))))

(declare-fun lt!2572106 () Int)

(declare-fun maxBigInt!0 (Int Int) Int)

(assert (=> b!7226720 (= lt!2572103 (maxBigInt!0 lt!2572106 lt!2572105))))

(declare-fun zipperDepth!435 (List!69949) Int)

(assert (=> b!7226720 (= lt!2572105 (zipperDepth!435 (t!383980 zl!166)))))

(declare-fun contextDepth!326 (Context!14732) Int)

(assert (=> b!7226720 (= lt!2572106 (contextDepth!326 (h!76273 zl!166)))))

(declare-fun tp!2032399 () Bool)

(declare-fun b!7226722 () Bool)

(declare-fun inv!89058 (Context!14732) Bool)

(assert (=> b!7226722 (= e!4332046 (and (inv!89058 (h!76273 zl!166)) e!4332047 tp!2032399))))

(assert (= (and start!700774 res!2932316) b!7226720))

(assert (= (and b!7226720 res!2932315) b!7226721))

(assert (= b!7226722 b!7226723))

(assert (= (and start!700774 (is-Cons!69825 zl!166)) b!7226722))

(declare-fun m!7896034 () Bool)

(assert (=> b!7226721 m!7896034))

(declare-fun m!7896036 () Bool)

(assert (=> b!7226720 m!7896036))

(declare-fun m!7896038 () Bool)

(assert (=> b!7226720 m!7896038))

(declare-fun m!7896040 () Bool)

(assert (=> b!7226720 m!7896040))

(declare-fun m!7896042 () Bool)

(assert (=> b!7226720 m!7896042))

(declare-fun m!7896044 () Bool)

(assert (=> b!7226720 m!7896044))

(declare-fun m!7896046 () Bool)

(assert (=> b!7226722 m!7896046))

(push 1)

(assert (not b!7226720))

(assert (not b!7226721))

(assert (not b!7226722))

(assert (not b!7226723))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!2244592 () Bool)

(assert (=> d!2244592 (= (maxBigInt!0 lt!2572106 lt!2572105) (ite (>= lt!2572106 lt!2572105) lt!2572106 lt!2572105))))

(assert (=> b!7226720 d!2244592))

(declare-fun d!2244594 () Bool)

(declare-fun res!2932327 () Bool)

(declare-fun e!4332066 () Bool)

(assert (=> d!2244594 (=> res!2932327 e!4332066)))

(assert (=> d!2244594 (= res!2932327 (is-Nil!69825 (t!383980 zl!166)))))

(assert (=> d!2244594 (= (forall!17239 (t!383980 zl!166) lambda!438551) e!4332066)))

(declare-fun b!7226745 () Bool)

(declare-fun e!4332067 () Bool)

(assert (=> b!7226745 (= e!4332066 e!4332067)))

(declare-fun res!2932328 () Bool)

(assert (=> b!7226745 (=> (not res!2932328) (not e!4332067))))

(declare-fun dynLambda!28433 (Int Context!14732) Bool)

(assert (=> b!7226745 (= res!2932328 (dynLambda!28433 lambda!438551 (h!76273 (t!383980 zl!166))))))

(declare-fun b!7226746 () Bool)

(assert (=> b!7226746 (= e!4332067 (forall!17239 (t!383980 (t!383980 zl!166)) lambda!438551))))

(assert (= (and d!2244594 (not res!2932327)) b!7226745))

(assert (= (and b!7226745 res!2932328) b!7226746))

(declare-fun b_lambda!276679 () Bool)

(assert (=> (not b_lambda!276679) (not b!7226745)))

(declare-fun m!7896062 () Bool)

(assert (=> b!7226745 m!7896062))

(declare-fun m!7896064 () Bool)

(assert (=> b!7226746 m!7896064))

(assert (=> b!7226720 d!2244594))

(declare-fun bs!1901994 () Bool)

(declare-fun d!2244596 () Bool)

(assert (= bs!1901994 (and d!2244596 b!7226720)))

(declare-fun lambda!438562 () Int)

(assert (=> bs!1901994 (not (= lambda!438562 lambda!438551))))

(assert (=> d!2244596 true))

(assert (=> d!2244596 true))

(declare-fun order!28757 () Int)

(declare-fun order!28755 () Int)

(declare-fun dynLambda!28434 (Int Int) Int)

(declare-fun dynLambda!28435 (Int Int) Int)

(assert (=> d!2244596 (< (dynLambda!28434 order!28755 lambda!438550) (dynLambda!28435 order!28757 lambda!438562))))

(assert (=> d!2244596 (forall!17239 (t!383980 zl!166) lambda!438562)))

(declare-fun lt!2572121 () Unit!163437)

(declare-fun choose!55462 (List!69949 Int Int Int) Unit!163437)

(assert (=> d!2244596 (= lt!2572121 (choose!55462 (t!383980 zl!166) lt!2572103 lt!2572105 lambda!438550))))

(assert (=> d!2244596 (>= lt!2572103 lt!2572105)))

(assert (=> d!2244596 (= (lemmaForallContextDepthBiggerThanTransitive!302 (t!383980 zl!166) lt!2572103 lt!2572105 lambda!438550) lt!2572121)))

(declare-fun bs!1901995 () Bool)

(assert (= bs!1901995 d!2244596))

(declare-fun m!7896066 () Bool)

(assert (=> bs!1901995 m!7896066))

(declare-fun m!7896068 () Bool)

(assert (=> bs!1901995 m!7896068))

(assert (=> b!7226720 d!2244596))

(declare-fun bs!1901996 () Bool)

(declare-fun b!7226758 () Bool)

(assert (= bs!1901996 (and b!7226758 b!7226720)))

(declare-fun lambda!438571 () Int)

(assert (=> bs!1901996 (= lambda!438571 lambda!438550)))

(declare-fun lambda!438572 () Int)

(declare-fun lt!2572134 () Int)

(assert (=> bs!1901996 (= (= lt!2572134 lt!2572103) (= lambda!438572 lambda!438551))))

(declare-fun bs!1901997 () Bool)

(assert (= bs!1901997 (and b!7226758 d!2244596)))

(assert (=> bs!1901997 (not (= lambda!438572 lambda!438562))))

(assert (=> b!7226758 true))

(declare-fun bs!1901998 () Bool)

(declare-fun b!7226760 () Bool)

(assert (= bs!1901998 (and b!7226760 b!7226720)))

(declare-fun lt!2572133 () Int)

(declare-fun lambda!438573 () Int)

(assert (=> bs!1901998 (= (= lt!2572133 lt!2572103) (= lambda!438573 lambda!438551))))

(declare-fun bs!1901999 () Bool)

(assert (= bs!1901999 (and b!7226760 d!2244596)))

(assert (=> bs!1901999 (not (= lambda!438573 lambda!438562))))

(declare-fun bs!1902000 () Bool)

(assert (= bs!1902000 (and b!7226760 b!7226758)))

(assert (=> bs!1902000 (= (= lt!2572133 lt!2572134) (= lambda!438573 lambda!438572))))

(assert (=> b!7226760 true))

(declare-fun d!2244598 () Bool)

(declare-fun e!4332073 () Bool)

(assert (=> d!2244598 e!4332073))

(declare-fun res!2932331 () Bool)

(assert (=> d!2244598 (=> (not res!2932331) (not e!4332073))))

(assert (=> d!2244598 (= res!2932331 (>= lt!2572133 0))))

(declare-fun e!4332072 () Int)

(assert (=> d!2244598 (= lt!2572133 e!4332072)))

(declare-fun c!1340652 () Bool)

(assert (=> d!2244598 (= c!1340652 (is-Cons!69825 (t!383980 zl!166)))))

(assert (=> d!2244598 (= (zipperDepth!435 (t!383980 zl!166)) lt!2572133)))

(assert (=> b!7226758 (= e!4332072 lt!2572134)))

(assert (=> b!7226758 (= lt!2572134 (maxBigInt!0 (contextDepth!326 (h!76273 (t!383980 zl!166))) (zipperDepth!435 (t!383980 (t!383980 zl!166)))))))

(declare-fun lt!2572135 () Unit!163437)

(assert (=> b!7226758 (= lt!2572135 (lemmaForallContextDepthBiggerThanTransitive!302 (t!383980 (t!383980 zl!166)) lt!2572134 (zipperDepth!435 (t!383980 (t!383980 zl!166))) lambda!438571))))

(assert (=> b!7226758 (forall!17239 (t!383980 (t!383980 zl!166)) lambda!438572)))

(declare-fun lt!2572132 () Unit!163437)

(assert (=> b!7226758 (= lt!2572132 lt!2572135)))

(declare-fun b!7226759 () Bool)

(assert (=> b!7226759 (= e!4332072 0)))

(assert (=> b!7226760 (= e!4332073 (forall!17239 (t!383980 zl!166) lambda!438573))))

(assert (= (and d!2244598 c!1340652) b!7226758))

(assert (= (and d!2244598 (not c!1340652)) b!7226759))

(assert (= (and d!2244598 res!2932331) b!7226760))

(declare-fun m!7896070 () Bool)

(assert (=> b!7226758 m!7896070))

(assert (=> b!7226758 m!7896070))

(declare-fun m!7896072 () Bool)

(assert (=> b!7226758 m!7896072))

(declare-fun m!7896074 () Bool)

(assert (=> b!7226758 m!7896074))

(assert (=> b!7226758 m!7896072))

(declare-fun m!7896076 () Bool)

(assert (=> b!7226758 m!7896076))

(assert (=> b!7226758 m!7896072))

(declare-fun m!7896078 () Bool)

(assert (=> b!7226758 m!7896078))

(declare-fun m!7896080 () Bool)

(assert (=> b!7226760 m!7896080))

(assert (=> b!7226720 d!2244598))

(declare-fun b!7226775 () Bool)

(assert (=> b!7226775 true))

(declare-fun bs!1902003 () Bool)

(declare-fun b!7226777 () Bool)

(assert (= bs!1902003 (and b!7226777 b!7226775)))

(declare-fun lambda!438580 () Int)

(declare-fun lt!2572148 () Int)

(declare-fun lambda!438579 () Int)

(declare-fun lt!2572146 () Int)

(assert (=> bs!1902003 (= (= lt!2572148 lt!2572146) (= lambda!438580 lambda!438579))))

(assert (=> b!7226777 true))

(declare-fun d!2244604 () Bool)

(declare-fun e!4332084 () Bool)

(assert (=> d!2244604 e!4332084))

(declare-fun res!2932340 () Bool)

(assert (=> d!2244604 (=> (not res!2932340) (not e!4332084))))

(assert (=> d!2244604 (= res!2932340 (>= lt!2572148 0))))

(declare-fun e!4332085 () Int)

(assert (=> d!2244604 (= lt!2572148 e!4332085)))

(declare-fun c!1340656 () Bool)

(assert (=> d!2244604 (= c!1340656 (is-Cons!69824 (exprs!7866 (h!76273 zl!166))))))

(assert (=> d!2244604 (= (contextDepth!326 (h!76273 zl!166)) lt!2572148)))

(assert (=> b!7226775 (= e!4332085 lt!2572146)))

(declare-fun regexDepth!406 (Regex!18414) Int)

(assert (=> b!7226775 (= lt!2572146 (maxBigInt!0 (regexDepth!406 (h!76272 (exprs!7866 (h!76273 zl!166)))) (contextDepth!326 (Context!14733 (t!383979 (exprs!7866 (h!76273 zl!166)))))))))

(declare-fun lt!2572145 () Unit!163437)

(declare-fun lemmaForallRegexDepthBiggerThanTransitive!148 (List!69948 Int Int) Unit!163437)

(assert (=> b!7226775 (= lt!2572145 (lemmaForallRegexDepthBiggerThanTransitive!148 (t!383979 (exprs!7866 (h!76273 zl!166))) lt!2572146 (contextDepth!326 (Context!14733 (t!383979 (exprs!7866 (h!76273 zl!166)))))))))

(declare-fun forall!17241 (List!69948 Int) Bool)

(assert (=> b!7226775 (forall!17241 (t!383979 (exprs!7866 (h!76273 zl!166))) lambda!438579)))

(declare-fun lt!2572147 () Unit!163437)

(assert (=> b!7226775 (= lt!2572147 lt!2572145)))

(declare-fun b!7226776 () Bool)

(assert (=> b!7226776 (= e!4332085 0)))

(assert (=> b!7226777 (= e!4332084 (forall!17241 (exprs!7866 (h!76273 zl!166)) lambda!438580))))

(assert (= (and d!2244604 c!1340656) b!7226775))

(assert (= (and d!2244604 (not c!1340656)) b!7226776))

(assert (= (and d!2244604 res!2932340) b!7226777))

(declare-fun m!7896090 () Bool)

(assert (=> b!7226775 m!7896090))

(declare-fun m!7896092 () Bool)

(assert (=> b!7226775 m!7896092))

(declare-fun m!7896094 () Bool)

(assert (=> b!7226775 m!7896094))

(declare-fun m!7896096 () Bool)

(assert (=> b!7226775 m!7896096))

(assert (=> b!7226775 m!7896092))

(assert (=> b!7226775 m!7896090))

(assert (=> b!7226775 m!7896092))

(declare-fun m!7896098 () Bool)

(assert (=> b!7226775 m!7896098))

(declare-fun m!7896100 () Bool)

(assert (=> b!7226777 m!7896100))

(assert (=> b!7226720 d!2244604))

(declare-fun d!2244610 () Bool)

(declare-fun res!2932341 () Bool)

(declare-fun e!4332086 () Bool)

(assert (=> d!2244610 (=> res!2932341 e!4332086)))

(assert (=> d!2244610 (= res!2932341 (is-Nil!69825 zl!166))))

(assert (=> d!2244610 (= (forall!17239 zl!166 lambda!438551) e!4332086)))

(declare-fun b!7226780 () Bool)

(declare-fun e!4332087 () Bool)

(assert (=> b!7226780 (= e!4332086 e!4332087)))

(declare-fun res!2932342 () Bool)

(assert (=> b!7226780 (=> (not res!2932342) (not e!4332087))))

(assert (=> b!7226780 (= res!2932342 (dynLambda!28433 lambda!438551 (h!76273 zl!166)))))

(declare-fun b!7226781 () Bool)

(assert (=> b!7226781 (= e!4332087 (forall!17239 (t!383980 zl!166) lambda!438551))))

(assert (= (and d!2244610 (not res!2932341)) b!7226780))

(assert (= (and b!7226780 res!2932342) b!7226781))

(declare-fun b_lambda!276683 () Bool)

(assert (=> (not b_lambda!276683) (not b!7226780)))

(declare-fun m!7896102 () Bool)

(assert (=> b!7226780 m!7896102))

(assert (=> b!7226781 m!7896038))

(assert (=> b!7226721 d!2244610))

(declare-fun bs!1902004 () Bool)

(declare-fun d!2244612 () Bool)

(assert (= bs!1902004 (and d!2244612 b!7226775)))

(declare-fun lambda!438583 () Int)

(assert (=> bs!1902004 (not (= lambda!438583 lambda!438579))))

(declare-fun bs!1902005 () Bool)

(assert (= bs!1902005 (and d!2244612 b!7226777)))

(assert (=> bs!1902005 (not (= lambda!438583 lambda!438580))))

(assert (=> d!2244612 (= (inv!89058 (h!76273 zl!166)) (forall!17241 (exprs!7866 (h!76273 zl!166)) lambda!438583))))

(declare-fun bs!1902006 () Bool)

(assert (= bs!1902006 d!2244612))

(declare-fun m!7896104 () Bool)

(assert (=> bs!1902006 m!7896104))

(assert (=> b!7226722 d!2244612))

(declare-fun b!7226789 () Bool)

(declare-fun e!4332093 () Bool)

(declare-fun tp!2032411 () Bool)

(assert (=> b!7226789 (= e!4332093 tp!2032411)))

(declare-fun e!4332092 () Bool)

(declare-fun b!7226788 () Bool)

(declare-fun tp!2032412 () Bool)

(assert (=> b!7226788 (= e!4332092 (and (inv!89058 (h!76273 (t!383980 zl!166))) e!4332093 tp!2032412))))

(assert (=> b!7226722 (= tp!2032399 e!4332092)))

(assert (= b!7226788 b!7226789))

(assert (= (and b!7226722 (is-Cons!69825 (t!383980 zl!166))) b!7226788))

(declare-fun m!7896106 () Bool)

(assert (=> b!7226788 m!7896106))

(declare-fun b!7226796 () Bool)

(declare-fun e!4332096 () Bool)

(declare-fun tp!2032417 () Bool)

(declare-fun tp!2032418 () Bool)

(assert (=> b!7226796 (= e!4332096 (and tp!2032417 tp!2032418))))

(assert (=> b!7226723 (= tp!2032400 e!4332096)))

(assert (= (and b!7226723 (is-Cons!69824 (exprs!7866 (h!76273 zl!166)))) b!7226796))

(declare-fun b_lambda!276685 () Bool)

(assert (= b_lambda!276679 (or b!7226720 b_lambda!276685)))

(declare-fun bs!1902007 () Bool)

(declare-fun d!2244614 () Bool)

(assert (= bs!1902007 (and d!2244614 b!7226720)))

(assert (=> bs!1902007 (= (dynLambda!28433 lambda!438551 (h!76273 (t!383980 zl!166))) (>= lt!2572103 (contextDepth!326 (h!76273 (t!383980 zl!166)))))))

(assert (=> bs!1902007 m!7896070))

(assert (=> b!7226745 d!2244614))

(declare-fun b_lambda!276687 () Bool)

(assert (= b_lambda!276683 (or b!7226720 b_lambda!276687)))

(declare-fun bs!1902008 () Bool)

(declare-fun d!2244616 () Bool)

(assert (= bs!1902008 (and d!2244616 b!7226720)))

(assert (=> bs!1902008 (= (dynLambda!28433 lambda!438551 (h!76273 zl!166)) (>= lt!2572103 (contextDepth!326 (h!76273 zl!166))))))

(assert (=> bs!1902008 m!7896044))

(assert (=> b!7226780 d!2244616))

(push 1)

(assert (not d!2244596))

(assert (not b!7226775))

(assert (not b!7226789))

(assert (not b!7226781))

(assert (not bs!1902008))

(assert (not b_lambda!276685))

(assert (not d!2244612))

(assert (not b!7226777))

(assert (not b!7226746))

(assert (not b_lambda!276687))

(assert (not b!7226760))

(assert (not bs!1902007))

(assert (not b!7226796))

(assert (not b!7226788))

(assert (not b!7226758))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

