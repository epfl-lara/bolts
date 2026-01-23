; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!725676 () Bool)

(assert start!725676)

(declare-datatypes ((C!39594 0))(
  ( (C!39595 (val!30195 Int)) )
))
(declare-datatypes ((List!72374 0))(
  ( (Nil!72250) (Cons!72250 (h!78698 C!39594) (t!386943 List!72374)) )
))
(declare-fun input!5498 () List!72374)

(declare-fun sizeTr!436 (List!72374 Int) Int)

(declare-fun size!42205 (List!72374) Int)

(assert (=> start!725676 (= (sizeTr!436 input!5498 0) (size!42205 input!5498))))

(declare-datatypes ((Unit!166151 0))(
  ( (Unit!166152) )
))
(declare-fun lt!2631616 () Unit!166151)

(declare-fun lemmaSizeTrEqualsSize!435 (List!72374 Int) Unit!166151)

(assert (=> start!725676 (= lt!2631616 (lemmaSizeTrEqualsSize!435 input!5498 0))))

(declare-fun ++!17263 (List!72374 List!72374) List!72374)

(assert (=> start!725676 (not (= (++!17263 Nil!72250 input!5498) input!5498))))

(declare-fun e!4472041 () Bool)

(assert (=> start!725676 e!4472041))

(declare-fun b!7501080 () Bool)

(declare-fun tp_is_empty!49609 () Bool)

(declare-fun tp!2177424 () Bool)

(assert (=> b!7501080 (= e!4472041 (and tp_is_empty!49609 tp!2177424))))

(assert (= (and start!725676 (is-Cons!72250 input!5498)) b!7501080))

(declare-fun m!8082864 () Bool)

(assert (=> start!725676 m!8082864))

(declare-fun m!8082866 () Bool)

(assert (=> start!725676 m!8082866))

(declare-fun m!8082868 () Bool)

(assert (=> start!725676 m!8082868))

(declare-fun m!8082870 () Bool)

(assert (=> start!725676 m!8082870))

(push 1)

(assert (not start!725676))

(assert (not b!7501080))

(assert tp_is_empty!49609)

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!2302540 () Bool)

(declare-fun c!1384773 () Bool)

(assert (=> d!2302540 (= c!1384773 (is-Nil!72250 input!5498))))

(declare-fun e!4472047 () Int)

(assert (=> d!2302540 (= (sizeTr!436 input!5498 0) e!4472047)))

(declare-fun b!7501088 () Bool)

(assert (=> b!7501088 (= e!4472047 0)))

(declare-fun b!7501089 () Bool)

(assert (=> b!7501089 (= e!4472047 (sizeTr!436 (t!386943 input!5498) (+ 0 1)))))

(assert (= (and d!2302540 c!1384773) b!7501088))

(assert (= (and d!2302540 (not c!1384773)) b!7501089))

(declare-fun m!8082880 () Bool)

(assert (=> b!7501089 m!8082880))

(assert (=> start!725676 d!2302540))

(declare-fun d!2302542 () Bool)

(declare-fun lt!2631622 () Int)

(assert (=> d!2302542 (>= lt!2631622 0)))

(declare-fun e!4472050 () Int)

(assert (=> d!2302542 (= lt!2631622 e!4472050)))

(declare-fun c!1384776 () Bool)

(assert (=> d!2302542 (= c!1384776 (is-Nil!72250 input!5498))))

(assert (=> d!2302542 (= (size!42205 input!5498) lt!2631622)))

(declare-fun b!7501094 () Bool)

(assert (=> b!7501094 (= e!4472050 0)))

(declare-fun b!7501095 () Bool)

(assert (=> b!7501095 (= e!4472050 (+ 1 (size!42205 (t!386943 input!5498))))))

(assert (= (and d!2302542 c!1384776) b!7501094))

(assert (= (and d!2302542 (not c!1384776)) b!7501095))

(declare-fun m!8082882 () Bool)

(assert (=> b!7501095 m!8082882))

(assert (=> start!725676 d!2302542))

(declare-fun d!2302546 () Bool)

(assert (=> d!2302546 (= (sizeTr!436 input!5498 0) (+ (size!42205 input!5498) 0))))

(declare-fun lt!2631625 () Unit!166151)

(declare-fun choose!57985 (List!72374 Int) Unit!166151)

(assert (=> d!2302546 (= lt!2631625 (choose!57985 input!5498 0))))

(assert (=> d!2302546 (= (lemmaSizeTrEqualsSize!435 input!5498 0) lt!2631625)))

(declare-fun bs!1937690 () Bool)

(assert (= bs!1937690 d!2302546))

(assert (=> bs!1937690 m!8082864))

(assert (=> bs!1937690 m!8082866))

(declare-fun m!8082884 () Bool)

(assert (=> bs!1937690 m!8082884))

(assert (=> start!725676 d!2302546))

(declare-fun b!7501113 () Bool)

(declare-fun e!4472059 () Bool)

(declare-fun lt!2631628 () List!72374)

(assert (=> b!7501113 (= e!4472059 (or (not (= input!5498 Nil!72250)) (= lt!2631628 Nil!72250)))))

(declare-fun b!7501110 () Bool)

(declare-fun e!4472058 () List!72374)

(assert (=> b!7501110 (= e!4472058 input!5498)))

(declare-fun b!7501111 () Bool)

(assert (=> b!7501111 (= e!4472058 (Cons!72250 (h!78698 Nil!72250) (++!17263 (t!386943 Nil!72250) input!5498)))))

(declare-fun d!2302548 () Bool)

(assert (=> d!2302548 e!4472059))

(declare-fun res!3009150 () Bool)

(assert (=> d!2302548 (=> (not res!3009150) (not e!4472059))))

(declare-fun content!15269 (List!72374) (Set C!39594))

(assert (=> d!2302548 (= res!3009150 (= (content!15269 lt!2631628) (set.union (content!15269 Nil!72250) (content!15269 input!5498))))))

(assert (=> d!2302548 (= lt!2631628 e!4472058)))

(declare-fun c!1384782 () Bool)

(assert (=> d!2302548 (= c!1384782 (is-Nil!72250 Nil!72250))))

(assert (=> d!2302548 (= (++!17263 Nil!72250 input!5498) lt!2631628)))

(declare-fun b!7501112 () Bool)

(declare-fun res!3009149 () Bool)

(assert (=> b!7501112 (=> (not res!3009149) (not e!4472059))))

(assert (=> b!7501112 (= res!3009149 (= (size!42205 lt!2631628) (+ (size!42205 Nil!72250) (size!42205 input!5498))))))

(assert (= (and d!2302548 c!1384782) b!7501110))

(assert (= (and d!2302548 (not c!1384782)) b!7501111))

(assert (= (and d!2302548 res!3009150) b!7501112))

(assert (= (and b!7501112 res!3009149) b!7501113))

(declare-fun m!8082888 () Bool)

(assert (=> b!7501111 m!8082888))

(declare-fun m!8082890 () Bool)

(assert (=> d!2302548 m!8082890))

(declare-fun m!8082892 () Bool)

(assert (=> d!2302548 m!8082892))

(declare-fun m!8082894 () Bool)

(assert (=> d!2302548 m!8082894))

(declare-fun m!8082896 () Bool)

(assert (=> b!7501112 m!8082896))

(declare-fun m!8082898 () Bool)

(assert (=> b!7501112 m!8082898))

(assert (=> b!7501112 m!8082866))

(assert (=> start!725676 d!2302548))

(declare-fun b!7501120 () Bool)

(declare-fun e!4472062 () Bool)

(declare-fun tp!2177430 () Bool)

(assert (=> b!7501120 (= e!4472062 (and tp_is_empty!49609 tp!2177430))))

(assert (=> b!7501080 (= tp!2177424 e!4472062)))

(assert (= (and b!7501080 (is-Cons!72250 (t!386943 input!5498))) b!7501120))

(push 1)

(assert (not b!7501095))

(assert (not b!7501111))

(assert (not b!7501120))

(assert tp_is_empty!49609)

(assert (not b!7501089))

(assert (not d!2302546))

(assert (not d!2302548))

(assert (not b!7501112))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

