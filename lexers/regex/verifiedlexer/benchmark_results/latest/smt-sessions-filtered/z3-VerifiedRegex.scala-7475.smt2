; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!396166 () Bool)

(assert start!396166)

(declare-fun b!4158818 () Bool)

(declare-fun e!2581051 () Bool)

(declare-fun e!2581050 () Bool)

(assert (=> b!4158818 (= e!2581051 (not e!2581050))))

(declare-fun res!1703452 () Bool)

(assert (=> b!4158818 (=> (not res!1703452) (not e!2581050))))

(declare-datatypes ((B!2677 0))(
  ( (B!2678 (val!14630 Int)) )
))
(declare-datatypes ((List!45507 0))(
  ( (Nil!45383) (Cons!45383 (h!50803 B!2677) (t!343538 List!45507)) )
))
(declare-fun l!3062 () List!45507)

(declare-fun e1!32 () B!2677)

(declare-fun contains!9241 (List!45507 B!2677) Bool)

(assert (=> b!4158818 (= res!1703452 (contains!9241 (t!343538 l!3062) e1!32))))

(declare-fun lt!1482369 () Int)

(declare-fun lt!1482368 () List!45507)

(declare-fun e2!32 () B!2677)

(declare-fun getIndex!862 (List!45507 B!2677) Int)

(assert (=> b!4158818 (= lt!1482369 (+ 1 (getIndex!862 lt!1482368 e2!32)))))

(declare-datatypes ((Unit!64551 0))(
  ( (Unit!64552) )
))
(declare-fun lt!1482365 () Unit!64551)

(declare-fun lemmaNotHeadSoGetIndexTailIsMinusOne!14 (List!45507 B!2677) Unit!64551)

(assert (=> b!4158818 (= lt!1482365 (lemmaNotHeadSoGetIndexTailIsMinusOne!14 l!3062 e2!32))))

(declare-fun lt!1482367 () Int)

(assert (=> b!4158818 (= lt!1482367 (+ 1 (getIndex!862 lt!1482368 e1!32)))))

(declare-fun lt!1482366 () Unit!64551)

(assert (=> b!4158818 (= lt!1482366 (lemmaNotHeadSoGetIndexTailIsMinusOne!14 l!3062 e1!32))))

(assert (=> b!4158818 (contains!9241 lt!1482368 e1!32)))

(declare-fun tail!6667 (List!45507) List!45507)

(assert (=> b!4158818 (= lt!1482368 (tail!6667 l!3062))))

(declare-fun lt!1482370 () Unit!64551)

(declare-fun lemmaContainsAndNotHdThenTlContains!18 (List!45507 B!2677) Unit!64551)

(assert (=> b!4158818 (= lt!1482370 (lemmaContainsAndNotHdThenTlContains!18 l!3062 e1!32))))

(declare-fun b!4158819 () Bool)

(assert (=> b!4158819 (= e!2581050 (contains!9241 (t!343538 l!3062) e2!32))))

(declare-fun b!4158820 () Bool)

(declare-fun res!1703456 () Bool)

(declare-fun e!2581052 () Bool)

(assert (=> b!4158820 (=> (not res!1703456) (not e!2581052))))

(assert (=> b!4158820 (= res!1703456 (not (= e1!32 e2!32)))))

(declare-fun b!4158821 () Bool)

(declare-fun e!2581049 () Bool)

(declare-fun tp_is_empty!21725 () Bool)

(declare-fun tp!1268966 () Bool)

(assert (=> b!4158821 (= e!2581049 (and tp_is_empty!21725 tp!1268966))))

(declare-fun b!4158822 () Bool)

(declare-fun res!1703455 () Bool)

(assert (=> b!4158822 (=> (not res!1703455) (not e!2581052))))

(assert (=> b!4158822 (= res!1703455 (contains!9241 l!3062 e2!32))))

(declare-fun b!4158817 () Bool)

(assert (=> b!4158817 (= e!2581052 e!2581051)))

(declare-fun res!1703454 () Bool)

(assert (=> b!4158817 (=> (not res!1703454) (not e!2581051))))

(get-info :version)

(assert (=> b!4158817 (= res!1703454 (and (< lt!1482367 lt!1482369) (or (not ((_ is Cons!45383) l!3062)) (not (= (h!50803 l!3062) e1!32))) ((_ is Cons!45383) l!3062) (not (= (h!50803 l!3062) e1!32))))))

(assert (=> b!4158817 (= lt!1482369 (getIndex!862 l!3062 e2!32))))

(assert (=> b!4158817 (= lt!1482367 (getIndex!862 l!3062 e1!32))))

(declare-fun res!1703453 () Bool)

(assert (=> start!396166 (=> (not res!1703453) (not e!2581052))))

(assert (=> start!396166 (= res!1703453 (contains!9241 l!3062 e1!32))))

(assert (=> start!396166 e!2581052))

(assert (=> start!396166 e!2581049))

(assert (=> start!396166 tp_is_empty!21725))

(assert (= (and start!396166 res!1703453) b!4158822))

(assert (= (and b!4158822 res!1703455) b!4158820))

(assert (= (and b!4158820 res!1703456) b!4158817))

(assert (= (and b!4158817 res!1703454) b!4158818))

(assert (= (and b!4158818 res!1703452) b!4158819))

(assert (= (and start!396166 ((_ is Cons!45383) l!3062)) b!4158821))

(declare-fun m!4752563 () Bool)

(assert (=> b!4158822 m!4752563))

(declare-fun m!4752565 () Bool)

(assert (=> b!4158817 m!4752565))

(declare-fun m!4752567 () Bool)

(assert (=> b!4158817 m!4752567))

(declare-fun m!4752569 () Bool)

(assert (=> start!396166 m!4752569))

(declare-fun m!4752571 () Bool)

(assert (=> b!4158818 m!4752571))

(declare-fun m!4752573 () Bool)

(assert (=> b!4158818 m!4752573))

(declare-fun m!4752575 () Bool)

(assert (=> b!4158818 m!4752575))

(declare-fun m!4752577 () Bool)

(assert (=> b!4158818 m!4752577))

(declare-fun m!4752579 () Bool)

(assert (=> b!4158818 m!4752579))

(declare-fun m!4752581 () Bool)

(assert (=> b!4158818 m!4752581))

(declare-fun m!4752583 () Bool)

(assert (=> b!4158818 m!4752583))

(declare-fun m!4752585 () Bool)

(assert (=> b!4158818 m!4752585))

(declare-fun m!4752587 () Bool)

(assert (=> b!4158819 m!4752587))

(check-sat (not start!396166) (not b!4158822) (not b!4158821) (not b!4158817) (not b!4158819) tp_is_empty!21725 (not b!4158818))
(check-sat)
(get-model)

(declare-fun d!1229642 () Bool)

(declare-fun lt!1482376 () Int)

(assert (=> d!1229642 (>= lt!1482376 0)))

(declare-fun e!2581064 () Int)

(assert (=> d!1229642 (= lt!1482376 e!2581064)))

(declare-fun c!711728 () Bool)

(assert (=> d!1229642 (= c!711728 (and ((_ is Cons!45383) l!3062) (= (h!50803 l!3062) e2!32)))))

(assert (=> d!1229642 (contains!9241 l!3062 e2!32)))

(assert (=> d!1229642 (= (getIndex!862 l!3062 e2!32) lt!1482376)))

(declare-fun b!4158840 () Bool)

(declare-fun e!2581065 () Int)

(assert (=> b!4158840 (= e!2581065 (- 1))))

(declare-fun b!4158838 () Bool)

(assert (=> b!4158838 (= e!2581064 e!2581065)))

(declare-fun c!711729 () Bool)

(assert (=> b!4158838 (= c!711729 (and ((_ is Cons!45383) l!3062) (not (= (h!50803 l!3062) e2!32))))))

(declare-fun b!4158837 () Bool)

(assert (=> b!4158837 (= e!2581064 0)))

(declare-fun b!4158839 () Bool)

(assert (=> b!4158839 (= e!2581065 (+ 1 (getIndex!862 (t!343538 l!3062) e2!32)))))

(assert (= (and d!1229642 c!711728) b!4158837))

(assert (= (and d!1229642 (not c!711728)) b!4158838))

(assert (= (and b!4158838 c!711729) b!4158839))

(assert (= (and b!4158838 (not c!711729)) b!4158840))

(assert (=> d!1229642 m!4752563))

(declare-fun m!4752593 () Bool)

(assert (=> b!4158839 m!4752593))

(assert (=> b!4158817 d!1229642))

(declare-fun d!1229646 () Bool)

(declare-fun lt!1482379 () Int)

(assert (=> d!1229646 (>= lt!1482379 0)))

(declare-fun e!2581069 () Int)

(assert (=> d!1229646 (= lt!1482379 e!2581069)))

(declare-fun c!711732 () Bool)

(assert (=> d!1229646 (= c!711732 (and ((_ is Cons!45383) l!3062) (= (h!50803 l!3062) e1!32)))))

(assert (=> d!1229646 (contains!9241 l!3062 e1!32)))

(assert (=> d!1229646 (= (getIndex!862 l!3062 e1!32) lt!1482379)))

(declare-fun b!4158848 () Bool)

(declare-fun e!2581070 () Int)

(assert (=> b!4158848 (= e!2581070 (- 1))))

(declare-fun b!4158846 () Bool)

(assert (=> b!4158846 (= e!2581069 e!2581070)))

(declare-fun c!711733 () Bool)

(assert (=> b!4158846 (= c!711733 (and ((_ is Cons!45383) l!3062) (not (= (h!50803 l!3062) e1!32))))))

(declare-fun b!4158845 () Bool)

(assert (=> b!4158845 (= e!2581069 0)))

(declare-fun b!4158847 () Bool)

(assert (=> b!4158847 (= e!2581070 (+ 1 (getIndex!862 (t!343538 l!3062) e1!32)))))

(assert (= (and d!1229646 c!711732) b!4158845))

(assert (= (and d!1229646 (not c!711732)) b!4158846))

(assert (= (and b!4158846 c!711733) b!4158847))

(assert (= (and b!4158846 (not c!711733)) b!4158848))

(assert (=> d!1229646 m!4752569))

(declare-fun m!4752595 () Bool)

(assert (=> b!4158847 m!4752595))

(assert (=> b!4158817 d!1229646))

(declare-fun d!1229648 () Bool)

(declare-fun lt!1482384 () Bool)

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!7032 (List!45507) (InoxSet B!2677))

(assert (=> d!1229648 (= lt!1482384 (select (content!7032 l!3062) e2!32))))

(declare-fun e!2581082 () Bool)

(assert (=> d!1229648 (= lt!1482384 e!2581082)))

(declare-fun res!1703469 () Bool)

(assert (=> d!1229648 (=> (not res!1703469) (not e!2581082))))

(assert (=> d!1229648 (= res!1703469 ((_ is Cons!45383) l!3062))))

(assert (=> d!1229648 (= (contains!9241 l!3062 e2!32) lt!1482384)))

(declare-fun b!4158863 () Bool)

(declare-fun e!2581081 () Bool)

(assert (=> b!4158863 (= e!2581082 e!2581081)))

(declare-fun res!1703470 () Bool)

(assert (=> b!4158863 (=> res!1703470 e!2581081)))

(assert (=> b!4158863 (= res!1703470 (= (h!50803 l!3062) e2!32))))

(declare-fun b!4158864 () Bool)

(assert (=> b!4158864 (= e!2581081 (contains!9241 (t!343538 l!3062) e2!32))))

(assert (= (and d!1229648 res!1703469) b!4158863))

(assert (= (and b!4158863 (not res!1703470)) b!4158864))

(declare-fun m!4752605 () Bool)

(assert (=> d!1229648 m!4752605))

(declare-fun m!4752607 () Bool)

(assert (=> d!1229648 m!4752607))

(assert (=> b!4158864 m!4752587))

(assert (=> b!4158822 d!1229648))

(declare-fun d!1229654 () Bool)

(declare-fun lt!1482385 () Bool)

(assert (=> d!1229654 (= lt!1482385 (select (content!7032 (t!343538 l!3062)) e2!32))))

(declare-fun e!2581085 () Bool)

(assert (=> d!1229654 (= lt!1482385 e!2581085)))

(declare-fun res!1703471 () Bool)

(assert (=> d!1229654 (=> (not res!1703471) (not e!2581085))))

(assert (=> d!1229654 (= res!1703471 ((_ is Cons!45383) (t!343538 l!3062)))))

(assert (=> d!1229654 (= (contains!9241 (t!343538 l!3062) e2!32) lt!1482385)))

(declare-fun b!4158865 () Bool)

(declare-fun e!2581084 () Bool)

(assert (=> b!4158865 (= e!2581085 e!2581084)))

(declare-fun res!1703472 () Bool)

(assert (=> b!4158865 (=> res!1703472 e!2581084)))

(assert (=> b!4158865 (= res!1703472 (= (h!50803 (t!343538 l!3062)) e2!32))))

(declare-fun b!4158866 () Bool)

(assert (=> b!4158866 (= e!2581084 (contains!9241 (t!343538 (t!343538 l!3062)) e2!32))))

(assert (= (and d!1229654 res!1703471) b!4158865))

(assert (= (and b!4158865 (not res!1703472)) b!4158866))

(declare-fun m!4752609 () Bool)

(assert (=> d!1229654 m!4752609))

(declare-fun m!4752611 () Bool)

(assert (=> d!1229654 m!4752611))

(declare-fun m!4752613 () Bool)

(assert (=> b!4158866 m!4752613))

(assert (=> b!4158819 d!1229654))

(declare-fun d!1229656 () Bool)

(declare-fun lt!1482388 () Bool)

(assert (=> d!1229656 (= lt!1482388 (select (content!7032 l!3062) e1!32))))

(declare-fun e!2581087 () Bool)

(assert (=> d!1229656 (= lt!1482388 e!2581087)))

(declare-fun res!1703473 () Bool)

(assert (=> d!1229656 (=> (not res!1703473) (not e!2581087))))

(assert (=> d!1229656 (= res!1703473 ((_ is Cons!45383) l!3062))))

(assert (=> d!1229656 (= (contains!9241 l!3062 e1!32) lt!1482388)))

(declare-fun b!4158867 () Bool)

(declare-fun e!2581086 () Bool)

(assert (=> b!4158867 (= e!2581087 e!2581086)))

(declare-fun res!1703474 () Bool)

(assert (=> b!4158867 (=> res!1703474 e!2581086)))

(assert (=> b!4158867 (= res!1703474 (= (h!50803 l!3062) e1!32))))

(declare-fun b!4158868 () Bool)

(assert (=> b!4158868 (= e!2581086 (contains!9241 (t!343538 l!3062) e1!32))))

(assert (= (and d!1229656 res!1703473) b!4158867))

(assert (= (and b!4158867 (not res!1703474)) b!4158868))

(assert (=> d!1229656 m!4752605))

(declare-fun m!4752615 () Bool)

(assert (=> d!1229656 m!4752615))

(assert (=> b!4158868 m!4752577))

(assert (=> start!396166 d!1229656))

(declare-fun d!1229658 () Bool)

(assert (=> d!1229658 (contains!9241 (tail!6667 l!3062) e1!32)))

(declare-fun lt!1482393 () Unit!64551)

(declare-fun choose!25473 (List!45507 B!2677) Unit!64551)

(assert (=> d!1229658 (= lt!1482393 (choose!25473 l!3062 e1!32))))

(assert (=> d!1229658 (contains!9241 l!3062 e1!32)))

(assert (=> d!1229658 (= (lemmaContainsAndNotHdThenTlContains!18 l!3062 e1!32) lt!1482393)))

(declare-fun bs!595593 () Bool)

(assert (= bs!595593 d!1229658))

(assert (=> bs!595593 m!4752579))

(assert (=> bs!595593 m!4752579))

(declare-fun m!4752627 () Bool)

(assert (=> bs!595593 m!4752627))

(declare-fun m!4752629 () Bool)

(assert (=> bs!595593 m!4752629))

(assert (=> bs!595593 m!4752569))

(assert (=> b!4158818 d!1229658))

(declare-fun d!1229666 () Bool)

(declare-fun lt!1482394 () Int)

(assert (=> d!1229666 (>= lt!1482394 0)))

(declare-fun e!2581091 () Int)

(assert (=> d!1229666 (= lt!1482394 e!2581091)))

(declare-fun c!711738 () Bool)

(assert (=> d!1229666 (= c!711738 (and ((_ is Cons!45383) lt!1482368) (= (h!50803 lt!1482368) e2!32)))))

(assert (=> d!1229666 (contains!9241 lt!1482368 e2!32)))

(assert (=> d!1229666 (= (getIndex!862 lt!1482368 e2!32) lt!1482394)))

(declare-fun b!4158874 () Bool)

(declare-fun e!2581092 () Int)

(assert (=> b!4158874 (= e!2581092 (- 1))))

(declare-fun b!4158872 () Bool)

(assert (=> b!4158872 (= e!2581091 e!2581092)))

(declare-fun c!711739 () Bool)

(assert (=> b!4158872 (= c!711739 (and ((_ is Cons!45383) lt!1482368) (not (= (h!50803 lt!1482368) e2!32))))))

(declare-fun b!4158871 () Bool)

(assert (=> b!4158871 (= e!2581091 0)))

(declare-fun b!4158873 () Bool)

(assert (=> b!4158873 (= e!2581092 (+ 1 (getIndex!862 (t!343538 lt!1482368) e2!32)))))

(assert (= (and d!1229666 c!711738) b!4158871))

(assert (= (and d!1229666 (not c!711738)) b!4158872))

(assert (= (and b!4158872 c!711739) b!4158873))

(assert (= (and b!4158872 (not c!711739)) b!4158874))

(declare-fun m!4752631 () Bool)

(assert (=> d!1229666 m!4752631))

(declare-fun m!4752633 () Bool)

(assert (=> b!4158873 m!4752633))

(assert (=> b!4158818 d!1229666))

(declare-fun d!1229668 () Bool)

(declare-fun lt!1482395 () Bool)

(assert (=> d!1229668 (= lt!1482395 (select (content!7032 (t!343538 l!3062)) e1!32))))

(declare-fun e!2581094 () Bool)

(assert (=> d!1229668 (= lt!1482395 e!2581094)))

(declare-fun res!1703477 () Bool)

(assert (=> d!1229668 (=> (not res!1703477) (not e!2581094))))

(assert (=> d!1229668 (= res!1703477 ((_ is Cons!45383) (t!343538 l!3062)))))

(assert (=> d!1229668 (= (contains!9241 (t!343538 l!3062) e1!32) lt!1482395)))

(declare-fun b!4158875 () Bool)

(declare-fun e!2581093 () Bool)

(assert (=> b!4158875 (= e!2581094 e!2581093)))

(declare-fun res!1703478 () Bool)

(assert (=> b!4158875 (=> res!1703478 e!2581093)))

(assert (=> b!4158875 (= res!1703478 (= (h!50803 (t!343538 l!3062)) e1!32))))

(declare-fun b!4158876 () Bool)

(assert (=> b!4158876 (= e!2581093 (contains!9241 (t!343538 (t!343538 l!3062)) e1!32))))

(assert (= (and d!1229668 res!1703477) b!4158875))

(assert (= (and b!4158875 (not res!1703478)) b!4158876))

(assert (=> d!1229668 m!4752609))

(declare-fun m!4752635 () Bool)

(assert (=> d!1229668 m!4752635))

(declare-fun m!4752637 () Bool)

(assert (=> b!4158876 m!4752637))

(assert (=> b!4158818 d!1229668))

(declare-fun d!1229670 () Bool)

(declare-fun lt!1482398 () Int)

(assert (=> d!1229670 (>= lt!1482398 0)))

(declare-fun e!2581096 () Int)

(assert (=> d!1229670 (= lt!1482398 e!2581096)))

(declare-fun c!711740 () Bool)

(assert (=> d!1229670 (= c!711740 (and ((_ is Cons!45383) lt!1482368) (= (h!50803 lt!1482368) e1!32)))))

(assert (=> d!1229670 (contains!9241 lt!1482368 e1!32)))

(assert (=> d!1229670 (= (getIndex!862 lt!1482368 e1!32) lt!1482398)))

(declare-fun b!4158880 () Bool)

(declare-fun e!2581097 () Int)

(assert (=> b!4158880 (= e!2581097 (- 1))))

(declare-fun b!4158878 () Bool)

(assert (=> b!4158878 (= e!2581096 e!2581097)))

(declare-fun c!711741 () Bool)

(assert (=> b!4158878 (= c!711741 (and ((_ is Cons!45383) lt!1482368) (not (= (h!50803 lt!1482368) e1!32))))))

(declare-fun b!4158877 () Bool)

(assert (=> b!4158877 (= e!2581096 0)))

(declare-fun b!4158879 () Bool)

(assert (=> b!4158879 (= e!2581097 (+ 1 (getIndex!862 (t!343538 lt!1482368) e1!32)))))

(assert (= (and d!1229670 c!711740) b!4158877))

(assert (= (and d!1229670 (not c!711740)) b!4158878))

(assert (= (and b!4158878 c!711741) b!4158879))

(assert (= (and b!4158878 (not c!711741)) b!4158880))

(assert (=> d!1229670 m!4752573))

(declare-fun m!4752639 () Bool)

(assert (=> b!4158879 m!4752639))

(assert (=> b!4158818 d!1229670))

(declare-fun d!1229672 () Bool)

(assert (=> d!1229672 (= (tail!6667 l!3062) (t!343538 l!3062))))

(assert (=> b!4158818 d!1229672))

(declare-fun d!1229674 () Bool)

(assert (=> d!1229674 (= (getIndex!862 l!3062 e1!32) (+ (getIndex!862 (tail!6667 l!3062) e1!32) 1))))

(declare-fun lt!1482408 () Unit!64551)

(declare-fun choose!25475 (List!45507 B!2677) Unit!64551)

(assert (=> d!1229674 (= lt!1482408 (choose!25475 l!3062 e1!32))))

(assert (=> d!1229674 (contains!9241 l!3062 e1!32)))

(assert (=> d!1229674 (= (lemmaNotHeadSoGetIndexTailIsMinusOne!14 l!3062 e1!32) lt!1482408)))

(declare-fun bs!595596 () Bool)

(assert (= bs!595596 d!1229674))

(assert (=> bs!595596 m!4752567))

(assert (=> bs!595596 m!4752569))

(assert (=> bs!595596 m!4752579))

(declare-fun m!4752663 () Bool)

(assert (=> bs!595596 m!4752663))

(assert (=> bs!595596 m!4752579))

(declare-fun m!4752665 () Bool)

(assert (=> bs!595596 m!4752665))

(assert (=> b!4158818 d!1229674))

(declare-fun d!1229688 () Bool)

(declare-fun lt!1482409 () Bool)

(assert (=> d!1229688 (= lt!1482409 (select (content!7032 lt!1482368) e1!32))))

(declare-fun e!2581113 () Bool)

(assert (=> d!1229688 (= lt!1482409 e!2581113)))

(declare-fun res!1703483 () Bool)

(assert (=> d!1229688 (=> (not res!1703483) (not e!2581113))))

(assert (=> d!1229688 (= res!1703483 ((_ is Cons!45383) lt!1482368))))

(assert (=> d!1229688 (= (contains!9241 lt!1482368 e1!32) lt!1482409)))

(declare-fun b!4158902 () Bool)

(declare-fun e!2581112 () Bool)

(assert (=> b!4158902 (= e!2581113 e!2581112)))

(declare-fun res!1703484 () Bool)

(assert (=> b!4158902 (=> res!1703484 e!2581112)))

(assert (=> b!4158902 (= res!1703484 (= (h!50803 lt!1482368) e1!32))))

(declare-fun b!4158903 () Bool)

(assert (=> b!4158903 (= e!2581112 (contains!9241 (t!343538 lt!1482368) e1!32))))

(assert (= (and d!1229688 res!1703483) b!4158902))

(assert (= (and b!4158902 (not res!1703484)) b!4158903))

(declare-fun m!4752667 () Bool)

(assert (=> d!1229688 m!4752667))

(declare-fun m!4752669 () Bool)

(assert (=> d!1229688 m!4752669))

(declare-fun m!4752671 () Bool)

(assert (=> b!4158903 m!4752671))

(assert (=> b!4158818 d!1229688))

(declare-fun d!1229690 () Bool)

(assert (=> d!1229690 (= (getIndex!862 l!3062 e2!32) (+ (getIndex!862 (tail!6667 l!3062) e2!32) 1))))

(declare-fun lt!1482410 () Unit!64551)

(assert (=> d!1229690 (= lt!1482410 (choose!25475 l!3062 e2!32))))

(assert (=> d!1229690 (contains!9241 l!3062 e2!32)))

(assert (=> d!1229690 (= (lemmaNotHeadSoGetIndexTailIsMinusOne!14 l!3062 e2!32) lt!1482410)))

(declare-fun bs!595597 () Bool)

(assert (= bs!595597 d!1229690))

(assert (=> bs!595597 m!4752565))

(assert (=> bs!595597 m!4752563))

(assert (=> bs!595597 m!4752579))

(declare-fun m!4752673 () Bool)

(assert (=> bs!595597 m!4752673))

(assert (=> bs!595597 m!4752579))

(declare-fun m!4752675 () Bool)

(assert (=> bs!595597 m!4752675))

(assert (=> b!4158818 d!1229690))

(declare-fun b!4158908 () Bool)

(declare-fun e!2581116 () Bool)

(declare-fun tp!1268972 () Bool)

(assert (=> b!4158908 (= e!2581116 (and tp_is_empty!21725 tp!1268972))))

(assert (=> b!4158821 (= tp!1268966 e!2581116)))

(assert (= (and b!4158821 ((_ is Cons!45383) (t!343538 l!3062))) b!4158908))

(check-sat (not b!4158873) (not b!4158879) (not d!1229690) (not b!4158866) (not d!1229688) (not b!4158868) (not b!4158876) (not d!1229674) (not d!1229666) (not d!1229656) (not d!1229654) tp_is_empty!21725 (not b!4158864) (not d!1229668) (not b!4158903) (not d!1229670) (not b!4158847) (not b!4158908) (not b!4158839) (not d!1229646) (not d!1229642) (not d!1229658) (not d!1229648))
(check-sat)
