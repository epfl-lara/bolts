; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!86268 () Bool)

(assert start!86268)

(declare-fun b!970562 () Bool)

(assert (=> b!970562 true))

(assert (=> b!970562 true))

(declare-fun lambda!34332 () Int)

(declare-fun lambda!34331 () Int)

(assert (=> b!970562 (not (= lambda!34332 lambda!34331))))

(assert (=> b!970562 true))

(assert (=> b!970562 true))

(declare-fun res!441166 () Bool)

(declare-fun e!625697 () Bool)

(assert (=> start!86268 (=> (not res!441166) (not e!625697))))

(declare-datatypes ((C!5982 0))(
  ( (C!5983 (val!3239 Int)) )
))
(declare-datatypes ((Regex!2706 0))(
  ( (ElementMatch!2706 (c!158255 C!5982)) (Concat!4539 (regOne!5924 Regex!2706) (regTwo!5924 Regex!2706)) (EmptyExpr!2706) (Star!2706 (reg!3035 Regex!2706)) (EmptyLang!2706) (Union!2706 (regOne!5925 Regex!2706) (regTwo!5925 Regex!2706)) )
))
(declare-fun r!15766 () Regex!2706)

(declare-fun validRegex!1175 (Regex!2706) Bool)

(assert (=> start!86268 (= res!441166 (validRegex!1175 r!15766))))

(assert (=> start!86268 e!625697))

(declare-fun e!625699 () Bool)

(assert (=> start!86268 e!625699))

(declare-fun e!625700 () Bool)

(assert (=> start!86268 e!625700))

(declare-fun e!625696 () Bool)

(declare-fun e!625698 () Bool)

(assert (=> b!970562 (= e!625696 e!625698)))

(declare-fun res!441165 () Bool)

(assert (=> b!970562 (=> res!441165 e!625698)))

(declare-datatypes ((List!9936 0))(
  ( (Nil!9920) (Cons!9920 (h!15321 C!5982) (t!100982 List!9936)) )
))
(declare-fun s!10566 () List!9936)

(declare-fun isEmpty!6225 (List!9936) Bool)

(assert (=> b!970562 (= res!441165 (not (isEmpty!6225 s!10566)))))

(declare-fun Exists!445 (Int) Bool)

(assert (=> b!970562 (= (Exists!445 lambda!34331) (Exists!445 lambda!34332))))

(declare-datatypes ((Unit!15071 0))(
  ( (Unit!15072) )
))
(declare-fun lt!348839 () Unit!15071)

(declare-fun lemmaExistCutMatchRandMatchRSpecEquivalent!211 (Regex!2706 Regex!2706 List!9936) Unit!15071)

(assert (=> b!970562 (= lt!348839 (lemmaExistCutMatchRandMatchRSpecEquivalent!211 EmptyExpr!2706 (regTwo!5924 r!15766) s!10566))))

(declare-datatypes ((tuple2!11278 0))(
  ( (tuple2!11279 (_1!6465 List!9936) (_2!6465 List!9936)) )
))
(declare-datatypes ((Option!2281 0))(
  ( (None!2280) (Some!2280 (v!19697 tuple2!11278)) )
))
(declare-fun isDefined!1923 (Option!2281) Bool)

(declare-fun findConcatSeparation!387 (Regex!2706 Regex!2706 List!9936 List!9936 List!9936) Option!2281)

(assert (=> b!970562 (= (isDefined!1923 (findConcatSeparation!387 EmptyExpr!2706 (regTwo!5924 r!15766) Nil!9920 s!10566 s!10566)) (Exists!445 lambda!34331))))

(declare-fun lt!348837 () Unit!15071)

(declare-fun lemmaFindConcatSeparationEquivalentToExists!387 (Regex!2706 Regex!2706 List!9936) Unit!15071)

(assert (=> b!970562 (= lt!348837 (lemmaFindConcatSeparationEquivalentToExists!387 EmptyExpr!2706 (regTwo!5924 r!15766) s!10566))))

(declare-fun b!970563 () Bool)

(declare-fun tp!297345 () Bool)

(declare-fun tp!297348 () Bool)

(assert (=> b!970563 (= e!625699 (and tp!297345 tp!297348))))

(declare-fun b!970564 () Bool)

(assert (=> b!970564 (= e!625697 (not e!625696))))

(declare-fun res!441167 () Bool)

(assert (=> b!970564 (=> res!441167 e!625696)))

(declare-fun lt!348836 () Bool)

(assert (=> b!970564 (= res!441167 (or (not lt!348836) (not (is-Concat!4539 r!15766)) (not (is-EmptyExpr!2706 (regOne!5924 r!15766)))))))

(declare-fun matchRSpec!505 (Regex!2706 List!9936) Bool)

(assert (=> b!970564 (= lt!348836 (matchRSpec!505 r!15766 s!10566))))

(declare-fun matchR!1242 (Regex!2706 List!9936) Bool)

(assert (=> b!970564 (= lt!348836 (matchR!1242 r!15766 s!10566))))

(declare-fun lt!348838 () Unit!15071)

(declare-fun mainMatchTheorem!505 (Regex!2706 List!9936) Unit!15071)

(assert (=> b!970564 (= lt!348838 (mainMatchTheorem!505 r!15766 s!10566))))

(declare-fun b!970565 () Bool)

(declare-fun tp!297349 () Bool)

(assert (=> b!970565 (= e!625699 tp!297349)))

(declare-fun b!970566 () Bool)

(declare-fun tp_is_empty!5055 () Bool)

(declare-fun tp!297347 () Bool)

(assert (=> b!970566 (= e!625700 (and tp_is_empty!5055 tp!297347))))

(declare-fun b!970567 () Bool)

(declare-fun tp!297346 () Bool)

(declare-fun tp!297350 () Bool)

(assert (=> b!970567 (= e!625699 (and tp!297346 tp!297350))))

(declare-fun b!970568 () Bool)

(declare-fun removeUselessConcat!343 (Regex!2706) Regex!2706)

(assert (=> b!970568 (= e!625698 (matchR!1242 (removeUselessConcat!343 r!15766) s!10566))))

(declare-fun b!970569 () Bool)

(assert (=> b!970569 (= e!625699 tp_is_empty!5055)))

(assert (= (and start!86268 res!441166) b!970564))

(assert (= (and b!970564 (not res!441167)) b!970562))

(assert (= (and b!970562 (not res!441165)) b!970568))

(assert (= (and start!86268 (is-ElementMatch!2706 r!15766)) b!970569))

(assert (= (and start!86268 (is-Concat!4539 r!15766)) b!970563))

(assert (= (and start!86268 (is-Star!2706 r!15766)) b!970565))

(assert (= (and start!86268 (is-Union!2706 r!15766)) b!970567))

(assert (= (and start!86268 (is-Cons!9920 s!10566)) b!970566))

(declare-fun m!1174769 () Bool)

(assert (=> start!86268 m!1174769))

(declare-fun m!1174771 () Bool)

(assert (=> b!970562 m!1174771))

(declare-fun m!1174773 () Bool)

(assert (=> b!970562 m!1174773))

(declare-fun m!1174775 () Bool)

(assert (=> b!970562 m!1174775))

(declare-fun m!1174777 () Bool)

(assert (=> b!970562 m!1174777))

(declare-fun m!1174779 () Bool)

(assert (=> b!970562 m!1174779))

(declare-fun m!1174781 () Bool)

(assert (=> b!970562 m!1174781))

(assert (=> b!970562 m!1174771))

(declare-fun m!1174783 () Bool)

(assert (=> b!970562 m!1174783))

(assert (=> b!970562 m!1174783))

(declare-fun m!1174785 () Bool)

(assert (=> b!970564 m!1174785))

(declare-fun m!1174787 () Bool)

(assert (=> b!970564 m!1174787))

(declare-fun m!1174789 () Bool)

(assert (=> b!970564 m!1174789))

(declare-fun m!1174791 () Bool)

(assert (=> b!970568 m!1174791))

(assert (=> b!970568 m!1174791))

(declare-fun m!1174793 () Bool)

(assert (=> b!970568 m!1174793))

(push 1)

(assert (not b!970567))

(assert (not b!970566))

(assert tp_is_empty!5055)

(assert (not b!970568))

(assert (not start!86268))

(assert (not b!970563))

(assert (not b!970565))

(assert (not b!970564))

(assert (not b!970562))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun b!970632 () Bool)

(declare-fun res!441201 () Bool)

(declare-fun e!625741 () Bool)

(assert (=> b!970632 (=> res!441201 e!625741)))

(assert (=> b!970632 (= res!441201 (not (is-Concat!4539 r!15766)))))

(declare-fun e!625739 () Bool)

(assert (=> b!970632 (= e!625739 e!625741)))

(declare-fun d!286557 () Bool)

(declare-fun res!441202 () Bool)

(declare-fun e!625737 () Bool)

(assert (=> d!286557 (=> res!441202 e!625737)))

(assert (=> d!286557 (= res!441202 (is-ElementMatch!2706 r!15766))))

(assert (=> d!286557 (= (validRegex!1175 r!15766) e!625737)))

(declare-fun b!970633 () Bool)

(declare-fun e!625740 () Bool)

(declare-fun call!61567 () Bool)

(assert (=> b!970633 (= e!625740 call!61567)))

(declare-fun b!970634 () Bool)

(declare-fun e!625742 () Bool)

(declare-fun call!61568 () Bool)

(assert (=> b!970634 (= e!625742 call!61568)))

(declare-fun b!970635 () Bool)

(declare-fun e!625736 () Bool)

(assert (=> b!970635 (= e!625736 call!61567)))

(declare-fun bm!61561 () Bool)

(assert (=> bm!61561 (= call!61567 call!61568)))

(declare-fun bm!61562 () Bool)

(declare-fun call!61566 () Bool)

(declare-fun c!158262 () Bool)

(assert (=> bm!61562 (= call!61566 (validRegex!1175 (ite c!158262 (regOne!5925 r!15766) (regOne!5924 r!15766))))))

(declare-fun b!970636 () Bool)

(declare-fun e!625738 () Bool)

(assert (=> b!970636 (= e!625738 e!625742)))

(declare-fun res!441199 () Bool)

(declare-fun nullable!826 (Regex!2706) Bool)

(assert (=> b!970636 (= res!441199 (not (nullable!826 (reg!3035 r!15766))))))

(assert (=> b!970636 (=> (not res!441199) (not e!625742))))

(declare-fun b!970637 () Bool)

(assert (=> b!970637 (= e!625741 e!625736)))

(declare-fun res!441200 () Bool)

(assert (=> b!970637 (=> (not res!441200) (not e!625736))))

(assert (=> b!970637 (= res!441200 call!61566)))

(declare-fun bm!61563 () Bool)

(declare-fun c!158261 () Bool)

(assert (=> bm!61563 (= call!61568 (validRegex!1175 (ite c!158261 (reg!3035 r!15766) (ite c!158262 (regTwo!5925 r!15766) (regTwo!5924 r!15766)))))))

(declare-fun b!970638 () Bool)

(declare-fun res!441203 () Bool)

(assert (=> b!970638 (=> (not res!441203) (not e!625740))))

(assert (=> b!970638 (= res!441203 call!61566)))

(assert (=> b!970638 (= e!625739 e!625740)))

(declare-fun b!970639 () Bool)

(assert (=> b!970639 (= e!625738 e!625739)))

(assert (=> b!970639 (= c!158262 (is-Union!2706 r!15766))))

(declare-fun b!970640 () Bool)

(assert (=> b!970640 (= e!625737 e!625738)))

(assert (=> b!970640 (= c!158261 (is-Star!2706 r!15766))))

(assert (= (and d!286557 (not res!441202)) b!970640))

(assert (= (and b!970640 c!158261) b!970636))

(assert (= (and b!970640 (not c!158261)) b!970639))

(assert (= (and b!970636 res!441199) b!970634))

(assert (= (and b!970639 c!158262) b!970638))

(assert (= (and b!970639 (not c!158262)) b!970632))

(assert (= (and b!970638 res!441203) b!970633))

(assert (= (and b!970632 (not res!441201)) b!970637))

(assert (= (and b!970637 res!441200) b!970635))

(assert (= (or b!970633 b!970635) bm!61561))

(assert (= (or b!970638 b!970637) bm!61562))

(assert (= (or b!970634 bm!61561) bm!61563))

(declare-fun m!1174821 () Bool)

(assert (=> bm!61562 m!1174821))

(declare-fun m!1174823 () Bool)

(assert (=> b!970636 m!1174823))

(declare-fun m!1174825 () Bool)

(assert (=> bm!61563 m!1174825))

(assert (=> start!86268 d!286557))

(declare-fun d!286559 () Bool)

(assert (=> d!286559 (= (isEmpty!6225 s!10566) (is-Nil!9920 s!10566))))

(assert (=> b!970562 d!286559))

(declare-fun b!970677 () Bool)

(declare-fun e!625768 () Bool)

(declare-fun lt!348859 () Option!2281)

(assert (=> b!970677 (= e!625768 (not (isDefined!1923 lt!348859)))))

(declare-fun b!970678 () Bool)

(declare-fun e!625767 () Option!2281)

(assert (=> b!970678 (= e!625767 (Some!2280 (tuple2!11279 Nil!9920 s!10566)))))

(declare-fun b!970679 () Bool)

(declare-fun e!625771 () Bool)

(assert (=> b!970679 (= e!625771 (matchR!1242 (regTwo!5924 r!15766) s!10566))))

(declare-fun b!970680 () Bool)

(declare-fun e!625770 () Option!2281)

(assert (=> b!970680 (= e!625770 None!2280)))

(declare-fun b!970681 () Bool)

(declare-fun e!625769 () Bool)

(declare-fun ++!2683 (List!9936 List!9936) List!9936)

(declare-fun get!3415 (Option!2281) tuple2!11278)

(assert (=> b!970681 (= e!625769 (= (++!2683 (_1!6465 (get!3415 lt!348859)) (_2!6465 (get!3415 lt!348859))) s!10566))))

(declare-fun b!970682 () Bool)

(assert (=> b!970682 (= e!625767 e!625770)))

(declare-fun c!158271 () Bool)

(assert (=> b!970682 (= c!158271 (is-Nil!9920 s!10566))))

(declare-fun d!286561 () Bool)

(assert (=> d!286561 e!625768))

(declare-fun res!441226 () Bool)

(assert (=> d!286561 (=> res!441226 e!625768)))

(assert (=> d!286561 (= res!441226 e!625769)))

(declare-fun res!441224 () Bool)

(assert (=> d!286561 (=> (not res!441224) (not e!625769))))

(assert (=> d!286561 (= res!441224 (isDefined!1923 lt!348859))))

(assert (=> d!286561 (= lt!348859 e!625767)))

(declare-fun c!158272 () Bool)

(assert (=> d!286561 (= c!158272 e!625771)))

(declare-fun res!441228 () Bool)

(assert (=> d!286561 (=> (not res!441228) (not e!625771))))

(assert (=> d!286561 (= res!441228 (matchR!1242 EmptyExpr!2706 Nil!9920))))

(assert (=> d!286561 (validRegex!1175 EmptyExpr!2706)))

(assert (=> d!286561 (= (findConcatSeparation!387 EmptyExpr!2706 (regTwo!5924 r!15766) Nil!9920 s!10566 s!10566) lt!348859)))

(declare-fun b!970683 () Bool)

(declare-fun res!441227 () Bool)

(assert (=> b!970683 (=> (not res!441227) (not e!625769))))

(assert (=> b!970683 (= res!441227 (matchR!1242 (regTwo!5924 r!15766) (_2!6465 (get!3415 lt!348859))))))

(declare-fun b!970684 () Bool)

(declare-fun lt!348860 () Unit!15071)

(declare-fun lt!348858 () Unit!15071)

(assert (=> b!970684 (= lt!348860 lt!348858)))

(assert (=> b!970684 (= (++!2683 (++!2683 Nil!9920 (Cons!9920 (h!15321 s!10566) Nil!9920)) (t!100982 s!10566)) s!10566)))

(declare-fun lemmaMoveElementToOtherListKeepsConcatEq!284 (List!9936 C!5982 List!9936 List!9936) Unit!15071)

(assert (=> b!970684 (= lt!348858 (lemmaMoveElementToOtherListKeepsConcatEq!284 Nil!9920 (h!15321 s!10566) (t!100982 s!10566) s!10566))))

(assert (=> b!970684 (= e!625770 (findConcatSeparation!387 EmptyExpr!2706 (regTwo!5924 r!15766) (++!2683 Nil!9920 (Cons!9920 (h!15321 s!10566) Nil!9920)) (t!100982 s!10566) s!10566))))

(declare-fun b!970685 () Bool)

(declare-fun res!441225 () Bool)

(assert (=> b!970685 (=> (not res!441225) (not e!625769))))

(assert (=> b!970685 (= res!441225 (matchR!1242 EmptyExpr!2706 (_1!6465 (get!3415 lt!348859))))))

(assert (= (and d!286561 res!441228) b!970679))

(assert (= (and d!286561 c!158272) b!970678))

(assert (= (and d!286561 (not c!158272)) b!970682))

(assert (= (and b!970682 c!158271) b!970680))

(assert (= (and b!970682 (not c!158271)) b!970684))

(assert (= (and d!286561 res!441224) b!970685))

(assert (= (and b!970685 res!441225) b!970683))

(assert (= (and b!970683 res!441227) b!970681))

(assert (= (and d!286561 (not res!441226)) b!970677))

(declare-fun m!1174827 () Bool)

(assert (=> b!970683 m!1174827))

(declare-fun m!1174829 () Bool)

(assert (=> b!970683 m!1174829))

(declare-fun m!1174831 () Bool)

(assert (=> b!970679 m!1174831))

(assert (=> b!970681 m!1174827))

(declare-fun m!1174833 () Bool)

(assert (=> b!970681 m!1174833))

(assert (=> b!970685 m!1174827))

(declare-fun m!1174835 () Bool)

(assert (=> b!970685 m!1174835))

(declare-fun m!1174837 () Bool)

(assert (=> b!970684 m!1174837))

(assert (=> b!970684 m!1174837))

(declare-fun m!1174839 () Bool)

(assert (=> b!970684 m!1174839))

(declare-fun m!1174841 () Bool)

(assert (=> b!970684 m!1174841))

(assert (=> b!970684 m!1174837))

(declare-fun m!1174843 () Bool)

(assert (=> b!970684 m!1174843))

(declare-fun m!1174845 () Bool)

(assert (=> b!970677 m!1174845))

(assert (=> d!286561 m!1174845))

(declare-fun m!1174847 () Bool)

(assert (=> d!286561 m!1174847))

(declare-fun m!1174849 () Bool)

(assert (=> d!286561 m!1174849))

(assert (=> b!970562 d!286561))

(declare-fun bs!242378 () Bool)

(declare-fun d!286565 () Bool)

(assert (= bs!242378 (and d!286565 b!970562)))

(declare-fun lambda!34343 () Int)

(assert (=> bs!242378 (= lambda!34343 lambda!34331)))

(assert (=> bs!242378 (not (= lambda!34343 lambda!34332))))

(assert (=> d!286565 true))

(assert (=> d!286565 true))

(assert (=> d!286565 true))

(assert (=> d!286565 (= (isDefined!1923 (findConcatSeparation!387 EmptyExpr!2706 (regTwo!5924 r!15766) Nil!9920 s!10566 s!10566)) (Exists!445 lambda!34343))))

(declare-fun lt!348863 () Unit!15071)

(declare-fun choose!6137 (Regex!2706 Regex!2706 List!9936) Unit!15071)

(assert (=> d!286565 (= lt!348863 (choose!6137 EmptyExpr!2706 (regTwo!5924 r!15766) s!10566))))

(assert (=> d!286565 (validRegex!1175 EmptyExpr!2706)))

(assert (=> d!286565 (= (lemmaFindConcatSeparationEquivalentToExists!387 EmptyExpr!2706 (regTwo!5924 r!15766) s!10566) lt!348863)))

(declare-fun bs!242379 () Bool)

(assert (= bs!242379 d!286565))

(declare-fun m!1174853 () Bool)

(assert (=> bs!242379 m!1174853))

(assert (=> bs!242379 m!1174771))

(assert (=> bs!242379 m!1174849))

(declare-fun m!1174857 () Bool)

(assert (=> bs!242379 m!1174857))

(assert (=> bs!242379 m!1174771))

(assert (=> bs!242379 m!1174773))

(assert (=> b!970562 d!286565))

(declare-fun bs!242380 () Bool)

(declare-fun d!286567 () Bool)

(assert (= bs!242380 (and d!286567 b!970562)))

(declare-fun lambda!34348 () Int)

(assert (=> bs!242380 (= lambda!34348 lambda!34331)))

(assert (=> bs!242380 (not (= lambda!34348 lambda!34332))))

(declare-fun bs!242381 () Bool)

(assert (= bs!242381 (and d!286567 d!286565)))

(assert (=> bs!242381 (= lambda!34348 lambda!34343)))

(assert (=> d!286567 true))

(assert (=> d!286567 true))

(assert (=> d!286567 true))

(declare-fun lambda!34349 () Int)

(assert (=> bs!242380 (not (= lambda!34349 lambda!34331))))

(assert (=> bs!242380 (= lambda!34349 lambda!34332)))

(assert (=> bs!242381 (not (= lambda!34349 lambda!34343))))

(declare-fun bs!242382 () Bool)

(assert (= bs!242382 d!286567))

(assert (=> bs!242382 (not (= lambda!34349 lambda!34348))))

(assert (=> d!286567 true))

(assert (=> d!286567 true))

(assert (=> d!286567 true))

(assert (=> d!286567 (= (Exists!445 lambda!34348) (Exists!445 lambda!34349))))

(declare-fun lt!348866 () Unit!15071)

(declare-fun choose!6138 (Regex!2706 Regex!2706 List!9936) Unit!15071)

(assert (=> d!286567 (= lt!348866 (choose!6138 EmptyExpr!2706 (regTwo!5924 r!15766) s!10566))))

(assert (=> d!286567 (validRegex!1175 EmptyExpr!2706)))

(assert (=> d!286567 (= (lemmaExistCutMatchRandMatchRSpecEquivalent!211 EmptyExpr!2706 (regTwo!5924 r!15766) s!10566) lt!348866)))

(declare-fun m!1174861 () Bool)

(assert (=> bs!242382 m!1174861))

(declare-fun m!1174863 () Bool)

(assert (=> bs!242382 m!1174863))

(declare-fun m!1174865 () Bool)

(assert (=> bs!242382 m!1174865))

(assert (=> bs!242382 m!1174849))

(assert (=> b!970562 d!286567))

(declare-fun d!286573 () Bool)

(declare-fun choose!6139 (Int) Bool)

(assert (=> d!286573 (= (Exists!445 lambda!34332) (choose!6139 lambda!34332))))

(declare-fun bs!242383 () Bool)

(assert (= bs!242383 d!286573))

(declare-fun m!1174867 () Bool)

(assert (=> bs!242383 m!1174867))

(assert (=> b!970562 d!286573))

(declare-fun d!286575 () Bool)

(declare-fun isEmpty!6227 (Option!2281) Bool)

(assert (=> d!286575 (= (isDefined!1923 (findConcatSeparation!387 EmptyExpr!2706 (regTwo!5924 r!15766) Nil!9920 s!10566 s!10566)) (not (isEmpty!6227 (findConcatSeparation!387 EmptyExpr!2706 (regTwo!5924 r!15766) Nil!9920 s!10566 s!10566))))))

(declare-fun bs!242384 () Bool)

(assert (= bs!242384 d!286575))

(assert (=> bs!242384 m!1174771))

(declare-fun m!1174869 () Bool)

(assert (=> bs!242384 m!1174869))

(assert (=> b!970562 d!286575))

(declare-fun d!286577 () Bool)

(assert (=> d!286577 (= (Exists!445 lambda!34331) (choose!6139 lambda!34331))))

(declare-fun bs!242385 () Bool)

(assert (= bs!242385 d!286577))

(declare-fun m!1174871 () Bool)

(assert (=> bs!242385 m!1174871))

(assert (=> b!970562 d!286577))

(declare-fun b!970735 () Bool)

(declare-fun res!441265 () Bool)

(declare-fun e!625803 () Bool)

(assert (=> b!970735 (=> (not res!441265) (not e!625803))))

(declare-fun tail!1347 (List!9936) List!9936)

(assert (=> b!970735 (= res!441265 (isEmpty!6225 (tail!1347 s!10566)))))

(declare-fun b!970736 () Bool)

(declare-fun res!441264 () Bool)

(declare-fun e!625800 () Bool)

(assert (=> b!970736 (=> res!441264 e!625800)))

(assert (=> b!970736 (= res!441264 e!625803)))

(declare-fun res!441263 () Bool)

(assert (=> b!970736 (=> (not res!441263) (not e!625803))))

(declare-fun lt!348869 () Bool)

(assert (=> b!970736 (= res!441263 lt!348869)))

(declare-fun b!970737 () Bool)

(declare-fun e!625804 () Bool)

(assert (=> b!970737 (= e!625804 (not lt!348869))))

(declare-fun b!970738 () Bool)

(declare-fun res!441268 () Bool)

(assert (=> b!970738 (=> res!441268 e!625800)))

(assert (=> b!970738 (= res!441268 (not (is-ElementMatch!2706 (removeUselessConcat!343 r!15766))))))

(assert (=> b!970738 (= e!625804 e!625800)))

(declare-fun b!970739 () Bool)

(declare-fun e!625805 () Bool)

(declare-fun e!625801 () Bool)

(assert (=> b!970739 (= e!625805 e!625801)))

(declare-fun res!441267 () Bool)

(assert (=> b!970739 (=> res!441267 e!625801)))

(declare-fun call!61580 () Bool)

(assert (=> b!970739 (= res!441267 call!61580)))

(declare-fun d!286579 () Bool)

(declare-fun e!625802 () Bool)

(assert (=> d!286579 e!625802))

(declare-fun c!158283 () Bool)

(assert (=> d!286579 (= c!158283 (is-EmptyExpr!2706 (removeUselessConcat!343 r!15766)))))

(declare-fun e!625799 () Bool)

(assert (=> d!286579 (= lt!348869 e!625799)))

(declare-fun c!158282 () Bool)

(assert (=> d!286579 (= c!158282 (isEmpty!6225 s!10566))))

(assert (=> d!286579 (validRegex!1175 (removeUselessConcat!343 r!15766))))

(assert (=> d!286579 (= (matchR!1242 (removeUselessConcat!343 r!15766) s!10566) lt!348869)))

(declare-fun bm!61575 () Bool)

(assert (=> bm!61575 (= call!61580 (isEmpty!6225 s!10566))))

(declare-fun b!970740 () Bool)

(declare-fun head!1785 (List!9936) C!5982)

(assert (=> b!970740 (= e!625801 (not (= (head!1785 s!10566) (c!158255 (removeUselessConcat!343 r!15766)))))))

(declare-fun b!970741 () Bool)

(declare-fun res!441262 () Bool)

(assert (=> b!970741 (=> res!441262 e!625801)))

(assert (=> b!970741 (= res!441262 (not (isEmpty!6225 (tail!1347 s!10566))))))

(declare-fun b!970742 () Bool)

(assert (=> b!970742 (= e!625802 e!625804)))

(declare-fun c!158281 () Bool)

(assert (=> b!970742 (= c!158281 (is-EmptyLang!2706 (removeUselessConcat!343 r!15766)))))

(declare-fun b!970743 () Bool)

(assert (=> b!970743 (= e!625800 e!625805)))

(declare-fun res!441266 () Bool)

(assert (=> b!970743 (=> (not res!441266) (not e!625805))))

(assert (=> b!970743 (= res!441266 (not lt!348869))))

(declare-fun b!970744 () Bool)

(declare-fun derivativeStep!632 (Regex!2706 C!5982) Regex!2706)

(assert (=> b!970744 (= e!625799 (matchR!1242 (derivativeStep!632 (removeUselessConcat!343 r!15766) (head!1785 s!10566)) (tail!1347 s!10566)))))

(declare-fun b!970745 () Bool)

(assert (=> b!970745 (= e!625803 (= (head!1785 s!10566) (c!158255 (removeUselessConcat!343 r!15766))))))

(declare-fun b!970746 () Bool)

(assert (=> b!970746 (= e!625802 (= lt!348869 call!61580))))

(declare-fun b!970747 () Bool)

(declare-fun res!441269 () Bool)

(assert (=> b!970747 (=> (not res!441269) (not e!625803))))

(assert (=> b!970747 (= res!441269 (not call!61580))))

(declare-fun b!970748 () Bool)

(assert (=> b!970748 (= e!625799 (nullable!826 (removeUselessConcat!343 r!15766)))))

(assert (= (and d!286579 c!158282) b!970748))

(assert (= (and d!286579 (not c!158282)) b!970744))

(assert (= (and d!286579 c!158283) b!970746))

(assert (= (and d!286579 (not c!158283)) b!970742))

(assert (= (and b!970742 c!158281) b!970737))

(assert (= (and b!970742 (not c!158281)) b!970738))

(assert (= (and b!970738 (not res!441268)) b!970736))

(assert (= (and b!970736 res!441263) b!970747))

(assert (= (and b!970747 res!441269) b!970735))

(assert (= (and b!970735 res!441265) b!970745))

(assert (= (and b!970736 (not res!441264)) b!970743))

(assert (= (and b!970743 res!441266) b!970739))

(assert (= (and b!970739 (not res!441267)) b!970741))

(assert (= (and b!970741 (not res!441262)) b!970740))

(assert (= (or b!970746 b!970739 b!970747) bm!61575))

(declare-fun m!1174873 () Bool)

(assert (=> b!970745 m!1174873))

(declare-fun m!1174875 () Bool)

(assert (=> b!970735 m!1174875))

(assert (=> b!970735 m!1174875))

(declare-fun m!1174877 () Bool)

(assert (=> b!970735 m!1174877))

(assert (=> b!970740 m!1174873))

(assert (=> b!970741 m!1174875))

(assert (=> b!970741 m!1174875))

(assert (=> b!970741 m!1174877))

(assert (=> b!970744 m!1174873))

(assert (=> b!970744 m!1174791))

(assert (=> b!970744 m!1174873))

(declare-fun m!1174879 () Bool)

(assert (=> b!970744 m!1174879))

(assert (=> b!970744 m!1174875))

(assert (=> b!970744 m!1174879))

(assert (=> b!970744 m!1174875))

(declare-fun m!1174881 () Bool)

(assert (=> b!970744 m!1174881))

(assert (=> d!286579 m!1174781))

(assert (=> d!286579 m!1174791))

(declare-fun m!1174883 () Bool)

(assert (=> d!286579 m!1174883))

(assert (=> b!970748 m!1174791))

(declare-fun m!1174885 () Bool)

(assert (=> b!970748 m!1174885))

(assert (=> bm!61575 m!1174781))

(assert (=> b!970568 d!286579))

(declare-fun b!970789 () Bool)

(declare-fun e!625830 () Regex!2706)

(declare-fun call!61592 () Regex!2706)

(assert (=> b!970789 (= e!625830 call!61592)))

(declare-fun bm!61586 () Bool)

(declare-fun call!61595 () Regex!2706)

(declare-fun call!61593 () Regex!2706)

(assert (=> bm!61586 (= call!61595 call!61593)))

(declare-fun b!970790 () Bool)

(declare-fun e!625833 () Regex!2706)

(declare-fun call!61594 () Regex!2706)

(assert (=> b!970790 (= e!625833 (Concat!4539 call!61594 call!61595))))

(declare-fun bm!61587 () Bool)

(assert (=> bm!61587 (= call!61594 call!61592)))

(declare-fun b!970791 () Bool)

(declare-fun e!625832 () Regex!2706)

(assert (=> b!970791 (= e!625832 call!61593)))

(declare-fun b!970792 () Bool)

(declare-fun e!625828 () Regex!2706)

(assert (=> b!970792 (= e!625833 e!625828)))

(declare-fun c!158298 () Bool)

(assert (=> b!970792 (= c!158298 (is-Union!2706 r!15766))))

(declare-fun c!158301 () Bool)

(declare-fun c!158300 () Bool)

(declare-fun bm!61588 () Bool)

(assert (=> bm!61588 (= call!61593 (removeUselessConcat!343 (ite (or c!158301 c!158300) (regTwo!5924 r!15766) (ite c!158298 (regTwo!5925 r!15766) (reg!3035 r!15766)))))))

(declare-fun b!970793 () Bool)

(assert (=> b!970793 (= c!158300 (is-Concat!4539 r!15766))))

(assert (=> b!970793 (= e!625830 e!625833)))

(declare-fun bm!61589 () Bool)

(declare-fun call!61591 () Regex!2706)

(assert (=> bm!61589 (= call!61591 call!61595)))

(declare-fun d!286581 () Bool)

(declare-fun e!625831 () Bool)

(assert (=> d!286581 e!625831))

(declare-fun res!441282 () Bool)

(assert (=> d!286581 (=> (not res!441282) (not e!625831))))

(declare-fun lt!348878 () Regex!2706)

(assert (=> d!286581 (= res!441282 (validRegex!1175 lt!348878))))

(assert (=> d!286581 (= lt!348878 e!625832)))

(assert (=> d!286581 (= c!158301 (and (is-Concat!4539 r!15766) (is-EmptyExpr!2706 (regOne!5924 r!15766))))))

(assert (=> d!286581 (validRegex!1175 r!15766)))

(assert (=> d!286581 (= (removeUselessConcat!343 r!15766) lt!348878)))

(declare-fun b!970794 () Bool)

(assert (=> b!970794 (= e!625832 e!625830)))

(declare-fun c!158299 () Bool)

(assert (=> b!970794 (= c!158299 (and (is-Concat!4539 r!15766) (is-EmptyExpr!2706 (regTwo!5924 r!15766))))))

(declare-fun b!970795 () Bool)

(assert (=> b!970795 (= e!625828 (Union!2706 call!61594 call!61591))))

(declare-fun b!970796 () Bool)

(declare-fun e!625829 () Regex!2706)

(assert (=> b!970796 (= e!625829 r!15766)))

(declare-fun b!970797 () Bool)

(assert (=> b!970797 (= e!625829 (Star!2706 call!61591))))

(declare-fun b!970798 () Bool)

(assert (=> b!970798 (= e!625831 (= (nullable!826 lt!348878) (nullable!826 r!15766)))))

(declare-fun bm!61590 () Bool)

(assert (=> bm!61590 (= call!61592 (removeUselessConcat!343 (ite (or c!158299 c!158300) (regOne!5924 r!15766) (regOne!5925 r!15766))))))

(declare-fun b!970799 () Bool)

(declare-fun c!158302 () Bool)

(assert (=> b!970799 (= c!158302 (is-Star!2706 r!15766))))

(assert (=> b!970799 (= e!625828 e!625829)))

(assert (= (and d!286581 c!158301) b!970791))

(assert (= (and d!286581 (not c!158301)) b!970794))

(assert (= (and b!970794 c!158299) b!970789))

(assert (= (and b!970794 (not c!158299)) b!970793))

(assert (= (and b!970793 c!158300) b!970790))

(assert (= (and b!970793 (not c!158300)) b!970792))

(assert (= (and b!970792 c!158298) b!970795))

(assert (= (and b!970792 (not c!158298)) b!970799))

(assert (= (and b!970799 c!158302) b!970797))

(assert (= (and b!970799 (not c!158302)) b!970796))

(assert (= (or b!970795 b!970797) bm!61589))

(assert (= (or b!970790 bm!61589) bm!61586))

(assert (= (or b!970790 b!970795) bm!61587))

(assert (= (or b!970789 bm!61587) bm!61590))

(assert (= (or b!970791 bm!61586) bm!61588))

(assert (= (and d!286581 res!441282) b!970798))

(declare-fun m!1174887 () Bool)

(assert (=> bm!61588 m!1174887))

(declare-fun m!1174889 () Bool)

(assert (=> d!286581 m!1174889))

(assert (=> d!286581 m!1174769))

(declare-fun m!1174891 () Bool)

(assert (=> b!970798 m!1174891))

(declare-fun m!1174893 () Bool)

(assert (=> b!970798 m!1174893))

(declare-fun m!1174895 () Bool)

(assert (=> bm!61590 m!1174895))

(assert (=> b!970568 d!286581))

(declare-fun bs!242386 () Bool)

(declare-fun b!970842 () Bool)

(assert (= bs!242386 (and b!970842 d!286567)))

(declare-fun lambda!34354 () Int)

(assert (=> bs!242386 (not (= lambda!34354 lambda!34348))))

(declare-fun bs!242387 () Bool)

(assert (= bs!242387 (and b!970842 b!970562)))

(assert (=> bs!242387 (not (= lambda!34354 lambda!34332))))

(assert (=> bs!242386 (not (= lambda!34354 lambda!34349))))

(declare-fun bs!242388 () Bool)

(assert (= bs!242388 (and b!970842 d!286565)))

(assert (=> bs!242388 (not (= lambda!34354 lambda!34343))))

(assert (=> bs!242387 (not (= lambda!34354 lambda!34331))))

(assert (=> b!970842 true))

(assert (=> b!970842 true))

(declare-fun bs!242389 () Bool)

(declare-fun b!970848 () Bool)

(assert (= bs!242389 (and b!970848 d!286567)))

(declare-fun lambda!34356 () Int)

(assert (=> bs!242389 (not (= lambda!34356 lambda!34348))))

(declare-fun bs!242390 () Bool)

(assert (= bs!242390 (and b!970848 b!970842)))

(assert (=> bs!242390 (not (= lambda!34356 lambda!34354))))

(declare-fun bs!242391 () Bool)

(assert (= bs!242391 (and b!970848 b!970562)))

(assert (=> bs!242391 (= (= (regOne!5924 r!15766) EmptyExpr!2706) (= lambda!34356 lambda!34332))))

(assert (=> bs!242389 (= (= (regOne!5924 r!15766) EmptyExpr!2706) (= lambda!34356 lambda!34349))))

(declare-fun bs!242392 () Bool)

(assert (= bs!242392 (and b!970848 d!286565)))

(assert (=> bs!242392 (not (= lambda!34356 lambda!34343))))

(assert (=> bs!242391 (not (= lambda!34356 lambda!34331))))

(assert (=> b!970848 true))

(assert (=> b!970848 true))

(declare-fun call!61600 () Bool)

(declare-fun bm!61595 () Bool)

(declare-fun c!158316 () Bool)

(assert (=> bm!61595 (= call!61600 (Exists!445 (ite c!158316 lambda!34354 lambda!34356)))))

(declare-fun b!970841 () Bool)

(declare-fun e!625861 () Bool)

(declare-fun call!61601 () Bool)

(assert (=> b!970841 (= e!625861 call!61601)))

(declare-fun e!625859 () Bool)

(assert (=> b!970842 (= e!625859 call!61600)))

(declare-fun b!970843 () Bool)

(declare-fun c!158315 () Bool)

(assert (=> b!970843 (= c!158315 (is-Union!2706 r!15766))))

(declare-fun e!625857 () Bool)

(declare-fun e!625863 () Bool)

(assert (=> b!970843 (= e!625857 e!625863)))

(declare-fun b!970844 () Bool)

(declare-fun e!625862 () Bool)

(assert (=> b!970844 (= e!625863 e!625862)))

(declare-fun res!441306 () Bool)

(assert (=> b!970844 (= res!441306 (matchRSpec!505 (regOne!5925 r!15766) s!10566))))

(assert (=> b!970844 (=> res!441306 e!625862)))

(declare-fun b!970845 () Bool)

(declare-fun c!158314 () Bool)

(assert (=> b!970845 (= c!158314 (is-ElementMatch!2706 r!15766))))

(declare-fun e!625860 () Bool)

(assert (=> b!970845 (= e!625860 e!625857)))

(declare-fun b!970846 () Bool)

(assert (=> b!970846 (= e!625857 (= s!10566 (Cons!9920 (c!158255 r!15766) Nil!9920)))))

(declare-fun b!970847 () Bool)

(declare-fun e!625858 () Bool)

(assert (=> b!970847 (= e!625863 e!625858)))

(assert (=> b!970847 (= c!158316 (is-Star!2706 r!15766))))

(assert (=> b!970848 (= e!625858 call!61600)))

(declare-fun b!970849 () Bool)

(assert (=> b!970849 (= e!625862 (matchRSpec!505 (regTwo!5925 r!15766) s!10566))))

(declare-fun b!970850 () Bool)

(declare-fun res!441304 () Bool)

(assert (=> b!970850 (=> res!441304 e!625859)))

(assert (=> b!970850 (= res!441304 call!61601)))

(assert (=> b!970850 (= e!625858 e!625859)))

(declare-fun b!970851 () Bool)

(assert (=> b!970851 (= e!625861 e!625860)))

(declare-fun res!441305 () Bool)

(assert (=> b!970851 (= res!441305 (not (is-EmptyLang!2706 r!15766)))))

(assert (=> b!970851 (=> (not res!441305) (not e!625860))))

(declare-fun bm!61596 () Bool)

(assert (=> bm!61596 (= call!61601 (isEmpty!6225 s!10566))))

(declare-fun d!286583 () Bool)

(declare-fun c!158313 () Bool)

(assert (=> d!286583 (= c!158313 (is-EmptyExpr!2706 r!15766))))

(assert (=> d!286583 (= (matchRSpec!505 r!15766 s!10566) e!625861)))

(assert (= (and d!286583 c!158313) b!970841))

(assert (= (and d!286583 (not c!158313)) b!970851))

(assert (= (and b!970851 res!441305) b!970845))

(assert (= (and b!970845 c!158314) b!970846))

(assert (= (and b!970845 (not c!158314)) b!970843))

(assert (= (and b!970843 c!158315) b!970844))

(assert (= (and b!970843 (not c!158315)) b!970847))

(assert (= (and b!970844 (not res!441306)) b!970849))

(assert (= (and b!970847 c!158316) b!970850))

(assert (= (and b!970847 (not c!158316)) b!970848))

(assert (= (and b!970850 (not res!441304)) b!970842))

(assert (= (or b!970842 b!970848) bm!61595))

(assert (= (or b!970841 b!970850) bm!61596))

(declare-fun m!1174921 () Bool)

(assert (=> bm!61595 m!1174921))

(declare-fun m!1174923 () Bool)

(assert (=> b!970844 m!1174923))

(declare-fun m!1174925 () Bool)

(assert (=> b!970849 m!1174925))

(assert (=> bm!61596 m!1174781))

(assert (=> b!970564 d!286583))

(declare-fun b!970856 () Bool)

(declare-fun res!441314 () Bool)

(declare-fun e!625870 () Bool)

(assert (=> b!970856 (=> (not res!441314) (not e!625870))))

(assert (=> b!970856 (= res!441314 (isEmpty!6225 (tail!1347 s!10566)))))

(declare-fun b!970857 () Bool)

(declare-fun res!441313 () Bool)

(declare-fun e!625867 () Bool)

(assert (=> b!970857 (=> res!441313 e!625867)))

(assert (=> b!970857 (= res!441313 e!625870)))

(declare-fun res!441312 () Bool)

(assert (=> b!970857 (=> (not res!441312) (not e!625870))))

(declare-fun lt!348884 () Bool)

(assert (=> b!970857 (= res!441312 lt!348884)))

(declare-fun b!970858 () Bool)

(declare-fun e!625871 () Bool)

(assert (=> b!970858 (= e!625871 (not lt!348884))))

(declare-fun b!970859 () Bool)

(declare-fun res!441317 () Bool)

(assert (=> b!970859 (=> res!441317 e!625867)))

(assert (=> b!970859 (= res!441317 (not (is-ElementMatch!2706 r!15766)))))

(assert (=> b!970859 (= e!625871 e!625867)))

(declare-fun b!970860 () Bool)

(declare-fun e!625872 () Bool)

(declare-fun e!625868 () Bool)

(assert (=> b!970860 (= e!625872 e!625868)))

(declare-fun res!441316 () Bool)

(assert (=> b!970860 (=> res!441316 e!625868)))

(declare-fun call!61602 () Bool)

(assert (=> b!970860 (= res!441316 call!61602)))

(declare-fun d!286587 () Bool)

(declare-fun e!625869 () Bool)

(assert (=> d!286587 e!625869))

(declare-fun c!158319 () Bool)

(assert (=> d!286587 (= c!158319 (is-EmptyExpr!2706 r!15766))))

(declare-fun e!625866 () Bool)

(assert (=> d!286587 (= lt!348884 e!625866)))

(declare-fun c!158318 () Bool)

(assert (=> d!286587 (= c!158318 (isEmpty!6225 s!10566))))

(assert (=> d!286587 (validRegex!1175 r!15766)))

(assert (=> d!286587 (= (matchR!1242 r!15766 s!10566) lt!348884)))

(declare-fun bm!61597 () Bool)

(assert (=> bm!61597 (= call!61602 (isEmpty!6225 s!10566))))

(declare-fun b!970861 () Bool)

(assert (=> b!970861 (= e!625868 (not (= (head!1785 s!10566) (c!158255 r!15766))))))

(declare-fun b!970862 () Bool)

(declare-fun res!441311 () Bool)

(assert (=> b!970862 (=> res!441311 e!625868)))

(assert (=> b!970862 (= res!441311 (not (isEmpty!6225 (tail!1347 s!10566))))))

(declare-fun b!970863 () Bool)

(assert (=> b!970863 (= e!625869 e!625871)))

(declare-fun c!158317 () Bool)

(assert (=> b!970863 (= c!158317 (is-EmptyLang!2706 r!15766))))

(declare-fun b!970864 () Bool)

(assert (=> b!970864 (= e!625867 e!625872)))

(declare-fun res!441315 () Bool)

(assert (=> b!970864 (=> (not res!441315) (not e!625872))))

(assert (=> b!970864 (= res!441315 (not lt!348884))))

(declare-fun b!970865 () Bool)

(assert (=> b!970865 (= e!625866 (matchR!1242 (derivativeStep!632 r!15766 (head!1785 s!10566)) (tail!1347 s!10566)))))

(declare-fun b!970866 () Bool)

(assert (=> b!970866 (= e!625870 (= (head!1785 s!10566) (c!158255 r!15766)))))

(declare-fun b!970867 () Bool)

(assert (=> b!970867 (= e!625869 (= lt!348884 call!61602))))

(declare-fun b!970868 () Bool)

(declare-fun res!441318 () Bool)

(assert (=> b!970868 (=> (not res!441318) (not e!625870))))

(assert (=> b!970868 (= res!441318 (not call!61602))))

(declare-fun b!970869 () Bool)

(assert (=> b!970869 (= e!625866 (nullable!826 r!15766))))

(assert (= (and d!286587 c!158318) b!970869))

(assert (= (and d!286587 (not c!158318)) b!970865))

(assert (= (and d!286587 c!158319) b!970867))

(assert (= (and d!286587 (not c!158319)) b!970863))

(assert (= (and b!970863 c!158317) b!970858))

(assert (= (and b!970863 (not c!158317)) b!970859))

(assert (= (and b!970859 (not res!441317)) b!970857))

(assert (= (and b!970857 res!441312) b!970868))

(assert (= (and b!970868 res!441318) b!970856))

(assert (= (and b!970856 res!441314) b!970866))

(assert (= (and b!970857 (not res!441313)) b!970864))

(assert (= (and b!970864 res!441315) b!970860))

(assert (= (and b!970860 (not res!441316)) b!970862))

(assert (= (and b!970862 (not res!441311)) b!970861))

(assert (= (or b!970867 b!970860 b!970868) bm!61597))

(assert (=> b!970866 m!1174873))

(assert (=> b!970856 m!1174875))

(assert (=> b!970856 m!1174875))

(assert (=> b!970856 m!1174877))

(assert (=> b!970861 m!1174873))

(assert (=> b!970862 m!1174875))

(assert (=> b!970862 m!1174875))

(assert (=> b!970862 m!1174877))

(assert (=> b!970865 m!1174873))

(assert (=> b!970865 m!1174873))

(declare-fun m!1174927 () Bool)

(assert (=> b!970865 m!1174927))

(assert (=> b!970865 m!1174875))

(assert (=> b!970865 m!1174927))

(assert (=> b!970865 m!1174875))

(declare-fun m!1174929 () Bool)

(assert (=> b!970865 m!1174929))

(assert (=> d!286587 m!1174781))

(assert (=> d!286587 m!1174769))

(assert (=> b!970869 m!1174893))

(assert (=> bm!61597 m!1174781))

(assert (=> b!970564 d!286587))

(declare-fun d!286589 () Bool)

(assert (=> d!286589 (= (matchR!1242 r!15766 s!10566) (matchRSpec!505 r!15766 s!10566))))

(declare-fun lt!348888 () Unit!15071)

(declare-fun choose!6140 (Regex!2706 List!9936) Unit!15071)

(assert (=> d!286589 (= lt!348888 (choose!6140 r!15766 s!10566))))

(assert (=> d!286589 (validRegex!1175 r!15766)))

(assert (=> d!286589 (= (mainMatchTheorem!505 r!15766 s!10566) lt!348888)))

(declare-fun bs!242395 () Bool)

(assert (= bs!242395 d!286589))

(assert (=> bs!242395 m!1174787))

(assert (=> bs!242395 m!1174785))

(declare-fun m!1174935 () Bool)

(assert (=> bs!242395 m!1174935))

(assert (=> bs!242395 m!1174769))

(assert (=> b!970564 d!286589))

(declare-fun b!970880 () Bool)

(declare-fun e!625875 () Bool)

(assert (=> b!970880 (= e!625875 tp_is_empty!5055)))

(declare-fun b!970882 () Bool)

(declare-fun tp!297380 () Bool)

(assert (=> b!970882 (= e!625875 tp!297380)))

(declare-fun b!970883 () Bool)

(declare-fun tp!297382 () Bool)

(declare-fun tp!297381 () Bool)

(assert (=> b!970883 (= e!625875 (and tp!297382 tp!297381))))

(declare-fun b!970881 () Bool)

(declare-fun tp!297379 () Bool)

(declare-fun tp!297383 () Bool)

(assert (=> b!970881 (= e!625875 (and tp!297379 tp!297383))))

(assert (=> b!970565 (= tp!297349 e!625875)))

(assert (= (and b!970565 (is-ElementMatch!2706 (reg!3035 r!15766))) b!970880))

(assert (= (and b!970565 (is-Concat!4539 (reg!3035 r!15766))) b!970881))

(assert (= (and b!970565 (is-Star!2706 (reg!3035 r!15766))) b!970882))

(assert (= (and b!970565 (is-Union!2706 (reg!3035 r!15766))) b!970883))

(declare-fun b!970888 () Bool)

(declare-fun e!625878 () Bool)

(declare-fun tp!297386 () Bool)

(assert (=> b!970888 (= e!625878 (and tp_is_empty!5055 tp!297386))))

(assert (=> b!970566 (= tp!297347 e!625878)))

(assert (= (and b!970566 (is-Cons!9920 (t!100982 s!10566))) b!970888))

(declare-fun b!970889 () Bool)

(declare-fun e!625879 () Bool)

(assert (=> b!970889 (= e!625879 tp_is_empty!5055)))

(declare-fun b!970891 () Bool)

(declare-fun tp!297388 () Bool)

(assert (=> b!970891 (= e!625879 tp!297388)))

(declare-fun b!970892 () Bool)

(declare-fun tp!297390 () Bool)

(declare-fun tp!297389 () Bool)

(assert (=> b!970892 (= e!625879 (and tp!297390 tp!297389))))

(declare-fun b!970890 () Bool)

(declare-fun tp!297387 () Bool)

(declare-fun tp!297391 () Bool)

(assert (=> b!970890 (= e!625879 (and tp!297387 tp!297391))))

(assert (=> b!970567 (= tp!297346 e!625879)))

(assert (= (and b!970567 (is-ElementMatch!2706 (regOne!5925 r!15766))) b!970889))

(assert (= (and b!970567 (is-Concat!4539 (regOne!5925 r!15766))) b!970890))

(assert (= (and b!970567 (is-Star!2706 (regOne!5925 r!15766))) b!970891))

(assert (= (and b!970567 (is-Union!2706 (regOne!5925 r!15766))) b!970892))

(declare-fun b!970893 () Bool)

(declare-fun e!625880 () Bool)

(assert (=> b!970893 (= e!625880 tp_is_empty!5055)))

(declare-fun b!970895 () Bool)

(declare-fun tp!297393 () Bool)

(assert (=> b!970895 (= e!625880 tp!297393)))

(declare-fun b!970896 () Bool)

(declare-fun tp!297395 () Bool)

(declare-fun tp!297394 () Bool)

(assert (=> b!970896 (= e!625880 (and tp!297395 tp!297394))))

(declare-fun b!970894 () Bool)

(declare-fun tp!297392 () Bool)

(declare-fun tp!297396 () Bool)

(assert (=> b!970894 (= e!625880 (and tp!297392 tp!297396))))

(assert (=> b!970567 (= tp!297350 e!625880)))

(assert (= (and b!970567 (is-ElementMatch!2706 (regTwo!5925 r!15766))) b!970893))

(assert (= (and b!970567 (is-Concat!4539 (regTwo!5925 r!15766))) b!970894))

(assert (= (and b!970567 (is-Star!2706 (regTwo!5925 r!15766))) b!970895))

(assert (= (and b!970567 (is-Union!2706 (regTwo!5925 r!15766))) b!970896))

(declare-fun b!970897 () Bool)

(declare-fun e!625881 () Bool)

(assert (=> b!970897 (= e!625881 tp_is_empty!5055)))

(declare-fun b!970899 () Bool)

(declare-fun tp!297398 () Bool)

(assert (=> b!970899 (= e!625881 tp!297398)))

(declare-fun b!970900 () Bool)

(declare-fun tp!297400 () Bool)

(declare-fun tp!297399 () Bool)

(assert (=> b!970900 (= e!625881 (and tp!297400 tp!297399))))

(declare-fun b!970898 () Bool)

(declare-fun tp!297397 () Bool)

(declare-fun tp!297401 () Bool)

(assert (=> b!970898 (= e!625881 (and tp!297397 tp!297401))))

(assert (=> b!970563 (= tp!297345 e!625881)))

(assert (= (and b!970563 (is-ElementMatch!2706 (regOne!5924 r!15766))) b!970897))

(assert (= (and b!970563 (is-Concat!4539 (regOne!5924 r!15766))) b!970898))

(assert (= (and b!970563 (is-Star!2706 (regOne!5924 r!15766))) b!970899))

(assert (= (and b!970563 (is-Union!2706 (regOne!5924 r!15766))) b!970900))

(declare-fun b!970901 () Bool)

(declare-fun e!625882 () Bool)

(assert (=> b!970901 (= e!625882 tp_is_empty!5055)))

(declare-fun b!970903 () Bool)

(declare-fun tp!297403 () Bool)

(assert (=> b!970903 (= e!625882 tp!297403)))

(declare-fun b!970904 () Bool)

(declare-fun tp!297405 () Bool)

(declare-fun tp!297404 () Bool)

(assert (=> b!970904 (= e!625882 (and tp!297405 tp!297404))))

(declare-fun b!970902 () Bool)

(declare-fun tp!297402 () Bool)

(declare-fun tp!297406 () Bool)

(assert (=> b!970902 (= e!625882 (and tp!297402 tp!297406))))

(assert (=> b!970563 (= tp!297348 e!625882)))

(assert (= (and b!970563 (is-ElementMatch!2706 (regTwo!5924 r!15766))) b!970901))

(assert (= (and b!970563 (is-Concat!4539 (regTwo!5924 r!15766))) b!970902))

(assert (= (and b!970563 (is-Star!2706 (regTwo!5924 r!15766))) b!970903))

(assert (= (and b!970563 (is-Union!2706 (regTwo!5924 r!15766))) b!970904))

(push 1)

(assert (not d!286573))

(assert (not b!970866))

(assert (not d!286577))

(assert (not b!970891))

(assert (not b!970904))

(assert (not b!970685))

(assert (not b!970683))

(assert tp_is_empty!5055)

(assert (not bm!61597))

(assert (not b!970881))

(assert (not b!970865))

(assert (not b!970636))

(assert (not b!970892))

(assert (not b!970902))

(assert (not d!286567))

(assert (not bm!61563))

(assert (not b!970898))

(assert (not d!286561))

(assert (not b!970883))

(assert (not b!970890))

(assert (not b!970681))

(assert (not d!286579))

(assert (not d!286565))

(assert (not bm!61575))

(assert (not b!970844))

(assert (not b!970849))

(assert (not b!970861))

(assert (not b!970677))

(assert (not b!970882))

(assert (not d!286587))

(assert (not b!970735))

(assert (not d!286589))

(assert (not b!970888))

(assert (not b!970745))

(assert (not b!970856))

(assert (not b!970798))

(assert (not b!970896))

(assert (not b!970740))

(assert (not bm!61562))

(assert (not d!286581))

(assert (not b!970903))

(assert (not b!970741))

(assert (not b!970899))

(assert (not b!970894))

(assert (not b!970900))

(assert (not b!970862))

(assert (not d!286575))

(assert (not b!970684))

(assert (not b!970869))

(assert (not b!970895))

(assert (not b!970679))

(assert (not b!970748))

(assert (not bm!61588))

(assert (not bm!61595))

(assert (not b!970744))

(assert (not bm!61590))

(assert (not bm!61596))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

