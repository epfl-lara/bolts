; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!87550 () Bool)

(assert start!87550)

(declare-fun b!1013259 () Bool)

(declare-fun e!570046 () Bool)

(declare-datatypes ((B!1400 0))(
  ( (B!1401 (val!11784 Int)) )
))
(declare-datatypes ((tuple2!15204 0))(
  ( (tuple2!15205 (_1!7612 (_ BitVec 64)) (_2!7612 B!1400)) )
))
(declare-datatypes ((List!21517 0))(
  ( (Nil!21514) (Cons!21513 (h!22711 tuple2!15204) (t!30526 List!21517)) )
))
(declare-fun l!412 () List!21517)

(declare-fun ListPrimitiveSize!103 (List!21517) Int)

(assert (=> b!1013259 (= e!570046 (>= (ListPrimitiveSize!103 (t!30526 l!412)) (ListPrimitiveSize!103 l!412)))))

(declare-fun b!1013257 () Bool)

(declare-fun res!680423 () Bool)

(assert (=> b!1013257 (=> (not res!680423) (not e!570046))))

(declare-fun value!115 () B!1400)

(assert (=> b!1013257 (= res!680423 (and (is-Cons!21513 l!412) (= (_2!7612 (h!22711 l!412)) value!115)))))

(declare-fun b!1013258 () Bool)

(declare-fun res!680425 () Bool)

(assert (=> b!1013258 (=> (not res!680425) (not e!570046))))

(declare-datatypes ((List!21518 0))(
  ( (Nil!21515) (Cons!21514 (h!22712 (_ BitVec 64)) (t!30527 List!21518)) )
))
(declare-fun isEmpty!816 (List!21518) Bool)

(declare-fun getKeysOf!34 (List!21517 B!1400) List!21518)

(assert (=> b!1013258 (= res!680425 (not (isEmpty!816 (getKeysOf!34 (t!30526 l!412) value!115))))))

(declare-fun b!1013260 () Bool)

(declare-fun e!570047 () Bool)

(declare-fun tp_is_empty!23467 () Bool)

(declare-fun tp!70428 () Bool)

(assert (=> b!1013260 (= e!570047 (and tp_is_empty!23467 tp!70428))))

(declare-fun res!680424 () Bool)

(assert (=> start!87550 (=> (not res!680424) (not e!570046))))

(declare-fun isStrictlySorted!554 (List!21517) Bool)

(assert (=> start!87550 (= res!680424 (isStrictlySorted!554 l!412))))

(assert (=> start!87550 e!570046))

(assert (=> start!87550 e!570047))

(assert (=> start!87550 tp_is_empty!23467))

(assert (= (and start!87550 res!680424) b!1013257))

(assert (= (and b!1013257 res!680423) b!1013258))

(assert (= (and b!1013258 res!680425) b!1013259))

(assert (= (and start!87550 (is-Cons!21513 l!412)) b!1013260))

(declare-fun m!936471 () Bool)

(assert (=> b!1013259 m!936471))

(declare-fun m!936473 () Bool)

(assert (=> b!1013259 m!936473))

(declare-fun m!936475 () Bool)

(assert (=> b!1013258 m!936475))

(assert (=> b!1013258 m!936475))

(declare-fun m!936477 () Bool)

(assert (=> b!1013258 m!936477))

(declare-fun m!936479 () Bool)

(assert (=> start!87550 m!936479))

(push 1)

(assert (not b!1013260))

(assert (not b!1013258))

(assert tp_is_empty!23467)

(assert (not start!87550))

(assert (not b!1013259))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!120407 () Bool)

(declare-fun res!680448 () Bool)

(declare-fun e!570068 () Bool)

(assert (=> d!120407 (=> res!680448 e!570068)))

(assert (=> d!120407 (= res!680448 (or (is-Nil!21514 l!412) (is-Nil!21514 (t!30526 l!412))))))

(assert (=> d!120407 (= (isStrictlySorted!554 l!412) e!570068)))

(declare-fun b!1013297 () Bool)

(declare-fun e!570069 () Bool)

(assert (=> b!1013297 (= e!570068 e!570069)))

(declare-fun res!680449 () Bool)

(assert (=> b!1013297 (=> (not res!680449) (not e!570069))))

(assert (=> b!1013297 (= res!680449 (bvslt (_1!7612 (h!22711 l!412)) (_1!7612 (h!22711 (t!30526 l!412)))))))

(declare-fun b!1013298 () Bool)

(assert (=> b!1013298 (= e!570069 (isStrictlySorted!554 (t!30526 l!412)))))

(assert (= (and d!120407 (not res!680448)) b!1013297))

(assert (= (and b!1013297 res!680449) b!1013298))

(declare-fun m!936503 () Bool)

(assert (=> b!1013298 m!936503))

(assert (=> start!87550 d!120407))

(declare-fun d!120415 () Bool)

(declare-fun lt!447883 () Int)

(assert (=> d!120415 (>= lt!447883 0)))

(declare-fun e!570078 () Int)

(assert (=> d!120415 (= lt!447883 e!570078)))

(declare-fun c!102382 () Bool)

(assert (=> d!120415 (= c!102382 (is-Nil!21514 (t!30526 l!412)))))

(assert (=> d!120415 (= (ListPrimitiveSize!103 (t!30526 l!412)) lt!447883)))

(declare-fun b!1013309 () Bool)

(assert (=> b!1013309 (= e!570078 0)))

(declare-fun b!1013310 () Bool)

(assert (=> b!1013310 (= e!570078 (+ 1 (ListPrimitiveSize!103 (t!30526 (t!30526 l!412)))))))

(assert (= (and d!120415 c!102382) b!1013309))

(assert (= (and d!120415 (not c!102382)) b!1013310))

(declare-fun m!936507 () Bool)

(assert (=> b!1013310 m!936507))

(assert (=> b!1013259 d!120415))

(declare-fun d!120419 () Bool)

(declare-fun lt!447884 () Int)

(assert (=> d!120419 (>= lt!447884 0)))

(declare-fun e!570079 () Int)

(assert (=> d!120419 (= lt!447884 e!570079)))

(declare-fun c!102383 () Bool)

(assert (=> d!120419 (= c!102383 (is-Nil!21514 l!412))))

(assert (=> d!120419 (= (ListPrimitiveSize!103 l!412) lt!447884)))

(declare-fun b!1013311 () Bool)

(assert (=> b!1013311 (= e!570079 0)))

(declare-fun b!1013312 () Bool)

(assert (=> b!1013312 (= e!570079 (+ 1 (ListPrimitiveSize!103 (t!30526 l!412))))))

(assert (= (and d!120419 c!102383) b!1013311))

(assert (= (and d!120419 (not c!102383)) b!1013312))

(assert (=> b!1013312 m!936471))

(assert (=> b!1013259 d!120419))

(declare-fun d!120421 () Bool)

(assert (=> d!120421 (= (isEmpty!816 (getKeysOf!34 (t!30526 l!412) value!115)) (is-Nil!21515 (getKeysOf!34 (t!30526 l!412) value!115)))))

(assert (=> b!1013258 d!120421))

(declare-fun b!1013384 () Bool)

(assert (=> b!1013384 true))

(assert (=> b!1013384 true))

(assert (=> b!1013384 true))

(declare-fun bs!28914 () Bool)

(declare-fun b!1013390 () Bool)

(assert (= bs!28914 (and b!1013390 b!1013384)))

(declare-fun lt!447982 () tuple2!15204)

(declare-fun lambda!504 () Int)

(declare-fun lt!447986 () List!21517)

(declare-fun lambda!502 () Int)

(declare-fun lt!447987 () List!21517)

(declare-fun lt!447991 () tuple2!15204)

(assert (=> bs!28914 (= (= (Cons!21513 lt!447991 lt!447987) (Cons!21513 lt!447982 lt!447986)) (= lambda!504 lambda!502))))

(assert (=> b!1013390 true))

(assert (=> b!1013390 true))

(assert (=> b!1013390 true))

(declare-fun bs!28917 () Bool)

(declare-fun d!120425 () Bool)

(assert (= bs!28917 (and d!120425 b!1013384)))

(declare-fun lambda!506 () Int)

(assert (=> bs!28917 (= (= (t!30526 l!412) (Cons!21513 lt!447982 lt!447986)) (= lambda!506 lambda!502))))

(declare-fun bs!28918 () Bool)

(assert (= bs!28918 (and d!120425 b!1013390)))

(assert (=> bs!28918 (= (= (t!30526 l!412) (Cons!21513 lt!447991 lt!447987)) (= lambda!506 lambda!504))))

(assert (=> d!120425 true))

(assert (=> d!120425 true))

(declare-fun b!1013383 () Bool)

(declare-datatypes ((Unit!33074 0))(
  ( (Unit!33075) )
))
(declare-fun lt!447983 () Unit!33074)

(declare-fun e!570114 () Unit!33074)

(assert (=> b!1013383 (= lt!447983 e!570114)))

(declare-fun c!102417 () Bool)

(declare-fun call!42661 () Bool)

(assert (=> b!1013383 (= c!102417 (not call!42661))))

(declare-fun lt!447985 () List!21518)

(declare-fun call!42658 () List!21518)

(assert (=> b!1013383 (= lt!447985 call!42658)))

(declare-fun e!570112 () List!21518)

(assert (=> b!1013383 (= e!570112 call!42658)))

(declare-fun call!42660 () Bool)

(assert (=> b!1013384 call!42660))

(declare-fun lt!447984 () Unit!33074)

(declare-fun call!42659 () Unit!33074)

(assert (=> b!1013384 (= lt!447984 call!42659)))

(assert (=> b!1013384 (= lt!447982 (h!22711 (t!30526 l!412)))))

(declare-fun lt!447990 () List!21518)

(assert (=> b!1013384 (= lt!447990 call!42658)))

(assert (=> b!1013384 (= lt!447986 (t!30526 (t!30526 l!412)))))

(declare-fun e!570113 () Unit!33074)

(assert (=> b!1013384 (= e!570113 lt!447984)))

(declare-fun b!1013385 () Bool)

(declare-fun e!570115 () List!21518)

(assert (=> b!1013385 (= e!570115 (Cons!21514 (_1!7612 (h!22711 (t!30526 l!412))) call!42658))))

(declare-fun c!102418 () Bool)

(assert (=> b!1013385 (= c!102418 (not call!42661))))

(declare-fun lt!447989 () Unit!33074)

(assert (=> b!1013385 (= lt!447989 e!570113)))

(declare-fun bm!42655 () Bool)

(assert (=> bm!42655 (= call!42661 (isEmpty!816 call!42658))))

(declare-fun c!102416 () Bool)

(declare-fun bm!42656 () Bool)

(declare-fun lt!447992 () List!21518)

(declare-fun forall!232 (List!21518 Int) Bool)

(assert (=> bm!42656 (= call!42660 (forall!232 (ite c!102416 lt!447990 lt!447992) (ite c!102416 lambda!502 lambda!504)))))

(declare-fun bm!42657 () Bool)

(declare-fun lemmaForallGetValueByKeySameWithASmallerHead!27 (List!21517 List!21518 B!1400 tuple2!15204) Unit!33074)

(assert (=> bm!42657 (= call!42659 (lemmaForallGetValueByKeySameWithASmallerHead!27 (ite c!102416 lt!447986 lt!447987) (ite c!102416 lt!447990 lt!447992) value!115 (ite c!102416 lt!447982 lt!447991)))))

(declare-fun b!1013386 () Bool)

(assert (=> b!1013386 (= e!570112 Nil!21515)))

(declare-fun lt!447981 () List!21518)

(assert (=> d!120425 (forall!232 lt!447981 lambda!506)))

(assert (=> d!120425 (= lt!447981 e!570115)))

(assert (=> d!120425 (= c!102416 (and (is-Cons!21513 (t!30526 l!412)) (= (_2!7612 (h!22711 (t!30526 l!412))) value!115)))))

(assert (=> d!120425 (isStrictlySorted!554 (t!30526 l!412))))

(assert (=> d!120425 (= (getKeysOf!34 (t!30526 l!412) value!115) lt!447981)))

(declare-fun bm!42658 () Bool)

(assert (=> bm!42658 (= call!42658 (getKeysOf!34 (t!30526 (t!30526 l!412)) value!115))))

(declare-fun b!1013387 () Bool)

(declare-fun Unit!33081 () Unit!33074)

(assert (=> b!1013387 (= e!570114 Unit!33081)))

(declare-fun b!1013388 () Bool)

(declare-fun Unit!33082 () Unit!33074)

(assert (=> b!1013388 (= e!570113 Unit!33082)))

(declare-fun b!1013389 () Bool)

(assert (=> b!1013389 (= e!570115 e!570112)))

(declare-fun c!102419 () Bool)

(assert (=> b!1013389 (= c!102419 (and (is-Cons!21513 (t!30526 l!412)) (not (= (_2!7612 (h!22711 (t!30526 l!412))) value!115))))))

(declare-fun lt!447988 () Unit!33074)

(assert (=> b!1013390 (= e!570114 lt!447988)))

(assert (=> b!1013390 (= lt!447987 (t!30526 (t!30526 l!412)))))

(assert (=> b!1013390 (= lt!447992 call!42658)))

(assert (=> b!1013390 (= lt!447991 (h!22711 (t!30526 l!412)))))

(assert (=> b!1013390 (= lt!447988 call!42659)))

(assert (=> b!1013390 call!42660))

(assert (= (and d!120425 c!102416) b!1013385))

(assert (= (and d!120425 (not c!102416)) b!1013389))

(assert (= (and b!1013385 c!102418) b!1013384))

(assert (= (and b!1013385 (not c!102418)) b!1013388))

(assert (= (and b!1013389 c!102419) b!1013383))

(assert (= (and b!1013389 (not c!102419)) b!1013386))

(assert (= (and b!1013383 c!102417) b!1013390))

(assert (= (and b!1013383 (not c!102417)) b!1013387))

(assert (= (or b!1013384 b!1013390) bm!42657))

(assert (= (or b!1013384 b!1013390) bm!42656))

(assert (= (or b!1013385 b!1013384 b!1013383 b!1013390) bm!42658))

(assert (= (or b!1013385 b!1013383) bm!42655))

(declare-fun m!936533 () Bool)

(assert (=> bm!42656 m!936533))

(declare-fun m!936535 () Bool)

(assert (=> bm!42657 m!936535))

(declare-fun m!936537 () Bool)

(assert (=> bm!42655 m!936537))

(declare-fun m!936539 () Bool)

(assert (=> bm!42658 m!936539))

(declare-fun m!936541 () Bool)

(assert (=> d!120425 m!936541))

(assert (=> d!120425 m!936503))

(assert (=> b!1013258 d!120425))

(declare-fun b!1013420 () Bool)

(declare-fun e!570125 () Bool)

(declare-fun tp!70440 () Bool)

(assert (=> b!1013420 (= e!570125 (and tp_is_empty!23467 tp!70440))))

(assert (=> b!1013260 (= tp!70428 e!570125)))

(assert (= (and b!1013260 (is-Cons!21513 (t!30526 l!412))) b!1013420))

(push 1)

