; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!72060 () Bool)

(assert start!72060)

(declare-fun res!569092 () Bool)

(declare-fun e!466638 () Bool)

(assert (=> start!72060 (=> (not res!569092) (not e!466638))))

(declare-datatypes ((B!1198 0))(
  ( (B!1199 (val!7681 Int)) )
))
(declare-datatypes ((tuple2!10240 0))(
  ( (tuple2!10241 (_1!5130 (_ BitVec 64)) (_2!5130 B!1198)) )
))
(declare-datatypes ((List!16041 0))(
  ( (Nil!16038) (Cons!16037 (h!17168 tuple2!10240) (t!22420 List!16041)) )
))
(declare-fun l!390 () List!16041)

(declare-fun isStrictlySorted!452 (List!16041) Bool)

(assert (=> start!72060 (= res!569092 (isStrictlySorted!452 l!390))))

(assert (=> start!72060 e!466638))

(declare-fun e!466640 () Bool)

(assert (=> start!72060 e!466640))

(declare-fun b!836331 () Bool)

(declare-fun e!466639 () Bool)

(assert (=> b!836331 (= e!466638 e!466639)))

(declare-fun res!569091 () Bool)

(assert (=> b!836331 (=> res!569091 e!466639)))

(declare-datatypes ((List!16042 0))(
  ( (Nil!16039) (Cons!16038 (h!17169 (_ BitVec 64)) (t!22421 List!16042)) )
))
(declare-fun lt!380355 () List!16042)

(declare-fun isStrictlySortedLong!0 (List!16042) Bool)

(assert (=> b!836331 (= res!569091 (not (isStrictlySortedLong!0 lt!380355)))))

(declare-fun getKeysList!5 (List!16041) List!16042)

(assert (=> b!836331 (= lt!380355 (Cons!16038 (_1!5130 (h!17168 l!390)) (getKeysList!5 (t!22420 l!390))))))

(declare-fun b!836332 () Bool)

(declare-fun length!19 (List!16042) Int)

(declare-fun length!20 (List!16041) Int)

(assert (=> b!836332 (= e!466639 (not (= (length!19 lt!380355) (length!20 l!390))))))

(declare-fun b!836333 () Bool)

(declare-fun tp_is_empty!15267 () Bool)

(declare-fun tp!47462 () Bool)

(assert (=> b!836333 (= e!466640 (and tp_is_empty!15267 tp!47462))))

(declare-fun b!836330 () Bool)

(declare-fun res!569090 () Bool)

(assert (=> b!836330 (=> (not res!569090) (not e!466638))))

(get-info :version)

(assert (=> b!836330 (= res!569090 ((_ is Cons!16037) l!390))))

(assert (= (and start!72060 res!569092) b!836330))

(assert (= (and b!836330 res!569090) b!836331))

(assert (= (and b!836331 (not res!569091)) b!836332))

(assert (= (and start!72060 ((_ is Cons!16037) l!390)) b!836333))

(declare-fun m!781673 () Bool)

(assert (=> start!72060 m!781673))

(declare-fun m!781675 () Bool)

(assert (=> b!836331 m!781675))

(declare-fun m!781677 () Bool)

(assert (=> b!836331 m!781677))

(declare-fun m!781679 () Bool)

(assert (=> b!836332 m!781679))

(declare-fun m!781681 () Bool)

(assert (=> b!836332 m!781681))

(check-sat (not b!836332) tp_is_empty!15267 (not b!836333) (not b!836331) (not start!72060))
(check-sat)
(get-model)

(declare-fun d!107515 () Bool)

(declare-fun res!569106 () Bool)

(declare-fun e!466654 () Bool)

(assert (=> d!107515 (=> res!569106 e!466654)))

(assert (=> d!107515 (= res!569106 (or ((_ is Nil!16038) l!390) ((_ is Nil!16038) (t!22420 l!390))))))

(assert (=> d!107515 (= (isStrictlySorted!452 l!390) e!466654)))

(declare-fun b!836350 () Bool)

(declare-fun e!466655 () Bool)

(assert (=> b!836350 (= e!466654 e!466655)))

(declare-fun res!569107 () Bool)

(assert (=> b!836350 (=> (not res!569107) (not e!466655))))

(assert (=> b!836350 (= res!569107 (bvslt (_1!5130 (h!17168 l!390)) (_1!5130 (h!17168 (t!22420 l!390)))))))

(declare-fun b!836351 () Bool)

(assert (=> b!836351 (= e!466655 (isStrictlySorted!452 (t!22420 l!390)))))

(assert (= (and d!107515 (not res!569106)) b!836350))

(assert (= (and b!836350 res!569107) b!836351))

(declare-fun m!781695 () Bool)

(assert (=> b!836351 m!781695))

(assert (=> start!72060 d!107515))

(declare-fun d!107521 () Bool)

(declare-fun size!22876 (List!16042) Int)

(assert (=> d!107521 (= (length!19 lt!380355) (size!22876 lt!380355))))

(declare-fun bs!23479 () Bool)

(assert (= bs!23479 d!107521))

(declare-fun m!781699 () Bool)

(assert (=> bs!23479 m!781699))

(assert (=> b!836332 d!107521))

(declare-fun d!107527 () Bool)

(declare-fun size!22877 (List!16041) Int)

(assert (=> d!107527 (= (length!20 l!390) (size!22877 l!390))))

(declare-fun bs!23480 () Bool)

(assert (= bs!23480 d!107527))

(declare-fun m!781701 () Bool)

(assert (=> bs!23480 m!781701))

(assert (=> b!836332 d!107527))

(declare-fun d!107529 () Bool)

(declare-fun res!569128 () Bool)

(declare-fun e!466676 () Bool)

(assert (=> d!107529 (=> res!569128 e!466676)))

(assert (=> d!107529 (= res!569128 (or ((_ is Nil!16039) lt!380355) ((_ is Nil!16039) (t!22421 lt!380355))))))

(assert (=> d!107529 (= (isStrictlySortedLong!0 lt!380355) e!466676)))

(declare-fun b!836372 () Bool)

(declare-fun e!466677 () Bool)

(assert (=> b!836372 (= e!466676 e!466677)))

(declare-fun res!569129 () Bool)

(assert (=> b!836372 (=> (not res!569129) (not e!466677))))

(assert (=> b!836372 (= res!569129 (bvslt (h!17169 lt!380355) (h!17169 (t!22421 lt!380355))))))

(declare-fun b!836373 () Bool)

(assert (=> b!836373 (= e!466677 (isStrictlySortedLong!0 (t!22421 lt!380355)))))

(assert (= (and d!107529 (not res!569128)) b!836372))

(assert (= (and b!836372 res!569129) b!836373))

(declare-fun m!781707 () Bool)

(assert (=> b!836373 m!781707))

(assert (=> b!836331 d!107529))

(declare-fun d!107535 () Bool)

(declare-fun e!466702 () Bool)

(assert (=> d!107535 e!466702))

(declare-fun res!569143 () Bool)

(assert (=> d!107535 (=> (not res!569143) (not e!466702))))

(declare-fun lt!380366 () List!16042)

(assert (=> d!107535 (= res!569143 (isStrictlySortedLong!0 lt!380366))))

(declare-fun e!466701 () List!16042)

(assert (=> d!107535 (= lt!380366 e!466701)))

(declare-fun c!90972 () Bool)

(assert (=> d!107535 (= c!90972 ((_ is Cons!16037) (t!22420 l!390)))))

(assert (=> d!107535 (isStrictlySorted!452 (t!22420 l!390))))

(assert (=> d!107535 (= (getKeysList!5 (t!22420 l!390)) lt!380366)))

(declare-fun b!836406 () Bool)

(assert (=> b!836406 (= e!466701 (Cons!16038 (_1!5130 (h!17168 (t!22420 l!390))) (getKeysList!5 (t!22420 (t!22420 l!390)))))))

(declare-fun b!836407 () Bool)

(assert (=> b!836407 (= e!466701 Nil!16039)))

(declare-fun b!836408 () Bool)

(assert (=> b!836408 (= e!466702 (= (length!19 lt!380366) (length!20 (t!22420 l!390))))))

(assert (= (and d!107535 c!90972) b!836406))

(assert (= (and d!107535 (not c!90972)) b!836407))

(assert (= (and d!107535 res!569143) b!836408))

(declare-fun m!781721 () Bool)

(assert (=> d!107535 m!781721))

(assert (=> d!107535 m!781695))

(declare-fun m!781723 () Bool)

(assert (=> b!836406 m!781723))

(declare-fun m!781725 () Bool)

(assert (=> b!836408 m!781725))

(declare-fun m!781727 () Bool)

(assert (=> b!836408 m!781727))

(assert (=> b!836331 d!107535))

(declare-fun b!836415 () Bool)

(declare-fun e!466707 () Bool)

(declare-fun tp!47471 () Bool)

(assert (=> b!836415 (= e!466707 (and tp_is_empty!15267 tp!47471))))

(assert (=> b!836333 (= tp!47462 e!466707)))

(assert (= (and b!836333 ((_ is Cons!16037) (t!22420 l!390))) b!836415))

(check-sat (not b!836408) (not d!107535) (not d!107527) tp_is_empty!15267 (not b!836351) (not b!836406) (not b!836373) (not d!107521) (not b!836415))
(check-sat)
(get-model)

(declare-fun d!107545 () Bool)

(assert (=> d!107545 (= (length!19 lt!380366) (size!22876 lt!380366))))

(declare-fun bs!23483 () Bool)

(assert (= bs!23483 d!107545))

(declare-fun m!781741 () Bool)

(assert (=> bs!23483 m!781741))

(assert (=> b!836408 d!107545))

(declare-fun d!107547 () Bool)

(assert (=> d!107547 (= (length!20 (t!22420 l!390)) (size!22877 (t!22420 l!390)))))

(declare-fun bs!23484 () Bool)

(assert (= bs!23484 d!107547))

(declare-fun m!781743 () Bool)

(assert (=> bs!23484 m!781743))

(assert (=> b!836408 d!107547))

(declare-fun d!107549 () Bool)

(declare-fun lt!380370 () Int)

(assert (=> d!107549 (>= lt!380370 0)))

(declare-fun e!466715 () Int)

(assert (=> d!107549 (= lt!380370 e!466715)))

(declare-fun c!90976 () Bool)

(assert (=> d!107549 (= c!90976 ((_ is Nil!16038) l!390))))

(assert (=> d!107549 (= (size!22877 l!390) lt!380370)))

(declare-fun b!836428 () Bool)

(assert (=> b!836428 (= e!466715 0)))

(declare-fun b!836429 () Bool)

(assert (=> b!836429 (= e!466715 (+ 1 (size!22877 (t!22420 l!390))))))

(assert (= (and d!107549 c!90976) b!836428))

(assert (= (and d!107549 (not c!90976)) b!836429))

(assert (=> b!836429 m!781743))

(assert (=> d!107527 d!107549))

(declare-fun d!107551 () Bool)

(declare-fun res!569147 () Bool)

(declare-fun e!466716 () Bool)

(assert (=> d!107551 (=> res!569147 e!466716)))

(assert (=> d!107551 (= res!569147 (or ((_ is Nil!16038) (t!22420 l!390)) ((_ is Nil!16038) (t!22420 (t!22420 l!390)))))))

(assert (=> d!107551 (= (isStrictlySorted!452 (t!22420 l!390)) e!466716)))

(declare-fun b!836430 () Bool)

(declare-fun e!466717 () Bool)

(assert (=> b!836430 (= e!466716 e!466717)))

(declare-fun res!569148 () Bool)

(assert (=> b!836430 (=> (not res!569148) (not e!466717))))

(assert (=> b!836430 (= res!569148 (bvslt (_1!5130 (h!17168 (t!22420 l!390))) (_1!5130 (h!17168 (t!22420 (t!22420 l!390))))))))

(declare-fun b!836431 () Bool)

(assert (=> b!836431 (= e!466717 (isStrictlySorted!452 (t!22420 (t!22420 l!390))))))

(assert (= (and d!107551 (not res!569147)) b!836430))

(assert (= (and b!836430 res!569148) b!836431))

(declare-fun m!781745 () Bool)

(assert (=> b!836431 m!781745))

(assert (=> b!836351 d!107551))

(declare-fun d!107553 () Bool)

(declare-fun res!569149 () Bool)

(declare-fun e!466718 () Bool)

(assert (=> d!107553 (=> res!569149 e!466718)))

(assert (=> d!107553 (= res!569149 (or ((_ is Nil!16039) lt!380366) ((_ is Nil!16039) (t!22421 lt!380366))))))

(assert (=> d!107553 (= (isStrictlySortedLong!0 lt!380366) e!466718)))

(declare-fun b!836432 () Bool)

(declare-fun e!466719 () Bool)

(assert (=> b!836432 (= e!466718 e!466719)))

(declare-fun res!569150 () Bool)

(assert (=> b!836432 (=> (not res!569150) (not e!466719))))

(assert (=> b!836432 (= res!569150 (bvslt (h!17169 lt!380366) (h!17169 (t!22421 lt!380366))))))

(declare-fun b!836433 () Bool)

(assert (=> b!836433 (= e!466719 (isStrictlySortedLong!0 (t!22421 lt!380366)))))

(assert (= (and d!107553 (not res!569149)) b!836432))

(assert (= (and b!836432 res!569150) b!836433))

(declare-fun m!781747 () Bool)

(assert (=> b!836433 m!781747))

(assert (=> d!107535 d!107553))

(assert (=> d!107535 d!107551))

(declare-fun d!107555 () Bool)

(declare-fun e!466721 () Bool)

(assert (=> d!107555 e!466721))

(declare-fun res!569151 () Bool)

(assert (=> d!107555 (=> (not res!569151) (not e!466721))))

(declare-fun lt!380371 () List!16042)

(assert (=> d!107555 (= res!569151 (isStrictlySortedLong!0 lt!380371))))

(declare-fun e!466720 () List!16042)

(assert (=> d!107555 (= lt!380371 e!466720)))

(declare-fun c!90977 () Bool)

(assert (=> d!107555 (= c!90977 ((_ is Cons!16037) (t!22420 (t!22420 l!390))))))

(assert (=> d!107555 (isStrictlySorted!452 (t!22420 (t!22420 l!390)))))

(assert (=> d!107555 (= (getKeysList!5 (t!22420 (t!22420 l!390))) lt!380371)))

(declare-fun b!836434 () Bool)

(assert (=> b!836434 (= e!466720 (Cons!16038 (_1!5130 (h!17168 (t!22420 (t!22420 l!390)))) (getKeysList!5 (t!22420 (t!22420 (t!22420 l!390))))))))

(declare-fun b!836435 () Bool)

(assert (=> b!836435 (= e!466720 Nil!16039)))

(declare-fun b!836436 () Bool)

(assert (=> b!836436 (= e!466721 (= (length!19 lt!380371) (length!20 (t!22420 (t!22420 l!390)))))))

(assert (= (and d!107555 c!90977) b!836434))

(assert (= (and d!107555 (not c!90977)) b!836435))

(assert (= (and d!107555 res!569151) b!836436))

(declare-fun m!781749 () Bool)

(assert (=> d!107555 m!781749))

(assert (=> d!107555 m!781745))

(declare-fun m!781751 () Bool)

(assert (=> b!836434 m!781751))

(declare-fun m!781753 () Bool)

(assert (=> b!836436 m!781753))

(declare-fun m!781755 () Bool)

(assert (=> b!836436 m!781755))

(assert (=> b!836406 d!107555))

(declare-fun d!107557 () Bool)

(declare-fun res!569152 () Bool)

(declare-fun e!466722 () Bool)

(assert (=> d!107557 (=> res!569152 e!466722)))

(assert (=> d!107557 (= res!569152 (or ((_ is Nil!16039) (t!22421 lt!380355)) ((_ is Nil!16039) (t!22421 (t!22421 lt!380355)))))))

(assert (=> d!107557 (= (isStrictlySortedLong!0 (t!22421 lt!380355)) e!466722)))

(declare-fun b!836437 () Bool)

(declare-fun e!466723 () Bool)

(assert (=> b!836437 (= e!466722 e!466723)))

(declare-fun res!569153 () Bool)

(assert (=> b!836437 (=> (not res!569153) (not e!466723))))

(assert (=> b!836437 (= res!569153 (bvslt (h!17169 (t!22421 lt!380355)) (h!17169 (t!22421 (t!22421 lt!380355)))))))

(declare-fun b!836438 () Bool)

(assert (=> b!836438 (= e!466723 (isStrictlySortedLong!0 (t!22421 (t!22421 lt!380355))))))

(assert (= (and d!107557 (not res!569152)) b!836437))

(assert (= (and b!836437 res!569153) b!836438))

(declare-fun m!781757 () Bool)

(assert (=> b!836438 m!781757))

(assert (=> b!836373 d!107557))

(declare-fun d!107559 () Bool)

(declare-fun lt!380374 () Int)

(assert (=> d!107559 (>= lt!380374 0)))

(declare-fun e!466726 () Int)

(assert (=> d!107559 (= lt!380374 e!466726)))

(declare-fun c!90980 () Bool)

(assert (=> d!107559 (= c!90980 ((_ is Nil!16039) lt!380355))))

(assert (=> d!107559 (= (size!22876 lt!380355) lt!380374)))

(declare-fun b!836443 () Bool)

(assert (=> b!836443 (= e!466726 0)))

(declare-fun b!836444 () Bool)

(assert (=> b!836444 (= e!466726 (+ 1 (size!22876 (t!22421 lt!380355))))))

(assert (= (and d!107559 c!90980) b!836443))

(assert (= (and d!107559 (not c!90980)) b!836444))

(declare-fun m!781759 () Bool)

(assert (=> b!836444 m!781759))

(assert (=> d!107521 d!107559))

(declare-fun b!836445 () Bool)

(declare-fun e!466727 () Bool)

(declare-fun tp!47475 () Bool)

(assert (=> b!836445 (= e!466727 (and tp_is_empty!15267 tp!47475))))

(assert (=> b!836415 (= tp!47471 e!466727)))

(assert (= (and b!836415 ((_ is Cons!16037) (t!22420 (t!22420 l!390)))) b!836445))

(check-sat (not d!107555) (not b!836433) (not d!107547) tp_is_empty!15267 (not b!836444) (not b!836438) (not d!107545) (not b!836434) (not b!836436) (not b!836445) (not b!836429) (not b!836431))
(check-sat)
