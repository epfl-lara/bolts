; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!276358 () Bool)

(assert start!276358)

(declare-fun b!2841438 () Bool)

(declare-fun e!1800160 () Bool)

(declare-fun tp_is_empty!14653 () Bool)

(declare-fun tp!910293 () Bool)

(assert (=> b!2841438 (= e!1800160 (and tp_is_empty!14653 tp!910293))))

(declare-fun b!2841435 () Bool)

(declare-fun res!1182118 () Bool)

(declare-fun e!1800161 () Bool)

(assert (=> b!2841435 (=> (not res!1182118) (not e!1800161))))

(declare-fun i!849 () Int)

(declare-datatypes ((B!2523 0))(
  ( (B!2524 (val!10565 Int)) )
))
(declare-datatypes ((List!33777 0))(
  ( (Nil!33653) (Cons!33653 (h!39073 B!2523) (t!232622 List!33777)) )
))
(declare-fun l!2988 () List!33777)

(declare-fun size!26122 (List!33777) Int)

(assert (=> b!2841435 (= res!1182118 (<= i!849 (size!26122 l!2988)))))

(declare-fun b!2841437 () Bool)

(declare-fun subseq!531 (List!33777 List!33777) Bool)

(declare-fun drop!1802 (List!33777 Int) List!33777)

(assert (=> b!2841437 (= e!1800161 (not (subseq!531 (drop!1802 l!2988 i!849) l!2988)))))

(declare-fun res!1182117 () Bool)

(assert (=> start!276358 (=> (not res!1182117) (not e!1800161))))

(assert (=> start!276358 (= res!1182117 (>= i!849 0))))

(assert (=> start!276358 e!1800161))

(assert (=> start!276358 true))

(assert (=> start!276358 e!1800160))

(declare-fun b!2841436 () Bool)

(declare-fun res!1182119 () Bool)

(assert (=> b!2841436 (=> (not res!1182119) (not e!1800161))))

(assert (=> b!2841436 (= res!1182119 (is-Nil!33653 l!2988))))

(assert (= (and start!276358 res!1182117) b!2841435))

(assert (= (and b!2841435 res!1182118) b!2841436))

(assert (= (and b!2841436 res!1182119) b!2841437))

(assert (= (and start!276358 (is-Cons!33653 l!2988)) b!2841438))

(declare-fun m!3269427 () Bool)

(assert (=> b!2841435 m!3269427))

(declare-fun m!3269429 () Bool)

(assert (=> b!2841437 m!3269429))

(assert (=> b!2841437 m!3269429))

(declare-fun m!3269431 () Bool)

(assert (=> b!2841437 m!3269431))

(push 1)

(assert (not b!2841435))

(assert (not b!2841437))

(assert (not b!2841438))

(assert tp_is_empty!14653)

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!823878 () Bool)

(declare-fun lt!1011640 () Int)

(assert (=> d!823878 (>= lt!1011640 0)))

(declare-fun e!1800170 () Int)

(assert (=> d!823878 (= lt!1011640 e!1800170)))

(declare-fun c!458672 () Bool)

(assert (=> d!823878 (= c!458672 (is-Nil!33653 l!2988))))

(assert (=> d!823878 (= (size!26122 l!2988) lt!1011640)))

(declare-fun b!2841455 () Bool)

(assert (=> b!2841455 (= e!1800170 0)))

(declare-fun b!2841456 () Bool)

(assert (=> b!2841456 (= e!1800170 (+ 1 (size!26122 (t!232622 l!2988))))))

(assert (= (and d!823878 c!458672) b!2841455))

(assert (= (and d!823878 (not c!458672)) b!2841456))

(declare-fun m!3269439 () Bool)

(assert (=> b!2841456 m!3269439))

(assert (=> b!2841435 d!823878))

(declare-fun b!2841471 () Bool)

(declare-fun e!1800190 () Bool)

(declare-fun e!1800188 () Bool)

(assert (=> b!2841471 (= e!1800190 e!1800188)))

(declare-fun res!1182147 () Bool)

(assert (=> b!2841471 (=> (not res!1182147) (not e!1800188))))

(assert (=> b!2841471 (= res!1182147 (is-Cons!33653 l!2988))))

(declare-fun b!2841474 () Bool)

(declare-fun e!1800189 () Bool)

(assert (=> b!2841474 (= e!1800189 (subseq!531 (drop!1802 l!2988 i!849) (t!232622 l!2988)))))

(declare-fun d!823882 () Bool)

(declare-fun res!1182145 () Bool)

(assert (=> d!823882 (=> res!1182145 e!1800190)))

(assert (=> d!823882 (= res!1182145 (is-Nil!33653 (drop!1802 l!2988 i!849)))))

(assert (=> d!823882 (= (subseq!531 (drop!1802 l!2988 i!849) l!2988) e!1800190)))

(declare-fun b!2841473 () Bool)

(declare-fun e!1800187 () Bool)

(assert (=> b!2841473 (= e!1800187 (subseq!531 (t!232622 (drop!1802 l!2988 i!849)) (t!232622 l!2988)))))

(declare-fun b!2841472 () Bool)

(assert (=> b!2841472 (= e!1800188 e!1800189)))

(declare-fun res!1182148 () Bool)

(assert (=> b!2841472 (=> res!1182148 e!1800189)))

(assert (=> b!2841472 (= res!1182148 e!1800187)))

(declare-fun res!1182146 () Bool)

(assert (=> b!2841472 (=> (not res!1182146) (not e!1800187))))

(assert (=> b!2841472 (= res!1182146 (= (h!39073 (drop!1802 l!2988 i!849)) (h!39073 l!2988)))))

(assert (= (and d!823882 (not res!1182145)) b!2841471))

(assert (= (and b!2841471 res!1182147) b!2841472))

(assert (= (and b!2841472 res!1182146) b!2841473))

(assert (= (and b!2841472 (not res!1182148)) b!2841474))

(assert (=> b!2841474 m!3269429))

(declare-fun m!3269441 () Bool)

(assert (=> b!2841474 m!3269441))

(declare-fun m!3269443 () Bool)

(assert (=> b!2841473 m!3269443))

(assert (=> b!2841437 d!823882))

(declare-fun b!2841499 () Bool)

(declare-fun e!1800206 () Int)

(assert (=> b!2841499 (= e!1800206 0)))

(declare-fun b!2841500 () Bool)

(declare-fun e!1800208 () List!33777)

(assert (=> b!2841500 (= e!1800208 Nil!33653)))

(declare-fun b!2841501 () Bool)

(declare-fun e!1800205 () Int)

(assert (=> b!2841501 (= e!1800205 e!1800206)))

(declare-fun c!458683 () Bool)

(declare-fun call!183301 () Int)

(assert (=> b!2841501 (= c!458683 (>= i!849 call!183301))))

(declare-fun bm!183296 () Bool)

(assert (=> bm!183296 (= call!183301 (size!26122 l!2988))))

(declare-fun b!2841502 () Bool)

(assert (=> b!2841502 (= e!1800205 call!183301)))

(declare-fun b!2841503 () Bool)

(declare-fun e!1800209 () List!33777)

(assert (=> b!2841503 (= e!1800209 l!2988)))

(declare-fun b!2841505 () Bool)

(assert (=> b!2841505 (= e!1800209 (drop!1802 (t!232622 l!2988) (- i!849 1)))))

(declare-fun b!2841506 () Bool)

(declare-fun e!1800207 () Bool)

(declare-fun lt!1011643 () List!33777)

(assert (=> b!2841506 (= e!1800207 (= (size!26122 lt!1011643) e!1800205))))

(declare-fun c!458682 () Bool)

(assert (=> b!2841506 (= c!458682 (<= i!849 0))))

(declare-fun b!2841507 () Bool)

(assert (=> b!2841507 (= e!1800206 (- call!183301 i!849))))

(declare-fun d!823884 () Bool)

(assert (=> d!823884 e!1800207))

(declare-fun res!1182155 () Bool)

(assert (=> d!823884 (=> (not res!1182155) (not e!1800207))))

(declare-fun content!4642 (List!33777) (Set B!2523))

(assert (=> d!823884 (= res!1182155 (set.subset (content!4642 lt!1011643) (content!4642 l!2988)))))

(assert (=> d!823884 (= lt!1011643 e!1800208)))

(declare-fun c!458681 () Bool)

(assert (=> d!823884 (= c!458681 (is-Nil!33653 l!2988))))

(assert (=> d!823884 (= (drop!1802 l!2988 i!849) lt!1011643)))

(declare-fun b!2841504 () Bool)

(assert (=> b!2841504 (= e!1800208 e!1800209)))

(declare-fun c!458684 () Bool)

(assert (=> b!2841504 (= c!458684 (<= i!849 0))))

(assert (= (and d!823884 c!458681) b!2841500))

(assert (= (and d!823884 (not c!458681)) b!2841504))

(assert (= (and b!2841504 c!458684) b!2841503))

(assert (= (and b!2841504 (not c!458684)) b!2841505))

(assert (= (and d!823884 res!1182155) b!2841506))

(assert (= (and b!2841506 c!458682) b!2841502))

(assert (= (and b!2841506 (not c!458682)) b!2841501))

(assert (= (and b!2841501 c!458683) b!2841499))

(assert (= (and b!2841501 (not c!458683)) b!2841507))

(assert (= (or b!2841502 b!2841501 b!2841507) bm!183296))

(assert (=> bm!183296 m!3269427))

(declare-fun m!3269449 () Bool)

(assert (=> b!2841505 m!3269449))

(declare-fun m!3269451 () Bool)

(assert (=> b!2841506 m!3269451))

(declare-fun m!3269453 () Bool)

(assert (=> d!823884 m!3269453))

(declare-fun m!3269455 () Bool)

(assert (=> d!823884 m!3269455))

(assert (=> b!2841437 d!823884))

(declare-fun b!2841512 () Bool)

(declare-fun e!1800212 () Bool)

(declare-fun tp!910299 () Bool)

(assert (=> b!2841512 (= e!1800212 (and tp_is_empty!14653 tp!910299))))

(assert (=> b!2841438 (= tp!910293 e!1800212)))

(assert (= (and b!2841438 (is-Cons!33653 (t!232622 l!2988))) b!2841512))

(push 1)

(assert (not d!823884))

(assert (not b!2841474))

(assert tp_is_empty!14653)

(assert (not bm!183296))

(assert (not b!2841512))

(assert (not b!2841506))

(assert (not b!2841505))

(assert (not b!2841473))

(assert (not b!2841456))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

