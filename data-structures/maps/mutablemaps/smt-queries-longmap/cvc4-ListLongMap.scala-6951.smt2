; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!87626 () Bool)

(assert start!87626)

(declare-fun b!1013693 () Bool)

(assert (=> b!1013693 true))

(assert (=> b!1013693 true))

(declare-fun b!1013690 () Bool)

(declare-datatypes ((Unit!33102 0))(
  ( (Unit!33103) )
))
(declare-fun e!570283 () Unit!33102)

(declare-fun Unit!33104 () Unit!33102)

(assert (=> b!1013690 (= e!570283 Unit!33104)))

(declare-fun b!1013691 () Bool)

(declare-fun e!570282 () Bool)

(declare-fun tp_is_empty!23483 () Bool)

(declare-fun tp!70470 () Bool)

(assert (=> b!1013691 (= e!570282 (and tp_is_empty!23483 tp!70470))))

(declare-fun b!1013692 () Bool)

(declare-fun e!570284 () Bool)

(declare-datatypes ((B!1416 0))(
  ( (B!1417 (val!11792 Int)) )
))
(declare-datatypes ((tuple2!15220 0))(
  ( (tuple2!15221 (_1!7620 (_ BitVec 64)) (_2!7620 B!1416)) )
))
(declare-datatypes ((List!21533 0))(
  ( (Nil!21530) (Cons!21529 (h!22727 tuple2!15220) (t!30542 List!21533)) )
))
(declare-fun l!412 () List!21533)

(declare-fun ListPrimitiveSize!108 (List!21533) Int)

(assert (=> b!1013692 (= e!570284 (>= (ListPrimitiveSize!108 (t!30542 l!412)) (ListPrimitiveSize!108 l!412)))))

(declare-fun lt!448139 () Unit!33102)

(assert (=> b!1013692 (= lt!448139 e!570283)))

(declare-fun c!102468 () Bool)

(declare-datatypes ((List!21534 0))(
  ( (Nil!21531) (Cons!21530 (h!22728 (_ BitVec 64)) (t!30543 List!21534)) )
))
(declare-fun lt!448140 () List!21534)

(declare-fun isEmpty!827 (List!21534) Bool)

(assert (=> b!1013692 (= c!102468 (not (isEmpty!827 lt!448140)))))

(declare-fun value!115 () B!1416)

(declare-fun getKeysOf!42 (List!21533 B!1416) List!21534)

(assert (=> b!1013692 (= lt!448140 (getKeysOf!42 (t!30542 l!412) value!115))))

(declare-fun lt!448138 () Unit!33102)

(assert (=> b!1013693 (= e!570283 lt!448138)))

(declare-fun lemmaForallGetValueByKeySameWithASmallerHead!33 (List!21533 List!21534 B!1416 tuple2!15220) Unit!33102)

(assert (=> b!1013693 (= lt!448138 (lemmaForallGetValueByKeySameWithASmallerHead!33 (t!30542 l!412) lt!448140 value!115 (h!22727 l!412)))))

(declare-fun lambda!551 () Int)

(declare-fun forall!238 (List!21534 Int) Bool)

(assert (=> b!1013693 (forall!238 lt!448140 lambda!551)))

(declare-fun b!1013694 () Bool)

(declare-fun res!680575 () Bool)

(assert (=> b!1013694 (=> (not res!680575) (not e!570284))))

(assert (=> b!1013694 (= res!680575 (and (is-Cons!21529 l!412) (= (_2!7620 (h!22727 l!412)) value!115)))))

(declare-fun res!680574 () Bool)

(assert (=> start!87626 (=> (not res!680574) (not e!570284))))

(declare-fun isStrictlySorted!562 (List!21533) Bool)

(assert (=> start!87626 (= res!680574 (isStrictlySorted!562 l!412))))

(assert (=> start!87626 e!570284))

(assert (=> start!87626 e!570282))

(assert (=> start!87626 tp_is_empty!23483))

(assert (= (and start!87626 res!680574) b!1013694))

(assert (= (and b!1013694 res!680575) b!1013692))

(assert (= (and b!1013692 c!102468) b!1013693))

(assert (= (and b!1013692 (not c!102468)) b!1013690))

(assert (= (and start!87626 (is-Cons!21529 l!412)) b!1013691))

(declare-fun m!936667 () Bool)

(assert (=> b!1013692 m!936667))

(declare-fun m!936669 () Bool)

(assert (=> b!1013692 m!936669))

(declare-fun m!936671 () Bool)

(assert (=> b!1013692 m!936671))

(declare-fun m!936673 () Bool)

(assert (=> b!1013692 m!936673))

(declare-fun m!936675 () Bool)

(assert (=> b!1013693 m!936675))

(declare-fun m!936677 () Bool)

(assert (=> b!1013693 m!936677))

(declare-fun m!936679 () Bool)

(assert (=> start!87626 m!936679))

(push 1)

(assert (not b!1013693))

(assert tp_is_empty!23483)

(assert (not b!1013692))

(assert (not b!1013691))

(assert (not start!87626))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!120489 () Bool)

(declare-fun lt!448145 () Int)

(assert (=> d!120489 (>= lt!448145 0)))

(declare-fun e!570299 () Int)

(assert (=> d!120489 (= lt!448145 e!570299)))

(declare-fun c!102473 () Bool)

(assert (=> d!120489 (= c!102473 (is-Nil!21530 (t!30542 l!412)))))

(assert (=> d!120489 (= (ListPrimitiveSize!108 (t!30542 l!412)) lt!448145)))

(declare-fun b!1013717 () Bool)

(assert (=> b!1013717 (= e!570299 0)))

(declare-fun b!1013718 () Bool)

(assert (=> b!1013718 (= e!570299 (+ 1 (ListPrimitiveSize!108 (t!30542 (t!30542 l!412)))))))

(assert (= (and d!120489 c!102473) b!1013717))

(assert (= (and d!120489 (not c!102473)) b!1013718))

(declare-fun m!936683 () Bool)

(assert (=> b!1013718 m!936683))

(assert (=> b!1013692 d!120489))

(declare-fun d!120493 () Bool)

(declare-fun lt!448147 () Int)

(assert (=> d!120493 (>= lt!448147 0)))

(declare-fun e!570303 () Int)

(assert (=> d!120493 (= lt!448147 e!570303)))

(declare-fun c!102475 () Bool)

(assert (=> d!120493 (= c!102475 (is-Nil!21530 l!412))))

(assert (=> d!120493 (= (ListPrimitiveSize!108 l!412) lt!448147)))

(declare-fun b!1013723 () Bool)

(assert (=> b!1013723 (= e!570303 0)))

(declare-fun b!1013724 () Bool)

(assert (=> b!1013724 (= e!570303 (+ 1 (ListPrimitiveSize!108 (t!30542 l!412))))))

(assert (= (and d!120493 c!102475) b!1013723))

(assert (= (and d!120493 (not c!102475)) b!1013724))

(assert (=> b!1013724 m!936667))

(assert (=> b!1013692 d!120493))

(declare-fun d!120499 () Bool)

(assert (=> d!120499 (= (isEmpty!827 lt!448140) (is-Nil!21531 lt!448140))))

(assert (=> b!1013692 d!120499))

(declare-fun bs!28946 () Bool)

(declare-fun b!1013787 () Bool)

(assert (= bs!28946 (and b!1013787 b!1013693)))

(declare-fun lambda!570 () Int)

(declare-fun lt!448231 () List!21533)

(declare-fun lt!448226 () tuple2!15220)

(assert (=> bs!28946 (= (= (Cons!21529 lt!448226 lt!448231) l!412) (= lambda!570 lambda!551))))

(assert (=> b!1013787 true))

(assert (=> b!1013787 true))

(assert (=> b!1013787 true))

(declare-fun bs!28948 () Bool)

(declare-fun b!1013784 () Bool)

(assert (= bs!28948 (and b!1013784 b!1013693)))

(declare-fun lt!448229 () List!21533)

(declare-fun lambda!572 () Int)

(declare-fun lt!448235 () tuple2!15220)

(assert (=> bs!28948 (= (= (Cons!21529 lt!448235 lt!448229) l!412) (= lambda!572 lambda!551))))

(declare-fun bs!28950 () Bool)

(assert (= bs!28950 (and b!1013784 b!1013787)))

(assert (=> bs!28950 (= (= (Cons!21529 lt!448235 lt!448229) (Cons!21529 lt!448226 lt!448231)) (= lambda!572 lambda!570))))

(assert (=> b!1013784 true))

(assert (=> b!1013784 true))

(assert (=> b!1013784 true))

(declare-fun bs!28953 () Bool)

(declare-fun d!120503 () Bool)

(assert (= bs!28953 (and d!120503 b!1013693)))

(declare-fun lambda!575 () Int)

(assert (=> bs!28953 (= (= (t!30542 l!412) l!412) (= lambda!575 lambda!551))))

(declare-fun bs!28955 () Bool)

(assert (= bs!28955 (and d!120503 b!1013787)))

(assert (=> bs!28955 (= (= (t!30542 l!412) (Cons!21529 lt!448226 lt!448231)) (= lambda!575 lambda!570))))

(declare-fun bs!28957 () Bool)

(assert (= bs!28957 (and d!120503 b!1013784)))

(assert (=> bs!28957 (= (= (t!30542 l!412) (Cons!21529 lt!448235 lt!448229)) (= lambda!575 lambda!572))))

(assert (=> d!120503 true))

(assert (=> d!120503 true))

(declare-fun bm!42719 () Bool)

(declare-fun call!42725 () Bool)

(declare-fun call!42722 () List!21534)

(assert (=> bm!42719 (= call!42725 (isEmpty!827 call!42722))))

(declare-fun b!1013783 () Bool)

(declare-fun e!570335 () Unit!33102)

(declare-fun Unit!33108 () Unit!33102)

(assert (=> b!1013783 (= e!570335 Unit!33108)))

(declare-fun e!570334 () Unit!33102)

(declare-fun lt!448232 () Unit!33102)

(assert (=> b!1013784 (= e!570334 lt!448232)))

(assert (=> b!1013784 (= lt!448229 (t!30542 (t!30542 l!412)))))

(declare-fun lt!448230 () List!21534)

(assert (=> b!1013784 (= lt!448230 call!42722)))

(assert (=> b!1013784 (= lt!448235 (h!22727 (t!30542 l!412)))))

(declare-fun call!42724 () Unit!33102)

(assert (=> b!1013784 (= lt!448232 call!42724)))

(declare-fun call!42723 () Bool)

(assert (=> b!1013784 call!42723))

(declare-fun b!1013785 () Bool)

(declare-fun lt!448236 () Unit!33102)

(assert (=> b!1013785 (= lt!448236 e!570334)))

(declare-fun c!102505 () Bool)

(assert (=> b!1013785 (= c!102505 (not call!42725))))

(declare-fun lt!448234 () List!21534)

(assert (=> b!1013785 (= lt!448234 call!42722)))

(declare-fun e!570336 () List!21534)

(assert (=> b!1013785 (= e!570336 call!42722)))

(declare-fun b!1013786 () Bool)

(declare-fun Unit!33110 () Unit!33102)

(assert (=> b!1013786 (= e!570334 Unit!33110)))

(declare-fun bm!42720 () Bool)

(declare-fun c!102507 () Bool)

(declare-fun lt!448225 () List!21534)

(assert (=> bm!42720 (= call!42723 (forall!238 (ite c!102507 lt!448225 lt!448230) (ite c!102507 lambda!570 lambda!572)))))

(assert (=> b!1013787 call!42723))

(declare-fun lt!448233 () Unit!33102)

(assert (=> b!1013787 (= lt!448233 call!42724)))

(assert (=> b!1013787 (= lt!448226 (h!22727 (t!30542 l!412)))))

(assert (=> b!1013787 (= lt!448225 call!42722)))

(assert (=> b!1013787 (= lt!448231 (t!30542 (t!30542 l!412)))))

(assert (=> b!1013787 (= e!570335 lt!448233)))

(declare-fun b!1013788 () Bool)

(declare-fun e!570333 () List!21534)

(assert (=> b!1013788 (= e!570333 e!570336)))

(declare-fun c!102508 () Bool)

(assert (=> b!1013788 (= c!102508 (and (is-Cons!21529 (t!30542 l!412)) (not (= (_2!7620 (h!22727 (t!30542 l!412))) value!115))))))

(declare-fun bm!42721 () Bool)

(assert (=> bm!42721 (= call!42724 (lemmaForallGetValueByKeySameWithASmallerHead!33 (ite c!102507 lt!448231 lt!448229) (ite c!102507 lt!448225 lt!448230) value!115 (ite c!102507 lt!448226 lt!448235)))))

(declare-fun b!1013789 () Bool)

(assert (=> b!1013789 (= e!570336 Nil!21531)))

(declare-fun bm!42722 () Bool)

(assert (=> bm!42722 (= call!42722 (getKeysOf!42 (t!30542 (t!30542 l!412)) value!115))))

(declare-fun lt!448227 () List!21534)

(assert (=> d!120503 (forall!238 lt!448227 lambda!575)))

(assert (=> d!120503 (= lt!448227 e!570333)))

(assert (=> d!120503 (= c!102507 (and (is-Cons!21529 (t!30542 l!412)) (= (_2!7620 (h!22727 (t!30542 l!412))) value!115)))))

(assert (=> d!120503 (isStrictlySorted!562 (t!30542 l!412))))

(assert (=> d!120503 (= (getKeysOf!42 (t!30542 l!412) value!115) lt!448227)))

(declare-fun b!1013790 () Bool)

(assert (=> b!1013790 (= e!570333 (Cons!21530 (_1!7620 (h!22727 (t!30542 l!412))) call!42722))))

(declare-fun c!102506 () Bool)

(assert (=> b!1013790 (= c!102506 (not call!42725))))

(declare-fun lt!448228 () Unit!33102)

(assert (=> b!1013790 (= lt!448228 e!570335)))

(assert (= (and d!120503 c!102507) b!1013790))

(assert (= (and d!120503 (not c!102507)) b!1013788))

(assert (= (and b!1013790 c!102506) b!1013787))

(assert (= (and b!1013790 (not c!102506)) b!1013783))

(assert (= (and b!1013788 c!102508) b!1013785))

(assert (= (and b!1013788 (not c!102508)) b!1013789))

(assert (= (and b!1013785 c!102505) b!1013784))

(assert (= (and b!1013785 (not c!102505)) b!1013786))

(assert (= (or b!1013787 b!1013784) bm!42721))

(assert (= (or b!1013787 b!1013784) bm!42720))

(assert (= (or b!1013790 b!1013787 b!1013784 b!1013785) bm!42722))

(assert (= (or b!1013790 b!1013785) bm!42719))

(declare-fun m!936691 () Bool)

(assert (=> bm!42719 m!936691))

(declare-fun m!936695 () Bool)

(assert (=> bm!42720 m!936695))

(declare-fun m!936699 () Bool)

(assert (=> d!120503 m!936699))

(declare-fun m!936703 () Bool)

(assert (=> d!120503 m!936703))

(declare-fun m!936707 () Bool)

(assert (=> bm!42721 m!936707))

(declare-fun m!936709 () Bool)

(assert (=> bm!42722 m!936709))

(assert (=> b!1013692 d!120503))

(declare-fun bs!28964 () Bool)

(declare-fun b!1013832 () Bool)

(assert (= bs!28964 (and b!1013832 b!1013693)))

(declare-fun lambda!591 () Int)

(assert (=> bs!28964 (= (= (t!30542 l!412) l!412) (= lambda!591 lambda!551))))

(declare-fun bs!28966 () Bool)

(assert (= bs!28966 (and b!1013832 b!1013787)))

(assert (=> bs!28966 (= (= (t!30542 l!412) (Cons!21529 lt!448226 lt!448231)) (= lambda!591 lambda!570))))

(declare-fun bs!28968 () Bool)

(assert (= bs!28968 (and b!1013832 b!1013784)))

(assert (=> bs!28968 (= (= (t!30542 l!412) (Cons!21529 lt!448235 lt!448229)) (= lambda!591 lambda!572))))

(declare-fun bs!28970 () Bool)

(assert (= bs!28970 (and b!1013832 d!120503)))

(assert (=> bs!28970 (= lambda!591 lambda!575)))

(assert (=> b!1013832 true))

(assert (=> b!1013832 true))

(declare-fun bs!28972 () Bool)

(declare-fun d!120513 () Bool)

(assert (= bs!28972 (and d!120513 b!1013693)))

(declare-fun lambda!593 () Int)

(assert (=> bs!28972 (= (= (Cons!21529 (h!22727 l!412) (t!30542 l!412)) l!412) (= lambda!593 lambda!551))))

(declare-fun bs!28975 () Bool)

(assert (= bs!28975 (and d!120513 d!120503)))

(assert (=> bs!28975 (= (= (Cons!21529 (h!22727 l!412) (t!30542 l!412)) (t!30542 l!412)) (= lambda!593 lambda!575))))

(declare-fun bs!28978 () Bool)

(assert (= bs!28978 (and d!120513 b!1013784)))

(assert (=> bs!28978 (= (= (Cons!21529 (h!22727 l!412) (t!30542 l!412)) (Cons!21529 lt!448235 lt!448229)) (= lambda!593 lambda!572))))

(declare-fun bs!28981 () Bool)

(assert (= bs!28981 (and d!120513 b!1013787)))

(assert (=> bs!28981 (= (= (Cons!21529 (h!22727 l!412) (t!30542 l!412)) (Cons!21529 lt!448226 lt!448231)) (= lambda!593 lambda!570))))

(declare-fun bs!28984 () Bool)

(assert (= bs!28984 (and d!120513 b!1013832)))

(assert (=> bs!28984 (= (= (Cons!21529 (h!22727 l!412) (t!30542 l!412)) (t!30542 l!412)) (= lambda!593 lambda!591))))

(assert (=> d!120513 true))

(assert (=> d!120513 true))

(assert (=> d!120513 true))

(assert (=> d!120513 (forall!238 lt!448140 lambda!593)))

(declare-fun lt!448267 () Unit!33102)

(declare-fun choose!1638 (List!21533 List!21534 B!1416 tuple2!15220) Unit!33102)

(assert (=> d!120513 (= lt!448267 (choose!1638 (t!30542 l!412) lt!448140 value!115 (h!22727 l!412)))))

(declare-fun e!570351 () Bool)

(assert (=> d!120513 e!570351))

(declare-fun res!680608 () Bool)

(assert (=> d!120513 (=> (not res!680608) (not e!570351))))

(assert (=> d!120513 (= res!680608 (isStrictlySorted!562 (t!30542 l!412)))))

(assert (=> d!120513 (= (lemmaForallGetValueByKeySameWithASmallerHead!33 (t!30542 l!412) lt!448140 value!115 (h!22727 l!412)) lt!448267)))

(declare-fun b!1013831 () Bool)

(declare-fun res!680607 () Bool)

(assert (=> b!1013831 (=> (not res!680607) (not e!570351))))

(declare-fun isEmpty!830 (List!21533) Bool)

(assert (=> b!1013831 (= res!680607 (not (isEmpty!830 (t!30542 l!412))))))

(declare-fun res!680606 () Bool)

(assert (=> b!1013832 (=> (not res!680606) (not e!570351))))

(assert (=> b!1013832 (= res!680606 (forall!238 lt!448140 lambda!591))))

(declare-fun b!1013833 () Bool)

(declare-fun head!935 (List!21533) tuple2!15220)

(assert (=> b!1013833 (= e!570351 (bvslt (_1!7620 (h!22727 l!412)) (_1!7620 (head!935 (t!30542 l!412)))))))

