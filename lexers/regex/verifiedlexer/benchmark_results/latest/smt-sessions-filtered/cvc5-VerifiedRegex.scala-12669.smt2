; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!701016 () Bool)

(assert start!701016)

(declare-fun b!7228628 () Bool)

(assert (=> b!7228628 true))

(declare-fun res!2932832 () Bool)

(declare-fun e!4333223 () Bool)

(assert (=> b!7228628 (=> (not res!2932832) (not e!4333223))))

(declare-datatypes ((C!37166 0))(
  ( (C!37167 (val!28531 Int)) )
))
(declare-datatypes ((Regex!18446 0))(
  ( (ElementMatch!18446 (c!1341159 C!37166)) (Concat!27291 (regOne!37404 Regex!18446) (regTwo!37404 Regex!18446)) (EmptyExpr!18446) (Star!18446 (reg!18775 Regex!18446)) (EmptyLang!18446) (Union!18446 (regOne!37405 Regex!18446) (regTwo!37405 Regex!18446)) )
))
(declare-datatypes ((List!69984 0))(
  ( (Nil!69860) (Cons!69860 (h!76308 Regex!18446) (t!384015 List!69984)) )
))
(declare-fun l!7017 () List!69984)

(declare-fun lambda!438798 () Int)

(declare-fun forall!17269 (List!69984 Int) Bool)

(assert (=> b!7228628 (= res!2932832 (forall!17269 l!7017 lambda!438798))))

(declare-fun b!7228629 () Bool)

(declare-fun res!2932833 () Bool)

(assert (=> b!7228629 (=> (not res!2932833) (not e!4333223))))

(assert (=> b!7228629 (= res!2932833 (not (is-Nil!69860 l!7017)))))

(declare-fun b!7228630 () Bool)

(declare-fun ListPrimitiveSize!417 (List!69984) Int)

(assert (=> b!7228630 (= e!4333223 (>= (ListPrimitiveSize!417 (t!384015 l!7017)) (ListPrimitiveSize!417 l!7017)))))

(declare-fun res!2932831 () Bool)

(assert (=> start!701016 (=> (not res!2932831) (not e!4333223))))

(declare-fun a!1071 () Int)

(declare-fun b!25551 () Int)

(assert (=> start!701016 (= res!2932831 (>= a!1071 b!25551))))

(assert (=> start!701016 e!4333223))

(assert (=> start!701016 true))

(declare-fun e!4333222 () Bool)

(assert (=> start!701016 e!4333222))

(declare-fun b!7228631 () Bool)

(declare-fun tp!2032870 () Bool)

(declare-fun tp!2032869 () Bool)

(assert (=> b!7228631 (= e!4333222 (and tp!2032870 tp!2032869))))

(assert (= (and start!701016 res!2932831) b!7228628))

(assert (= (and b!7228628 res!2932832) b!7228629))

(assert (= (and b!7228629 res!2932833) b!7228630))

(assert (= (and start!701016 (is-Cons!69860 l!7017)) b!7228631))

(declare-fun m!7897022 () Bool)

(assert (=> b!7228628 m!7897022))

(declare-fun m!7897024 () Bool)

(assert (=> b!7228630 m!7897024))

(declare-fun m!7897026 () Bool)

(assert (=> b!7228630 m!7897026))

(push 1)

(assert (not b!7228630))

(assert (not b!7228628))

(assert (not b!7228631))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!2244946 () Bool)

(declare-fun lt!2572492 () Int)

(assert (=> d!2244946 (>= lt!2572492 0)))

(declare-fun e!4333232 () Int)

(assert (=> d!2244946 (= lt!2572492 e!4333232)))

(declare-fun c!1341163 () Bool)

(assert (=> d!2244946 (= c!1341163 (is-Nil!69860 (t!384015 l!7017)))))

(assert (=> d!2244946 (= (ListPrimitiveSize!417 (t!384015 l!7017)) lt!2572492)))

(declare-fun b!7228652 () Bool)

(assert (=> b!7228652 (= e!4333232 0)))

(declare-fun b!7228653 () Bool)

(assert (=> b!7228653 (= e!4333232 (+ 1 (ListPrimitiveSize!417 (t!384015 (t!384015 l!7017)))))))

(assert (= (and d!2244946 c!1341163) b!7228652))

(assert (= (and d!2244946 (not c!1341163)) b!7228653))

(declare-fun m!7897034 () Bool)

(assert (=> b!7228653 m!7897034))

(assert (=> b!7228630 d!2244946))

(declare-fun d!2244948 () Bool)

(declare-fun lt!2572493 () Int)

(assert (=> d!2244948 (>= lt!2572493 0)))

(declare-fun e!4333233 () Int)

(assert (=> d!2244948 (= lt!2572493 e!4333233)))

(declare-fun c!1341164 () Bool)

(assert (=> d!2244948 (= c!1341164 (is-Nil!69860 l!7017))))

(assert (=> d!2244948 (= (ListPrimitiveSize!417 l!7017) lt!2572493)))

(declare-fun b!7228654 () Bool)

(assert (=> b!7228654 (= e!4333233 0)))

(declare-fun b!7228655 () Bool)

(assert (=> b!7228655 (= e!4333233 (+ 1 (ListPrimitiveSize!417 (t!384015 l!7017))))))

(assert (= (and d!2244948 c!1341164) b!7228654))

(assert (= (and d!2244948 (not c!1341164)) b!7228655))

(assert (=> b!7228655 m!7897024))

(assert (=> b!7228630 d!2244948))

(declare-fun d!2244950 () Bool)

(declare-fun res!2932847 () Bool)

(declare-fun e!4333238 () Bool)

(assert (=> d!2244950 (=> res!2932847 e!4333238)))

(assert (=> d!2244950 (= res!2932847 (is-Nil!69860 l!7017))))

(assert (=> d!2244950 (= (forall!17269 l!7017 lambda!438798) e!4333238)))

(declare-fun b!7228660 () Bool)

(declare-fun e!4333239 () Bool)

(assert (=> b!7228660 (= e!4333238 e!4333239)))

(declare-fun res!2932848 () Bool)

(assert (=> b!7228660 (=> (not res!2932848) (not e!4333239))))

(declare-fun dynLambda!28453 (Int Regex!18446) Bool)

(assert (=> b!7228660 (= res!2932848 (dynLambda!28453 lambda!438798 (h!76308 l!7017)))))

(declare-fun b!7228661 () Bool)

(assert (=> b!7228661 (= e!4333239 (forall!17269 (t!384015 l!7017) lambda!438798))))

(assert (= (and d!2244950 (not res!2932847)) b!7228660))

(assert (= (and b!7228660 res!2932848) b!7228661))

(declare-fun b_lambda!276823 () Bool)

(assert (=> (not b_lambda!276823) (not b!7228660)))

(declare-fun m!7897036 () Bool)

(assert (=> b!7228660 m!7897036))

(declare-fun m!7897038 () Bool)

(assert (=> b!7228661 m!7897038))

(assert (=> b!7228628 d!2244950))

(declare-fun b!7228672 () Bool)

(declare-fun e!4333242 () Bool)

(declare-fun tp_is_empty!46381 () Bool)

(assert (=> b!7228672 (= e!4333242 tp_is_empty!46381)))

(declare-fun b!7228675 () Bool)

(declare-fun tp!2032891 () Bool)

(declare-fun tp!2032890 () Bool)

(assert (=> b!7228675 (= e!4333242 (and tp!2032891 tp!2032890))))

(declare-fun b!7228673 () Bool)

(declare-fun tp!2032889 () Bool)

(declare-fun tp!2032888 () Bool)

(assert (=> b!7228673 (= e!4333242 (and tp!2032889 tp!2032888))))

(declare-fun b!7228674 () Bool)

(declare-fun tp!2032887 () Bool)

(assert (=> b!7228674 (= e!4333242 tp!2032887)))

(assert (=> b!7228631 (= tp!2032870 e!4333242)))

(assert (= (and b!7228631 (is-ElementMatch!18446 (h!76308 l!7017))) b!7228672))

(assert (= (and b!7228631 (is-Concat!27291 (h!76308 l!7017))) b!7228673))

(assert (= (and b!7228631 (is-Star!18446 (h!76308 l!7017))) b!7228674))

(assert (= (and b!7228631 (is-Union!18446 (h!76308 l!7017))) b!7228675))

(declare-fun b!7228680 () Bool)

(declare-fun e!4333245 () Bool)

(declare-fun tp!2032896 () Bool)

(declare-fun tp!2032897 () Bool)

(assert (=> b!7228680 (= e!4333245 (and tp!2032896 tp!2032897))))

(assert (=> b!7228631 (= tp!2032869 e!4333245)))

(assert (= (and b!7228631 (is-Cons!69860 (t!384015 l!7017))) b!7228680))

(declare-fun b_lambda!276825 () Bool)

(assert (= b_lambda!276823 (or b!7228628 b_lambda!276825)))

(declare-fun bs!1902197 () Bool)

(declare-fun d!2244954 () Bool)

(assert (= bs!1902197 (and d!2244954 b!7228628)))

(declare-fun regexDepth!430 (Regex!18446) Int)

(assert (=> bs!1902197 (= (dynLambda!28453 lambda!438798 (h!76308 l!7017)) (>= b!25551 (regexDepth!430 (h!76308 l!7017))))))

(declare-fun m!7897040 () Bool)

(assert (=> bs!1902197 m!7897040))

(assert (=> b!7228660 d!2244954))

(push 1)

(assert (not b!7228674))

(assert (not b!7228680))

(assert (not b!7228655))

(assert (not b!7228653))

(assert (not b!7228675))

(assert (not bs!1902197))

(assert tp_is_empty!46381)

(assert (not b_lambda!276825))

(assert (not b!7228673))

(assert (not b!7228661))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

