; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!504628 () Bool)

(assert start!504628)

(declare-fun b!4845531 () Bool)

(declare-fun res!2066860 () Bool)

(declare-fun e!3028518 () Bool)

(assert (=> b!4845531 (=> (not res!2066860) (not e!3028518))))

(declare-fun e!3028516 () Bool)

(assert (=> b!4845531 (= res!2066860 e!3028516)))

(declare-fun res!2066858 () Bool)

(assert (=> b!4845531 (=> res!2066858 e!3028516)))

(declare-datatypes ((K!17244 0))(
  ( (K!17245 (val!22101 Int)) )
))
(declare-datatypes ((V!17490 0))(
  ( (V!17491 (val!22102 Int)) )
))
(declare-datatypes ((tuple2!59074 0))(
  ( (tuple2!59075 (_1!32831 K!17244) (_2!32831 V!17490)) )
))
(declare-datatypes ((List!55594 0))(
  ( (Nil!55470) (Cons!55470 (h!61907 tuple2!59074) (t!363090 List!55594)) )
))
(declare-datatypes ((tuple2!59076 0))(
  ( (tuple2!59077 (_1!32832 (_ BitVec 64)) (_2!32832 List!55594)) )
))
(declare-datatypes ((List!55595 0))(
  ( (Nil!55471) (Cons!55471 (h!61908 tuple2!59076) (t!363091 List!55595)) )
))
(declare-fun l!11108 () List!55595)

(get-info :version)

(assert (=> b!4845531 (= res!2066858 (not ((_ is Cons!55471) l!11108)))))

(declare-fun b!4845532 () Bool)

(declare-fun lambda!242234 () Int)

(declare-fun forall!12909 (List!55595 Int) Bool)

(assert (=> b!4845532 (= e!3028518 (not (forall!12909 (t!363091 l!11108) lambda!242234)))))

(declare-fun b!4845533 () Bool)

(declare-fun k0!1656 () K!17244)

(declare-fun containsKey!4643 (List!55594 K!17244) Bool)

(assert (=> b!4845533 (= e!3028516 (not (containsKey!4643 (_2!32832 (h!61908 l!11108)) k0!1656)))))

(declare-fun b!4845534 () Bool)

(declare-fun res!2066861 () Bool)

(assert (=> b!4845534 (=> (not res!2066861) (not e!3028518))))

(declare-fun containsKeyBiggerList!754 (List!55595 K!17244) Bool)

(assert (=> b!4845534 (= res!2066861 (containsKeyBiggerList!754 (t!363091 l!11108) k0!1656))))

(declare-fun res!2066859 () Bool)

(assert (=> start!504628 (=> (not res!2066859) (not e!3028518))))

(assert (=> start!504628 (= res!2066859 (containsKeyBiggerList!754 l!11108 k0!1656))))

(assert (=> start!504628 e!3028518))

(declare-fun e!3028517 () Bool)

(assert (=> start!504628 e!3028517))

(declare-fun tp_is_empty!35071 () Bool)

(assert (=> start!504628 tp_is_empty!35071))

(declare-fun b!4845535 () Bool)

(declare-fun tp!1364285 () Bool)

(declare-fun tp!1364286 () Bool)

(assert (=> b!4845535 (= e!3028517 (and tp!1364285 tp!1364286))))

(declare-fun b!4845536 () Bool)

(declare-fun res!2066856 () Bool)

(assert (=> b!4845536 (=> (not res!2066856) (not e!3028518))))

(assert (=> b!4845536 (= res!2066856 ((_ is Cons!55471) l!11108))))

(declare-fun b!4845537 () Bool)

(declare-fun res!2066857 () Bool)

(assert (=> b!4845537 (=> (not res!2066857) (not e!3028518))))

(assert (=> b!4845537 (= res!2066857 (forall!12909 l!11108 lambda!242234))))

(assert (= (and start!504628 res!2066859) b!4845537))

(assert (= (and b!4845537 res!2066857) b!4845531))

(assert (= (and b!4845531 (not res!2066858)) b!4845533))

(assert (= (and b!4845531 res!2066860) b!4845536))

(assert (= (and b!4845536 res!2066856) b!4845534))

(assert (= (and b!4845534 res!2066861) b!4845532))

(assert (= (and start!504628 ((_ is Cons!55471) l!11108)) b!4845535))

(declare-fun m!5843746 () Bool)

(assert (=> b!4845537 m!5843746))

(declare-fun m!5843748 () Bool)

(assert (=> b!4845533 m!5843748))

(declare-fun m!5843750 () Bool)

(assert (=> b!4845534 m!5843750))

(declare-fun m!5843752 () Bool)

(assert (=> start!504628 m!5843752))

(declare-fun m!5843754 () Bool)

(assert (=> b!4845532 m!5843754))

(check-sat (not b!4845535) (not b!4845532) (not b!4845533) tp_is_empty!35071 (not b!4845534) (not start!504628) (not b!4845537))
(check-sat)
(get-model)

(declare-fun d!1554494 () Bool)

(declare-fun res!2066869 () Bool)

(declare-fun e!3028526 () Bool)

(assert (=> d!1554494 (=> res!2066869 e!3028526)))

(declare-fun e!3028527 () Bool)

(assert (=> d!1554494 (= res!2066869 e!3028527)))

(declare-fun res!2066868 () Bool)

(assert (=> d!1554494 (=> (not res!2066868) (not e!3028527))))

(assert (=> d!1554494 (= res!2066868 ((_ is Cons!55471) l!11108))))

(assert (=> d!1554494 (= (containsKeyBiggerList!754 l!11108 k0!1656) e!3028526)))

(declare-fun b!4845544 () Bool)

(assert (=> b!4845544 (= e!3028527 (containsKey!4643 (_2!32832 (h!61908 l!11108)) k0!1656))))

(declare-fun b!4845545 () Bool)

(declare-fun e!3028525 () Bool)

(assert (=> b!4845545 (= e!3028526 e!3028525)))

(declare-fun res!2066870 () Bool)

(assert (=> b!4845545 (=> (not res!2066870) (not e!3028525))))

(assert (=> b!4845545 (= res!2066870 ((_ is Cons!55471) l!11108))))

(declare-fun b!4845546 () Bool)

(assert (=> b!4845546 (= e!3028525 (containsKeyBiggerList!754 (t!363091 l!11108) k0!1656))))

(assert (= (and d!1554494 res!2066868) b!4845544))

(assert (= (and d!1554494 (not res!2066869)) b!4845545))

(assert (= (and b!4845545 res!2066870) b!4845546))

(assert (=> b!4845544 m!5843748))

(assert (=> b!4845546 m!5843750))

(assert (=> start!504628 d!1554494))

(declare-fun d!1554496 () Bool)

(declare-fun res!2066875 () Bool)

(declare-fun e!3028532 () Bool)

(assert (=> d!1554496 (=> res!2066875 e!3028532)))

(assert (=> d!1554496 (= res!2066875 (and ((_ is Cons!55470) (_2!32832 (h!61908 l!11108))) (= (_1!32831 (h!61907 (_2!32832 (h!61908 l!11108)))) k0!1656)))))

(assert (=> d!1554496 (= (containsKey!4643 (_2!32832 (h!61908 l!11108)) k0!1656) e!3028532)))

(declare-fun b!4845551 () Bool)

(declare-fun e!3028533 () Bool)

(assert (=> b!4845551 (= e!3028532 e!3028533)))

(declare-fun res!2066876 () Bool)

(assert (=> b!4845551 (=> (not res!2066876) (not e!3028533))))

(assert (=> b!4845551 (= res!2066876 ((_ is Cons!55470) (_2!32832 (h!61908 l!11108))))))

(declare-fun b!4845552 () Bool)

(assert (=> b!4845552 (= e!3028533 (containsKey!4643 (t!363090 (_2!32832 (h!61908 l!11108))) k0!1656))))

(assert (= (and d!1554496 (not res!2066875)) b!4845551))

(assert (= (and b!4845551 res!2066876) b!4845552))

(declare-fun m!5843756 () Bool)

(assert (=> b!4845552 m!5843756))

(assert (=> b!4845533 d!1554496))

(declare-fun d!1554498 () Bool)

(declare-fun res!2066887 () Bool)

(declare-fun e!3028544 () Bool)

(assert (=> d!1554498 (=> res!2066887 e!3028544)))

(assert (=> d!1554498 (= res!2066887 ((_ is Nil!55471) l!11108))))

(assert (=> d!1554498 (= (forall!12909 l!11108 lambda!242234) e!3028544)))

(declare-fun b!4845563 () Bool)

(declare-fun e!3028545 () Bool)

(assert (=> b!4845563 (= e!3028544 e!3028545)))

(declare-fun res!2066888 () Bool)

(assert (=> b!4845563 (=> (not res!2066888) (not e!3028545))))

(declare-fun dynLambda!22332 (Int tuple2!59076) Bool)

(assert (=> b!4845563 (= res!2066888 (dynLambda!22332 lambda!242234 (h!61908 l!11108)))))

(declare-fun b!4845564 () Bool)

(assert (=> b!4845564 (= e!3028545 (forall!12909 (t!363091 l!11108) lambda!242234))))

(assert (= (and d!1554498 (not res!2066887)) b!4845563))

(assert (= (and b!4845563 res!2066888) b!4845564))

(declare-fun b_lambda!192299 () Bool)

(assert (=> (not b_lambda!192299) (not b!4845563)))

(declare-fun m!5843758 () Bool)

(assert (=> b!4845563 m!5843758))

(assert (=> b!4845564 m!5843754))

(assert (=> b!4845537 d!1554498))

(declare-fun d!1554502 () Bool)

(declare-fun res!2066889 () Bool)

(declare-fun e!3028546 () Bool)

(assert (=> d!1554502 (=> res!2066889 e!3028546)))

(assert (=> d!1554502 (= res!2066889 ((_ is Nil!55471) (t!363091 l!11108)))))

(assert (=> d!1554502 (= (forall!12909 (t!363091 l!11108) lambda!242234) e!3028546)))

(declare-fun b!4845565 () Bool)

(declare-fun e!3028547 () Bool)

(assert (=> b!4845565 (= e!3028546 e!3028547)))

(declare-fun res!2066890 () Bool)

(assert (=> b!4845565 (=> (not res!2066890) (not e!3028547))))

(assert (=> b!4845565 (= res!2066890 (dynLambda!22332 lambda!242234 (h!61908 (t!363091 l!11108))))))

(declare-fun b!4845566 () Bool)

(assert (=> b!4845566 (= e!3028547 (forall!12909 (t!363091 (t!363091 l!11108)) lambda!242234))))

(assert (= (and d!1554502 (not res!2066889)) b!4845565))

(assert (= (and b!4845565 res!2066890) b!4845566))

(declare-fun b_lambda!192301 () Bool)

(assert (=> (not b_lambda!192301) (not b!4845565)))

(declare-fun m!5843760 () Bool)

(assert (=> b!4845565 m!5843760))

(declare-fun m!5843762 () Bool)

(assert (=> b!4845566 m!5843762))

(assert (=> b!4845532 d!1554502))

(declare-fun d!1554504 () Bool)

(declare-fun res!2066892 () Bool)

(declare-fun e!3028549 () Bool)

(assert (=> d!1554504 (=> res!2066892 e!3028549)))

(declare-fun e!3028550 () Bool)

(assert (=> d!1554504 (= res!2066892 e!3028550)))

(declare-fun res!2066891 () Bool)

(assert (=> d!1554504 (=> (not res!2066891) (not e!3028550))))

(assert (=> d!1554504 (= res!2066891 ((_ is Cons!55471) (t!363091 l!11108)))))

(assert (=> d!1554504 (= (containsKeyBiggerList!754 (t!363091 l!11108) k0!1656) e!3028549)))

(declare-fun b!4845567 () Bool)

(assert (=> b!4845567 (= e!3028550 (containsKey!4643 (_2!32832 (h!61908 (t!363091 l!11108))) k0!1656))))

(declare-fun b!4845568 () Bool)

(declare-fun e!3028548 () Bool)

(assert (=> b!4845568 (= e!3028549 e!3028548)))

(declare-fun res!2066893 () Bool)

(assert (=> b!4845568 (=> (not res!2066893) (not e!3028548))))

(assert (=> b!4845568 (= res!2066893 ((_ is Cons!55471) (t!363091 l!11108)))))

(declare-fun b!4845569 () Bool)

(assert (=> b!4845569 (= e!3028548 (containsKeyBiggerList!754 (t!363091 (t!363091 l!11108)) k0!1656))))

(assert (= (and d!1554504 res!2066891) b!4845567))

(assert (= (and d!1554504 (not res!2066892)) b!4845568))

(assert (= (and b!4845568 res!2066893) b!4845569))

(declare-fun m!5843764 () Bool)

(assert (=> b!4845567 m!5843764))

(declare-fun m!5843766 () Bool)

(assert (=> b!4845569 m!5843766))

(assert (=> b!4845534 d!1554504))

(declare-fun tp_is_empty!35073 () Bool)

(declare-fun b!4845577 () Bool)

(declare-fun e!3028556 () Bool)

(declare-fun tp!1364289 () Bool)

(assert (=> b!4845577 (= e!3028556 (and tp_is_empty!35071 tp_is_empty!35073 tp!1364289))))

(assert (=> b!4845535 (= tp!1364285 e!3028556)))

(assert (= (and b!4845535 ((_ is Cons!55470) (_2!32832 (h!61908 l!11108)))) b!4845577))

(declare-fun b!4845582 () Bool)

(declare-fun e!3028559 () Bool)

(declare-fun tp!1364294 () Bool)

(declare-fun tp!1364295 () Bool)

(assert (=> b!4845582 (= e!3028559 (and tp!1364294 tp!1364295))))

(assert (=> b!4845535 (= tp!1364286 e!3028559)))

(assert (= (and b!4845535 ((_ is Cons!55471) (t!363091 l!11108))) b!4845582))

(declare-fun b_lambda!192303 () Bool)

(assert (= b_lambda!192301 (or b!4845537 b_lambda!192303)))

(declare-fun bs!1172269 () Bool)

(declare-fun d!1554508 () Bool)

(assert (= bs!1172269 (and d!1554508 b!4845537)))

(declare-fun noDuplicateKeys!2568 (List!55594) Bool)

(assert (=> bs!1172269 (= (dynLambda!22332 lambda!242234 (h!61908 (t!363091 l!11108))) (noDuplicateKeys!2568 (_2!32832 (h!61908 (t!363091 l!11108)))))))

(declare-fun m!5843772 () Bool)

(assert (=> bs!1172269 m!5843772))

(assert (=> b!4845565 d!1554508))

(declare-fun b_lambda!192305 () Bool)

(assert (= b_lambda!192299 (or b!4845537 b_lambda!192305)))

(declare-fun bs!1172270 () Bool)

(declare-fun d!1554510 () Bool)

(assert (= bs!1172270 (and d!1554510 b!4845537)))

(assert (=> bs!1172270 (= (dynLambda!22332 lambda!242234 (h!61908 l!11108)) (noDuplicateKeys!2568 (_2!32832 (h!61908 l!11108))))))

(declare-fun m!5843774 () Bool)

(assert (=> bs!1172270 m!5843774))

(assert (=> b!4845563 d!1554510))

(check-sat (not b!4845564) tp_is_empty!35073 (not bs!1172270) (not b!4845552) (not b!4845577) (not bs!1172269) (not b!4845566) (not b!4845546) (not b!4845544) (not b_lambda!192305) (not b!4845582) tp_is_empty!35071 (not b!4845569) (not b!4845567) (not b_lambda!192303))
(check-sat)
