; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!486160 () Bool)

(assert start!486160)

(declare-fun b!4755548 () Bool)

(declare-fun e!2966703 () Bool)

(declare-fun tp!1350775 () Bool)

(assert (=> b!4755548 (= e!2966703 tp!1350775)))

(declare-fun b!4755549 () Bool)

(declare-fun e!2966704 () Bool)

(declare-fun tp!1350776 () Bool)

(assert (=> b!4755549 (= e!2966704 tp!1350776)))

(declare-fun tp!1350777 () Bool)

(declare-fun e!2966701 () Bool)

(declare-fun b!4755550 () Bool)

(declare-fun tp_is_empty!32149 () Bool)

(declare-fun tp_is_empty!32151 () Bool)

(assert (=> b!4755550 (= e!2966701 (and tp_is_empty!32149 tp_is_empty!32151 tp!1350777))))

(declare-fun b!4755551 () Bool)

(declare-fun res!2017462 () Bool)

(declare-fun e!2966702 () Bool)

(assert (=> b!4755551 (=> (not res!2017462) (not e!2966702))))

(declare-datatypes ((K!14685 0))(
  ( (K!14686 (val!20019 Int)) )
))
(declare-datatypes ((V!14931 0))(
  ( (V!14932 (val!20020 Int)) )
))
(declare-datatypes ((tuple2!54988 0))(
  ( (tuple2!54989 (_1!30788 K!14685) (_2!30788 V!14931)) )
))
(declare-datatypes ((List!53278 0))(
  ( (Nil!53154) (Cons!53154 (h!59551 tuple2!54988) (t!360622 List!53278)) )
))
(declare-datatypes ((ListMap!5673 0))(
  ( (ListMap!5674 (toList!6182 List!53278)) )
))
(declare-fun lhm1!51 () ListMap!5673)

(declare-fun lhm2!51 () ListMap!5673)

(declare-fun eq!1277 (ListMap!5673 ListMap!5673) Bool)

(assert (=> b!4755551 (= res!2017462 (eq!1277 lhm1!51 lhm2!51))))

(declare-fun b!4755552 () Bool)

(declare-fun l!13115 () List!53278)

(declare-fun noDuplicateKeys!2214 (List!53278) Bool)

(assert (=> b!4755552 (= e!2966702 (not (noDuplicateKeys!2214 (t!360622 l!13115))))))

(declare-fun lt!1922364 () ListMap!5673)

(declare-fun lt!1922365 () ListMap!5673)

(assert (=> b!4755552 (eq!1277 lt!1922364 lt!1922365)))

(declare-datatypes ((Unit!137554 0))(
  ( (Unit!137555) )
))
(declare-fun lt!1922363 () Unit!137554)

(declare-fun lemmaAddToEqMapsPreservesEq!126 (ListMap!5673 ListMap!5673 K!14685 V!14931) Unit!137554)

(assert (=> b!4755552 (= lt!1922363 (lemmaAddToEqMapsPreservesEq!126 lhm1!51 lhm2!51 (_1!30788 (h!59551 l!13115)) (_2!30788 (h!59551 l!13115))))))

(declare-fun +!2442 (ListMap!5673 tuple2!54988) ListMap!5673)

(assert (=> b!4755552 (= lt!1922365 (+!2442 lhm2!51 (h!59551 l!13115)))))

(assert (=> b!4755552 (= lt!1922364 (+!2442 lhm1!51 (h!59551 l!13115)))))

(declare-fun b!4755553 () Bool)

(declare-fun res!2017463 () Bool)

(assert (=> b!4755553 (=> (not res!2017463) (not e!2966702))))

(get-info :version)

(assert (=> b!4755553 (= res!2017463 ((_ is Cons!53154) l!13115))))

(declare-fun res!2017461 () Bool)

(assert (=> start!486160 (=> (not res!2017461) (not e!2966702))))

(assert (=> start!486160 (= res!2017461 (noDuplicateKeys!2214 l!13115))))

(assert (=> start!486160 e!2966702))

(assert (=> start!486160 e!2966701))

(declare-fun inv!68555 (ListMap!5673) Bool)

(assert (=> start!486160 (and (inv!68555 lhm1!51) e!2966703)))

(assert (=> start!486160 (and (inv!68555 lhm2!51) e!2966704)))

(assert (= (and start!486160 res!2017461) b!4755551))

(assert (= (and b!4755551 res!2017462) b!4755553))

(assert (= (and b!4755553 res!2017463) b!4755552))

(assert (= (and start!486160 ((_ is Cons!53154) l!13115)) b!4755550))

(assert (= start!486160 b!4755548))

(assert (= start!486160 b!4755549))

(declare-fun m!5725335 () Bool)

(assert (=> b!4755551 m!5725335))

(declare-fun m!5725337 () Bool)

(assert (=> b!4755552 m!5725337))

(declare-fun m!5725339 () Bool)

(assert (=> b!4755552 m!5725339))

(declare-fun m!5725341 () Bool)

(assert (=> b!4755552 m!5725341))

(declare-fun m!5725343 () Bool)

(assert (=> b!4755552 m!5725343))

(declare-fun m!5725345 () Bool)

(assert (=> b!4755552 m!5725345))

(declare-fun m!5725347 () Bool)

(assert (=> start!486160 m!5725347))

(declare-fun m!5725349 () Bool)

(assert (=> start!486160 m!5725349))

(declare-fun m!5725351 () Bool)

(assert (=> start!486160 m!5725351))

(check-sat (not b!4755549) (not b!4755551) tp_is_empty!32149 (not start!486160) tp_is_empty!32151 (not b!4755548) (not b!4755552) (not b!4755550))
(check-sat)
(get-model)

(declare-fun d!1520603 () Bool)

(declare-fun e!2966713 () Bool)

(assert (=> d!1520603 e!2966713))

(declare-fun res!2017474 () Bool)

(assert (=> d!1520603 (=> (not res!2017474) (not e!2966713))))

(declare-fun lt!1922380 () ListMap!5673)

(declare-fun contains!16574 (ListMap!5673 K!14685) Bool)

(assert (=> d!1520603 (= res!2017474 (contains!16574 lt!1922380 (_1!30788 (h!59551 l!13115))))))

(declare-fun lt!1922377 () List!53278)

(assert (=> d!1520603 (= lt!1922380 (ListMap!5674 lt!1922377))))

(declare-fun lt!1922379 () Unit!137554)

(declare-fun lt!1922378 () Unit!137554)

(assert (=> d!1520603 (= lt!1922379 lt!1922378)))

(declare-datatypes ((Option!12562 0))(
  ( (None!12561) (Some!12561 (v!47262 V!14931)) )
))
(declare-fun getValueByKey!2112 (List!53278 K!14685) Option!12562)

(assert (=> d!1520603 (= (getValueByKey!2112 lt!1922377 (_1!30788 (h!59551 l!13115))) (Some!12561 (_2!30788 (h!59551 l!13115))))))

(declare-fun lemmaContainsTupThenGetReturnValue!1189 (List!53278 K!14685 V!14931) Unit!137554)

(assert (=> d!1520603 (= lt!1922378 (lemmaContainsTupThenGetReturnValue!1189 lt!1922377 (_1!30788 (h!59551 l!13115)) (_2!30788 (h!59551 l!13115))))))

(declare-fun insertNoDuplicatedKeys!697 (List!53278 K!14685 V!14931) List!53278)

(assert (=> d!1520603 (= lt!1922377 (insertNoDuplicatedKeys!697 (toList!6182 lhm2!51) (_1!30788 (h!59551 l!13115)) (_2!30788 (h!59551 l!13115))))))

(assert (=> d!1520603 (= (+!2442 lhm2!51 (h!59551 l!13115)) lt!1922380)))

(declare-fun b!4755564 () Bool)

(declare-fun res!2017475 () Bool)

(assert (=> b!4755564 (=> (not res!2017475) (not e!2966713))))

(assert (=> b!4755564 (= res!2017475 (= (getValueByKey!2112 (toList!6182 lt!1922380) (_1!30788 (h!59551 l!13115))) (Some!12561 (_2!30788 (h!59551 l!13115)))))))

(declare-fun b!4755565 () Bool)

(declare-fun contains!16575 (List!53278 tuple2!54988) Bool)

(assert (=> b!4755565 (= e!2966713 (contains!16575 (toList!6182 lt!1922380) (h!59551 l!13115)))))

(assert (= (and d!1520603 res!2017474) b!4755564))

(assert (= (and b!4755564 res!2017475) b!4755565))

(declare-fun m!5725367 () Bool)

(assert (=> d!1520603 m!5725367))

(declare-fun m!5725369 () Bool)

(assert (=> d!1520603 m!5725369))

(declare-fun m!5725371 () Bool)

(assert (=> d!1520603 m!5725371))

(declare-fun m!5725373 () Bool)

(assert (=> d!1520603 m!5725373))

(declare-fun m!5725375 () Bool)

(assert (=> b!4755564 m!5725375))

(declare-fun m!5725377 () Bool)

(assert (=> b!4755565 m!5725377))

(assert (=> b!4755552 d!1520603))

(declare-fun d!1520613 () Bool)

(declare-fun e!2966714 () Bool)

(assert (=> d!1520613 e!2966714))

(declare-fun res!2017476 () Bool)

(assert (=> d!1520613 (=> (not res!2017476) (not e!2966714))))

(declare-fun lt!1922384 () ListMap!5673)

(assert (=> d!1520613 (= res!2017476 (contains!16574 lt!1922384 (_1!30788 (h!59551 l!13115))))))

(declare-fun lt!1922381 () List!53278)

(assert (=> d!1520613 (= lt!1922384 (ListMap!5674 lt!1922381))))

(declare-fun lt!1922383 () Unit!137554)

(declare-fun lt!1922382 () Unit!137554)

(assert (=> d!1520613 (= lt!1922383 lt!1922382)))

(assert (=> d!1520613 (= (getValueByKey!2112 lt!1922381 (_1!30788 (h!59551 l!13115))) (Some!12561 (_2!30788 (h!59551 l!13115))))))

(assert (=> d!1520613 (= lt!1922382 (lemmaContainsTupThenGetReturnValue!1189 lt!1922381 (_1!30788 (h!59551 l!13115)) (_2!30788 (h!59551 l!13115))))))

(assert (=> d!1520613 (= lt!1922381 (insertNoDuplicatedKeys!697 (toList!6182 lhm1!51) (_1!30788 (h!59551 l!13115)) (_2!30788 (h!59551 l!13115))))))

(assert (=> d!1520613 (= (+!2442 lhm1!51 (h!59551 l!13115)) lt!1922384)))

(declare-fun b!4755566 () Bool)

(declare-fun res!2017477 () Bool)

(assert (=> b!4755566 (=> (not res!2017477) (not e!2966714))))

(assert (=> b!4755566 (= res!2017477 (= (getValueByKey!2112 (toList!6182 lt!1922384) (_1!30788 (h!59551 l!13115))) (Some!12561 (_2!30788 (h!59551 l!13115)))))))

(declare-fun b!4755567 () Bool)

(assert (=> b!4755567 (= e!2966714 (contains!16575 (toList!6182 lt!1922384) (h!59551 l!13115)))))

(assert (= (and d!1520613 res!2017476) b!4755566))

(assert (= (and b!4755566 res!2017477) b!4755567))

(declare-fun m!5725379 () Bool)

(assert (=> d!1520613 m!5725379))

(declare-fun m!5725381 () Bool)

(assert (=> d!1520613 m!5725381))

(declare-fun m!5725383 () Bool)

(assert (=> d!1520613 m!5725383))

(declare-fun m!5725385 () Bool)

(assert (=> d!1520613 m!5725385))

(declare-fun m!5725387 () Bool)

(assert (=> b!4755566 m!5725387))

(declare-fun m!5725389 () Bool)

(assert (=> b!4755567 m!5725389))

(assert (=> b!4755552 d!1520613))

(declare-fun d!1520615 () Bool)

(declare-fun res!2017482 () Bool)

(declare-fun e!2966719 () Bool)

(assert (=> d!1520615 (=> res!2017482 e!2966719)))

(assert (=> d!1520615 (= res!2017482 (not ((_ is Cons!53154) (t!360622 l!13115))))))

(assert (=> d!1520615 (= (noDuplicateKeys!2214 (t!360622 l!13115)) e!2966719)))

(declare-fun b!4755572 () Bool)

(declare-fun e!2966720 () Bool)

(assert (=> b!4755572 (= e!2966719 e!2966720)))

(declare-fun res!2017483 () Bool)

(assert (=> b!4755572 (=> (not res!2017483) (not e!2966720))))

(declare-fun containsKey!3606 (List!53278 K!14685) Bool)

(assert (=> b!4755572 (= res!2017483 (not (containsKey!3606 (t!360622 (t!360622 l!13115)) (_1!30788 (h!59551 (t!360622 l!13115))))))))

(declare-fun b!4755573 () Bool)

(assert (=> b!4755573 (= e!2966720 (noDuplicateKeys!2214 (t!360622 (t!360622 l!13115))))))

(assert (= (and d!1520615 (not res!2017482)) b!4755572))

(assert (= (and b!4755572 res!2017483) b!4755573))

(declare-fun m!5725391 () Bool)

(assert (=> b!4755572 m!5725391))

(declare-fun m!5725393 () Bool)

(assert (=> b!4755573 m!5725393))

(assert (=> b!4755552 d!1520615))

(declare-fun d!1520617 () Bool)

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!9561 (List!53278) (InoxSet tuple2!54988))

(assert (=> d!1520617 (= (eq!1277 lt!1922364 lt!1922365) (= (content!9561 (toList!6182 lt!1922364)) (content!9561 (toList!6182 lt!1922365))))))

(declare-fun bs!1146679 () Bool)

(assert (= bs!1146679 d!1520617))

(declare-fun m!5725395 () Bool)

(assert (=> bs!1146679 m!5725395))

(declare-fun m!5725397 () Bool)

(assert (=> bs!1146679 m!5725397))

(assert (=> b!4755552 d!1520617))

(declare-fun d!1520619 () Bool)

(assert (=> d!1520619 (eq!1277 (+!2442 lhm1!51 (tuple2!54989 (_1!30788 (h!59551 l!13115)) (_2!30788 (h!59551 l!13115)))) (+!2442 lhm2!51 (tuple2!54989 (_1!30788 (h!59551 l!13115)) (_2!30788 (h!59551 l!13115)))))))

(declare-fun lt!1922403 () Unit!137554)

(declare-fun choose!33886 (ListMap!5673 ListMap!5673 K!14685 V!14931) Unit!137554)

(assert (=> d!1520619 (= lt!1922403 (choose!33886 lhm1!51 lhm2!51 (_1!30788 (h!59551 l!13115)) (_2!30788 (h!59551 l!13115))))))

(assert (=> d!1520619 (eq!1277 lhm1!51 lhm2!51)))

(assert (=> d!1520619 (= (lemmaAddToEqMapsPreservesEq!126 lhm1!51 lhm2!51 (_1!30788 (h!59551 l!13115)) (_2!30788 (h!59551 l!13115))) lt!1922403)))

(declare-fun bs!1146682 () Bool)

(assert (= bs!1146682 d!1520619))

(declare-fun m!5725435 () Bool)

(assert (=> bs!1146682 m!5725435))

(assert (=> bs!1146682 m!5725435))

(declare-fun m!5725437 () Bool)

(assert (=> bs!1146682 m!5725437))

(declare-fun m!5725439 () Bool)

(assert (=> bs!1146682 m!5725439))

(declare-fun m!5725441 () Bool)

(assert (=> bs!1146682 m!5725441))

(assert (=> bs!1146682 m!5725437))

(assert (=> bs!1146682 m!5725335))

(assert (=> b!4755552 d!1520619))

(declare-fun d!1520629 () Bool)

(assert (=> d!1520629 (= (eq!1277 lhm1!51 lhm2!51) (= (content!9561 (toList!6182 lhm1!51)) (content!9561 (toList!6182 lhm2!51))))))

(declare-fun bs!1146683 () Bool)

(assert (= bs!1146683 d!1520629))

(declare-fun m!5725443 () Bool)

(assert (=> bs!1146683 m!5725443))

(declare-fun m!5725445 () Bool)

(assert (=> bs!1146683 m!5725445))

(assert (=> b!4755551 d!1520629))

(declare-fun d!1520631 () Bool)

(declare-fun res!2017494 () Bool)

(declare-fun e!2966732 () Bool)

(assert (=> d!1520631 (=> res!2017494 e!2966732)))

(assert (=> d!1520631 (= res!2017494 (not ((_ is Cons!53154) l!13115)))))

(assert (=> d!1520631 (= (noDuplicateKeys!2214 l!13115) e!2966732)))

(declare-fun b!4755591 () Bool)

(declare-fun e!2966733 () Bool)

(assert (=> b!4755591 (= e!2966732 e!2966733)))

(declare-fun res!2017495 () Bool)

(assert (=> b!4755591 (=> (not res!2017495) (not e!2966733))))

(assert (=> b!4755591 (= res!2017495 (not (containsKey!3606 (t!360622 l!13115) (_1!30788 (h!59551 l!13115)))))))

(declare-fun b!4755592 () Bool)

(assert (=> b!4755592 (= e!2966733 (noDuplicateKeys!2214 (t!360622 l!13115)))))

(assert (= (and d!1520631 (not res!2017494)) b!4755591))

(assert (= (and b!4755591 res!2017495) b!4755592))

(declare-fun m!5725447 () Bool)

(assert (=> b!4755591 m!5725447))

(assert (=> b!4755592 m!5725343))

(assert (=> start!486160 d!1520631))

(declare-fun d!1520633 () Bool)

(declare-fun invariantList!1627 (List!53278) Bool)

(assert (=> d!1520633 (= (inv!68555 lhm1!51) (invariantList!1627 (toList!6182 lhm1!51)))))

(declare-fun bs!1146684 () Bool)

(assert (= bs!1146684 d!1520633))

(declare-fun m!5725449 () Bool)

(assert (=> bs!1146684 m!5725449))

(assert (=> start!486160 d!1520633))

(declare-fun d!1520635 () Bool)

(assert (=> d!1520635 (= (inv!68555 lhm2!51) (invariantList!1627 (toList!6182 lhm2!51)))))

(declare-fun bs!1146685 () Bool)

(assert (= bs!1146685 d!1520635))

(declare-fun m!5725451 () Bool)

(assert (=> bs!1146685 m!5725451))

(assert (=> start!486160 d!1520635))

(declare-fun tp!1350785 () Bool)

(declare-fun e!2966736 () Bool)

(declare-fun b!4755597 () Bool)

(assert (=> b!4755597 (= e!2966736 (and tp_is_empty!32149 tp_is_empty!32151 tp!1350785))))

(assert (=> b!4755549 (= tp!1350776 e!2966736)))

(assert (= (and b!4755549 ((_ is Cons!53154) (toList!6182 lhm2!51))) b!4755597))

(declare-fun e!2966737 () Bool)

(declare-fun b!4755598 () Bool)

(declare-fun tp!1350786 () Bool)

(assert (=> b!4755598 (= e!2966737 (and tp_is_empty!32149 tp_is_empty!32151 tp!1350786))))

(assert (=> b!4755548 (= tp!1350775 e!2966737)))

(assert (= (and b!4755548 ((_ is Cons!53154) (toList!6182 lhm1!51))) b!4755598))

(declare-fun b!4755599 () Bool)

(declare-fun e!2966738 () Bool)

(declare-fun tp!1350787 () Bool)

(assert (=> b!4755599 (= e!2966738 (and tp_is_empty!32149 tp_is_empty!32151 tp!1350787))))

(assert (=> b!4755550 (= tp!1350777 e!2966738)))

(assert (= (and b!4755550 ((_ is Cons!53154) (t!360622 l!13115))) b!4755599))

(check-sat (not b!4755567) (not b!4755572) (not d!1520633) (not d!1520613) (not b!4755573) tp_is_empty!32149 (not d!1520603) (not b!4755598) tp_is_empty!32151 (not b!4755591) (not d!1520617) (not b!4755597) (not b!4755566) (not b!4755564) (not d!1520629) (not b!4755592) (not d!1520619) (not b!4755599) (not d!1520635) (not b!4755565))
(check-sat)
