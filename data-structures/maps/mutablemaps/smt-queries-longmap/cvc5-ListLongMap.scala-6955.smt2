; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!87766 () Bool)

(assert start!87766)

(declare-fun b!1014493 () Bool)

(declare-fun e!570749 () Bool)

(declare-fun tp_is_empty!23503 () Bool)

(declare-fun tp!70539 () Bool)

(assert (=> b!1014493 (= e!570749 (and tp_is_empty!23503 tp!70539))))

(declare-fun b!1014491 () Bool)

(declare-fun res!680857 () Bool)

(declare-fun e!570748 () Bool)

(assert (=> b!1014491 (=> (not res!680857) (not e!570748))))

(declare-datatypes ((B!1436 0))(
  ( (B!1437 (val!11802 Int)) )
))
(declare-datatypes ((tuple2!15240 0))(
  ( (tuple2!15241 (_1!7630 (_ BitVec 64)) (_2!7630 B!1436)) )
))
(declare-datatypes ((List!21550 0))(
  ( (Nil!21547) (Cons!21546 (h!22744 tuple2!15240) (t!30559 List!21550)) )
))
(declare-fun l!412 () List!21550)

(declare-fun value!115 () B!1436)

(declare-datatypes ((List!21551 0))(
  ( (Nil!21548) (Cons!21547 (h!22745 (_ BitVec 64)) (t!30560 List!21551)) )
))
(declare-fun isEmpty!840 (List!21551) Bool)

(declare-fun getKeysOf!49 (List!21550 B!1436) List!21551)

(assert (=> b!1014491 (= res!680857 (not (isEmpty!840 (getKeysOf!49 (t!30559 l!412) value!115))))))

(declare-fun b!1014490 () Bool)

(declare-fun res!680856 () Bool)

(assert (=> b!1014490 (=> (not res!680856) (not e!570748))))

(assert (=> b!1014490 (= res!680856 (and (not (= (_2!7630 (h!22744 l!412)) value!115)) (is-Cons!21546 l!412)))))

(declare-fun b!1014492 () Bool)

(declare-fun ListPrimitiveSize!115 (List!21550) Int)

(assert (=> b!1014492 (= e!570748 (>= (ListPrimitiveSize!115 (t!30559 l!412)) (ListPrimitiveSize!115 l!412)))))

(declare-fun res!680855 () Bool)

(assert (=> start!87766 (=> (not res!680855) (not e!570748))))

(declare-fun isStrictlySorted!572 (List!21550) Bool)

(assert (=> start!87766 (= res!680855 (isStrictlySorted!572 l!412))))

(assert (=> start!87766 e!570748))

(assert (=> start!87766 e!570749))

(assert (=> start!87766 tp_is_empty!23503))

(assert (= (and start!87766 res!680855) b!1014490))

(assert (= (and b!1014490 res!680856) b!1014491))

(assert (= (and b!1014491 res!680857) b!1014492))

(assert (= (and start!87766 (is-Cons!21546 l!412)) b!1014493))

(declare-fun m!937191 () Bool)

(assert (=> b!1014491 m!937191))

(assert (=> b!1014491 m!937191))

(declare-fun m!937193 () Bool)

(assert (=> b!1014491 m!937193))

(declare-fun m!937195 () Bool)

(assert (=> b!1014492 m!937195))

(declare-fun m!937197 () Bool)

(assert (=> b!1014492 m!937197))

(declare-fun m!937199 () Bool)

(assert (=> start!87766 m!937199))

(push 1)

(assert (not b!1014493))

(assert (not b!1014492))

(assert tp_is_empty!23503)

(assert (not start!87766))

(assert (not b!1014491))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!120753 () Bool)

(declare-fun res!680890 () Bool)

(declare-fun e!570776 () Bool)

(assert (=> d!120753 (=> res!680890 e!570776)))

(assert (=> d!120753 (= res!680890 (or (is-Nil!21547 l!412) (is-Nil!21547 (t!30559 l!412))))))

(assert (=> d!120753 (= (isStrictlySorted!572 l!412) e!570776)))

(declare-fun b!1014532 () Bool)

(declare-fun e!570777 () Bool)

(assert (=> b!1014532 (= e!570776 e!570777)))

(declare-fun res!680891 () Bool)

(assert (=> b!1014532 (=> (not res!680891) (not e!570777))))

(assert (=> b!1014532 (= res!680891 (bvslt (_1!7630 (h!22744 l!412)) (_1!7630 (h!22744 (t!30559 l!412)))))))

(declare-fun b!1014533 () Bool)

(assert (=> b!1014533 (= e!570777 (isStrictlySorted!572 (t!30559 l!412)))))

(assert (= (and d!120753 (not res!680890)) b!1014532))

(assert (= (and b!1014532 res!680891) b!1014533))

(declare-fun m!937223 () Bool)

(assert (=> b!1014533 m!937223))

(assert (=> start!87766 d!120753))

(declare-fun d!120759 () Bool)

(assert (=> d!120759 (= (isEmpty!840 (getKeysOf!49 (t!30559 l!412) value!115)) (is-Nil!21548 (getKeysOf!49 (t!30559 l!412) value!115)))))

(assert (=> b!1014491 d!120759))

(declare-fun b!1014597 () Bool)

(assert (=> b!1014597 true))

(assert (=> b!1014597 true))

(assert (=> b!1014597 true))

(declare-fun bs!29273 () Bool)

(declare-fun b!1014596 () Bool)

(assert (= bs!29273 (and b!1014596 b!1014597)))

(declare-fun lt!448667 () tuple2!15240)

(declare-fun lt!448665 () tuple2!15240)

(declare-fun lambda!725 () Int)

(declare-fun lt!448669 () List!21550)

(declare-fun lambda!723 () Int)

(declare-fun lt!448672 () List!21550)

(assert (=> bs!29273 (= (= (Cons!21546 lt!448667 lt!448672) (Cons!21546 lt!448665 lt!448669)) (= lambda!725 lambda!723))))

(assert (=> b!1014596 true))

(assert (=> b!1014596 true))

(assert (=> b!1014596 true))

(declare-fun bs!29275 () Bool)

(declare-fun d!120761 () Bool)

(assert (= bs!29275 (and d!120761 b!1014597)))

(declare-fun lambda!727 () Int)

(assert (=> bs!29275 (= (= (t!30559 l!412) (Cons!21546 lt!448665 lt!448669)) (= lambda!727 lambda!723))))

(declare-fun bs!29276 () Bool)

(assert (= bs!29276 (and d!120761 b!1014596)))

(assert (=> bs!29276 (= (= (t!30559 l!412) (Cons!21546 lt!448667 lt!448672)) (= lambda!727 lambda!725))))

(assert (=> d!120761 true))

(assert (=> d!120761 true))

(declare-fun b!1014592 () Bool)

(declare-fun e!570811 () List!21551)

(declare-fun e!570809 () List!21551)

(assert (=> b!1014592 (= e!570811 e!570809)))

(declare-fun c!102688 () Bool)

(assert (=> b!1014592 (= c!102688 (and (is-Cons!21546 (t!30559 l!412)) (not (= (_2!7630 (h!22744 (t!30559 l!412))) value!115))))))

(declare-datatypes ((Unit!33142 0))(
  ( (Unit!33143) )
))
(declare-fun call!42837 () Unit!33142)

(declare-fun bm!42831 () Bool)

(declare-fun c!102687 () Bool)

(declare-fun lt!448668 () List!21551)

(declare-fun lt!448671 () List!21551)

(declare-fun lemmaForallGetValueByKeySameWithASmallerHead!40 (List!21550 List!21551 B!1436 tuple2!15240) Unit!33142)

(assert (=> bm!42831 (= call!42837 (lemmaForallGetValueByKeySameWithASmallerHead!40 (ite c!102687 lt!448669 lt!448672) (ite c!102687 lt!448671 lt!448668) value!115 (ite c!102687 lt!448665 lt!448667)))))

(declare-fun call!42835 () Bool)

(declare-fun bm!42832 () Bool)

(declare-fun forall!245 (List!21551 Int) Bool)

(assert (=> bm!42832 (= call!42835 (forall!245 (ite c!102687 lt!448671 lt!448668) (ite c!102687 lambda!723 lambda!725)))))

(declare-fun b!1014593 () Bool)

(assert (=> b!1014593 (= e!570809 Nil!21548)))

(declare-fun b!1014594 () Bool)

(declare-fun call!42836 () List!21551)

(assert (=> b!1014594 (= e!570811 (Cons!21547 (_1!7630 (h!22744 (t!30559 l!412))) call!42836))))

(declare-fun c!102686 () Bool)

(declare-fun call!42834 () Bool)

(assert (=> b!1014594 (= c!102686 (not call!42834))))

(declare-fun lt!448673 () Unit!33142)

(declare-fun e!570810 () Unit!33142)

(assert (=> b!1014594 (= lt!448673 e!570810)))

(declare-fun b!1014595 () Bool)

(declare-fun e!570808 () Unit!33142)

(declare-fun Unit!33147 () Unit!33142)

(assert (=> b!1014595 (= e!570808 Unit!33147)))

(declare-fun bm!42833 () Bool)

(assert (=> bm!42833 (= call!42834 (isEmpty!840 call!42836))))

(declare-fun lt!448663 () Unit!33142)

(assert (=> b!1014596 (= e!570808 lt!448663)))

(assert (=> b!1014596 (= lt!448672 (t!30559 (t!30559 l!412)))))

(assert (=> b!1014596 (= lt!448668 call!42836)))

(assert (=> b!1014596 (= lt!448667 (h!22744 (t!30559 l!412)))))

(assert (=> b!1014596 (= lt!448663 call!42837)))

(assert (=> b!1014596 call!42835))

(assert (=> b!1014597 call!42835))

(declare-fun lt!448670 () Unit!33142)

(assert (=> b!1014597 (= lt!448670 call!42837)))

(assert (=> b!1014597 (= lt!448665 (h!22744 (t!30559 l!412)))))

(assert (=> b!1014597 (= lt!448671 call!42836)))

(assert (=> b!1014597 (= lt!448669 (t!30559 (t!30559 l!412)))))

(assert (=> b!1014597 (= e!570810 lt!448670)))

(declare-fun b!1014599 () Bool)

(declare-fun Unit!33148 () Unit!33142)

(assert (=> b!1014599 (= e!570810 Unit!33148)))

(declare-fun bm!42834 () Bool)

(assert (=> bm!42834 (= call!42836 (getKeysOf!49 (t!30559 (t!30559 l!412)) value!115))))

(declare-fun lt!448666 () List!21551)

(assert (=> d!120761 (forall!245 lt!448666 lambda!727)))

(assert (=> d!120761 (= lt!448666 e!570811)))

(assert (=> d!120761 (= c!102687 (and (is-Cons!21546 (t!30559 l!412)) (= (_2!7630 (h!22744 (t!30559 l!412))) value!115)))))

(assert (=> d!120761 (isStrictlySorted!572 (t!30559 l!412))))

(assert (=> d!120761 (= (getKeysOf!49 (t!30559 l!412) value!115) lt!448666)))

(declare-fun b!1014598 () Bool)

(declare-fun lt!448664 () Unit!33142)

(assert (=> b!1014598 (= lt!448664 e!570808)))

(declare-fun c!102689 () Bool)

(assert (=> b!1014598 (= c!102689 (not call!42834))))

(declare-fun lt!448662 () List!21551)

(assert (=> b!1014598 (= lt!448662 call!42836)))

(assert (=> b!1014598 (= e!570809 call!42836)))

(assert (= (and d!120761 c!102687) b!1014594))

(assert (= (and d!120761 (not c!102687)) b!1014592))

(assert (= (and b!1014594 c!102686) b!1014597))

(assert (= (and b!1014594 (not c!102686)) b!1014599))

(assert (= (and b!1014592 c!102688) b!1014598))

(assert (= (and b!1014592 (not c!102688)) b!1014593))

(assert (= (and b!1014598 c!102689) b!1014596))

(assert (= (and b!1014598 (not c!102689)) b!1014595))

(assert (= (or b!1014597 b!1014596) bm!42831))

(assert (= (or b!1014597 b!1014596) bm!42832))

(assert (= (or b!1014594 b!1014597 b!1014596 b!1014598) bm!42834))

(assert (= (or b!1014594 b!1014598) bm!42833))

(declare-fun m!937231 () Bool)

(assert (=> bm!42834 m!937231))

(declare-fun m!937233 () Bool)

(assert (=> bm!42833 m!937233))

(declare-fun m!937235 () Bool)

(assert (=> bm!42832 m!937235))

(declare-fun m!937237 () Bool)

(assert (=> d!120761 m!937237))

(assert (=> d!120761 m!937223))

(declare-fun m!937239 () Bool)

(assert (=> bm!42831 m!937239))

(assert (=> b!1014491 d!120761))

(declare-fun d!120777 () Bool)

(declare-fun lt!448700 () Int)

(assert (=> d!120777 (>= lt!448700 0)))

(declare-fun e!570825 () Int)

(assert (=> d!120777 (= lt!448700 e!570825)))

(declare-fun c!102700 () Bool)

(assert (=> d!120777 (= c!102700 (is-Nil!21547 (t!30559 l!412)))))

(assert (=> d!120777 (= (ListPrimitiveSize!115 (t!30559 l!412)) lt!448700)))

(declare-fun b!1014637 () Bool)

(assert (=> b!1014637 (= e!570825 0)))

(declare-fun b!1014638 () Bool)

(assert (=> b!1014638 (= e!570825 (+ 1 (ListPrimitiveSize!115 (t!30559 (t!30559 l!412)))))))

(assert (= (and d!120777 c!102700) b!1014637))

(assert (= (and d!120777 (not c!102700)) b!1014638))

(declare-fun m!937251 () Bool)

(assert (=> b!1014638 m!937251))

(assert (=> b!1014492 d!120777))

(declare-fun d!120779 () Bool)

(declare-fun lt!448701 () Int)

(assert (=> d!120779 (>= lt!448701 0)))

(declare-fun e!570826 () Int)

(assert (=> d!120779 (= lt!448701 e!570826)))

(declare-fun c!102701 () Bool)

(assert (=> d!120779 (= c!102701 (is-Nil!21547 l!412))))

(assert (=> d!120779 (= (ListPrimitiveSize!115 l!412) lt!448701)))

(declare-fun b!1014639 () Bool)

(assert (=> b!1014639 (= e!570826 0)))

(declare-fun b!1014640 () Bool)

(assert (=> b!1014640 (= e!570826 (+ 1 (ListPrimitiveSize!115 (t!30559 l!412))))))

(assert (= (and d!120779 c!102701) b!1014639))

(assert (= (and d!120779 (not c!102701)) b!1014640))

(assert (=> b!1014640 m!937195))

(assert (=> b!1014492 d!120779))

(declare-fun b!1014645 () Bool)

(declare-fun e!570829 () Bool)

(declare-fun tp!70551 () Bool)

(assert (=> b!1014645 (= e!570829 (and tp_is_empty!23503 tp!70551))))

(assert (=> b!1014493 (= tp!70539 e!570829)))

