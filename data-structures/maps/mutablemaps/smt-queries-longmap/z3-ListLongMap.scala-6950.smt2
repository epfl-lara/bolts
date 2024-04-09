; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!87582 () Bool)

(assert start!87582)

(declare-fun b!1013475 () Bool)

(assert (=> b!1013475 true))

(assert (=> b!1013475 true))

(declare-fun b!1013471 () Bool)

(declare-fun res!680495 () Bool)

(declare-fun e!570155 () Bool)

(assert (=> b!1013471 (=> res!680495 e!570155)))

(declare-datatypes ((B!1408 0))(
  ( (B!1409 (val!11788 Int)) )
))
(declare-datatypes ((tuple2!15212 0))(
  ( (tuple2!15213 (_1!7616 (_ BitVec 64)) (_2!7616 B!1408)) )
))
(declare-datatypes ((List!21525 0))(
  ( (Nil!21522) (Cons!21521 (h!22719 tuple2!15212) (t!30534 List!21525)) )
))
(declare-fun l!412 () List!21525)

(declare-fun isEmpty!821 (List!21525) Bool)

(assert (=> b!1013471 (= res!680495 (isEmpty!821 (t!30534 l!412)))))

(declare-fun b!1013472 () Bool)

(declare-fun e!570158 () Bool)

(assert (=> b!1013472 (= e!570158 e!570155)))

(declare-fun res!680496 () Bool)

(assert (=> b!1013472 (=> res!680496 e!570155)))

(declare-fun isStrictlySorted!558 (List!21525) Bool)

(assert (=> b!1013472 (= res!680496 (not (isStrictlySorted!558 (t!30534 l!412))))))

(declare-fun b!1013473 () Bool)

(declare-fun head!931 (List!21525) tuple2!15212)

(assert (=> b!1013473 (= e!570155 (bvsge (_1!7616 (h!22719 l!412)) (_1!7616 (head!931 (t!30534 l!412)))))))

(declare-fun b!1013474 () Bool)

(declare-fun e!570157 () Bool)

(assert (=> b!1013474 (= e!570157 e!570158)))

(declare-fun res!680497 () Bool)

(assert (=> b!1013474 (=> (not res!680497) (not e!570158))))

(declare-datatypes ((List!21526 0))(
  ( (Nil!21523) (Cons!21522 (h!22720 (_ BitVec 64)) (t!30535 List!21526)) )
))
(declare-fun lt!448002 () List!21526)

(declare-fun isEmpty!822 (List!21526) Bool)

(assert (=> b!1013474 (= res!680497 (not (isEmpty!822 lt!448002)))))

(declare-fun value!115 () B!1408)

(declare-fun getKeysOf!38 (List!21525 B!1408) List!21526)

(assert (=> b!1013474 (= lt!448002 (getKeysOf!38 (t!30534 l!412) value!115))))

(declare-fun res!680492 () Bool)

(assert (=> b!1013475 (=> res!680492 e!570155)))

(declare-fun lambda!512 () Int)

(declare-fun forall!234 (List!21526 Int) Bool)

(assert (=> b!1013475 (= res!680492 (not (forall!234 lt!448002 lambda!512)))))

(declare-fun b!1013476 () Bool)

(declare-fun e!570156 () Bool)

(declare-fun tp_is_empty!23475 () Bool)

(declare-fun tp!70449 () Bool)

(assert (=> b!1013476 (= e!570156 (and tp_is_empty!23475 tp!70449))))

(declare-fun res!680494 () Bool)

(assert (=> start!87582 (=> (not res!680494) (not e!570157))))

(assert (=> start!87582 (= res!680494 (isStrictlySorted!558 l!412))))

(assert (=> start!87582 e!570157))

(assert (=> start!87582 e!570156))

(assert (=> start!87582 tp_is_empty!23475))

(declare-fun b!1013477 () Bool)

(declare-fun res!680493 () Bool)

(assert (=> b!1013477 (=> (not res!680493) (not e!570157))))

(get-info :version)

(assert (=> b!1013477 (= res!680493 (and ((_ is Cons!21521) l!412) (= (_2!7616 (h!22719 l!412)) value!115)))))

(assert (= (and start!87582 res!680494) b!1013477))

(assert (= (and b!1013477 res!680493) b!1013474))

(assert (= (and b!1013474 res!680497) b!1013472))

(assert (= (and b!1013472 (not res!680496)) b!1013471))

(assert (= (and b!1013471 (not res!680495)) b!1013475))

(assert (= (and b!1013475 (not res!680492)) b!1013473))

(assert (= (and start!87582 ((_ is Cons!21521) l!412)) b!1013476))

(declare-fun m!936557 () Bool)

(assert (=> b!1013475 m!936557))

(declare-fun m!936559 () Bool)

(assert (=> b!1013474 m!936559))

(declare-fun m!936561 () Bool)

(assert (=> b!1013474 m!936561))

(declare-fun m!936563 () Bool)

(assert (=> start!87582 m!936563))

(declare-fun m!936565 () Bool)

(assert (=> b!1013473 m!936565))

(declare-fun m!936567 () Bool)

(assert (=> b!1013471 m!936567))

(declare-fun m!936569 () Bool)

(assert (=> b!1013472 m!936569))

(check-sat (not b!1013472) (not b!1013471) (not b!1013474) (not b!1013475) (not b!1013476) (not b!1013473) tp_is_empty!23475 (not start!87582))
(check-sat)
(get-model)

(declare-fun d!120435 () Bool)

(assert (=> d!120435 (= (head!931 (t!30534 l!412)) (h!22719 (t!30534 l!412)))))

(assert (=> b!1013473 d!120435))

(declare-fun d!120437 () Bool)

(assert (=> d!120437 (= (isEmpty!821 (t!30534 l!412)) ((_ is Nil!21522) (t!30534 l!412)))))

(assert (=> b!1013471 d!120437))

(declare-fun d!120439 () Bool)

(declare-fun res!680520 () Bool)

(declare-fun e!570175 () Bool)

(assert (=> d!120439 (=> res!680520 e!570175)))

(assert (=> d!120439 (= res!680520 (or ((_ is Nil!21522) (t!30534 l!412)) ((_ is Nil!21522) (t!30534 (t!30534 l!412)))))))

(assert (=> d!120439 (= (isStrictlySorted!558 (t!30534 l!412)) e!570175)))

(declare-fun b!1013511 () Bool)

(declare-fun e!570176 () Bool)

(assert (=> b!1013511 (= e!570175 e!570176)))

(declare-fun res!680521 () Bool)

(assert (=> b!1013511 (=> (not res!680521) (not e!570176))))

(assert (=> b!1013511 (= res!680521 (bvslt (_1!7616 (h!22719 (t!30534 l!412))) (_1!7616 (h!22719 (t!30534 (t!30534 l!412))))))))

(declare-fun b!1013512 () Bool)

(assert (=> b!1013512 (= e!570176 (isStrictlySorted!558 (t!30534 (t!30534 l!412))))))

(assert (= (and d!120439 (not res!680520)) b!1013511))

(assert (= (and b!1013511 res!680521) b!1013512))

(declare-fun m!936585 () Bool)

(assert (=> b!1013512 m!936585))

(assert (=> b!1013472 d!120439))

(declare-fun d!120445 () Bool)

(declare-fun res!680522 () Bool)

(declare-fun e!570177 () Bool)

(assert (=> d!120445 (=> res!680522 e!570177)))

(assert (=> d!120445 (= res!680522 (or ((_ is Nil!21522) l!412) ((_ is Nil!21522) (t!30534 l!412))))))

(assert (=> d!120445 (= (isStrictlySorted!558 l!412) e!570177)))

(declare-fun b!1013513 () Bool)

(declare-fun e!570178 () Bool)

(assert (=> b!1013513 (= e!570177 e!570178)))

(declare-fun res!680523 () Bool)

(assert (=> b!1013513 (=> (not res!680523) (not e!570178))))

(assert (=> b!1013513 (= res!680523 (bvslt (_1!7616 (h!22719 l!412)) (_1!7616 (h!22719 (t!30534 l!412)))))))

(declare-fun b!1013514 () Bool)

(assert (=> b!1013514 (= e!570178 (isStrictlySorted!558 (t!30534 l!412)))))

(assert (= (and d!120445 (not res!680522)) b!1013513))

(assert (= (and b!1013513 res!680523) b!1013514))

(assert (=> b!1013514 m!936569))

(assert (=> start!87582 d!120445))

(declare-fun d!120449 () Bool)

(declare-fun res!680534 () Bool)

(declare-fun e!570189 () Bool)

(assert (=> d!120449 (=> res!680534 e!570189)))

(assert (=> d!120449 (= res!680534 ((_ is Nil!21523) lt!448002))))

(assert (=> d!120449 (= (forall!234 lt!448002 lambda!512) e!570189)))

(declare-fun b!1013525 () Bool)

(declare-fun e!570190 () Bool)

(assert (=> b!1013525 (= e!570189 e!570190)))

(declare-fun res!680535 () Bool)

(assert (=> b!1013525 (=> (not res!680535) (not e!570190))))

(declare-fun dynLambda!1886 (Int (_ BitVec 64)) Bool)

(assert (=> b!1013525 (= res!680535 (dynLambda!1886 lambda!512 (h!22720 lt!448002)))))

(declare-fun b!1013526 () Bool)

(assert (=> b!1013526 (= e!570190 (forall!234 (t!30535 lt!448002) lambda!512))))

(assert (= (and d!120449 (not res!680534)) b!1013525))

(assert (= (and b!1013525 res!680535) b!1013526))

(declare-fun b_lambda!15283 () Bool)

(assert (=> (not b_lambda!15283) (not b!1013525)))

(declare-fun m!936589 () Bool)

(assert (=> b!1013525 m!936589))

(declare-fun m!936591 () Bool)

(assert (=> b!1013526 m!936591))

(assert (=> b!1013475 d!120449))

(declare-fun d!120455 () Bool)

(assert (=> d!120455 (= (isEmpty!822 lt!448002) ((_ is Nil!21523) lt!448002))))

(assert (=> b!1013474 d!120455))

(declare-fun bs!28927 () Bool)

(declare-fun b!1013595 () Bool)

(assert (= bs!28927 (and b!1013595 b!1013475)))

(declare-fun lambda!536 () Int)

(declare-fun lt!448096 () tuple2!15212)

(declare-fun lt!448093 () List!21525)

(assert (=> bs!28927 (= (= (Cons!21521 lt!448096 lt!448093) (t!30534 l!412)) (= lambda!536 lambda!512))))

(assert (=> b!1013595 true))

(assert (=> b!1013595 true))

(assert (=> b!1013595 true))

(declare-fun bs!28929 () Bool)

(declare-fun b!1013597 () Bool)

(assert (= bs!28929 (and b!1013597 b!1013475)))

(declare-fun lt!448100 () List!21525)

(declare-fun lambda!538 () Int)

(declare-fun lt!448098 () tuple2!15212)

(assert (=> bs!28929 (= (= (Cons!21521 lt!448098 lt!448100) (t!30534 l!412)) (= lambda!538 lambda!512))))

(declare-fun bs!28930 () Bool)

(assert (= bs!28930 (and b!1013597 b!1013595)))

(assert (=> bs!28930 (= (= (Cons!21521 lt!448098 lt!448100) (Cons!21521 lt!448096 lt!448093)) (= lambda!538 lambda!536))))

(assert (=> b!1013597 true))

(assert (=> b!1013597 true))

(assert (=> b!1013597 true))

(declare-fun bs!28932 () Bool)

(declare-fun d!120457 () Bool)

(assert (= bs!28932 (and d!120457 b!1013475)))

(declare-fun lambda!540 () Int)

(assert (=> bs!28932 (= lambda!540 lambda!512)))

(declare-fun bs!28933 () Bool)

(assert (= bs!28933 (and d!120457 b!1013595)))

(assert (=> bs!28933 (= (= (t!30534 l!412) (Cons!21521 lt!448096 lt!448093)) (= lambda!540 lambda!536))))

(declare-fun bs!28934 () Bool)

(assert (= bs!28934 (and d!120457 b!1013597)))

(assert (=> bs!28934 (= (= (t!30534 l!412) (Cons!21521 lt!448098 lt!448100)) (= lambda!540 lambda!538))))

(assert (=> d!120457 true))

(assert (=> d!120457 true))

(declare-fun b!1013591 () Bool)

(declare-fun e!570227 () List!21526)

(declare-fun e!570226 () List!21526)

(assert (=> b!1013591 (= e!570227 e!570226)))

(declare-fun c!102455 () Bool)

(assert (=> b!1013591 (= c!102455 (and ((_ is Cons!21521) (t!30534 l!412)) (not (= (_2!7616 (h!22719 (t!30534 l!412))) value!115))))))

(declare-fun b!1013592 () Bool)

(declare-datatypes ((Unit!33087 0))(
  ( (Unit!33088) )
))
(declare-fun e!570228 () Unit!33087)

(declare-fun Unit!33089 () Unit!33087)

(assert (=> b!1013592 (= e!570228 Unit!33089)))

(declare-fun b!1013593 () Bool)

(declare-fun e!570225 () Unit!33087)

(declare-fun Unit!33090 () Unit!33087)

(assert (=> b!1013593 (= e!570225 Unit!33090)))

(declare-fun lt!448091 () List!21526)

(assert (=> d!120457 (forall!234 lt!448091 lambda!540)))

(assert (=> d!120457 (= lt!448091 e!570227)))

(declare-fun c!102452 () Bool)

(assert (=> d!120457 (= c!102452 (and ((_ is Cons!21521) (t!30534 l!412)) (= (_2!7616 (h!22719 (t!30534 l!412))) value!115)))))

(assert (=> d!120457 (isStrictlySorted!558 (t!30534 l!412))))

(assert (=> d!120457 (= (getKeysOf!38 (t!30534 l!412) value!115) lt!448091)))

(declare-fun b!1013594 () Bool)

(declare-fun lt!448101 () Unit!33087)

(assert (=> b!1013594 (= lt!448101 e!570225)))

(declare-fun c!102454 () Bool)

(declare-fun call!42692 () Bool)

(assert (=> b!1013594 (= c!102454 (not call!42692))))

(declare-fun lt!448090 () List!21526)

(declare-fun call!42691 () List!21526)

(assert (=> b!1013594 (= lt!448090 call!42691)))

(assert (=> b!1013594 (= e!570226 call!42691)))

(declare-fun call!42690 () Bool)

(assert (=> b!1013595 call!42690))

(declare-fun lt!448099 () Unit!33087)

(declare-fun call!42693 () Unit!33087)

(assert (=> b!1013595 (= lt!448099 call!42693)))

(assert (=> b!1013595 (= lt!448096 (h!22719 (t!30534 l!412)))))

(declare-fun lt!448097 () List!21526)

(assert (=> b!1013595 (= lt!448097 call!42691)))

(assert (=> b!1013595 (= lt!448093 (t!30534 (t!30534 l!412)))))

(assert (=> b!1013595 (= e!570228 lt!448099)))

(declare-fun bm!42687 () Bool)

(declare-fun lt!448095 () List!21526)

(declare-fun lemmaForallGetValueByKeySameWithASmallerHead!29 (List!21525 List!21526 B!1408 tuple2!15212) Unit!33087)

(assert (=> bm!42687 (= call!42693 (lemmaForallGetValueByKeySameWithASmallerHead!29 (ite c!102452 lt!448093 lt!448100) (ite c!102452 lt!448097 lt!448095) value!115 (ite c!102452 lt!448096 lt!448098)))))

(declare-fun bm!42688 () Bool)

(assert (=> bm!42688 (= call!42691 (getKeysOf!38 (t!30534 (t!30534 l!412)) value!115))))

(declare-fun bm!42689 () Bool)

(assert (=> bm!42689 (= call!42690 (forall!234 (ite c!102452 lt!448097 lt!448095) (ite c!102452 lambda!536 lambda!538)))))

(declare-fun b!1013596 () Bool)

(assert (=> b!1013596 (= e!570226 Nil!21523)))

(declare-fun lt!448094 () Unit!33087)

(assert (=> b!1013597 (= e!570225 lt!448094)))

(assert (=> b!1013597 (= lt!448100 (t!30534 (t!30534 l!412)))))

(assert (=> b!1013597 (= lt!448095 call!42691)))

(assert (=> b!1013597 (= lt!448098 (h!22719 (t!30534 l!412)))))

(assert (=> b!1013597 (= lt!448094 call!42693)))

(assert (=> b!1013597 call!42690))

(declare-fun b!1013598 () Bool)

(assert (=> b!1013598 (= e!570227 (Cons!21522 (_1!7616 (h!22719 (t!30534 l!412))) call!42691))))

(declare-fun c!102453 () Bool)

(assert (=> b!1013598 (= c!102453 (not call!42692))))

(declare-fun lt!448092 () Unit!33087)

(assert (=> b!1013598 (= lt!448092 e!570228)))

(declare-fun bm!42690 () Bool)

(assert (=> bm!42690 (= call!42692 (isEmpty!822 call!42691))))

(assert (= (and d!120457 c!102452) b!1013598))

(assert (= (and d!120457 (not c!102452)) b!1013591))

(assert (= (and b!1013598 c!102453) b!1013595))

(assert (= (and b!1013598 (not c!102453)) b!1013592))

(assert (= (and b!1013591 c!102455) b!1013594))

(assert (= (and b!1013591 (not c!102455)) b!1013596))

(assert (= (and b!1013594 c!102454) b!1013597))

(assert (= (and b!1013594 (not c!102454)) b!1013593))

(assert (= (or b!1013595 b!1013597) bm!42687))

(assert (= (or b!1013595 b!1013597) bm!42689))

(assert (= (or b!1013598 b!1013595 b!1013594 b!1013597) bm!42688))

(assert (= (or b!1013598 b!1013594) bm!42690))

(declare-fun m!936607 () Bool)

(assert (=> d!120457 m!936607))

(assert (=> d!120457 m!936569))

(declare-fun m!936609 () Bool)

(assert (=> bm!42688 m!936609))

(declare-fun m!936611 () Bool)

(assert (=> bm!42690 m!936611))

(declare-fun m!936613 () Bool)

(assert (=> bm!42687 m!936613))

(declare-fun m!936615 () Bool)

(assert (=> bm!42689 m!936615))

(assert (=> b!1013474 d!120457))

(declare-fun b!1013619 () Bool)

(declare-fun e!570239 () Bool)

(declare-fun tp!70455 () Bool)

(assert (=> b!1013619 (= e!570239 (and tp_is_empty!23475 tp!70455))))

(assert (=> b!1013476 (= tp!70449 e!570239)))

(assert (= (and b!1013476 ((_ is Cons!21521) (t!30534 l!412))) b!1013619))

(declare-fun b_lambda!15287 () Bool)

(assert (= b_lambda!15283 (or b!1013475 b_lambda!15287)))

(declare-fun bs!28940 () Bool)

(declare-fun d!120469 () Bool)

(assert (= bs!28940 (and d!120469 b!1013475)))

(declare-datatypes ((Option!573 0))(
  ( (Some!572 (v!14421 B!1408)) (None!571) )
))
(declare-fun getValueByKey!522 (List!21525 (_ BitVec 64)) Option!573)

(assert (=> bs!28940 (= (dynLambda!1886 lambda!512 (h!22720 lt!448002)) (= (getValueByKey!522 (t!30534 l!412) (h!22720 lt!448002)) (Some!572 value!115)))))

(declare-fun m!936617 () Bool)

(assert (=> bs!28940 m!936617))

(assert (=> b!1013525 d!120469))

(check-sat (not bm!42689) (not b!1013526) (not bm!42688) (not b_lambda!15287) (not b!1013512) (not b!1013514) (not bm!42687) (not d!120457) (not bs!28940) tp_is_empty!23475 (not b!1013619) (not bm!42690))
(check-sat)
