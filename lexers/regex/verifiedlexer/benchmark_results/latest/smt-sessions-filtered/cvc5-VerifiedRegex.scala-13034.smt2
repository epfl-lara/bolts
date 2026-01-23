; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!714452 () Bool)

(assert start!714452)

(declare-fun res!2959647 () Bool)

(declare-fun e!4383952 () Bool)

(assert (=> start!714452 (=> (not res!2959647) (not e!4383952))))

(declare-datatypes ((B!3843 0))(
  ( (B!3844 (val!29453 Int)) )
))
(declare-datatypes ((List!71452 0))(
  ( (Nil!71328) (Cons!71328 (h!77776 B!3843) (t!385835 List!71452)) )
))
(declare-fun l!3673 () List!71452)

(assert (=> start!714452 (= res!2959647 (not (is-Nil!71328 l!3673)))))

(assert (=> start!714452 e!4383952))

(declare-fun e!4383953 () Bool)

(assert (=> start!714452 e!4383953))

(declare-fun b!7321970 () Bool)

(declare-fun size!41893 (List!71452) Int)

(assert (=> b!7321970 (= e!4383952 (>= (size!41893 (t!385835 l!3673)) (size!41893 l!3673)))))

(declare-fun b!7321971 () Bool)

(declare-fun tp_is_empty!48157 () Bool)

(declare-fun tp!2079756 () Bool)

(assert (=> b!7321971 (= e!4383953 (and tp_is_empty!48157 tp!2079756))))

(assert (= (and start!714452 res!2959647) b!7321970))

(assert (= (and start!714452 (is-Cons!71328 l!3673)) b!7321971))

(declare-fun m!7987606 () Bool)

(assert (=> b!7321970 m!7987606))

(declare-fun m!7987608 () Bool)

(assert (=> b!7321970 m!7987608))

(push 1)

(assert (not b!7321970))

(assert (not b!7321971))

(assert tp_is_empty!48157)

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!2273775 () Bool)

(declare-fun lt!2604821 () Int)

(assert (=> d!2273775 (>= lt!2604821 0)))

(declare-fun e!4383962 () Int)

(assert (=> d!2273775 (= lt!2604821 e!4383962)))

(declare-fun c!1358801 () Bool)

(assert (=> d!2273775 (= c!1358801 (is-Nil!71328 (t!385835 l!3673)))))

(assert (=> d!2273775 (= (size!41893 (t!385835 l!3673)) lt!2604821)))

(declare-fun b!7321982 () Bool)

(assert (=> b!7321982 (= e!4383962 0)))

(declare-fun b!7321983 () Bool)

(assert (=> b!7321983 (= e!4383962 (+ 1 (size!41893 (t!385835 (t!385835 l!3673)))))))

(assert (= (and d!2273775 c!1358801) b!7321982))

(assert (= (and d!2273775 (not c!1358801)) b!7321983))

(declare-fun m!7987614 () Bool)

(assert (=> b!7321983 m!7987614))

(assert (=> b!7321970 d!2273775))

(declare-fun d!2273779 () Bool)

(declare-fun lt!2604822 () Int)

(assert (=> d!2273779 (>= lt!2604822 0)))

(declare-fun e!4383963 () Int)

(assert (=> d!2273779 (= lt!2604822 e!4383963)))

(declare-fun c!1358802 () Bool)

(assert (=> d!2273779 (= c!1358802 (is-Nil!71328 l!3673))))

(assert (=> d!2273779 (= (size!41893 l!3673) lt!2604822)))

(declare-fun b!7321984 () Bool)

(assert (=> b!7321984 (= e!4383963 0)))

(declare-fun b!7321985 () Bool)

(assert (=> b!7321985 (= e!4383963 (+ 1 (size!41893 (t!385835 l!3673))))))

(assert (= (and d!2273779 c!1358802) b!7321984))

(assert (= (and d!2273779 (not c!1358802)) b!7321985))

(assert (=> b!7321985 m!7987606))

(assert (=> b!7321970 d!2273779))

(declare-fun b!7321990 () Bool)

(declare-fun e!4383966 () Bool)

(declare-fun tp!2079762 () Bool)

(assert (=> b!7321990 (= e!4383966 (and tp_is_empty!48157 tp!2079762))))

(assert (=> b!7321971 (= tp!2079756 e!4383966)))

(assert (= (and b!7321971 (is-Cons!71328 (t!385835 l!3673))) b!7321990))

(push 1)

(assert (not b!7321983))

(assert (not b!7321985))

(assert (not b!7321990))

(assert tp_is_empty!48157)

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

