; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!216236 () Bool)

(assert start!216236)

(declare-fun res!952822 () Bool)

(declare-fun e!1416835 () Bool)

(assert (=> start!216236 (=> (not res!952822) (not e!1416835))))

(declare-datatypes ((B!1831 0))(
  ( (B!1832 (val!7441 Int)) )
))
(declare-datatypes ((List!26069 0))(
  ( (Nil!25985) (Cons!25985 (h!31386 B!1831) (t!199385 List!26069)) )
))
(declare-fun l!2924 () List!26069)

(declare-fun isEmpty!14863 (List!26069) Bool)

(assert (=> start!216236 (= res!952822 (not (isEmpty!14863 l!2924)))))

(assert (=> start!216236 e!1416835))

(declare-fun e!1416833 () Bool)

(assert (=> start!216236 e!1416833))

(declare-fun b!2218649 () Bool)

(declare-fun e!1416834 () Bool)

(declare-fun tp_is_empty!9879 () Bool)

(declare-fun tp!691164 () Bool)

(assert (=> b!2218649 (= e!1416834 (and tp_is_empty!9879 tp!691164))))

(declare-fun b!2218650 () Bool)

(declare-fun tp!691163 () Bool)

(assert (=> b!2218650 (= e!1416833 (and tp_is_empty!9879 tp!691163))))

(declare-fun b!2218648 () Bool)

(declare-fun err!4141 () List!26069)

(declare-fun ++!6469 (List!26069 List!26069) List!26069)

(declare-fun last!367 (List!26069) B!1831)

(assert (=> b!2218648 (= e!1416835 (not (= (++!6469 err!4141 (Cons!25985 (last!367 l!2924) Nil!25985)) l!2924)))))

(assert (=> b!2218648 true))

(assert (=> b!2218648 e!1416834))

(declare-fun b!2218647 () Bool)

(declare-fun res!952821 () Bool)

(assert (=> b!2218647 (=> (not res!952821) (not e!1416835))))

(assert (=> b!2218647 (= res!952821 (and (or (not (is-Cons!25985 l!2924)) (not (is-Nil!25985 (t!199385 l!2924)))) (not (is-Cons!25985 l!2924))))))

(assert (= (and start!216236 res!952822) b!2218647))

(assert (= (and b!2218647 res!952821) b!2218648))

(assert (= (and b!2218648 (is-Cons!25985 err!4141)) b!2218649))

(assert (= (and start!216236 (is-Cons!25985 l!2924)) b!2218650))

(declare-fun m!2659415 () Bool)

(assert (=> start!216236 m!2659415))

(declare-fun m!2659417 () Bool)

(assert (=> b!2218648 m!2659417))

(declare-fun m!2659419 () Bool)

(assert (=> b!2218648 m!2659419))

(push 1)

(assert (not b!2218650))

(assert (not b!2218649))

(assert tp_is_empty!9879)

(assert (not b!2218648))

(assert (not start!216236))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!663185 () Bool)

(declare-fun e!1416849 () Bool)

(assert (=> d!663185 e!1416849))

(declare-fun res!952834 () Bool)

(assert (=> d!663185 (=> (not res!952834) (not e!1416849))))

(declare-fun lt!827073 () List!26069)

(declare-fun content!3528 (List!26069) (Set B!1831))

(assert (=> d!663185 (= res!952834 (= (content!3528 lt!827073) (set.union (content!3528 err!4141) (content!3528 (Cons!25985 (last!367 l!2924) Nil!25985)))))))

(declare-fun e!1416850 () List!26069)

(assert (=> d!663185 (= lt!827073 e!1416850)))

(declare-fun c!354230 () Bool)

(assert (=> d!663185 (= c!354230 (is-Nil!25985 err!4141))))

(assert (=> d!663185 (= (++!6469 err!4141 (Cons!25985 (last!367 l!2924) Nil!25985)) lt!827073)))

(declare-fun b!2218673 () Bool)

(declare-fun res!952833 () Bool)

(assert (=> b!2218673 (=> (not res!952833) (not e!1416849))))

(declare-fun size!20274 (List!26069) Int)

(assert (=> b!2218673 (= res!952833 (= (size!20274 lt!827073) (+ (size!20274 err!4141) (size!20274 (Cons!25985 (last!367 l!2924) Nil!25985)))))))

(declare-fun b!2218671 () Bool)

(assert (=> b!2218671 (= e!1416850 (Cons!25985 (last!367 l!2924) Nil!25985))))

(declare-fun b!2218672 () Bool)

(assert (=> b!2218672 (= e!1416850 (Cons!25985 (h!31386 err!4141) (++!6469 (t!199385 err!4141) (Cons!25985 (last!367 l!2924) Nil!25985))))))

(declare-fun b!2218674 () Bool)

(assert (=> b!2218674 (= e!1416849 (or (not (= (Cons!25985 (last!367 l!2924) Nil!25985) Nil!25985)) (= lt!827073 err!4141)))))

(assert (= (and d!663185 c!354230) b!2218671))

(assert (= (and d!663185 (not c!354230)) b!2218672))

(assert (= (and d!663185 res!952834) b!2218673))

(assert (= (and b!2218673 res!952833) b!2218674))

(declare-fun m!2659427 () Bool)

(assert (=> d!663185 m!2659427))

(declare-fun m!2659429 () Bool)

(assert (=> d!663185 m!2659429))

(declare-fun m!2659431 () Bool)

(assert (=> d!663185 m!2659431))

(declare-fun m!2659433 () Bool)

(assert (=> b!2218673 m!2659433))

(declare-fun m!2659435 () Bool)

(assert (=> b!2218673 m!2659435))

(declare-fun m!2659437 () Bool)

(assert (=> b!2218673 m!2659437))

(declare-fun m!2659439 () Bool)

(assert (=> b!2218672 m!2659439))

(assert (=> b!2218648 d!663185))

(declare-fun d!663189 () Bool)

(declare-fun lt!827076 () B!1831)

(declare-fun contains!4314 (List!26069 B!1831) Bool)

(assert (=> d!663189 (contains!4314 l!2924 lt!827076)))

(declare-fun e!1416853 () B!1831)

(assert (=> d!663189 (= lt!827076 e!1416853)))

(declare-fun c!354233 () Bool)

(assert (=> d!663189 (= c!354233 (and (is-Cons!25985 l!2924) (is-Nil!25985 (t!199385 l!2924))))))

(assert (=> d!663189 (not (isEmpty!14863 l!2924))))

(assert (=> d!663189 (= (last!367 l!2924) lt!827076)))

(declare-fun b!2218679 () Bool)

(assert (=> b!2218679 (= e!1416853 (h!31386 l!2924))))

(declare-fun b!2218680 () Bool)

(assert (=> b!2218680 (= e!1416853 (last!367 (t!199385 l!2924)))))

(assert (= (and d!663189 c!354233) b!2218679))

(assert (= (and d!663189 (not c!354233)) b!2218680))

(declare-fun m!2659441 () Bool)

(assert (=> d!663189 m!2659441))

(assert (=> d!663189 m!2659415))

(declare-fun m!2659443 () Bool)

(assert (=> b!2218680 m!2659443))

(assert (=> b!2218648 d!663189))

(declare-fun d!663191 () Bool)

(assert (=> d!663191 (= (isEmpty!14863 l!2924) (is-Nil!25985 l!2924))))

(assert (=> start!216236 d!663191))

(declare-fun b!2218689 () Bool)

(declare-fun e!1416858 () Bool)

(declare-fun tp!691173 () Bool)

(assert (=> b!2218689 (= e!1416858 (and tp_is_empty!9879 tp!691173))))

(assert (=> b!2218649 (= tp!691164 e!1416858)))

(assert (= (and b!2218649 (is-Cons!25985 (t!199385 err!4141))) b!2218689))

(declare-fun b!2218690 () Bool)

(declare-fun e!1416859 () Bool)

(declare-fun tp!691174 () Bool)

(assert (=> b!2218690 (= e!1416859 (and tp_is_empty!9879 tp!691174))))

(assert (=> b!2218650 (= tp!691163 e!1416859)))

(assert (= (and b!2218650 (is-Cons!25985 (t!199385 l!2924))) b!2218690))

(push 1)

(assert (not b!2218673))

(assert (not b!2218689))

(assert (not b!2218672))

(assert (not b!2218680))

(assert (not d!663185))

(assert (not d!663189))

(assert (not b!2218690))

(assert tp_is_empty!9879)

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

