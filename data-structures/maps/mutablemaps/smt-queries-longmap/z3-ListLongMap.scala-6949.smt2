; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!87552 () Bool)

(assert start!87552)

(declare-fun b!1013271 () Bool)

(declare-fun e!570052 () Bool)

(declare-datatypes ((B!1402 0))(
  ( (B!1403 (val!11785 Int)) )
))
(declare-datatypes ((tuple2!15206 0))(
  ( (tuple2!15207 (_1!7613 (_ BitVec 64)) (_2!7613 B!1402)) )
))
(declare-datatypes ((List!21519 0))(
  ( (Nil!21516) (Cons!21515 (h!22713 tuple2!15206) (t!30528 List!21519)) )
))
(declare-fun l!412 () List!21519)

(declare-fun ListPrimitiveSize!104 (List!21519) Int)

(assert (=> b!1013271 (= e!570052 (>= (ListPrimitiveSize!104 (t!30528 l!412)) (ListPrimitiveSize!104 l!412)))))

(declare-fun b!1013270 () Bool)

(declare-fun res!680432 () Bool)

(assert (=> b!1013270 (=> (not res!680432) (not e!570052))))

(declare-fun value!115 () B!1402)

(declare-datatypes ((List!21520 0))(
  ( (Nil!21517) (Cons!21516 (h!22714 (_ BitVec 64)) (t!30529 List!21520)) )
))
(declare-fun isEmpty!817 (List!21520) Bool)

(declare-fun getKeysOf!35 (List!21519 B!1402) List!21520)

(assert (=> b!1013270 (= res!680432 (not (isEmpty!817 (getKeysOf!35 (t!30528 l!412) value!115))))))

(declare-fun b!1013269 () Bool)

(declare-fun res!680433 () Bool)

(assert (=> b!1013269 (=> (not res!680433) (not e!570052))))

(get-info :version)

(assert (=> b!1013269 (= res!680433 (and ((_ is Cons!21515) l!412) (= (_2!7613 (h!22713 l!412)) value!115)))))

(declare-fun res!680434 () Bool)

(assert (=> start!87552 (=> (not res!680434) (not e!570052))))

(declare-fun isStrictlySorted!555 (List!21519) Bool)

(assert (=> start!87552 (= res!680434 (isStrictlySorted!555 l!412))))

(assert (=> start!87552 e!570052))

(declare-fun e!570053 () Bool)

(assert (=> start!87552 e!570053))

(declare-fun tp_is_empty!23469 () Bool)

(assert (=> start!87552 tp_is_empty!23469))

(declare-fun b!1013272 () Bool)

(declare-fun tp!70431 () Bool)

(assert (=> b!1013272 (= e!570053 (and tp_is_empty!23469 tp!70431))))

(assert (= (and start!87552 res!680434) b!1013269))

(assert (= (and b!1013269 res!680433) b!1013270))

(assert (= (and b!1013270 res!680432) b!1013271))

(assert (= (and start!87552 ((_ is Cons!21515) l!412)) b!1013272))

(declare-fun m!936481 () Bool)

(assert (=> b!1013271 m!936481))

(declare-fun m!936483 () Bool)

(assert (=> b!1013271 m!936483))

(declare-fun m!936485 () Bool)

(assert (=> b!1013270 m!936485))

(assert (=> b!1013270 m!936485))

(declare-fun m!936487 () Bool)

(assert (=> b!1013270 m!936487))

(declare-fun m!936489 () Bool)

(assert (=> start!87552 m!936489))

(check-sat tp_is_empty!23469 (not b!1013270) (not start!87552) (not b!1013272) (not b!1013271))
(check-sat)
(get-model)

(declare-fun d!120403 () Bool)

(declare-fun lt!447879 () Int)

(assert (=> d!120403 (>= lt!447879 0)))

(declare-fun e!570066 () Int)

(assert (=> d!120403 (= lt!447879 e!570066)))

(declare-fun c!102378 () Bool)

(assert (=> d!120403 (= c!102378 ((_ is Nil!21516) (t!30528 l!412)))))

(assert (=> d!120403 (= (ListPrimitiveSize!104 (t!30528 l!412)) lt!447879)))

(declare-fun b!1013293 () Bool)

(assert (=> b!1013293 (= e!570066 0)))

(declare-fun b!1013294 () Bool)

(assert (=> b!1013294 (= e!570066 (+ 1 (ListPrimitiveSize!104 (t!30528 (t!30528 l!412)))))))

(assert (= (and d!120403 c!102378) b!1013293))

(assert (= (and d!120403 (not c!102378)) b!1013294))

(declare-fun m!936501 () Bool)

(assert (=> b!1013294 m!936501))

(assert (=> b!1013271 d!120403))

(declare-fun d!120411 () Bool)

(declare-fun lt!447880 () Int)

(assert (=> d!120411 (>= lt!447880 0)))

(declare-fun e!570067 () Int)

(assert (=> d!120411 (= lt!447880 e!570067)))

(declare-fun c!102379 () Bool)

(assert (=> d!120411 (= c!102379 ((_ is Nil!21516) l!412))))

(assert (=> d!120411 (= (ListPrimitiveSize!104 l!412) lt!447880)))

(declare-fun b!1013295 () Bool)

(assert (=> b!1013295 (= e!570067 0)))

(declare-fun b!1013296 () Bool)

(assert (=> b!1013296 (= e!570067 (+ 1 (ListPrimitiveSize!104 (t!30528 l!412))))))

(assert (= (and d!120411 c!102379) b!1013295))

(assert (= (and d!120411 (not c!102379)) b!1013296))

(assert (=> b!1013296 m!936481))

(assert (=> b!1013271 d!120411))

(declare-fun d!120413 () Bool)

(declare-fun res!680454 () Bool)

(declare-fun e!570076 () Bool)

(assert (=> d!120413 (=> res!680454 e!570076)))

(assert (=> d!120413 (= res!680454 (or ((_ is Nil!21516) l!412) ((_ is Nil!21516) (t!30528 l!412))))))

(assert (=> d!120413 (= (isStrictlySorted!555 l!412) e!570076)))

(declare-fun b!1013307 () Bool)

(declare-fun e!570077 () Bool)

(assert (=> b!1013307 (= e!570076 e!570077)))

(declare-fun res!680455 () Bool)

(assert (=> b!1013307 (=> (not res!680455) (not e!570077))))

(assert (=> b!1013307 (= res!680455 (bvslt (_1!7613 (h!22713 l!412)) (_1!7613 (h!22713 (t!30528 l!412)))))))

(declare-fun b!1013308 () Bool)

(assert (=> b!1013308 (= e!570077 (isStrictlySorted!555 (t!30528 l!412)))))

(assert (= (and d!120413 (not res!680454)) b!1013307))

(assert (= (and b!1013307 res!680455) b!1013308))

(declare-fun m!936505 () Bool)

(assert (=> b!1013308 m!936505))

(assert (=> start!87552 d!120413))

(declare-fun d!120417 () Bool)

(assert (=> d!120417 (= (isEmpty!817 (getKeysOf!35 (t!30528 l!412) value!115)) ((_ is Nil!21517) (getKeysOf!35 (t!30528 l!412) value!115)))))

(assert (=> b!1013270 d!120417))

(declare-fun b!1013380 () Bool)

(assert (=> b!1013380 true))

(assert (=> b!1013380 true))

(assert (=> b!1013380 true))

(declare-fun bs!28913 () Bool)

(declare-fun b!1013377 () Bool)

(assert (= bs!28913 (and b!1013377 b!1013380)))

(declare-fun lt!447976 () tuple2!15206)

(declare-fun lt!447977 () tuple2!15206)

(declare-fun lambda!503 () Int)

(declare-fun lt!447975 () List!21519)

(declare-fun lambda!501 () Int)

(declare-fun lt!447973 () List!21519)

(assert (=> bs!28913 (= (= (Cons!21515 lt!447977 lt!447975) (Cons!21515 lt!447976 lt!447973)) (= lambda!503 lambda!501))))

(assert (=> b!1013377 true))

(assert (=> b!1013377 true))

(assert (=> b!1013377 true))

(declare-fun bs!28915 () Bool)

(declare-fun d!120423 () Bool)

(assert (= bs!28915 (and d!120423 b!1013380)))

(declare-fun lambda!505 () Int)

(assert (=> bs!28915 (= (= (t!30528 l!412) (Cons!21515 lt!447976 lt!447973)) (= lambda!505 lambda!501))))

(declare-fun bs!28916 () Bool)

(assert (= bs!28916 (and d!120423 b!1013377)))

(assert (=> bs!28916 (= (= (t!30528 l!412) (Cons!21515 lt!447977 lt!447975)) (= lambda!505 lambda!503))))

(assert (=> d!120423 true))

(assert (=> d!120423 true))

(declare-fun b!1013375 () Bool)

(declare-fun e!570109 () List!21520)

(declare-fun e!570110 () List!21520)

(assert (=> b!1013375 (= e!570109 e!570110)))

(declare-fun c!102413 () Bool)

(assert (=> b!1013375 (= c!102413 (and ((_ is Cons!21515) (t!30528 l!412)) (not (= (_2!7613 (h!22713 (t!30528 l!412))) value!115))))))

(declare-fun bm!42651 () Bool)

(declare-fun call!42654 () Bool)

(declare-fun call!42657 () List!21520)

(assert (=> bm!42651 (= call!42654 (isEmpty!817 call!42657))))

(declare-fun b!1013376 () Bool)

(declare-datatypes ((Unit!33076 0))(
  ( (Unit!33077) )
))
(declare-fun lt!447969 () Unit!33076)

(declare-fun e!570108 () Unit!33076)

(assert (=> b!1013376 (= lt!447969 e!570108)))

(declare-fun c!102414 () Bool)

(assert (=> b!1013376 (= c!102414 (not call!42654))))

(declare-fun lt!447972 () List!21520)

(assert (=> b!1013376 (= lt!447972 call!42657)))

(assert (=> b!1013376 (= e!570110 call!42657)))

(declare-fun lt!447980 () List!21520)

(declare-fun call!42655 () Bool)

(declare-fun bm!42652 () Bool)

(declare-fun lt!447971 () List!21520)

(declare-fun c!102415 () Bool)

(declare-fun forall!231 (List!21520 Int) Bool)

(assert (=> bm!42652 (= call!42655 (forall!231 (ite c!102415 lt!447971 lt!447980) (ite c!102415 lambda!501 lambda!503)))))

(declare-fun b!1013378 () Bool)

(assert (=> b!1013378 (= e!570109 (Cons!21516 (_1!7613 (h!22713 (t!30528 l!412))) call!42657))))

(declare-fun c!102412 () Bool)

(assert (=> b!1013378 (= c!102412 (not call!42654))))

(declare-fun lt!447978 () Unit!33076)

(declare-fun e!570111 () Unit!33076)

(assert (=> b!1013378 (= lt!447978 e!570111)))

(declare-fun bm!42653 () Bool)

(declare-fun call!42656 () Unit!33076)

(declare-fun lemmaForallGetValueByKeySameWithASmallerHead!26 (List!21519 List!21520 B!1402 tuple2!15206) Unit!33076)

(assert (=> bm!42653 (= call!42656 (lemmaForallGetValueByKeySameWithASmallerHead!26 (ite c!102415 lt!447973 lt!447975) (ite c!102415 lt!447971 lt!447980) value!115 (ite c!102415 lt!447976 lt!447977)))))

(declare-fun b!1013379 () Bool)

(declare-fun Unit!33079 () Unit!33076)

(assert (=> b!1013379 (= e!570111 Unit!33079)))

(assert (=> b!1013380 call!42655))

(declare-fun lt!447974 () Unit!33076)

(assert (=> b!1013380 (= lt!447974 call!42656)))

(assert (=> b!1013380 (= lt!447976 (h!22713 (t!30528 l!412)))))

(assert (=> b!1013380 (= lt!447971 call!42657)))

(assert (=> b!1013380 (= lt!447973 (t!30528 (t!30528 l!412)))))

(assert (=> b!1013380 (= e!570111 lt!447974)))

(declare-fun b!1013381 () Bool)

(declare-fun Unit!33080 () Unit!33076)

(assert (=> b!1013381 (= e!570108 Unit!33080)))

(declare-fun lt!447979 () Unit!33076)

(assert (=> b!1013377 (= e!570108 lt!447979)))

(assert (=> b!1013377 (= lt!447975 (t!30528 (t!30528 l!412)))))

(assert (=> b!1013377 (= lt!447980 call!42657)))

(assert (=> b!1013377 (= lt!447977 (h!22713 (t!30528 l!412)))))

(assert (=> b!1013377 (= lt!447979 call!42656)))

(assert (=> b!1013377 call!42655))

(declare-fun lt!447970 () List!21520)

(assert (=> d!120423 (forall!231 lt!447970 lambda!505)))

(assert (=> d!120423 (= lt!447970 e!570109)))

(assert (=> d!120423 (= c!102415 (and ((_ is Cons!21515) (t!30528 l!412)) (= (_2!7613 (h!22713 (t!30528 l!412))) value!115)))))

(assert (=> d!120423 (isStrictlySorted!555 (t!30528 l!412))))

(assert (=> d!120423 (= (getKeysOf!35 (t!30528 l!412) value!115) lt!447970)))

(declare-fun b!1013382 () Bool)

(assert (=> b!1013382 (= e!570110 Nil!21517)))

(declare-fun bm!42654 () Bool)

(assert (=> bm!42654 (= call!42657 (getKeysOf!35 (t!30528 (t!30528 l!412)) value!115))))

(assert (= (and d!120423 c!102415) b!1013378))

(assert (= (and d!120423 (not c!102415)) b!1013375))

(assert (= (and b!1013378 c!102412) b!1013380))

(assert (= (and b!1013378 (not c!102412)) b!1013379))

(assert (= (and b!1013375 c!102413) b!1013376))

(assert (= (and b!1013375 (not c!102413)) b!1013382))

(assert (= (and b!1013376 c!102414) b!1013377))

(assert (= (and b!1013376 (not c!102414)) b!1013381))

(assert (= (or b!1013380 b!1013377) bm!42653))

(assert (= (or b!1013380 b!1013377) bm!42652))

(assert (= (or b!1013378 b!1013380 b!1013376 b!1013377) bm!42654))

(assert (= (or b!1013378 b!1013376) bm!42651))

(declare-fun m!936521 () Bool)

(assert (=> bm!42651 m!936521))

(declare-fun m!936523 () Bool)

(assert (=> bm!42652 m!936523))

(declare-fun m!936525 () Bool)

(assert (=> bm!42654 m!936525))

(declare-fun m!936527 () Bool)

(assert (=> d!120423 m!936527))

(assert (=> d!120423 m!936505))

(declare-fun m!936529 () Bool)

(assert (=> bm!42653 m!936529))

(assert (=> b!1013270 d!120423))

(declare-fun b!1013419 () Bool)

(declare-fun e!570124 () Bool)

(declare-fun tp!70439 () Bool)

(assert (=> b!1013419 (= e!570124 (and tp_is_empty!23469 tp!70439))))

(assert (=> b!1013272 (= tp!70431 e!570124)))

(assert (= (and b!1013272 ((_ is Cons!21515) (t!30528 l!412))) b!1013419))

(check-sat (not bm!42651) (not bm!42652) tp_is_empty!23469 (not b!1013308) (not b!1013296) (not bm!42653) (not d!120423) (not b!1013419) (not bm!42654) (not b!1013294))
(check-sat)
