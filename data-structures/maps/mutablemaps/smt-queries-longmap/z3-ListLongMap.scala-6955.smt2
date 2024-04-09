; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!87768 () Bool)

(assert start!87768)

(declare-fun b!1014505 () Bool)

(declare-fun e!570754 () Bool)

(declare-fun tp_is_empty!23505 () Bool)

(declare-fun tp!70542 () Bool)

(assert (=> b!1014505 (= e!570754 (and tp_is_empty!23505 tp!70542))))

(declare-fun b!1014502 () Bool)

(declare-fun res!680864 () Bool)

(declare-fun e!570755 () Bool)

(assert (=> b!1014502 (=> (not res!680864) (not e!570755))))

(declare-datatypes ((B!1438 0))(
  ( (B!1439 (val!11803 Int)) )
))
(declare-datatypes ((tuple2!15242 0))(
  ( (tuple2!15243 (_1!7631 (_ BitVec 64)) (_2!7631 B!1438)) )
))
(declare-datatypes ((List!21552 0))(
  ( (Nil!21549) (Cons!21548 (h!22746 tuple2!15242) (t!30561 List!21552)) )
))
(declare-fun l!412 () List!21552)

(declare-fun value!115 () B!1438)

(get-info :version)

(assert (=> b!1014502 (= res!680864 (and (not (= (_2!7631 (h!22746 l!412)) value!115)) ((_ is Cons!21548) l!412)))))

(declare-fun b!1014503 () Bool)

(declare-fun res!680865 () Bool)

(assert (=> b!1014503 (=> (not res!680865) (not e!570755))))

(declare-datatypes ((List!21553 0))(
  ( (Nil!21550) (Cons!21549 (h!22747 (_ BitVec 64)) (t!30562 List!21553)) )
))
(declare-fun isEmpty!841 (List!21553) Bool)

(declare-fun getKeysOf!50 (List!21552 B!1438) List!21553)

(assert (=> b!1014503 (= res!680865 (not (isEmpty!841 (getKeysOf!50 (t!30561 l!412) value!115))))))

(declare-fun res!680866 () Bool)

(assert (=> start!87768 (=> (not res!680866) (not e!570755))))

(declare-fun isStrictlySorted!573 (List!21552) Bool)

(assert (=> start!87768 (= res!680866 (isStrictlySorted!573 l!412))))

(assert (=> start!87768 e!570755))

(assert (=> start!87768 e!570754))

(assert (=> start!87768 tp_is_empty!23505))

(declare-fun b!1014504 () Bool)

(declare-fun ListPrimitiveSize!116 (List!21552) Int)

(assert (=> b!1014504 (= e!570755 (>= (ListPrimitiveSize!116 (t!30561 l!412)) (ListPrimitiveSize!116 l!412)))))

(assert (= (and start!87768 res!680866) b!1014502))

(assert (= (and b!1014502 res!680864) b!1014503))

(assert (= (and b!1014503 res!680865) b!1014504))

(assert (= (and start!87768 ((_ is Cons!21548) l!412)) b!1014505))

(declare-fun m!937201 () Bool)

(assert (=> b!1014503 m!937201))

(assert (=> b!1014503 m!937201))

(declare-fun m!937203 () Bool)

(assert (=> b!1014503 m!937203))

(declare-fun m!937205 () Bool)

(assert (=> start!87768 m!937205))

(declare-fun m!937207 () Bool)

(assert (=> b!1014504 m!937207))

(declare-fun m!937209 () Bool)

(assert (=> b!1014504 m!937209))

(check-sat (not b!1014505) tp_is_empty!23505 (not b!1014503) (not start!87768) (not b!1014504))
(check-sat)
(get-model)

(declare-fun d!120751 () Bool)

(declare-fun res!680884 () Bool)

(declare-fun e!570770 () Bool)

(assert (=> d!120751 (=> res!680884 e!570770)))

(assert (=> d!120751 (= res!680884 (or ((_ is Nil!21549) l!412) ((_ is Nil!21549) (t!30561 l!412))))))

(assert (=> d!120751 (= (isStrictlySorted!573 l!412) e!570770)))

(declare-fun b!1014526 () Bool)

(declare-fun e!570771 () Bool)

(assert (=> b!1014526 (= e!570770 e!570771)))

(declare-fun res!680885 () Bool)

(assert (=> b!1014526 (=> (not res!680885) (not e!570771))))

(assert (=> b!1014526 (= res!680885 (bvslt (_1!7631 (h!22746 l!412)) (_1!7631 (h!22746 (t!30561 l!412)))))))

(declare-fun b!1014527 () Bool)

(assert (=> b!1014527 (= e!570771 (isStrictlySorted!573 (t!30561 l!412)))))

(assert (= (and d!120751 (not res!680884)) b!1014526))

(assert (= (and b!1014526 res!680885) b!1014527))

(declare-fun m!937221 () Bool)

(assert (=> b!1014527 m!937221))

(assert (=> start!87768 d!120751))

(declare-fun d!120757 () Bool)

(declare-fun lt!448596 () Int)

(assert (=> d!120757 (>= lt!448596 0)))

(declare-fun e!570782 () Int)

(assert (=> d!120757 (= lt!448596 e!570782)))

(declare-fun c!102660 () Bool)

(assert (=> d!120757 (= c!102660 ((_ is Nil!21549) (t!30561 l!412)))))

(assert (=> d!120757 (= (ListPrimitiveSize!116 (t!30561 l!412)) lt!448596)))

(declare-fun b!1014540 () Bool)

(assert (=> b!1014540 (= e!570782 0)))

(declare-fun b!1014541 () Bool)

(assert (=> b!1014541 (= e!570782 (+ 1 (ListPrimitiveSize!116 (t!30561 (t!30561 l!412)))))))

(assert (= (and d!120757 c!102660) b!1014540))

(assert (= (and d!120757 (not c!102660)) b!1014541))

(declare-fun m!937227 () Bool)

(assert (=> b!1014541 m!937227))

(assert (=> b!1014504 d!120757))

(declare-fun d!120765 () Bool)

(declare-fun lt!448597 () Int)

(assert (=> d!120765 (>= lt!448597 0)))

(declare-fun e!570783 () Int)

(assert (=> d!120765 (= lt!448597 e!570783)))

(declare-fun c!102661 () Bool)

(assert (=> d!120765 (= c!102661 ((_ is Nil!21549) l!412))))

(assert (=> d!120765 (= (ListPrimitiveSize!116 l!412) lt!448597)))

(declare-fun b!1014542 () Bool)

(assert (=> b!1014542 (= e!570783 0)))

(declare-fun b!1014543 () Bool)

(assert (=> b!1014543 (= e!570783 (+ 1 (ListPrimitiveSize!116 (t!30561 l!412))))))

(assert (= (and d!120765 c!102661) b!1014542))

(assert (= (and d!120765 (not c!102661)) b!1014543))

(assert (=> b!1014543 m!937207))

(assert (=> b!1014504 d!120765))

(declare-fun d!120767 () Bool)

(assert (=> d!120767 (= (isEmpty!841 (getKeysOf!50 (t!30561 l!412) value!115)) ((_ is Nil!21550) (getKeysOf!50 (t!30561 l!412) value!115)))))

(assert (=> b!1014503 d!120767))

(declare-fun b!1014602 () Bool)

(assert (=> b!1014602 true))

(assert (=> b!1014602 true))

(assert (=> b!1014602 true))

(declare-fun bs!29274 () Bool)

(declare-fun b!1014601 () Bool)

(assert (= bs!29274 (and b!1014601 b!1014602)))

(declare-fun lambda!726 () Int)

(declare-fun lambda!724 () Int)

(declare-fun lt!448679 () tuple2!15242)

(declare-fun lt!448678 () List!21552)

(declare-fun lt!448681 () List!21552)

(declare-fun lt!448674 () tuple2!15242)

(assert (=> bs!29274 (= (= (Cons!21548 lt!448679 lt!448678) (Cons!21548 lt!448674 lt!448681)) (= lambda!726 lambda!724))))

(assert (=> b!1014601 true))

(assert (=> b!1014601 true))

(assert (=> b!1014601 true))

(declare-fun bs!29277 () Bool)

(declare-fun d!120769 () Bool)

(assert (= bs!29277 (and d!120769 b!1014602)))

(declare-fun lambda!728 () Int)

(assert (=> bs!29277 (= (= (t!30561 l!412) (Cons!21548 lt!448674 lt!448681)) (= lambda!728 lambda!724))))

(declare-fun bs!29278 () Bool)

(assert (= bs!29278 (and d!120769 b!1014601)))

(assert (=> bs!29278 (= (= (t!30561 l!412) (Cons!21548 lt!448679 lt!448678)) (= lambda!728 lambda!726))))

(assert (=> d!120769 true))

(assert (=> d!120769 true))

(declare-fun b!1014600 () Bool)

(declare-datatypes ((Unit!33144 0))(
  ( (Unit!33145) )
))
(declare-fun e!570814 () Unit!33144)

(declare-fun Unit!33146 () Unit!33144)

(assert (=> b!1014600 (= e!570814 Unit!33146)))

(declare-fun lt!448682 () Unit!33144)

(assert (=> b!1014601 (= e!570814 lt!448682)))

(assert (=> b!1014601 (= lt!448678 (t!30561 (t!30561 l!412)))))

(declare-fun lt!448676 () List!21553)

(declare-fun call!42840 () List!21553)

(assert (=> b!1014601 (= lt!448676 call!42840)))

(assert (=> b!1014601 (= lt!448679 (h!22746 (t!30561 l!412)))))

(declare-fun call!42841 () Unit!33144)

(assert (=> b!1014601 (= lt!448682 call!42841)))

(declare-fun call!42838 () Bool)

(assert (=> b!1014601 call!42838))

(assert (=> b!1014602 call!42838))

(declare-fun lt!448683 () Unit!33144)

(assert (=> b!1014602 (= lt!448683 call!42841)))

(assert (=> b!1014602 (= lt!448674 (h!22746 (t!30561 l!412)))))

(declare-fun lt!448680 () List!21553)

(assert (=> b!1014602 (= lt!448680 call!42840)))

(assert (=> b!1014602 (= lt!448681 (t!30561 (t!30561 l!412)))))

(declare-fun e!570812 () Unit!33144)

(assert (=> b!1014602 (= e!570812 lt!448683)))

(declare-fun b!1014603 () Bool)

(declare-fun e!570815 () List!21553)

(assert (=> b!1014603 (= e!570815 Nil!21550)))

(declare-fun b!1014604 () Bool)

(declare-fun e!570813 () List!21553)

(assert (=> b!1014604 (= e!570813 e!570815)))

(declare-fun c!102693 () Bool)

(assert (=> b!1014604 (= c!102693 (and ((_ is Cons!21548) (t!30561 l!412)) (not (= (_2!7631 (h!22746 (t!30561 l!412))) value!115))))))

(declare-fun b!1014605 () Bool)

(assert (=> b!1014605 (= e!570813 (Cons!21549 (_1!7631 (h!22746 (t!30561 l!412))) call!42840))))

(declare-fun c!102690 () Bool)

(declare-fun call!42839 () Bool)

(assert (=> b!1014605 (= c!102690 (not call!42839))))

(declare-fun lt!448685 () Unit!33144)

(assert (=> b!1014605 (= lt!448685 e!570812)))

(declare-fun bm!42835 () Bool)

(declare-fun c!102691 () Bool)

(declare-fun forall!246 (List!21553 Int) Bool)

(assert (=> bm!42835 (= call!42838 (forall!246 (ite c!102691 lt!448680 lt!448676) (ite c!102691 lambda!724 lambda!726)))))

(declare-fun b!1014606 () Bool)

(declare-fun lt!448684 () Unit!33144)

(assert (=> b!1014606 (= lt!448684 e!570814)))

(declare-fun c!102692 () Bool)

(assert (=> b!1014606 (= c!102692 (not call!42839))))

(declare-fun lt!448675 () List!21553)

(assert (=> b!1014606 (= lt!448675 call!42840)))

(assert (=> b!1014606 (= e!570815 call!42840)))

(declare-fun bm!42836 () Bool)

(assert (=> bm!42836 (= call!42840 (getKeysOf!50 (t!30561 (t!30561 l!412)) value!115))))

(declare-fun bm!42837 () Bool)

(declare-fun lemmaForallGetValueByKeySameWithASmallerHead!41 (List!21552 List!21553 B!1438 tuple2!15242) Unit!33144)

(assert (=> bm!42837 (= call!42841 (lemmaForallGetValueByKeySameWithASmallerHead!41 (ite c!102691 lt!448681 lt!448678) (ite c!102691 lt!448680 lt!448676) value!115 (ite c!102691 lt!448674 lt!448679)))))

(declare-fun b!1014607 () Bool)

(declare-fun Unit!33149 () Unit!33144)

(assert (=> b!1014607 (= e!570812 Unit!33149)))

(declare-fun bm!42838 () Bool)

(assert (=> bm!42838 (= call!42839 (isEmpty!841 call!42840))))

(declare-fun lt!448677 () List!21553)

(assert (=> d!120769 (forall!246 lt!448677 lambda!728)))

(assert (=> d!120769 (= lt!448677 e!570813)))

(assert (=> d!120769 (= c!102691 (and ((_ is Cons!21548) (t!30561 l!412)) (= (_2!7631 (h!22746 (t!30561 l!412))) value!115)))))

(assert (=> d!120769 (isStrictlySorted!573 (t!30561 l!412))))

(assert (=> d!120769 (= (getKeysOf!50 (t!30561 l!412) value!115) lt!448677)))

(assert (= (and d!120769 c!102691) b!1014605))

(assert (= (and d!120769 (not c!102691)) b!1014604))

(assert (= (and b!1014605 c!102690) b!1014602))

(assert (= (and b!1014605 (not c!102690)) b!1014607))

(assert (= (and b!1014604 c!102693) b!1014606))

(assert (= (and b!1014604 (not c!102693)) b!1014603))

(assert (= (and b!1014606 c!102692) b!1014601))

(assert (= (and b!1014606 (not c!102692)) b!1014600))

(assert (= (or b!1014602 b!1014601) bm!42837))

(assert (= (or b!1014602 b!1014601) bm!42835))

(assert (= (or b!1014605 b!1014602 b!1014601 b!1014606) bm!42836))

(assert (= (or b!1014605 b!1014606) bm!42838))

(declare-fun m!937241 () Bool)

(assert (=> bm!42835 m!937241))

(declare-fun m!937243 () Bool)

(assert (=> d!120769 m!937243))

(assert (=> d!120769 m!937221))

(declare-fun m!937245 () Bool)

(assert (=> bm!42837 m!937245))

(declare-fun m!937247 () Bool)

(assert (=> bm!42836 m!937247))

(declare-fun m!937249 () Bool)

(assert (=> bm!42838 m!937249))

(assert (=> b!1014503 d!120769))

(declare-fun b!1014632 () Bool)

(declare-fun e!570822 () Bool)

(declare-fun tp!70548 () Bool)

(assert (=> b!1014632 (= e!570822 (and tp_is_empty!23505 tp!70548))))

(assert (=> b!1014505 (= tp!70542 e!570822)))

(assert (= (and b!1014505 ((_ is Cons!21548) (t!30561 l!412))) b!1014632))

(check-sat tp_is_empty!23505 (not b!1014543) (not bm!42838) (not bm!42837) (not b!1014541) (not bm!42836) (not b!1014632) (not d!120769) (not b!1014527) (not bm!42835))
(check-sat)
