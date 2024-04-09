; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!87432 () Bool)

(assert start!87432)

(declare-fun b!1012575 () Bool)

(declare-fun e!569660 () Bool)

(declare-datatypes ((B!1354 0))(
  ( (B!1355 (val!11761 Int)) )
))
(declare-datatypes ((tuple2!15158 0))(
  ( (tuple2!15159 (_1!7589 (_ BitVec 64)) (_2!7589 B!1354)) )
))
(declare-datatypes ((List!21483 0))(
  ( (Nil!21480) (Cons!21479 (h!22677 tuple2!15158) (t!30492 List!21483)) )
))
(declare-fun l!412 () List!21483)

(declare-fun isStrictlySorted!537 (List!21483) Bool)

(assert (=> b!1012575 (= e!569660 (not (isStrictlySorted!537 (t!30492 l!412))))))

(declare-fun res!680152 () Bool)

(assert (=> start!87432 (=> (not res!680152) (not e!569660))))

(assert (=> start!87432 (= res!680152 (isStrictlySorted!537 l!412))))

(assert (=> start!87432 e!569660))

(declare-fun e!569659 () Bool)

(assert (=> start!87432 e!569659))

(declare-fun tp_is_empty!23421 () Bool)

(assert (=> start!87432 tp_is_empty!23421))

(declare-fun b!1012576 () Bool)

(declare-fun tp!70323 () Bool)

(assert (=> b!1012576 (= e!569659 (and tp_is_empty!23421 tp!70323))))

(declare-fun b!1012573 () Bool)

(declare-fun res!680151 () Bool)

(assert (=> b!1012573 (=> (not res!680151) (not e!569660))))

(declare-fun value!115 () B!1354)

(get-info :version)

(assert (=> b!1012573 (= res!680151 (and (not (= (_2!7589 (h!22677 l!412)) value!115)) ((_ is Cons!21479) l!412)))))

(declare-fun b!1012574 () Bool)

(declare-fun res!680150 () Bool)

(assert (=> b!1012574 (=> (not res!680150) (not e!569660))))

(declare-datatypes ((List!21484 0))(
  ( (Nil!21481) (Cons!21480 (h!22678 (_ BitVec 64)) (t!30493 List!21484)) )
))
(declare-fun isEmpty!800 (List!21484) Bool)

(declare-fun getKeysOf!23 (List!21483 B!1354) List!21484)

(assert (=> b!1012574 (= res!680150 (not (isEmpty!800 (getKeysOf!23 (t!30492 l!412) value!115))))))

(assert (= (and start!87432 res!680152) b!1012573))

(assert (= (and b!1012573 res!680151) b!1012574))

(assert (= (and b!1012574 res!680150) b!1012575))

(assert (= (and start!87432 ((_ is Cons!21479) l!412)) b!1012576))

(declare-fun m!936173 () Bool)

(assert (=> b!1012575 m!936173))

(declare-fun m!936175 () Bool)

(assert (=> start!87432 m!936175))

(declare-fun m!936177 () Bool)

(assert (=> b!1012574 m!936177))

(assert (=> b!1012574 m!936177))

(declare-fun m!936179 () Bool)

(assert (=> b!1012574 m!936179))

(check-sat (not b!1012574) tp_is_empty!23421 (not b!1012576) (not b!1012575) (not start!87432))
(check-sat)
(get-model)

(declare-fun d!120291 () Bool)

(declare-fun res!680166 () Bool)

(declare-fun e!569671 () Bool)

(assert (=> d!120291 (=> res!680166 e!569671)))

(assert (=> d!120291 (= res!680166 (or ((_ is Nil!21480) (t!30492 l!412)) ((_ is Nil!21480) (t!30492 (t!30492 l!412)))))))

(assert (=> d!120291 (= (isStrictlySorted!537 (t!30492 l!412)) e!569671)))

(declare-fun b!1012593 () Bool)

(declare-fun e!569672 () Bool)

(assert (=> b!1012593 (= e!569671 e!569672)))

(declare-fun res!680167 () Bool)

(assert (=> b!1012593 (=> (not res!680167) (not e!569672))))

(assert (=> b!1012593 (= res!680167 (bvslt (_1!7589 (h!22677 (t!30492 l!412))) (_1!7589 (h!22677 (t!30492 (t!30492 l!412))))))))

(declare-fun b!1012594 () Bool)

(assert (=> b!1012594 (= e!569672 (isStrictlySorted!537 (t!30492 (t!30492 l!412))))))

(assert (= (and d!120291 (not res!680166)) b!1012593))

(assert (= (and b!1012593 res!680167) b!1012594))

(declare-fun m!936189 () Bool)

(assert (=> b!1012594 m!936189))

(assert (=> b!1012575 d!120291))

(declare-fun d!120301 () Bool)

(declare-fun res!680168 () Bool)

(declare-fun e!569673 () Bool)

(assert (=> d!120301 (=> res!680168 e!569673)))

(assert (=> d!120301 (= res!680168 (or ((_ is Nil!21480) l!412) ((_ is Nil!21480) (t!30492 l!412))))))

(assert (=> d!120301 (= (isStrictlySorted!537 l!412) e!569673)))

(declare-fun b!1012595 () Bool)

(declare-fun e!569674 () Bool)

(assert (=> b!1012595 (= e!569673 e!569674)))

(declare-fun res!680169 () Bool)

(assert (=> b!1012595 (=> (not res!680169) (not e!569674))))

(assert (=> b!1012595 (= res!680169 (bvslt (_1!7589 (h!22677 l!412)) (_1!7589 (h!22677 (t!30492 l!412)))))))

(declare-fun b!1012596 () Bool)

(assert (=> b!1012596 (= e!569674 (isStrictlySorted!537 (t!30492 l!412)))))

(assert (= (and d!120301 (not res!680168)) b!1012595))

(assert (= (and b!1012595 res!680169) b!1012596))

(assert (=> b!1012596 m!936173))

(assert (=> start!87432 d!120301))

(declare-fun d!120303 () Bool)

(assert (=> d!120303 (= (isEmpty!800 (getKeysOf!23 (t!30492 l!412) value!115)) ((_ is Nil!21481) (getKeysOf!23 (t!30492 l!412) value!115)))))

(assert (=> b!1012574 d!120303))

(declare-fun b!1012663 () Bool)

(assert (=> b!1012663 true))

(assert (=> b!1012663 true))

(assert (=> b!1012663 true))

(declare-fun bs!28831 () Bool)

(declare-fun b!1012664 () Bool)

(assert (= bs!28831 (and b!1012664 b!1012663)))

(declare-fun lt!447669 () List!21483)

(declare-fun lt!447671 () tuple2!15158)

(declare-fun lt!447664 () List!21483)

(declare-fun lambda!395 () Int)

(declare-fun lt!447673 () tuple2!15158)

(declare-fun lambda!398 () Int)

(assert (=> bs!28831 (= (= (Cons!21479 lt!447673 lt!447669) (Cons!21479 lt!447671 lt!447664)) (= lambda!398 lambda!395))))

(assert (=> b!1012664 true))

(assert (=> b!1012664 true))

(assert (=> b!1012664 true))

(declare-fun bs!28836 () Bool)

(declare-fun d!120305 () Bool)

(assert (= bs!28836 (and d!120305 b!1012663)))

(declare-fun lambda!401 () Int)

(assert (=> bs!28836 (= (= (t!30492 l!412) (Cons!21479 lt!447671 lt!447664)) (= lambda!401 lambda!395))))

(declare-fun bs!28837 () Bool)

(assert (= bs!28837 (and d!120305 b!1012664)))

(assert (=> bs!28837 (= (= (t!30492 l!412) (Cons!21479 lt!447673 lt!447669)) (= lambda!401 lambda!398))))

(assert (=> d!120305 true))

(assert (=> d!120305 true))

(declare-fun b!1012661 () Bool)

(declare-datatypes ((Unit!33040 0))(
  ( (Unit!33041) )
))
(declare-fun e!569710 () Unit!33040)

(declare-fun Unit!33042 () Unit!33040)

(assert (=> b!1012661 (= e!569710 Unit!33042)))

(declare-fun call!42587 () Bool)

(declare-fun lt!447667 () List!21484)

(declare-fun lt!447665 () List!21484)

(declare-fun bm!42583 () Bool)

(declare-fun c!102300 () Bool)

(declare-fun forall!218 (List!21484 Int) Bool)

(assert (=> bm!42583 (= call!42587 (forall!218 (ite c!102300 lt!447665 lt!447667) (ite c!102300 lambda!395 lambda!398)))))

(declare-fun b!1012662 () Bool)

(declare-fun e!569709 () List!21484)

(declare-fun e!569708 () List!21484)

(assert (=> b!1012662 (= e!569709 e!569708)))

(declare-fun c!102298 () Bool)

(assert (=> b!1012662 (= c!102298 (and ((_ is Cons!21479) (t!30492 l!412)) (not (= (_2!7589 (h!22677 (t!30492 l!412))) value!115))))))

(declare-fun bm!42584 () Bool)

(declare-fun call!42588 () Bool)

(declare-fun call!42589 () List!21484)

(assert (=> bm!42584 (= call!42588 (isEmpty!800 call!42589))))

(assert (=> b!1012663 call!42587))

(declare-fun lt!447666 () Unit!33040)

(declare-fun call!42586 () Unit!33040)

(assert (=> b!1012663 (= lt!447666 call!42586)))

(assert (=> b!1012663 (= lt!447671 (h!22677 (t!30492 l!412)))))

(assert (=> b!1012663 (= lt!447665 call!42589)))

(assert (=> b!1012663 (= lt!447664 (t!30492 (t!30492 l!412)))))

(declare-fun e!569707 () Unit!33040)

(assert (=> b!1012663 (= e!569707 lt!447666)))

(declare-fun bm!42585 () Bool)

(assert (=> bm!42585 (= call!42589 (getKeysOf!23 (t!30492 (t!30492 l!412)) value!115))))

(declare-fun lt!447668 () Unit!33040)

(assert (=> b!1012664 (= e!569710 lt!447668)))

(assert (=> b!1012664 (= lt!447669 (t!30492 (t!30492 l!412)))))

(assert (=> b!1012664 (= lt!447667 call!42589)))

(assert (=> b!1012664 (= lt!447673 (h!22677 (t!30492 l!412)))))

(assert (=> b!1012664 (= lt!447668 call!42586)))

(assert (=> b!1012664 call!42587))

(declare-fun bm!42586 () Bool)

(declare-fun lemmaForallGetValueByKeySameWithASmallerHead!17 (List!21483 List!21484 B!1354 tuple2!15158) Unit!33040)

(assert (=> bm!42586 (= call!42586 (lemmaForallGetValueByKeySameWithASmallerHead!17 (ite c!102300 lt!447664 lt!447669) (ite c!102300 lt!447665 lt!447667) value!115 (ite c!102300 lt!447671 lt!447673)))))

(declare-fun lt!447672 () List!21484)

(assert (=> d!120305 (forall!218 lt!447672 lambda!401)))

(assert (=> d!120305 (= lt!447672 e!569709)))

(assert (=> d!120305 (= c!102300 (and ((_ is Cons!21479) (t!30492 l!412)) (= (_2!7589 (h!22677 (t!30492 l!412))) value!115)))))

(assert (=> d!120305 (isStrictlySorted!537 (t!30492 l!412))))

(assert (=> d!120305 (= (getKeysOf!23 (t!30492 l!412) value!115) lt!447672)))

(declare-fun b!1012665 () Bool)

(assert (=> b!1012665 (= e!569708 Nil!21481)))

(declare-fun b!1012666 () Bool)

(assert (=> b!1012666 (= e!569709 (Cons!21480 (_1!7589 (h!22677 (t!30492 l!412))) call!42589))))

(declare-fun c!102299 () Bool)

(assert (=> b!1012666 (= c!102299 (not call!42588))))

(declare-fun lt!447670 () Unit!33040)

(assert (=> b!1012666 (= lt!447670 e!569707)))

(declare-fun b!1012667 () Bool)

(declare-fun lt!447674 () Unit!33040)

(assert (=> b!1012667 (= lt!447674 e!569710)))

(declare-fun c!102297 () Bool)

(assert (=> b!1012667 (= c!102297 (not call!42588))))

(declare-fun lt!447675 () List!21484)

(assert (=> b!1012667 (= lt!447675 call!42589)))

(assert (=> b!1012667 (= e!569708 call!42589)))

(declare-fun b!1012668 () Bool)

(declare-fun Unit!33046 () Unit!33040)

(assert (=> b!1012668 (= e!569707 Unit!33046)))

(assert (= (and d!120305 c!102300) b!1012666))

(assert (= (and d!120305 (not c!102300)) b!1012662))

(assert (= (and b!1012666 c!102299) b!1012663))

(assert (= (and b!1012666 (not c!102299)) b!1012668))

(assert (= (and b!1012662 c!102298) b!1012667))

(assert (= (and b!1012662 (not c!102298)) b!1012665))

(assert (= (and b!1012667 c!102297) b!1012664))

(assert (= (and b!1012667 (not c!102297)) b!1012661))

(assert (= (or b!1012663 b!1012664) bm!42586))

(assert (= (or b!1012663 b!1012664) bm!42583))

(assert (= (or b!1012666 b!1012663 b!1012667 b!1012664) bm!42585))

(assert (= (or b!1012666 b!1012667) bm!42584))

(declare-fun m!936211 () Bool)

(assert (=> bm!42585 m!936211))

(declare-fun m!936213 () Bool)

(assert (=> bm!42586 m!936213))

(declare-fun m!936215 () Bool)

(assert (=> bm!42584 m!936215))

(declare-fun m!936217 () Bool)

(assert (=> bm!42583 m!936217))

(declare-fun m!936219 () Bool)

(assert (=> d!120305 m!936219))

(assert (=> d!120305 m!936173))

(assert (=> b!1012574 d!120305))

(declare-fun b!1012691 () Bool)

(declare-fun e!569713 () Bool)

(declare-fun tp!70329 () Bool)

(assert (=> b!1012691 (= e!569713 (and tp_is_empty!23421 tp!70329))))

(assert (=> b!1012576 (= tp!70323 e!569713)))

(assert (= (and b!1012576 ((_ is Cons!21479) (t!30492 l!412))) b!1012691))

(check-sat (not bm!42584) (not bm!42583) (not bm!42585) tp_is_empty!23421 (not bm!42586) (not b!1012596) (not b!1012594) (not d!120305) (not b!1012691))
(check-sat)
