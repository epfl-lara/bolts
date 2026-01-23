; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!88476 () Bool)

(assert start!88476)

(declare-fun b!1015957 () Bool)

(assert (=> b!1015957 true))

(assert (=> b!1015957 true))

(assert (=> b!1015957 true))

(declare-fun lambda!35964 () Int)

(declare-fun lambda!35963 () Int)

(assert (=> b!1015957 (not (= lambda!35964 lambda!35963))))

(assert (=> b!1015957 true))

(assert (=> b!1015957 true))

(assert (=> b!1015957 true))

(declare-fun b!1015944 () Bool)

(declare-fun e!649365 () Bool)

(declare-fun tp!309145 () Bool)

(declare-fun tp!309143 () Bool)

(assert (=> b!1015944 (= e!649365 (and tp!309145 tp!309143))))

(declare-fun b!1015945 () Bool)

(declare-fun res!456606 () Bool)

(declare-fun e!649368 () Bool)

(assert (=> b!1015945 (=> res!456606 e!649368)))

(declare-datatypes ((C!6166 0))(
  ( (C!6167 (val!3331 Int)) )
))
(declare-datatypes ((Regex!2798 0))(
  ( (ElementMatch!2798 (c!168254 C!6166)) (Concat!4631 (regOne!6108 Regex!2798) (regTwo!6108 Regex!2798)) (EmptyExpr!2798) (Star!2798 (reg!3127 Regex!2798)) (EmptyLang!2798) (Union!2798 (regOne!6109 Regex!2798) (regTwo!6109 Regex!2798)) )
))
(declare-fun lt!353487 () Regex!2798)

(declare-datatypes ((List!10028 0))(
  ( (Nil!10012) (Cons!10012 (h!15413 C!6166) (t!101074 List!10028)) )
))
(declare-datatypes ((tuple2!11390 0))(
  ( (tuple2!11391 (_1!6521 List!10028) (_2!6521 List!10028)) )
))
(declare-fun lt!353491 () tuple2!11390)

(declare-fun matchR!1334 (Regex!2798 List!10028) Bool)

(assert (=> b!1015945 (= res!456606 (not (matchR!1334 lt!353487 (_2!6521 lt!353491))))))

(declare-fun b!1015946 () Bool)

(declare-fun e!649371 () Bool)

(declare-fun lt!353489 () Regex!2798)

(declare-fun validRegex!1267 (Regex!2798) Bool)

(assert (=> b!1015946 (= e!649371 (validRegex!1267 lt!353489))))

(declare-fun b!1015947 () Bool)

(declare-fun res!456607 () Bool)

(assert (=> b!1015947 (=> res!456607 e!649371)))

(assert (=> b!1015947 (= res!456607 (not (matchR!1334 lt!353489 (_2!6521 lt!353491))))))

(declare-fun b!1015948 () Bool)

(declare-fun e!649366 () Bool)

(declare-fun tp_is_empty!5239 () Bool)

(declare-fun tp!309141 () Bool)

(assert (=> b!1015948 (= e!649366 (and tp_is_empty!5239 tp!309141))))

(declare-fun b!1015949 () Bool)

(assert (=> b!1015949 (= e!649365 tp_is_empty!5239)))

(declare-fun res!456603 () Bool)

(declare-fun e!649364 () Bool)

(assert (=> start!88476 (=> (not res!456603) (not e!649364))))

(declare-fun r!15766 () Regex!2798)

(assert (=> start!88476 (= res!456603 (validRegex!1267 r!15766))))

(assert (=> start!88476 e!649364))

(assert (=> start!88476 e!649365))

(assert (=> start!88476 e!649366))

(declare-fun b!1015950 () Bool)

(declare-datatypes ((Unit!15263 0))(
  ( (Unit!15264) )
))
(declare-fun e!649367 () Unit!15263)

(declare-fun Unit!15265 () Unit!15263)

(assert (=> b!1015950 (= e!649367 Unit!15265)))

(declare-fun b!1015951 () Bool)

(declare-fun tp!309142 () Bool)

(declare-fun tp!309144 () Bool)

(assert (=> b!1015951 (= e!649365 (and tp!309142 tp!309144))))

(declare-fun b!1015952 () Bool)

(declare-fun Unit!15266 () Unit!15263)

(assert (=> b!1015952 (= e!649367 Unit!15266)))

(declare-fun lt!353490 () Unit!15263)

(declare-fun mainMatchTheorem!597 (Regex!2798 List!10028) Unit!15263)

(assert (=> b!1015952 (= lt!353490 (mainMatchTheorem!597 (reg!3127 r!15766) (_1!6521 lt!353491)))))

(assert (=> b!1015952 false))

(declare-fun b!1015953 () Bool)

(assert (=> b!1015953 (= e!649368 e!649371)))

(declare-fun res!456608 () Bool)

(assert (=> b!1015953 (=> res!456608 e!649371)))

(declare-fun lt!353483 () Regex!2798)

(assert (=> b!1015953 (= res!456608 (not (= lt!353483 lt!353489)))))

(declare-fun lt!353481 () Regex!2798)

(assert (=> b!1015953 (= lt!353489 (Star!2798 lt!353481))))

(assert (=> b!1015953 (matchR!1334 lt!353483 (_2!6521 lt!353491))))

(declare-fun removeUselessConcat!379 (Regex!2798) Regex!2798)

(assert (=> b!1015953 (= lt!353483 (removeUselessConcat!379 lt!353487))))

(declare-fun lt!353485 () Unit!15263)

(declare-fun lemmaRemoveUselessConcatSound!223 (Regex!2798 List!10028) Unit!15263)

(assert (=> b!1015953 (= lt!353485 (lemmaRemoveUselessConcatSound!223 lt!353487 (_2!6521 lt!353491)))))

(declare-fun lt!353482 () Unit!15263)

(assert (=> b!1015953 (= lt!353482 e!649367)))

(declare-fun c!168253 () Bool)

(declare-fun s!10566 () List!10028)

(declare-fun size!7974 (List!10028) Int)

(assert (=> b!1015953 (= c!168253 (= (size!7974 (_2!6521 lt!353491)) (size!7974 s!10566)))))

(assert (=> b!1015953 (matchR!1334 lt!353481 (_1!6521 lt!353491))))

(assert (=> b!1015953 (= lt!353481 (removeUselessConcat!379 (reg!3127 r!15766)))))

(declare-fun lt!353494 () Unit!15263)

(assert (=> b!1015953 (= lt!353494 (lemmaRemoveUselessConcatSound!223 (reg!3127 r!15766) (_1!6521 lt!353491)))))

(declare-fun b!1015954 () Bool)

(declare-fun tp!309146 () Bool)

(assert (=> b!1015954 (= e!649365 tp!309146)))

(declare-fun b!1015955 () Bool)

(declare-fun e!649370 () Bool)

(assert (=> b!1015955 (= e!649370 e!649368)))

(declare-fun res!456604 () Bool)

(assert (=> b!1015955 (=> res!456604 e!649368)))

(assert (=> b!1015955 (= res!456604 (not (matchR!1334 (reg!3127 r!15766) (_1!6521 lt!353491))))))

(declare-datatypes ((Option!2337 0))(
  ( (None!2336) (Some!2336 (v!19753 tuple2!11390)) )
))
(declare-fun lt!353492 () Option!2337)

(declare-fun get!3512 (Option!2337) tuple2!11390)

(assert (=> b!1015955 (= lt!353491 (get!3512 lt!353492))))

(declare-fun b!1015956 () Bool)

(declare-fun e!649369 () Bool)

(assert (=> b!1015956 (= e!649364 (not e!649369))))

(declare-fun res!456605 () Bool)

(assert (=> b!1015956 (=> res!456605 e!649369)))

(declare-fun lt!353488 () Bool)

(assert (=> b!1015956 (= res!456605 (or (not lt!353488) (and (is-Concat!4631 r!15766) (is-EmptyExpr!2798 (regOne!6108 r!15766))) (and (is-Concat!4631 r!15766) (is-EmptyExpr!2798 (regTwo!6108 r!15766))) (is-Concat!4631 r!15766) (is-Union!2798 r!15766) (not (is-Star!2798 r!15766))))))

(declare-fun matchRSpec!597 (Regex!2798 List!10028) Bool)

(assert (=> b!1015956 (= lt!353488 (matchRSpec!597 r!15766 s!10566))))

(assert (=> b!1015956 (= lt!353488 (matchR!1334 r!15766 s!10566))))

(declare-fun lt!353480 () Unit!15263)

(assert (=> b!1015956 (= lt!353480 (mainMatchTheorem!597 r!15766 s!10566))))

(assert (=> b!1015957 (= e!649369 e!649370)))

(declare-fun res!456602 () Bool)

(assert (=> b!1015957 (=> res!456602 e!649370)))

(declare-fun isEmpty!6359 (List!10028) Bool)

(assert (=> b!1015957 (= res!456602 (isEmpty!6359 s!10566))))

(declare-fun Exists!531 (Int) Bool)

(assert (=> b!1015957 (= (Exists!531 lambda!35963) (Exists!531 lambda!35964))))

(declare-fun lt!353493 () Unit!15263)

(declare-fun lemmaExistCutMatchRandMatchRSpecEquivalentStar!169 (Regex!2798 List!10028) Unit!15263)

(assert (=> b!1015957 (= lt!353493 (lemmaExistCutMatchRandMatchRSpecEquivalentStar!169 (reg!3127 r!15766) s!10566))))

(declare-fun lt!353486 () Bool)

(assert (=> b!1015957 (= lt!353486 (Exists!531 lambda!35963))))

(declare-fun isDefined!1979 (Option!2337) Bool)

(assert (=> b!1015957 (= lt!353486 (isDefined!1979 lt!353492))))

(declare-fun findConcatSeparation!443 (Regex!2798 Regex!2798 List!10028 List!10028 List!10028) Option!2337)

(assert (=> b!1015957 (= lt!353492 (findConcatSeparation!443 (reg!3127 r!15766) lt!353487 Nil!10012 s!10566 s!10566))))

(declare-fun lt!353484 () Unit!15263)

(declare-fun lemmaFindConcatSeparationEquivalentToExists!443 (Regex!2798 Regex!2798 List!10028) Unit!15263)

(assert (=> b!1015957 (= lt!353484 (lemmaFindConcatSeparationEquivalentToExists!443 (reg!3127 r!15766) lt!353487 s!10566))))

(assert (=> b!1015957 (= lt!353487 (Star!2798 (reg!3127 r!15766)))))

(declare-fun b!1015958 () Bool)

(declare-fun res!456601 () Bool)

(assert (=> b!1015958 (=> res!456601 e!649370)))

(assert (=> b!1015958 (= res!456601 (not lt!353486))))

(assert (= (and start!88476 res!456603) b!1015956))

(assert (= (and b!1015956 (not res!456605)) b!1015957))

(assert (= (and b!1015957 (not res!456602)) b!1015958))

(assert (= (and b!1015958 (not res!456601)) b!1015955))

(assert (= (and b!1015955 (not res!456604)) b!1015945))

(assert (= (and b!1015945 (not res!456606)) b!1015953))

(assert (= (and b!1015953 c!168253) b!1015952))

(assert (= (and b!1015953 (not c!168253)) b!1015950))

(assert (= (and b!1015953 (not res!456608)) b!1015947))

(assert (= (and b!1015947 (not res!456607)) b!1015946))

(assert (= (and start!88476 (is-ElementMatch!2798 r!15766)) b!1015949))

(assert (= (and start!88476 (is-Concat!4631 r!15766)) b!1015944))

(assert (= (and start!88476 (is-Star!2798 r!15766)) b!1015954))

(assert (= (and start!88476 (is-Union!2798 r!15766)) b!1015951))

(assert (= (and start!88476 (is-Cons!10012 s!10566)) b!1015948))

(declare-fun m!1197757 () Bool)

(assert (=> b!1015946 m!1197757))

(declare-fun m!1197759 () Bool)

(assert (=> b!1015956 m!1197759))

(declare-fun m!1197761 () Bool)

(assert (=> b!1015956 m!1197761))

(declare-fun m!1197763 () Bool)

(assert (=> b!1015956 m!1197763))

(declare-fun m!1197765 () Bool)

(assert (=> b!1015955 m!1197765))

(declare-fun m!1197767 () Bool)

(assert (=> b!1015955 m!1197767))

(declare-fun m!1197769 () Bool)

(assert (=> b!1015952 m!1197769))

(declare-fun m!1197771 () Bool)

(assert (=> b!1015953 m!1197771))

(declare-fun m!1197773 () Bool)

(assert (=> b!1015953 m!1197773))

(declare-fun m!1197775 () Bool)

(assert (=> b!1015953 m!1197775))

(declare-fun m!1197777 () Bool)

(assert (=> b!1015953 m!1197777))

(declare-fun m!1197779 () Bool)

(assert (=> b!1015953 m!1197779))

(declare-fun m!1197781 () Bool)

(assert (=> b!1015953 m!1197781))

(declare-fun m!1197783 () Bool)

(assert (=> b!1015953 m!1197783))

(declare-fun m!1197785 () Bool)

(assert (=> b!1015953 m!1197785))

(declare-fun m!1197787 () Bool)

(assert (=> start!88476 m!1197787))

(declare-fun m!1197789 () Bool)

(assert (=> b!1015945 m!1197789))

(declare-fun m!1197791 () Bool)

(assert (=> b!1015947 m!1197791))

(declare-fun m!1197793 () Bool)

(assert (=> b!1015957 m!1197793))

(declare-fun m!1197795 () Bool)

(assert (=> b!1015957 m!1197795))

(declare-fun m!1197797 () Bool)

(assert (=> b!1015957 m!1197797))

(declare-fun m!1197799 () Bool)

(assert (=> b!1015957 m!1197799))

(declare-fun m!1197801 () Bool)

(assert (=> b!1015957 m!1197801))

(assert (=> b!1015957 m!1197795))

(declare-fun m!1197803 () Bool)

(assert (=> b!1015957 m!1197803))

(declare-fun m!1197805 () Bool)

(assert (=> b!1015957 m!1197805))

(push 1)

(assert (not b!1015957))

(assert (not start!88476))

(assert (not b!1015944))

(assert (not b!1015954))

(assert (not b!1015952))

(assert (not b!1015948))

(assert (not b!1015946))

(assert (not b!1015956))

(assert (not b!1015955))

(assert (not b!1015953))

(assert (not b!1015945))

(assert (not b!1015951))

(assert (not b!1015947))

(assert tp_is_empty!5239)

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun b!1016054 () Bool)

(declare-fun res!456670 () Bool)

(declare-fun e!649421 () Bool)

(assert (=> b!1016054 (=> (not res!456670) (not e!649421))))

(declare-fun tail!1428 (List!10028) List!10028)

(assert (=> b!1016054 (= res!456670 (isEmpty!6359 (tail!1428 (_1!6521 lt!353491))))))

(declare-fun b!1016055 () Bool)

(declare-fun e!649420 () Bool)

(declare-fun head!1866 (List!10028) C!6166)

(assert (=> b!1016055 (= e!649420 (not (= (head!1866 (_1!6521 lt!353491)) (c!168254 (reg!3127 r!15766)))))))

(declare-fun b!1016056 () Bool)

(declare-fun e!649417 () Bool)

(declare-fun lt!353542 () Bool)

(declare-fun call!69286 () Bool)

(assert (=> b!1016056 (= e!649417 (= lt!353542 call!69286))))

(declare-fun d!293871 () Bool)

(assert (=> d!293871 e!649417))

(declare-fun c!168265 () Bool)

(assert (=> d!293871 (= c!168265 (is-EmptyExpr!2798 (reg!3127 r!15766)))))

(declare-fun e!649418 () Bool)

(assert (=> d!293871 (= lt!353542 e!649418)))

(declare-fun c!168267 () Bool)

(assert (=> d!293871 (= c!168267 (isEmpty!6359 (_1!6521 lt!353491)))))

(assert (=> d!293871 (validRegex!1267 (reg!3127 r!15766))))

(assert (=> d!293871 (= (matchR!1334 (reg!3127 r!15766) (_1!6521 lt!353491)) lt!353542)))

(declare-fun bm!69281 () Bool)

(assert (=> bm!69281 (= call!69286 (isEmpty!6359 (_1!6521 lt!353491)))))

(declare-fun b!1016057 () Bool)

(declare-fun derivativeStep!712 (Regex!2798 C!6166) Regex!2798)

(assert (=> b!1016057 (= e!649418 (matchR!1334 (derivativeStep!712 (reg!3127 r!15766) (head!1866 (_1!6521 lt!353491))) (tail!1428 (_1!6521 lt!353491))))))

(declare-fun b!1016058 () Bool)

(declare-fun e!649416 () Bool)

(assert (=> b!1016058 (= e!649417 e!649416)))

(declare-fun c!168266 () Bool)

(assert (=> b!1016058 (= c!168266 (is-EmptyLang!2798 (reg!3127 r!15766)))))

(declare-fun b!1016059 () Bool)

(declare-fun nullable!908 (Regex!2798) Bool)

(assert (=> b!1016059 (= e!649418 (nullable!908 (reg!3127 r!15766)))))

(declare-fun b!1016060 () Bool)

(declare-fun res!456668 () Bool)

(declare-fun e!649419 () Bool)

(assert (=> b!1016060 (=> res!456668 e!649419)))

(assert (=> b!1016060 (= res!456668 e!649421)))

(declare-fun res!456664 () Bool)

(assert (=> b!1016060 (=> (not res!456664) (not e!649421))))

(assert (=> b!1016060 (= res!456664 lt!353542)))

(declare-fun b!1016061 () Bool)

(declare-fun e!649422 () Bool)

(assert (=> b!1016061 (= e!649419 e!649422)))

(declare-fun res!456667 () Bool)

(assert (=> b!1016061 (=> (not res!456667) (not e!649422))))

(assert (=> b!1016061 (= res!456667 (not lt!353542))))

(declare-fun b!1016062 () Bool)

(declare-fun res!456669 () Bool)

(assert (=> b!1016062 (=> (not res!456669) (not e!649421))))

(assert (=> b!1016062 (= res!456669 (not call!69286))))

(declare-fun b!1016063 () Bool)

(assert (=> b!1016063 (= e!649416 (not lt!353542))))

(declare-fun b!1016064 () Bool)

(declare-fun res!456665 () Bool)

(assert (=> b!1016064 (=> res!456665 e!649419)))

(assert (=> b!1016064 (= res!456665 (not (is-ElementMatch!2798 (reg!3127 r!15766))))))

(assert (=> b!1016064 (= e!649416 e!649419)))

(declare-fun b!1016065 () Bool)

(assert (=> b!1016065 (= e!649421 (= (head!1866 (_1!6521 lt!353491)) (c!168254 (reg!3127 r!15766))))))

(declare-fun b!1016066 () Bool)

(assert (=> b!1016066 (= e!649422 e!649420)))

(declare-fun res!456663 () Bool)

(assert (=> b!1016066 (=> res!456663 e!649420)))

(assert (=> b!1016066 (= res!456663 call!69286)))

(declare-fun b!1016067 () Bool)

(declare-fun res!456666 () Bool)

(assert (=> b!1016067 (=> res!456666 e!649420)))

(assert (=> b!1016067 (= res!456666 (not (isEmpty!6359 (tail!1428 (_1!6521 lt!353491)))))))

(assert (= (and d!293871 c!168267) b!1016059))

(assert (= (and d!293871 (not c!168267)) b!1016057))

(assert (= (and d!293871 c!168265) b!1016056))

(assert (= (and d!293871 (not c!168265)) b!1016058))

(assert (= (and b!1016058 c!168266) b!1016063))

(assert (= (and b!1016058 (not c!168266)) b!1016064))

(assert (= (and b!1016064 (not res!456665)) b!1016060))

(assert (= (and b!1016060 res!456664) b!1016062))

(assert (= (and b!1016062 res!456669) b!1016054))

(assert (= (and b!1016054 res!456670) b!1016065))

(assert (= (and b!1016060 (not res!456668)) b!1016061))

(assert (= (and b!1016061 res!456667) b!1016066))

(assert (= (and b!1016066 (not res!456663)) b!1016067))

(assert (= (and b!1016067 (not res!456666)) b!1016055))

(assert (= (or b!1016056 b!1016062 b!1016066) bm!69281))

(declare-fun m!1197857 () Bool)

(assert (=> d!293871 m!1197857))

(declare-fun m!1197859 () Bool)

(assert (=> d!293871 m!1197859))

(declare-fun m!1197861 () Bool)

(assert (=> b!1016065 m!1197861))

(assert (=> b!1016057 m!1197861))

(assert (=> b!1016057 m!1197861))

(declare-fun m!1197863 () Bool)

(assert (=> b!1016057 m!1197863))

(declare-fun m!1197865 () Bool)

(assert (=> b!1016057 m!1197865))

(assert (=> b!1016057 m!1197863))

(assert (=> b!1016057 m!1197865))

(declare-fun m!1197867 () Bool)

(assert (=> b!1016057 m!1197867))

(assert (=> b!1016054 m!1197865))

(assert (=> b!1016054 m!1197865))

(declare-fun m!1197869 () Bool)

(assert (=> b!1016054 m!1197869))

(assert (=> b!1016055 m!1197861))

(assert (=> b!1016067 m!1197865))

(assert (=> b!1016067 m!1197865))

(assert (=> b!1016067 m!1197869))

(declare-fun m!1197871 () Bool)

(assert (=> b!1016059 m!1197871))

(assert (=> bm!69281 m!1197857))

(assert (=> b!1015955 d!293871))

(declare-fun d!293873 () Bool)

(assert (=> d!293873 (= (get!3512 lt!353492) (v!19753 lt!353492))))

(assert (=> b!1015955 d!293873))

(declare-fun bs!246432 () Bool)

(declare-fun b!1016110 () Bool)

(assert (= bs!246432 (and b!1016110 b!1015957)))

(declare-fun lambda!35977 () Int)

(assert (=> bs!246432 (not (= lambda!35977 lambda!35963))))

(assert (=> bs!246432 (= (= r!15766 lt!353487) (= lambda!35977 lambda!35964))))

(assert (=> b!1016110 true))

(assert (=> b!1016110 true))

(declare-fun bs!246433 () Bool)

(declare-fun b!1016109 () Bool)

(assert (= bs!246433 (and b!1016109 b!1015957)))

(declare-fun lambda!35978 () Int)

(assert (=> bs!246433 (not (= lambda!35978 lambda!35963))))

(assert (=> bs!246433 (not (= lambda!35978 lambda!35964))))

(declare-fun bs!246434 () Bool)

(assert (= bs!246434 (and b!1016109 b!1016110)))

(assert (=> bs!246434 (not (= lambda!35978 lambda!35977))))

(assert (=> b!1016109 true))

(assert (=> b!1016109 true))

(declare-fun b!1016100 () Bool)

(declare-fun c!168279 () Bool)

(assert (=> b!1016100 (= c!168279 (is-ElementMatch!2798 r!15766))))

(declare-fun e!649443 () Bool)

(declare-fun e!649445 () Bool)

(assert (=> b!1016100 (= e!649443 e!649445)))

(declare-fun b!1016101 () Bool)

(declare-fun e!649446 () Bool)

(assert (=> b!1016101 (= e!649446 (matchRSpec!597 (regTwo!6109 r!15766) s!10566))))

(declare-fun b!1016102 () Bool)

(declare-fun e!649442 () Bool)

(assert (=> b!1016102 (= e!649442 e!649443)))

(declare-fun res!456689 () Bool)

(assert (=> b!1016102 (= res!456689 (not (is-EmptyLang!2798 r!15766)))))

(assert (=> b!1016102 (=> (not res!456689) (not e!649443))))

(declare-fun b!1016103 () Bool)

(declare-fun c!168278 () Bool)

(assert (=> b!1016103 (= c!168278 (is-Union!2798 r!15766))))

(declare-fun e!649447 () Bool)

(assert (=> b!1016103 (= e!649445 e!649447)))

(declare-fun b!1016104 () Bool)

(assert (=> b!1016104 (= e!649447 e!649446)))

(declare-fun res!456687 () Bool)

(assert (=> b!1016104 (= res!456687 (matchRSpec!597 (regOne!6109 r!15766) s!10566))))

(assert (=> b!1016104 (=> res!456687 e!649446)))

(declare-fun b!1016105 () Bool)

(assert (=> b!1016105 (= e!649445 (= s!10566 (Cons!10012 (c!168254 r!15766) Nil!10012)))))

(declare-fun b!1016106 () Bool)

(declare-fun call!69291 () Bool)

(assert (=> b!1016106 (= e!649442 call!69291)))

(declare-fun b!1016107 () Bool)

(declare-fun res!456688 () Bool)

(declare-fun e!649441 () Bool)

(assert (=> b!1016107 (=> res!456688 e!649441)))

(assert (=> b!1016107 (= res!456688 call!69291)))

(declare-fun e!649444 () Bool)

(assert (=> b!1016107 (= e!649444 e!649441)))

(declare-fun d!293875 () Bool)

(declare-fun c!168276 () Bool)

(assert (=> d!293875 (= c!168276 (is-EmptyExpr!2798 r!15766))))

(assert (=> d!293875 (= (matchRSpec!597 r!15766 s!10566) e!649442)))

(declare-fun b!1016108 () Bool)

(assert (=> b!1016108 (= e!649447 e!649444)))

(declare-fun c!168277 () Bool)

(assert (=> b!1016108 (= c!168277 (is-Star!2798 r!15766))))

(declare-fun call!69292 () Bool)

(assert (=> b!1016109 (= e!649444 call!69292)))

(declare-fun bm!69286 () Bool)

(assert (=> bm!69286 (= call!69292 (Exists!531 (ite c!168277 lambda!35977 lambda!35978)))))

(assert (=> b!1016110 (= e!649441 call!69292)))

(declare-fun bm!69287 () Bool)

(assert (=> bm!69287 (= call!69291 (isEmpty!6359 s!10566))))

(assert (= (and d!293875 c!168276) b!1016106))

(assert (= (and d!293875 (not c!168276)) b!1016102))

(assert (= (and b!1016102 res!456689) b!1016100))

(assert (= (and b!1016100 c!168279) b!1016105))

(assert (= (and b!1016100 (not c!168279)) b!1016103))

(assert (= (and b!1016103 c!168278) b!1016104))

(assert (= (and b!1016103 (not c!168278)) b!1016108))

(assert (= (and b!1016104 (not res!456687)) b!1016101))

(assert (= (and b!1016108 c!168277) b!1016107))

(assert (= (and b!1016108 (not c!168277)) b!1016109))

(assert (= (and b!1016107 (not res!456688)) b!1016110))

(assert (= (or b!1016110 b!1016109) bm!69286))

(assert (= (or b!1016106 b!1016107) bm!69287))

(declare-fun m!1197873 () Bool)

(assert (=> b!1016101 m!1197873))

(declare-fun m!1197875 () Bool)

(assert (=> b!1016104 m!1197875))

(declare-fun m!1197877 () Bool)

(assert (=> bm!69286 m!1197877))

(assert (=> bm!69287 m!1197801))

(assert (=> b!1015956 d!293875))

(declare-fun b!1016139 () Bool)

(declare-fun res!456713 () Bool)

(declare-fun e!649467 () Bool)

(assert (=> b!1016139 (=> (not res!456713) (not e!649467))))

(assert (=> b!1016139 (= res!456713 (isEmpty!6359 (tail!1428 s!10566)))))

(declare-fun b!1016140 () Bool)

(declare-fun e!649466 () Bool)

(assert (=> b!1016140 (= e!649466 (not (= (head!1866 s!10566) (c!168254 r!15766))))))

(declare-fun b!1016141 () Bool)

(declare-fun e!649463 () Bool)

(declare-fun lt!353545 () Bool)

(declare-fun call!69293 () Bool)

(assert (=> b!1016141 (= e!649463 (= lt!353545 call!69293))))

(declare-fun d!293879 () Bool)

(assert (=> d!293879 e!649463))

(declare-fun c!168286 () Bool)

(assert (=> d!293879 (= c!168286 (is-EmptyExpr!2798 r!15766))))

(declare-fun e!649464 () Bool)

(assert (=> d!293879 (= lt!353545 e!649464)))

(declare-fun c!168288 () Bool)

(assert (=> d!293879 (= c!168288 (isEmpty!6359 s!10566))))

(assert (=> d!293879 (validRegex!1267 r!15766)))

(assert (=> d!293879 (= (matchR!1334 r!15766 s!10566) lt!353545)))

(declare-fun bm!69288 () Bool)

(assert (=> bm!69288 (= call!69293 (isEmpty!6359 s!10566))))

(declare-fun b!1016142 () Bool)

(assert (=> b!1016142 (= e!649464 (matchR!1334 (derivativeStep!712 r!15766 (head!1866 s!10566)) (tail!1428 s!10566)))))

(declare-fun b!1016143 () Bool)

(declare-fun e!649462 () Bool)

(assert (=> b!1016143 (= e!649463 e!649462)))

(declare-fun c!168287 () Bool)

(assert (=> b!1016143 (= c!168287 (is-EmptyLang!2798 r!15766))))

(declare-fun b!1016144 () Bool)

(assert (=> b!1016144 (= e!649464 (nullable!908 r!15766))))

(declare-fun b!1016145 () Bool)

(declare-fun res!456711 () Bool)

(declare-fun e!649465 () Bool)

(assert (=> b!1016145 (=> res!456711 e!649465)))

(assert (=> b!1016145 (= res!456711 e!649467)))

(declare-fun res!456707 () Bool)

(assert (=> b!1016145 (=> (not res!456707) (not e!649467))))

(assert (=> b!1016145 (= res!456707 lt!353545)))

(declare-fun b!1016146 () Bool)

(declare-fun e!649468 () Bool)

(assert (=> b!1016146 (= e!649465 e!649468)))

(declare-fun res!456710 () Bool)

(assert (=> b!1016146 (=> (not res!456710) (not e!649468))))

(assert (=> b!1016146 (= res!456710 (not lt!353545))))

(declare-fun b!1016147 () Bool)

(declare-fun res!456712 () Bool)

(assert (=> b!1016147 (=> (not res!456712) (not e!649467))))

(assert (=> b!1016147 (= res!456712 (not call!69293))))

(declare-fun b!1016148 () Bool)

(assert (=> b!1016148 (= e!649462 (not lt!353545))))

(declare-fun b!1016149 () Bool)

(declare-fun res!456708 () Bool)

(assert (=> b!1016149 (=> res!456708 e!649465)))

(assert (=> b!1016149 (= res!456708 (not (is-ElementMatch!2798 r!15766)))))

(assert (=> b!1016149 (= e!649462 e!649465)))

(declare-fun b!1016150 () Bool)

(assert (=> b!1016150 (= e!649467 (= (head!1866 s!10566) (c!168254 r!15766)))))

(declare-fun b!1016151 () Bool)

(assert (=> b!1016151 (= e!649468 e!649466)))

(declare-fun res!456706 () Bool)

(assert (=> b!1016151 (=> res!456706 e!649466)))

(assert (=> b!1016151 (= res!456706 call!69293)))

(declare-fun b!1016152 () Bool)

(declare-fun res!456709 () Bool)

(assert (=> b!1016152 (=> res!456709 e!649466)))

(assert (=> b!1016152 (= res!456709 (not (isEmpty!6359 (tail!1428 s!10566))))))

(assert (= (and d!293879 c!168288) b!1016144))

(assert (= (and d!293879 (not c!168288)) b!1016142))

(assert (= (and d!293879 c!168286) b!1016141))

(assert (= (and d!293879 (not c!168286)) b!1016143))

(assert (= (and b!1016143 c!168287) b!1016148))

(assert (= (and b!1016143 (not c!168287)) b!1016149))

(assert (= (and b!1016149 (not res!456708)) b!1016145))

(assert (= (and b!1016145 res!456707) b!1016147))

(assert (= (and b!1016147 res!456712) b!1016139))

(assert (= (and b!1016139 res!456713) b!1016150))

(assert (= (and b!1016145 (not res!456711)) b!1016146))

(assert (= (and b!1016146 res!456710) b!1016151))

(assert (= (and b!1016151 (not res!456706)) b!1016152))

(assert (= (and b!1016152 (not res!456709)) b!1016140))

(assert (= (or b!1016141 b!1016147 b!1016151) bm!69288))

(assert (=> d!293879 m!1197801))

(assert (=> d!293879 m!1197787))

(declare-fun m!1197879 () Bool)

(assert (=> b!1016150 m!1197879))

(assert (=> b!1016142 m!1197879))

(assert (=> b!1016142 m!1197879))

(declare-fun m!1197881 () Bool)

(assert (=> b!1016142 m!1197881))

(declare-fun m!1197883 () Bool)

(assert (=> b!1016142 m!1197883))

(assert (=> b!1016142 m!1197881))

(assert (=> b!1016142 m!1197883))

(declare-fun m!1197885 () Bool)

(assert (=> b!1016142 m!1197885))

(assert (=> b!1016139 m!1197883))

(assert (=> b!1016139 m!1197883))

(declare-fun m!1197887 () Bool)

(assert (=> b!1016139 m!1197887))

(assert (=> b!1016140 m!1197879))

(assert (=> b!1016152 m!1197883))

(assert (=> b!1016152 m!1197883))

(assert (=> b!1016152 m!1197887))

(declare-fun m!1197889 () Bool)

(assert (=> b!1016144 m!1197889))

(assert (=> bm!69288 m!1197801))

(assert (=> b!1015956 d!293879))

(declare-fun d!293881 () Bool)

(assert (=> d!293881 (= (matchR!1334 r!15766 s!10566) (matchRSpec!597 r!15766 s!10566))))

(declare-fun lt!353548 () Unit!15263)

(declare-fun choose!6407 (Regex!2798 List!10028) Unit!15263)

(assert (=> d!293881 (= lt!353548 (choose!6407 r!15766 s!10566))))

(assert (=> d!293881 (validRegex!1267 r!15766)))

(assert (=> d!293881 (= (mainMatchTheorem!597 r!15766 s!10566) lt!353548)))

(declare-fun bs!246435 () Bool)

(assert (= bs!246435 d!293881))

(assert (=> bs!246435 m!1197761))

(assert (=> bs!246435 m!1197759))

(declare-fun m!1197891 () Bool)

(assert (=> bs!246435 m!1197891))

(assert (=> bs!246435 m!1197787))

(assert (=> b!1015956 d!293881))

(declare-fun b!1016153 () Bool)

(declare-fun res!456721 () Bool)

(declare-fun e!649474 () Bool)

(assert (=> b!1016153 (=> (not res!456721) (not e!649474))))

(assert (=> b!1016153 (= res!456721 (isEmpty!6359 (tail!1428 (_2!6521 lt!353491))))))

(declare-fun b!1016154 () Bool)

(declare-fun e!649473 () Bool)

(assert (=> b!1016154 (= e!649473 (not (= (head!1866 (_2!6521 lt!353491)) (c!168254 lt!353487))))))

(declare-fun b!1016155 () Bool)

(declare-fun e!649470 () Bool)

(declare-fun lt!353549 () Bool)

(declare-fun call!69296 () Bool)

(assert (=> b!1016155 (= e!649470 (= lt!353549 call!69296))))

(declare-fun d!293883 () Bool)

(assert (=> d!293883 e!649470))

(declare-fun c!168289 () Bool)

(assert (=> d!293883 (= c!168289 (is-EmptyExpr!2798 lt!353487))))

(declare-fun e!649471 () Bool)

(assert (=> d!293883 (= lt!353549 e!649471)))

(declare-fun c!168291 () Bool)

(assert (=> d!293883 (= c!168291 (isEmpty!6359 (_2!6521 lt!353491)))))

(assert (=> d!293883 (validRegex!1267 lt!353487)))

(assert (=> d!293883 (= (matchR!1334 lt!353487 (_2!6521 lt!353491)) lt!353549)))

(declare-fun bm!69291 () Bool)

(assert (=> bm!69291 (= call!69296 (isEmpty!6359 (_2!6521 lt!353491)))))

(declare-fun b!1016156 () Bool)

(assert (=> b!1016156 (= e!649471 (matchR!1334 (derivativeStep!712 lt!353487 (head!1866 (_2!6521 lt!353491))) (tail!1428 (_2!6521 lt!353491))))))

(declare-fun b!1016157 () Bool)

(declare-fun e!649469 () Bool)

(assert (=> b!1016157 (= e!649470 e!649469)))

(declare-fun c!168290 () Bool)

(assert (=> b!1016157 (= c!168290 (is-EmptyLang!2798 lt!353487))))

(declare-fun b!1016158 () Bool)

(assert (=> b!1016158 (= e!649471 (nullable!908 lt!353487))))

(declare-fun b!1016159 () Bool)

(declare-fun res!456719 () Bool)

(declare-fun e!649472 () Bool)

(assert (=> b!1016159 (=> res!456719 e!649472)))

(assert (=> b!1016159 (= res!456719 e!649474)))

(declare-fun res!456715 () Bool)

(assert (=> b!1016159 (=> (not res!456715) (not e!649474))))

(assert (=> b!1016159 (= res!456715 lt!353549)))

(declare-fun b!1016160 () Bool)

(declare-fun e!649475 () Bool)

(assert (=> b!1016160 (= e!649472 e!649475)))

(declare-fun res!456718 () Bool)

(assert (=> b!1016160 (=> (not res!456718) (not e!649475))))

(assert (=> b!1016160 (= res!456718 (not lt!353549))))

(declare-fun b!1016161 () Bool)

(declare-fun res!456720 () Bool)

(assert (=> b!1016161 (=> (not res!456720) (not e!649474))))

(assert (=> b!1016161 (= res!456720 (not call!69296))))

(declare-fun b!1016162 () Bool)

(assert (=> b!1016162 (= e!649469 (not lt!353549))))

(declare-fun b!1016163 () Bool)

(declare-fun res!456716 () Bool)

(assert (=> b!1016163 (=> res!456716 e!649472)))

(assert (=> b!1016163 (= res!456716 (not (is-ElementMatch!2798 lt!353487)))))

(assert (=> b!1016163 (= e!649469 e!649472)))

(declare-fun b!1016164 () Bool)

(assert (=> b!1016164 (= e!649474 (= (head!1866 (_2!6521 lt!353491)) (c!168254 lt!353487)))))

(declare-fun b!1016165 () Bool)

(assert (=> b!1016165 (= e!649475 e!649473)))

(declare-fun res!456714 () Bool)

(assert (=> b!1016165 (=> res!456714 e!649473)))

(assert (=> b!1016165 (= res!456714 call!69296)))

(declare-fun b!1016166 () Bool)

(declare-fun res!456717 () Bool)

(assert (=> b!1016166 (=> res!456717 e!649473)))

(assert (=> b!1016166 (= res!456717 (not (isEmpty!6359 (tail!1428 (_2!6521 lt!353491)))))))

(assert (= (and d!293883 c!168291) b!1016158))

(assert (= (and d!293883 (not c!168291)) b!1016156))

(assert (= (and d!293883 c!168289) b!1016155))

(assert (= (and d!293883 (not c!168289)) b!1016157))

(assert (= (and b!1016157 c!168290) b!1016162))

(assert (= (and b!1016157 (not c!168290)) b!1016163))

(assert (= (and b!1016163 (not res!456716)) b!1016159))

(assert (= (and b!1016159 res!456715) b!1016161))

(assert (= (and b!1016161 res!456720) b!1016153))

(assert (= (and b!1016153 res!456721) b!1016164))

(assert (= (and b!1016159 (not res!456719)) b!1016160))

(assert (= (and b!1016160 res!456718) b!1016165))

(assert (= (and b!1016165 (not res!456714)) b!1016166))

(assert (= (and b!1016166 (not res!456717)) b!1016154))

(assert (= (or b!1016155 b!1016161 b!1016165) bm!69291))

(declare-fun m!1197893 () Bool)

(assert (=> d!293883 m!1197893))

(declare-fun m!1197895 () Bool)

(assert (=> d!293883 m!1197895))

(declare-fun m!1197897 () Bool)

(assert (=> b!1016164 m!1197897))

(assert (=> b!1016156 m!1197897))

(assert (=> b!1016156 m!1197897))

(declare-fun m!1197899 () Bool)

(assert (=> b!1016156 m!1197899))

(declare-fun m!1197901 () Bool)

(assert (=> b!1016156 m!1197901))

(assert (=> b!1016156 m!1197899))

(assert (=> b!1016156 m!1197901))

(declare-fun m!1197903 () Bool)

(assert (=> b!1016156 m!1197903))

(assert (=> b!1016153 m!1197901))

(assert (=> b!1016153 m!1197901))

(declare-fun m!1197905 () Bool)

(assert (=> b!1016153 m!1197905))

(assert (=> b!1016154 m!1197897))

(assert (=> b!1016166 m!1197901))

(assert (=> b!1016166 m!1197901))

(assert (=> b!1016166 m!1197905))

(declare-fun m!1197907 () Bool)

(assert (=> b!1016158 m!1197907))

(assert (=> bm!69291 m!1197893))

(assert (=> b!1015945 d!293883))

(declare-fun b!1016199 () Bool)

(declare-fun e!649499 () Bool)

(declare-fun e!649501 () Bool)

(assert (=> b!1016199 (= e!649499 e!649501)))

(declare-fun res!456742 () Bool)

(assert (=> b!1016199 (=> (not res!456742) (not e!649501))))

(declare-fun call!69305 () Bool)

(assert (=> b!1016199 (= res!456742 call!69305)))

(declare-fun b!1016200 () Bool)

(declare-fun call!69306 () Bool)

(assert (=> b!1016200 (= e!649501 call!69306)))

(declare-fun b!1016201 () Bool)

(declare-fun e!649500 () Bool)

(declare-fun call!69304 () Bool)

(assert (=> b!1016201 (= e!649500 call!69304)))

(declare-fun b!1016202 () Bool)

(declare-fun e!649502 () Bool)

(declare-fun e!649498 () Bool)

(assert (=> b!1016202 (= e!649502 e!649498)))

(declare-fun c!168299 () Bool)

(assert (=> b!1016202 (= c!168299 (is-Star!2798 r!15766))))

(declare-fun b!1016203 () Bool)

(declare-fun e!649503 () Bool)

(assert (=> b!1016203 (= e!649498 e!649503)))

(declare-fun c!168300 () Bool)

(assert (=> b!1016203 (= c!168300 (is-Union!2798 r!15766))))

(declare-fun b!1016204 () Bool)

(declare-fun res!456743 () Bool)

(declare-fun e!649497 () Bool)

(assert (=> b!1016204 (=> (not res!456743) (not e!649497))))

(assert (=> b!1016204 (= res!456743 call!69305)))

(assert (=> b!1016204 (= e!649503 e!649497)))

(declare-fun bm!69300 () Bool)

(assert (=> bm!69300 (= call!69305 (validRegex!1267 (ite c!168300 (regOne!6109 r!15766) (regOne!6108 r!15766))))))

(declare-fun b!1016205 () Bool)

(assert (=> b!1016205 (= e!649497 call!69306)))

(declare-fun bm!69299 () Bool)

(assert (=> bm!69299 (= call!69306 call!69304)))

(declare-fun d!293885 () Bool)

(declare-fun res!456740 () Bool)

(assert (=> d!293885 (=> res!456740 e!649502)))

(assert (=> d!293885 (= res!456740 (is-ElementMatch!2798 r!15766))))

(assert (=> d!293885 (= (validRegex!1267 r!15766) e!649502)))

(declare-fun bm!69301 () Bool)

(assert (=> bm!69301 (= call!69304 (validRegex!1267 (ite c!168299 (reg!3127 r!15766) (ite c!168300 (regTwo!6109 r!15766) (regTwo!6108 r!15766)))))))

(declare-fun b!1016206 () Bool)

(assert (=> b!1016206 (= e!649498 e!649500)))

(declare-fun res!456741 () Bool)

(assert (=> b!1016206 (= res!456741 (not (nullable!908 (reg!3127 r!15766))))))

(assert (=> b!1016206 (=> (not res!456741) (not e!649500))))

(declare-fun b!1016207 () Bool)

(declare-fun res!456744 () Bool)

(assert (=> b!1016207 (=> res!456744 e!649499)))

(assert (=> b!1016207 (= res!456744 (not (is-Concat!4631 r!15766)))))

(assert (=> b!1016207 (= e!649503 e!649499)))

(assert (= (and d!293885 (not res!456740)) b!1016202))

(assert (= (and b!1016202 c!168299) b!1016206))

(assert (= (and b!1016202 (not c!168299)) b!1016203))

(assert (= (and b!1016206 res!456741) b!1016201))

(assert (= (and b!1016203 c!168300) b!1016204))

(assert (= (and b!1016203 (not c!168300)) b!1016207))

(assert (= (and b!1016204 res!456743) b!1016205))

(assert (= (and b!1016207 (not res!456744)) b!1016199))

(assert (= (and b!1016199 res!456742) b!1016200))

(assert (= (or b!1016205 b!1016200) bm!69299))

(assert (= (or b!1016204 b!1016199) bm!69300))

(assert (= (or b!1016201 bm!69299) bm!69301))

(declare-fun m!1197909 () Bool)

(assert (=> bm!69300 m!1197909))

(declare-fun m!1197911 () Bool)

(assert (=> bm!69301 m!1197911))

(assert (=> b!1016206 m!1197871))

(assert (=> start!88476 d!293885))

(declare-fun b!1016208 () Bool)

(declare-fun e!649506 () Bool)

(declare-fun e!649508 () Bool)

(assert (=> b!1016208 (= e!649506 e!649508)))

(declare-fun res!456747 () Bool)

(assert (=> b!1016208 (=> (not res!456747) (not e!649508))))

(declare-fun call!69308 () Bool)

(assert (=> b!1016208 (= res!456747 call!69308)))

(declare-fun b!1016209 () Bool)

(declare-fun call!69309 () Bool)

(assert (=> b!1016209 (= e!649508 call!69309)))

(declare-fun b!1016210 () Bool)

(declare-fun e!649507 () Bool)

(declare-fun call!69307 () Bool)

(assert (=> b!1016210 (= e!649507 call!69307)))

(declare-fun b!1016211 () Bool)

(declare-fun e!649509 () Bool)

(declare-fun e!649505 () Bool)

(assert (=> b!1016211 (= e!649509 e!649505)))

(declare-fun c!168301 () Bool)

(assert (=> b!1016211 (= c!168301 (is-Star!2798 lt!353489))))

(declare-fun b!1016212 () Bool)

(declare-fun e!649510 () Bool)

(assert (=> b!1016212 (= e!649505 e!649510)))

(declare-fun c!168302 () Bool)

(assert (=> b!1016212 (= c!168302 (is-Union!2798 lt!353489))))

(declare-fun b!1016213 () Bool)

(declare-fun res!456748 () Bool)

(declare-fun e!649504 () Bool)

(assert (=> b!1016213 (=> (not res!456748) (not e!649504))))

(assert (=> b!1016213 (= res!456748 call!69308)))

(assert (=> b!1016213 (= e!649510 e!649504)))

(declare-fun bm!69303 () Bool)

(assert (=> bm!69303 (= call!69308 (validRegex!1267 (ite c!168302 (regOne!6109 lt!353489) (regOne!6108 lt!353489))))))

(declare-fun b!1016214 () Bool)

(assert (=> b!1016214 (= e!649504 call!69309)))

(declare-fun bm!69302 () Bool)

(assert (=> bm!69302 (= call!69309 call!69307)))

(declare-fun d!293887 () Bool)

(declare-fun res!456745 () Bool)

(assert (=> d!293887 (=> res!456745 e!649509)))

(assert (=> d!293887 (= res!456745 (is-ElementMatch!2798 lt!353489))))

(assert (=> d!293887 (= (validRegex!1267 lt!353489) e!649509)))

(declare-fun bm!69304 () Bool)

(assert (=> bm!69304 (= call!69307 (validRegex!1267 (ite c!168301 (reg!3127 lt!353489) (ite c!168302 (regTwo!6109 lt!353489) (regTwo!6108 lt!353489)))))))

(declare-fun b!1016215 () Bool)

(assert (=> b!1016215 (= e!649505 e!649507)))

(declare-fun res!456746 () Bool)

(assert (=> b!1016215 (= res!456746 (not (nullable!908 (reg!3127 lt!353489))))))

(assert (=> b!1016215 (=> (not res!456746) (not e!649507))))

(declare-fun b!1016216 () Bool)

(declare-fun res!456749 () Bool)

(assert (=> b!1016216 (=> res!456749 e!649506)))

(assert (=> b!1016216 (= res!456749 (not (is-Concat!4631 lt!353489)))))

(assert (=> b!1016216 (= e!649510 e!649506)))

(assert (= (and d!293887 (not res!456745)) b!1016211))

(assert (= (and b!1016211 c!168301) b!1016215))

(assert (= (and b!1016211 (not c!168301)) b!1016212))

(assert (= (and b!1016215 res!456746) b!1016210))

(assert (= (and b!1016212 c!168302) b!1016213))

(assert (= (and b!1016212 (not c!168302)) b!1016216))

(assert (= (and b!1016213 res!456748) b!1016214))

(assert (= (and b!1016216 (not res!456749)) b!1016208))

(assert (= (and b!1016208 res!456747) b!1016209))

(assert (= (or b!1016214 b!1016209) bm!69302))

(assert (= (or b!1016213 b!1016208) bm!69303))

(assert (= (or b!1016210 bm!69302) bm!69304))

(declare-fun m!1197915 () Bool)

(assert (=> bm!69303 m!1197915))

(declare-fun m!1197919 () Bool)

(assert (=> bm!69304 m!1197919))

(declare-fun m!1197923 () Bool)

(assert (=> b!1016215 m!1197923))

(assert (=> b!1015946 d!293887))

(declare-fun d!293889 () Bool)

(assert (=> d!293889 (= (matchR!1334 (reg!3127 r!15766) (_1!6521 lt!353491)) (matchRSpec!597 (reg!3127 r!15766) (_1!6521 lt!353491)))))

(declare-fun lt!353551 () Unit!15263)

(assert (=> d!293889 (= lt!353551 (choose!6407 (reg!3127 r!15766) (_1!6521 lt!353491)))))

(assert (=> d!293889 (validRegex!1267 (reg!3127 r!15766))))

(assert (=> d!293889 (= (mainMatchTheorem!597 (reg!3127 r!15766) (_1!6521 lt!353491)) lt!353551)))

(declare-fun bs!246436 () Bool)

(assert (= bs!246436 d!293889))

(assert (=> bs!246436 m!1197765))

(declare-fun m!1197927 () Bool)

(assert (=> bs!246436 m!1197927))

(declare-fun m!1197929 () Bool)

(assert (=> bs!246436 m!1197929))

(assert (=> bs!246436 m!1197859))

(assert (=> b!1015952 d!293889))

(declare-fun d!293891 () Bool)

(assert (=> d!293891 (= (isEmpty!6359 s!10566) (is-Nil!10012 s!10566))))

(assert (=> b!1015957 d!293891))

(declare-fun b!1016253 () Bool)

(declare-fun e!649536 () Option!2337)

(assert (=> b!1016253 (= e!649536 (Some!2336 (tuple2!11391 Nil!10012 s!10566)))))

(declare-fun d!293895 () Bool)

(declare-fun e!649539 () Bool)

(assert (=> d!293895 e!649539))

(declare-fun res!456774 () Bool)

(assert (=> d!293895 (=> res!456774 e!649539)))

(declare-fun e!649535 () Bool)

(assert (=> d!293895 (= res!456774 e!649535)))

(declare-fun res!456772 () Bool)

(assert (=> d!293895 (=> (not res!456772) (not e!649535))))

(declare-fun lt!353560 () Option!2337)

(assert (=> d!293895 (= res!456772 (isDefined!1979 lt!353560))))

(assert (=> d!293895 (= lt!353560 e!649536)))

(declare-fun c!168312 () Bool)

(declare-fun e!649538 () Bool)

(assert (=> d!293895 (= c!168312 e!649538)))

(declare-fun res!456770 () Bool)

(assert (=> d!293895 (=> (not res!456770) (not e!649538))))

(assert (=> d!293895 (= res!456770 (matchR!1334 (reg!3127 r!15766) Nil!10012))))

(assert (=> d!293895 (validRegex!1267 (reg!3127 r!15766))))

(assert (=> d!293895 (= (findConcatSeparation!443 (reg!3127 r!15766) lt!353487 Nil!10012 s!10566 s!10566) lt!353560)))

(declare-fun b!1016254 () Bool)

(declare-fun ++!2729 (List!10028 List!10028) List!10028)

(assert (=> b!1016254 (= e!649535 (= (++!2729 (_1!6521 (get!3512 lt!353560)) (_2!6521 (get!3512 lt!353560))) s!10566))))

(declare-fun b!1016255 () Bool)

(assert (=> b!1016255 (= e!649538 (matchR!1334 lt!353487 s!10566))))

(declare-fun b!1016256 () Bool)

(declare-fun res!456773 () Bool)

(assert (=> b!1016256 (=> (not res!456773) (not e!649535))))

(assert (=> b!1016256 (= res!456773 (matchR!1334 lt!353487 (_2!6521 (get!3512 lt!353560))))))

(declare-fun b!1016257 () Bool)

(assert (=> b!1016257 (= e!649539 (not (isDefined!1979 lt!353560)))))

(declare-fun b!1016258 () Bool)

(declare-fun e!649537 () Option!2337)

(assert (=> b!1016258 (= e!649536 e!649537)))

(declare-fun c!168311 () Bool)

(assert (=> b!1016258 (= c!168311 (is-Nil!10012 s!10566))))

(declare-fun b!1016259 () Bool)

(declare-fun res!456771 () Bool)

(assert (=> b!1016259 (=> (not res!456771) (not e!649535))))

(assert (=> b!1016259 (= res!456771 (matchR!1334 (reg!3127 r!15766) (_1!6521 (get!3512 lt!353560))))))

(declare-fun b!1016260 () Bool)

(declare-fun lt!353558 () Unit!15263)

(declare-fun lt!353559 () Unit!15263)

(assert (=> b!1016260 (= lt!353558 lt!353559)))

(assert (=> b!1016260 (= (++!2729 (++!2729 Nil!10012 (Cons!10012 (h!15413 s!10566) Nil!10012)) (t!101074 s!10566)) s!10566)))

(declare-fun lemmaMoveElementToOtherListKeepsConcatEq!329 (List!10028 C!6166 List!10028 List!10028) Unit!15263)

(assert (=> b!1016260 (= lt!353559 (lemmaMoveElementToOtherListKeepsConcatEq!329 Nil!10012 (h!15413 s!10566) (t!101074 s!10566) s!10566))))

(assert (=> b!1016260 (= e!649537 (findConcatSeparation!443 (reg!3127 r!15766) lt!353487 (++!2729 Nil!10012 (Cons!10012 (h!15413 s!10566) Nil!10012)) (t!101074 s!10566) s!10566))))

(declare-fun b!1016261 () Bool)

(assert (=> b!1016261 (= e!649537 None!2336)))

(assert (= (and d!293895 res!456770) b!1016255))

(assert (= (and d!293895 c!168312) b!1016253))

(assert (= (and d!293895 (not c!168312)) b!1016258))

(assert (= (and b!1016258 c!168311) b!1016261))

(assert (= (and b!1016258 (not c!168311)) b!1016260))

(assert (= (and d!293895 res!456772) b!1016259))

(assert (= (and b!1016259 res!456771) b!1016256))

(assert (= (and b!1016256 res!456773) b!1016254))

(assert (= (and d!293895 (not res!456774)) b!1016257))

(declare-fun m!1197937 () Bool)

(assert (=> b!1016260 m!1197937))

(assert (=> b!1016260 m!1197937))

(declare-fun m!1197939 () Bool)

(assert (=> b!1016260 m!1197939))

(declare-fun m!1197941 () Bool)

(assert (=> b!1016260 m!1197941))

(assert (=> b!1016260 m!1197937))

(declare-fun m!1197943 () Bool)

(assert (=> b!1016260 m!1197943))

(declare-fun m!1197945 () Bool)

(assert (=> b!1016259 m!1197945))

(declare-fun m!1197947 () Bool)

(assert (=> b!1016259 m!1197947))

(declare-fun m!1197949 () Bool)

(assert (=> b!1016255 m!1197949))

(assert (=> b!1016256 m!1197945))

(declare-fun m!1197951 () Bool)

(assert (=> b!1016256 m!1197951))

(declare-fun m!1197953 () Bool)

(assert (=> b!1016257 m!1197953))

(assert (=> d!293895 m!1197953))

(declare-fun m!1197955 () Bool)

(assert (=> d!293895 m!1197955))

(assert (=> d!293895 m!1197859))

(assert (=> b!1016254 m!1197945))

(declare-fun m!1197959 () Bool)

(assert (=> b!1016254 m!1197959))

(assert (=> b!1015957 d!293895))

(declare-fun bs!246438 () Bool)

(declare-fun d!293897 () Bool)

(assert (= bs!246438 (and d!293897 b!1015957)))

(declare-fun lambda!35983 () Int)

(assert (=> bs!246438 (= (= (Star!2798 (reg!3127 r!15766)) lt!353487) (= lambda!35983 lambda!35963))))

(assert (=> bs!246438 (not (= lambda!35983 lambda!35964))))

(declare-fun bs!246439 () Bool)

(assert (= bs!246439 (and d!293897 b!1016110)))

(assert (=> bs!246439 (not (= lambda!35983 lambda!35977))))

(declare-fun bs!246440 () Bool)

(assert (= bs!246440 (and d!293897 b!1016109)))

(assert (=> bs!246440 (not (= lambda!35983 lambda!35978))))

(assert (=> d!293897 true))

(assert (=> d!293897 true))

(declare-fun lambda!35984 () Int)

(assert (=> bs!246438 (not (= lambda!35984 lambda!35963))))

(assert (=> bs!246439 (= (= (Star!2798 (reg!3127 r!15766)) r!15766) (= lambda!35984 lambda!35977))))

(assert (=> bs!246438 (= (= (Star!2798 (reg!3127 r!15766)) lt!353487) (= lambda!35984 lambda!35964))))

(assert (=> bs!246440 (not (= lambda!35984 lambda!35978))))

(declare-fun bs!246441 () Bool)

(assert (= bs!246441 d!293897))

(assert (=> bs!246441 (not (= lambda!35984 lambda!35983))))

(assert (=> d!293897 true))

(assert (=> d!293897 true))

(assert (=> d!293897 (= (Exists!531 lambda!35983) (Exists!531 lambda!35984))))

(declare-fun lt!353566 () Unit!15263)

(declare-fun choose!6408 (Regex!2798 List!10028) Unit!15263)

(assert (=> d!293897 (= lt!353566 (choose!6408 (reg!3127 r!15766) s!10566))))

(assert (=> d!293897 (validRegex!1267 (reg!3127 r!15766))))

(assert (=> d!293897 (= (lemmaExistCutMatchRandMatchRSpecEquivalentStar!169 (reg!3127 r!15766) s!10566) lt!353566)))

(declare-fun m!1197971 () Bool)

(assert (=> bs!246441 m!1197971))

(declare-fun m!1197973 () Bool)

(assert (=> bs!246441 m!1197973))

(declare-fun m!1197975 () Bool)

(assert (=> bs!246441 m!1197975))

(assert (=> bs!246441 m!1197859))

(assert (=> b!1015957 d!293897))

(declare-fun bs!246442 () Bool)

(declare-fun d!293905 () Bool)

(assert (= bs!246442 (and d!293905 b!1015957)))

(declare-fun lambda!35987 () Int)

(assert (=> bs!246442 (= lambda!35987 lambda!35963)))

(declare-fun bs!246443 () Bool)

(assert (= bs!246443 (and d!293905 b!1016110)))

(assert (=> bs!246443 (not (= lambda!35987 lambda!35977))))

(assert (=> bs!246442 (not (= lambda!35987 lambda!35964))))

(declare-fun bs!246444 () Bool)

(assert (= bs!246444 (and d!293905 d!293897)))

(assert (=> bs!246444 (= (= lt!353487 (Star!2798 (reg!3127 r!15766))) (= lambda!35987 lambda!35983))))

(assert (=> bs!246444 (not (= lambda!35987 lambda!35984))))

(declare-fun bs!246445 () Bool)

(assert (= bs!246445 (and d!293905 b!1016109)))

(assert (=> bs!246445 (not (= lambda!35987 lambda!35978))))

(assert (=> d!293905 true))

(assert (=> d!293905 true))

(assert (=> d!293905 true))

(assert (=> d!293905 (= (isDefined!1979 (findConcatSeparation!443 (reg!3127 r!15766) lt!353487 Nil!10012 s!10566 s!10566)) (Exists!531 lambda!35987))))

(declare-fun lt!353571 () Unit!15263)

(declare-fun choose!6409 (Regex!2798 Regex!2798 List!10028) Unit!15263)

(assert (=> d!293905 (= lt!353571 (choose!6409 (reg!3127 r!15766) lt!353487 s!10566))))

(assert (=> d!293905 (validRegex!1267 (reg!3127 r!15766))))

(assert (=> d!293905 (= (lemmaFindConcatSeparationEquivalentToExists!443 (reg!3127 r!15766) lt!353487 s!10566) lt!353571)))

(declare-fun bs!246446 () Bool)

(assert (= bs!246446 d!293905))

(declare-fun m!1197977 () Bool)

(assert (=> bs!246446 m!1197977))

(declare-fun m!1197979 () Bool)

(assert (=> bs!246446 m!1197979))

(assert (=> bs!246446 m!1197793))

(assert (=> bs!246446 m!1197793))

(declare-fun m!1197981 () Bool)

(assert (=> bs!246446 m!1197981))

(assert (=> bs!246446 m!1197859))

(assert (=> b!1015957 d!293905))

(declare-fun d!293907 () Bool)

(declare-fun isEmpty!6361 (Option!2337) Bool)

(assert (=> d!293907 (= (isDefined!1979 lt!353492) (not (isEmpty!6361 lt!353492)))))

(declare-fun bs!246447 () Bool)

(assert (= bs!246447 d!293907))

(declare-fun m!1197983 () Bool)

(assert (=> bs!246447 m!1197983))

(assert (=> b!1015957 d!293907))

(declare-fun d!293909 () Bool)

(declare-fun choose!6410 (Int) Bool)

(assert (=> d!293909 (= (Exists!531 lambda!35964) (choose!6410 lambda!35964))))

(declare-fun bs!246448 () Bool)

(assert (= bs!246448 d!293909))

(declare-fun m!1197985 () Bool)

(assert (=> bs!246448 m!1197985))

(assert (=> b!1015957 d!293909))

(declare-fun d!293911 () Bool)

(assert (=> d!293911 (= (Exists!531 lambda!35963) (choose!6410 lambda!35963))))

(declare-fun bs!246449 () Bool)

(assert (= bs!246449 d!293911))

(declare-fun m!1197987 () Bool)

(assert (=> bs!246449 m!1197987))

(assert (=> b!1015957 d!293911))

(declare-fun b!1016289 () Bool)

(declare-fun res!456805 () Bool)

(declare-fun e!649560 () Bool)

(assert (=> b!1016289 (=> (not res!456805) (not e!649560))))

(assert (=> b!1016289 (= res!456805 (isEmpty!6359 (tail!1428 (_2!6521 lt!353491))))))

(declare-fun b!1016290 () Bool)

(declare-fun e!649559 () Bool)

(assert (=> b!1016290 (= e!649559 (not (= (head!1866 (_2!6521 lt!353491)) (c!168254 lt!353489))))))

(declare-fun b!1016291 () Bool)

(declare-fun e!649556 () Bool)

(declare-fun lt!353572 () Bool)

(declare-fun call!69319 () Bool)

(assert (=> b!1016291 (= e!649556 (= lt!353572 call!69319))))

(declare-fun d!293913 () Bool)

(assert (=> d!293913 e!649556))

(declare-fun c!168315 () Bool)

(assert (=> d!293913 (= c!168315 (is-EmptyExpr!2798 lt!353489))))

(declare-fun e!649557 () Bool)

(assert (=> d!293913 (= lt!353572 e!649557)))

(declare-fun c!168317 () Bool)

(assert (=> d!293913 (= c!168317 (isEmpty!6359 (_2!6521 lt!353491)))))

(assert (=> d!293913 (validRegex!1267 lt!353489)))

(assert (=> d!293913 (= (matchR!1334 lt!353489 (_2!6521 lt!353491)) lt!353572)))

(declare-fun bm!69314 () Bool)

(assert (=> bm!69314 (= call!69319 (isEmpty!6359 (_2!6521 lt!353491)))))

(declare-fun b!1016292 () Bool)

(assert (=> b!1016292 (= e!649557 (matchR!1334 (derivativeStep!712 lt!353489 (head!1866 (_2!6521 lt!353491))) (tail!1428 (_2!6521 lt!353491))))))

(declare-fun b!1016293 () Bool)

(declare-fun e!649555 () Bool)

(assert (=> b!1016293 (= e!649556 e!649555)))

(declare-fun c!168316 () Bool)

(assert (=> b!1016293 (= c!168316 (is-EmptyLang!2798 lt!353489))))

(declare-fun b!1016294 () Bool)

(assert (=> b!1016294 (= e!649557 (nullable!908 lt!353489))))

(declare-fun b!1016295 () Bool)

(declare-fun res!456803 () Bool)

(declare-fun e!649558 () Bool)

(assert (=> b!1016295 (=> res!456803 e!649558)))

(assert (=> b!1016295 (= res!456803 e!649560)))

(declare-fun res!456799 () Bool)

(assert (=> b!1016295 (=> (not res!456799) (not e!649560))))

(assert (=> b!1016295 (= res!456799 lt!353572)))

(declare-fun b!1016296 () Bool)

(declare-fun e!649561 () Bool)

(assert (=> b!1016296 (= e!649558 e!649561)))

(declare-fun res!456802 () Bool)

(assert (=> b!1016296 (=> (not res!456802) (not e!649561))))

(assert (=> b!1016296 (= res!456802 (not lt!353572))))

(declare-fun b!1016297 () Bool)

(declare-fun res!456804 () Bool)

(assert (=> b!1016297 (=> (not res!456804) (not e!649560))))

(assert (=> b!1016297 (= res!456804 (not call!69319))))

(declare-fun b!1016298 () Bool)

(assert (=> b!1016298 (= e!649555 (not lt!353572))))

(declare-fun b!1016299 () Bool)

(declare-fun res!456800 () Bool)

(assert (=> b!1016299 (=> res!456800 e!649558)))

(assert (=> b!1016299 (= res!456800 (not (is-ElementMatch!2798 lt!353489)))))

(assert (=> b!1016299 (= e!649555 e!649558)))

(declare-fun b!1016300 () Bool)

(assert (=> b!1016300 (= e!649560 (= (head!1866 (_2!6521 lt!353491)) (c!168254 lt!353489)))))

(declare-fun b!1016301 () Bool)

(assert (=> b!1016301 (= e!649561 e!649559)))

(declare-fun res!456798 () Bool)

(assert (=> b!1016301 (=> res!456798 e!649559)))

(assert (=> b!1016301 (= res!456798 call!69319)))

(declare-fun b!1016302 () Bool)

(declare-fun res!456801 () Bool)

(assert (=> b!1016302 (=> res!456801 e!649559)))

(assert (=> b!1016302 (= res!456801 (not (isEmpty!6359 (tail!1428 (_2!6521 lt!353491)))))))

(assert (= (and d!293913 c!168317) b!1016294))

(assert (= (and d!293913 (not c!168317)) b!1016292))

(assert (= (and d!293913 c!168315) b!1016291))

(assert (= (and d!293913 (not c!168315)) b!1016293))

(assert (= (and b!1016293 c!168316) b!1016298))

(assert (= (and b!1016293 (not c!168316)) b!1016299))

(assert (= (and b!1016299 (not res!456800)) b!1016295))

(assert (= (and b!1016295 res!456799) b!1016297))

(assert (= (and b!1016297 res!456804) b!1016289))

(assert (= (and b!1016289 res!456805) b!1016300))

(assert (= (and b!1016295 (not res!456803)) b!1016296))

(assert (= (and b!1016296 res!456802) b!1016301))

(assert (= (and b!1016301 (not res!456798)) b!1016302))

(assert (= (and b!1016302 (not res!456801)) b!1016290))

(assert (= (or b!1016291 b!1016297 b!1016301) bm!69314))

(assert (=> d!293913 m!1197893))

(assert (=> d!293913 m!1197757))

(assert (=> b!1016300 m!1197897))

(assert (=> b!1016292 m!1197897))

(assert (=> b!1016292 m!1197897))

(declare-fun m!1197989 () Bool)

(assert (=> b!1016292 m!1197989))

(assert (=> b!1016292 m!1197901))

(assert (=> b!1016292 m!1197989))

(assert (=> b!1016292 m!1197901))

(declare-fun m!1197991 () Bool)

(assert (=> b!1016292 m!1197991))

(assert (=> b!1016289 m!1197901))

(assert (=> b!1016289 m!1197901))

(assert (=> b!1016289 m!1197905))

(assert (=> b!1016290 m!1197897))

(assert (=> b!1016302 m!1197901))

(assert (=> b!1016302 m!1197901))

(assert (=> b!1016302 m!1197905))

(declare-fun m!1197993 () Bool)

(assert (=> b!1016294 m!1197993))

(assert (=> bm!69314 m!1197893))

(assert (=> b!1015947 d!293913))

(declare-fun d!293915 () Bool)

(assert (=> d!293915 (= (matchR!1334 (reg!3127 r!15766) (_1!6521 lt!353491)) (matchR!1334 (removeUselessConcat!379 (reg!3127 r!15766)) (_1!6521 lt!353491)))))

(declare-fun lt!353576 () Unit!15263)

(declare-fun choose!6411 (Regex!2798 List!10028) Unit!15263)

(assert (=> d!293915 (= lt!353576 (choose!6411 (reg!3127 r!15766) (_1!6521 lt!353491)))))

(assert (=> d!293915 (validRegex!1267 (reg!3127 r!15766))))

(assert (=> d!293915 (= (lemmaRemoveUselessConcatSound!223 (reg!3127 r!15766) (_1!6521 lt!353491)) lt!353576)))

(declare-fun bs!246450 () Bool)

(assert (= bs!246450 d!293915))

(assert (=> bs!246450 m!1197859))

(assert (=> bs!246450 m!1197771))

(declare-fun m!1197995 () Bool)

(assert (=> bs!246450 m!1197995))

(assert (=> bs!246450 m!1197765))

(assert (=> bs!246450 m!1197771))

(declare-fun m!1197997 () Bool)

(assert (=> bs!246450 m!1197997))

(assert (=> b!1015953 d!293915))

(declare-fun b!1016303 () Bool)

(declare-fun res!456813 () Bool)

(declare-fun e!649567 () Bool)

(assert (=> b!1016303 (=> (not res!456813) (not e!649567))))

(assert (=> b!1016303 (= res!456813 (isEmpty!6359 (tail!1428 (_1!6521 lt!353491))))))

(declare-fun b!1016304 () Bool)

(declare-fun e!649566 () Bool)

(assert (=> b!1016304 (= e!649566 (not (= (head!1866 (_1!6521 lt!353491)) (c!168254 lt!353481))))))

(declare-fun b!1016305 () Bool)

(declare-fun e!649563 () Bool)

(declare-fun lt!353577 () Bool)

(declare-fun call!69320 () Bool)

(assert (=> b!1016305 (= e!649563 (= lt!353577 call!69320))))

(declare-fun d!293917 () Bool)

(assert (=> d!293917 e!649563))

(declare-fun c!168318 () Bool)

(assert (=> d!293917 (= c!168318 (is-EmptyExpr!2798 lt!353481))))

(declare-fun e!649564 () Bool)

(assert (=> d!293917 (= lt!353577 e!649564)))

(declare-fun c!168320 () Bool)

(assert (=> d!293917 (= c!168320 (isEmpty!6359 (_1!6521 lt!353491)))))

(assert (=> d!293917 (validRegex!1267 lt!353481)))

(assert (=> d!293917 (= (matchR!1334 lt!353481 (_1!6521 lt!353491)) lt!353577)))

(declare-fun bm!69315 () Bool)

(assert (=> bm!69315 (= call!69320 (isEmpty!6359 (_1!6521 lt!353491)))))

(declare-fun b!1016306 () Bool)

(assert (=> b!1016306 (= e!649564 (matchR!1334 (derivativeStep!712 lt!353481 (head!1866 (_1!6521 lt!353491))) (tail!1428 (_1!6521 lt!353491))))))

(declare-fun b!1016307 () Bool)

(declare-fun e!649562 () Bool)

(assert (=> b!1016307 (= e!649563 e!649562)))

(declare-fun c!168319 () Bool)

(assert (=> b!1016307 (= c!168319 (is-EmptyLang!2798 lt!353481))))

(declare-fun b!1016308 () Bool)

(assert (=> b!1016308 (= e!649564 (nullable!908 lt!353481))))

(declare-fun b!1016309 () Bool)

(declare-fun res!456811 () Bool)

(declare-fun e!649565 () Bool)

(assert (=> b!1016309 (=> res!456811 e!649565)))

(assert (=> b!1016309 (= res!456811 e!649567)))

(declare-fun res!456807 () Bool)

(assert (=> b!1016309 (=> (not res!456807) (not e!649567))))

(assert (=> b!1016309 (= res!456807 lt!353577)))

(declare-fun b!1016310 () Bool)

(declare-fun e!649568 () Bool)

(assert (=> b!1016310 (= e!649565 e!649568)))

(declare-fun res!456810 () Bool)

(assert (=> b!1016310 (=> (not res!456810) (not e!649568))))

(assert (=> b!1016310 (= res!456810 (not lt!353577))))

(declare-fun b!1016311 () Bool)

(declare-fun res!456812 () Bool)

(assert (=> b!1016311 (=> (not res!456812) (not e!649567))))

(assert (=> b!1016311 (= res!456812 (not call!69320))))

(declare-fun b!1016312 () Bool)

(assert (=> b!1016312 (= e!649562 (not lt!353577))))

(declare-fun b!1016313 () Bool)

(declare-fun res!456808 () Bool)

(assert (=> b!1016313 (=> res!456808 e!649565)))

(assert (=> b!1016313 (= res!456808 (not (is-ElementMatch!2798 lt!353481)))))

(assert (=> b!1016313 (= e!649562 e!649565)))

(declare-fun b!1016314 () Bool)

(assert (=> b!1016314 (= e!649567 (= (head!1866 (_1!6521 lt!353491)) (c!168254 lt!353481)))))

(declare-fun b!1016315 () Bool)

(assert (=> b!1016315 (= e!649568 e!649566)))

(declare-fun res!456806 () Bool)

(assert (=> b!1016315 (=> res!456806 e!649566)))

(assert (=> b!1016315 (= res!456806 call!69320)))

(declare-fun b!1016316 () Bool)

(declare-fun res!456809 () Bool)

(assert (=> b!1016316 (=> res!456809 e!649566)))

(assert (=> b!1016316 (= res!456809 (not (isEmpty!6359 (tail!1428 (_1!6521 lt!353491)))))))

(assert (= (and d!293917 c!168320) b!1016308))

(assert (= (and d!293917 (not c!168320)) b!1016306))

(assert (= (and d!293917 c!168318) b!1016305))

(assert (= (and d!293917 (not c!168318)) b!1016307))

(assert (= (and b!1016307 c!168319) b!1016312))

(assert (= (and b!1016307 (not c!168319)) b!1016313))

(assert (= (and b!1016313 (not res!456808)) b!1016309))

(assert (= (and b!1016309 res!456807) b!1016311))

(assert (= (and b!1016311 res!456812) b!1016303))

(assert (= (and b!1016303 res!456813) b!1016314))

(assert (= (and b!1016309 (not res!456811)) b!1016310))

(assert (= (and b!1016310 res!456810) b!1016315))

(assert (= (and b!1016315 (not res!456806)) b!1016316))

(assert (= (and b!1016316 (not res!456809)) b!1016304))

(assert (= (or b!1016305 b!1016311 b!1016315) bm!69315))

(assert (=> d!293917 m!1197857))

(declare-fun m!1197999 () Bool)

(assert (=> d!293917 m!1197999))

(assert (=> b!1016314 m!1197861))

(assert (=> b!1016306 m!1197861))

(assert (=> b!1016306 m!1197861))

(declare-fun m!1198001 () Bool)

(assert (=> b!1016306 m!1198001))

(assert (=> b!1016306 m!1197865))

(assert (=> b!1016306 m!1198001))

(assert (=> b!1016306 m!1197865))

(declare-fun m!1198003 () Bool)

(assert (=> b!1016306 m!1198003))

(assert (=> b!1016303 m!1197865))

(assert (=> b!1016303 m!1197865))

(assert (=> b!1016303 m!1197869))

(assert (=> b!1016304 m!1197861))

(assert (=> b!1016316 m!1197865))

(assert (=> b!1016316 m!1197865))

(assert (=> b!1016316 m!1197869))

(declare-fun m!1198005 () Bool)

(assert (=> b!1016308 m!1198005))

(assert (=> bm!69315 m!1197857))

(assert (=> b!1015953 d!293917))

(declare-fun d!293919 () Bool)

(declare-fun lt!353580 () Int)

(assert (=> d!293919 (>= lt!353580 0)))

(declare-fun e!649571 () Int)

(assert (=> d!293919 (= lt!353580 e!649571)))

(declare-fun c!168323 () Bool)

(assert (=> d!293919 (= c!168323 (is-Nil!10012 s!10566))))

(assert (=> d!293919 (= (size!7974 s!10566) lt!353580)))

(declare-fun b!1016321 () Bool)

(assert (=> b!1016321 (= e!649571 0)))

(declare-fun b!1016322 () Bool)

(assert (=> b!1016322 (= e!649571 (+ 1 (size!7974 (t!101074 s!10566))))))

(assert (= (and d!293919 c!168323) b!1016321))

(assert (= (and d!293919 (not c!168323)) b!1016322))

(declare-fun m!1198013 () Bool)

(assert (=> b!1016322 m!1198013))

(assert (=> b!1015953 d!293919))

(declare-fun b!1016323 () Bool)

(declare-fun res!456821 () Bool)

(declare-fun e!649577 () Bool)

(assert (=> b!1016323 (=> (not res!456821) (not e!649577))))

(assert (=> b!1016323 (= res!456821 (isEmpty!6359 (tail!1428 (_2!6521 lt!353491))))))

(declare-fun b!1016324 () Bool)

(declare-fun e!649576 () Bool)

(assert (=> b!1016324 (= e!649576 (not (= (head!1866 (_2!6521 lt!353491)) (c!168254 lt!353483))))))

(declare-fun b!1016325 () Bool)

(declare-fun e!649573 () Bool)

(declare-fun lt!353581 () Bool)

(declare-fun call!69321 () Bool)

(assert (=> b!1016325 (= e!649573 (= lt!353581 call!69321))))

(declare-fun d!293923 () Bool)

(assert (=> d!293923 e!649573))

(declare-fun c!168324 () Bool)

(assert (=> d!293923 (= c!168324 (is-EmptyExpr!2798 lt!353483))))

(declare-fun e!649574 () Bool)

(assert (=> d!293923 (= lt!353581 e!649574)))

(declare-fun c!168326 () Bool)

(assert (=> d!293923 (= c!168326 (isEmpty!6359 (_2!6521 lt!353491)))))

(assert (=> d!293923 (validRegex!1267 lt!353483)))

(assert (=> d!293923 (= (matchR!1334 lt!353483 (_2!6521 lt!353491)) lt!353581)))

(declare-fun bm!69316 () Bool)

(assert (=> bm!69316 (= call!69321 (isEmpty!6359 (_2!6521 lt!353491)))))

(declare-fun b!1016326 () Bool)

(assert (=> b!1016326 (= e!649574 (matchR!1334 (derivativeStep!712 lt!353483 (head!1866 (_2!6521 lt!353491))) (tail!1428 (_2!6521 lt!353491))))))

(declare-fun b!1016327 () Bool)

(declare-fun e!649572 () Bool)

(assert (=> b!1016327 (= e!649573 e!649572)))

(declare-fun c!168325 () Bool)

(assert (=> b!1016327 (= c!168325 (is-EmptyLang!2798 lt!353483))))

(declare-fun b!1016328 () Bool)

(assert (=> b!1016328 (= e!649574 (nullable!908 lt!353483))))

(declare-fun b!1016329 () Bool)

(declare-fun res!456819 () Bool)

(declare-fun e!649575 () Bool)

(assert (=> b!1016329 (=> res!456819 e!649575)))

(assert (=> b!1016329 (= res!456819 e!649577)))

(declare-fun res!456815 () Bool)

(assert (=> b!1016329 (=> (not res!456815) (not e!649577))))

(assert (=> b!1016329 (= res!456815 lt!353581)))

(declare-fun b!1016330 () Bool)

(declare-fun e!649578 () Bool)

(assert (=> b!1016330 (= e!649575 e!649578)))

(declare-fun res!456818 () Bool)

(assert (=> b!1016330 (=> (not res!456818) (not e!649578))))

(assert (=> b!1016330 (= res!456818 (not lt!353581))))

(declare-fun b!1016331 () Bool)

(declare-fun res!456820 () Bool)

(assert (=> b!1016331 (=> (not res!456820) (not e!649577))))

(assert (=> b!1016331 (= res!456820 (not call!69321))))

(declare-fun b!1016332 () Bool)

(assert (=> b!1016332 (= e!649572 (not lt!353581))))

(declare-fun b!1016333 () Bool)

(declare-fun res!456816 () Bool)

(assert (=> b!1016333 (=> res!456816 e!649575)))

(assert (=> b!1016333 (= res!456816 (not (is-ElementMatch!2798 lt!353483)))))

(assert (=> b!1016333 (= e!649572 e!649575)))

(declare-fun b!1016334 () Bool)

(assert (=> b!1016334 (= e!649577 (= (head!1866 (_2!6521 lt!353491)) (c!168254 lt!353483)))))

(declare-fun b!1016335 () Bool)

(assert (=> b!1016335 (= e!649578 e!649576)))

(declare-fun res!456814 () Bool)

(assert (=> b!1016335 (=> res!456814 e!649576)))

(assert (=> b!1016335 (= res!456814 call!69321)))

(declare-fun b!1016336 () Bool)

(declare-fun res!456817 () Bool)

(assert (=> b!1016336 (=> res!456817 e!649576)))

(assert (=> b!1016336 (= res!456817 (not (isEmpty!6359 (tail!1428 (_2!6521 lt!353491)))))))

(assert (= (and d!293923 c!168326) b!1016328))

(assert (= (and d!293923 (not c!168326)) b!1016326))

(assert (= (and d!293923 c!168324) b!1016325))

(assert (= (and d!293923 (not c!168324)) b!1016327))

(assert (= (and b!1016327 c!168325) b!1016332))

(assert (= (and b!1016327 (not c!168325)) b!1016333))

(assert (= (and b!1016333 (not res!456816)) b!1016329))

(assert (= (and b!1016329 res!456815) b!1016331))

(assert (= (and b!1016331 res!456820) b!1016323))

(assert (= (and b!1016323 res!456821) b!1016334))

(assert (= (and b!1016329 (not res!456819)) b!1016330))

(assert (= (and b!1016330 res!456818) b!1016335))

(assert (= (and b!1016335 (not res!456814)) b!1016336))

(assert (= (and b!1016336 (not res!456817)) b!1016324))

(assert (= (or b!1016325 b!1016331 b!1016335) bm!69316))

(assert (=> d!293923 m!1197893))

(declare-fun m!1198015 () Bool)

(assert (=> d!293923 m!1198015))

(assert (=> b!1016334 m!1197897))

(assert (=> b!1016326 m!1197897))

(assert (=> b!1016326 m!1197897))

(declare-fun m!1198017 () Bool)

(assert (=> b!1016326 m!1198017))

(assert (=> b!1016326 m!1197901))

(assert (=> b!1016326 m!1198017))

(assert (=> b!1016326 m!1197901))

(declare-fun m!1198019 () Bool)

(assert (=> b!1016326 m!1198019))

(assert (=> b!1016323 m!1197901))

(assert (=> b!1016323 m!1197901))

(assert (=> b!1016323 m!1197905))

(assert (=> b!1016324 m!1197897))

(assert (=> b!1016336 m!1197901))

(assert (=> b!1016336 m!1197901))

(assert (=> b!1016336 m!1197905))

(declare-fun m!1198021 () Bool)

(assert (=> b!1016328 m!1198021))

(assert (=> bm!69316 m!1197893))

(assert (=> b!1015953 d!293923))

(declare-fun b!1016359 () Bool)

(declare-fun e!649595 () Regex!2798)

(declare-fun call!69336 () Regex!2798)

(assert (=> b!1016359 (= e!649595 call!69336)))

(declare-fun b!1016360 () Bool)

(declare-fun e!649594 () Regex!2798)

(declare-fun call!69333 () Regex!2798)

(declare-fun call!69335 () Regex!2798)

(assert (=> b!1016360 (= e!649594 (Concat!4631 call!69333 call!69335))))

(declare-fun b!1016361 () Bool)

(declare-fun e!649591 () Regex!2798)

(assert (=> b!1016361 (= e!649591 (reg!3127 r!15766))))

(declare-fun b!1016362 () Bool)

(declare-fun c!168341 () Bool)

(assert (=> b!1016362 (= c!168341 (is-Concat!4631 (reg!3127 r!15766)))))

(assert (=> b!1016362 (= e!649595 e!649594)))

(declare-fun bm!69327 () Bool)

(declare-fun call!69332 () Regex!2798)

(assert (=> bm!69327 (= call!69332 call!69333)))

(declare-fun d!293925 () Bool)

(declare-fun e!649592 () Bool)

(assert (=> d!293925 e!649592))

(declare-fun res!456824 () Bool)

(assert (=> d!293925 (=> (not res!456824) (not e!649592))))

(declare-fun lt!353584 () Regex!2798)

(assert (=> d!293925 (= res!456824 (validRegex!1267 lt!353584))))

(declare-fun e!649593 () Regex!2798)

(assert (=> d!293925 (= lt!353584 e!649593)))

(declare-fun c!168340 () Bool)

(assert (=> d!293925 (= c!168340 (and (is-Concat!4631 (reg!3127 r!15766)) (is-EmptyExpr!2798 (regOne!6108 (reg!3127 r!15766)))))))

(assert (=> d!293925 (validRegex!1267 (reg!3127 r!15766))))

(assert (=> d!293925 (= (removeUselessConcat!379 (reg!3127 r!15766)) lt!353584)))

(declare-fun bm!69328 () Bool)

(declare-fun c!168339 () Bool)

(assert (=> bm!69328 (= call!69333 (removeUselessConcat!379 (ite c!168341 (regOne!6108 (reg!3127 r!15766)) (ite c!168339 (regTwo!6109 (reg!3127 r!15766)) (reg!3127 (reg!3127 r!15766))))))))

(declare-fun bm!69329 () Bool)

(assert (=> bm!69329 (= call!69335 call!69336)))

(declare-fun b!1016363 () Bool)

(assert (=> b!1016363 (= e!649593 e!649595)))

(declare-fun c!168338 () Bool)

(assert (=> b!1016363 (= c!168338 (and (is-Concat!4631 (reg!3127 r!15766)) (is-EmptyExpr!2798 (regTwo!6108 (reg!3127 r!15766)))))))

(declare-fun b!1016364 () Bool)

(assert (=> b!1016364 (= e!649592 (= (nullable!908 lt!353584) (nullable!908 (reg!3127 r!15766))))))

(declare-fun b!1016365 () Bool)

(declare-fun e!649596 () Regex!2798)

(assert (=> b!1016365 (= e!649596 (Union!2798 call!69335 call!69332))))

(declare-fun bm!69330 () Bool)

(declare-fun call!69334 () Regex!2798)

(assert (=> bm!69330 (= call!69336 call!69334)))

(declare-fun b!1016366 () Bool)

(assert (=> b!1016366 (= e!649593 call!69334)))

(declare-fun b!1016367 () Bool)

(declare-fun c!168337 () Bool)

(assert (=> b!1016367 (= c!168337 (is-Star!2798 (reg!3127 r!15766)))))

(assert (=> b!1016367 (= e!649596 e!649591)))

(declare-fun b!1016368 () Bool)

(assert (=> b!1016368 (= e!649591 (Star!2798 call!69332))))

(declare-fun b!1016369 () Bool)

(assert (=> b!1016369 (= e!649594 e!649596)))

(assert (=> b!1016369 (= c!168339 (is-Union!2798 (reg!3127 r!15766)))))

(declare-fun bm!69331 () Bool)

(assert (=> bm!69331 (= call!69334 (removeUselessConcat!379 (ite c!168340 (regTwo!6108 (reg!3127 r!15766)) (ite c!168338 (regOne!6108 (reg!3127 r!15766)) (ite c!168341 (regTwo!6108 (reg!3127 r!15766)) (regOne!6109 (reg!3127 r!15766)))))))))

(assert (= (and d!293925 c!168340) b!1016366))

(assert (= (and d!293925 (not c!168340)) b!1016363))

(assert (= (and b!1016363 c!168338) b!1016359))

(assert (= (and b!1016363 (not c!168338)) b!1016362))

(assert (= (and b!1016362 c!168341) b!1016360))

(assert (= (and b!1016362 (not c!168341)) b!1016369))

(assert (= (and b!1016369 c!168339) b!1016365))

(assert (= (and b!1016369 (not c!168339)) b!1016367))

(assert (= (and b!1016367 c!168337) b!1016368))

(assert (= (and b!1016367 (not c!168337)) b!1016361))

(assert (= (or b!1016365 b!1016368) bm!69327))

(assert (= (or b!1016360 b!1016365) bm!69329))

(assert (= (or b!1016360 bm!69327) bm!69328))

(assert (= (or b!1016359 bm!69329) bm!69330))

(assert (= (or b!1016366 bm!69330) bm!69331))

(assert (= (and d!293925 res!456824) b!1016364))

(declare-fun m!1198023 () Bool)

(assert (=> d!293925 m!1198023))

(assert (=> d!293925 m!1197859))

(declare-fun m!1198025 () Bool)

(assert (=> bm!69328 m!1198025))

(declare-fun m!1198027 () Bool)

(assert (=> b!1016364 m!1198027))

(assert (=> b!1016364 m!1197871))

(declare-fun m!1198029 () Bool)

(assert (=> bm!69331 m!1198029))

(assert (=> b!1015953 d!293925))

(declare-fun d!293927 () Bool)

(assert (=> d!293927 (= (matchR!1334 lt!353487 (_2!6521 lt!353491)) (matchR!1334 (removeUselessConcat!379 lt!353487) (_2!6521 lt!353491)))))

(declare-fun lt!353585 () Unit!15263)

(assert (=> d!293927 (= lt!353585 (choose!6411 lt!353487 (_2!6521 lt!353491)))))

(assert (=> d!293927 (validRegex!1267 lt!353487)))

(assert (=> d!293927 (= (lemmaRemoveUselessConcatSound!223 lt!353487 (_2!6521 lt!353491)) lt!353585)))

(declare-fun bs!246453 () Bool)

(assert (= bs!246453 d!293927))

(assert (=> bs!246453 m!1197895))

(assert (=> bs!246453 m!1197777))

(declare-fun m!1198031 () Bool)

(assert (=> bs!246453 m!1198031))

(assert (=> bs!246453 m!1197789))

(assert (=> bs!246453 m!1197777))

(declare-fun m!1198033 () Bool)

(assert (=> bs!246453 m!1198033))

(assert (=> b!1015953 d!293927))

(declare-fun d!293929 () Bool)

(declare-fun lt!353586 () Int)

(assert (=> d!293929 (>= lt!353586 0)))

(declare-fun e!649597 () Int)

(assert (=> d!293929 (= lt!353586 e!649597)))

(declare-fun c!168342 () Bool)

(assert (=> d!293929 (= c!168342 (is-Nil!10012 (_2!6521 lt!353491)))))

(assert (=> d!293929 (= (size!7974 (_2!6521 lt!353491)) lt!353586)))

(declare-fun b!1016370 () Bool)

(assert (=> b!1016370 (= e!649597 0)))

(declare-fun b!1016371 () Bool)

(assert (=> b!1016371 (= e!649597 (+ 1 (size!7974 (t!101074 (_2!6521 lt!353491)))))))

(assert (= (and d!293929 c!168342) b!1016370))

(assert (= (and d!293929 (not c!168342)) b!1016371))

(declare-fun m!1198035 () Bool)

(assert (=> b!1016371 m!1198035))

(assert (=> b!1015953 d!293929))

(declare-fun b!1016372 () Bool)

(declare-fun e!649602 () Regex!2798)

(declare-fun call!69341 () Regex!2798)

(assert (=> b!1016372 (= e!649602 call!69341)))

(declare-fun b!1016373 () Bool)

(declare-fun e!649601 () Regex!2798)

(declare-fun call!69338 () Regex!2798)

(declare-fun call!69340 () Regex!2798)

(assert (=> b!1016373 (= e!649601 (Concat!4631 call!69338 call!69340))))

(declare-fun b!1016374 () Bool)

(declare-fun e!649598 () Regex!2798)

(assert (=> b!1016374 (= e!649598 lt!353487)))

(declare-fun b!1016375 () Bool)

(declare-fun c!168347 () Bool)

(assert (=> b!1016375 (= c!168347 (is-Concat!4631 lt!353487))))

(assert (=> b!1016375 (= e!649602 e!649601)))

(declare-fun bm!69332 () Bool)

(declare-fun call!69337 () Regex!2798)

(assert (=> bm!69332 (= call!69337 call!69338)))

(declare-fun d!293931 () Bool)

(declare-fun e!649599 () Bool)

(assert (=> d!293931 e!649599))

(declare-fun res!456825 () Bool)

(assert (=> d!293931 (=> (not res!456825) (not e!649599))))

(declare-fun lt!353589 () Regex!2798)

(assert (=> d!293931 (= res!456825 (validRegex!1267 lt!353589))))

(declare-fun e!649600 () Regex!2798)

(assert (=> d!293931 (= lt!353589 e!649600)))

(declare-fun c!168346 () Bool)

(assert (=> d!293931 (= c!168346 (and (is-Concat!4631 lt!353487) (is-EmptyExpr!2798 (regOne!6108 lt!353487))))))

(assert (=> d!293931 (validRegex!1267 lt!353487)))

(assert (=> d!293931 (= (removeUselessConcat!379 lt!353487) lt!353589)))

(declare-fun bm!69333 () Bool)

(declare-fun c!168345 () Bool)

(assert (=> bm!69333 (= call!69338 (removeUselessConcat!379 (ite c!168347 (regOne!6108 lt!353487) (ite c!168345 (regTwo!6109 lt!353487) (reg!3127 lt!353487)))))))

(declare-fun bm!69334 () Bool)

(assert (=> bm!69334 (= call!69340 call!69341)))

(declare-fun b!1016376 () Bool)

(assert (=> b!1016376 (= e!649600 e!649602)))

(declare-fun c!168344 () Bool)

(assert (=> b!1016376 (= c!168344 (and (is-Concat!4631 lt!353487) (is-EmptyExpr!2798 (regTwo!6108 lt!353487))))))

(declare-fun b!1016377 () Bool)

(assert (=> b!1016377 (= e!649599 (= (nullable!908 lt!353589) (nullable!908 lt!353487)))))

(declare-fun b!1016378 () Bool)

(declare-fun e!649603 () Regex!2798)

(assert (=> b!1016378 (= e!649603 (Union!2798 call!69340 call!69337))))

(declare-fun bm!69335 () Bool)

(declare-fun call!69339 () Regex!2798)

(assert (=> bm!69335 (= call!69341 call!69339)))

(declare-fun b!1016379 () Bool)

(assert (=> b!1016379 (= e!649600 call!69339)))

(declare-fun b!1016380 () Bool)

(declare-fun c!168343 () Bool)

(assert (=> b!1016380 (= c!168343 (is-Star!2798 lt!353487))))

(assert (=> b!1016380 (= e!649603 e!649598)))

(declare-fun b!1016381 () Bool)

(assert (=> b!1016381 (= e!649598 (Star!2798 call!69337))))

(declare-fun b!1016382 () Bool)

(assert (=> b!1016382 (= e!649601 e!649603)))

(assert (=> b!1016382 (= c!168345 (is-Union!2798 lt!353487))))

(declare-fun bm!69336 () Bool)

(assert (=> bm!69336 (= call!69339 (removeUselessConcat!379 (ite c!168346 (regTwo!6108 lt!353487) (ite c!168344 (regOne!6108 lt!353487) (ite c!168347 (regTwo!6108 lt!353487) (regOne!6109 lt!353487))))))))

(assert (= (and d!293931 c!168346) b!1016379))

(assert (= (and d!293931 (not c!168346)) b!1016376))

(assert (= (and b!1016376 c!168344) b!1016372))

(assert (= (and b!1016376 (not c!168344)) b!1016375))

(assert (= (and b!1016375 c!168347) b!1016373))

(assert (= (and b!1016375 (not c!168347)) b!1016382))

(assert (= (and b!1016382 c!168345) b!1016378))

(assert (= (and b!1016382 (not c!168345)) b!1016380))

(assert (= (and b!1016380 c!168343) b!1016381))

(assert (= (and b!1016380 (not c!168343)) b!1016374))

(assert (= (or b!1016378 b!1016381) bm!69332))

(assert (= (or b!1016373 b!1016378) bm!69334))

(assert (= (or b!1016373 bm!69332) bm!69333))

(assert (= (or b!1016372 bm!69334) bm!69335))

(assert (= (or b!1016379 bm!69335) bm!69336))

(assert (= (and d!293931 res!456825) b!1016377))

(declare-fun m!1198037 () Bool)

(assert (=> d!293931 m!1198037))

(assert (=> d!293931 m!1197895))

(declare-fun m!1198039 () Bool)

(assert (=> bm!69333 m!1198039))

(declare-fun m!1198041 () Bool)

(assert (=> b!1016377 m!1198041))

(assert (=> b!1016377 m!1197907))

(declare-fun m!1198043 () Bool)

(assert (=> bm!69336 m!1198043))

(assert (=> b!1015953 d!293931))

(declare-fun b!1016396 () Bool)

(declare-fun e!649606 () Bool)

(declare-fun tp!309176 () Bool)

(declare-fun tp!309179 () Bool)

(assert (=> b!1016396 (= e!649606 (and tp!309176 tp!309179))))

(declare-fun b!1016395 () Bool)

(declare-fun tp!309177 () Bool)

(assert (=> b!1016395 (= e!649606 tp!309177)))

(assert (=> b!1015951 (= tp!309142 e!649606)))

(declare-fun b!1016394 () Bool)

(declare-fun tp!309175 () Bool)

(declare-fun tp!309178 () Bool)

(assert (=> b!1016394 (= e!649606 (and tp!309175 tp!309178))))

(declare-fun b!1016393 () Bool)

(assert (=> b!1016393 (= e!649606 tp_is_empty!5239)))

(assert (= (and b!1015951 (is-ElementMatch!2798 (regOne!6109 r!15766))) b!1016393))

(assert (= (and b!1015951 (is-Concat!4631 (regOne!6109 r!15766))) b!1016394))

(assert (= (and b!1015951 (is-Star!2798 (regOne!6109 r!15766))) b!1016395))

(assert (= (and b!1015951 (is-Union!2798 (regOne!6109 r!15766))) b!1016396))

(declare-fun b!1016400 () Bool)

(declare-fun e!649607 () Bool)

(declare-fun tp!309181 () Bool)

(declare-fun tp!309184 () Bool)

(assert (=> b!1016400 (= e!649607 (and tp!309181 tp!309184))))

(declare-fun b!1016399 () Bool)

(declare-fun tp!309182 () Bool)

(assert (=> b!1016399 (= e!649607 tp!309182)))

(assert (=> b!1015951 (= tp!309144 e!649607)))

(declare-fun b!1016398 () Bool)

(declare-fun tp!309180 () Bool)

(declare-fun tp!309183 () Bool)

(assert (=> b!1016398 (= e!649607 (and tp!309180 tp!309183))))

(declare-fun b!1016397 () Bool)

(assert (=> b!1016397 (= e!649607 tp_is_empty!5239)))

(assert (= (and b!1015951 (is-ElementMatch!2798 (regTwo!6109 r!15766))) b!1016397))

(assert (= (and b!1015951 (is-Concat!4631 (regTwo!6109 r!15766))) b!1016398))

(assert (= (and b!1015951 (is-Star!2798 (regTwo!6109 r!15766))) b!1016399))

(assert (= (and b!1015951 (is-Union!2798 (regTwo!6109 r!15766))) b!1016400))

(declare-fun b!1016405 () Bool)

(declare-fun e!649612 () Bool)

(declare-fun tp!309187 () Bool)

(assert (=> b!1016405 (= e!649612 (and tp_is_empty!5239 tp!309187))))

(assert (=> b!1015948 (= tp!309141 e!649612)))

(assert (= (and b!1015948 (is-Cons!10012 (t!101074 s!10566))) b!1016405))

(declare-fun b!1016411 () Bool)

(declare-fun e!649613 () Bool)

(declare-fun tp!309189 () Bool)

(declare-fun tp!309192 () Bool)

(assert (=> b!1016411 (= e!649613 (and tp!309189 tp!309192))))

(declare-fun b!1016410 () Bool)

(declare-fun tp!309190 () Bool)

(assert (=> b!1016410 (= e!649613 tp!309190)))

(assert (=> b!1015954 (= tp!309146 e!649613)))

(declare-fun b!1016409 () Bool)

(declare-fun tp!309188 () Bool)

(declare-fun tp!309191 () Bool)

(assert (=> b!1016409 (= e!649613 (and tp!309188 tp!309191))))

(declare-fun b!1016408 () Bool)

(assert (=> b!1016408 (= e!649613 tp_is_empty!5239)))

(assert (= (and b!1015954 (is-ElementMatch!2798 (reg!3127 r!15766))) b!1016408))

(assert (= (and b!1015954 (is-Concat!4631 (reg!3127 r!15766))) b!1016409))

(assert (= (and b!1015954 (is-Star!2798 (reg!3127 r!15766))) b!1016410))

(assert (= (and b!1015954 (is-Union!2798 (reg!3127 r!15766))) b!1016411))

(declare-fun b!1016417 () Bool)

(declare-fun e!649614 () Bool)

(declare-fun tp!309194 () Bool)

(declare-fun tp!309197 () Bool)

(assert (=> b!1016417 (= e!649614 (and tp!309194 tp!309197))))

(declare-fun b!1016416 () Bool)

(declare-fun tp!309195 () Bool)

(assert (=> b!1016416 (= e!649614 tp!309195)))

(assert (=> b!1015944 (= tp!309145 e!649614)))

(declare-fun b!1016415 () Bool)

(declare-fun tp!309193 () Bool)

(declare-fun tp!309196 () Bool)

(assert (=> b!1016415 (= e!649614 (and tp!309193 tp!309196))))

(declare-fun b!1016414 () Bool)

(assert (=> b!1016414 (= e!649614 tp_is_empty!5239)))

(assert (= (and b!1015944 (is-ElementMatch!2798 (regOne!6108 r!15766))) b!1016414))

(assert (= (and b!1015944 (is-Concat!4631 (regOne!6108 r!15766))) b!1016415))

(assert (= (and b!1015944 (is-Star!2798 (regOne!6108 r!15766))) b!1016416))

(assert (= (and b!1015944 (is-Union!2798 (regOne!6108 r!15766))) b!1016417))

(declare-fun b!1016421 () Bool)

(declare-fun e!649615 () Bool)

(declare-fun tp!309199 () Bool)

(declare-fun tp!309202 () Bool)

(assert (=> b!1016421 (= e!649615 (and tp!309199 tp!309202))))

(declare-fun b!1016420 () Bool)

(declare-fun tp!309200 () Bool)

(assert (=> b!1016420 (= e!649615 tp!309200)))

(assert (=> b!1015944 (= tp!309143 e!649615)))

(declare-fun b!1016419 () Bool)

(declare-fun tp!309198 () Bool)

(declare-fun tp!309201 () Bool)

(assert (=> b!1016419 (= e!649615 (and tp!309198 tp!309201))))

(declare-fun b!1016418 () Bool)

(assert (=> b!1016418 (= e!649615 tp_is_empty!5239)))

(assert (= (and b!1015944 (is-ElementMatch!2798 (regTwo!6108 r!15766))) b!1016418))

(assert (= (and b!1015944 (is-Concat!4631 (regTwo!6108 r!15766))) b!1016419))

(assert (= (and b!1015944 (is-Star!2798 (regTwo!6108 r!15766))) b!1016420))

(assert (= (and b!1015944 (is-Union!2798 (regTwo!6108 r!15766))) b!1016421))

(push 1)

(assert (not bm!69328))

(assert (not b!1016065))

(assert (not b!1016166))

(assert (not bm!69286))

(assert (not d!293925))

(assert (not b!1016152))

(assert (not d!293881))

(assert (not d!293917))

(assert (not d!293915))

(assert (not b!1016257))

(assert (not b!1016055))

(assert (not b!1016306))

(assert (not d!293883))

(assert (not d!293907))

(assert (not b!1016294))

(assert (not b!1016303))

(assert (not b!1016154))

(assert (not b!1016316))

(assert (not bm!69291))

(assert (not bm!69287))

(assert (not b!1016256))

(assert (not b!1016326))

(assert (not bm!69301))

(assert (not b!1016395))

(assert (not b!1016304))

(assert (not bm!69336))

(assert (not b!1016059))

(assert (not d!293911))

(assert (not d!293905))

(assert (not b!1016328))

(assert (not b!1016398))

(assert (not bm!69331))

(assert (not d!293897))

(assert (not b!1016415))

(assert (not b!1016396))

(assert (not d!293879))

(assert (not b!1016324))

(assert (not b!1016308))

(assert (not b!1016419))

(assert (not b!1016101))

(assert (not b!1016394))

(assert (not b!1016292))

(assert (not b!1016290))

(assert (not b!1016260))

(assert (not b!1016150))

(assert (not b!1016302))

(assert (not b!1016054))

(assert (not d!293895))

(assert (not b!1016336))

(assert (not d!293871))

(assert (not b!1016314))

(assert (not b!1016206))

(assert (not b!1016420))

(assert (not b!1016067))

(assert (not b!1016153))

(assert (not b!1016215))

(assert (not bm!69288))

(assert (not b!1016400))

(assert (not b!1016410))

(assert (not b!1016164))

(assert (not b!1016142))

(assert tp_is_empty!5239)

(assert (not b!1016322))

(assert (not bm!69304))

(assert (not b!1016140))

(assert (not b!1016156))

(assert (not b!1016259))

(assert (not bm!69281))

(assert (not b!1016334))

(assert (not b!1016399))

(assert (not b!1016377))

(assert (not bm!69300))

(assert (not b!1016405))

(assert (not d!293909))

(assert (not b!1016289))

(assert (not d!293913))

(assert (not b!1016411))

(assert (not d!293923))

(assert (not bm!69316))

(assert (not bm!69333))

(assert (not b!1016416))

(assert (not b!1016104))

(assert (not b!1016144))

(assert (not b!1016255))

(assert (not b!1016139))

(assert (not b!1016409))

(assert (not bm!69314))

(assert (not b!1016417))

(assert (not b!1016158))

(assert (not bm!69315))

(assert (not d!293927))

(assert (not d!293931))

(assert (not b!1016300))

(assert (not d!293889))

(assert (not b!1016254))

(assert (not b!1016364))

(assert (not b!1016323))

(assert (not b!1016371))

(assert (not b!1016057))

(assert (not bm!69303))

(assert (not b!1016421))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

