; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!484620 () Bool)

(assert start!484620)

(declare-fun b!4746072 () Bool)

(declare-fun res!2011593 () Bool)

(declare-fun e!2960385 () Bool)

(assert (=> b!4746072 (=> (not res!2011593) (not e!2960385))))

(declare-datatypes ((K!14340 0))(
  ( (K!14341 (val!19743 Int)) )
))
(declare-fun key!4653 () K!14340)

(declare-datatypes ((V!14586 0))(
  ( (V!14587 (val!19744 Int)) )
))
(declare-datatypes ((tuple2!54698 0))(
  ( (tuple2!54699 (_1!30643 K!14340) (_2!30643 V!14586)) )
))
(declare-datatypes ((List!53123 0))(
  ( (Nil!52999) (Cons!52999 (h!59392 tuple2!54698) (t!360431 List!53123)) )
))
(declare-fun newBucket!218 () List!53123)

(declare-fun oldBucket!34 () List!53123)

(declare-fun removePairForKey!1671 (List!53123 K!14340) List!53123)

(assert (=> b!4746072 (= res!2011593 (= (removePairForKey!1671 oldBucket!34 key!4653) newBucket!218))))

(declare-fun b!4746073 () Bool)

(declare-fun res!2011594 () Bool)

(assert (=> b!4746073 (=> (not res!2011594) (not e!2960385))))

(declare-fun noDuplicateKeys!2076 (List!53123) Bool)

(assert (=> b!4746073 (= res!2011594 (noDuplicateKeys!2076 newBucket!218))))

(declare-fun b!4746074 () Bool)

(declare-fun e!2960384 () Bool)

(declare-fun e!2960381 () Bool)

(assert (=> b!4746074 (= e!2960384 e!2960381)))

(declare-fun res!2011602 () Bool)

(assert (=> b!4746074 (=> (not res!2011602) (not e!2960381))))

(declare-fun lt!1908644 () (_ BitVec 64))

(declare-fun hash!405 () (_ BitVec 64))

(assert (=> b!4746074 (= res!2011602 (= lt!1908644 hash!405))))

(declare-datatypes ((Hashable!6445 0))(
  ( (HashableExt!6444 (__x!32148 Int)) )
))
(declare-fun hashF!1323 () Hashable!6445)

(declare-fun hash!4494 (Hashable!6445 K!14340) (_ BitVec 64))

(assert (=> b!4746074 (= lt!1908644 (hash!4494 hashF!1323 key!4653))))

(declare-fun b!4746075 () Bool)

(declare-fun res!2011601 () Bool)

(assert (=> b!4746075 (=> (not res!2011601) (not e!2960381))))

(declare-datatypes ((tuple2!54700 0))(
  ( (tuple2!54701 (_1!30644 (_ BitVec 64)) (_2!30644 List!53123)) )
))
(declare-datatypes ((List!53124 0))(
  ( (Nil!53000) (Cons!53000 (h!59393 tuple2!54700) (t!360432 List!53124)) )
))
(declare-datatypes ((ListLongMap!4571 0))(
  ( (ListLongMap!4572 (toList!6041 List!53124)) )
))
(declare-fun lm!2023 () ListLongMap!4571)

(declare-fun head!10348 (List!53124) tuple2!54700)

(assert (=> b!4746075 (= res!2011601 (= (head!10348 (toList!6041 lm!2023)) (tuple2!54701 hash!405 oldBucket!34)))))

(declare-fun b!4746076 () Bool)

(declare-fun res!2011603 () Bool)

(declare-fun e!2960383 () Bool)

(assert (=> b!4746076 (=> res!2011603 e!2960383)))

(declare-fun contains!16425 (ListLongMap!4571 (_ BitVec 64)) Bool)

(assert (=> b!4746076 (= res!2011603 (not (contains!16425 lm!2023 lt!1908644)))))

(declare-fun tp_is_empty!31599 () Bool)

(declare-fun e!2960379 () Bool)

(declare-fun tp_is_empty!31597 () Bool)

(declare-fun b!4746077 () Bool)

(declare-fun tp!1349537 () Bool)

(assert (=> b!4746077 (= e!2960379 (and tp_is_empty!31597 tp_is_empty!31599 tp!1349537))))

(declare-fun b!4746078 () Bool)

(declare-fun e!2960386 () Bool)

(declare-datatypes ((ListMap!5405 0))(
  ( (ListMap!5406 (toList!6042 List!53123)) )
))
(declare-fun lt!1908645 () ListMap!5405)

(declare-fun addToMapMapFromBucket!1506 (List!53123 ListMap!5405) ListMap!5405)

(declare-fun extractMap!2102 (List!53124) ListMap!5405)

(assert (=> b!4746078 (= e!2960386 (= lt!1908645 (addToMapMapFromBucket!1506 (_2!30644 (h!59393 (toList!6041 lm!2023))) (extractMap!2102 (t!360432 (toList!6041 lm!2023))))))))

(declare-fun b!4746079 () Bool)

(declare-fun res!2011605 () Bool)

(assert (=> b!4746079 (=> (not res!2011605) (not e!2960385))))

(declare-fun allKeysSameHash!1902 (List!53123 (_ BitVec 64) Hashable!6445) Bool)

(assert (=> b!4746079 (= res!2011605 (allKeysSameHash!1902 oldBucket!34 hash!405 hashF!1323))))

(declare-fun b!4746080 () Bool)

(declare-fun res!2011595 () Bool)

(assert (=> b!4746080 (=> (not res!2011595) (not e!2960381))))

(declare-fun allKeysSameHashInMap!1990 (ListLongMap!4571 Hashable!6445) Bool)

(assert (=> b!4746080 (= res!2011595 (allKeysSameHashInMap!1990 lm!2023 hashF!1323))))

(declare-fun b!4746081 () Bool)

(declare-fun res!2011607 () Bool)

(assert (=> b!4746081 (=> (not res!2011607) (not e!2960385))))

(assert (=> b!4746081 (= res!2011607 (noDuplicateKeys!2076 oldBucket!34))))

(declare-fun tp!1349536 () Bool)

(declare-fun e!2960380 () Bool)

(declare-fun b!4746082 () Bool)

(assert (=> b!4746082 (= e!2960380 (and tp_is_empty!31597 tp_is_empty!31599 tp!1349536))))

(declare-fun b!4746083 () Bool)

(declare-fun res!2011598 () Bool)

(assert (=> b!4746083 (=> (not res!2011598) (not e!2960381))))

(get-info :version)

(assert (=> b!4746083 (= res!2011598 ((_ is Cons!53000) (toList!6041 lm!2023)))))

(declare-fun b!4746084 () Bool)

(declare-fun e!2960382 () Bool)

(declare-fun tp!1349535 () Bool)

(assert (=> b!4746084 (= e!2960382 tp!1349535)))

(declare-fun b!4746085 () Bool)

(declare-fun res!2011599 () Bool)

(assert (=> b!4746085 (=> (not res!2011599) (not e!2960381))))

(assert (=> b!4746085 (= res!2011599 (allKeysSameHash!1902 newBucket!218 hash!405 hashF!1323))))

(declare-fun res!2011596 () Bool)

(assert (=> start!484620 (=> (not res!2011596) (not e!2960385))))

(declare-fun lambda!220290 () Int)

(declare-fun forall!11715 (List!53124 Int) Bool)

(assert (=> start!484620 (= res!2011596 (forall!11715 (toList!6041 lm!2023) lambda!220290))))

(assert (=> start!484620 e!2960385))

(declare-fun inv!68214 (ListLongMap!4571) Bool)

(assert (=> start!484620 (and (inv!68214 lm!2023) e!2960382)))

(assert (=> start!484620 tp_is_empty!31597))

(assert (=> start!484620 e!2960379))

(assert (=> start!484620 true))

(assert (=> start!484620 e!2960380))

(declare-fun b!4746086 () Bool)

(assert (=> b!4746086 (= e!2960385 e!2960384)))

(declare-fun res!2011606 () Bool)

(assert (=> b!4746086 (=> (not res!2011606) (not e!2960384))))

(declare-fun contains!16426 (ListMap!5405 K!14340) Bool)

(assert (=> b!4746086 (= res!2011606 (contains!16426 lt!1908645 key!4653))))

(assert (=> b!4746086 (= lt!1908645 (extractMap!2102 (toList!6041 lm!2023)))))

(declare-fun b!4746087 () Bool)

(declare-fun res!2011597 () Bool)

(assert (=> b!4746087 (=> res!2011597 e!2960383)))

(assert (=> b!4746087 (= res!2011597 (not (forall!11715 (toList!6041 lm!2023) lambda!220290)))))

(declare-fun b!4746088 () Bool)

(assert (=> b!4746088 (= e!2960381 (not e!2960383))))

(declare-fun res!2011604 () Bool)

(assert (=> b!4746088 (=> res!2011604 e!2960383)))

(assert (=> b!4746088 (= res!2011604 (or (and ((_ is Cons!52999) oldBucket!34) (= (_1!30643 (h!59392 oldBucket!34)) key!4653)) (and ((_ is Cons!52999) oldBucket!34) (not (= (_1!30643 (h!59392 oldBucket!34)) key!4653))) (not ((_ is Nil!52999) oldBucket!34))))))

(assert (=> b!4746088 e!2960386))

(declare-fun res!2011600 () Bool)

(assert (=> b!4746088 (=> (not res!2011600) (not e!2960386))))

(declare-fun tail!9155 (ListLongMap!4571) ListLongMap!4571)

(assert (=> b!4746088 (= res!2011600 (= (t!360432 (toList!6041 lm!2023)) (toList!6041 (tail!9155 lm!2023))))))

(declare-fun b!4746089 () Bool)

(declare-fun containsKey!3509 (List!53123 K!14340) Bool)

(declare-fun apply!12495 (ListLongMap!4571 (_ BitVec 64)) List!53123)

(assert (=> b!4746089 (= e!2960383 (not (containsKey!3509 (apply!12495 lm!2023 lt!1908644) key!4653)))))

(assert (= (and start!484620 res!2011596) b!4746081))

(assert (= (and b!4746081 res!2011607) b!4746073))

(assert (= (and b!4746073 res!2011594) b!4746072))

(assert (= (and b!4746072 res!2011593) b!4746079))

(assert (= (and b!4746079 res!2011605) b!4746086))

(assert (= (and b!4746086 res!2011606) b!4746074))

(assert (= (and b!4746074 res!2011602) b!4746085))

(assert (= (and b!4746085 res!2011599) b!4746080))

(assert (= (and b!4746080 res!2011595) b!4746075))

(assert (= (and b!4746075 res!2011601) b!4746083))

(assert (= (and b!4746083 res!2011598) b!4746088))

(assert (= (and b!4746088 res!2011600) b!4746078))

(assert (= (and b!4746088 (not res!2011604)) b!4746087))

(assert (= (and b!4746087 (not res!2011597)) b!4746076))

(assert (= (and b!4746076 (not res!2011603)) b!4746089))

(assert (= start!484620 b!4746084))

(assert (= (and start!484620 ((_ is Cons!52999) oldBucket!34)) b!4746077))

(assert (= (and start!484620 ((_ is Cons!52999) newBucket!218)) b!4746082))

(declare-fun m!5703111 () Bool)

(assert (=> b!4746086 m!5703111))

(declare-fun m!5703113 () Bool)

(assert (=> b!4746086 m!5703113))

(declare-fun m!5703115 () Bool)

(assert (=> b!4746075 m!5703115))

(declare-fun m!5703117 () Bool)

(assert (=> b!4746080 m!5703117))

(declare-fun m!5703119 () Bool)

(assert (=> b!4746072 m!5703119))

(declare-fun m!5703121 () Bool)

(assert (=> b!4746081 m!5703121))

(declare-fun m!5703123 () Bool)

(assert (=> b!4746089 m!5703123))

(assert (=> b!4746089 m!5703123))

(declare-fun m!5703125 () Bool)

(assert (=> b!4746089 m!5703125))

(declare-fun m!5703127 () Bool)

(assert (=> b!4746079 m!5703127))

(declare-fun m!5703129 () Bool)

(assert (=> b!4746078 m!5703129))

(assert (=> b!4746078 m!5703129))

(declare-fun m!5703131 () Bool)

(assert (=> b!4746078 m!5703131))

(declare-fun m!5703133 () Bool)

(assert (=> b!4746087 m!5703133))

(declare-fun m!5703135 () Bool)

(assert (=> b!4746085 m!5703135))

(assert (=> start!484620 m!5703133))

(declare-fun m!5703137 () Bool)

(assert (=> start!484620 m!5703137))

(declare-fun m!5703139 () Bool)

(assert (=> b!4746076 m!5703139))

(declare-fun m!5703141 () Bool)

(assert (=> b!4746088 m!5703141))

(declare-fun m!5703143 () Bool)

(assert (=> b!4746073 m!5703143))

(declare-fun m!5703145 () Bool)

(assert (=> b!4746074 m!5703145))

(check-sat (not b!4746073) (not b!4746077) (not b!4746087) tp_is_empty!31599 (not b!4746081) (not b!4746085) (not b!4746082) (not start!484620) (not b!4746084) (not b!4746080) (not b!4746086) tp_is_empty!31597 (not b!4746072) (not b!4746089) (not b!4746088) (not b!4746075) (not b!4746076) (not b!4746074) (not b!4746078) (not b!4746079))
(check-sat)
(get-model)

(declare-fun d!1516708 () Bool)

(declare-fun res!2011612 () Bool)

(declare-fun e!2960391 () Bool)

(assert (=> d!1516708 (=> res!2011612 e!2960391)))

(assert (=> d!1516708 (= res!2011612 ((_ is Nil!53000) (toList!6041 lm!2023)))))

(assert (=> d!1516708 (= (forall!11715 (toList!6041 lm!2023) lambda!220290) e!2960391)))

(declare-fun b!4746094 () Bool)

(declare-fun e!2960392 () Bool)

(assert (=> b!4746094 (= e!2960391 e!2960392)))

(declare-fun res!2011613 () Bool)

(assert (=> b!4746094 (=> (not res!2011613) (not e!2960392))))

(declare-fun dynLambda!21889 (Int tuple2!54700) Bool)

(assert (=> b!4746094 (= res!2011613 (dynLambda!21889 lambda!220290 (h!59393 (toList!6041 lm!2023))))))

(declare-fun b!4746095 () Bool)

(assert (=> b!4746095 (= e!2960392 (forall!11715 (t!360432 (toList!6041 lm!2023)) lambda!220290))))

(assert (= (and d!1516708 (not res!2011612)) b!4746094))

(assert (= (and b!4746094 res!2011613) b!4746095))

(declare-fun b_lambda!182809 () Bool)

(assert (=> (not b_lambda!182809) (not b!4746094)))

(declare-fun m!5703147 () Bool)

(assert (=> b!4746094 m!5703147))

(declare-fun m!5703149 () Bool)

(assert (=> b!4746095 m!5703149))

(assert (=> b!4746087 d!1516708))

(declare-fun d!1516710 () Bool)

(declare-fun e!2960404 () Bool)

(assert (=> d!1516710 e!2960404))

(declare-fun res!2011622 () Bool)

(assert (=> d!1516710 (=> res!2011622 e!2960404)))

(declare-fun lt!1908657 () Bool)

(assert (=> d!1516710 (= res!2011622 (not lt!1908657))))

(declare-fun lt!1908655 () Bool)

(assert (=> d!1516710 (= lt!1908657 lt!1908655)))

(declare-datatypes ((Unit!134331 0))(
  ( (Unit!134332) )
))
(declare-fun lt!1908654 () Unit!134331)

(declare-fun e!2960403 () Unit!134331)

(assert (=> d!1516710 (= lt!1908654 e!2960403)))

(declare-fun c!810634 () Bool)

(assert (=> d!1516710 (= c!810634 lt!1908655)))

(declare-fun containsKey!3512 (List!53124 (_ BitVec 64)) Bool)

(assert (=> d!1516710 (= lt!1908655 (containsKey!3512 (toList!6041 lm!2023) lt!1908644))))

(assert (=> d!1516710 (= (contains!16425 lm!2023 lt!1908644) lt!1908657)))

(declare-fun b!4746108 () Bool)

(declare-fun lt!1908656 () Unit!134331)

(assert (=> b!4746108 (= e!2960403 lt!1908656)))

(declare-fun lemmaContainsKeyImpliesGetValueByKeyDefined!1935 (List!53124 (_ BitVec 64)) Unit!134331)

(assert (=> b!4746108 (= lt!1908656 (lemmaContainsKeyImpliesGetValueByKeyDefined!1935 (toList!6041 lm!2023) lt!1908644))))

(declare-datatypes ((Option!12494 0))(
  ( (None!12493) (Some!12493 (v!47184 List!53123)) )
))
(declare-fun isDefined!9748 (Option!12494) Bool)

(declare-fun getValueByKey!2044 (List!53124 (_ BitVec 64)) Option!12494)

(assert (=> b!4746108 (isDefined!9748 (getValueByKey!2044 (toList!6041 lm!2023) lt!1908644))))

(declare-fun b!4746109 () Bool)

(declare-fun Unit!134333 () Unit!134331)

(assert (=> b!4746109 (= e!2960403 Unit!134333)))

(declare-fun b!4746110 () Bool)

(assert (=> b!4746110 (= e!2960404 (isDefined!9748 (getValueByKey!2044 (toList!6041 lm!2023) lt!1908644)))))

(assert (= (and d!1516710 c!810634) b!4746108))

(assert (= (and d!1516710 (not c!810634)) b!4746109))

(assert (= (and d!1516710 (not res!2011622)) b!4746110))

(declare-fun m!5703155 () Bool)

(assert (=> d!1516710 m!5703155))

(declare-fun m!5703157 () Bool)

(assert (=> b!4746108 m!5703157))

(declare-fun m!5703159 () Bool)

(assert (=> b!4746108 m!5703159))

(assert (=> b!4746108 m!5703159))

(declare-fun m!5703161 () Bool)

(assert (=> b!4746108 m!5703161))

(assert (=> b!4746110 m!5703159))

(assert (=> b!4746110 m!5703159))

(assert (=> b!4746110 m!5703161))

(assert (=> b!4746076 d!1516710))

(declare-fun b!4746228 () Bool)

(assert (=> b!4746228 true))

(declare-fun bs!1138160 () Bool)

(declare-fun b!4746225 () Bool)

(assert (= bs!1138160 (and b!4746225 b!4746228)))

(declare-fun lambda!220363 () Int)

(declare-fun lambda!220362 () Int)

(assert (=> bs!1138160 (= lambda!220363 lambda!220362)))

(assert (=> b!4746225 true))

(declare-fun lambda!220364 () Int)

(declare-fun lt!1908807 () ListMap!5405)

(assert (=> bs!1138160 (= (= lt!1908807 (extractMap!2102 (t!360432 (toList!6041 lm!2023)))) (= lambda!220364 lambda!220362))))

(assert (=> b!4746225 (= (= lt!1908807 (extractMap!2102 (t!360432 (toList!6041 lm!2023)))) (= lambda!220364 lambda!220363))))

(assert (=> b!4746225 true))

(declare-fun bs!1138161 () Bool)

(declare-fun d!1516718 () Bool)

(assert (= bs!1138161 (and d!1516718 b!4746228)))

(declare-fun lt!1908814 () ListMap!5405)

(declare-fun lambda!220365 () Int)

(assert (=> bs!1138161 (= (= lt!1908814 (extractMap!2102 (t!360432 (toList!6041 lm!2023)))) (= lambda!220365 lambda!220362))))

(declare-fun bs!1138162 () Bool)

(assert (= bs!1138162 (and d!1516718 b!4746225)))

(assert (=> bs!1138162 (= (= lt!1908814 (extractMap!2102 (t!360432 (toList!6041 lm!2023)))) (= lambda!220365 lambda!220363))))

(assert (=> bs!1138162 (= (= lt!1908814 lt!1908807) (= lambda!220365 lambda!220364))))

(assert (=> d!1516718 true))

(declare-fun e!2960476 () ListMap!5405)

(assert (=> b!4746225 (= e!2960476 lt!1908807)))

(declare-fun lt!1908821 () ListMap!5405)

(declare-fun +!2320 (ListMap!5405 tuple2!54698) ListMap!5405)

(assert (=> b!4746225 (= lt!1908821 (+!2320 (extractMap!2102 (t!360432 (toList!6041 lm!2023))) (h!59392 (_2!30644 (h!59393 (toList!6041 lm!2023))))))))

(assert (=> b!4746225 (= lt!1908807 (addToMapMapFromBucket!1506 (t!360431 (_2!30644 (h!59393 (toList!6041 lm!2023)))) (+!2320 (extractMap!2102 (t!360432 (toList!6041 lm!2023))) (h!59392 (_2!30644 (h!59393 (toList!6041 lm!2023)))))))))

(declare-fun lt!1908818 () Unit!134331)

(declare-fun call!332158 () Unit!134331)

(assert (=> b!4746225 (= lt!1908818 call!332158)))

(declare-fun call!332159 () Bool)

(assert (=> b!4746225 call!332159))

(declare-fun lt!1908816 () Unit!134331)

(assert (=> b!4746225 (= lt!1908816 lt!1908818)))

(declare-fun forall!11717 (List!53123 Int) Bool)

(assert (=> b!4746225 (forall!11717 (toList!6042 lt!1908821) lambda!220364)))

(declare-fun lt!1908815 () Unit!134331)

(declare-fun Unit!134334 () Unit!134331)

(assert (=> b!4746225 (= lt!1908815 Unit!134334)))

(assert (=> b!4746225 (forall!11717 (t!360431 (_2!30644 (h!59393 (toList!6041 lm!2023)))) lambda!220364)))

(declare-fun lt!1908817 () Unit!134331)

(declare-fun Unit!134335 () Unit!134331)

(assert (=> b!4746225 (= lt!1908817 Unit!134335)))

(declare-fun lt!1908823 () Unit!134331)

(declare-fun Unit!134336 () Unit!134331)

(assert (=> b!4746225 (= lt!1908823 Unit!134336)))

(declare-fun lt!1908826 () Unit!134331)

(declare-fun forallContained!3749 (List!53123 Int tuple2!54698) Unit!134331)

(assert (=> b!4746225 (= lt!1908826 (forallContained!3749 (toList!6042 lt!1908821) lambda!220364 (h!59392 (_2!30644 (h!59393 (toList!6041 lm!2023))))))))

(assert (=> b!4746225 (contains!16426 lt!1908821 (_1!30643 (h!59392 (_2!30644 (h!59393 (toList!6041 lm!2023))))))))

(declare-fun lt!1908820 () Unit!134331)

(declare-fun Unit!134337 () Unit!134331)

(assert (=> b!4746225 (= lt!1908820 Unit!134337)))

(assert (=> b!4746225 (contains!16426 lt!1908807 (_1!30643 (h!59392 (_2!30644 (h!59393 (toList!6041 lm!2023))))))))

(declare-fun lt!1908822 () Unit!134331)

(declare-fun Unit!134338 () Unit!134331)

(assert (=> b!4746225 (= lt!1908822 Unit!134338)))

(assert (=> b!4746225 (forall!11717 (_2!30644 (h!59393 (toList!6041 lm!2023))) lambda!220364)))

(declare-fun lt!1908812 () Unit!134331)

(declare-fun Unit!134339 () Unit!134331)

(assert (=> b!4746225 (= lt!1908812 Unit!134339)))

(assert (=> b!4746225 (forall!11717 (toList!6042 lt!1908821) lambda!220364)))

(declare-fun lt!1908808 () Unit!134331)

(declare-fun Unit!134340 () Unit!134331)

(assert (=> b!4746225 (= lt!1908808 Unit!134340)))

(declare-fun lt!1908811 () Unit!134331)

(declare-fun Unit!134341 () Unit!134331)

(assert (=> b!4746225 (= lt!1908811 Unit!134341)))

(declare-fun lt!1908819 () Unit!134331)

(declare-fun addForallContainsKeyThenBeforeAdding!841 (ListMap!5405 ListMap!5405 K!14340 V!14586) Unit!134331)

(assert (=> b!4746225 (= lt!1908819 (addForallContainsKeyThenBeforeAdding!841 (extractMap!2102 (t!360432 (toList!6041 lm!2023))) lt!1908807 (_1!30643 (h!59392 (_2!30644 (h!59393 (toList!6041 lm!2023))))) (_2!30643 (h!59392 (_2!30644 (h!59393 (toList!6041 lm!2023)))))))))

(assert (=> b!4746225 (forall!11717 (toList!6042 (extractMap!2102 (t!360432 (toList!6041 lm!2023)))) lambda!220364)))

(declare-fun lt!1908810 () Unit!134331)

(assert (=> b!4746225 (= lt!1908810 lt!1908819)))

(assert (=> b!4746225 (forall!11717 (toList!6042 (extractMap!2102 (t!360432 (toList!6041 lm!2023)))) lambda!220364)))

(declare-fun lt!1908825 () Unit!134331)

(declare-fun Unit!134342 () Unit!134331)

(assert (=> b!4746225 (= lt!1908825 Unit!134342)))

(declare-fun res!2011664 () Bool)

(assert (=> b!4746225 (= res!2011664 (forall!11717 (_2!30644 (h!59393 (toList!6041 lm!2023))) lambda!220364))))

(declare-fun e!2960475 () Bool)

(assert (=> b!4746225 (=> (not res!2011664) (not e!2960475))))

(assert (=> b!4746225 e!2960475))

(declare-fun lt!1908824 () Unit!134331)

(declare-fun Unit!134343 () Unit!134331)

(assert (=> b!4746225 (= lt!1908824 Unit!134343)))

(declare-fun b!4746226 () Bool)

(declare-fun e!2960477 () Bool)

(declare-fun invariantList!1557 (List!53123) Bool)

(assert (=> b!4746226 (= e!2960477 (invariantList!1557 (toList!6042 lt!1908814)))))

(declare-fun b!4746227 () Bool)

(declare-fun res!2011666 () Bool)

(assert (=> b!4746227 (=> (not res!2011666) (not e!2960477))))

(assert (=> b!4746227 (= res!2011666 (forall!11717 (toList!6042 (extractMap!2102 (t!360432 (toList!6041 lm!2023)))) lambda!220365))))

(declare-fun bm!332153 () Bool)

(declare-fun c!810662 () Bool)

(declare-fun call!332160 () Bool)

(assert (=> bm!332153 (= call!332160 (forall!11717 (toList!6042 (extractMap!2102 (t!360432 (toList!6041 lm!2023)))) (ite c!810662 lambda!220362 lambda!220364)))))

(declare-fun bm!332154 () Bool)

(declare-fun lemmaContainsAllItsOwnKeys!842 (ListMap!5405) Unit!134331)

(assert (=> bm!332154 (= call!332158 (lemmaContainsAllItsOwnKeys!842 (extractMap!2102 (t!360432 (toList!6041 lm!2023)))))))

(assert (=> b!4746228 (= e!2960476 (extractMap!2102 (t!360432 (toList!6041 lm!2023))))))

(declare-fun lt!1908809 () Unit!134331)

(assert (=> b!4746228 (= lt!1908809 call!332158)))

(assert (=> b!4746228 call!332160))

(declare-fun lt!1908806 () Unit!134331)

(assert (=> b!4746228 (= lt!1908806 lt!1908809)))

(assert (=> b!4746228 call!332159))

(declare-fun lt!1908813 () Unit!134331)

(declare-fun Unit!134344 () Unit!134331)

(assert (=> b!4746228 (= lt!1908813 Unit!134344)))

(assert (=> d!1516718 e!2960477))

(declare-fun res!2011665 () Bool)

(assert (=> d!1516718 (=> (not res!2011665) (not e!2960477))))

(assert (=> d!1516718 (= res!2011665 (forall!11717 (_2!30644 (h!59393 (toList!6041 lm!2023))) lambda!220365))))

(assert (=> d!1516718 (= lt!1908814 e!2960476)))

(assert (=> d!1516718 (= c!810662 ((_ is Nil!52999) (_2!30644 (h!59393 (toList!6041 lm!2023)))))))

(assert (=> d!1516718 (noDuplicateKeys!2076 (_2!30644 (h!59393 (toList!6041 lm!2023))))))

(assert (=> d!1516718 (= (addToMapMapFromBucket!1506 (_2!30644 (h!59393 (toList!6041 lm!2023))) (extractMap!2102 (t!360432 (toList!6041 lm!2023)))) lt!1908814)))

(declare-fun b!4746229 () Bool)

(assert (=> b!4746229 (= e!2960475 call!332160)))

(declare-fun bm!332155 () Bool)

(assert (=> bm!332155 (= call!332159 (forall!11717 (toList!6042 (extractMap!2102 (t!360432 (toList!6041 lm!2023)))) (ite c!810662 lambda!220362 lambda!220363)))))

(assert (= (and d!1516718 c!810662) b!4746228))

(assert (= (and d!1516718 (not c!810662)) b!4746225))

(assert (= (and b!4746225 res!2011664) b!4746229))

(assert (= (or b!4746228 b!4746225) bm!332154))

(assert (= (or b!4746228 b!4746229) bm!332153))

(assert (= (or b!4746228 b!4746225) bm!332155))

(assert (= (and d!1516718 res!2011665) b!4746227))

(assert (= (and b!4746227 res!2011666) b!4746226))

(declare-fun m!5703267 () Bool)

(assert (=> bm!332155 m!5703267))

(declare-fun m!5703269 () Bool)

(assert (=> d!1516718 m!5703269))

(declare-fun m!5703271 () Bool)

(assert (=> d!1516718 m!5703271))

(assert (=> bm!332154 m!5703129))

(declare-fun m!5703273 () Bool)

(assert (=> bm!332154 m!5703273))

(declare-fun m!5703275 () Bool)

(assert (=> b!4746225 m!5703275))

(declare-fun m!5703277 () Bool)

(assert (=> b!4746225 m!5703277))

(assert (=> b!4746225 m!5703129))

(declare-fun m!5703279 () Bool)

(assert (=> b!4746225 m!5703279))

(declare-fun m!5703281 () Bool)

(assert (=> b!4746225 m!5703281))

(assert (=> b!4746225 m!5703277))

(assert (=> b!4746225 m!5703129))

(declare-fun m!5703283 () Bool)

(assert (=> b!4746225 m!5703283))

(assert (=> b!4746225 m!5703281))

(declare-fun m!5703285 () Bool)

(assert (=> b!4746225 m!5703285))

(declare-fun m!5703287 () Bool)

(assert (=> b!4746225 m!5703287))

(assert (=> b!4746225 m!5703279))

(declare-fun m!5703289 () Bool)

(assert (=> b!4746225 m!5703289))

(declare-fun m!5703291 () Bool)

(assert (=> b!4746225 m!5703291))

(assert (=> b!4746225 m!5703275))

(declare-fun m!5703293 () Bool)

(assert (=> b!4746225 m!5703293))

(declare-fun m!5703295 () Bool)

(assert (=> bm!332153 m!5703295))

(declare-fun m!5703297 () Bool)

(assert (=> b!4746227 m!5703297))

(declare-fun m!5703299 () Bool)

(assert (=> b!4746226 m!5703299))

(assert (=> b!4746078 d!1516718))

(declare-fun bs!1138163 () Bool)

(declare-fun d!1516752 () Bool)

(assert (= bs!1138163 (and d!1516752 start!484620)))

(declare-fun lambda!220368 () Int)

(assert (=> bs!1138163 (= lambda!220368 lambda!220290)))

(declare-fun lt!1908829 () ListMap!5405)

(assert (=> d!1516752 (invariantList!1557 (toList!6042 lt!1908829))))

(declare-fun e!2960480 () ListMap!5405)

(assert (=> d!1516752 (= lt!1908829 e!2960480)))

(declare-fun c!810665 () Bool)

(assert (=> d!1516752 (= c!810665 ((_ is Cons!53000) (t!360432 (toList!6041 lm!2023))))))

(assert (=> d!1516752 (forall!11715 (t!360432 (toList!6041 lm!2023)) lambda!220368)))

(assert (=> d!1516752 (= (extractMap!2102 (t!360432 (toList!6041 lm!2023))) lt!1908829)))

(declare-fun b!4746236 () Bool)

(assert (=> b!4746236 (= e!2960480 (addToMapMapFromBucket!1506 (_2!30644 (h!59393 (t!360432 (toList!6041 lm!2023)))) (extractMap!2102 (t!360432 (t!360432 (toList!6041 lm!2023))))))))

(declare-fun b!4746237 () Bool)

(assert (=> b!4746237 (= e!2960480 (ListMap!5406 Nil!52999))))

(assert (= (and d!1516752 c!810665) b!4746236))

(assert (= (and d!1516752 (not c!810665)) b!4746237))

(declare-fun m!5703301 () Bool)

(assert (=> d!1516752 m!5703301))

(declare-fun m!5703303 () Bool)

(assert (=> d!1516752 m!5703303))

(declare-fun m!5703305 () Bool)

(assert (=> b!4746236 m!5703305))

(assert (=> b!4746236 m!5703305))

(declare-fun m!5703307 () Bool)

(assert (=> b!4746236 m!5703307))

(assert (=> b!4746078 d!1516752))

(declare-fun d!1516754 () Bool)

(declare-fun tail!9157 (List!53124) List!53124)

(assert (=> d!1516754 (= (tail!9155 lm!2023) (ListLongMap!4572 (tail!9157 (toList!6041 lm!2023))))))

(declare-fun bs!1138164 () Bool)

(assert (= bs!1138164 d!1516754))

(declare-fun m!5703309 () Bool)

(assert (=> bs!1138164 m!5703309))

(assert (=> b!4746088 d!1516754))

(declare-fun bs!1138165 () Bool)

(declare-fun d!1516756 () Bool)

(assert (= bs!1138165 (and d!1516756 b!4746228)))

(declare-fun lambda!220371 () Int)

(assert (=> bs!1138165 (not (= lambda!220371 lambda!220362))))

(declare-fun bs!1138166 () Bool)

(assert (= bs!1138166 (and d!1516756 b!4746225)))

(assert (=> bs!1138166 (not (= lambda!220371 lambda!220363))))

(assert (=> bs!1138166 (not (= lambda!220371 lambda!220364))))

(declare-fun bs!1138167 () Bool)

(assert (= bs!1138167 (and d!1516756 d!1516718)))

(assert (=> bs!1138167 (not (= lambda!220371 lambda!220365))))

(assert (=> d!1516756 true))

(assert (=> d!1516756 true))

(assert (=> d!1516756 (= (allKeysSameHash!1902 oldBucket!34 hash!405 hashF!1323) (forall!11717 oldBucket!34 lambda!220371))))

(declare-fun bs!1138168 () Bool)

(assert (= bs!1138168 d!1516756))

(declare-fun m!5703311 () Bool)

(assert (=> bs!1138168 m!5703311))

(assert (=> b!4746079 d!1516756))

(declare-fun d!1516758 () Bool)

(declare-fun res!2011671 () Bool)

(declare-fun e!2960485 () Bool)

(assert (=> d!1516758 (=> res!2011671 e!2960485)))

(assert (=> d!1516758 (= res!2011671 (and ((_ is Cons!52999) (apply!12495 lm!2023 lt!1908644)) (= (_1!30643 (h!59392 (apply!12495 lm!2023 lt!1908644))) key!4653)))))

(assert (=> d!1516758 (= (containsKey!3509 (apply!12495 lm!2023 lt!1908644) key!4653) e!2960485)))

(declare-fun b!4746246 () Bool)

(declare-fun e!2960486 () Bool)

(assert (=> b!4746246 (= e!2960485 e!2960486)))

(declare-fun res!2011672 () Bool)

(assert (=> b!4746246 (=> (not res!2011672) (not e!2960486))))

(assert (=> b!4746246 (= res!2011672 ((_ is Cons!52999) (apply!12495 lm!2023 lt!1908644)))))

(declare-fun b!4746247 () Bool)

(assert (=> b!4746247 (= e!2960486 (containsKey!3509 (t!360431 (apply!12495 lm!2023 lt!1908644)) key!4653))))

(assert (= (and d!1516758 (not res!2011671)) b!4746246))

(assert (= (and b!4746246 res!2011672) b!4746247))

(declare-fun m!5703313 () Bool)

(assert (=> b!4746247 m!5703313))

(assert (=> b!4746089 d!1516758))

(declare-fun d!1516760 () Bool)

(declare-fun get!17829 (Option!12494) List!53123)

(assert (=> d!1516760 (= (apply!12495 lm!2023 lt!1908644) (get!17829 (getValueByKey!2044 (toList!6041 lm!2023) lt!1908644)))))

(declare-fun bs!1138169 () Bool)

(assert (= bs!1138169 d!1516760))

(assert (=> bs!1138169 m!5703159))

(assert (=> bs!1138169 m!5703159))

(declare-fun m!5703315 () Bool)

(assert (=> bs!1138169 m!5703315))

(assert (=> b!4746089 d!1516760))

(declare-fun bs!1138170 () Bool)

(declare-fun d!1516762 () Bool)

(assert (= bs!1138170 (and d!1516762 start!484620)))

(declare-fun lambda!220374 () Int)

(assert (=> bs!1138170 (not (= lambda!220374 lambda!220290))))

(declare-fun bs!1138171 () Bool)

(assert (= bs!1138171 (and d!1516762 d!1516752)))

(assert (=> bs!1138171 (not (= lambda!220374 lambda!220368))))

(assert (=> d!1516762 true))

(assert (=> d!1516762 (= (allKeysSameHashInMap!1990 lm!2023 hashF!1323) (forall!11715 (toList!6041 lm!2023) lambda!220374))))

(declare-fun bs!1138172 () Bool)

(assert (= bs!1138172 d!1516762))

(declare-fun m!5703317 () Bool)

(assert (=> bs!1138172 m!5703317))

(assert (=> b!4746080 d!1516762))

(declare-fun d!1516764 () Bool)

(declare-fun res!2011677 () Bool)

(declare-fun e!2960491 () Bool)

(assert (=> d!1516764 (=> res!2011677 e!2960491)))

(assert (=> d!1516764 (= res!2011677 (not ((_ is Cons!52999) oldBucket!34)))))

(assert (=> d!1516764 (= (noDuplicateKeys!2076 oldBucket!34) e!2960491)))

(declare-fun b!4746254 () Bool)

(declare-fun e!2960492 () Bool)

(assert (=> b!4746254 (= e!2960491 e!2960492)))

(declare-fun res!2011678 () Bool)

(assert (=> b!4746254 (=> (not res!2011678) (not e!2960492))))

(assert (=> b!4746254 (= res!2011678 (not (containsKey!3509 (t!360431 oldBucket!34) (_1!30643 (h!59392 oldBucket!34)))))))

(declare-fun b!4746255 () Bool)

(assert (=> b!4746255 (= e!2960492 (noDuplicateKeys!2076 (t!360431 oldBucket!34)))))

(assert (= (and d!1516764 (not res!2011677)) b!4746254))

(assert (= (and b!4746254 res!2011678) b!4746255))

(declare-fun m!5703319 () Bool)

(assert (=> b!4746254 m!5703319))

(declare-fun m!5703321 () Bool)

(assert (=> b!4746255 m!5703321))

(assert (=> b!4746081 d!1516764))

(declare-fun b!4746265 () Bool)

(declare-fun e!2960498 () List!53123)

(declare-fun e!2960497 () List!53123)

(assert (=> b!4746265 (= e!2960498 e!2960497)))

(declare-fun c!810670 () Bool)

(assert (=> b!4746265 (= c!810670 ((_ is Cons!52999) oldBucket!34))))

(declare-fun b!4746266 () Bool)

(assert (=> b!4746266 (= e!2960497 (Cons!52999 (h!59392 oldBucket!34) (removePairForKey!1671 (t!360431 oldBucket!34) key!4653)))))

(declare-fun d!1516766 () Bool)

(declare-fun lt!1908832 () List!53123)

(assert (=> d!1516766 (not (containsKey!3509 lt!1908832 key!4653))))

(assert (=> d!1516766 (= lt!1908832 e!2960498)))

(declare-fun c!810671 () Bool)

(assert (=> d!1516766 (= c!810671 (and ((_ is Cons!52999) oldBucket!34) (= (_1!30643 (h!59392 oldBucket!34)) key!4653)))))

(assert (=> d!1516766 (noDuplicateKeys!2076 oldBucket!34)))

(assert (=> d!1516766 (= (removePairForKey!1671 oldBucket!34 key!4653) lt!1908832)))

(declare-fun b!4746264 () Bool)

(assert (=> b!4746264 (= e!2960498 (t!360431 oldBucket!34))))

(declare-fun b!4746267 () Bool)

(assert (=> b!4746267 (= e!2960497 Nil!52999)))

(assert (= (and d!1516766 c!810671) b!4746264))

(assert (= (and d!1516766 (not c!810671)) b!4746265))

(assert (= (and b!4746265 c!810670) b!4746266))

(assert (= (and b!4746265 (not c!810670)) b!4746267))

(declare-fun m!5703323 () Bool)

(assert (=> b!4746266 m!5703323))

(declare-fun m!5703325 () Bool)

(assert (=> d!1516766 m!5703325))

(assert (=> d!1516766 m!5703121))

(assert (=> b!4746072 d!1516766))

(declare-fun d!1516768 () Bool)

(declare-fun hash!4496 (Hashable!6445 K!14340) (_ BitVec 64))

(assert (=> d!1516768 (= (hash!4494 hashF!1323 key!4653) (hash!4496 hashF!1323 key!4653))))

(declare-fun bs!1138173 () Bool)

(assert (= bs!1138173 d!1516768))

(declare-fun m!5703327 () Bool)

(assert (=> bs!1138173 m!5703327))

(assert (=> b!4746074 d!1516768))

(assert (=> start!484620 d!1516708))

(declare-fun d!1516770 () Bool)

(declare-fun isStrictlySorted!794 (List!53124) Bool)

(assert (=> d!1516770 (= (inv!68214 lm!2023) (isStrictlySorted!794 (toList!6041 lm!2023)))))

(declare-fun bs!1138174 () Bool)

(assert (= bs!1138174 d!1516770))

(declare-fun m!5703329 () Bool)

(assert (=> bs!1138174 m!5703329))

(assert (=> start!484620 d!1516770))

(declare-fun d!1516772 () Bool)

(declare-fun res!2011679 () Bool)

(declare-fun e!2960499 () Bool)

(assert (=> d!1516772 (=> res!2011679 e!2960499)))

(assert (=> d!1516772 (= res!2011679 (not ((_ is Cons!52999) newBucket!218)))))

(assert (=> d!1516772 (= (noDuplicateKeys!2076 newBucket!218) e!2960499)))

(declare-fun b!4746268 () Bool)

(declare-fun e!2960500 () Bool)

(assert (=> b!4746268 (= e!2960499 e!2960500)))

(declare-fun res!2011680 () Bool)

(assert (=> b!4746268 (=> (not res!2011680) (not e!2960500))))

(assert (=> b!4746268 (= res!2011680 (not (containsKey!3509 (t!360431 newBucket!218) (_1!30643 (h!59392 newBucket!218)))))))

(declare-fun b!4746269 () Bool)

(assert (=> b!4746269 (= e!2960500 (noDuplicateKeys!2076 (t!360431 newBucket!218)))))

(assert (= (and d!1516772 (not res!2011679)) b!4746268))

(assert (= (and b!4746268 res!2011680) b!4746269))

(declare-fun m!5703331 () Bool)

(assert (=> b!4746268 m!5703331))

(declare-fun m!5703333 () Bool)

(assert (=> b!4746269 m!5703333))

(assert (=> b!4746073 d!1516772))

(declare-fun b!4746288 () Bool)

(declare-fun e!2960513 () Bool)

(declare-fun e!2960516 () Bool)

(assert (=> b!4746288 (= e!2960513 e!2960516)))

(declare-fun res!2011688 () Bool)

(assert (=> b!4746288 (=> (not res!2011688) (not e!2960516))))

(declare-datatypes ((Option!12495 0))(
  ( (None!12494) (Some!12494 (v!47185 V!14586)) )
))
(declare-fun isDefined!9749 (Option!12495) Bool)

(declare-fun getValueByKey!2045 (List!53123 K!14340) Option!12495)

(assert (=> b!4746288 (= res!2011688 (isDefined!9749 (getValueByKey!2045 (toList!6042 lt!1908645) key!4653)))))

(declare-fun b!4746289 () Bool)

(declare-fun e!2960517 () Unit!134331)

(declare-fun Unit!134345 () Unit!134331)

(assert (=> b!4746289 (= e!2960517 Unit!134345)))

(declare-fun b!4746290 () Bool)

(declare-fun e!2960515 () Unit!134331)

(declare-fun lt!1908856 () Unit!134331)

(assert (=> b!4746290 (= e!2960515 lt!1908856)))

(declare-fun lt!1908851 () Unit!134331)

(declare-fun lemmaContainsKeyImpliesGetValueByKeyDefined!1936 (List!53123 K!14340) Unit!134331)

(assert (=> b!4746290 (= lt!1908851 (lemmaContainsKeyImpliesGetValueByKeyDefined!1936 (toList!6042 lt!1908645) key!4653))))

(assert (=> b!4746290 (isDefined!9749 (getValueByKey!2045 (toList!6042 lt!1908645) key!4653))))

(declare-fun lt!1908849 () Unit!134331)

(assert (=> b!4746290 (= lt!1908849 lt!1908851)))

(declare-fun lemmaInListThenGetKeysListContains!991 (List!53123 K!14340) Unit!134331)

(assert (=> b!4746290 (= lt!1908856 (lemmaInListThenGetKeysListContains!991 (toList!6042 lt!1908645) key!4653))))

(declare-fun call!332163 () Bool)

(assert (=> b!4746290 call!332163))

(declare-fun b!4746291 () Bool)

(declare-datatypes ((List!53126 0))(
  ( (Nil!53002) (Cons!53002 (h!59397 K!14340) (t!360434 List!53126)) )
))
(declare-fun e!2960518 () List!53126)

(declare-fun getKeysList!996 (List!53123) List!53126)

(assert (=> b!4746291 (= e!2960518 (getKeysList!996 (toList!6042 lt!1908645)))))

(declare-fun d!1516774 () Bool)

(assert (=> d!1516774 e!2960513))

(declare-fun res!2011689 () Bool)

(assert (=> d!1516774 (=> res!2011689 e!2960513)))

(declare-fun e!2960514 () Bool)

(assert (=> d!1516774 (= res!2011689 e!2960514)))

(declare-fun res!2011687 () Bool)

(assert (=> d!1516774 (=> (not res!2011687) (not e!2960514))))

(declare-fun lt!1908855 () Bool)

(assert (=> d!1516774 (= res!2011687 (not lt!1908855))))

(declare-fun lt!1908853 () Bool)

(assert (=> d!1516774 (= lt!1908855 lt!1908853)))

(declare-fun lt!1908854 () Unit!134331)

(assert (=> d!1516774 (= lt!1908854 e!2960515)))

(declare-fun c!810680 () Bool)

(assert (=> d!1516774 (= c!810680 lt!1908853)))

(declare-fun containsKey!3513 (List!53123 K!14340) Bool)

(assert (=> d!1516774 (= lt!1908853 (containsKey!3513 (toList!6042 lt!1908645) key!4653))))

(assert (=> d!1516774 (= (contains!16426 lt!1908645 key!4653) lt!1908855)))

(declare-fun bm!332158 () Bool)

(declare-fun contains!16428 (List!53126 K!14340) Bool)

(assert (=> bm!332158 (= call!332163 (contains!16428 e!2960518 key!4653))))

(declare-fun c!810679 () Bool)

(assert (=> bm!332158 (= c!810679 c!810680)))

(declare-fun b!4746292 () Bool)

(declare-fun keys!19083 (ListMap!5405) List!53126)

(assert (=> b!4746292 (= e!2960514 (not (contains!16428 (keys!19083 lt!1908645) key!4653)))))

(declare-fun b!4746293 () Bool)

(assert (=> b!4746293 (= e!2960515 e!2960517)))

(declare-fun c!810678 () Bool)

(assert (=> b!4746293 (= c!810678 call!332163)))

(declare-fun b!4746294 () Bool)

(assert (=> b!4746294 false))

(declare-fun lt!1908852 () Unit!134331)

(declare-fun lt!1908850 () Unit!134331)

(assert (=> b!4746294 (= lt!1908852 lt!1908850)))

(assert (=> b!4746294 (containsKey!3513 (toList!6042 lt!1908645) key!4653)))

(declare-fun lemmaInGetKeysListThenContainsKey!995 (List!53123 K!14340) Unit!134331)

(assert (=> b!4746294 (= lt!1908850 (lemmaInGetKeysListThenContainsKey!995 (toList!6042 lt!1908645) key!4653))))

(declare-fun Unit!134346 () Unit!134331)

(assert (=> b!4746294 (= e!2960517 Unit!134346)))

(declare-fun b!4746295 () Bool)

(assert (=> b!4746295 (= e!2960518 (keys!19083 lt!1908645))))

(declare-fun b!4746296 () Bool)

(assert (=> b!4746296 (= e!2960516 (contains!16428 (keys!19083 lt!1908645) key!4653))))

(assert (= (and d!1516774 c!810680) b!4746290))

(assert (= (and d!1516774 (not c!810680)) b!4746293))

(assert (= (and b!4746293 c!810678) b!4746294))

(assert (= (and b!4746293 (not c!810678)) b!4746289))

(assert (= (or b!4746290 b!4746293) bm!332158))

(assert (= (and bm!332158 c!810679) b!4746291))

(assert (= (and bm!332158 (not c!810679)) b!4746295))

(assert (= (and d!1516774 res!2011687) b!4746292))

(assert (= (and d!1516774 (not res!2011689)) b!4746288))

(assert (= (and b!4746288 res!2011688) b!4746296))

(declare-fun m!5703335 () Bool)

(assert (=> bm!332158 m!5703335))

(declare-fun m!5703337 () Bool)

(assert (=> b!4746292 m!5703337))

(assert (=> b!4746292 m!5703337))

(declare-fun m!5703339 () Bool)

(assert (=> b!4746292 m!5703339))

(declare-fun m!5703341 () Bool)

(assert (=> d!1516774 m!5703341))

(assert (=> b!4746294 m!5703341))

(declare-fun m!5703343 () Bool)

(assert (=> b!4746294 m!5703343))

(declare-fun m!5703345 () Bool)

(assert (=> b!4746291 m!5703345))

(declare-fun m!5703347 () Bool)

(assert (=> b!4746288 m!5703347))

(assert (=> b!4746288 m!5703347))

(declare-fun m!5703349 () Bool)

(assert (=> b!4746288 m!5703349))

(declare-fun m!5703351 () Bool)

(assert (=> b!4746290 m!5703351))

(assert (=> b!4746290 m!5703347))

(assert (=> b!4746290 m!5703347))

(assert (=> b!4746290 m!5703349))

(declare-fun m!5703353 () Bool)

(assert (=> b!4746290 m!5703353))

(assert (=> b!4746296 m!5703337))

(assert (=> b!4746296 m!5703337))

(assert (=> b!4746296 m!5703339))

(assert (=> b!4746295 m!5703337))

(assert (=> b!4746086 d!1516774))

(declare-fun bs!1138175 () Bool)

(declare-fun d!1516776 () Bool)

(assert (= bs!1138175 (and d!1516776 start!484620)))

(declare-fun lambda!220375 () Int)

(assert (=> bs!1138175 (= lambda!220375 lambda!220290)))

(declare-fun bs!1138176 () Bool)

(assert (= bs!1138176 (and d!1516776 d!1516752)))

(assert (=> bs!1138176 (= lambda!220375 lambda!220368)))

(declare-fun bs!1138177 () Bool)

(assert (= bs!1138177 (and d!1516776 d!1516762)))

(assert (=> bs!1138177 (not (= lambda!220375 lambda!220374))))

(declare-fun lt!1908857 () ListMap!5405)

(assert (=> d!1516776 (invariantList!1557 (toList!6042 lt!1908857))))

(declare-fun e!2960519 () ListMap!5405)

(assert (=> d!1516776 (= lt!1908857 e!2960519)))

(declare-fun c!810681 () Bool)

(assert (=> d!1516776 (= c!810681 ((_ is Cons!53000) (toList!6041 lm!2023)))))

(assert (=> d!1516776 (forall!11715 (toList!6041 lm!2023) lambda!220375)))

(assert (=> d!1516776 (= (extractMap!2102 (toList!6041 lm!2023)) lt!1908857)))

(declare-fun b!4746297 () Bool)

(assert (=> b!4746297 (= e!2960519 (addToMapMapFromBucket!1506 (_2!30644 (h!59393 (toList!6041 lm!2023))) (extractMap!2102 (t!360432 (toList!6041 lm!2023)))))))

(declare-fun b!4746298 () Bool)

(assert (=> b!4746298 (= e!2960519 (ListMap!5406 Nil!52999))))

(assert (= (and d!1516776 c!810681) b!4746297))

(assert (= (and d!1516776 (not c!810681)) b!4746298))

(declare-fun m!5703355 () Bool)

(assert (=> d!1516776 m!5703355))

(declare-fun m!5703357 () Bool)

(assert (=> d!1516776 m!5703357))

(assert (=> b!4746297 m!5703129))

(assert (=> b!4746297 m!5703129))

(assert (=> b!4746297 m!5703131))

(assert (=> b!4746086 d!1516776))

(declare-fun d!1516778 () Bool)

(assert (=> d!1516778 (= (head!10348 (toList!6041 lm!2023)) (h!59393 (toList!6041 lm!2023)))))

(assert (=> b!4746075 d!1516778))

(declare-fun bs!1138178 () Bool)

(declare-fun d!1516780 () Bool)

(assert (= bs!1138178 (and d!1516780 b!4746225)))

(declare-fun lambda!220376 () Int)

(assert (=> bs!1138178 (not (= lambda!220376 lambda!220364))))

(declare-fun bs!1138179 () Bool)

(assert (= bs!1138179 (and d!1516780 d!1516718)))

(assert (=> bs!1138179 (not (= lambda!220376 lambda!220365))))

(declare-fun bs!1138180 () Bool)

(assert (= bs!1138180 (and d!1516780 d!1516756)))

(assert (=> bs!1138180 (= lambda!220376 lambda!220371)))

(assert (=> bs!1138178 (not (= lambda!220376 lambda!220363))))

(declare-fun bs!1138181 () Bool)

(assert (= bs!1138181 (and d!1516780 b!4746228)))

(assert (=> bs!1138181 (not (= lambda!220376 lambda!220362))))

(assert (=> d!1516780 true))

(assert (=> d!1516780 true))

(assert (=> d!1516780 (= (allKeysSameHash!1902 newBucket!218 hash!405 hashF!1323) (forall!11717 newBucket!218 lambda!220376))))

(declare-fun bs!1138182 () Bool)

(assert (= bs!1138182 d!1516780))

(declare-fun m!5703359 () Bool)

(assert (=> bs!1138182 m!5703359))

(assert (=> b!4746085 d!1516780))

(declare-fun e!2960522 () Bool)

(declare-fun tp!1349550 () Bool)

(declare-fun b!4746303 () Bool)

(assert (=> b!4746303 (= e!2960522 (and tp_is_empty!31597 tp_is_empty!31599 tp!1349550))))

(assert (=> b!4746082 (= tp!1349536 e!2960522)))

(assert (= (and b!4746082 ((_ is Cons!52999) (t!360431 newBucket!218))) b!4746303))

(declare-fun e!2960523 () Bool)

(declare-fun tp!1349551 () Bool)

(declare-fun b!4746304 () Bool)

(assert (=> b!4746304 (= e!2960523 (and tp_is_empty!31597 tp_is_empty!31599 tp!1349551))))

(assert (=> b!4746077 (= tp!1349537 e!2960523)))

(assert (= (and b!4746077 ((_ is Cons!52999) (t!360431 oldBucket!34))) b!4746304))

(declare-fun b!4746309 () Bool)

(declare-fun e!2960526 () Bool)

(declare-fun tp!1349556 () Bool)

(declare-fun tp!1349557 () Bool)

(assert (=> b!4746309 (= e!2960526 (and tp!1349556 tp!1349557))))

(assert (=> b!4746084 (= tp!1349535 e!2960526)))

(assert (= (and b!4746084 ((_ is Cons!53000) (toList!6041 lm!2023))) b!4746309))

(declare-fun b_lambda!182815 () Bool)

(assert (= b_lambda!182809 (or start!484620 b_lambda!182815)))

(declare-fun bs!1138183 () Bool)

(declare-fun d!1516782 () Bool)

(assert (= bs!1138183 (and d!1516782 start!484620)))

(assert (=> bs!1138183 (= (dynLambda!21889 lambda!220290 (h!59393 (toList!6041 lm!2023))) (noDuplicateKeys!2076 (_2!30644 (h!59393 (toList!6041 lm!2023)))))))

(assert (=> bs!1138183 m!5703271))

(assert (=> b!4746094 d!1516782))

(check-sat (not b!4746294) (not d!1516780) (not b!4746247) (not d!1516762) (not b!4746110) (not b!4746291) tp_is_empty!31599 (not d!1516760) (not b!4746255) (not d!1516710) (not d!1516768) (not b_lambda!182815) (not b!4746288) (not bm!332153) (not b!4746236) (not d!1516754) (not b!4746292) (not b!4746225) (not d!1516770) (not d!1516756) (not b!4746254) (not b!4746268) (not bm!332155) (not b!4746304) (not d!1516774) (not d!1516718) (not b!4746095) (not d!1516766) (not b!4746266) (not b!4746296) (not b!4746309) (not b!4746227) (not d!1516752) (not b!4746269) (not b!4746290) (not b!4746303) (not d!1516776) (not b!4746108) (not b!4746297) (not b!4746295) (not bm!332154) (not b!4746226) (not bs!1138183) tp_is_empty!31597 (not bm!332158))
(check-sat)
(get-model)

(declare-fun d!1516806 () Bool)

(declare-fun isEmpty!29251 (Option!12494) Bool)

(assert (=> d!1516806 (= (isDefined!9748 (getValueByKey!2044 (toList!6041 lm!2023) lt!1908644)) (not (isEmpty!29251 (getValueByKey!2044 (toList!6041 lm!2023) lt!1908644))))))

(declare-fun bs!1138208 () Bool)

(assert (= bs!1138208 d!1516806))

(assert (=> bs!1138208 m!5703159))

(declare-fun m!5703425 () Bool)

(assert (=> bs!1138208 m!5703425))

(assert (=> b!4746110 d!1516806))

(declare-fun b!4746367 () Bool)

(declare-fun e!2960567 () Option!12494)

(assert (=> b!4746367 (= e!2960567 None!12493)))

(declare-fun d!1516808 () Bool)

(declare-fun c!810696 () Bool)

(assert (=> d!1516808 (= c!810696 (and ((_ is Cons!53000) (toList!6041 lm!2023)) (= (_1!30644 (h!59393 (toList!6041 lm!2023))) lt!1908644)))))

(declare-fun e!2960566 () Option!12494)

(assert (=> d!1516808 (= (getValueByKey!2044 (toList!6041 lm!2023) lt!1908644) e!2960566)))

(declare-fun b!4746365 () Bool)

(assert (=> b!4746365 (= e!2960566 e!2960567)))

(declare-fun c!810697 () Bool)

(assert (=> b!4746365 (= c!810697 (and ((_ is Cons!53000) (toList!6041 lm!2023)) (not (= (_1!30644 (h!59393 (toList!6041 lm!2023))) lt!1908644))))))

(declare-fun b!4746364 () Bool)

(assert (=> b!4746364 (= e!2960566 (Some!12493 (_2!30644 (h!59393 (toList!6041 lm!2023)))))))

(declare-fun b!4746366 () Bool)

(assert (=> b!4746366 (= e!2960567 (getValueByKey!2044 (t!360432 (toList!6041 lm!2023)) lt!1908644))))

(assert (= (and d!1516808 c!810696) b!4746364))

(assert (= (and d!1516808 (not c!810696)) b!4746365))

(assert (= (and b!4746365 c!810697) b!4746366))

(assert (= (and b!4746365 (not c!810697)) b!4746367))

(declare-fun m!5703439 () Bool)

(assert (=> b!4746366 m!5703439))

(assert (=> b!4746110 d!1516808))

(declare-fun d!1516816 () Bool)

(declare-fun res!2011716 () Bool)

(declare-fun e!2960568 () Bool)

(assert (=> d!1516816 (=> res!2011716 e!2960568)))

(assert (=> d!1516816 (= res!2011716 ((_ is Nil!53000) (t!360432 (toList!6041 lm!2023))))))

(assert (=> d!1516816 (= (forall!11715 (t!360432 (toList!6041 lm!2023)) lambda!220290) e!2960568)))

(declare-fun b!4746368 () Bool)

(declare-fun e!2960569 () Bool)

(assert (=> b!4746368 (= e!2960568 e!2960569)))

(declare-fun res!2011717 () Bool)

(assert (=> b!4746368 (=> (not res!2011717) (not e!2960569))))

(assert (=> b!4746368 (= res!2011717 (dynLambda!21889 lambda!220290 (h!59393 (t!360432 (toList!6041 lm!2023)))))))

(declare-fun b!4746369 () Bool)

(assert (=> b!4746369 (= e!2960569 (forall!11715 (t!360432 (t!360432 (toList!6041 lm!2023))) lambda!220290))))

(assert (= (and d!1516816 (not res!2011716)) b!4746368))

(assert (= (and b!4746368 res!2011717) b!4746369))

(declare-fun b_lambda!182823 () Bool)

(assert (=> (not b_lambda!182823) (not b!4746368)))

(declare-fun m!5703441 () Bool)

(assert (=> b!4746368 m!5703441))

(declare-fun m!5703443 () Bool)

(assert (=> b!4746369 m!5703443))

(assert (=> b!4746095 d!1516816))

(declare-fun d!1516818 () Bool)

(declare-fun res!2011722 () Bool)

(declare-fun e!2960574 () Bool)

(assert (=> d!1516818 (=> res!2011722 e!2960574)))

(assert (=> d!1516818 (= res!2011722 ((_ is Nil!52999) oldBucket!34))))

(assert (=> d!1516818 (= (forall!11717 oldBucket!34 lambda!220371) e!2960574)))

(declare-fun b!4746374 () Bool)

(declare-fun e!2960575 () Bool)

(assert (=> b!4746374 (= e!2960574 e!2960575)))

(declare-fun res!2011723 () Bool)

(assert (=> b!4746374 (=> (not res!2011723) (not e!2960575))))

(declare-fun dynLambda!21890 (Int tuple2!54698) Bool)

(assert (=> b!4746374 (= res!2011723 (dynLambda!21890 lambda!220371 (h!59392 oldBucket!34)))))

(declare-fun b!4746375 () Bool)

(assert (=> b!4746375 (= e!2960575 (forall!11717 (t!360431 oldBucket!34) lambda!220371))))

(assert (= (and d!1516818 (not res!2011722)) b!4746374))

(assert (= (and b!4746374 res!2011723) b!4746375))

(declare-fun b_lambda!182825 () Bool)

(assert (=> (not b_lambda!182825) (not b!4746374)))

(declare-fun m!5703445 () Bool)

(assert (=> b!4746374 m!5703445))

(declare-fun m!5703447 () Bool)

(assert (=> b!4746375 m!5703447))

(assert (=> d!1516756 d!1516818))

(declare-fun b!4746377 () Bool)

(declare-fun e!2960577 () List!53123)

(declare-fun e!2960576 () List!53123)

(assert (=> b!4746377 (= e!2960577 e!2960576)))

(declare-fun c!810698 () Bool)

(assert (=> b!4746377 (= c!810698 ((_ is Cons!52999) (t!360431 oldBucket!34)))))

(declare-fun b!4746378 () Bool)

(assert (=> b!4746378 (= e!2960576 (Cons!52999 (h!59392 (t!360431 oldBucket!34)) (removePairForKey!1671 (t!360431 (t!360431 oldBucket!34)) key!4653)))))

(declare-fun d!1516820 () Bool)

(declare-fun lt!1908884 () List!53123)

(assert (=> d!1516820 (not (containsKey!3509 lt!1908884 key!4653))))

(assert (=> d!1516820 (= lt!1908884 e!2960577)))

(declare-fun c!810699 () Bool)

(assert (=> d!1516820 (= c!810699 (and ((_ is Cons!52999) (t!360431 oldBucket!34)) (= (_1!30643 (h!59392 (t!360431 oldBucket!34))) key!4653)))))

(assert (=> d!1516820 (noDuplicateKeys!2076 (t!360431 oldBucket!34))))

(assert (=> d!1516820 (= (removePairForKey!1671 (t!360431 oldBucket!34) key!4653) lt!1908884)))

(declare-fun b!4746376 () Bool)

(assert (=> b!4746376 (= e!2960577 (t!360431 (t!360431 oldBucket!34)))))

(declare-fun b!4746379 () Bool)

(assert (=> b!4746379 (= e!2960576 Nil!52999)))

(assert (= (and d!1516820 c!810699) b!4746376))

(assert (= (and d!1516820 (not c!810699)) b!4746377))

(assert (= (and b!4746377 c!810698) b!4746378))

(assert (= (and b!4746377 (not c!810698)) b!4746379))

(declare-fun m!5703449 () Bool)

(assert (=> b!4746378 m!5703449))

(declare-fun m!5703451 () Bool)

(assert (=> d!1516820 m!5703451))

(assert (=> d!1516820 m!5703321))

(assert (=> b!4746266 d!1516820))

(declare-fun bs!1138209 () Bool)

(declare-fun b!4746383 () Bool)

(assert (= bs!1138209 (and b!4746383 d!1516780)))

(declare-fun lambda!220382 () Int)

(assert (=> bs!1138209 (not (= lambda!220382 lambda!220376))))

(declare-fun bs!1138210 () Bool)

(assert (= bs!1138210 (and b!4746383 b!4746225)))

(assert (=> bs!1138210 (= (= (extractMap!2102 (t!360432 (t!360432 (toList!6041 lm!2023)))) lt!1908807) (= lambda!220382 lambda!220364))))

(declare-fun bs!1138211 () Bool)

(assert (= bs!1138211 (and b!4746383 d!1516718)))

(assert (=> bs!1138211 (= (= (extractMap!2102 (t!360432 (t!360432 (toList!6041 lm!2023)))) lt!1908814) (= lambda!220382 lambda!220365))))

(declare-fun bs!1138212 () Bool)

(assert (= bs!1138212 (and b!4746383 d!1516756)))

(assert (=> bs!1138212 (not (= lambda!220382 lambda!220371))))

(assert (=> bs!1138210 (= (= (extractMap!2102 (t!360432 (t!360432 (toList!6041 lm!2023)))) (extractMap!2102 (t!360432 (toList!6041 lm!2023)))) (= lambda!220382 lambda!220363))))

(declare-fun bs!1138213 () Bool)

(assert (= bs!1138213 (and b!4746383 b!4746228)))

(assert (=> bs!1138213 (= (= (extractMap!2102 (t!360432 (t!360432 (toList!6041 lm!2023)))) (extractMap!2102 (t!360432 (toList!6041 lm!2023)))) (= lambda!220382 lambda!220362))))

(assert (=> b!4746383 true))

(declare-fun bs!1138214 () Bool)

(declare-fun b!4746380 () Bool)

(assert (= bs!1138214 (and b!4746380 d!1516780)))

(declare-fun lambda!220383 () Int)

(assert (=> bs!1138214 (not (= lambda!220383 lambda!220376))))

(declare-fun bs!1138215 () Bool)

(assert (= bs!1138215 (and b!4746380 b!4746225)))

(assert (=> bs!1138215 (= (= (extractMap!2102 (t!360432 (t!360432 (toList!6041 lm!2023)))) lt!1908807) (= lambda!220383 lambda!220364))))

(declare-fun bs!1138216 () Bool)

(assert (= bs!1138216 (and b!4746380 d!1516718)))

(assert (=> bs!1138216 (= (= (extractMap!2102 (t!360432 (t!360432 (toList!6041 lm!2023)))) lt!1908814) (= lambda!220383 lambda!220365))))

(declare-fun bs!1138217 () Bool)

(assert (= bs!1138217 (and b!4746380 d!1516756)))

(assert (=> bs!1138217 (not (= lambda!220383 lambda!220371))))

(assert (=> bs!1138215 (= (= (extractMap!2102 (t!360432 (t!360432 (toList!6041 lm!2023)))) (extractMap!2102 (t!360432 (toList!6041 lm!2023)))) (= lambda!220383 lambda!220363))))

(declare-fun bs!1138218 () Bool)

(assert (= bs!1138218 (and b!4746380 b!4746228)))

(assert (=> bs!1138218 (= (= (extractMap!2102 (t!360432 (t!360432 (toList!6041 lm!2023)))) (extractMap!2102 (t!360432 (toList!6041 lm!2023)))) (= lambda!220383 lambda!220362))))

(declare-fun bs!1138219 () Bool)

(assert (= bs!1138219 (and b!4746380 b!4746383)))

(assert (=> bs!1138219 (= lambda!220383 lambda!220382)))

(assert (=> b!4746380 true))

(declare-fun lambda!220386 () Int)

(assert (=> bs!1138214 (not (= lambda!220386 lambda!220376))))

(declare-fun lt!1908886 () ListMap!5405)

(assert (=> bs!1138215 (= (= lt!1908886 lt!1908807) (= lambda!220386 lambda!220364))))

(assert (=> bs!1138216 (= (= lt!1908886 lt!1908814) (= lambda!220386 lambda!220365))))

(assert (=> b!4746380 (= (= lt!1908886 (extractMap!2102 (t!360432 (t!360432 (toList!6041 lm!2023))))) (= lambda!220386 lambda!220383))))

(assert (=> bs!1138217 (not (= lambda!220386 lambda!220371))))

(assert (=> bs!1138215 (= (= lt!1908886 (extractMap!2102 (t!360432 (toList!6041 lm!2023)))) (= lambda!220386 lambda!220363))))

(assert (=> bs!1138218 (= (= lt!1908886 (extractMap!2102 (t!360432 (toList!6041 lm!2023)))) (= lambda!220386 lambda!220362))))

(assert (=> bs!1138219 (= (= lt!1908886 (extractMap!2102 (t!360432 (t!360432 (toList!6041 lm!2023))))) (= lambda!220386 lambda!220382))))

(assert (=> b!4746380 true))

(declare-fun bs!1138221 () Bool)

(declare-fun d!1516822 () Bool)

(assert (= bs!1138221 (and d!1516822 d!1516780)))

(declare-fun lambda!220390 () Int)

(assert (=> bs!1138221 (not (= lambda!220390 lambda!220376))))

(declare-fun bs!1138223 () Bool)

(assert (= bs!1138223 (and d!1516822 b!4746225)))

(declare-fun lt!1908893 () ListMap!5405)

(assert (=> bs!1138223 (= (= lt!1908893 lt!1908807) (= lambda!220390 lambda!220364))))

(declare-fun bs!1138224 () Bool)

(assert (= bs!1138224 (and d!1516822 d!1516718)))

(assert (=> bs!1138224 (= (= lt!1908893 lt!1908814) (= lambda!220390 lambda!220365))))

(declare-fun bs!1138226 () Bool)

(assert (= bs!1138226 (and d!1516822 b!4746380)))

(assert (=> bs!1138226 (= (= lt!1908893 (extractMap!2102 (t!360432 (t!360432 (toList!6041 lm!2023))))) (= lambda!220390 lambda!220383))))

(declare-fun bs!1138228 () Bool)

(assert (= bs!1138228 (and d!1516822 d!1516756)))

(assert (=> bs!1138228 (not (= lambda!220390 lambda!220371))))

(assert (=> bs!1138223 (= (= lt!1908893 (extractMap!2102 (t!360432 (toList!6041 lm!2023)))) (= lambda!220390 lambda!220363))))

(declare-fun bs!1138231 () Bool)

(assert (= bs!1138231 (and d!1516822 b!4746228)))

(assert (=> bs!1138231 (= (= lt!1908893 (extractMap!2102 (t!360432 (toList!6041 lm!2023)))) (= lambda!220390 lambda!220362))))

(assert (=> bs!1138226 (= (= lt!1908893 lt!1908886) (= lambda!220390 lambda!220386))))

(declare-fun bs!1138233 () Bool)

(assert (= bs!1138233 (and d!1516822 b!4746383)))

(assert (=> bs!1138233 (= (= lt!1908893 (extractMap!2102 (t!360432 (t!360432 (toList!6041 lm!2023))))) (= lambda!220390 lambda!220382))))

(assert (=> d!1516822 true))

(declare-fun e!2960579 () ListMap!5405)

(assert (=> b!4746380 (= e!2960579 lt!1908886)))

(declare-fun lt!1908900 () ListMap!5405)

(assert (=> b!4746380 (= lt!1908900 (+!2320 (extractMap!2102 (t!360432 (t!360432 (toList!6041 lm!2023)))) (h!59392 (_2!30644 (h!59393 (t!360432 (toList!6041 lm!2023)))))))))

(assert (=> b!4746380 (= lt!1908886 (addToMapMapFromBucket!1506 (t!360431 (_2!30644 (h!59393 (t!360432 (toList!6041 lm!2023))))) (+!2320 (extractMap!2102 (t!360432 (t!360432 (toList!6041 lm!2023)))) (h!59392 (_2!30644 (h!59393 (t!360432 (toList!6041 lm!2023))))))))))

(declare-fun lt!1908897 () Unit!134331)

(declare-fun call!332167 () Unit!134331)

(assert (=> b!4746380 (= lt!1908897 call!332167)))

(declare-fun call!332168 () Bool)

(assert (=> b!4746380 call!332168))

(declare-fun lt!1908895 () Unit!134331)

(assert (=> b!4746380 (= lt!1908895 lt!1908897)))

(assert (=> b!4746380 (forall!11717 (toList!6042 lt!1908900) lambda!220386)))

(declare-fun lt!1908894 () Unit!134331)

(declare-fun Unit!134358 () Unit!134331)

(assert (=> b!4746380 (= lt!1908894 Unit!134358)))

(assert (=> b!4746380 (forall!11717 (t!360431 (_2!30644 (h!59393 (t!360432 (toList!6041 lm!2023))))) lambda!220386)))

(declare-fun lt!1908896 () Unit!134331)

(declare-fun Unit!134359 () Unit!134331)

(assert (=> b!4746380 (= lt!1908896 Unit!134359)))

(declare-fun lt!1908902 () Unit!134331)

(declare-fun Unit!134360 () Unit!134331)

(assert (=> b!4746380 (= lt!1908902 Unit!134360)))

(declare-fun lt!1908905 () Unit!134331)

(assert (=> b!4746380 (= lt!1908905 (forallContained!3749 (toList!6042 lt!1908900) lambda!220386 (h!59392 (_2!30644 (h!59393 (t!360432 (toList!6041 lm!2023)))))))))

(assert (=> b!4746380 (contains!16426 lt!1908900 (_1!30643 (h!59392 (_2!30644 (h!59393 (t!360432 (toList!6041 lm!2023)))))))))

(declare-fun lt!1908899 () Unit!134331)

(declare-fun Unit!134361 () Unit!134331)

(assert (=> b!4746380 (= lt!1908899 Unit!134361)))

(assert (=> b!4746380 (contains!16426 lt!1908886 (_1!30643 (h!59392 (_2!30644 (h!59393 (t!360432 (toList!6041 lm!2023)))))))))

(declare-fun lt!1908901 () Unit!134331)

(declare-fun Unit!134362 () Unit!134331)

(assert (=> b!4746380 (= lt!1908901 Unit!134362)))

(assert (=> b!4746380 (forall!11717 (_2!30644 (h!59393 (t!360432 (toList!6041 lm!2023)))) lambda!220386)))

(declare-fun lt!1908891 () Unit!134331)

(declare-fun Unit!134363 () Unit!134331)

(assert (=> b!4746380 (= lt!1908891 Unit!134363)))

(assert (=> b!4746380 (forall!11717 (toList!6042 lt!1908900) lambda!220386)))

(declare-fun lt!1908887 () Unit!134331)

(declare-fun Unit!134364 () Unit!134331)

(assert (=> b!4746380 (= lt!1908887 Unit!134364)))

(declare-fun lt!1908890 () Unit!134331)

(declare-fun Unit!134365 () Unit!134331)

(assert (=> b!4746380 (= lt!1908890 Unit!134365)))

(declare-fun lt!1908898 () Unit!134331)

(assert (=> b!4746380 (= lt!1908898 (addForallContainsKeyThenBeforeAdding!841 (extractMap!2102 (t!360432 (t!360432 (toList!6041 lm!2023)))) lt!1908886 (_1!30643 (h!59392 (_2!30644 (h!59393 (t!360432 (toList!6041 lm!2023)))))) (_2!30643 (h!59392 (_2!30644 (h!59393 (t!360432 (toList!6041 lm!2023))))))))))

(assert (=> b!4746380 (forall!11717 (toList!6042 (extractMap!2102 (t!360432 (t!360432 (toList!6041 lm!2023))))) lambda!220386)))

(declare-fun lt!1908889 () Unit!134331)

(assert (=> b!4746380 (= lt!1908889 lt!1908898)))

(assert (=> b!4746380 (forall!11717 (toList!6042 (extractMap!2102 (t!360432 (t!360432 (toList!6041 lm!2023))))) lambda!220386)))

(declare-fun lt!1908904 () Unit!134331)

(declare-fun Unit!134366 () Unit!134331)

(assert (=> b!4746380 (= lt!1908904 Unit!134366)))

(declare-fun res!2011724 () Bool)

(assert (=> b!4746380 (= res!2011724 (forall!11717 (_2!30644 (h!59393 (t!360432 (toList!6041 lm!2023)))) lambda!220386))))

(declare-fun e!2960578 () Bool)

(assert (=> b!4746380 (=> (not res!2011724) (not e!2960578))))

(assert (=> b!4746380 e!2960578))

(declare-fun lt!1908903 () Unit!134331)

(declare-fun Unit!134367 () Unit!134331)

(assert (=> b!4746380 (= lt!1908903 Unit!134367)))

(declare-fun b!4746381 () Bool)

(declare-fun e!2960580 () Bool)

(assert (=> b!4746381 (= e!2960580 (invariantList!1557 (toList!6042 lt!1908893)))))

(declare-fun b!4746382 () Bool)

(declare-fun res!2011726 () Bool)

(assert (=> b!4746382 (=> (not res!2011726) (not e!2960580))))

(assert (=> b!4746382 (= res!2011726 (forall!11717 (toList!6042 (extractMap!2102 (t!360432 (t!360432 (toList!6041 lm!2023))))) lambda!220390))))

(declare-fun c!810700 () Bool)

(declare-fun bm!332162 () Bool)

(declare-fun call!332169 () Bool)

(assert (=> bm!332162 (= call!332169 (forall!11717 (toList!6042 (extractMap!2102 (t!360432 (t!360432 (toList!6041 lm!2023))))) (ite c!810700 lambda!220382 lambda!220386)))))

(declare-fun bm!332163 () Bool)

(assert (=> bm!332163 (= call!332167 (lemmaContainsAllItsOwnKeys!842 (extractMap!2102 (t!360432 (t!360432 (toList!6041 lm!2023))))))))

(assert (=> b!4746383 (= e!2960579 (extractMap!2102 (t!360432 (t!360432 (toList!6041 lm!2023)))))))

(declare-fun lt!1908888 () Unit!134331)

(assert (=> b!4746383 (= lt!1908888 call!332167)))

(assert (=> b!4746383 call!332169))

(declare-fun lt!1908885 () Unit!134331)

(assert (=> b!4746383 (= lt!1908885 lt!1908888)))

(assert (=> b!4746383 call!332168))

(declare-fun lt!1908892 () Unit!134331)

(declare-fun Unit!134368 () Unit!134331)

(assert (=> b!4746383 (= lt!1908892 Unit!134368)))

(assert (=> d!1516822 e!2960580))

(declare-fun res!2011725 () Bool)

(assert (=> d!1516822 (=> (not res!2011725) (not e!2960580))))

(assert (=> d!1516822 (= res!2011725 (forall!11717 (_2!30644 (h!59393 (t!360432 (toList!6041 lm!2023)))) lambda!220390))))

(assert (=> d!1516822 (= lt!1908893 e!2960579)))

(assert (=> d!1516822 (= c!810700 ((_ is Nil!52999) (_2!30644 (h!59393 (t!360432 (toList!6041 lm!2023))))))))

(assert (=> d!1516822 (noDuplicateKeys!2076 (_2!30644 (h!59393 (t!360432 (toList!6041 lm!2023)))))))

(assert (=> d!1516822 (= (addToMapMapFromBucket!1506 (_2!30644 (h!59393 (t!360432 (toList!6041 lm!2023)))) (extractMap!2102 (t!360432 (t!360432 (toList!6041 lm!2023))))) lt!1908893)))

(declare-fun b!4746384 () Bool)

(assert (=> b!4746384 (= e!2960578 call!332169)))

(declare-fun bm!332164 () Bool)

(assert (=> bm!332164 (= call!332168 (forall!11717 (toList!6042 (extractMap!2102 (t!360432 (t!360432 (toList!6041 lm!2023))))) (ite c!810700 lambda!220382 lambda!220383)))))

(assert (= (and d!1516822 c!810700) b!4746383))

(assert (= (and d!1516822 (not c!810700)) b!4746380))

(assert (= (and b!4746380 res!2011724) b!4746384))

(assert (= (or b!4746383 b!4746380) bm!332163))

(assert (= (or b!4746383 b!4746384) bm!332162))

(assert (= (or b!4746383 b!4746380) bm!332164))

(assert (= (and d!1516822 res!2011725) b!4746382))

(assert (= (and b!4746382 res!2011726) b!4746381))

(declare-fun m!5703461 () Bool)

(assert (=> bm!332164 m!5703461))

(declare-fun m!5703463 () Bool)

(assert (=> d!1516822 m!5703463))

(declare-fun m!5703465 () Bool)

(assert (=> d!1516822 m!5703465))

(assert (=> bm!332163 m!5703305))

(declare-fun m!5703467 () Bool)

(assert (=> bm!332163 m!5703467))

(declare-fun m!5703469 () Bool)

(assert (=> b!4746380 m!5703469))

(declare-fun m!5703471 () Bool)

(assert (=> b!4746380 m!5703471))

(assert (=> b!4746380 m!5703305))

(declare-fun m!5703473 () Bool)

(assert (=> b!4746380 m!5703473))

(declare-fun m!5703475 () Bool)

(assert (=> b!4746380 m!5703475))

(assert (=> b!4746380 m!5703471))

(assert (=> b!4746380 m!5703305))

(declare-fun m!5703477 () Bool)

(assert (=> b!4746380 m!5703477))

(assert (=> b!4746380 m!5703475))

(declare-fun m!5703479 () Bool)

(assert (=> b!4746380 m!5703479))

(declare-fun m!5703481 () Bool)

(assert (=> b!4746380 m!5703481))

(assert (=> b!4746380 m!5703473))

(declare-fun m!5703483 () Bool)

(assert (=> b!4746380 m!5703483))

(declare-fun m!5703485 () Bool)

(assert (=> b!4746380 m!5703485))

(assert (=> b!4746380 m!5703469))

(declare-fun m!5703487 () Bool)

(assert (=> b!4746380 m!5703487))

(declare-fun m!5703489 () Bool)

(assert (=> bm!332162 m!5703489))

(declare-fun m!5703491 () Bool)

(assert (=> b!4746382 m!5703491))

(declare-fun m!5703493 () Bool)

(assert (=> b!4746381 m!5703493))

(assert (=> b!4746236 d!1516822))

(declare-fun bs!1138236 () Bool)

(declare-fun d!1516826 () Bool)

(assert (= bs!1138236 (and d!1516826 start!484620)))

(declare-fun lambda!220391 () Int)

(assert (=> bs!1138236 (= lambda!220391 lambda!220290)))

(declare-fun bs!1138237 () Bool)

(assert (= bs!1138237 (and d!1516826 d!1516752)))

(assert (=> bs!1138237 (= lambda!220391 lambda!220368)))

(declare-fun bs!1138238 () Bool)

(assert (= bs!1138238 (and d!1516826 d!1516762)))

(assert (=> bs!1138238 (not (= lambda!220391 lambda!220374))))

(declare-fun bs!1138239 () Bool)

(assert (= bs!1138239 (and d!1516826 d!1516776)))

(assert (=> bs!1138239 (= lambda!220391 lambda!220375)))

(declare-fun lt!1908909 () ListMap!5405)

(assert (=> d!1516826 (invariantList!1557 (toList!6042 lt!1908909))))

(declare-fun e!2960583 () ListMap!5405)

(assert (=> d!1516826 (= lt!1908909 e!2960583)))

(declare-fun c!810701 () Bool)

(assert (=> d!1516826 (= c!810701 ((_ is Cons!53000) (t!360432 (t!360432 (toList!6041 lm!2023)))))))

(assert (=> d!1516826 (forall!11715 (t!360432 (t!360432 (toList!6041 lm!2023))) lambda!220391)))

(assert (=> d!1516826 (= (extractMap!2102 (t!360432 (t!360432 (toList!6041 lm!2023)))) lt!1908909)))

(declare-fun b!4746388 () Bool)

(assert (=> b!4746388 (= e!2960583 (addToMapMapFromBucket!1506 (_2!30644 (h!59393 (t!360432 (t!360432 (toList!6041 lm!2023))))) (extractMap!2102 (t!360432 (t!360432 (t!360432 (toList!6041 lm!2023)))))))))

(declare-fun b!4746389 () Bool)

(assert (=> b!4746389 (= e!2960583 (ListMap!5406 Nil!52999))))

(assert (= (and d!1516826 c!810701) b!4746388))

(assert (= (and d!1516826 (not c!810701)) b!4746389))

(declare-fun m!5703495 () Bool)

(assert (=> d!1516826 m!5703495))

(declare-fun m!5703497 () Bool)

(assert (=> d!1516826 m!5703497))

(declare-fun m!5703499 () Bool)

(assert (=> b!4746388 m!5703499))

(assert (=> b!4746388 m!5703499))

(declare-fun m!5703501 () Bool)

(assert (=> b!4746388 m!5703501))

(assert (=> b!4746236 d!1516826))

(declare-fun d!1516828 () Bool)

(declare-fun noDuplicatedKeys!395 (List!53123) Bool)

(assert (=> d!1516828 (= (invariantList!1557 (toList!6042 lt!1908857)) (noDuplicatedKeys!395 (toList!6042 lt!1908857)))))

(declare-fun bs!1138240 () Bool)

(assert (= bs!1138240 d!1516828))

(declare-fun m!5703509 () Bool)

(assert (=> bs!1138240 m!5703509))

(assert (=> d!1516776 d!1516828))

(declare-fun d!1516832 () Bool)

(declare-fun res!2011732 () Bool)

(declare-fun e!2960587 () Bool)

(assert (=> d!1516832 (=> res!2011732 e!2960587)))

(assert (=> d!1516832 (= res!2011732 ((_ is Nil!53000) (toList!6041 lm!2023)))))

(assert (=> d!1516832 (= (forall!11715 (toList!6041 lm!2023) lambda!220375) e!2960587)))

(declare-fun b!4746393 () Bool)

(declare-fun e!2960588 () Bool)

(assert (=> b!4746393 (= e!2960587 e!2960588)))

(declare-fun res!2011733 () Bool)

(assert (=> b!4746393 (=> (not res!2011733) (not e!2960588))))

(assert (=> b!4746393 (= res!2011733 (dynLambda!21889 lambda!220375 (h!59393 (toList!6041 lm!2023))))))

(declare-fun b!4746394 () Bool)

(assert (=> b!4746394 (= e!2960588 (forall!11715 (t!360432 (toList!6041 lm!2023)) lambda!220375))))

(assert (= (and d!1516832 (not res!2011732)) b!4746393))

(assert (= (and b!4746393 res!2011733) b!4746394))

(declare-fun b_lambda!182833 () Bool)

(assert (=> (not b_lambda!182833) (not b!4746393)))

(declare-fun m!5703519 () Bool)

(assert (=> b!4746393 m!5703519))

(declare-fun m!5703521 () Bool)

(assert (=> b!4746394 m!5703521))

(assert (=> d!1516776 d!1516832))

(declare-fun d!1516838 () Bool)

(declare-fun res!2011738 () Bool)

(declare-fun e!2960593 () Bool)

(assert (=> d!1516838 (=> res!2011738 e!2960593)))

(assert (=> d!1516838 (= res!2011738 ((_ is Nil!52999) newBucket!218))))

(assert (=> d!1516838 (= (forall!11717 newBucket!218 lambda!220376) e!2960593)))

(declare-fun b!4746399 () Bool)

(declare-fun e!2960594 () Bool)

(assert (=> b!4746399 (= e!2960593 e!2960594)))

(declare-fun res!2011739 () Bool)

(assert (=> b!4746399 (=> (not res!2011739) (not e!2960594))))

(assert (=> b!4746399 (= res!2011739 (dynLambda!21890 lambda!220376 (h!59392 newBucket!218)))))

(declare-fun b!4746400 () Bool)

(assert (=> b!4746400 (= e!2960594 (forall!11717 (t!360431 newBucket!218) lambda!220376))))

(assert (= (and d!1516838 (not res!2011738)) b!4746399))

(assert (= (and b!4746399 res!2011739) b!4746400))

(declare-fun b_lambda!182837 () Bool)

(assert (=> (not b_lambda!182837) (not b!4746399)))

(declare-fun m!5703525 () Bool)

(assert (=> b!4746399 m!5703525))

(declare-fun m!5703529 () Bool)

(assert (=> b!4746400 m!5703529))

(assert (=> d!1516780 d!1516838))

(declare-fun d!1516842 () Bool)

(declare-fun res!2011740 () Bool)

(declare-fun e!2960595 () Bool)

(assert (=> d!1516842 (=> res!2011740 e!2960595)))

(assert (=> d!1516842 (= res!2011740 (and ((_ is Cons!52999) (t!360431 oldBucket!34)) (= (_1!30643 (h!59392 (t!360431 oldBucket!34))) (_1!30643 (h!59392 oldBucket!34)))))))

(assert (=> d!1516842 (= (containsKey!3509 (t!360431 oldBucket!34) (_1!30643 (h!59392 oldBucket!34))) e!2960595)))

(declare-fun b!4746401 () Bool)

(declare-fun e!2960596 () Bool)

(assert (=> b!4746401 (= e!2960595 e!2960596)))

(declare-fun res!2011741 () Bool)

(assert (=> b!4746401 (=> (not res!2011741) (not e!2960596))))

(assert (=> b!4746401 (= res!2011741 ((_ is Cons!52999) (t!360431 oldBucket!34)))))

(declare-fun b!4746402 () Bool)

(assert (=> b!4746402 (= e!2960596 (containsKey!3509 (t!360431 (t!360431 oldBucket!34)) (_1!30643 (h!59392 oldBucket!34))))))

(assert (= (and d!1516842 (not res!2011740)) b!4746401))

(assert (= (and b!4746401 res!2011741) b!4746402))

(declare-fun m!5703531 () Bool)

(assert (=> b!4746402 m!5703531))

(assert (=> b!4746254 d!1516842))

(declare-fun d!1516844 () Bool)

(declare-fun res!2011742 () Bool)

(declare-fun e!2960597 () Bool)

(assert (=> d!1516844 (=> res!2011742 e!2960597)))

(assert (=> d!1516844 (= res!2011742 ((_ is Nil!53000) (toList!6041 lm!2023)))))

(assert (=> d!1516844 (= (forall!11715 (toList!6041 lm!2023) lambda!220374) e!2960597)))

(declare-fun b!4746403 () Bool)

(declare-fun e!2960598 () Bool)

(assert (=> b!4746403 (= e!2960597 e!2960598)))

(declare-fun res!2011743 () Bool)

(assert (=> b!4746403 (=> (not res!2011743) (not e!2960598))))

(assert (=> b!4746403 (= res!2011743 (dynLambda!21889 lambda!220374 (h!59393 (toList!6041 lm!2023))))))

(declare-fun b!4746404 () Bool)

(assert (=> b!4746404 (= e!2960598 (forall!11715 (t!360432 (toList!6041 lm!2023)) lambda!220374))))

(assert (= (and d!1516844 (not res!2011742)) b!4746403))

(assert (= (and b!4746403 res!2011743) b!4746404))

(declare-fun b_lambda!182839 () Bool)

(assert (=> (not b_lambda!182839) (not b!4746403)))

(declare-fun m!5703533 () Bool)

(assert (=> b!4746403 m!5703533))

(declare-fun m!5703535 () Bool)

(assert (=> b!4746404 m!5703535))

(assert (=> d!1516762 d!1516844))

(declare-fun d!1516846 () Bool)

(declare-fun res!2011748 () Bool)

(declare-fun e!2960603 () Bool)

(assert (=> d!1516846 (=> res!2011748 e!2960603)))

(assert (=> d!1516846 (= res!2011748 (and ((_ is Cons!53000) (toList!6041 lm!2023)) (= (_1!30644 (h!59393 (toList!6041 lm!2023))) lt!1908644)))))

(assert (=> d!1516846 (= (containsKey!3512 (toList!6041 lm!2023) lt!1908644) e!2960603)))

(declare-fun b!4746409 () Bool)

(declare-fun e!2960604 () Bool)

(assert (=> b!4746409 (= e!2960603 e!2960604)))

(declare-fun res!2011749 () Bool)

(assert (=> b!4746409 (=> (not res!2011749) (not e!2960604))))

(assert (=> b!4746409 (= res!2011749 (and (or (not ((_ is Cons!53000) (toList!6041 lm!2023))) (bvsle (_1!30644 (h!59393 (toList!6041 lm!2023))) lt!1908644)) ((_ is Cons!53000) (toList!6041 lm!2023)) (bvslt (_1!30644 (h!59393 (toList!6041 lm!2023))) lt!1908644)))))

(declare-fun b!4746410 () Bool)

(assert (=> b!4746410 (= e!2960604 (containsKey!3512 (t!360432 (toList!6041 lm!2023)) lt!1908644))))

(assert (= (and d!1516846 (not res!2011748)) b!4746409))

(assert (= (and b!4746409 res!2011749) b!4746410))

(declare-fun m!5703537 () Bool)

(assert (=> b!4746410 m!5703537))

(assert (=> d!1516710 d!1516846))

(declare-fun d!1516848 () Bool)

(declare-fun res!2011750 () Bool)

(declare-fun e!2960605 () Bool)

(assert (=> d!1516848 (=> res!2011750 e!2960605)))

(assert (=> d!1516848 (= res!2011750 ((_ is Nil!52999) (_2!30644 (h!59393 (toList!6041 lm!2023)))))))

(assert (=> d!1516848 (= (forall!11717 (_2!30644 (h!59393 (toList!6041 lm!2023))) lambda!220365) e!2960605)))

(declare-fun b!4746411 () Bool)

(declare-fun e!2960606 () Bool)

(assert (=> b!4746411 (= e!2960605 e!2960606)))

(declare-fun res!2011751 () Bool)

(assert (=> b!4746411 (=> (not res!2011751) (not e!2960606))))

(assert (=> b!4746411 (= res!2011751 (dynLambda!21890 lambda!220365 (h!59392 (_2!30644 (h!59393 (toList!6041 lm!2023))))))))

(declare-fun b!4746412 () Bool)

(assert (=> b!4746412 (= e!2960606 (forall!11717 (t!360431 (_2!30644 (h!59393 (toList!6041 lm!2023)))) lambda!220365))))

(assert (= (and d!1516848 (not res!2011750)) b!4746411))

(assert (= (and b!4746411 res!2011751) b!4746412))

(declare-fun b_lambda!182841 () Bool)

(assert (=> (not b_lambda!182841) (not b!4746411)))

(declare-fun m!5703539 () Bool)

(assert (=> b!4746411 m!5703539))

(declare-fun m!5703541 () Bool)

(assert (=> b!4746412 m!5703541))

(assert (=> d!1516718 d!1516848))

(declare-fun d!1516850 () Bool)

(declare-fun res!2011752 () Bool)

(declare-fun e!2960607 () Bool)

(assert (=> d!1516850 (=> res!2011752 e!2960607)))

(assert (=> d!1516850 (= res!2011752 (not ((_ is Cons!52999) (_2!30644 (h!59393 (toList!6041 lm!2023))))))))

(assert (=> d!1516850 (= (noDuplicateKeys!2076 (_2!30644 (h!59393 (toList!6041 lm!2023)))) e!2960607)))

(declare-fun b!4746413 () Bool)

(declare-fun e!2960608 () Bool)

(assert (=> b!4746413 (= e!2960607 e!2960608)))

(declare-fun res!2011753 () Bool)

(assert (=> b!4746413 (=> (not res!2011753) (not e!2960608))))

(assert (=> b!4746413 (= res!2011753 (not (containsKey!3509 (t!360431 (_2!30644 (h!59393 (toList!6041 lm!2023)))) (_1!30643 (h!59392 (_2!30644 (h!59393 (toList!6041 lm!2023))))))))))

(declare-fun b!4746414 () Bool)

(assert (=> b!4746414 (= e!2960608 (noDuplicateKeys!2076 (t!360431 (_2!30644 (h!59393 (toList!6041 lm!2023))))))))

(assert (= (and d!1516850 (not res!2011752)) b!4746413))

(assert (= (and b!4746413 res!2011753) b!4746414))

(declare-fun m!5703543 () Bool)

(assert (=> b!4746413 m!5703543))

(declare-fun m!5703545 () Bool)

(assert (=> b!4746414 m!5703545))

(assert (=> d!1516718 d!1516850))

(declare-fun d!1516852 () Bool)

(declare-fun res!2011754 () Bool)

(declare-fun e!2960609 () Bool)

(assert (=> d!1516852 (=> res!2011754 e!2960609)))

(assert (=> d!1516852 (= res!2011754 (not ((_ is Cons!52999) (t!360431 oldBucket!34))))))

(assert (=> d!1516852 (= (noDuplicateKeys!2076 (t!360431 oldBucket!34)) e!2960609)))

(declare-fun b!4746415 () Bool)

(declare-fun e!2960610 () Bool)

(assert (=> b!4746415 (= e!2960609 e!2960610)))

(declare-fun res!2011755 () Bool)

(assert (=> b!4746415 (=> (not res!2011755) (not e!2960610))))

(assert (=> b!4746415 (= res!2011755 (not (containsKey!3509 (t!360431 (t!360431 oldBucket!34)) (_1!30643 (h!59392 (t!360431 oldBucket!34))))))))

(declare-fun b!4746416 () Bool)

(assert (=> b!4746416 (= e!2960610 (noDuplicateKeys!2076 (t!360431 (t!360431 oldBucket!34))))))

(assert (= (and d!1516852 (not res!2011754)) b!4746415))

(assert (= (and b!4746415 res!2011755) b!4746416))

(declare-fun m!5703547 () Bool)

(assert (=> b!4746415 m!5703547))

(declare-fun m!5703549 () Bool)

(assert (=> b!4746416 m!5703549))

(assert (=> b!4746255 d!1516852))

(assert (=> b!4746297 d!1516718))

(assert (=> b!4746297 d!1516752))

(declare-fun d!1516854 () Bool)

(declare-fun choose!33756 (Hashable!6445 K!14340) (_ BitVec 64))

(assert (=> d!1516854 (= (hash!4496 hashF!1323 key!4653) (choose!33756 hashF!1323 key!4653))))

(declare-fun bs!1138241 () Bool)

(assert (= bs!1138241 d!1516854))

(declare-fun m!5703551 () Bool)

(assert (=> bs!1138241 m!5703551))

(assert (=> d!1516768 d!1516854))

(declare-fun d!1516856 () Bool)

(declare-fun isEmpty!29252 (Option!12495) Bool)

(assert (=> d!1516856 (= (isDefined!9749 (getValueByKey!2045 (toList!6042 lt!1908645) key!4653)) (not (isEmpty!29252 (getValueByKey!2045 (toList!6042 lt!1908645) key!4653))))))

(declare-fun bs!1138242 () Bool)

(assert (= bs!1138242 d!1516856))

(assert (=> bs!1138242 m!5703347))

(declare-fun m!5703553 () Bool)

(assert (=> bs!1138242 m!5703553))

(assert (=> b!4746288 d!1516856))

(declare-fun b!4746431 () Bool)

(declare-fun e!2960618 () Option!12495)

(assert (=> b!4746431 (= e!2960618 (getValueByKey!2045 (t!360431 (toList!6042 lt!1908645)) key!4653))))

(declare-fun b!4746430 () Bool)

(declare-fun e!2960617 () Option!12495)

(assert (=> b!4746430 (= e!2960617 e!2960618)))

(declare-fun c!810707 () Bool)

(assert (=> b!4746430 (= c!810707 (and ((_ is Cons!52999) (toList!6042 lt!1908645)) (not (= (_1!30643 (h!59392 (toList!6042 lt!1908645))) key!4653))))))

(declare-fun d!1516858 () Bool)

(declare-fun c!810706 () Bool)

(assert (=> d!1516858 (= c!810706 (and ((_ is Cons!52999) (toList!6042 lt!1908645)) (= (_1!30643 (h!59392 (toList!6042 lt!1908645))) key!4653)))))

(assert (=> d!1516858 (= (getValueByKey!2045 (toList!6042 lt!1908645) key!4653) e!2960617)))

(declare-fun b!4746429 () Bool)

(assert (=> b!4746429 (= e!2960617 (Some!12494 (_2!30643 (h!59392 (toList!6042 lt!1908645)))))))

(declare-fun b!4746432 () Bool)

(assert (=> b!4746432 (= e!2960618 None!12494)))

(assert (= (and d!1516858 c!810706) b!4746429))

(assert (= (and d!1516858 (not c!810706)) b!4746430))

(assert (= (and b!4746430 c!810707) b!4746431))

(assert (= (and b!4746430 (not c!810707)) b!4746432))

(declare-fun m!5703555 () Bool)

(assert (=> b!4746431 m!5703555))

(assert (=> b!4746288 d!1516858))

(declare-fun b!4746433 () Bool)

(declare-fun e!2960619 () Bool)

(declare-fun e!2960622 () Bool)

(assert (=> b!4746433 (= e!2960619 e!2960622)))

(declare-fun res!2011761 () Bool)

(assert (=> b!4746433 (=> (not res!2011761) (not e!2960622))))

(assert (=> b!4746433 (= res!2011761 (isDefined!9749 (getValueByKey!2045 (toList!6042 lt!1908821) (_1!30643 (h!59392 (_2!30644 (h!59393 (toList!6041 lm!2023))))))))))

(declare-fun b!4746434 () Bool)

(declare-fun e!2960623 () Unit!134331)

(declare-fun Unit!134369 () Unit!134331)

(assert (=> b!4746434 (= e!2960623 Unit!134369)))

(declare-fun b!4746435 () Bool)

(declare-fun e!2960621 () Unit!134331)

(declare-fun lt!1908928 () Unit!134331)

(assert (=> b!4746435 (= e!2960621 lt!1908928)))

(declare-fun lt!1908923 () Unit!134331)

(assert (=> b!4746435 (= lt!1908923 (lemmaContainsKeyImpliesGetValueByKeyDefined!1936 (toList!6042 lt!1908821) (_1!30643 (h!59392 (_2!30644 (h!59393 (toList!6041 lm!2023)))))))))

(assert (=> b!4746435 (isDefined!9749 (getValueByKey!2045 (toList!6042 lt!1908821) (_1!30643 (h!59392 (_2!30644 (h!59393 (toList!6041 lm!2023)))))))))

(declare-fun lt!1908921 () Unit!134331)

(assert (=> b!4746435 (= lt!1908921 lt!1908923)))

(assert (=> b!4746435 (= lt!1908928 (lemmaInListThenGetKeysListContains!991 (toList!6042 lt!1908821) (_1!30643 (h!59392 (_2!30644 (h!59393 (toList!6041 lm!2023)))))))))

(declare-fun call!332170 () Bool)

(assert (=> b!4746435 call!332170))

(declare-fun b!4746436 () Bool)

(declare-fun e!2960624 () List!53126)

(assert (=> b!4746436 (= e!2960624 (getKeysList!996 (toList!6042 lt!1908821)))))

(declare-fun d!1516860 () Bool)

(assert (=> d!1516860 e!2960619))

(declare-fun res!2011762 () Bool)

(assert (=> d!1516860 (=> res!2011762 e!2960619)))

(declare-fun e!2960620 () Bool)

(assert (=> d!1516860 (= res!2011762 e!2960620)))

(declare-fun res!2011760 () Bool)

(assert (=> d!1516860 (=> (not res!2011760) (not e!2960620))))

(declare-fun lt!1908927 () Bool)

(assert (=> d!1516860 (= res!2011760 (not lt!1908927))))

(declare-fun lt!1908925 () Bool)

(assert (=> d!1516860 (= lt!1908927 lt!1908925)))

(declare-fun lt!1908926 () Unit!134331)

(assert (=> d!1516860 (= lt!1908926 e!2960621)))

(declare-fun c!810710 () Bool)

(assert (=> d!1516860 (= c!810710 lt!1908925)))

(assert (=> d!1516860 (= lt!1908925 (containsKey!3513 (toList!6042 lt!1908821) (_1!30643 (h!59392 (_2!30644 (h!59393 (toList!6041 lm!2023)))))))))

(assert (=> d!1516860 (= (contains!16426 lt!1908821 (_1!30643 (h!59392 (_2!30644 (h!59393 (toList!6041 lm!2023)))))) lt!1908927)))

(declare-fun bm!332165 () Bool)

(assert (=> bm!332165 (= call!332170 (contains!16428 e!2960624 (_1!30643 (h!59392 (_2!30644 (h!59393 (toList!6041 lm!2023)))))))))

(declare-fun c!810709 () Bool)

(assert (=> bm!332165 (= c!810709 c!810710)))

(declare-fun b!4746437 () Bool)

(assert (=> b!4746437 (= e!2960620 (not (contains!16428 (keys!19083 lt!1908821) (_1!30643 (h!59392 (_2!30644 (h!59393 (toList!6041 lm!2023))))))))))

(declare-fun b!4746438 () Bool)

(assert (=> b!4746438 (= e!2960621 e!2960623)))

(declare-fun c!810708 () Bool)

(assert (=> b!4746438 (= c!810708 call!332170)))

(declare-fun b!4746439 () Bool)

(assert (=> b!4746439 false))

(declare-fun lt!1908924 () Unit!134331)

(declare-fun lt!1908922 () Unit!134331)

(assert (=> b!4746439 (= lt!1908924 lt!1908922)))

(assert (=> b!4746439 (containsKey!3513 (toList!6042 lt!1908821) (_1!30643 (h!59392 (_2!30644 (h!59393 (toList!6041 lm!2023))))))))

(assert (=> b!4746439 (= lt!1908922 (lemmaInGetKeysListThenContainsKey!995 (toList!6042 lt!1908821) (_1!30643 (h!59392 (_2!30644 (h!59393 (toList!6041 lm!2023)))))))))

(declare-fun Unit!134372 () Unit!134331)

(assert (=> b!4746439 (= e!2960623 Unit!134372)))

(declare-fun b!4746440 () Bool)

(assert (=> b!4746440 (= e!2960624 (keys!19083 lt!1908821))))

(declare-fun b!4746441 () Bool)

(assert (=> b!4746441 (= e!2960622 (contains!16428 (keys!19083 lt!1908821) (_1!30643 (h!59392 (_2!30644 (h!59393 (toList!6041 lm!2023)))))))))

(assert (= (and d!1516860 c!810710) b!4746435))

(assert (= (and d!1516860 (not c!810710)) b!4746438))

(assert (= (and b!4746438 c!810708) b!4746439))

(assert (= (and b!4746438 (not c!810708)) b!4746434))

(assert (= (or b!4746435 b!4746438) bm!332165))

(assert (= (and bm!332165 c!810709) b!4746436))

(assert (= (and bm!332165 (not c!810709)) b!4746440))

(assert (= (and d!1516860 res!2011760) b!4746437))

(assert (= (and d!1516860 (not res!2011762)) b!4746433))

(assert (= (and b!4746433 res!2011761) b!4746441))

(declare-fun m!5703569 () Bool)

(assert (=> bm!332165 m!5703569))

(declare-fun m!5703571 () Bool)

(assert (=> b!4746437 m!5703571))

(assert (=> b!4746437 m!5703571))

(declare-fun m!5703573 () Bool)

(assert (=> b!4746437 m!5703573))

(declare-fun m!5703575 () Bool)

(assert (=> d!1516860 m!5703575))

(assert (=> b!4746439 m!5703575))

(declare-fun m!5703577 () Bool)

(assert (=> b!4746439 m!5703577))

(declare-fun m!5703579 () Bool)

(assert (=> b!4746436 m!5703579))

(declare-fun m!5703581 () Bool)

(assert (=> b!4746433 m!5703581))

(assert (=> b!4746433 m!5703581))

(declare-fun m!5703583 () Bool)

(assert (=> b!4746433 m!5703583))

(declare-fun m!5703585 () Bool)

(assert (=> b!4746435 m!5703585))

(assert (=> b!4746435 m!5703581))

(assert (=> b!4746435 m!5703581))

(assert (=> b!4746435 m!5703583))

(declare-fun m!5703587 () Bool)

(assert (=> b!4746435 m!5703587))

(assert (=> b!4746441 m!5703571))

(assert (=> b!4746441 m!5703571))

(assert (=> b!4746441 m!5703573))

(assert (=> b!4746440 m!5703571))

(assert (=> b!4746225 d!1516860))

(declare-fun d!1516864 () Bool)

(declare-fun res!2011768 () Bool)

(declare-fun e!2960632 () Bool)

(assert (=> d!1516864 (=> res!2011768 e!2960632)))

(assert (=> d!1516864 (= res!2011768 ((_ is Nil!52999) (_2!30644 (h!59393 (toList!6041 lm!2023)))))))

(assert (=> d!1516864 (= (forall!11717 (_2!30644 (h!59393 (toList!6041 lm!2023))) lambda!220364) e!2960632)))

(declare-fun b!4746453 () Bool)

(declare-fun e!2960633 () Bool)

(assert (=> b!4746453 (= e!2960632 e!2960633)))

(declare-fun res!2011769 () Bool)

(assert (=> b!4746453 (=> (not res!2011769) (not e!2960633))))

(assert (=> b!4746453 (= res!2011769 (dynLambda!21890 lambda!220364 (h!59392 (_2!30644 (h!59393 (toList!6041 lm!2023))))))))

(declare-fun b!4746454 () Bool)

(assert (=> b!4746454 (= e!2960633 (forall!11717 (t!360431 (_2!30644 (h!59393 (toList!6041 lm!2023)))) lambda!220364))))

(assert (= (and d!1516864 (not res!2011768)) b!4746453))

(assert (= (and b!4746453 res!2011769) b!4746454))

(declare-fun b_lambda!182843 () Bool)

(assert (=> (not b_lambda!182843) (not b!4746453)))

(declare-fun m!5703589 () Bool)

(assert (=> b!4746453 m!5703589))

(assert (=> b!4746454 m!5703285))

(assert (=> b!4746225 d!1516864))

(declare-fun bs!1138243 () Bool)

(declare-fun b!4746458 () Bool)

(assert (= bs!1138243 (and b!4746458 d!1516780)))

(declare-fun lambda!220392 () Int)

(assert (=> bs!1138243 (not (= lambda!220392 lambda!220376))))

(declare-fun bs!1138244 () Bool)

(assert (= bs!1138244 (and b!4746458 b!4746225)))

(assert (=> bs!1138244 (= (= (+!2320 (extractMap!2102 (t!360432 (toList!6041 lm!2023))) (h!59392 (_2!30644 (h!59393 (toList!6041 lm!2023))))) lt!1908807) (= lambda!220392 lambda!220364))))

(declare-fun bs!1138245 () Bool)

(assert (= bs!1138245 (and b!4746458 d!1516718)))

(assert (=> bs!1138245 (= (= (+!2320 (extractMap!2102 (t!360432 (toList!6041 lm!2023))) (h!59392 (_2!30644 (h!59393 (toList!6041 lm!2023))))) lt!1908814) (= lambda!220392 lambda!220365))))

(declare-fun bs!1138246 () Bool)

(assert (= bs!1138246 (and b!4746458 b!4746380)))

(assert (=> bs!1138246 (= (= (+!2320 (extractMap!2102 (t!360432 (toList!6041 lm!2023))) (h!59392 (_2!30644 (h!59393 (toList!6041 lm!2023))))) (extractMap!2102 (t!360432 (t!360432 (toList!6041 lm!2023))))) (= lambda!220392 lambda!220383))))

(declare-fun bs!1138247 () Bool)

(assert (= bs!1138247 (and b!4746458 d!1516822)))

(assert (=> bs!1138247 (= (= (+!2320 (extractMap!2102 (t!360432 (toList!6041 lm!2023))) (h!59392 (_2!30644 (h!59393 (toList!6041 lm!2023))))) lt!1908893) (= lambda!220392 lambda!220390))))

(declare-fun bs!1138248 () Bool)

(assert (= bs!1138248 (and b!4746458 d!1516756)))

(assert (=> bs!1138248 (not (= lambda!220392 lambda!220371))))

(assert (=> bs!1138244 (= (= (+!2320 (extractMap!2102 (t!360432 (toList!6041 lm!2023))) (h!59392 (_2!30644 (h!59393 (toList!6041 lm!2023))))) (extractMap!2102 (t!360432 (toList!6041 lm!2023)))) (= lambda!220392 lambda!220363))))

(declare-fun bs!1138249 () Bool)

(assert (= bs!1138249 (and b!4746458 b!4746228)))

(assert (=> bs!1138249 (= (= (+!2320 (extractMap!2102 (t!360432 (toList!6041 lm!2023))) (h!59392 (_2!30644 (h!59393 (toList!6041 lm!2023))))) (extractMap!2102 (t!360432 (toList!6041 lm!2023)))) (= lambda!220392 lambda!220362))))

(assert (=> bs!1138246 (= (= (+!2320 (extractMap!2102 (t!360432 (toList!6041 lm!2023))) (h!59392 (_2!30644 (h!59393 (toList!6041 lm!2023))))) lt!1908886) (= lambda!220392 lambda!220386))))

(declare-fun bs!1138250 () Bool)

(assert (= bs!1138250 (and b!4746458 b!4746383)))

(assert (=> bs!1138250 (= (= (+!2320 (extractMap!2102 (t!360432 (toList!6041 lm!2023))) (h!59392 (_2!30644 (h!59393 (toList!6041 lm!2023))))) (extractMap!2102 (t!360432 (t!360432 (toList!6041 lm!2023))))) (= lambda!220392 lambda!220382))))

(assert (=> b!4746458 true))

(declare-fun bs!1138251 () Bool)

(declare-fun b!4746455 () Bool)

(assert (= bs!1138251 (and b!4746455 d!1516780)))

(declare-fun lambda!220393 () Int)

(assert (=> bs!1138251 (not (= lambda!220393 lambda!220376))))

(declare-fun bs!1138252 () Bool)

(assert (= bs!1138252 (and b!4746455 b!4746225)))

(assert (=> bs!1138252 (= (= (+!2320 (extractMap!2102 (t!360432 (toList!6041 lm!2023))) (h!59392 (_2!30644 (h!59393 (toList!6041 lm!2023))))) lt!1908807) (= lambda!220393 lambda!220364))))

(declare-fun bs!1138253 () Bool)

(assert (= bs!1138253 (and b!4746455 d!1516718)))

(assert (=> bs!1138253 (= (= (+!2320 (extractMap!2102 (t!360432 (toList!6041 lm!2023))) (h!59392 (_2!30644 (h!59393 (toList!6041 lm!2023))))) lt!1908814) (= lambda!220393 lambda!220365))))

(declare-fun bs!1138254 () Bool)

(assert (= bs!1138254 (and b!4746455 d!1516822)))

(assert (=> bs!1138254 (= (= (+!2320 (extractMap!2102 (t!360432 (toList!6041 lm!2023))) (h!59392 (_2!30644 (h!59393 (toList!6041 lm!2023))))) lt!1908893) (= lambda!220393 lambda!220390))))

(declare-fun bs!1138255 () Bool)

(assert (= bs!1138255 (and b!4746455 d!1516756)))

(assert (=> bs!1138255 (not (= lambda!220393 lambda!220371))))

(assert (=> bs!1138252 (= (= (+!2320 (extractMap!2102 (t!360432 (toList!6041 lm!2023))) (h!59392 (_2!30644 (h!59393 (toList!6041 lm!2023))))) (extractMap!2102 (t!360432 (toList!6041 lm!2023)))) (= lambda!220393 lambda!220363))))

(declare-fun bs!1138256 () Bool)

(assert (= bs!1138256 (and b!4746455 b!4746228)))

(assert (=> bs!1138256 (= (= (+!2320 (extractMap!2102 (t!360432 (toList!6041 lm!2023))) (h!59392 (_2!30644 (h!59393 (toList!6041 lm!2023))))) (extractMap!2102 (t!360432 (toList!6041 lm!2023)))) (= lambda!220393 lambda!220362))))

(declare-fun bs!1138257 () Bool)

(assert (= bs!1138257 (and b!4746455 b!4746380)))

(assert (=> bs!1138257 (= (= (+!2320 (extractMap!2102 (t!360432 (toList!6041 lm!2023))) (h!59392 (_2!30644 (h!59393 (toList!6041 lm!2023))))) (extractMap!2102 (t!360432 (t!360432 (toList!6041 lm!2023))))) (= lambda!220393 lambda!220383))))

(declare-fun bs!1138258 () Bool)

(assert (= bs!1138258 (and b!4746455 b!4746458)))

(assert (=> bs!1138258 (= lambda!220393 lambda!220392)))

(assert (=> bs!1138257 (= (= (+!2320 (extractMap!2102 (t!360432 (toList!6041 lm!2023))) (h!59392 (_2!30644 (h!59393 (toList!6041 lm!2023))))) lt!1908886) (= lambda!220393 lambda!220386))))

(declare-fun bs!1138259 () Bool)

(assert (= bs!1138259 (and b!4746455 b!4746383)))

(assert (=> bs!1138259 (= (= (+!2320 (extractMap!2102 (t!360432 (toList!6041 lm!2023))) (h!59392 (_2!30644 (h!59393 (toList!6041 lm!2023))))) (extractMap!2102 (t!360432 (t!360432 (toList!6041 lm!2023))))) (= lambda!220393 lambda!220382))))

(assert (=> b!4746455 true))

(declare-fun lambda!220394 () Int)

(assert (=> bs!1138251 (not (= lambda!220394 lambda!220376))))

(declare-fun lt!1908942 () ListMap!5405)

(assert (=> bs!1138252 (= (= lt!1908942 lt!1908807) (= lambda!220394 lambda!220364))))

(assert (=> bs!1138253 (= (= lt!1908942 lt!1908814) (= lambda!220394 lambda!220365))))

(assert (=> b!4746455 (= (= lt!1908942 (+!2320 (extractMap!2102 (t!360432 (toList!6041 lm!2023))) (h!59392 (_2!30644 (h!59393 (toList!6041 lm!2023)))))) (= lambda!220394 lambda!220393))))

(assert (=> bs!1138254 (= (= lt!1908942 lt!1908893) (= lambda!220394 lambda!220390))))

(assert (=> bs!1138255 (not (= lambda!220394 lambda!220371))))

(assert (=> bs!1138252 (= (= lt!1908942 (extractMap!2102 (t!360432 (toList!6041 lm!2023)))) (= lambda!220394 lambda!220363))))

(assert (=> bs!1138256 (= (= lt!1908942 (extractMap!2102 (t!360432 (toList!6041 lm!2023)))) (= lambda!220394 lambda!220362))))

(assert (=> bs!1138257 (= (= lt!1908942 (extractMap!2102 (t!360432 (t!360432 (toList!6041 lm!2023))))) (= lambda!220394 lambda!220383))))

(assert (=> bs!1138258 (= (= lt!1908942 (+!2320 (extractMap!2102 (t!360432 (toList!6041 lm!2023))) (h!59392 (_2!30644 (h!59393 (toList!6041 lm!2023)))))) (= lambda!220394 lambda!220392))))

(assert (=> bs!1138257 (= (= lt!1908942 lt!1908886) (= lambda!220394 lambda!220386))))

(assert (=> bs!1138259 (= (= lt!1908942 (extractMap!2102 (t!360432 (t!360432 (toList!6041 lm!2023))))) (= lambda!220394 lambda!220382))))

(assert (=> b!4746455 true))

(declare-fun bs!1138270 () Bool)

(declare-fun d!1516866 () Bool)

(assert (= bs!1138270 (and d!1516866 d!1516780)))

(declare-fun lambda!220397 () Int)

(assert (=> bs!1138270 (not (= lambda!220397 lambda!220376))))

(declare-fun bs!1138272 () Bool)

(assert (= bs!1138272 (and d!1516866 b!4746225)))

(declare-fun lt!1908949 () ListMap!5405)

(assert (=> bs!1138272 (= (= lt!1908949 lt!1908807) (= lambda!220397 lambda!220364))))

(declare-fun bs!1138273 () Bool)

(assert (= bs!1138273 (and d!1516866 d!1516718)))

(assert (=> bs!1138273 (= (= lt!1908949 lt!1908814) (= lambda!220397 lambda!220365))))

(declare-fun bs!1138275 () Bool)

(assert (= bs!1138275 (and d!1516866 b!4746455)))

(assert (=> bs!1138275 (= (= lt!1908949 (+!2320 (extractMap!2102 (t!360432 (toList!6041 lm!2023))) (h!59392 (_2!30644 (h!59393 (toList!6041 lm!2023)))))) (= lambda!220397 lambda!220393))))

(declare-fun bs!1138277 () Bool)

(assert (= bs!1138277 (and d!1516866 d!1516822)))

(assert (=> bs!1138277 (= (= lt!1908949 lt!1908893) (= lambda!220397 lambda!220390))))

(assert (=> bs!1138272 (= (= lt!1908949 (extractMap!2102 (t!360432 (toList!6041 lm!2023)))) (= lambda!220397 lambda!220363))))

(declare-fun bs!1138280 () Bool)

(assert (= bs!1138280 (and d!1516866 b!4746228)))

(assert (=> bs!1138280 (= (= lt!1908949 (extractMap!2102 (t!360432 (toList!6041 lm!2023)))) (= lambda!220397 lambda!220362))))

(declare-fun bs!1138282 () Bool)

(assert (= bs!1138282 (and d!1516866 b!4746380)))

(assert (=> bs!1138282 (= (= lt!1908949 (extractMap!2102 (t!360432 (t!360432 (toList!6041 lm!2023))))) (= lambda!220397 lambda!220383))))

(declare-fun bs!1138284 () Bool)

(assert (= bs!1138284 (and d!1516866 b!4746458)))

(assert (=> bs!1138284 (= (= lt!1908949 (+!2320 (extractMap!2102 (t!360432 (toList!6041 lm!2023))) (h!59392 (_2!30644 (h!59393 (toList!6041 lm!2023)))))) (= lambda!220397 lambda!220392))))

(assert (=> bs!1138275 (= (= lt!1908949 lt!1908942) (= lambda!220397 lambda!220394))))

(declare-fun bs!1138286 () Bool)

(assert (= bs!1138286 (and d!1516866 d!1516756)))

(assert (=> bs!1138286 (not (= lambda!220397 lambda!220371))))

(assert (=> bs!1138282 (= (= lt!1908949 lt!1908886) (= lambda!220397 lambda!220386))))

(declare-fun bs!1138288 () Bool)

(assert (= bs!1138288 (and d!1516866 b!4746383)))

(assert (=> bs!1138288 (= (= lt!1908949 (extractMap!2102 (t!360432 (t!360432 (toList!6041 lm!2023))))) (= lambda!220397 lambda!220382))))

(assert (=> d!1516866 true))

(declare-fun e!2960635 () ListMap!5405)

(assert (=> b!4746455 (= e!2960635 lt!1908942)))

(declare-fun lt!1908956 () ListMap!5405)

(assert (=> b!4746455 (= lt!1908956 (+!2320 (+!2320 (extractMap!2102 (t!360432 (toList!6041 lm!2023))) (h!59392 (_2!30644 (h!59393 (toList!6041 lm!2023))))) (h!59392 (t!360431 (_2!30644 (h!59393 (toList!6041 lm!2023)))))))))

(assert (=> b!4746455 (= lt!1908942 (addToMapMapFromBucket!1506 (t!360431 (t!360431 (_2!30644 (h!59393 (toList!6041 lm!2023))))) (+!2320 (+!2320 (extractMap!2102 (t!360432 (toList!6041 lm!2023))) (h!59392 (_2!30644 (h!59393 (toList!6041 lm!2023))))) (h!59392 (t!360431 (_2!30644 (h!59393 (toList!6041 lm!2023))))))))))

(declare-fun lt!1908953 () Unit!134331)

(declare-fun call!332172 () Unit!134331)

(assert (=> b!4746455 (= lt!1908953 call!332172)))

(declare-fun call!332173 () Bool)

(assert (=> b!4746455 call!332173))

(declare-fun lt!1908951 () Unit!134331)

(assert (=> b!4746455 (= lt!1908951 lt!1908953)))

(assert (=> b!4746455 (forall!11717 (toList!6042 lt!1908956) lambda!220394)))

(declare-fun lt!1908950 () Unit!134331)

(declare-fun Unit!134375 () Unit!134331)

(assert (=> b!4746455 (= lt!1908950 Unit!134375)))

(assert (=> b!4746455 (forall!11717 (t!360431 (t!360431 (_2!30644 (h!59393 (toList!6041 lm!2023))))) lambda!220394)))

(declare-fun lt!1908952 () Unit!134331)

(declare-fun Unit!134376 () Unit!134331)

(assert (=> b!4746455 (= lt!1908952 Unit!134376)))

(declare-fun lt!1908958 () Unit!134331)

(declare-fun Unit!134377 () Unit!134331)

(assert (=> b!4746455 (= lt!1908958 Unit!134377)))

(declare-fun lt!1908961 () Unit!134331)

(assert (=> b!4746455 (= lt!1908961 (forallContained!3749 (toList!6042 lt!1908956) lambda!220394 (h!59392 (t!360431 (_2!30644 (h!59393 (toList!6041 lm!2023)))))))))

(assert (=> b!4746455 (contains!16426 lt!1908956 (_1!30643 (h!59392 (t!360431 (_2!30644 (h!59393 (toList!6041 lm!2023)))))))))

(declare-fun lt!1908955 () Unit!134331)

(declare-fun Unit!134378 () Unit!134331)

(assert (=> b!4746455 (= lt!1908955 Unit!134378)))

(assert (=> b!4746455 (contains!16426 lt!1908942 (_1!30643 (h!59392 (t!360431 (_2!30644 (h!59393 (toList!6041 lm!2023)))))))))

(declare-fun lt!1908957 () Unit!134331)

(declare-fun Unit!134379 () Unit!134331)

(assert (=> b!4746455 (= lt!1908957 Unit!134379)))

(assert (=> b!4746455 (forall!11717 (t!360431 (_2!30644 (h!59393 (toList!6041 lm!2023)))) lambda!220394)))

(declare-fun lt!1908947 () Unit!134331)

(declare-fun Unit!134380 () Unit!134331)

(assert (=> b!4746455 (= lt!1908947 Unit!134380)))

(assert (=> b!4746455 (forall!11717 (toList!6042 lt!1908956) lambda!220394)))

(declare-fun lt!1908943 () Unit!134331)

(declare-fun Unit!134381 () Unit!134331)

(assert (=> b!4746455 (= lt!1908943 Unit!134381)))

(declare-fun lt!1908946 () Unit!134331)

(declare-fun Unit!134382 () Unit!134331)

(assert (=> b!4746455 (= lt!1908946 Unit!134382)))

(declare-fun lt!1908954 () Unit!134331)

(assert (=> b!4746455 (= lt!1908954 (addForallContainsKeyThenBeforeAdding!841 (+!2320 (extractMap!2102 (t!360432 (toList!6041 lm!2023))) (h!59392 (_2!30644 (h!59393 (toList!6041 lm!2023))))) lt!1908942 (_1!30643 (h!59392 (t!360431 (_2!30644 (h!59393 (toList!6041 lm!2023)))))) (_2!30643 (h!59392 (t!360431 (_2!30644 (h!59393 (toList!6041 lm!2023))))))))))

(assert (=> b!4746455 (forall!11717 (toList!6042 (+!2320 (extractMap!2102 (t!360432 (toList!6041 lm!2023))) (h!59392 (_2!30644 (h!59393 (toList!6041 lm!2023)))))) lambda!220394)))

(declare-fun lt!1908945 () Unit!134331)

(assert (=> b!4746455 (= lt!1908945 lt!1908954)))

(assert (=> b!4746455 (forall!11717 (toList!6042 (+!2320 (extractMap!2102 (t!360432 (toList!6041 lm!2023))) (h!59392 (_2!30644 (h!59393 (toList!6041 lm!2023)))))) lambda!220394)))

(declare-fun lt!1908960 () Unit!134331)

(declare-fun Unit!134383 () Unit!134331)

(assert (=> b!4746455 (= lt!1908960 Unit!134383)))

(declare-fun res!2011770 () Bool)

(assert (=> b!4746455 (= res!2011770 (forall!11717 (t!360431 (_2!30644 (h!59393 (toList!6041 lm!2023)))) lambda!220394))))

(declare-fun e!2960634 () Bool)

(assert (=> b!4746455 (=> (not res!2011770) (not e!2960634))))

(assert (=> b!4746455 e!2960634))

(declare-fun lt!1908959 () Unit!134331)

(declare-fun Unit!134384 () Unit!134331)

(assert (=> b!4746455 (= lt!1908959 Unit!134384)))

(declare-fun b!4746456 () Bool)

(declare-fun e!2960636 () Bool)

(assert (=> b!4746456 (= e!2960636 (invariantList!1557 (toList!6042 lt!1908949)))))

(declare-fun b!4746457 () Bool)

(declare-fun res!2011772 () Bool)

(assert (=> b!4746457 (=> (not res!2011772) (not e!2960636))))

(assert (=> b!4746457 (= res!2011772 (forall!11717 (toList!6042 (+!2320 (extractMap!2102 (t!360432 (toList!6041 lm!2023))) (h!59392 (_2!30644 (h!59393 (toList!6041 lm!2023)))))) lambda!220397))))

(declare-fun c!810714 () Bool)

(declare-fun call!332174 () Bool)

(declare-fun bm!332167 () Bool)

(assert (=> bm!332167 (= call!332174 (forall!11717 (toList!6042 (+!2320 (extractMap!2102 (t!360432 (toList!6041 lm!2023))) (h!59392 (_2!30644 (h!59393 (toList!6041 lm!2023)))))) (ite c!810714 lambda!220392 lambda!220394)))))

(declare-fun bm!332168 () Bool)

(assert (=> bm!332168 (= call!332172 (lemmaContainsAllItsOwnKeys!842 (+!2320 (extractMap!2102 (t!360432 (toList!6041 lm!2023))) (h!59392 (_2!30644 (h!59393 (toList!6041 lm!2023)))))))))

(assert (=> b!4746458 (= e!2960635 (+!2320 (extractMap!2102 (t!360432 (toList!6041 lm!2023))) (h!59392 (_2!30644 (h!59393 (toList!6041 lm!2023))))))))

(declare-fun lt!1908944 () Unit!134331)

(assert (=> b!4746458 (= lt!1908944 call!332172)))

(assert (=> b!4746458 call!332174))

(declare-fun lt!1908941 () Unit!134331)

(assert (=> b!4746458 (= lt!1908941 lt!1908944)))

(assert (=> b!4746458 call!332173))

(declare-fun lt!1908948 () Unit!134331)

(declare-fun Unit!134385 () Unit!134331)

(assert (=> b!4746458 (= lt!1908948 Unit!134385)))

(assert (=> d!1516866 e!2960636))

(declare-fun res!2011771 () Bool)

(assert (=> d!1516866 (=> (not res!2011771) (not e!2960636))))

(assert (=> d!1516866 (= res!2011771 (forall!11717 (t!360431 (_2!30644 (h!59393 (toList!6041 lm!2023)))) lambda!220397))))

(assert (=> d!1516866 (= lt!1908949 e!2960635)))

(assert (=> d!1516866 (= c!810714 ((_ is Nil!52999) (t!360431 (_2!30644 (h!59393 (toList!6041 lm!2023))))))))

(assert (=> d!1516866 (noDuplicateKeys!2076 (t!360431 (_2!30644 (h!59393 (toList!6041 lm!2023)))))))

(assert (=> d!1516866 (= (addToMapMapFromBucket!1506 (t!360431 (_2!30644 (h!59393 (toList!6041 lm!2023)))) (+!2320 (extractMap!2102 (t!360432 (toList!6041 lm!2023))) (h!59392 (_2!30644 (h!59393 (toList!6041 lm!2023)))))) lt!1908949)))

(declare-fun b!4746459 () Bool)

(assert (=> b!4746459 (= e!2960634 call!332174)))

(declare-fun bm!332169 () Bool)

(assert (=> bm!332169 (= call!332173 (forall!11717 (toList!6042 (+!2320 (extractMap!2102 (t!360432 (toList!6041 lm!2023))) (h!59392 (_2!30644 (h!59393 (toList!6041 lm!2023)))))) (ite c!810714 lambda!220392 lambda!220393)))))

(assert (= (and d!1516866 c!810714) b!4746458))

(assert (= (and d!1516866 (not c!810714)) b!4746455))

(assert (= (and b!4746455 res!2011770) b!4746459))

(assert (= (or b!4746458 b!4746455) bm!332168))

(assert (= (or b!4746458 b!4746459) bm!332167))

(assert (= (or b!4746458 b!4746455) bm!332169))

(assert (= (and d!1516866 res!2011771) b!4746457))

(assert (= (and b!4746457 res!2011772) b!4746456))

(declare-fun m!5703635 () Bool)

(assert (=> bm!332169 m!5703635))

(declare-fun m!5703637 () Bool)

(assert (=> d!1516866 m!5703637))

(assert (=> d!1516866 m!5703545))

(assert (=> bm!332168 m!5703279))

(declare-fun m!5703639 () Bool)

(assert (=> bm!332168 m!5703639))

(declare-fun m!5703641 () Bool)

(assert (=> b!4746455 m!5703641))

(declare-fun m!5703643 () Bool)

(assert (=> b!4746455 m!5703643))

(assert (=> b!4746455 m!5703279))

(declare-fun m!5703645 () Bool)

(assert (=> b!4746455 m!5703645))

(declare-fun m!5703647 () Bool)

(assert (=> b!4746455 m!5703647))

(assert (=> b!4746455 m!5703643))

(assert (=> b!4746455 m!5703279))

(declare-fun m!5703649 () Bool)

(assert (=> b!4746455 m!5703649))

(assert (=> b!4746455 m!5703647))

(declare-fun m!5703651 () Bool)

(assert (=> b!4746455 m!5703651))

(declare-fun m!5703653 () Bool)

(assert (=> b!4746455 m!5703653))

(assert (=> b!4746455 m!5703645))

(declare-fun m!5703655 () Bool)

(assert (=> b!4746455 m!5703655))

(declare-fun m!5703657 () Bool)

(assert (=> b!4746455 m!5703657))

(assert (=> b!4746455 m!5703641))

(declare-fun m!5703659 () Bool)

(assert (=> b!4746455 m!5703659))

(declare-fun m!5703661 () Bool)

(assert (=> bm!332167 m!5703661))

(declare-fun m!5703663 () Bool)

(assert (=> b!4746457 m!5703663))

(declare-fun m!5703665 () Bool)

(assert (=> b!4746456 m!5703665))

(assert (=> b!4746225 d!1516866))

(declare-fun d!1516876 () Bool)

(assert (=> d!1516876 (dynLambda!21890 lambda!220364 (h!59392 (_2!30644 (h!59393 (toList!6041 lm!2023)))))))

(declare-fun lt!1908993 () Unit!134331)

(declare-fun choose!33757 (List!53123 Int tuple2!54698) Unit!134331)

(assert (=> d!1516876 (= lt!1908993 (choose!33757 (toList!6042 lt!1908821) lambda!220364 (h!59392 (_2!30644 (h!59393 (toList!6041 lm!2023))))))))

(declare-fun e!2960652 () Bool)

(assert (=> d!1516876 e!2960652))

(declare-fun res!2011785 () Bool)

(assert (=> d!1516876 (=> (not res!2011785) (not e!2960652))))

(assert (=> d!1516876 (= res!2011785 (forall!11717 (toList!6042 lt!1908821) lambda!220364))))

(assert (=> d!1516876 (= (forallContained!3749 (toList!6042 lt!1908821) lambda!220364 (h!59392 (_2!30644 (h!59393 (toList!6041 lm!2023))))) lt!1908993)))

(declare-fun b!4746480 () Bool)

(declare-fun contains!16430 (List!53123 tuple2!54698) Bool)

(assert (=> b!4746480 (= e!2960652 (contains!16430 (toList!6042 lt!1908821) (h!59392 (_2!30644 (h!59393 (toList!6041 lm!2023))))))))

(assert (= (and d!1516876 res!2011785) b!4746480))

(declare-fun b_lambda!182849 () Bool)

(assert (=> (not b_lambda!182849) (not d!1516876)))

(assert (=> d!1516876 m!5703589))

(declare-fun m!5703687 () Bool)

(assert (=> d!1516876 m!5703687))

(assert (=> d!1516876 m!5703281))

(declare-fun m!5703693 () Bool)

(assert (=> b!4746480 m!5703693))

(assert (=> b!4746225 d!1516876))

(declare-fun bs!1138300 () Bool)

(declare-fun d!1516878 () Bool)

(assert (= bs!1138300 (and d!1516878 d!1516780)))

(declare-fun lambda!220404 () Int)

(assert (=> bs!1138300 (not (= lambda!220404 lambda!220376))))

(declare-fun bs!1138301 () Bool)

(assert (= bs!1138301 (and d!1516878 d!1516866)))

(assert (=> bs!1138301 (= (= lt!1908807 lt!1908949) (= lambda!220404 lambda!220397))))

(declare-fun bs!1138302 () Bool)

(assert (= bs!1138302 (and d!1516878 b!4746225)))

(assert (=> bs!1138302 (= lambda!220404 lambda!220364)))

(declare-fun bs!1138303 () Bool)

(assert (= bs!1138303 (and d!1516878 d!1516718)))

(assert (=> bs!1138303 (= (= lt!1908807 lt!1908814) (= lambda!220404 lambda!220365))))

(declare-fun bs!1138304 () Bool)

(assert (= bs!1138304 (and d!1516878 b!4746455)))

(assert (=> bs!1138304 (= (= lt!1908807 (+!2320 (extractMap!2102 (t!360432 (toList!6041 lm!2023))) (h!59392 (_2!30644 (h!59393 (toList!6041 lm!2023)))))) (= lambda!220404 lambda!220393))))

(declare-fun bs!1138305 () Bool)

(assert (= bs!1138305 (and d!1516878 d!1516822)))

(assert (=> bs!1138305 (= (= lt!1908807 lt!1908893) (= lambda!220404 lambda!220390))))

(assert (=> bs!1138302 (= (= lt!1908807 (extractMap!2102 (t!360432 (toList!6041 lm!2023)))) (= lambda!220404 lambda!220363))))

(declare-fun bs!1138306 () Bool)

(assert (= bs!1138306 (and d!1516878 b!4746228)))

(assert (=> bs!1138306 (= (= lt!1908807 (extractMap!2102 (t!360432 (toList!6041 lm!2023)))) (= lambda!220404 lambda!220362))))

(declare-fun bs!1138307 () Bool)

(assert (= bs!1138307 (and d!1516878 b!4746380)))

(assert (=> bs!1138307 (= (= lt!1908807 (extractMap!2102 (t!360432 (t!360432 (toList!6041 lm!2023))))) (= lambda!220404 lambda!220383))))

(declare-fun bs!1138308 () Bool)

(assert (= bs!1138308 (and d!1516878 b!4746458)))

(assert (=> bs!1138308 (= (= lt!1908807 (+!2320 (extractMap!2102 (t!360432 (toList!6041 lm!2023))) (h!59392 (_2!30644 (h!59393 (toList!6041 lm!2023)))))) (= lambda!220404 lambda!220392))))

(assert (=> bs!1138304 (= (= lt!1908807 lt!1908942) (= lambda!220404 lambda!220394))))

(declare-fun bs!1138309 () Bool)

(assert (= bs!1138309 (and d!1516878 d!1516756)))

(assert (=> bs!1138309 (not (= lambda!220404 lambda!220371))))

(assert (=> bs!1138307 (= (= lt!1908807 lt!1908886) (= lambda!220404 lambda!220386))))

(declare-fun bs!1138310 () Bool)

(assert (= bs!1138310 (and d!1516878 b!4746383)))

(assert (=> bs!1138310 (= (= lt!1908807 (extractMap!2102 (t!360432 (t!360432 (toList!6041 lm!2023))))) (= lambda!220404 lambda!220382))))

(assert (=> d!1516878 true))

(assert (=> d!1516878 (forall!11717 (toList!6042 (extractMap!2102 (t!360432 (toList!6041 lm!2023)))) lambda!220404)))

(declare-fun lt!1908999 () Unit!134331)

(declare-fun choose!33758 (ListMap!5405 ListMap!5405 K!14340 V!14586) Unit!134331)

(assert (=> d!1516878 (= lt!1908999 (choose!33758 (extractMap!2102 (t!360432 (toList!6041 lm!2023))) lt!1908807 (_1!30643 (h!59392 (_2!30644 (h!59393 (toList!6041 lm!2023))))) (_2!30643 (h!59392 (_2!30644 (h!59393 (toList!6041 lm!2023)))))))))

(assert (=> d!1516878 (forall!11717 (toList!6042 (+!2320 (extractMap!2102 (t!360432 (toList!6041 lm!2023))) (tuple2!54699 (_1!30643 (h!59392 (_2!30644 (h!59393 (toList!6041 lm!2023))))) (_2!30643 (h!59392 (_2!30644 (h!59393 (toList!6041 lm!2023)))))))) lambda!220404)))

(assert (=> d!1516878 (= (addForallContainsKeyThenBeforeAdding!841 (extractMap!2102 (t!360432 (toList!6041 lm!2023))) lt!1908807 (_1!30643 (h!59392 (_2!30644 (h!59393 (toList!6041 lm!2023))))) (_2!30643 (h!59392 (_2!30644 (h!59393 (toList!6041 lm!2023)))))) lt!1908999)))

(declare-fun bs!1138311 () Bool)

(assert (= bs!1138311 d!1516878))

(declare-fun m!5703719 () Bool)

(assert (=> bs!1138311 m!5703719))

(assert (=> bs!1138311 m!5703129))

(declare-fun m!5703721 () Bool)

(assert (=> bs!1138311 m!5703721))

(assert (=> bs!1138311 m!5703129))

(declare-fun m!5703723 () Bool)

(assert (=> bs!1138311 m!5703723))

(declare-fun m!5703725 () Bool)

(assert (=> bs!1138311 m!5703725))

(assert (=> b!4746225 d!1516878))

(declare-fun d!1516890 () Bool)

(declare-fun res!2011806 () Bool)

(declare-fun e!2960673 () Bool)

(assert (=> d!1516890 (=> res!2011806 e!2960673)))

(assert (=> d!1516890 (= res!2011806 ((_ is Nil!52999) (toList!6042 (extractMap!2102 (t!360432 (toList!6041 lm!2023))))))))

(assert (=> d!1516890 (= (forall!11717 (toList!6042 (extractMap!2102 (t!360432 (toList!6041 lm!2023)))) lambda!220364) e!2960673)))

(declare-fun b!4746502 () Bool)

(declare-fun e!2960674 () Bool)

(assert (=> b!4746502 (= e!2960673 e!2960674)))

(declare-fun res!2011807 () Bool)

(assert (=> b!4746502 (=> (not res!2011807) (not e!2960674))))

(assert (=> b!4746502 (= res!2011807 (dynLambda!21890 lambda!220364 (h!59392 (toList!6042 (extractMap!2102 (t!360432 (toList!6041 lm!2023)))))))))

(declare-fun b!4746503 () Bool)

(assert (=> b!4746503 (= e!2960674 (forall!11717 (t!360431 (toList!6042 (extractMap!2102 (t!360432 (toList!6041 lm!2023))))) lambda!220364))))

(assert (= (and d!1516890 (not res!2011806)) b!4746502))

(assert (= (and b!4746502 res!2011807) b!4746503))

(declare-fun b_lambda!182853 () Bool)

(assert (=> (not b_lambda!182853) (not b!4746502)))

(declare-fun m!5703727 () Bool)

(assert (=> b!4746502 m!5703727))

(declare-fun m!5703729 () Bool)

(assert (=> b!4746503 m!5703729))

(assert (=> b!4746225 d!1516890))

(declare-fun d!1516892 () Bool)

(declare-fun e!2960684 () Bool)

(assert (=> d!1516892 e!2960684))

(declare-fun res!2011826 () Bool)

(assert (=> d!1516892 (=> (not res!2011826) (not e!2960684))))

(declare-fun lt!1909011 () ListMap!5405)

(assert (=> d!1516892 (= res!2011826 (contains!16426 lt!1909011 (_1!30643 (h!59392 (_2!30644 (h!59393 (toList!6041 lm!2023)))))))))

(declare-fun lt!1909013 () List!53123)

(assert (=> d!1516892 (= lt!1909011 (ListMap!5406 lt!1909013))))

(declare-fun lt!1909014 () Unit!134331)

(declare-fun lt!1909012 () Unit!134331)

(assert (=> d!1516892 (= lt!1909014 lt!1909012)))

(assert (=> d!1516892 (= (getValueByKey!2045 lt!1909013 (_1!30643 (h!59392 (_2!30644 (h!59393 (toList!6041 lm!2023)))))) (Some!12494 (_2!30643 (h!59392 (_2!30644 (h!59393 (toList!6041 lm!2023)))))))))

(declare-fun lemmaContainsTupThenGetReturnValue!1124 (List!53123 K!14340 V!14586) Unit!134331)

(assert (=> d!1516892 (= lt!1909012 (lemmaContainsTupThenGetReturnValue!1124 lt!1909013 (_1!30643 (h!59392 (_2!30644 (h!59393 (toList!6041 lm!2023))))) (_2!30643 (h!59392 (_2!30644 (h!59393 (toList!6041 lm!2023)))))))))

(declare-fun insertNoDuplicatedKeys!632 (List!53123 K!14340 V!14586) List!53123)

(assert (=> d!1516892 (= lt!1909013 (insertNoDuplicatedKeys!632 (toList!6042 (extractMap!2102 (t!360432 (toList!6041 lm!2023)))) (_1!30643 (h!59392 (_2!30644 (h!59393 (toList!6041 lm!2023))))) (_2!30643 (h!59392 (_2!30644 (h!59393 (toList!6041 lm!2023)))))))))

(assert (=> d!1516892 (= (+!2320 (extractMap!2102 (t!360432 (toList!6041 lm!2023))) (h!59392 (_2!30644 (h!59393 (toList!6041 lm!2023))))) lt!1909011)))

(declare-fun b!4746523 () Bool)

(declare-fun res!2011825 () Bool)

(assert (=> b!4746523 (=> (not res!2011825) (not e!2960684))))

(assert (=> b!4746523 (= res!2011825 (= (getValueByKey!2045 (toList!6042 lt!1909011) (_1!30643 (h!59392 (_2!30644 (h!59393 (toList!6041 lm!2023)))))) (Some!12494 (_2!30643 (h!59392 (_2!30644 (h!59393 (toList!6041 lm!2023))))))))))

(declare-fun b!4746524 () Bool)

(assert (=> b!4746524 (= e!2960684 (contains!16430 (toList!6042 lt!1909011) (h!59392 (_2!30644 (h!59393 (toList!6041 lm!2023))))))))

(assert (= (and d!1516892 res!2011826) b!4746523))

(assert (= (and b!4746523 res!2011825) b!4746524))

(declare-fun m!5703753 () Bool)

(assert (=> d!1516892 m!5703753))

(declare-fun m!5703755 () Bool)

(assert (=> d!1516892 m!5703755))

(declare-fun m!5703757 () Bool)

(assert (=> d!1516892 m!5703757))

(declare-fun m!5703759 () Bool)

(assert (=> d!1516892 m!5703759))

(declare-fun m!5703761 () Bool)

(assert (=> b!4746523 m!5703761))

(declare-fun m!5703763 () Bool)

(assert (=> b!4746524 m!5703763))

(assert (=> b!4746225 d!1516892))

(declare-fun d!1516900 () Bool)

(declare-fun res!2011827 () Bool)

(declare-fun e!2960685 () Bool)

(assert (=> d!1516900 (=> res!2011827 e!2960685)))

(assert (=> d!1516900 (= res!2011827 ((_ is Nil!52999) (toList!6042 lt!1908821)))))

(assert (=> d!1516900 (= (forall!11717 (toList!6042 lt!1908821) lambda!220364) e!2960685)))

(declare-fun b!4746525 () Bool)

(declare-fun e!2960686 () Bool)

(assert (=> b!4746525 (= e!2960685 e!2960686)))

(declare-fun res!2011828 () Bool)

(assert (=> b!4746525 (=> (not res!2011828) (not e!2960686))))

(assert (=> b!4746525 (= res!2011828 (dynLambda!21890 lambda!220364 (h!59392 (toList!6042 lt!1908821))))))

(declare-fun b!4746526 () Bool)

(assert (=> b!4746526 (= e!2960686 (forall!11717 (t!360431 (toList!6042 lt!1908821)) lambda!220364))))

(assert (= (and d!1516900 (not res!2011827)) b!4746525))

(assert (= (and b!4746525 res!2011828) b!4746526))

(declare-fun b_lambda!182859 () Bool)

(assert (=> (not b_lambda!182859) (not b!4746525)))

(declare-fun m!5703765 () Bool)

(assert (=> b!4746525 m!5703765))

(declare-fun m!5703767 () Bool)

(assert (=> b!4746526 m!5703767))

(assert (=> b!4746225 d!1516900))

(declare-fun b!4746527 () Bool)

(declare-fun e!2960687 () Bool)

(declare-fun e!2960690 () Bool)

(assert (=> b!4746527 (= e!2960687 e!2960690)))

(declare-fun res!2011830 () Bool)

(assert (=> b!4746527 (=> (not res!2011830) (not e!2960690))))

(assert (=> b!4746527 (= res!2011830 (isDefined!9749 (getValueByKey!2045 (toList!6042 lt!1908807) (_1!30643 (h!59392 (_2!30644 (h!59393 (toList!6041 lm!2023))))))))))

(declare-fun b!4746528 () Bool)

(declare-fun e!2960691 () Unit!134331)

(declare-fun Unit!134397 () Unit!134331)

(assert (=> b!4746528 (= e!2960691 Unit!134397)))

(declare-fun b!4746529 () Bool)

(declare-fun e!2960689 () Unit!134331)

(declare-fun lt!1909024 () Unit!134331)

(assert (=> b!4746529 (= e!2960689 lt!1909024)))

(declare-fun lt!1909019 () Unit!134331)

(assert (=> b!4746529 (= lt!1909019 (lemmaContainsKeyImpliesGetValueByKeyDefined!1936 (toList!6042 lt!1908807) (_1!30643 (h!59392 (_2!30644 (h!59393 (toList!6041 lm!2023)))))))))

(assert (=> b!4746529 (isDefined!9749 (getValueByKey!2045 (toList!6042 lt!1908807) (_1!30643 (h!59392 (_2!30644 (h!59393 (toList!6041 lm!2023)))))))))

(declare-fun lt!1909017 () Unit!134331)

(assert (=> b!4746529 (= lt!1909017 lt!1909019)))

(assert (=> b!4746529 (= lt!1909024 (lemmaInListThenGetKeysListContains!991 (toList!6042 lt!1908807) (_1!30643 (h!59392 (_2!30644 (h!59393 (toList!6041 lm!2023)))))))))

(declare-fun call!332179 () Bool)

(assert (=> b!4746529 call!332179))

(declare-fun b!4746530 () Bool)

(declare-fun e!2960692 () List!53126)

(assert (=> b!4746530 (= e!2960692 (getKeysList!996 (toList!6042 lt!1908807)))))

(declare-fun d!1516902 () Bool)

(assert (=> d!1516902 e!2960687))

(declare-fun res!2011831 () Bool)

(assert (=> d!1516902 (=> res!2011831 e!2960687)))

(declare-fun e!2960688 () Bool)

(assert (=> d!1516902 (= res!2011831 e!2960688)))

(declare-fun res!2011829 () Bool)

(assert (=> d!1516902 (=> (not res!2011829) (not e!2960688))))

(declare-fun lt!1909023 () Bool)

(assert (=> d!1516902 (= res!2011829 (not lt!1909023))))

(declare-fun lt!1909021 () Bool)

(assert (=> d!1516902 (= lt!1909023 lt!1909021)))

(declare-fun lt!1909022 () Unit!134331)

(assert (=> d!1516902 (= lt!1909022 e!2960689)))

(declare-fun c!810721 () Bool)

(assert (=> d!1516902 (= c!810721 lt!1909021)))

(assert (=> d!1516902 (= lt!1909021 (containsKey!3513 (toList!6042 lt!1908807) (_1!30643 (h!59392 (_2!30644 (h!59393 (toList!6041 lm!2023)))))))))

(assert (=> d!1516902 (= (contains!16426 lt!1908807 (_1!30643 (h!59392 (_2!30644 (h!59393 (toList!6041 lm!2023)))))) lt!1909023)))

(declare-fun bm!332174 () Bool)

(assert (=> bm!332174 (= call!332179 (contains!16428 e!2960692 (_1!30643 (h!59392 (_2!30644 (h!59393 (toList!6041 lm!2023)))))))))

(declare-fun c!810720 () Bool)

(assert (=> bm!332174 (= c!810720 c!810721)))

(declare-fun b!4746531 () Bool)

(assert (=> b!4746531 (= e!2960688 (not (contains!16428 (keys!19083 lt!1908807) (_1!30643 (h!59392 (_2!30644 (h!59393 (toList!6041 lm!2023))))))))))

(declare-fun b!4746532 () Bool)

(assert (=> b!4746532 (= e!2960689 e!2960691)))

(declare-fun c!810719 () Bool)

(assert (=> b!4746532 (= c!810719 call!332179)))

(declare-fun b!4746533 () Bool)

(assert (=> b!4746533 false))

(declare-fun lt!1909020 () Unit!134331)

(declare-fun lt!1909018 () Unit!134331)

(assert (=> b!4746533 (= lt!1909020 lt!1909018)))

(assert (=> b!4746533 (containsKey!3513 (toList!6042 lt!1908807) (_1!30643 (h!59392 (_2!30644 (h!59393 (toList!6041 lm!2023))))))))

(assert (=> b!4746533 (= lt!1909018 (lemmaInGetKeysListThenContainsKey!995 (toList!6042 lt!1908807) (_1!30643 (h!59392 (_2!30644 (h!59393 (toList!6041 lm!2023)))))))))

(declare-fun Unit!134398 () Unit!134331)

(assert (=> b!4746533 (= e!2960691 Unit!134398)))

(declare-fun b!4746534 () Bool)

(assert (=> b!4746534 (= e!2960692 (keys!19083 lt!1908807))))

(declare-fun b!4746535 () Bool)

(assert (=> b!4746535 (= e!2960690 (contains!16428 (keys!19083 lt!1908807) (_1!30643 (h!59392 (_2!30644 (h!59393 (toList!6041 lm!2023)))))))))

(assert (= (and d!1516902 c!810721) b!4746529))

(assert (= (and d!1516902 (not c!810721)) b!4746532))

(assert (= (and b!4746532 c!810719) b!4746533))

(assert (= (and b!4746532 (not c!810719)) b!4746528))

(assert (= (or b!4746529 b!4746532) bm!332174))

(assert (= (and bm!332174 c!810720) b!4746530))

(assert (= (and bm!332174 (not c!810720)) b!4746534))

(assert (= (and d!1516902 res!2011829) b!4746531))

(assert (= (and d!1516902 (not res!2011831)) b!4746527))

(assert (= (and b!4746527 res!2011830) b!4746535))

(declare-fun m!5703769 () Bool)

(assert (=> bm!332174 m!5703769))

(declare-fun m!5703771 () Bool)

(assert (=> b!4746531 m!5703771))

(assert (=> b!4746531 m!5703771))

(declare-fun m!5703773 () Bool)

(assert (=> b!4746531 m!5703773))

(declare-fun m!5703775 () Bool)

(assert (=> d!1516902 m!5703775))

(assert (=> b!4746533 m!5703775))

(declare-fun m!5703777 () Bool)

(assert (=> b!4746533 m!5703777))

(declare-fun m!5703779 () Bool)

(assert (=> b!4746530 m!5703779))

(declare-fun m!5703781 () Bool)

(assert (=> b!4746527 m!5703781))

(assert (=> b!4746527 m!5703781))

(declare-fun m!5703783 () Bool)

(assert (=> b!4746527 m!5703783))

(declare-fun m!5703785 () Bool)

(assert (=> b!4746529 m!5703785))

(assert (=> b!4746529 m!5703781))

(assert (=> b!4746529 m!5703781))

(assert (=> b!4746529 m!5703783))

(declare-fun m!5703787 () Bool)

(assert (=> b!4746529 m!5703787))

(assert (=> b!4746535 m!5703771))

(assert (=> b!4746535 m!5703771))

(assert (=> b!4746535 m!5703773))

(assert (=> b!4746534 m!5703771))

(assert (=> b!4746225 d!1516902))

(declare-fun d!1516904 () Bool)

(declare-fun res!2011832 () Bool)

(declare-fun e!2960693 () Bool)

(assert (=> d!1516904 (=> res!2011832 e!2960693)))

(assert (=> d!1516904 (= res!2011832 ((_ is Nil!52999) (t!360431 (_2!30644 (h!59393 (toList!6041 lm!2023))))))))

(assert (=> d!1516904 (= (forall!11717 (t!360431 (_2!30644 (h!59393 (toList!6041 lm!2023)))) lambda!220364) e!2960693)))

(declare-fun b!4746536 () Bool)

(declare-fun e!2960694 () Bool)

(assert (=> b!4746536 (= e!2960693 e!2960694)))

(declare-fun res!2011833 () Bool)

(assert (=> b!4746536 (=> (not res!2011833) (not e!2960694))))

(assert (=> b!4746536 (= res!2011833 (dynLambda!21890 lambda!220364 (h!59392 (t!360431 (_2!30644 (h!59393 (toList!6041 lm!2023)))))))))

(declare-fun b!4746537 () Bool)

(assert (=> b!4746537 (= e!2960694 (forall!11717 (t!360431 (t!360431 (_2!30644 (h!59393 (toList!6041 lm!2023))))) lambda!220364))))

(assert (= (and d!1516904 (not res!2011832)) b!4746536))

(assert (= (and b!4746536 res!2011833) b!4746537))

(declare-fun b_lambda!182861 () Bool)

(assert (=> (not b_lambda!182861) (not b!4746536)))

(declare-fun m!5703789 () Bool)

(assert (=> b!4746536 m!5703789))

(declare-fun m!5703791 () Bool)

(assert (=> b!4746537 m!5703791))

(assert (=> b!4746225 d!1516904))

(declare-fun d!1516906 () Bool)

(declare-fun res!2011834 () Bool)

(declare-fun e!2960695 () Bool)

(assert (=> d!1516906 (=> res!2011834 e!2960695)))

(assert (=> d!1516906 (= res!2011834 (and ((_ is Cons!52999) (t!360431 newBucket!218)) (= (_1!30643 (h!59392 (t!360431 newBucket!218))) (_1!30643 (h!59392 newBucket!218)))))))

(assert (=> d!1516906 (= (containsKey!3509 (t!360431 newBucket!218) (_1!30643 (h!59392 newBucket!218))) e!2960695)))

(declare-fun b!4746538 () Bool)

(declare-fun e!2960696 () Bool)

(assert (=> b!4746538 (= e!2960695 e!2960696)))

(declare-fun res!2011835 () Bool)

(assert (=> b!4746538 (=> (not res!2011835) (not e!2960696))))

(assert (=> b!4746538 (= res!2011835 ((_ is Cons!52999) (t!360431 newBucket!218)))))

(declare-fun b!4746539 () Bool)

(assert (=> b!4746539 (= e!2960696 (containsKey!3509 (t!360431 (t!360431 newBucket!218)) (_1!30643 (h!59392 newBucket!218))))))

(assert (= (and d!1516906 (not res!2011834)) b!4746538))

(assert (= (and b!4746538 res!2011835) b!4746539))

(declare-fun m!5703793 () Bool)

(assert (=> b!4746539 m!5703793))

(assert (=> b!4746268 d!1516906))

(declare-fun d!1516908 () Bool)

(declare-fun res!2011836 () Bool)

(declare-fun e!2960697 () Bool)

(assert (=> d!1516908 (=> res!2011836 e!2960697)))

(assert (=> d!1516908 (= res!2011836 ((_ is Nil!52999) (toList!6042 (extractMap!2102 (t!360432 (toList!6041 lm!2023))))))))

(assert (=> d!1516908 (= (forall!11717 (toList!6042 (extractMap!2102 (t!360432 (toList!6041 lm!2023)))) lambda!220365) e!2960697)))

(declare-fun b!4746540 () Bool)

(declare-fun e!2960698 () Bool)

(assert (=> b!4746540 (= e!2960697 e!2960698)))

(declare-fun res!2011837 () Bool)

(assert (=> b!4746540 (=> (not res!2011837) (not e!2960698))))

(assert (=> b!4746540 (= res!2011837 (dynLambda!21890 lambda!220365 (h!59392 (toList!6042 (extractMap!2102 (t!360432 (toList!6041 lm!2023)))))))))

(declare-fun b!4746541 () Bool)

(assert (=> b!4746541 (= e!2960698 (forall!11717 (t!360431 (toList!6042 (extractMap!2102 (t!360432 (toList!6041 lm!2023))))) lambda!220365))))

(assert (= (and d!1516908 (not res!2011836)) b!4746540))

(assert (= (and b!4746540 res!2011837) b!4746541))

(declare-fun b_lambda!182863 () Bool)

(assert (=> (not b_lambda!182863) (not b!4746540)))

(declare-fun m!5703795 () Bool)

(assert (=> b!4746540 m!5703795))

(declare-fun m!5703797 () Bool)

(assert (=> b!4746541 m!5703797))

(assert (=> b!4746227 d!1516908))

(declare-fun d!1516910 () Bool)

(assert (=> d!1516910 (= (invariantList!1557 (toList!6042 lt!1908814)) (noDuplicatedKeys!395 (toList!6042 lt!1908814)))))

(declare-fun bs!1138324 () Bool)

(assert (= bs!1138324 d!1516910))

(declare-fun m!5703799 () Bool)

(assert (=> bs!1138324 m!5703799))

(assert (=> b!4746226 d!1516910))

(declare-fun d!1516912 () Bool)

(declare-fun res!2011838 () Bool)

(declare-fun e!2960699 () Bool)

(assert (=> d!1516912 (=> res!2011838 e!2960699)))

(assert (=> d!1516912 (= res!2011838 ((_ is Nil!52999) (toList!6042 (extractMap!2102 (t!360432 (toList!6041 lm!2023))))))))

(assert (=> d!1516912 (= (forall!11717 (toList!6042 (extractMap!2102 (t!360432 (toList!6041 lm!2023)))) (ite c!810662 lambda!220362 lambda!220364)) e!2960699)))

(declare-fun b!4746542 () Bool)

(declare-fun e!2960700 () Bool)

(assert (=> b!4746542 (= e!2960699 e!2960700)))

(declare-fun res!2011839 () Bool)

(assert (=> b!4746542 (=> (not res!2011839) (not e!2960700))))

(assert (=> b!4746542 (= res!2011839 (dynLambda!21890 (ite c!810662 lambda!220362 lambda!220364) (h!59392 (toList!6042 (extractMap!2102 (t!360432 (toList!6041 lm!2023)))))))))

(declare-fun b!4746543 () Bool)

(assert (=> b!4746543 (= e!2960700 (forall!11717 (t!360431 (toList!6042 (extractMap!2102 (t!360432 (toList!6041 lm!2023))))) (ite c!810662 lambda!220362 lambda!220364)))))

(assert (= (and d!1516912 (not res!2011838)) b!4746542))

(assert (= (and b!4746542 res!2011839) b!4746543))

(declare-fun b_lambda!182865 () Bool)

(assert (=> (not b_lambda!182865) (not b!4746542)))

(declare-fun m!5703809 () Bool)

(assert (=> b!4746542 m!5703809))

(declare-fun m!5703811 () Bool)

(assert (=> b!4746543 m!5703811))

(assert (=> bm!332153 d!1516912))

(declare-fun d!1516920 () Bool)

(assert (=> d!1516920 (isDefined!9749 (getValueByKey!2045 (toList!6042 lt!1908645) key!4653))))

(declare-fun lt!1909030 () Unit!134331)

(declare-fun choose!33759 (List!53123 K!14340) Unit!134331)

(assert (=> d!1516920 (= lt!1909030 (choose!33759 (toList!6042 lt!1908645) key!4653))))

(assert (=> d!1516920 (invariantList!1557 (toList!6042 lt!1908645))))

(assert (=> d!1516920 (= (lemmaContainsKeyImpliesGetValueByKeyDefined!1936 (toList!6042 lt!1908645) key!4653) lt!1909030)))

(declare-fun bs!1138327 () Bool)

(assert (= bs!1138327 d!1516920))

(assert (=> bs!1138327 m!5703347))

(assert (=> bs!1138327 m!5703347))

(assert (=> bs!1138327 m!5703349))

(declare-fun m!5703819 () Bool)

(assert (=> bs!1138327 m!5703819))

(declare-fun m!5703823 () Bool)

(assert (=> bs!1138327 m!5703823))

(assert (=> b!4746290 d!1516920))

(assert (=> b!4746290 d!1516856))

(assert (=> b!4746290 d!1516858))

(declare-fun d!1516926 () Bool)

(assert (=> d!1516926 (contains!16428 (getKeysList!996 (toList!6042 lt!1908645)) key!4653)))

(declare-fun lt!1909037 () Unit!134331)

(declare-fun choose!33760 (List!53123 K!14340) Unit!134331)

(assert (=> d!1516926 (= lt!1909037 (choose!33760 (toList!6042 lt!1908645) key!4653))))

(assert (=> d!1516926 (invariantList!1557 (toList!6042 lt!1908645))))

(assert (=> d!1516926 (= (lemmaInListThenGetKeysListContains!991 (toList!6042 lt!1908645) key!4653) lt!1909037)))

(declare-fun bs!1138331 () Bool)

(assert (= bs!1138331 d!1516926))

(assert (=> bs!1138331 m!5703345))

(assert (=> bs!1138331 m!5703345))

(declare-fun m!5703835 () Bool)

(assert (=> bs!1138331 m!5703835))

(declare-fun m!5703837 () Bool)

(assert (=> bs!1138331 m!5703837))

(assert (=> bs!1138331 m!5703823))

(assert (=> b!4746290 d!1516926))

(declare-fun d!1516936 () Bool)

(declare-fun res!2011848 () Bool)

(declare-fun e!2960709 () Bool)

(assert (=> d!1516936 (=> res!2011848 e!2960709)))

(assert (=> d!1516936 (= res!2011848 (not ((_ is Cons!52999) (t!360431 newBucket!218))))))

(assert (=> d!1516936 (= (noDuplicateKeys!2076 (t!360431 newBucket!218)) e!2960709)))

(declare-fun b!4746552 () Bool)

(declare-fun e!2960710 () Bool)

(assert (=> b!4746552 (= e!2960709 e!2960710)))

(declare-fun res!2011849 () Bool)

(assert (=> b!4746552 (=> (not res!2011849) (not e!2960710))))

(assert (=> b!4746552 (= res!2011849 (not (containsKey!3509 (t!360431 (t!360431 newBucket!218)) (_1!30643 (h!59392 (t!360431 newBucket!218))))))))

(declare-fun b!4746553 () Bool)

(assert (=> b!4746553 (= e!2960710 (noDuplicateKeys!2076 (t!360431 (t!360431 newBucket!218))))))

(assert (= (and d!1516936 (not res!2011848)) b!4746552))

(assert (= (and b!4746552 res!2011849) b!4746553))

(declare-fun m!5703839 () Bool)

(assert (=> b!4746552 m!5703839))

(declare-fun m!5703841 () Bool)

(assert (=> b!4746553 m!5703841))

(assert (=> b!4746269 d!1516936))

(declare-fun b!4746605 () Bool)

(assert (=> b!4746605 true))

(declare-fun bs!1138334 () Bool)

(declare-fun b!4746609 () Bool)

(assert (= bs!1138334 (and b!4746609 b!4746605)))

(declare-fun lambda!220425 () Int)

(declare-fun lambda!220422 () Int)

(assert (=> bs!1138334 (= (= (Cons!52999 (h!59392 (toList!6042 lt!1908645)) (t!360431 (toList!6042 lt!1908645))) (t!360431 (toList!6042 lt!1908645))) (= lambda!220425 lambda!220422))))

(assert (=> b!4746609 true))

(declare-fun bs!1138335 () Bool)

(declare-fun b!4746606 () Bool)

(assert (= bs!1138335 (and b!4746606 b!4746605)))

(declare-fun lambda!220426 () Int)

(assert (=> bs!1138335 (= (= (toList!6042 lt!1908645) (t!360431 (toList!6042 lt!1908645))) (= lambda!220426 lambda!220422))))

(declare-fun bs!1138336 () Bool)

(assert (= bs!1138336 (and b!4746606 b!4746609)))

(assert (=> bs!1138336 (= (= (toList!6042 lt!1908645) (Cons!52999 (h!59392 (toList!6042 lt!1908645)) (t!360431 (toList!6042 lt!1908645)))) (= lambda!220426 lambda!220425))))

(assert (=> b!4746606 true))

(declare-fun b!4746602 () Bool)

(assert (=> b!4746602 false))

(declare-fun e!2960736 () Unit!134331)

(declare-fun Unit!134399 () Unit!134331)

(assert (=> b!4746602 (= e!2960736 Unit!134399)))

(declare-fun b!4746603 () Bool)

(declare-fun e!2960738 () Unit!134331)

(declare-fun Unit!134400 () Unit!134331)

(assert (=> b!4746603 (= e!2960738 Unit!134400)))

(declare-fun b!4746604 () Bool)

(declare-fun e!2960735 () List!53126)

(assert (=> b!4746604 (= e!2960735 Nil!53002)))

(assert (=> b!4746605 false))

(declare-fun lt!1909066 () Unit!134331)

(declare-fun forallContained!3750 (List!53126 Int K!14340) Unit!134331)

(assert (=> b!4746605 (= lt!1909066 (forallContained!3750 (getKeysList!996 (t!360431 (toList!6042 lt!1908645))) lambda!220422 (_1!30643 (h!59392 (toList!6042 lt!1908645)))))))

(declare-fun Unit!134401 () Unit!134331)

(assert (=> b!4746605 (= e!2960738 Unit!134401)))

(declare-fun res!2011863 () Bool)

(declare-fun e!2960740 () Bool)

(assert (=> b!4746606 (=> (not res!2011863) (not e!2960740))))

(declare-fun lt!1909067 () List!53126)

(declare-fun forall!11719 (List!53126 Int) Bool)

(assert (=> b!4746606 (= res!2011863 (forall!11719 lt!1909067 lambda!220426))))

(declare-fun lambda!220427 () Int)

(declare-fun b!4746607 () Bool)

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!9493 (List!53126) (InoxSet K!14340))

(declare-fun map!11732 (List!53123 Int) List!53126)

(assert (=> b!4746607 (= e!2960740 (= (content!9493 lt!1909067) (content!9493 (map!11732 (toList!6042 lt!1908645) lambda!220427))))))

(declare-fun b!4746608 () Bool)

(declare-fun Unit!134402 () Unit!134331)

(assert (=> b!4746608 (= e!2960736 Unit!134402)))

(assert (=> b!4746609 (= e!2960735 (Cons!53002 (_1!30643 (h!59392 (toList!6042 lt!1908645))) (getKeysList!996 (t!360431 (toList!6042 lt!1908645)))))))

(declare-fun c!810742 () Bool)

(assert (=> b!4746609 (= c!810742 (containsKey!3513 (t!360431 (toList!6042 lt!1908645)) (_1!30643 (h!59392 (toList!6042 lt!1908645)))))))

(declare-fun lt!1909064 () Unit!134331)

(assert (=> b!4746609 (= lt!1909064 e!2960736)))

(declare-fun c!810741 () Bool)

(assert (=> b!4746609 (= c!810741 (contains!16428 (getKeysList!996 (t!360431 (toList!6042 lt!1908645))) (_1!30643 (h!59392 (toList!6042 lt!1908645)))))))

(declare-fun lt!1909062 () Unit!134331)

(assert (=> b!4746609 (= lt!1909062 e!2960738)))

(declare-fun lt!1909061 () List!53126)

(assert (=> b!4746609 (= lt!1909061 (getKeysList!996 (t!360431 (toList!6042 lt!1908645))))))

(declare-fun lt!1909063 () Unit!134331)

(declare-fun lemmaForallContainsAddHeadPreserves!298 (List!53123 List!53126 tuple2!54698) Unit!134331)

(assert (=> b!4746609 (= lt!1909063 (lemmaForallContainsAddHeadPreserves!298 (t!360431 (toList!6042 lt!1908645)) lt!1909061 (h!59392 (toList!6042 lt!1908645))))))

(assert (=> b!4746609 (forall!11719 lt!1909061 lambda!220425)))

(declare-fun lt!1909065 () Unit!134331)

(assert (=> b!4746609 (= lt!1909065 lt!1909063)))

(declare-fun d!1516938 () Bool)

(assert (=> d!1516938 e!2960740))

(declare-fun res!2011864 () Bool)

(assert (=> d!1516938 (=> (not res!2011864) (not e!2960740))))

(declare-fun noDuplicate!881 (List!53126) Bool)

(assert (=> d!1516938 (= res!2011864 (noDuplicate!881 lt!1909067))))

(assert (=> d!1516938 (= lt!1909067 e!2960735)))

(declare-fun c!810738 () Bool)

(assert (=> d!1516938 (= c!810738 ((_ is Cons!52999) (toList!6042 lt!1908645)))))

(assert (=> d!1516938 (invariantList!1557 (toList!6042 lt!1908645))))

(assert (=> d!1516938 (= (getKeysList!996 (toList!6042 lt!1908645)) lt!1909067)))

(declare-fun b!4746610 () Bool)

(declare-fun res!2011862 () Bool)

(assert (=> b!4746610 (=> (not res!2011862) (not e!2960740))))

(declare-fun length!618 (List!53126) Int)

(declare-fun length!619 (List!53123) Int)

(assert (=> b!4746610 (= res!2011862 (= (length!618 lt!1909067) (length!619 (toList!6042 lt!1908645))))))

(assert (= (and d!1516938 c!810738) b!4746609))

(assert (= (and d!1516938 (not c!810738)) b!4746604))

(assert (= (and b!4746609 c!810742) b!4746602))

(assert (= (and b!4746609 (not c!810742)) b!4746608))

(assert (= (and b!4746609 c!810741) b!4746605))

(assert (= (and b!4746609 (not c!810741)) b!4746603))

(assert (= (and d!1516938 res!2011864) b!4746610))

(assert (= (and b!4746610 res!2011862) b!4746606))

(assert (= (and b!4746606 res!2011863) b!4746607))

(declare-fun m!5703861 () Bool)

(assert (=> b!4746610 m!5703861))

(declare-fun m!5703863 () Bool)

(assert (=> b!4746610 m!5703863))

(declare-fun m!5703865 () Bool)

(assert (=> b!4746609 m!5703865))

(declare-fun m!5703867 () Bool)

(assert (=> b!4746609 m!5703867))

(declare-fun m!5703869 () Bool)

(assert (=> b!4746609 m!5703869))

(declare-fun m!5703871 () Bool)

(assert (=> b!4746609 m!5703871))

(assert (=> b!4746609 m!5703869))

(declare-fun m!5703873 () Bool)

(assert (=> b!4746609 m!5703873))

(assert (=> b!4746605 m!5703869))

(assert (=> b!4746605 m!5703869))

(declare-fun m!5703875 () Bool)

(assert (=> b!4746605 m!5703875))

(declare-fun m!5703877 () Bool)

(assert (=> b!4746606 m!5703877))

(declare-fun m!5703879 () Bool)

(assert (=> d!1516938 m!5703879))

(assert (=> d!1516938 m!5703823))

(declare-fun m!5703881 () Bool)

(assert (=> b!4746607 m!5703881))

(declare-fun m!5703883 () Bool)

(assert (=> b!4746607 m!5703883))

(assert (=> b!4746607 m!5703883))

(declare-fun m!5703885 () Bool)

(assert (=> b!4746607 m!5703885))

(assert (=> b!4746291 d!1516938))

(declare-fun d!1516954 () Bool)

(declare-fun lt!1909078 () Bool)

(assert (=> d!1516954 (= lt!1909078 (select (content!9493 e!2960518) key!4653))))

(declare-fun e!2960747 () Bool)

(assert (=> d!1516954 (= lt!1909078 e!2960747)))

(declare-fun res!2011876 () Bool)

(assert (=> d!1516954 (=> (not res!2011876) (not e!2960747))))

(assert (=> d!1516954 (= res!2011876 ((_ is Cons!53002) e!2960518))))

(assert (=> d!1516954 (= (contains!16428 e!2960518 key!4653) lt!1909078)))

(declare-fun b!4746623 () Bool)

(declare-fun e!2960748 () Bool)

(assert (=> b!4746623 (= e!2960747 e!2960748)))

(declare-fun res!2011875 () Bool)

(assert (=> b!4746623 (=> res!2011875 e!2960748)))

(assert (=> b!4746623 (= res!2011875 (= (h!59397 e!2960518) key!4653))))

(declare-fun b!4746624 () Bool)

(assert (=> b!4746624 (= e!2960748 (contains!16428 (t!360434 e!2960518) key!4653))))

(assert (= (and d!1516954 res!2011876) b!4746623))

(assert (= (and b!4746623 (not res!2011875)) b!4746624))

(declare-fun m!5703887 () Bool)

(assert (=> d!1516954 m!5703887))

(declare-fun m!5703889 () Bool)

(assert (=> d!1516954 m!5703889))

(declare-fun m!5703891 () Bool)

(assert (=> b!4746624 m!5703891))

(assert (=> bm!332158 d!1516954))

(declare-fun d!1516956 () Bool)

(assert (=> d!1516956 (= (invariantList!1557 (toList!6042 lt!1908829)) (noDuplicatedKeys!395 (toList!6042 lt!1908829)))))

(declare-fun bs!1138337 () Bool)

(assert (= bs!1138337 d!1516956))

(declare-fun m!5703893 () Bool)

(assert (=> bs!1138337 m!5703893))

(assert (=> d!1516752 d!1516956))

(declare-fun d!1516958 () Bool)

(declare-fun res!2011877 () Bool)

(declare-fun e!2960749 () Bool)

(assert (=> d!1516958 (=> res!2011877 e!2960749)))

(assert (=> d!1516958 (= res!2011877 ((_ is Nil!53000) (t!360432 (toList!6041 lm!2023))))))

(assert (=> d!1516958 (= (forall!11715 (t!360432 (toList!6041 lm!2023)) lambda!220368) e!2960749)))

(declare-fun b!4746625 () Bool)

(declare-fun e!2960750 () Bool)

(assert (=> b!4746625 (= e!2960749 e!2960750)))

(declare-fun res!2011878 () Bool)

(assert (=> b!4746625 (=> (not res!2011878) (not e!2960750))))

(assert (=> b!4746625 (= res!2011878 (dynLambda!21889 lambda!220368 (h!59393 (t!360432 (toList!6041 lm!2023)))))))

(declare-fun b!4746626 () Bool)

(assert (=> b!4746626 (= e!2960750 (forall!11715 (t!360432 (t!360432 (toList!6041 lm!2023))) lambda!220368))))

(assert (= (and d!1516958 (not res!2011877)) b!4746625))

(assert (= (and b!4746625 res!2011878) b!4746626))

(declare-fun b_lambda!182871 () Bool)

(assert (=> (not b_lambda!182871) (not b!4746625)))

(declare-fun m!5703895 () Bool)

(assert (=> b!4746625 m!5703895))

(declare-fun m!5703897 () Bool)

(assert (=> b!4746626 m!5703897))

(assert (=> d!1516752 d!1516958))

(declare-fun bs!1138345 () Bool)

(declare-fun d!1516960 () Bool)

(assert (= bs!1138345 (and d!1516960 d!1516780)))

(declare-fun lambda!220440 () Int)

(assert (=> bs!1138345 (not (= lambda!220440 lambda!220376))))

(declare-fun bs!1138346 () Bool)

(assert (= bs!1138346 (and d!1516960 d!1516866)))

(assert (=> bs!1138346 (= (= (extractMap!2102 (t!360432 (toList!6041 lm!2023))) lt!1908949) (= lambda!220440 lambda!220397))))

(declare-fun bs!1138347 () Bool)

(assert (= bs!1138347 (and d!1516960 b!4746225)))

(assert (=> bs!1138347 (= (= (extractMap!2102 (t!360432 (toList!6041 lm!2023))) lt!1908807) (= lambda!220440 lambda!220364))))

(declare-fun bs!1138348 () Bool)

(assert (= bs!1138348 (and d!1516960 d!1516718)))

(assert (=> bs!1138348 (= (= (extractMap!2102 (t!360432 (toList!6041 lm!2023))) lt!1908814) (= lambda!220440 lambda!220365))))

(declare-fun bs!1138349 () Bool)

(assert (= bs!1138349 (and d!1516960 d!1516878)))

(assert (=> bs!1138349 (= (= (extractMap!2102 (t!360432 (toList!6041 lm!2023))) lt!1908807) (= lambda!220440 lambda!220404))))

(declare-fun bs!1138350 () Bool)

(assert (= bs!1138350 (and d!1516960 b!4746455)))

(assert (=> bs!1138350 (= (= (extractMap!2102 (t!360432 (toList!6041 lm!2023))) (+!2320 (extractMap!2102 (t!360432 (toList!6041 lm!2023))) (h!59392 (_2!30644 (h!59393 (toList!6041 lm!2023)))))) (= lambda!220440 lambda!220393))))

(declare-fun bs!1138351 () Bool)

(assert (= bs!1138351 (and d!1516960 d!1516822)))

(assert (=> bs!1138351 (= (= (extractMap!2102 (t!360432 (toList!6041 lm!2023))) lt!1908893) (= lambda!220440 lambda!220390))))

(assert (=> bs!1138347 (= lambda!220440 lambda!220363)))

(declare-fun bs!1138352 () Bool)

(assert (= bs!1138352 (and d!1516960 b!4746228)))

(assert (=> bs!1138352 (= lambda!220440 lambda!220362)))

(declare-fun bs!1138353 () Bool)

(assert (= bs!1138353 (and d!1516960 b!4746380)))

(assert (=> bs!1138353 (= (= (extractMap!2102 (t!360432 (toList!6041 lm!2023))) (extractMap!2102 (t!360432 (t!360432 (toList!6041 lm!2023))))) (= lambda!220440 lambda!220383))))

(declare-fun bs!1138354 () Bool)

(assert (= bs!1138354 (and d!1516960 b!4746458)))

(assert (=> bs!1138354 (= (= (extractMap!2102 (t!360432 (toList!6041 lm!2023))) (+!2320 (extractMap!2102 (t!360432 (toList!6041 lm!2023))) (h!59392 (_2!30644 (h!59393 (toList!6041 lm!2023)))))) (= lambda!220440 lambda!220392))))

(assert (=> bs!1138350 (= (= (extractMap!2102 (t!360432 (toList!6041 lm!2023))) lt!1908942) (= lambda!220440 lambda!220394))))

(declare-fun bs!1138356 () Bool)

(assert (= bs!1138356 (and d!1516960 d!1516756)))

(assert (=> bs!1138356 (not (= lambda!220440 lambda!220371))))

(assert (=> bs!1138353 (= (= (extractMap!2102 (t!360432 (toList!6041 lm!2023))) lt!1908886) (= lambda!220440 lambda!220386))))

(declare-fun bs!1138357 () Bool)

(assert (= bs!1138357 (and d!1516960 b!4746383)))

(assert (=> bs!1138357 (= (= (extractMap!2102 (t!360432 (toList!6041 lm!2023))) (extractMap!2102 (t!360432 (t!360432 (toList!6041 lm!2023))))) (= lambda!220440 lambda!220382))))

(assert (=> d!1516960 true))

(assert (=> d!1516960 (forall!11717 (toList!6042 (extractMap!2102 (t!360432 (toList!6041 lm!2023)))) lambda!220440)))

(declare-fun lt!1909089 () Unit!134331)

(declare-fun choose!33764 (ListMap!5405) Unit!134331)

(assert (=> d!1516960 (= lt!1909089 (choose!33764 (extractMap!2102 (t!360432 (toList!6041 lm!2023)))))))

(assert (=> d!1516960 (= (lemmaContainsAllItsOwnKeys!842 (extractMap!2102 (t!360432 (toList!6041 lm!2023)))) lt!1909089)))

(declare-fun bs!1138358 () Bool)

(assert (= bs!1138358 d!1516960))

(declare-fun m!5703939 () Bool)

(assert (=> bs!1138358 m!5703939))

(assert (=> bs!1138358 m!5703129))

(declare-fun m!5703941 () Bool)

(assert (=> bs!1138358 m!5703941))

(assert (=> bm!332154 d!1516960))

(declare-fun d!1516972 () Bool)

(declare-fun res!2011888 () Bool)

(declare-fun e!2960764 () Bool)

(assert (=> d!1516972 (=> res!2011888 e!2960764)))

(assert (=> d!1516972 (= res!2011888 (and ((_ is Cons!52999) lt!1908832) (= (_1!30643 (h!59392 lt!1908832)) key!4653)))))

(assert (=> d!1516972 (= (containsKey!3509 lt!1908832 key!4653) e!2960764)))

(declare-fun b!4746647 () Bool)

(declare-fun e!2960765 () Bool)

(assert (=> b!4746647 (= e!2960764 e!2960765)))

(declare-fun res!2011889 () Bool)

(assert (=> b!4746647 (=> (not res!2011889) (not e!2960765))))

(assert (=> b!4746647 (= res!2011889 ((_ is Cons!52999) lt!1908832))))

(declare-fun b!4746648 () Bool)

(assert (=> b!4746648 (= e!2960765 (containsKey!3509 (t!360431 lt!1908832) key!4653))))

(assert (= (and d!1516972 (not res!2011888)) b!4746647))

(assert (= (and b!4746647 res!2011889) b!4746648))

(declare-fun m!5703943 () Bool)

(assert (=> b!4746648 m!5703943))

(assert (=> d!1516766 d!1516972))

(assert (=> d!1516766 d!1516764))

(assert (=> bs!1138183 d!1516850))

(declare-fun d!1516974 () Bool)

(declare-fun res!2011890 () Bool)

(declare-fun e!2960767 () Bool)

(assert (=> d!1516974 (=> res!2011890 e!2960767)))

(assert (=> d!1516974 (= res!2011890 (and ((_ is Cons!52999) (t!360431 (apply!12495 lm!2023 lt!1908644))) (= (_1!30643 (h!59392 (t!360431 (apply!12495 lm!2023 lt!1908644)))) key!4653)))))

(assert (=> d!1516974 (= (containsKey!3509 (t!360431 (apply!12495 lm!2023 lt!1908644)) key!4653) e!2960767)))

(declare-fun b!4746650 () Bool)

(declare-fun e!2960768 () Bool)

(assert (=> b!4746650 (= e!2960767 e!2960768)))

(declare-fun res!2011891 () Bool)

(assert (=> b!4746650 (=> (not res!2011891) (not e!2960768))))

(assert (=> b!4746650 (= res!2011891 ((_ is Cons!52999) (t!360431 (apply!12495 lm!2023 lt!1908644))))))

(declare-fun b!4746651 () Bool)

(assert (=> b!4746651 (= e!2960768 (containsKey!3509 (t!360431 (t!360431 (apply!12495 lm!2023 lt!1908644))) key!4653))))

(assert (= (and d!1516974 (not res!2011890)) b!4746650))

(assert (= (and b!4746650 res!2011891) b!4746651))

(declare-fun m!5703945 () Bool)

(assert (=> b!4746651 m!5703945))

(assert (=> b!4746247 d!1516974))

(declare-fun d!1516976 () Bool)

(declare-fun lt!1909090 () Bool)

(assert (=> d!1516976 (= lt!1909090 (select (content!9493 (keys!19083 lt!1908645)) key!4653))))

(declare-fun e!2960769 () Bool)

(assert (=> d!1516976 (= lt!1909090 e!2960769)))

(declare-fun res!2011893 () Bool)

(assert (=> d!1516976 (=> (not res!2011893) (not e!2960769))))

(assert (=> d!1516976 (= res!2011893 ((_ is Cons!53002) (keys!19083 lt!1908645)))))

(assert (=> d!1516976 (= (contains!16428 (keys!19083 lt!1908645) key!4653) lt!1909090)))

(declare-fun b!4746652 () Bool)

(declare-fun e!2960770 () Bool)

(assert (=> b!4746652 (= e!2960769 e!2960770)))

(declare-fun res!2011892 () Bool)

(assert (=> b!4746652 (=> res!2011892 e!2960770)))

(assert (=> b!4746652 (= res!2011892 (= (h!59397 (keys!19083 lt!1908645)) key!4653))))

(declare-fun b!4746653 () Bool)

(assert (=> b!4746653 (= e!2960770 (contains!16428 (t!360434 (keys!19083 lt!1908645)) key!4653))))

(assert (= (and d!1516976 res!2011893) b!4746652))

(assert (= (and b!4746652 (not res!2011892)) b!4746653))

(assert (=> d!1516976 m!5703337))

(declare-fun m!5703949 () Bool)

(assert (=> d!1516976 m!5703949))

(declare-fun m!5703951 () Bool)

(assert (=> d!1516976 m!5703951))

(declare-fun m!5703953 () Bool)

(assert (=> b!4746653 m!5703953))

(assert (=> b!4746292 d!1516976))

(declare-fun bs!1138372 () Bool)

(declare-fun b!4746661 () Bool)

(assert (= bs!1138372 (and b!4746661 b!4746605)))

(declare-fun lambda!220445 () Int)

(assert (=> bs!1138372 (= (= (toList!6042 lt!1908645) (t!360431 (toList!6042 lt!1908645))) (= lambda!220445 lambda!220422))))

(declare-fun bs!1138373 () Bool)

(assert (= bs!1138373 (and b!4746661 b!4746609)))

(assert (=> bs!1138373 (= (= (toList!6042 lt!1908645) (Cons!52999 (h!59392 (toList!6042 lt!1908645)) (t!360431 (toList!6042 lt!1908645)))) (= lambda!220445 lambda!220425))))

(declare-fun bs!1138374 () Bool)

(assert (= bs!1138374 (and b!4746661 b!4746606)))

(assert (=> bs!1138374 (= lambda!220445 lambda!220426)))

(assert (=> b!4746661 true))

(declare-fun bs!1138375 () Bool)

(declare-fun b!4746662 () Bool)

(assert (= bs!1138375 (and b!4746662 b!4746607)))

(declare-fun lambda!220446 () Int)

(assert (=> bs!1138375 (= lambda!220446 lambda!220427)))

(declare-fun d!1516982 () Bool)

(declare-fun e!2960773 () Bool)

(assert (=> d!1516982 e!2960773))

(declare-fun res!2011901 () Bool)

(assert (=> d!1516982 (=> (not res!2011901) (not e!2960773))))

(declare-fun lt!1909093 () List!53126)

(assert (=> d!1516982 (= res!2011901 (noDuplicate!881 lt!1909093))))

(assert (=> d!1516982 (= lt!1909093 (getKeysList!996 (toList!6042 lt!1908645)))))

(assert (=> d!1516982 (= (keys!19083 lt!1908645) lt!1909093)))

(declare-fun b!4746660 () Bool)

(declare-fun res!2011902 () Bool)

(assert (=> b!4746660 (=> (not res!2011902) (not e!2960773))))

(assert (=> b!4746660 (= res!2011902 (= (length!618 lt!1909093) (length!619 (toList!6042 lt!1908645))))))

(declare-fun res!2011900 () Bool)

(assert (=> b!4746661 (=> (not res!2011900) (not e!2960773))))

(assert (=> b!4746661 (= res!2011900 (forall!11719 lt!1909093 lambda!220445))))

(assert (=> b!4746662 (= e!2960773 (= (content!9493 lt!1909093) (content!9493 (map!11732 (toList!6042 lt!1908645) lambda!220446))))))

(assert (= (and d!1516982 res!2011901) b!4746660))

(assert (= (and b!4746660 res!2011902) b!4746661))

(assert (= (and b!4746661 res!2011900) b!4746662))

(declare-fun m!5703971 () Bool)

(assert (=> d!1516982 m!5703971))

(assert (=> d!1516982 m!5703345))

(declare-fun m!5703973 () Bool)

(assert (=> b!4746660 m!5703973))

(assert (=> b!4746660 m!5703863))

(declare-fun m!5703975 () Bool)

(assert (=> b!4746661 m!5703975))

(declare-fun m!5703977 () Bool)

(assert (=> b!4746662 m!5703977))

(declare-fun m!5703979 () Bool)

(assert (=> b!4746662 m!5703979))

(assert (=> b!4746662 m!5703979))

(declare-fun m!5703981 () Bool)

(assert (=> b!4746662 m!5703981))

(assert (=> b!4746292 d!1516982))

(declare-fun d!1517006 () Bool)

(declare-fun res!2011903 () Bool)

(declare-fun e!2960774 () Bool)

(assert (=> d!1517006 (=> res!2011903 e!2960774)))

(assert (=> d!1517006 (= res!2011903 ((_ is Nil!52999) (toList!6042 (extractMap!2102 (t!360432 (toList!6041 lm!2023))))))))

(assert (=> d!1517006 (= (forall!11717 (toList!6042 (extractMap!2102 (t!360432 (toList!6041 lm!2023)))) (ite c!810662 lambda!220362 lambda!220363)) e!2960774)))

(declare-fun b!4746665 () Bool)

(declare-fun e!2960775 () Bool)

(assert (=> b!4746665 (= e!2960774 e!2960775)))

(declare-fun res!2011904 () Bool)

(assert (=> b!4746665 (=> (not res!2011904) (not e!2960775))))

(assert (=> b!4746665 (= res!2011904 (dynLambda!21890 (ite c!810662 lambda!220362 lambda!220363) (h!59392 (toList!6042 (extractMap!2102 (t!360432 (toList!6041 lm!2023)))))))))

(declare-fun b!4746666 () Bool)

(assert (=> b!4746666 (= e!2960775 (forall!11717 (t!360431 (toList!6042 (extractMap!2102 (t!360432 (toList!6041 lm!2023))))) (ite c!810662 lambda!220362 lambda!220363)))))

(assert (= (and d!1517006 (not res!2011903)) b!4746665))

(assert (= (and b!4746665 res!2011904) b!4746666))

(declare-fun b_lambda!182905 () Bool)

(assert (=> (not b_lambda!182905) (not b!4746665)))

(declare-fun m!5703983 () Bool)

(assert (=> b!4746665 m!5703983))

(declare-fun m!5703985 () Bool)

(assert (=> b!4746666 m!5703985))

(assert (=> bm!332155 d!1517006))

(declare-fun d!1517008 () Bool)

(assert (=> d!1517008 (= (tail!9157 (toList!6041 lm!2023)) (t!360432 (toList!6041 lm!2023)))))

(assert (=> d!1516754 d!1517008))

(declare-fun d!1517010 () Bool)

(assert (=> d!1517010 (isDefined!9748 (getValueByKey!2044 (toList!6041 lm!2023) lt!1908644))))

(declare-fun lt!1909096 () Unit!134331)

(declare-fun choose!33766 (List!53124 (_ BitVec 64)) Unit!134331)

(assert (=> d!1517010 (= lt!1909096 (choose!33766 (toList!6041 lm!2023) lt!1908644))))

(declare-fun e!2960778 () Bool)

(assert (=> d!1517010 e!2960778))

(declare-fun res!2011907 () Bool)

(assert (=> d!1517010 (=> (not res!2011907) (not e!2960778))))

(assert (=> d!1517010 (= res!2011907 (isStrictlySorted!794 (toList!6041 lm!2023)))))

(assert (=> d!1517010 (= (lemmaContainsKeyImpliesGetValueByKeyDefined!1935 (toList!6041 lm!2023) lt!1908644) lt!1909096)))

(declare-fun b!4746669 () Bool)

(assert (=> b!4746669 (= e!2960778 (containsKey!3512 (toList!6041 lm!2023) lt!1908644))))

(assert (= (and d!1517010 res!2011907) b!4746669))

(assert (=> d!1517010 m!5703159))

(assert (=> d!1517010 m!5703159))

(assert (=> d!1517010 m!5703161))

(declare-fun m!5703987 () Bool)

(assert (=> d!1517010 m!5703987))

(assert (=> d!1517010 m!5703329))

(assert (=> b!4746669 m!5703155))

(assert (=> b!4746108 d!1517010))

(assert (=> b!4746108 d!1516806))

(assert (=> b!4746108 d!1516808))

(declare-fun d!1517012 () Bool)

(declare-fun res!2011912 () Bool)

(declare-fun e!2960783 () Bool)

(assert (=> d!1517012 (=> res!2011912 e!2960783)))

(assert (=> d!1517012 (= res!2011912 (and ((_ is Cons!52999) (toList!6042 lt!1908645)) (= (_1!30643 (h!59392 (toList!6042 lt!1908645))) key!4653)))))

(assert (=> d!1517012 (= (containsKey!3513 (toList!6042 lt!1908645) key!4653) e!2960783)))

(declare-fun b!4746674 () Bool)

(declare-fun e!2960784 () Bool)

(assert (=> b!4746674 (= e!2960783 e!2960784)))

(declare-fun res!2011913 () Bool)

(assert (=> b!4746674 (=> (not res!2011913) (not e!2960784))))

(assert (=> b!4746674 (= res!2011913 ((_ is Cons!52999) (toList!6042 lt!1908645)))))

(declare-fun b!4746675 () Bool)

(assert (=> b!4746675 (= e!2960784 (containsKey!3513 (t!360431 (toList!6042 lt!1908645)) key!4653))))

(assert (= (and d!1517012 (not res!2011912)) b!4746674))

(assert (= (and b!4746674 res!2011913) b!4746675))

(declare-fun m!5703989 () Bool)

(assert (=> b!4746675 m!5703989))

(assert (=> b!4746294 d!1517012))

(declare-fun d!1517014 () Bool)

(assert (=> d!1517014 (containsKey!3513 (toList!6042 lt!1908645) key!4653)))

(declare-fun lt!1909099 () Unit!134331)

(declare-fun choose!33767 (List!53123 K!14340) Unit!134331)

(assert (=> d!1517014 (= lt!1909099 (choose!33767 (toList!6042 lt!1908645) key!4653))))

(assert (=> d!1517014 (invariantList!1557 (toList!6042 lt!1908645))))

(assert (=> d!1517014 (= (lemmaInGetKeysListThenContainsKey!995 (toList!6042 lt!1908645) key!4653) lt!1909099)))

(declare-fun bs!1138376 () Bool)

(assert (= bs!1138376 d!1517014))

(assert (=> bs!1138376 m!5703341))

(declare-fun m!5703991 () Bool)

(assert (=> bs!1138376 m!5703991))

(assert (=> bs!1138376 m!5703823))

(assert (=> b!4746294 d!1517014))

(assert (=> b!4746295 d!1516982))

(assert (=> d!1516774 d!1517012))

(declare-fun d!1517016 () Bool)

(assert (=> d!1517016 (= (get!17829 (getValueByKey!2044 (toList!6041 lm!2023) lt!1908644)) (v!47184 (getValueByKey!2044 (toList!6041 lm!2023) lt!1908644)))))

(assert (=> d!1516760 d!1517016))

(assert (=> d!1516760 d!1516808))

(declare-fun d!1517018 () Bool)

(declare-fun res!2011918 () Bool)

(declare-fun e!2960789 () Bool)

(assert (=> d!1517018 (=> res!2011918 e!2960789)))

(assert (=> d!1517018 (= res!2011918 (or ((_ is Nil!53000) (toList!6041 lm!2023)) ((_ is Nil!53000) (t!360432 (toList!6041 lm!2023)))))))

(assert (=> d!1517018 (= (isStrictlySorted!794 (toList!6041 lm!2023)) e!2960789)))

(declare-fun b!4746680 () Bool)

(declare-fun e!2960790 () Bool)

(assert (=> b!4746680 (= e!2960789 e!2960790)))

(declare-fun res!2011919 () Bool)

(assert (=> b!4746680 (=> (not res!2011919) (not e!2960790))))

(assert (=> b!4746680 (= res!2011919 (bvslt (_1!30644 (h!59393 (toList!6041 lm!2023))) (_1!30644 (h!59393 (t!360432 (toList!6041 lm!2023))))))))

(declare-fun b!4746681 () Bool)

(assert (=> b!4746681 (= e!2960790 (isStrictlySorted!794 (t!360432 (toList!6041 lm!2023))))))

(assert (= (and d!1517018 (not res!2011918)) b!4746680))

(assert (= (and b!4746680 res!2011919) b!4746681))

(declare-fun m!5703993 () Bool)

(assert (=> b!4746681 m!5703993))

(assert (=> d!1516770 d!1517018))

(assert (=> b!4746296 d!1516976))

(assert (=> b!4746296 d!1516982))

(declare-fun b!4746682 () Bool)

(declare-fun e!2960791 () Bool)

(declare-fun tp!1349563 () Bool)

(assert (=> b!4746682 (= e!2960791 (and tp_is_empty!31597 tp_is_empty!31599 tp!1349563))))

(assert (=> b!4746309 (= tp!1349556 e!2960791)))

(assert (= (and b!4746309 ((_ is Cons!52999) (_2!30644 (h!59393 (toList!6041 lm!2023))))) b!4746682))

(declare-fun b!4746683 () Bool)

(declare-fun e!2960792 () Bool)

(declare-fun tp!1349564 () Bool)

(declare-fun tp!1349565 () Bool)

(assert (=> b!4746683 (= e!2960792 (and tp!1349564 tp!1349565))))

(assert (=> b!4746309 (= tp!1349557 e!2960792)))

(assert (= (and b!4746309 ((_ is Cons!53000) (t!360432 (toList!6041 lm!2023)))) b!4746683))

(declare-fun e!2960793 () Bool)

(declare-fun tp!1349566 () Bool)

(declare-fun b!4746684 () Bool)

(assert (=> b!4746684 (= e!2960793 (and tp_is_empty!31597 tp_is_empty!31599 tp!1349566))))

(assert (=> b!4746303 (= tp!1349550 e!2960793)))

(assert (= (and b!4746303 ((_ is Cons!52999) (t!360431 (t!360431 newBucket!218)))) b!4746684))

(declare-fun b!4746685 () Bool)

(declare-fun tp!1349567 () Bool)

(declare-fun e!2960794 () Bool)

(assert (=> b!4746685 (= e!2960794 (and tp_is_empty!31597 tp_is_empty!31599 tp!1349567))))

(assert (=> b!4746304 (= tp!1349551 e!2960794)))

(assert (= (and b!4746304 ((_ is Cons!52999) (t!360431 (t!360431 oldBucket!34)))) b!4746685))

(declare-fun b_lambda!182907 () Bool)

(assert (= b_lambda!182823 (or start!484620 b_lambda!182907)))

(declare-fun bs!1138377 () Bool)

(declare-fun d!1517020 () Bool)

(assert (= bs!1138377 (and d!1517020 start!484620)))

(assert (=> bs!1138377 (= (dynLambda!21889 lambda!220290 (h!59393 (t!360432 (toList!6041 lm!2023)))) (noDuplicateKeys!2076 (_2!30644 (h!59393 (t!360432 (toList!6041 lm!2023))))))))

(assert (=> bs!1138377 m!5703465))

(assert (=> b!4746368 d!1517020))

(declare-fun b_lambda!182909 () Bool)

(assert (= b_lambda!182853 (or b!4746225 b_lambda!182909)))

(declare-fun bs!1138378 () Bool)

(declare-fun d!1517022 () Bool)

(assert (= bs!1138378 (and d!1517022 b!4746225)))

(assert (=> bs!1138378 (= (dynLambda!21890 lambda!220364 (h!59392 (toList!6042 (extractMap!2102 (t!360432 (toList!6041 lm!2023)))))) (contains!16426 lt!1908807 (_1!30643 (h!59392 (toList!6042 (extractMap!2102 (t!360432 (toList!6041 lm!2023))))))))))

(declare-fun m!5703995 () Bool)

(assert (=> bs!1138378 m!5703995))

(assert (=> b!4746502 d!1517022))

(declare-fun b_lambda!182911 () Bool)

(assert (= b_lambda!182833 (or d!1516776 b_lambda!182911)))

(declare-fun bs!1138379 () Bool)

(declare-fun d!1517024 () Bool)

(assert (= bs!1138379 (and d!1517024 d!1516776)))

(assert (=> bs!1138379 (= (dynLambda!21889 lambda!220375 (h!59393 (toList!6041 lm!2023))) (noDuplicateKeys!2076 (_2!30644 (h!59393 (toList!6041 lm!2023)))))))

(assert (=> bs!1138379 m!5703271))

(assert (=> b!4746393 d!1517024))

(declare-fun b_lambda!182913 () Bool)

(assert (= b_lambda!182841 (or d!1516718 b_lambda!182913)))

(declare-fun bs!1138380 () Bool)

(declare-fun d!1517026 () Bool)

(assert (= bs!1138380 (and d!1517026 d!1516718)))

(assert (=> bs!1138380 (= (dynLambda!21890 lambda!220365 (h!59392 (_2!30644 (h!59393 (toList!6041 lm!2023))))) (contains!16426 lt!1908814 (_1!30643 (h!59392 (_2!30644 (h!59393 (toList!6041 lm!2023)))))))))

(declare-fun m!5703997 () Bool)

(assert (=> bs!1138380 m!5703997))

(assert (=> b!4746411 d!1517026))

(declare-fun b_lambda!182915 () Bool)

(assert (= b_lambda!182843 (or b!4746225 b_lambda!182915)))

(declare-fun bs!1138381 () Bool)

(declare-fun d!1517028 () Bool)

(assert (= bs!1138381 (and d!1517028 b!4746225)))

(assert (=> bs!1138381 (= (dynLambda!21890 lambda!220364 (h!59392 (_2!30644 (h!59393 (toList!6041 lm!2023))))) (contains!16426 lt!1908807 (_1!30643 (h!59392 (_2!30644 (h!59393 (toList!6041 lm!2023)))))))))

(assert (=> bs!1138381 m!5703293))

(assert (=> b!4746453 d!1517028))

(declare-fun b_lambda!182917 () Bool)

(assert (= b_lambda!182871 (or d!1516752 b_lambda!182917)))

(declare-fun bs!1138382 () Bool)

(declare-fun d!1517030 () Bool)

(assert (= bs!1138382 (and d!1517030 d!1516752)))

(assert (=> bs!1138382 (= (dynLambda!21889 lambda!220368 (h!59393 (t!360432 (toList!6041 lm!2023)))) (noDuplicateKeys!2076 (_2!30644 (h!59393 (t!360432 (toList!6041 lm!2023))))))))

(assert (=> bs!1138382 m!5703465))

(assert (=> b!4746625 d!1517030))

(declare-fun b_lambda!182919 () Bool)

(assert (= b_lambda!182849 (or b!4746225 b_lambda!182919)))

(assert (=> d!1516876 d!1517028))

(declare-fun b_lambda!182921 () Bool)

(assert (= b_lambda!182825 (or d!1516756 b_lambda!182921)))

(declare-fun bs!1138383 () Bool)

(declare-fun d!1517032 () Bool)

(assert (= bs!1138383 (and d!1517032 d!1516756)))

(assert (=> bs!1138383 (= (dynLambda!21890 lambda!220371 (h!59392 oldBucket!34)) (= (hash!4494 hashF!1323 (_1!30643 (h!59392 oldBucket!34))) hash!405))))

(declare-fun m!5703999 () Bool)

(assert (=> bs!1138383 m!5703999))

(assert (=> b!4746374 d!1517032))

(declare-fun b_lambda!182923 () Bool)

(assert (= b_lambda!182839 (or d!1516762 b_lambda!182923)))

(declare-fun bs!1138384 () Bool)

(declare-fun d!1517034 () Bool)

(assert (= bs!1138384 (and d!1517034 d!1516762)))

(assert (=> bs!1138384 (= (dynLambda!21889 lambda!220374 (h!59393 (toList!6041 lm!2023))) (allKeysSameHash!1902 (_2!30644 (h!59393 (toList!6041 lm!2023))) (_1!30644 (h!59393 (toList!6041 lm!2023))) hashF!1323))))

(declare-fun m!5704001 () Bool)

(assert (=> bs!1138384 m!5704001))

(assert (=> b!4746403 d!1517034))

(declare-fun b_lambda!182925 () Bool)

(assert (= b_lambda!182859 (or b!4746225 b_lambda!182925)))

(declare-fun bs!1138385 () Bool)

(declare-fun d!1517036 () Bool)

(assert (= bs!1138385 (and d!1517036 b!4746225)))

(assert (=> bs!1138385 (= (dynLambda!21890 lambda!220364 (h!59392 (toList!6042 lt!1908821))) (contains!16426 lt!1908807 (_1!30643 (h!59392 (toList!6042 lt!1908821)))))))

(declare-fun m!5704003 () Bool)

(assert (=> bs!1138385 m!5704003))

(assert (=> b!4746525 d!1517036))

(declare-fun b_lambda!182927 () Bool)

(assert (= b_lambda!182863 (or d!1516718 b_lambda!182927)))

(declare-fun bs!1138386 () Bool)

(declare-fun d!1517038 () Bool)

(assert (= bs!1138386 (and d!1517038 d!1516718)))

(assert (=> bs!1138386 (= (dynLambda!21890 lambda!220365 (h!59392 (toList!6042 (extractMap!2102 (t!360432 (toList!6041 lm!2023)))))) (contains!16426 lt!1908814 (_1!30643 (h!59392 (toList!6042 (extractMap!2102 (t!360432 (toList!6041 lm!2023))))))))))

(declare-fun m!5704005 () Bool)

(assert (=> bs!1138386 m!5704005))

(assert (=> b!4746540 d!1517038))

(declare-fun b_lambda!182929 () Bool)

(assert (= b_lambda!182837 (or d!1516780 b_lambda!182929)))

(declare-fun bs!1138387 () Bool)

(declare-fun d!1517040 () Bool)

(assert (= bs!1138387 (and d!1517040 d!1516780)))

(assert (=> bs!1138387 (= (dynLambda!21890 lambda!220376 (h!59392 newBucket!218)) (= (hash!4494 hashF!1323 (_1!30643 (h!59392 newBucket!218))) hash!405))))

(declare-fun m!5704007 () Bool)

(assert (=> bs!1138387 m!5704007))

(assert (=> b!4746399 d!1517040))

(declare-fun b_lambda!182931 () Bool)

(assert (= b_lambda!182861 (or b!4746225 b_lambda!182931)))

(declare-fun bs!1138388 () Bool)

(declare-fun d!1517042 () Bool)

(assert (= bs!1138388 (and d!1517042 b!4746225)))

(assert (=> bs!1138388 (= (dynLambda!21890 lambda!220364 (h!59392 (t!360431 (_2!30644 (h!59393 (toList!6041 lm!2023)))))) (contains!16426 lt!1908807 (_1!30643 (h!59392 (t!360431 (_2!30644 (h!59393 (toList!6041 lm!2023))))))))))

(declare-fun m!5704009 () Bool)

(assert (=> bs!1138388 m!5704009))

(assert (=> b!4746536 d!1517042))

(check-sat (not b!4746660) (not d!1516876) (not bs!1138385) (not d!1516976) (not d!1517014) (not b!4746653) (not b!4746435) (not d!1516806) (not b!4746439) (not b!4746455) (not b!4746410) (not b!4746400) (not b!4746394) (not b_lambda!182865) (not b_lambda!182815) (not b!4746669) (not bs!1138386) (not b!4746553) (not b!4746527) (not d!1516866) (not b!4746543) (not b!4746382) (not b!4746651) (not b!4746626) (not b!4746662) (not b!4746552) (not d!1516938) (not b!4746534) (not b_lambda!182931) (not d!1516920) (not b!4746433) (not b_lambda!182927) (not b!4746413) (not b!4746624) (not b_lambda!182919) (not d!1516828) (not d!1516960) (not b!4746648) (not b!4746375) (not b!4746683) (not b!4746530) (not d!1517010) (not bm!332167) (not bs!1138387) (not b!4746412) tp_is_empty!31599 (not bm!332165) (not b!4746415) (not b!4746366) (not d!1516954) (not d!1516820) (not b!4746541) (not b!4746402) (not b!4746524) (not b_lambda!182905) (not bm!332163) (not b_lambda!182917) (not b!4746378) (not b!4746503) (not b_lambda!182909) (not b_lambda!182925) (not b!4746436) (not b!4746606) (not b!4746369) (not b_lambda!182915) (not b!4746526) (not bs!1138384) (not d!1516878) (not b!4746531) (not b!4746529) (not b!4746440) (not bs!1138379) (not bs!1138382) (not d!1516926) (not b!4746416) (not b!4746380) (not bs!1138388) (not bs!1138381) (not b!4746684) (not b!4746610) (not d!1516982) (not b!4746457) (not bm!332168) (not b!4746685) (not b!4746607) (not b_lambda!182907) (not b!4746609) (not b!4746675) (not b!4746388) (not b_lambda!182923) (not bm!332169) (not b!4746605) (not b!4746535) (not bs!1138380) (not d!1516826) (not bm!332174) (not d!1516892) (not b!4746456) (not b!4746523) (not bs!1138383) (not d!1516854) (not d!1516902) (not b!4746441) (not b_lambda!182929) (not d!1516860) (not b!4746437) (not b!4746414) (not b_lambda!182921) (not d!1516910) (not bs!1138377) (not bs!1138378) (not b!4746661) (not d!1516822) (not b_lambda!182913) (not b_lambda!182911) (not b!4746381) (not b!4746533) (not b!4746666) (not b!4746681) (not bm!332164) (not d!1516856) (not b!4746682) (not b!4746539) (not b!4746454) tp_is_empty!31597 (not b!4746431) (not b!4746480) (not bm!332162) (not b!4746404) (not d!1516956) (not b!4746537))
(check-sat)
