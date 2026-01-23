; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!82496 () Bool)

(assert start!82496)

(declare-fun b!918055 () Bool)

(assert (=> b!918055 true))

(assert (=> b!918055 true))

(declare-fun lambda!29668 () Int)

(declare-fun lambda!29667 () Int)

(assert (=> b!918055 (not (= lambda!29668 lambda!29667))))

(assert (=> b!918055 true))

(assert (=> b!918055 true))

(declare-fun bs!236274 () Bool)

(declare-fun b!918049 () Bool)

(assert (= bs!236274 (and b!918049 b!918055)))

(declare-fun lambda!29669 () Int)

(declare-datatypes ((C!5502 0))(
  ( (C!5503 (val!2999 Int)) )
))
(declare-datatypes ((Regex!2466 0))(
  ( (ElementMatch!2466 (c!148849 C!5502)) (Concat!4299 (regOne!5444 Regex!2466) (regTwo!5444 Regex!2466)) (EmptyExpr!2466) (Star!2466 (reg!2795 Regex!2466)) (EmptyLang!2466) (Union!2466 (regOne!5445 Regex!2466) (regTwo!5445 Regex!2466)) )
))
(declare-fun r!15766 () Regex!2466)

(declare-fun lt!337852 () Regex!2466)

(declare-fun lt!337853 () Regex!2466)

(assert (=> bs!236274 (= (and (= lt!337853 (regOne!5444 r!15766)) (= lt!337852 (regTwo!5444 r!15766))) (= lambda!29669 lambda!29667))))

(assert (=> bs!236274 (not (= lambda!29669 lambda!29668))))

(assert (=> b!918049 true))

(assert (=> b!918049 true))

(assert (=> b!918049 true))

(declare-fun b!918048 () Bool)

(declare-fun e!598054 () Bool)

(declare-fun tp!286398 () Bool)

(declare-fun tp!286395 () Bool)

(assert (=> b!918048 (= e!598054 (and tp!286398 tp!286395))))

(declare-fun e!598052 () Bool)

(declare-fun validRegex!935 (Regex!2466) Bool)

(assert (=> b!918049 (= e!598052 (validRegex!935 (regTwo!5444 r!15766)))))

(declare-datatypes ((List!9696 0))(
  ( (Nil!9680) (Cons!9680 (h!15081 C!5502) (t!100742 List!9696)) )
))
(declare-fun s!10566 () List!9696)

(declare-datatypes ((tuple2!10918 0))(
  ( (tuple2!10919 (_1!6285 List!9696) (_2!6285 List!9696)) )
))
(declare-datatypes ((Option!2101 0))(
  ( (None!2100) (Some!2100 (v!19517 tuple2!10918)) )
))
(declare-fun isDefined!1743 (Option!2101) Bool)

(declare-fun findConcatSeparation!207 (Regex!2466 Regex!2466 List!9696 List!9696 List!9696) Option!2101)

(declare-fun Exists!237 (Int) Bool)

(assert (=> b!918049 (= (isDefined!1743 (findConcatSeparation!207 lt!337853 lt!337852 Nil!9680 s!10566 s!10566)) (Exists!237 lambda!29669))))

(declare-datatypes ((Unit!14551 0))(
  ( (Unit!14552) )
))
(declare-fun lt!337849 () Unit!14551)

(declare-fun lemmaFindConcatSeparationEquivalentToExists!207 (Regex!2466 Regex!2466 List!9696) Unit!14551)

(assert (=> b!918049 (= lt!337849 (lemmaFindConcatSeparationEquivalentToExists!207 lt!337853 lt!337852 s!10566))))

(declare-fun lt!337855 () Regex!2466)

(declare-fun matchRSpec!267 (Regex!2466 List!9696) Bool)

(assert (=> b!918049 (matchRSpec!267 lt!337855 s!10566)))

(declare-fun lt!337856 () Unit!14551)

(declare-fun mainMatchTheorem!267 (Regex!2466 List!9696) Unit!14551)

(assert (=> b!918049 (= lt!337856 (mainMatchTheorem!267 lt!337855 s!10566))))

(declare-fun b!918050 () Bool)

(declare-fun e!598051 () Bool)

(declare-fun e!598050 () Bool)

(assert (=> b!918050 (= e!598051 (not e!598050))))

(declare-fun res!417367 () Bool)

(assert (=> b!918050 (=> res!417367 e!598050)))

(declare-fun lt!337848 () Bool)

(assert (=> b!918050 (= res!417367 (or lt!337848 (and (is-Concat!4299 r!15766) (is-EmptyExpr!2466 (regOne!5444 r!15766))) (and (is-Concat!4299 r!15766) (is-EmptyExpr!2466 (regTwo!5444 r!15766))) (not (is-Concat!4299 r!15766))))))

(assert (=> b!918050 (= lt!337848 (matchRSpec!267 r!15766 s!10566))))

(declare-fun matchR!1004 (Regex!2466 List!9696) Bool)

(assert (=> b!918050 (= lt!337848 (matchR!1004 r!15766 s!10566))))

(declare-fun lt!337851 () Unit!14551)

(assert (=> b!918050 (= lt!337851 (mainMatchTheorem!267 r!15766 s!10566))))

(declare-fun b!918052 () Bool)

(declare-fun e!598053 () Bool)

(declare-fun tp_is_empty!4575 () Bool)

(declare-fun tp!286396 () Bool)

(assert (=> b!918052 (= e!598053 (and tp_is_empty!4575 tp!286396))))

(declare-fun b!918053 () Bool)

(declare-fun tp!286397 () Bool)

(declare-fun tp!286393 () Bool)

(assert (=> b!918053 (= e!598054 (and tp!286397 tp!286393))))

(declare-fun b!918054 () Bool)

(declare-fun tp!286394 () Bool)

(assert (=> b!918054 (= e!598054 tp!286394)))

(declare-fun e!598055 () Bool)

(assert (=> b!918055 (= e!598050 e!598055)))

(declare-fun res!417370 () Bool)

(assert (=> b!918055 (=> res!417370 e!598055)))

(declare-fun isEmpty!5915 (List!9696) Bool)

(assert (=> b!918055 (= res!417370 (isEmpty!5915 s!10566))))

(assert (=> b!918055 (= (Exists!237 lambda!29667) (Exists!237 lambda!29668))))

(declare-fun lt!337850 () Unit!14551)

(declare-fun lemmaExistCutMatchRandMatchRSpecEquivalent!149 (Regex!2466 Regex!2466 List!9696) Unit!14551)

(assert (=> b!918055 (= lt!337850 (lemmaExistCutMatchRandMatchRSpecEquivalent!149 (regOne!5444 r!15766) (regTwo!5444 r!15766) s!10566))))

(assert (=> b!918055 (= (isDefined!1743 (findConcatSeparation!207 (regOne!5444 r!15766) (regTwo!5444 r!15766) Nil!9680 s!10566 s!10566)) (Exists!237 lambda!29667))))

(declare-fun lt!337854 () Unit!14551)

(assert (=> b!918055 (= lt!337854 (lemmaFindConcatSeparationEquivalentToExists!207 (regOne!5444 r!15766) (regTwo!5444 r!15766) s!10566))))

(declare-fun b!918056 () Bool)

(assert (=> b!918056 (= e!598054 tp_is_empty!4575)))

(declare-fun res!417369 () Bool)

(assert (=> start!82496 (=> (not res!417369) (not e!598051))))

(assert (=> start!82496 (= res!417369 (validRegex!935 r!15766))))

(assert (=> start!82496 e!598051))

(assert (=> start!82496 e!598054))

(assert (=> start!82496 e!598053))

(declare-fun b!918051 () Bool)

(assert (=> b!918051 (= e!598055 e!598052)))

(declare-fun res!417368 () Bool)

(assert (=> b!918051 (=> res!417368 e!598052)))

(assert (=> b!918051 (= res!417368 (not (matchR!1004 lt!337855 s!10566)))))

(assert (=> b!918051 (= lt!337855 (Concat!4299 lt!337853 lt!337852))))

(declare-fun removeUselessConcat!143 (Regex!2466) Regex!2466)

(assert (=> b!918051 (= lt!337852 (removeUselessConcat!143 (regTwo!5444 r!15766)))))

(assert (=> b!918051 (= lt!337853 (removeUselessConcat!143 (regOne!5444 r!15766)))))

(assert (= (and start!82496 res!417369) b!918050))

(assert (= (and b!918050 (not res!417367)) b!918055))

(assert (= (and b!918055 (not res!417370)) b!918051))

(assert (= (and b!918051 (not res!417368)) b!918049))

(assert (= (and start!82496 (is-ElementMatch!2466 r!15766)) b!918056))

(assert (= (and start!82496 (is-Concat!4299 r!15766)) b!918053))

(assert (= (and start!82496 (is-Star!2466 r!15766)) b!918054))

(assert (= (and start!82496 (is-Union!2466 r!15766)) b!918048))

(assert (= (and start!82496 (is-Cons!9680 s!10566)) b!918052))

(declare-fun m!1146521 () Bool)

(assert (=> b!918049 m!1146521))

(declare-fun m!1146523 () Bool)

(assert (=> b!918049 m!1146523))

(declare-fun m!1146525 () Bool)

(assert (=> b!918049 m!1146525))

(declare-fun m!1146527 () Bool)

(assert (=> b!918049 m!1146527))

(assert (=> b!918049 m!1146525))

(declare-fun m!1146529 () Bool)

(assert (=> b!918049 m!1146529))

(declare-fun m!1146531 () Bool)

(assert (=> b!918049 m!1146531))

(declare-fun m!1146533 () Bool)

(assert (=> b!918049 m!1146533))

(declare-fun m!1146535 () Bool)

(assert (=> start!82496 m!1146535))

(declare-fun m!1146537 () Bool)

(assert (=> b!918051 m!1146537))

(declare-fun m!1146539 () Bool)

(assert (=> b!918051 m!1146539))

(declare-fun m!1146541 () Bool)

(assert (=> b!918051 m!1146541))

(declare-fun m!1146543 () Bool)

(assert (=> b!918055 m!1146543))

(declare-fun m!1146545 () Bool)

(assert (=> b!918055 m!1146545))

(declare-fun m!1146547 () Bool)

(assert (=> b!918055 m!1146547))

(declare-fun m!1146549 () Bool)

(assert (=> b!918055 m!1146549))

(declare-fun m!1146551 () Bool)

(assert (=> b!918055 m!1146551))

(declare-fun m!1146553 () Bool)

(assert (=> b!918055 m!1146553))

(assert (=> b!918055 m!1146543))

(declare-fun m!1146555 () Bool)

(assert (=> b!918055 m!1146555))

(assert (=> b!918055 m!1146545))

(declare-fun m!1146557 () Bool)

(assert (=> b!918050 m!1146557))

(declare-fun m!1146559 () Bool)

(assert (=> b!918050 m!1146559))

(declare-fun m!1146561 () Bool)

(assert (=> b!918050 m!1146561))

(push 1)

(assert (not b!918055))

(assert tp_is_empty!4575)

(assert (not b!918051))

(assert (not b!918053))

(assert (not b!918048))

(assert (not b!918052))

(assert (not b!918050))

(assert (not start!82496))

(assert (not b!918049))

(assert (not b!918054))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun bs!236276 () Bool)

(declare-fun b!918149 () Bool)

(assert (= bs!236276 (and b!918149 b!918055)))

(declare-fun lambda!29685 () Int)

(assert (=> bs!236276 (not (= lambda!29685 lambda!29667))))

(assert (=> bs!236276 (not (= lambda!29685 lambda!29668))))

(declare-fun bs!236277 () Bool)

(assert (= bs!236277 (and b!918149 b!918049)))

(assert (=> bs!236277 (not (= lambda!29685 lambda!29669))))

(assert (=> b!918149 true))

(assert (=> b!918149 true))

(declare-fun bs!236278 () Bool)

(declare-fun b!918141 () Bool)

(assert (= bs!236278 (and b!918141 b!918055)))

(declare-fun lambda!29686 () Int)

(assert (=> bs!236278 (not (= lambda!29686 lambda!29667))))

(assert (=> bs!236278 (= lambda!29686 lambda!29668)))

(declare-fun bs!236279 () Bool)

(assert (= bs!236279 (and b!918141 b!918049)))

(assert (=> bs!236279 (not (= lambda!29686 lambda!29669))))

(declare-fun bs!236280 () Bool)

(assert (= bs!236280 (and b!918141 b!918149)))

(assert (=> bs!236280 (not (= lambda!29686 lambda!29685))))

(assert (=> b!918141 true))

(assert (=> b!918141 true))

(declare-fun b!918140 () Bool)

(declare-fun e!598105 () Bool)

(declare-fun e!598103 () Bool)

(assert (=> b!918140 (= e!598105 e!598103)))

(declare-fun res!417417 () Bool)

(assert (=> b!918140 (= res!417417 (matchRSpec!267 (regOne!5445 r!15766) s!10566))))

(assert (=> b!918140 (=> res!417417 e!598103)))

(declare-fun e!598104 () Bool)

(declare-fun call!55630 () Bool)

(assert (=> b!918141 (= e!598104 call!55630)))

(declare-fun b!918142 () Bool)

(declare-fun e!598102 () Bool)

(assert (=> b!918142 (= e!598102 (= s!10566 (Cons!9680 (c!148849 r!15766) Nil!9680)))))

(declare-fun d!280025 () Bool)

(declare-fun c!148862 () Bool)

(assert (=> d!280025 (= c!148862 (is-EmptyExpr!2466 r!15766))))

(declare-fun e!598100 () Bool)

(assert (=> d!280025 (= (matchRSpec!267 r!15766 s!10566) e!598100)))

(declare-fun b!918143 () Bool)

(assert (=> b!918143 (= e!598105 e!598104)))

(declare-fun c!148861 () Bool)

(assert (=> b!918143 (= c!148861 (is-Star!2466 r!15766))))

(declare-fun b!918144 () Bool)

(declare-fun call!55631 () Bool)

(assert (=> b!918144 (= e!598100 call!55631)))

(declare-fun b!918145 () Bool)

(declare-fun c!148859 () Bool)

(assert (=> b!918145 (= c!148859 (is-Union!2466 r!15766))))

(assert (=> b!918145 (= e!598102 e!598105)))

(declare-fun b!918146 () Bool)

(declare-fun c!148860 () Bool)

(assert (=> b!918146 (= c!148860 (is-ElementMatch!2466 r!15766))))

(declare-fun e!598106 () Bool)

(assert (=> b!918146 (= e!598106 e!598102)))

(declare-fun b!918147 () Bool)

(assert (=> b!918147 (= e!598100 e!598106)))

(declare-fun res!417415 () Bool)

(assert (=> b!918147 (= res!417415 (not (is-EmptyLang!2466 r!15766)))))

(assert (=> b!918147 (=> (not res!417415) (not e!598106))))

(declare-fun bm!55625 () Bool)

(assert (=> bm!55625 (= call!55631 (isEmpty!5915 s!10566))))

(declare-fun b!918148 () Bool)

(assert (=> b!918148 (= e!598103 (matchRSpec!267 (regTwo!5445 r!15766) s!10566))))

(declare-fun bm!55626 () Bool)

(assert (=> bm!55626 (= call!55630 (Exists!237 (ite c!148861 lambda!29685 lambda!29686)))))

(declare-fun e!598101 () Bool)

(assert (=> b!918149 (= e!598101 call!55630)))

(declare-fun b!918150 () Bool)

(declare-fun res!417416 () Bool)

(assert (=> b!918150 (=> res!417416 e!598101)))

(assert (=> b!918150 (= res!417416 call!55631)))

(assert (=> b!918150 (= e!598104 e!598101)))

(assert (= (and d!280025 c!148862) b!918144))

(assert (= (and d!280025 (not c!148862)) b!918147))

(assert (= (and b!918147 res!417415) b!918146))

(assert (= (and b!918146 c!148860) b!918142))

(assert (= (and b!918146 (not c!148860)) b!918145))

(assert (= (and b!918145 c!148859) b!918140))

(assert (= (and b!918145 (not c!148859)) b!918143))

(assert (= (and b!918140 (not res!417417)) b!918148))

(assert (= (and b!918143 c!148861) b!918150))

(assert (= (and b!918143 (not c!148861)) b!918141))

(assert (= (and b!918150 (not res!417416)) b!918149))

(assert (= (or b!918149 b!918141) bm!55626))

(assert (= (or b!918144 b!918150) bm!55625))

(declare-fun m!1146605 () Bool)

(assert (=> b!918140 m!1146605))

(assert (=> bm!55625 m!1146551))

(declare-fun m!1146607 () Bool)

(assert (=> b!918148 m!1146607))

(declare-fun m!1146609 () Bool)

(assert (=> bm!55626 m!1146609))

(assert (=> b!918050 d!280025))

(declare-fun b!918180 () Bool)

(declare-fun res!417440 () Bool)

(declare-fun e!598123 () Bool)

(assert (=> b!918180 (=> res!417440 e!598123)))

(declare-fun e!598125 () Bool)

(assert (=> b!918180 (= res!417440 e!598125)))

(declare-fun res!417437 () Bool)

(assert (=> b!918180 (=> (not res!417437) (not e!598125))))

(declare-fun lt!337886 () Bool)

(assert (=> b!918180 (= res!417437 lt!337886)))

(declare-fun b!918181 () Bool)

(declare-fun e!598124 () Bool)

(declare-fun e!598122 () Bool)

(assert (=> b!918181 (= e!598124 e!598122)))

(declare-fun res!417438 () Bool)

(assert (=> b!918181 (=> res!417438 e!598122)))

(declare-fun call!55634 () Bool)

(assert (=> b!918181 (= res!417438 call!55634)))

(declare-fun b!918182 () Bool)

(declare-fun head!1643 (List!9696) C!5502)

(assert (=> b!918182 (= e!598122 (not (= (head!1643 s!10566) (c!148849 r!15766))))))

(declare-fun b!918183 () Bool)

(declare-fun res!417435 () Bool)

(assert (=> b!918183 (=> res!417435 e!598123)))

(assert (=> b!918183 (= res!417435 (not (is-ElementMatch!2466 r!15766)))))

(declare-fun e!598121 () Bool)

(assert (=> b!918183 (= e!598121 e!598123)))

(declare-fun b!918184 () Bool)

(assert (=> b!918184 (= e!598125 (= (head!1643 s!10566) (c!148849 r!15766)))))

(declare-fun b!918185 () Bool)

(declare-fun res!417434 () Bool)

(assert (=> b!918185 (=> (not res!417434) (not e!598125))))

(assert (=> b!918185 (= res!417434 (not call!55634))))

(declare-fun b!918186 () Bool)

(assert (=> b!918186 (= e!598121 (not lt!337886))))

(declare-fun b!918187 () Bool)

(declare-fun e!598126 () Bool)

(declare-fun derivativeStep!490 (Regex!2466 C!5502) Regex!2466)

(declare-fun tail!1205 (List!9696) List!9696)

(assert (=> b!918187 (= e!598126 (matchR!1004 (derivativeStep!490 r!15766 (head!1643 s!10566)) (tail!1205 s!10566)))))

(declare-fun b!918188 () Bool)

(declare-fun e!598127 () Bool)

(assert (=> b!918188 (= e!598127 e!598121)))

(declare-fun c!148869 () Bool)

(assert (=> b!918188 (= c!148869 (is-EmptyLang!2466 r!15766))))

(declare-fun b!918189 () Bool)

(assert (=> b!918189 (= e!598127 (= lt!337886 call!55634))))

(declare-fun b!918190 () Bool)

(declare-fun res!417436 () Bool)

(assert (=> b!918190 (=> res!417436 e!598122)))

(assert (=> b!918190 (= res!417436 (not (isEmpty!5915 (tail!1205 s!10566))))))

(declare-fun b!918191 () Bool)

(declare-fun nullable!680 (Regex!2466) Bool)

(assert (=> b!918191 (= e!598126 (nullable!680 r!15766))))

(declare-fun d!280027 () Bool)

(assert (=> d!280027 e!598127))

(declare-fun c!148870 () Bool)

(assert (=> d!280027 (= c!148870 (is-EmptyExpr!2466 r!15766))))

(assert (=> d!280027 (= lt!337886 e!598126)))

(declare-fun c!148871 () Bool)

(assert (=> d!280027 (= c!148871 (isEmpty!5915 s!10566))))

(assert (=> d!280027 (validRegex!935 r!15766)))

(assert (=> d!280027 (= (matchR!1004 r!15766 s!10566) lt!337886)))

(declare-fun b!918179 () Bool)

(declare-fun res!417441 () Bool)

(assert (=> b!918179 (=> (not res!417441) (not e!598125))))

(assert (=> b!918179 (= res!417441 (isEmpty!5915 (tail!1205 s!10566)))))

(declare-fun b!918192 () Bool)

(assert (=> b!918192 (= e!598123 e!598124)))

(declare-fun res!417439 () Bool)

(assert (=> b!918192 (=> (not res!417439) (not e!598124))))

(assert (=> b!918192 (= res!417439 (not lt!337886))))

(declare-fun bm!55629 () Bool)

(assert (=> bm!55629 (= call!55634 (isEmpty!5915 s!10566))))

(assert (= (and d!280027 c!148871) b!918191))

(assert (= (and d!280027 (not c!148871)) b!918187))

(assert (= (and d!280027 c!148870) b!918189))

(assert (= (and d!280027 (not c!148870)) b!918188))

(assert (= (and b!918188 c!148869) b!918186))

(assert (= (and b!918188 (not c!148869)) b!918183))

(assert (= (and b!918183 (not res!417435)) b!918180))

(assert (= (and b!918180 res!417437) b!918185))

(assert (= (and b!918185 res!417434) b!918179))

(assert (= (and b!918179 res!417441) b!918184))

(assert (= (and b!918180 (not res!417440)) b!918192))

(assert (= (and b!918192 res!417439) b!918181))

(assert (= (and b!918181 (not res!417438)) b!918190))

(assert (= (and b!918190 (not res!417436)) b!918182))

(assert (= (or b!918189 b!918181 b!918185) bm!55629))

(declare-fun m!1146611 () Bool)

(assert (=> b!918187 m!1146611))

(assert (=> b!918187 m!1146611))

(declare-fun m!1146613 () Bool)

(assert (=> b!918187 m!1146613))

(declare-fun m!1146615 () Bool)

(assert (=> b!918187 m!1146615))

(assert (=> b!918187 m!1146613))

(assert (=> b!918187 m!1146615))

(declare-fun m!1146617 () Bool)

(assert (=> b!918187 m!1146617))

(declare-fun m!1146619 () Bool)

(assert (=> b!918191 m!1146619))

(assert (=> b!918182 m!1146611))

(assert (=> b!918184 m!1146611))

(assert (=> b!918190 m!1146615))

(assert (=> b!918190 m!1146615))

(declare-fun m!1146621 () Bool)

(assert (=> b!918190 m!1146621))

(assert (=> b!918179 m!1146615))

(assert (=> b!918179 m!1146615))

(assert (=> b!918179 m!1146621))

(assert (=> bm!55629 m!1146551))

(assert (=> d!280027 m!1146551))

(assert (=> d!280027 m!1146535))

(assert (=> b!918050 d!280027))

(declare-fun d!280031 () Bool)

(assert (=> d!280031 (= (matchR!1004 r!15766 s!10566) (matchRSpec!267 r!15766 s!10566))))

(declare-fun lt!337889 () Unit!14551)

(declare-fun choose!5609 (Regex!2466 List!9696) Unit!14551)

(assert (=> d!280031 (= lt!337889 (choose!5609 r!15766 s!10566))))

(assert (=> d!280031 (validRegex!935 r!15766)))

(assert (=> d!280031 (= (mainMatchTheorem!267 r!15766 s!10566) lt!337889)))

(declare-fun bs!236281 () Bool)

(assert (= bs!236281 d!280031))

(assert (=> bs!236281 m!1146559))

(assert (=> bs!236281 m!1146557))

(declare-fun m!1146623 () Bool)

(assert (=> bs!236281 m!1146623))

(assert (=> bs!236281 m!1146535))

(assert (=> b!918050 d!280031))

(declare-fun d!280033 () Bool)

(declare-fun res!417462 () Bool)

(declare-fun e!598156 () Bool)

(assert (=> d!280033 (=> res!417462 e!598156)))

(assert (=> d!280033 (= res!417462 (is-ElementMatch!2466 r!15766))))

(assert (=> d!280033 (= (validRegex!935 r!15766) e!598156)))

(declare-fun b!918233 () Bool)

(declare-fun e!598162 () Bool)

(declare-fun call!55641 () Bool)

(assert (=> b!918233 (= e!598162 call!55641)))

(declare-fun b!918234 () Bool)

(declare-fun e!598159 () Bool)

(declare-fun e!598161 () Bool)

(assert (=> b!918234 (= e!598159 e!598161)))

(declare-fun c!148884 () Bool)

(assert (=> b!918234 (= c!148884 (is-Union!2466 r!15766))))

(declare-fun b!918235 () Bool)

(assert (=> b!918235 (= e!598159 e!598162)))

(declare-fun res!417460 () Bool)

(assert (=> b!918235 (= res!417460 (not (nullable!680 (reg!2795 r!15766))))))

(assert (=> b!918235 (=> (not res!417460) (not e!598162))))

(declare-fun b!918236 () Bool)

(declare-fun e!598160 () Bool)

(declare-fun e!598158 () Bool)

(assert (=> b!918236 (= e!598160 e!598158)))

(declare-fun res!417458 () Bool)

(assert (=> b!918236 (=> (not res!417458) (not e!598158))))

(declare-fun call!55642 () Bool)

(assert (=> b!918236 (= res!417458 call!55642)))

(declare-fun b!918237 () Bool)

(declare-fun res!417459 () Bool)

(assert (=> b!918237 (=> res!417459 e!598160)))

(assert (=> b!918237 (= res!417459 (not (is-Concat!4299 r!15766)))))

(assert (=> b!918237 (= e!598161 e!598160)))

(declare-fun bm!55636 () Bool)

(declare-fun c!148885 () Bool)

(assert (=> bm!55636 (= call!55641 (validRegex!935 (ite c!148885 (reg!2795 r!15766) (ite c!148884 (regTwo!5445 r!15766) (regTwo!5444 r!15766)))))))

(declare-fun bm!55637 () Bool)

(declare-fun call!55643 () Bool)

(assert (=> bm!55637 (= call!55643 call!55641)))

(declare-fun bm!55638 () Bool)

(assert (=> bm!55638 (= call!55642 (validRegex!935 (ite c!148884 (regOne!5445 r!15766) (regOne!5444 r!15766))))))

(declare-fun b!918238 () Bool)

(declare-fun res!417461 () Bool)

(declare-fun e!598157 () Bool)

(assert (=> b!918238 (=> (not res!417461) (not e!598157))))

(assert (=> b!918238 (= res!417461 call!55642)))

(assert (=> b!918238 (= e!598161 e!598157)))

(declare-fun b!918239 () Bool)

(assert (=> b!918239 (= e!598156 e!598159)))

(assert (=> b!918239 (= c!148885 (is-Star!2466 r!15766))))

(declare-fun b!918240 () Bool)

(assert (=> b!918240 (= e!598158 call!55643)))

(declare-fun b!918241 () Bool)

(assert (=> b!918241 (= e!598157 call!55643)))

(assert (= (and d!280033 (not res!417462)) b!918239))

(assert (= (and b!918239 c!148885) b!918235))

(assert (= (and b!918239 (not c!148885)) b!918234))

(assert (= (and b!918235 res!417460) b!918233))

(assert (= (and b!918234 c!148884) b!918238))

(assert (= (and b!918234 (not c!148884)) b!918237))

(assert (= (and b!918238 res!417461) b!918241))

(assert (= (and b!918237 (not res!417459)) b!918236))

(assert (= (and b!918236 res!417458) b!918240))

(assert (= (or b!918241 b!918240) bm!55637))

(assert (= (or b!918238 b!918236) bm!55638))

(assert (= (or b!918233 bm!55637) bm!55636))

(declare-fun m!1146625 () Bool)

(assert (=> b!918235 m!1146625))

(declare-fun m!1146627 () Bool)

(assert (=> bm!55636 m!1146627))

(declare-fun m!1146629 () Bool)

(assert (=> bm!55638 m!1146629))

(assert (=> start!82496 d!280033))

(declare-fun b!918243 () Bool)

(declare-fun res!417469 () Bool)

(declare-fun e!598165 () Bool)

(assert (=> b!918243 (=> res!417469 e!598165)))

(declare-fun e!598167 () Bool)

(assert (=> b!918243 (= res!417469 e!598167)))

(declare-fun res!417466 () Bool)

(assert (=> b!918243 (=> (not res!417466) (not e!598167))))

(declare-fun lt!337890 () Bool)

(assert (=> b!918243 (= res!417466 lt!337890)))

(declare-fun b!918244 () Bool)

(declare-fun e!598166 () Bool)

(declare-fun e!598164 () Bool)

(assert (=> b!918244 (= e!598166 e!598164)))

(declare-fun res!417467 () Bool)

(assert (=> b!918244 (=> res!417467 e!598164)))

(declare-fun call!55644 () Bool)

(assert (=> b!918244 (= res!417467 call!55644)))

(declare-fun b!918245 () Bool)

(assert (=> b!918245 (= e!598164 (not (= (head!1643 s!10566) (c!148849 lt!337855))))))

(declare-fun b!918246 () Bool)

(declare-fun res!417464 () Bool)

(assert (=> b!918246 (=> res!417464 e!598165)))

(assert (=> b!918246 (= res!417464 (not (is-ElementMatch!2466 lt!337855)))))

(declare-fun e!598163 () Bool)

(assert (=> b!918246 (= e!598163 e!598165)))

(declare-fun b!918247 () Bool)

(assert (=> b!918247 (= e!598167 (= (head!1643 s!10566) (c!148849 lt!337855)))))

(declare-fun b!918248 () Bool)

(declare-fun res!417463 () Bool)

(assert (=> b!918248 (=> (not res!417463) (not e!598167))))

(assert (=> b!918248 (= res!417463 (not call!55644))))

(declare-fun b!918249 () Bool)

(assert (=> b!918249 (= e!598163 (not lt!337890))))

(declare-fun b!918250 () Bool)

(declare-fun e!598168 () Bool)

(assert (=> b!918250 (= e!598168 (matchR!1004 (derivativeStep!490 lt!337855 (head!1643 s!10566)) (tail!1205 s!10566)))))

(declare-fun b!918251 () Bool)

(declare-fun e!598169 () Bool)

(assert (=> b!918251 (= e!598169 e!598163)))

(declare-fun c!148886 () Bool)

(assert (=> b!918251 (= c!148886 (is-EmptyLang!2466 lt!337855))))

(declare-fun b!918252 () Bool)

(assert (=> b!918252 (= e!598169 (= lt!337890 call!55644))))

(declare-fun b!918253 () Bool)

(declare-fun res!417465 () Bool)

(assert (=> b!918253 (=> res!417465 e!598164)))

(assert (=> b!918253 (= res!417465 (not (isEmpty!5915 (tail!1205 s!10566))))))

(declare-fun b!918254 () Bool)

(assert (=> b!918254 (= e!598168 (nullable!680 lt!337855))))

(declare-fun d!280035 () Bool)

(assert (=> d!280035 e!598169))

(declare-fun c!148887 () Bool)

(assert (=> d!280035 (= c!148887 (is-EmptyExpr!2466 lt!337855))))

(assert (=> d!280035 (= lt!337890 e!598168)))

(declare-fun c!148888 () Bool)

(assert (=> d!280035 (= c!148888 (isEmpty!5915 s!10566))))

(assert (=> d!280035 (validRegex!935 lt!337855)))

(assert (=> d!280035 (= (matchR!1004 lt!337855 s!10566) lt!337890)))

(declare-fun b!918242 () Bool)

(declare-fun res!417470 () Bool)

(assert (=> b!918242 (=> (not res!417470) (not e!598167))))

(assert (=> b!918242 (= res!417470 (isEmpty!5915 (tail!1205 s!10566)))))

(declare-fun b!918255 () Bool)

(assert (=> b!918255 (= e!598165 e!598166)))

(declare-fun res!417468 () Bool)

(assert (=> b!918255 (=> (not res!417468) (not e!598166))))

(assert (=> b!918255 (= res!417468 (not lt!337890))))

(declare-fun bm!55639 () Bool)

(assert (=> bm!55639 (= call!55644 (isEmpty!5915 s!10566))))

(assert (= (and d!280035 c!148888) b!918254))

(assert (= (and d!280035 (not c!148888)) b!918250))

(assert (= (and d!280035 c!148887) b!918252))

(assert (= (and d!280035 (not c!148887)) b!918251))

(assert (= (and b!918251 c!148886) b!918249))

(assert (= (and b!918251 (not c!148886)) b!918246))

(assert (= (and b!918246 (not res!417464)) b!918243))

(assert (= (and b!918243 res!417466) b!918248))

(assert (= (and b!918248 res!417463) b!918242))

(assert (= (and b!918242 res!417470) b!918247))

(assert (= (and b!918243 (not res!417469)) b!918255))

(assert (= (and b!918255 res!417468) b!918244))

(assert (= (and b!918244 (not res!417467)) b!918253))

(assert (= (and b!918253 (not res!417465)) b!918245))

(assert (= (or b!918252 b!918244 b!918248) bm!55639))

(assert (=> b!918250 m!1146611))

(assert (=> b!918250 m!1146611))

(declare-fun m!1146631 () Bool)

(assert (=> b!918250 m!1146631))

(assert (=> b!918250 m!1146615))

(assert (=> b!918250 m!1146631))

(assert (=> b!918250 m!1146615))

(declare-fun m!1146633 () Bool)

(assert (=> b!918250 m!1146633))

(declare-fun m!1146635 () Bool)

(assert (=> b!918254 m!1146635))

(assert (=> b!918245 m!1146611))

(assert (=> b!918247 m!1146611))

(assert (=> b!918253 m!1146615))

(assert (=> b!918253 m!1146615))

(assert (=> b!918253 m!1146621))

(assert (=> b!918242 m!1146615))

(assert (=> b!918242 m!1146615))

(assert (=> b!918242 m!1146621))

(assert (=> bm!55639 m!1146551))

(assert (=> d!280035 m!1146551))

(declare-fun m!1146637 () Bool)

(assert (=> d!280035 m!1146637))

(assert (=> b!918051 d!280035))

(declare-fun b!918288 () Bool)

(declare-fun e!598187 () Regex!2466)

(declare-fun e!598191 () Regex!2466)

(assert (=> b!918288 (= e!598187 e!598191)))

(declare-fun c!148903 () Bool)

(assert (=> b!918288 (= c!148903 (is-Union!2466 (regTwo!5444 r!15766)))))

(declare-fun b!918289 () Bool)

(declare-fun c!148899 () Bool)

(assert (=> b!918289 (= c!148899 (is-Concat!4299 (regTwo!5444 r!15766)))))

(declare-fun e!598188 () Regex!2466)

(assert (=> b!918289 (= e!598188 e!598187)))

(declare-fun b!918290 () Bool)

(declare-fun e!598189 () Bool)

(declare-fun lt!337893 () Regex!2466)

(assert (=> b!918290 (= e!598189 (= (nullable!680 lt!337893) (nullable!680 (regTwo!5444 r!15766))))))

(declare-fun b!918291 () Bool)

(declare-fun e!598190 () Regex!2466)

(assert (=> b!918291 (= e!598190 e!598188)))

(declare-fun c!148900 () Bool)

(assert (=> b!918291 (= c!148900 (and (is-Concat!4299 (regTwo!5444 r!15766)) (is-EmptyExpr!2466 (regTwo!5444 (regTwo!5444 r!15766)))))))

(declare-fun bm!55651 () Bool)

(declare-fun call!55658 () Regex!2466)

(declare-fun call!55656 () Regex!2466)

(assert (=> bm!55651 (= call!55658 call!55656)))

(declare-fun bm!55652 () Bool)

(declare-fun call!55659 () Regex!2466)

(assert (=> bm!55652 (= call!55659 (removeUselessConcat!143 (ite c!148899 (regOne!5444 (regTwo!5444 r!15766)) (ite c!148903 (regTwo!5445 (regTwo!5444 r!15766)) (reg!2795 (regTwo!5444 r!15766))))))))

(declare-fun bm!55653 () Bool)

(declare-fun call!55655 () Regex!2466)

(assert (=> bm!55653 (= call!55656 call!55655)))

(declare-fun bm!55654 () Bool)

(declare-fun call!55657 () Regex!2466)

(assert (=> bm!55654 (= call!55657 call!55659)))

(declare-fun b!918292 () Bool)

(assert (=> b!918292 (= e!598187 (Concat!4299 call!55659 call!55658))))

(declare-fun b!918293 () Bool)

(declare-fun e!598186 () Regex!2466)

(assert (=> b!918293 (= e!598186 (regTwo!5444 r!15766))))

(declare-fun b!918294 () Bool)

(assert (=> b!918294 (= e!598191 (Union!2466 call!55658 call!55657))))

(declare-fun b!918295 () Bool)

(assert (=> b!918295 (= e!598190 call!55655)))

(declare-fun d!280037 () Bool)

(assert (=> d!280037 e!598189))

(declare-fun res!417483 () Bool)

(assert (=> d!280037 (=> (not res!417483) (not e!598189))))

(assert (=> d!280037 (= res!417483 (validRegex!935 lt!337893))))

(assert (=> d!280037 (= lt!337893 e!598190)))

(declare-fun c!148902 () Bool)

(assert (=> d!280037 (= c!148902 (and (is-Concat!4299 (regTwo!5444 r!15766)) (is-EmptyExpr!2466 (regOne!5444 (regTwo!5444 r!15766)))))))

(assert (=> d!280037 (validRegex!935 (regTwo!5444 r!15766))))

(assert (=> d!280037 (= (removeUselessConcat!143 (regTwo!5444 r!15766)) lt!337893)))

(declare-fun bm!55650 () Bool)

(assert (=> bm!55650 (= call!55655 (removeUselessConcat!143 (ite c!148902 (regTwo!5444 (regTwo!5444 r!15766)) (ite c!148900 (regOne!5444 (regTwo!5444 r!15766)) (ite c!148899 (regTwo!5444 (regTwo!5444 r!15766)) (regOne!5445 (regTwo!5444 r!15766)))))))))

(declare-fun b!918296 () Bool)

(assert (=> b!918296 (= e!598188 call!55656)))

(declare-fun b!918297 () Bool)

(declare-fun c!148901 () Bool)

(assert (=> b!918297 (= c!148901 (is-Star!2466 (regTwo!5444 r!15766)))))

(assert (=> b!918297 (= e!598191 e!598186)))

(declare-fun b!918298 () Bool)

(assert (=> b!918298 (= e!598186 (Star!2466 call!55657))))

(assert (= (and d!280037 c!148902) b!918295))

(assert (= (and d!280037 (not c!148902)) b!918291))

(assert (= (and b!918291 c!148900) b!918296))

(assert (= (and b!918291 (not c!148900)) b!918289))

(assert (= (and b!918289 c!148899) b!918292))

(assert (= (and b!918289 (not c!148899)) b!918288))

(assert (= (and b!918288 c!148903) b!918294))

(assert (= (and b!918288 (not c!148903)) b!918297))

(assert (= (and b!918297 c!148901) b!918298))

(assert (= (and b!918297 (not c!148901)) b!918293))

(assert (= (or b!918294 b!918298) bm!55654))

(assert (= (or b!918292 b!918294) bm!55651))

(assert (= (or b!918292 bm!55654) bm!55652))

(assert (= (or b!918296 bm!55651) bm!55653))

(assert (= (or b!918295 bm!55653) bm!55650))

(assert (= (and d!280037 res!417483) b!918290))

(declare-fun m!1146639 () Bool)

(assert (=> b!918290 m!1146639))

(declare-fun m!1146641 () Bool)

(assert (=> b!918290 m!1146641))

(declare-fun m!1146643 () Bool)

(assert (=> bm!55652 m!1146643))

(declare-fun m!1146645 () Bool)

(assert (=> d!280037 m!1146645))

(assert (=> d!280037 m!1146521))

(declare-fun m!1146647 () Bool)

(assert (=> bm!55650 m!1146647))

(assert (=> b!918051 d!280037))

(declare-fun b!918299 () Bool)

(declare-fun e!598193 () Regex!2466)

(declare-fun e!598197 () Regex!2466)

(assert (=> b!918299 (= e!598193 e!598197)))

(declare-fun c!148908 () Bool)

(assert (=> b!918299 (= c!148908 (is-Union!2466 (regOne!5444 r!15766)))))

(declare-fun b!918300 () Bool)

(declare-fun c!148904 () Bool)

(assert (=> b!918300 (= c!148904 (is-Concat!4299 (regOne!5444 r!15766)))))

(declare-fun e!598194 () Regex!2466)

(assert (=> b!918300 (= e!598194 e!598193)))

(declare-fun b!918301 () Bool)

(declare-fun e!598195 () Bool)

(declare-fun lt!337894 () Regex!2466)

(assert (=> b!918301 (= e!598195 (= (nullable!680 lt!337894) (nullable!680 (regOne!5444 r!15766))))))

(declare-fun b!918302 () Bool)

(declare-fun e!598196 () Regex!2466)

(assert (=> b!918302 (= e!598196 e!598194)))

(declare-fun c!148905 () Bool)

(assert (=> b!918302 (= c!148905 (and (is-Concat!4299 (regOne!5444 r!15766)) (is-EmptyExpr!2466 (regTwo!5444 (regOne!5444 r!15766)))))))

(declare-fun bm!55658 () Bool)

(declare-fun call!55665 () Regex!2466)

(declare-fun call!55663 () Regex!2466)

(assert (=> bm!55658 (= call!55665 call!55663)))

(declare-fun bm!55659 () Bool)

(declare-fun call!55666 () Regex!2466)

(assert (=> bm!55659 (= call!55666 (removeUselessConcat!143 (ite c!148904 (regOne!5444 (regOne!5444 r!15766)) (ite c!148908 (regTwo!5445 (regOne!5444 r!15766)) (reg!2795 (regOne!5444 r!15766))))))))

(declare-fun bm!55660 () Bool)

(declare-fun call!55662 () Regex!2466)

(assert (=> bm!55660 (= call!55663 call!55662)))

(declare-fun bm!55661 () Bool)

(declare-fun call!55664 () Regex!2466)

(assert (=> bm!55661 (= call!55664 call!55666)))

(declare-fun b!918303 () Bool)

(assert (=> b!918303 (= e!598193 (Concat!4299 call!55666 call!55665))))

(declare-fun b!918304 () Bool)

(declare-fun e!598192 () Regex!2466)

(assert (=> b!918304 (= e!598192 (regOne!5444 r!15766))))

(declare-fun b!918305 () Bool)

(assert (=> b!918305 (= e!598197 (Union!2466 call!55665 call!55664))))

(declare-fun b!918306 () Bool)

(assert (=> b!918306 (= e!598196 call!55662)))

(declare-fun d!280039 () Bool)

(assert (=> d!280039 e!598195))

(declare-fun res!417484 () Bool)

(assert (=> d!280039 (=> (not res!417484) (not e!598195))))

(assert (=> d!280039 (= res!417484 (validRegex!935 lt!337894))))

(assert (=> d!280039 (= lt!337894 e!598196)))

(declare-fun c!148907 () Bool)

(assert (=> d!280039 (= c!148907 (and (is-Concat!4299 (regOne!5444 r!15766)) (is-EmptyExpr!2466 (regOne!5444 (regOne!5444 r!15766)))))))

(assert (=> d!280039 (validRegex!935 (regOne!5444 r!15766))))

(assert (=> d!280039 (= (removeUselessConcat!143 (regOne!5444 r!15766)) lt!337894)))

(declare-fun bm!55657 () Bool)

(assert (=> bm!55657 (= call!55662 (removeUselessConcat!143 (ite c!148907 (regTwo!5444 (regOne!5444 r!15766)) (ite c!148905 (regOne!5444 (regOne!5444 r!15766)) (ite c!148904 (regTwo!5444 (regOne!5444 r!15766)) (regOne!5445 (regOne!5444 r!15766)))))))))

(declare-fun b!918307 () Bool)

(assert (=> b!918307 (= e!598194 call!55663)))

(declare-fun b!918308 () Bool)

(declare-fun c!148906 () Bool)

(assert (=> b!918308 (= c!148906 (is-Star!2466 (regOne!5444 r!15766)))))

(assert (=> b!918308 (= e!598197 e!598192)))

(declare-fun b!918309 () Bool)

(assert (=> b!918309 (= e!598192 (Star!2466 call!55664))))

(assert (= (and d!280039 c!148907) b!918306))

(assert (= (and d!280039 (not c!148907)) b!918302))

(assert (= (and b!918302 c!148905) b!918307))

(assert (= (and b!918302 (not c!148905)) b!918300))

(assert (= (and b!918300 c!148904) b!918303))

(assert (= (and b!918300 (not c!148904)) b!918299))

(assert (= (and b!918299 c!148908) b!918305))

(assert (= (and b!918299 (not c!148908)) b!918308))

(assert (= (and b!918308 c!148906) b!918309))

(assert (= (and b!918308 (not c!148906)) b!918304))

(assert (= (or b!918305 b!918309) bm!55661))

(assert (= (or b!918303 b!918305) bm!55658))

(assert (= (or b!918303 bm!55661) bm!55659))

(assert (= (or b!918307 bm!55658) bm!55660))

(assert (= (or b!918306 bm!55660) bm!55657))

(assert (= (and d!280039 res!417484) b!918301))

(declare-fun m!1146649 () Bool)

(assert (=> b!918301 m!1146649))

(declare-fun m!1146651 () Bool)

(assert (=> b!918301 m!1146651))

(declare-fun m!1146653 () Bool)

(assert (=> bm!55659 m!1146653))

(declare-fun m!1146655 () Bool)

(assert (=> d!280039 m!1146655))

(declare-fun m!1146657 () Bool)

(assert (=> d!280039 m!1146657))

(declare-fun m!1146659 () Bool)

(assert (=> bm!55657 m!1146659))

(assert (=> b!918051 d!280039))

(declare-fun d!280041 () Bool)

(declare-fun res!417489 () Bool)

(declare-fun e!598198 () Bool)

(assert (=> d!280041 (=> res!417489 e!598198)))

(assert (=> d!280041 (= res!417489 (is-ElementMatch!2466 (regTwo!5444 r!15766)))))

(assert (=> d!280041 (= (validRegex!935 (regTwo!5444 r!15766)) e!598198)))

(declare-fun b!918310 () Bool)

(declare-fun e!598204 () Bool)

(declare-fun call!55667 () Bool)

(assert (=> b!918310 (= e!598204 call!55667)))

(declare-fun b!918311 () Bool)

(declare-fun e!598201 () Bool)

(declare-fun e!598203 () Bool)

(assert (=> b!918311 (= e!598201 e!598203)))

(declare-fun c!148909 () Bool)

(assert (=> b!918311 (= c!148909 (is-Union!2466 (regTwo!5444 r!15766)))))

(declare-fun b!918312 () Bool)

(assert (=> b!918312 (= e!598201 e!598204)))

(declare-fun res!417487 () Bool)

(assert (=> b!918312 (= res!417487 (not (nullable!680 (reg!2795 (regTwo!5444 r!15766)))))))

(assert (=> b!918312 (=> (not res!417487) (not e!598204))))

(declare-fun b!918313 () Bool)

(declare-fun e!598202 () Bool)

(declare-fun e!598200 () Bool)

(assert (=> b!918313 (= e!598202 e!598200)))

(declare-fun res!417485 () Bool)

(assert (=> b!918313 (=> (not res!417485) (not e!598200))))

(declare-fun call!55668 () Bool)

(assert (=> b!918313 (= res!417485 call!55668)))

(declare-fun b!918314 () Bool)

(declare-fun res!417486 () Bool)

(assert (=> b!918314 (=> res!417486 e!598202)))

(assert (=> b!918314 (= res!417486 (not (is-Concat!4299 (regTwo!5444 r!15766))))))

(assert (=> b!918314 (= e!598203 e!598202)))

(declare-fun bm!55662 () Bool)

(declare-fun c!148910 () Bool)

(assert (=> bm!55662 (= call!55667 (validRegex!935 (ite c!148910 (reg!2795 (regTwo!5444 r!15766)) (ite c!148909 (regTwo!5445 (regTwo!5444 r!15766)) (regTwo!5444 (regTwo!5444 r!15766))))))))

(declare-fun bm!55663 () Bool)

(declare-fun call!55669 () Bool)

(assert (=> bm!55663 (= call!55669 call!55667)))

(declare-fun bm!55664 () Bool)

(assert (=> bm!55664 (= call!55668 (validRegex!935 (ite c!148909 (regOne!5445 (regTwo!5444 r!15766)) (regOne!5444 (regTwo!5444 r!15766)))))))

(declare-fun b!918315 () Bool)

(declare-fun res!417488 () Bool)

(declare-fun e!598199 () Bool)

(assert (=> b!918315 (=> (not res!417488) (not e!598199))))

(assert (=> b!918315 (= res!417488 call!55668)))

(assert (=> b!918315 (= e!598203 e!598199)))

(declare-fun b!918316 () Bool)

(assert (=> b!918316 (= e!598198 e!598201)))

(assert (=> b!918316 (= c!148910 (is-Star!2466 (regTwo!5444 r!15766)))))

(declare-fun b!918317 () Bool)

(assert (=> b!918317 (= e!598200 call!55669)))

(declare-fun b!918318 () Bool)

(assert (=> b!918318 (= e!598199 call!55669)))

(assert (= (and d!280041 (not res!417489)) b!918316))

(assert (= (and b!918316 c!148910) b!918312))

(assert (= (and b!918316 (not c!148910)) b!918311))

(assert (= (and b!918312 res!417487) b!918310))

(assert (= (and b!918311 c!148909) b!918315))

(assert (= (and b!918311 (not c!148909)) b!918314))

(assert (= (and b!918315 res!417488) b!918318))

(assert (= (and b!918314 (not res!417486)) b!918313))

(assert (= (and b!918313 res!417485) b!918317))

(assert (= (or b!918318 b!918317) bm!55663))

(assert (= (or b!918315 b!918313) bm!55664))

(assert (= (or b!918310 bm!55663) bm!55662))

(declare-fun m!1146661 () Bool)

(assert (=> b!918312 m!1146661))

(declare-fun m!1146663 () Bool)

(assert (=> bm!55662 m!1146663))

(declare-fun m!1146665 () Bool)

(assert (=> bm!55664 m!1146665))

(assert (=> b!918049 d!280041))

(declare-fun d!280043 () Bool)

(declare-fun choose!5610 (Int) Bool)

(assert (=> d!280043 (= (Exists!237 lambda!29669) (choose!5610 lambda!29669))))

(declare-fun bs!236282 () Bool)

(assert (= bs!236282 d!280043))

(declare-fun m!1146667 () Bool)

(assert (=> bs!236282 m!1146667))

(assert (=> b!918049 d!280043))

(declare-fun bs!236283 () Bool)

(declare-fun d!280045 () Bool)

(assert (= bs!236283 (and d!280045 b!918055)))

(declare-fun lambda!29693 () Int)

(assert (=> bs!236283 (not (= lambda!29693 lambda!29668))))

(declare-fun bs!236284 () Bool)

(assert (= bs!236284 (and d!280045 b!918141)))

(assert (=> bs!236284 (not (= lambda!29693 lambda!29686))))

(declare-fun bs!236285 () Bool)

(assert (= bs!236285 (and d!280045 b!918049)))

(assert (=> bs!236285 (= lambda!29693 lambda!29669)))

(assert (=> bs!236283 (= (and (= lt!337853 (regOne!5444 r!15766)) (= lt!337852 (regTwo!5444 r!15766))) (= lambda!29693 lambda!29667))))

(declare-fun bs!236286 () Bool)

(assert (= bs!236286 (and d!280045 b!918149)))

(assert (=> bs!236286 (not (= lambda!29693 lambda!29685))))

(assert (=> d!280045 true))

(assert (=> d!280045 true))

(assert (=> d!280045 true))

(assert (=> d!280045 (= (isDefined!1743 (findConcatSeparation!207 lt!337853 lt!337852 Nil!9680 s!10566 s!10566)) (Exists!237 lambda!29693))))

(declare-fun lt!337897 () Unit!14551)

(declare-fun choose!5611 (Regex!2466 Regex!2466 List!9696) Unit!14551)

(assert (=> d!280045 (= lt!337897 (choose!5611 lt!337853 lt!337852 s!10566))))

(assert (=> d!280045 (validRegex!935 lt!337853)))

(assert (=> d!280045 (= (lemmaFindConcatSeparationEquivalentToExists!207 lt!337853 lt!337852 s!10566) lt!337897)))

(declare-fun bs!236287 () Bool)

(assert (= bs!236287 d!280045))

(assert (=> bs!236287 m!1146525))

(assert (=> bs!236287 m!1146527))

(declare-fun m!1146669 () Bool)

(assert (=> bs!236287 m!1146669))

(declare-fun m!1146671 () Bool)

(assert (=> bs!236287 m!1146671))

(assert (=> bs!236287 m!1146525))

(declare-fun m!1146673 () Bool)

(assert (=> bs!236287 m!1146673))

(assert (=> b!918049 d!280045))

(declare-fun d!280047 () Bool)

(assert (=> d!280047 (= (matchR!1004 lt!337855 s!10566) (matchRSpec!267 lt!337855 s!10566))))

(declare-fun lt!337898 () Unit!14551)

(assert (=> d!280047 (= lt!337898 (choose!5609 lt!337855 s!10566))))

(assert (=> d!280047 (validRegex!935 lt!337855)))

(assert (=> d!280047 (= (mainMatchTheorem!267 lt!337855 s!10566) lt!337898)))

(declare-fun bs!236289 () Bool)

(assert (= bs!236289 d!280047))

(assert (=> bs!236289 m!1146537))

(assert (=> bs!236289 m!1146533))

(declare-fun m!1146675 () Bool)

(assert (=> bs!236289 m!1146675))

(assert (=> bs!236289 m!1146637))

(assert (=> b!918049 d!280047))

(declare-fun d!280049 () Bool)

(declare-fun isEmpty!5917 (Option!2101) Bool)

(assert (=> d!280049 (= (isDefined!1743 (findConcatSeparation!207 lt!337853 lt!337852 Nil!9680 s!10566 s!10566)) (not (isEmpty!5917 (findConcatSeparation!207 lt!337853 lt!337852 Nil!9680 s!10566 s!10566))))))

(declare-fun bs!236291 () Bool)

(assert (= bs!236291 d!280049))

(assert (=> bs!236291 m!1146525))

(declare-fun m!1146677 () Bool)

(assert (=> bs!236291 m!1146677))

(assert (=> b!918049 d!280049))

(declare-fun b!918352 () Bool)

(declare-fun res!417509 () Bool)

(declare-fun e!598228 () Bool)

(assert (=> b!918352 (=> (not res!417509) (not e!598228))))

(declare-fun lt!337906 () Option!2101)

(declare-fun get!3145 (Option!2101) tuple2!10918)

(assert (=> b!918352 (= res!417509 (matchR!1004 lt!337853 (_1!6285 (get!3145 lt!337906))))))

(declare-fun b!918353 () Bool)

(declare-fun res!417511 () Bool)

(assert (=> b!918353 (=> (not res!417511) (not e!598228))))

(assert (=> b!918353 (= res!417511 (matchR!1004 lt!337852 (_2!6285 (get!3145 lt!337906))))))

(declare-fun b!918354 () Bool)

(declare-fun e!598224 () Option!2101)

(assert (=> b!918354 (= e!598224 None!2100)))

(declare-fun b!918355 () Bool)

(declare-fun ++!2556 (List!9696 List!9696) List!9696)

(assert (=> b!918355 (= e!598228 (= (++!2556 (_1!6285 (get!3145 lt!337906)) (_2!6285 (get!3145 lt!337906))) s!10566))))

(declare-fun b!918356 () Bool)

(declare-fun lt!337907 () Unit!14551)

(declare-fun lt!337905 () Unit!14551)

(assert (=> b!918356 (= lt!337907 lt!337905)))

(assert (=> b!918356 (= (++!2556 (++!2556 Nil!9680 (Cons!9680 (h!15081 s!10566) Nil!9680)) (t!100742 s!10566)) s!10566)))

(declare-fun lemmaMoveElementToOtherListKeepsConcatEq!171 (List!9696 C!5502 List!9696 List!9696) Unit!14551)

(assert (=> b!918356 (= lt!337905 (lemmaMoveElementToOtherListKeepsConcatEq!171 Nil!9680 (h!15081 s!10566) (t!100742 s!10566) s!10566))))

(assert (=> b!918356 (= e!598224 (findConcatSeparation!207 lt!337853 lt!337852 (++!2556 Nil!9680 (Cons!9680 (h!15081 s!10566) Nil!9680)) (t!100742 s!10566) s!10566))))

(declare-fun b!918357 () Bool)

(declare-fun e!598225 () Option!2101)

(assert (=> b!918357 (= e!598225 e!598224)))

(declare-fun c!148920 () Bool)

(assert (=> b!918357 (= c!148920 (is-Nil!9680 s!10566))))

(declare-fun b!918358 () Bool)

(assert (=> b!918358 (= e!598225 (Some!2100 (tuple2!10919 Nil!9680 s!10566)))))

(declare-fun b!918360 () Bool)

(declare-fun e!598227 () Bool)

(assert (=> b!918360 (= e!598227 (matchR!1004 lt!337852 s!10566))))

(declare-fun d!280051 () Bool)

(declare-fun e!598226 () Bool)

(assert (=> d!280051 e!598226))

(declare-fun res!417510 () Bool)

(assert (=> d!280051 (=> res!417510 e!598226)))

(assert (=> d!280051 (= res!417510 e!598228)))

(declare-fun res!417508 () Bool)

(assert (=> d!280051 (=> (not res!417508) (not e!598228))))

(assert (=> d!280051 (= res!417508 (isDefined!1743 lt!337906))))

(assert (=> d!280051 (= lt!337906 e!598225)))

(declare-fun c!148919 () Bool)

(assert (=> d!280051 (= c!148919 e!598227)))

(declare-fun res!417507 () Bool)

(assert (=> d!280051 (=> (not res!417507) (not e!598227))))

(assert (=> d!280051 (= res!417507 (matchR!1004 lt!337853 Nil!9680))))

(assert (=> d!280051 (validRegex!935 lt!337853)))

(assert (=> d!280051 (= (findConcatSeparation!207 lt!337853 lt!337852 Nil!9680 s!10566 s!10566) lt!337906)))

(declare-fun b!918359 () Bool)

(assert (=> b!918359 (= e!598226 (not (isDefined!1743 lt!337906)))))

(assert (= (and d!280051 res!417507) b!918360))

(assert (= (and d!280051 c!148919) b!918358))

(assert (= (and d!280051 (not c!148919)) b!918357))

(assert (= (and b!918357 c!148920) b!918354))

(assert (= (and b!918357 (not c!148920)) b!918356))

(assert (= (and d!280051 res!417508) b!918352))

(assert (= (and b!918352 res!417509) b!918353))

(assert (= (and b!918353 res!417511) b!918355))

(assert (= (and d!280051 (not res!417510)) b!918359))

(declare-fun m!1146685 () Bool)

(assert (=> b!918356 m!1146685))

(assert (=> b!918356 m!1146685))

(declare-fun m!1146687 () Bool)

(assert (=> b!918356 m!1146687))

(declare-fun m!1146689 () Bool)

(assert (=> b!918356 m!1146689))

(assert (=> b!918356 m!1146685))

(declare-fun m!1146691 () Bool)

(assert (=> b!918356 m!1146691))

(declare-fun m!1146693 () Bool)

(assert (=> b!918359 m!1146693))

(assert (=> d!280051 m!1146693))

(declare-fun m!1146695 () Bool)

(assert (=> d!280051 m!1146695))

(assert (=> d!280051 m!1146671))

(declare-fun m!1146697 () Bool)

(assert (=> b!918353 m!1146697))

(declare-fun m!1146699 () Bool)

(assert (=> b!918353 m!1146699))

(assert (=> b!918355 m!1146697))

(declare-fun m!1146701 () Bool)

(assert (=> b!918355 m!1146701))

(declare-fun m!1146703 () Bool)

(assert (=> b!918360 m!1146703))

(assert (=> b!918352 m!1146697))

(declare-fun m!1146705 () Bool)

(assert (=> b!918352 m!1146705))

(assert (=> b!918049 d!280051))

(declare-fun bs!236295 () Bool)

(declare-fun b!918370 () Bool)

(assert (= bs!236295 (and b!918370 b!918055)))

(declare-fun lambda!29696 () Int)

(assert (=> bs!236295 (not (= lambda!29696 lambda!29668))))

(declare-fun bs!236296 () Bool)

(assert (= bs!236296 (and b!918370 b!918141)))

(assert (=> bs!236296 (not (= lambda!29696 lambda!29686))))

(assert (=> bs!236295 (not (= lambda!29696 lambda!29667))))

(declare-fun bs!236297 () Bool)

(assert (= bs!236297 (and b!918370 b!918149)))

(assert (=> bs!236297 (= (and (= (reg!2795 lt!337855) (reg!2795 r!15766)) (= lt!337855 r!15766)) (= lambda!29696 lambda!29685))))

(declare-fun bs!236298 () Bool)

(assert (= bs!236298 (and b!918370 d!280045)))

(assert (=> bs!236298 (not (= lambda!29696 lambda!29693))))

(declare-fun bs!236299 () Bool)

(assert (= bs!236299 (and b!918370 b!918049)))

(assert (=> bs!236299 (not (= lambda!29696 lambda!29669))))

(assert (=> b!918370 true))

(assert (=> b!918370 true))

(declare-fun bs!236300 () Bool)

(declare-fun b!918362 () Bool)

(assert (= bs!236300 (and b!918362 b!918055)))

(declare-fun lambda!29697 () Int)

(assert (=> bs!236300 (= (and (= (regOne!5444 lt!337855) (regOne!5444 r!15766)) (= (regTwo!5444 lt!337855) (regTwo!5444 r!15766))) (= lambda!29697 lambda!29668))))

(declare-fun bs!236301 () Bool)

(assert (= bs!236301 (and b!918362 b!918141)))

(assert (=> bs!236301 (= (and (= (regOne!5444 lt!337855) (regOne!5444 r!15766)) (= (regTwo!5444 lt!337855) (regTwo!5444 r!15766))) (= lambda!29697 lambda!29686))))

(assert (=> bs!236300 (not (= lambda!29697 lambda!29667))))

(declare-fun bs!236302 () Bool)

(assert (= bs!236302 (and b!918362 b!918370)))

(assert (=> bs!236302 (not (= lambda!29697 lambda!29696))))

(declare-fun bs!236303 () Bool)

(assert (= bs!236303 (and b!918362 b!918149)))

(assert (=> bs!236303 (not (= lambda!29697 lambda!29685))))

(declare-fun bs!236304 () Bool)

(assert (= bs!236304 (and b!918362 d!280045)))

(assert (=> bs!236304 (not (= lambda!29697 lambda!29693))))

(declare-fun bs!236305 () Bool)

(assert (= bs!236305 (and b!918362 b!918049)))

(assert (=> bs!236305 (not (= lambda!29697 lambda!29669))))

(assert (=> b!918362 true))

(assert (=> b!918362 true))

(declare-fun b!918361 () Bool)

(declare-fun e!598234 () Bool)

(declare-fun e!598232 () Bool)

(assert (=> b!918361 (= e!598234 e!598232)))

(declare-fun res!417514 () Bool)

(assert (=> b!918361 (= res!417514 (matchRSpec!267 (regOne!5445 lt!337855) s!10566))))

(assert (=> b!918361 (=> res!417514 e!598232)))

(declare-fun e!598233 () Bool)

(declare-fun call!55674 () Bool)

(assert (=> b!918362 (= e!598233 call!55674)))

(declare-fun b!918363 () Bool)

(declare-fun e!598231 () Bool)

(assert (=> b!918363 (= e!598231 (= s!10566 (Cons!9680 (c!148849 lt!337855) Nil!9680)))))

(declare-fun d!280055 () Bool)

(declare-fun c!148924 () Bool)

(assert (=> d!280055 (= c!148924 (is-EmptyExpr!2466 lt!337855))))

(declare-fun e!598229 () Bool)

(assert (=> d!280055 (= (matchRSpec!267 lt!337855 s!10566) e!598229)))

(declare-fun b!918364 () Bool)

(assert (=> b!918364 (= e!598234 e!598233)))

(declare-fun c!148923 () Bool)

(assert (=> b!918364 (= c!148923 (is-Star!2466 lt!337855))))

(declare-fun b!918365 () Bool)

(declare-fun call!55675 () Bool)

(assert (=> b!918365 (= e!598229 call!55675)))

(declare-fun b!918366 () Bool)

(declare-fun c!148921 () Bool)

(assert (=> b!918366 (= c!148921 (is-Union!2466 lt!337855))))

(assert (=> b!918366 (= e!598231 e!598234)))

(declare-fun b!918367 () Bool)

(declare-fun c!148922 () Bool)

(assert (=> b!918367 (= c!148922 (is-ElementMatch!2466 lt!337855))))

(declare-fun e!598235 () Bool)

(assert (=> b!918367 (= e!598235 e!598231)))

(declare-fun b!918368 () Bool)

(assert (=> b!918368 (= e!598229 e!598235)))

(declare-fun res!417512 () Bool)

(assert (=> b!918368 (= res!417512 (not (is-EmptyLang!2466 lt!337855)))))

(assert (=> b!918368 (=> (not res!417512) (not e!598235))))

(declare-fun bm!55669 () Bool)

(assert (=> bm!55669 (= call!55675 (isEmpty!5915 s!10566))))

(declare-fun b!918369 () Bool)

(assert (=> b!918369 (= e!598232 (matchRSpec!267 (regTwo!5445 lt!337855) s!10566))))

(declare-fun bm!55670 () Bool)

(assert (=> bm!55670 (= call!55674 (Exists!237 (ite c!148923 lambda!29696 lambda!29697)))))

(declare-fun e!598230 () Bool)

(assert (=> b!918370 (= e!598230 call!55674)))

(declare-fun b!918371 () Bool)

(declare-fun res!417513 () Bool)

(assert (=> b!918371 (=> res!417513 e!598230)))

(assert (=> b!918371 (= res!417513 call!55675)))

(assert (=> b!918371 (= e!598233 e!598230)))

(assert (= (and d!280055 c!148924) b!918365))

(assert (= (and d!280055 (not c!148924)) b!918368))

(assert (= (and b!918368 res!417512) b!918367))

(assert (= (and b!918367 c!148922) b!918363))

(assert (= (and b!918367 (not c!148922)) b!918366))

(assert (= (and b!918366 c!148921) b!918361))

(assert (= (and b!918366 (not c!148921)) b!918364))

(assert (= (and b!918361 (not res!417514)) b!918369))

(assert (= (and b!918364 c!148923) b!918371))

(assert (= (and b!918364 (not c!148923)) b!918362))

(assert (= (and b!918371 (not res!417513)) b!918370))

(assert (= (or b!918370 b!918362) bm!55670))

(assert (= (or b!918365 b!918371) bm!55669))

(declare-fun m!1146707 () Bool)

(assert (=> b!918361 m!1146707))

(assert (=> bm!55669 m!1146551))

(declare-fun m!1146709 () Bool)

(assert (=> b!918369 m!1146709))

(declare-fun m!1146711 () Bool)

(assert (=> bm!55670 m!1146711))

(assert (=> b!918049 d!280055))

(declare-fun d!280057 () Bool)

(assert (=> d!280057 (= (Exists!237 lambda!29667) (choose!5610 lambda!29667))))

(declare-fun bs!236306 () Bool)

(assert (= bs!236306 d!280057))

(declare-fun m!1146713 () Bool)

(assert (=> bs!236306 m!1146713))

(assert (=> b!918055 d!280057))

(declare-fun d!280059 () Bool)

(assert (=> d!280059 (= (isEmpty!5915 s!10566) (is-Nil!9680 s!10566))))

(assert (=> b!918055 d!280059))

(declare-fun d!280061 () Bool)

(assert (=> d!280061 (= (isDefined!1743 (findConcatSeparation!207 (regOne!5444 r!15766) (regTwo!5444 r!15766) Nil!9680 s!10566 s!10566)) (not (isEmpty!5917 (findConcatSeparation!207 (regOne!5444 r!15766) (regTwo!5444 r!15766) Nil!9680 s!10566 s!10566))))))

(declare-fun bs!236307 () Bool)

(assert (= bs!236307 d!280061))

(assert (=> bs!236307 m!1146545))

(declare-fun m!1146715 () Bool)

(assert (=> bs!236307 m!1146715))

(assert (=> b!918055 d!280061))

(declare-fun bs!236308 () Bool)

(declare-fun d!280063 () Bool)

(assert (= bs!236308 (and d!280063 b!918055)))

(declare-fun lambda!29698 () Int)

(assert (=> bs!236308 (not (= lambda!29698 lambda!29668))))

(declare-fun bs!236309 () Bool)

(assert (= bs!236309 (and d!280063 b!918141)))

(assert (=> bs!236309 (not (= lambda!29698 lambda!29686))))

(assert (=> bs!236308 (= lambda!29698 lambda!29667)))

(declare-fun bs!236310 () Bool)

(assert (= bs!236310 (and d!280063 b!918370)))

(assert (=> bs!236310 (not (= lambda!29698 lambda!29696))))

(declare-fun bs!236311 () Bool)

(assert (= bs!236311 (and d!280063 b!918362)))

(assert (=> bs!236311 (not (= lambda!29698 lambda!29697))))

(declare-fun bs!236312 () Bool)

(assert (= bs!236312 (and d!280063 b!918149)))

(assert (=> bs!236312 (not (= lambda!29698 lambda!29685))))

(declare-fun bs!236313 () Bool)

(assert (= bs!236313 (and d!280063 d!280045)))

(assert (=> bs!236313 (= (and (= (regOne!5444 r!15766) lt!337853) (= (regTwo!5444 r!15766) lt!337852)) (= lambda!29698 lambda!29693))))

(declare-fun bs!236314 () Bool)

(assert (= bs!236314 (and d!280063 b!918049)))

(assert (=> bs!236314 (= (and (= (regOne!5444 r!15766) lt!337853) (= (regTwo!5444 r!15766) lt!337852)) (= lambda!29698 lambda!29669))))

(assert (=> d!280063 true))

(assert (=> d!280063 true))

(assert (=> d!280063 true))

(assert (=> d!280063 (= (isDefined!1743 (findConcatSeparation!207 (regOne!5444 r!15766) (regTwo!5444 r!15766) Nil!9680 s!10566 s!10566)) (Exists!237 lambda!29698))))

(declare-fun lt!337910 () Unit!14551)

(assert (=> d!280063 (= lt!337910 (choose!5611 (regOne!5444 r!15766) (regTwo!5444 r!15766) s!10566))))

(assert (=> d!280063 (validRegex!935 (regOne!5444 r!15766))))

(assert (=> d!280063 (= (lemmaFindConcatSeparationEquivalentToExists!207 (regOne!5444 r!15766) (regTwo!5444 r!15766) s!10566) lt!337910)))

(declare-fun bs!236315 () Bool)

(assert (= bs!236315 d!280063))

(assert (=> bs!236315 m!1146545))

(assert (=> bs!236315 m!1146547))

(declare-fun m!1146717 () Bool)

(assert (=> bs!236315 m!1146717))

(assert (=> bs!236315 m!1146657))

(assert (=> bs!236315 m!1146545))

(declare-fun m!1146719 () Bool)

(assert (=> bs!236315 m!1146719))

(assert (=> b!918055 d!280063))

(declare-fun bs!236316 () Bool)

(declare-fun d!280065 () Bool)

(assert (= bs!236316 (and d!280065 b!918055)))

(declare-fun lambda!29703 () Int)

(assert (=> bs!236316 (not (= lambda!29703 lambda!29668))))

(declare-fun bs!236317 () Bool)

(assert (= bs!236317 (and d!280065 b!918141)))

(assert (=> bs!236317 (not (= lambda!29703 lambda!29686))))

(assert (=> bs!236316 (= lambda!29703 lambda!29667)))

(declare-fun bs!236318 () Bool)

(assert (= bs!236318 (and d!280065 b!918370)))

(assert (=> bs!236318 (not (= lambda!29703 lambda!29696))))

(declare-fun bs!236319 () Bool)

(assert (= bs!236319 (and d!280065 d!280063)))

(assert (=> bs!236319 (= lambda!29703 lambda!29698)))

(declare-fun bs!236320 () Bool)

(assert (= bs!236320 (and d!280065 b!918362)))

(assert (=> bs!236320 (not (= lambda!29703 lambda!29697))))

(declare-fun bs!236321 () Bool)

(assert (= bs!236321 (and d!280065 b!918149)))

(assert (=> bs!236321 (not (= lambda!29703 lambda!29685))))

(declare-fun bs!236322 () Bool)

(assert (= bs!236322 (and d!280065 d!280045)))

(assert (=> bs!236322 (= (and (= (regOne!5444 r!15766) lt!337853) (= (regTwo!5444 r!15766) lt!337852)) (= lambda!29703 lambda!29693))))

(declare-fun bs!236323 () Bool)

(assert (= bs!236323 (and d!280065 b!918049)))

(assert (=> bs!236323 (= (and (= (regOne!5444 r!15766) lt!337853) (= (regTwo!5444 r!15766) lt!337852)) (= lambda!29703 lambda!29669))))

(assert (=> d!280065 true))

(assert (=> d!280065 true))

(assert (=> d!280065 true))

(declare-fun lambda!29704 () Int)

(assert (=> bs!236316 (= lambda!29704 lambda!29668)))

(declare-fun bs!236324 () Bool)

(assert (= bs!236324 d!280065))

(assert (=> bs!236324 (not (= lambda!29704 lambda!29703))))

(assert (=> bs!236317 (= lambda!29704 lambda!29686)))

(assert (=> bs!236316 (not (= lambda!29704 lambda!29667))))

(assert (=> bs!236318 (not (= lambda!29704 lambda!29696))))

(assert (=> bs!236319 (not (= lambda!29704 lambda!29698))))

(assert (=> bs!236320 (= (and (= (regOne!5444 r!15766) (regOne!5444 lt!337855)) (= (regTwo!5444 r!15766) (regTwo!5444 lt!337855))) (= lambda!29704 lambda!29697))))

(assert (=> bs!236321 (not (= lambda!29704 lambda!29685))))

(assert (=> bs!236322 (not (= lambda!29704 lambda!29693))))

(assert (=> bs!236323 (not (= lambda!29704 lambda!29669))))

(assert (=> d!280065 true))

(assert (=> d!280065 true))

(assert (=> d!280065 true))

(assert (=> d!280065 (= (Exists!237 lambda!29703) (Exists!237 lambda!29704))))

(declare-fun lt!337914 () Unit!14551)

(declare-fun choose!5612 (Regex!2466 Regex!2466 List!9696) Unit!14551)

(assert (=> d!280065 (= lt!337914 (choose!5612 (regOne!5444 r!15766) (regTwo!5444 r!15766) s!10566))))

(assert (=> d!280065 (validRegex!935 (regOne!5444 r!15766))))

(assert (=> d!280065 (= (lemmaExistCutMatchRandMatchRSpecEquivalent!149 (regOne!5444 r!15766) (regTwo!5444 r!15766) s!10566) lt!337914)))

(declare-fun m!1146733 () Bool)

(assert (=> bs!236324 m!1146733))

(declare-fun m!1146735 () Bool)

(assert (=> bs!236324 m!1146735))

(declare-fun m!1146737 () Bool)

(assert (=> bs!236324 m!1146737))

(assert (=> bs!236324 m!1146657))

(assert (=> b!918055 d!280065))

(declare-fun d!280069 () Bool)

(assert (=> d!280069 (= (Exists!237 lambda!29668) (choose!5610 lambda!29668))))

(declare-fun bs!236325 () Bool)

(assert (= bs!236325 d!280069))

(declare-fun m!1146739 () Bool)

(assert (=> bs!236325 m!1146739))

(assert (=> b!918055 d!280069))

(declare-fun b!918422 () Bool)

(declare-fun res!417549 () Bool)

(declare-fun e!598265 () Bool)

(assert (=> b!918422 (=> (not res!417549) (not e!598265))))

(declare-fun lt!337916 () Option!2101)

(assert (=> b!918422 (= res!417549 (matchR!1004 (regOne!5444 r!15766) (_1!6285 (get!3145 lt!337916))))))

(declare-fun b!918423 () Bool)

(declare-fun res!417551 () Bool)

(assert (=> b!918423 (=> (not res!417551) (not e!598265))))

(assert (=> b!918423 (= res!417551 (matchR!1004 (regTwo!5444 r!15766) (_2!6285 (get!3145 lt!337916))))))

(declare-fun b!918424 () Bool)

(declare-fun e!598261 () Option!2101)

(assert (=> b!918424 (= e!598261 None!2100)))

(declare-fun b!918425 () Bool)

(assert (=> b!918425 (= e!598265 (= (++!2556 (_1!6285 (get!3145 lt!337916)) (_2!6285 (get!3145 lt!337916))) s!10566))))

(declare-fun b!918426 () Bool)

(declare-fun lt!337917 () Unit!14551)

(declare-fun lt!337915 () Unit!14551)

(assert (=> b!918426 (= lt!337917 lt!337915)))

(assert (=> b!918426 (= (++!2556 (++!2556 Nil!9680 (Cons!9680 (h!15081 s!10566) Nil!9680)) (t!100742 s!10566)) s!10566)))

(assert (=> b!918426 (= lt!337915 (lemmaMoveElementToOtherListKeepsConcatEq!171 Nil!9680 (h!15081 s!10566) (t!100742 s!10566) s!10566))))

(assert (=> b!918426 (= e!598261 (findConcatSeparation!207 (regOne!5444 r!15766) (regTwo!5444 r!15766) (++!2556 Nil!9680 (Cons!9680 (h!15081 s!10566) Nil!9680)) (t!100742 s!10566) s!10566))))

(declare-fun b!918427 () Bool)

(declare-fun e!598262 () Option!2101)

(assert (=> b!918427 (= e!598262 e!598261)))

(declare-fun c!148935 () Bool)

(assert (=> b!918427 (= c!148935 (is-Nil!9680 s!10566))))

(declare-fun b!918428 () Bool)

(assert (=> b!918428 (= e!598262 (Some!2100 (tuple2!10919 Nil!9680 s!10566)))))

(declare-fun b!918430 () Bool)

(declare-fun e!598264 () Bool)

(assert (=> b!918430 (= e!598264 (matchR!1004 (regTwo!5444 r!15766) s!10566))))

(declare-fun d!280071 () Bool)

(declare-fun e!598263 () Bool)

(assert (=> d!280071 e!598263))

(declare-fun res!417550 () Bool)

(assert (=> d!280071 (=> res!417550 e!598263)))

(assert (=> d!280071 (= res!417550 e!598265)))

(declare-fun res!417548 () Bool)

(assert (=> d!280071 (=> (not res!417548) (not e!598265))))

(assert (=> d!280071 (= res!417548 (isDefined!1743 lt!337916))))

(assert (=> d!280071 (= lt!337916 e!598262)))

(declare-fun c!148934 () Bool)

(assert (=> d!280071 (= c!148934 e!598264)))

(declare-fun res!417547 () Bool)

(assert (=> d!280071 (=> (not res!417547) (not e!598264))))

(assert (=> d!280071 (= res!417547 (matchR!1004 (regOne!5444 r!15766) Nil!9680))))

(assert (=> d!280071 (validRegex!935 (regOne!5444 r!15766))))

(assert (=> d!280071 (= (findConcatSeparation!207 (regOne!5444 r!15766) (regTwo!5444 r!15766) Nil!9680 s!10566 s!10566) lt!337916)))

(declare-fun b!918429 () Bool)

(assert (=> b!918429 (= e!598263 (not (isDefined!1743 lt!337916)))))

(assert (= (and d!280071 res!417547) b!918430))

(assert (= (and d!280071 c!148934) b!918428))

(assert (= (and d!280071 (not c!148934)) b!918427))

(assert (= (and b!918427 c!148935) b!918424))

(assert (= (and b!918427 (not c!148935)) b!918426))

(assert (= (and d!280071 res!417548) b!918422))

(assert (= (and b!918422 res!417549) b!918423))

(assert (= (and b!918423 res!417551) b!918425))

(assert (= (and d!280071 (not res!417550)) b!918429))

(assert (=> b!918426 m!1146685))

(assert (=> b!918426 m!1146685))

(assert (=> b!918426 m!1146687))

(assert (=> b!918426 m!1146689))

(assert (=> b!918426 m!1146685))

(declare-fun m!1146741 () Bool)

(assert (=> b!918426 m!1146741))

(declare-fun m!1146743 () Bool)

(assert (=> b!918429 m!1146743))

(assert (=> d!280071 m!1146743))

(declare-fun m!1146745 () Bool)

(assert (=> d!280071 m!1146745))

(assert (=> d!280071 m!1146657))

(declare-fun m!1146747 () Bool)

(assert (=> b!918423 m!1146747))

(declare-fun m!1146749 () Bool)

(assert (=> b!918423 m!1146749))

(assert (=> b!918425 m!1146747))

(declare-fun m!1146751 () Bool)

(assert (=> b!918425 m!1146751))

(declare-fun m!1146753 () Bool)

(assert (=> b!918430 m!1146753))

(assert (=> b!918422 m!1146747))

(declare-fun m!1146755 () Bool)

(assert (=> b!918422 m!1146755))

(assert (=> b!918055 d!280071))

(declare-fun b!918442 () Bool)

(declare-fun e!598268 () Bool)

(declare-fun tp!286431 () Bool)

(declare-fun tp!286430 () Bool)

(assert (=> b!918442 (= e!598268 (and tp!286431 tp!286430))))

(declare-fun b!918441 () Bool)

(assert (=> b!918441 (= e!598268 tp_is_empty!4575)))

(declare-fun b!918444 () Bool)

(declare-fun tp!286427 () Bool)

(declare-fun tp!286428 () Bool)

(assert (=> b!918444 (= e!598268 (and tp!286427 tp!286428))))

(assert (=> b!918053 (= tp!286397 e!598268)))

(declare-fun b!918443 () Bool)

(declare-fun tp!286429 () Bool)

(assert (=> b!918443 (= e!598268 tp!286429)))

(assert (= (and b!918053 (is-ElementMatch!2466 (regOne!5444 r!15766))) b!918441))

(assert (= (and b!918053 (is-Concat!4299 (regOne!5444 r!15766))) b!918442))

(assert (= (and b!918053 (is-Star!2466 (regOne!5444 r!15766))) b!918443))

(assert (= (and b!918053 (is-Union!2466 (regOne!5444 r!15766))) b!918444))

(declare-fun b!918446 () Bool)

(declare-fun e!598269 () Bool)

(declare-fun tp!286436 () Bool)

(declare-fun tp!286435 () Bool)

(assert (=> b!918446 (= e!598269 (and tp!286436 tp!286435))))

(declare-fun b!918445 () Bool)

(assert (=> b!918445 (= e!598269 tp_is_empty!4575)))

(declare-fun b!918448 () Bool)

(declare-fun tp!286432 () Bool)

(declare-fun tp!286433 () Bool)

(assert (=> b!918448 (= e!598269 (and tp!286432 tp!286433))))

(assert (=> b!918053 (= tp!286393 e!598269)))

(declare-fun b!918447 () Bool)

(declare-fun tp!286434 () Bool)

(assert (=> b!918447 (= e!598269 tp!286434)))

(assert (= (and b!918053 (is-ElementMatch!2466 (regTwo!5444 r!15766))) b!918445))

(assert (= (and b!918053 (is-Concat!4299 (regTwo!5444 r!15766))) b!918446))

(assert (= (and b!918053 (is-Star!2466 (regTwo!5444 r!15766))) b!918447))

(assert (= (and b!918053 (is-Union!2466 (regTwo!5444 r!15766))) b!918448))

(declare-fun b!918450 () Bool)

(declare-fun e!598270 () Bool)

(declare-fun tp!286441 () Bool)

(declare-fun tp!286440 () Bool)

(assert (=> b!918450 (= e!598270 (and tp!286441 tp!286440))))

(declare-fun b!918449 () Bool)

(assert (=> b!918449 (= e!598270 tp_is_empty!4575)))

(declare-fun b!918452 () Bool)

(declare-fun tp!286437 () Bool)

(declare-fun tp!286438 () Bool)

(assert (=> b!918452 (= e!598270 (and tp!286437 tp!286438))))

(assert (=> b!918048 (= tp!286398 e!598270)))

(declare-fun b!918451 () Bool)

(declare-fun tp!286439 () Bool)

(assert (=> b!918451 (= e!598270 tp!286439)))

(assert (= (and b!918048 (is-ElementMatch!2466 (regOne!5445 r!15766))) b!918449))

(assert (= (and b!918048 (is-Concat!4299 (regOne!5445 r!15766))) b!918450))

(assert (= (and b!918048 (is-Star!2466 (regOne!5445 r!15766))) b!918451))

(assert (= (and b!918048 (is-Union!2466 (regOne!5445 r!15766))) b!918452))

(declare-fun b!918454 () Bool)

(declare-fun e!598271 () Bool)

(declare-fun tp!286446 () Bool)

(declare-fun tp!286445 () Bool)

(assert (=> b!918454 (= e!598271 (and tp!286446 tp!286445))))

(declare-fun b!918453 () Bool)

(assert (=> b!918453 (= e!598271 tp_is_empty!4575)))

(declare-fun b!918456 () Bool)

(declare-fun tp!286442 () Bool)

(declare-fun tp!286443 () Bool)

(assert (=> b!918456 (= e!598271 (and tp!286442 tp!286443))))

(assert (=> b!918048 (= tp!286395 e!598271)))

(declare-fun b!918455 () Bool)

(declare-fun tp!286444 () Bool)

(assert (=> b!918455 (= e!598271 tp!286444)))

(assert (= (and b!918048 (is-ElementMatch!2466 (regTwo!5445 r!15766))) b!918453))

(assert (= (and b!918048 (is-Concat!4299 (regTwo!5445 r!15766))) b!918454))

(assert (= (and b!918048 (is-Star!2466 (regTwo!5445 r!15766))) b!918455))

(assert (= (and b!918048 (is-Union!2466 (regTwo!5445 r!15766))) b!918456))

(declare-fun b!918461 () Bool)

(declare-fun e!598274 () Bool)

(declare-fun tp!286449 () Bool)

(assert (=> b!918461 (= e!598274 (and tp_is_empty!4575 tp!286449))))

(assert (=> b!918052 (= tp!286396 e!598274)))

(assert (= (and b!918052 (is-Cons!9680 (t!100742 s!10566))) b!918461))

(declare-fun b!918463 () Bool)

(declare-fun e!598275 () Bool)

(declare-fun tp!286454 () Bool)

(declare-fun tp!286453 () Bool)

(assert (=> b!918463 (= e!598275 (and tp!286454 tp!286453))))

(declare-fun b!918462 () Bool)

(assert (=> b!918462 (= e!598275 tp_is_empty!4575)))

(declare-fun b!918465 () Bool)

(declare-fun tp!286450 () Bool)

(declare-fun tp!286451 () Bool)

(assert (=> b!918465 (= e!598275 (and tp!286450 tp!286451))))

(assert (=> b!918054 (= tp!286394 e!598275)))

(declare-fun b!918464 () Bool)

(declare-fun tp!286452 () Bool)

(assert (=> b!918464 (= e!598275 tp!286452)))

(assert (= (and b!918054 (is-ElementMatch!2466 (reg!2795 r!15766))) b!918462))

(assert (= (and b!918054 (is-Concat!4299 (reg!2795 r!15766))) b!918463))

(assert (= (and b!918054 (is-Star!2466 (reg!2795 r!15766))) b!918464))

(assert (= (and b!918054 (is-Union!2466 (reg!2795 r!15766))) b!918465))

(push 1)

(assert (not d!280063))

(assert (not b!918425))

(assert (not b!918245))

(assert (not b!918148))

(assert (not b!918422))

(assert (not b!918184))

(assert (not d!280027))

(assert (not b!918182))

(assert (not b!918352))

(assert (not d!280037))

(assert (not b!918442))

(assert (not d!280057))

(assert (not b!918463))

(assert (not b!918190))

(assert (not b!918179))

(assert (not b!918360))

(assert (not b!918465))

(assert tp_is_empty!4575)

(assert (not b!918430))

(assert (not b!918191))

(assert (not b!918426))

(assert (not d!280071))

(assert (not bm!55625))

(assert (not b!918187))

(assert (not b!918235))

(assert (not bm!55629))

(assert (not bm!55636))

(assert (not bm!55652))

(assert (not b!918361))

(assert (not d!280031))

(assert (not d!280051))

(assert (not bm!55626))

(assert (not b!918451))

(assert (not bm!55638))

(assert (not b!918450))

(assert (not b!918301))

(assert (not d!280039))

(assert (not b!918356))

(assert (not b!918454))

(assert (not b!918353))

(assert (not b!918140))

(assert (not d!280061))

(assert (not b!918443))

(assert (not bm!55662))

(assert (not b!918290))

(assert (not b!918247))

(assert (not bm!55650))

(assert (not d!280065))

(assert (not bm!55669))

(assert (not d!280069))

(assert (not b!918461))

(assert (not d!280049))

(assert (not b!918359))

(assert (not b!918464))

(assert (not b!918242))

(assert (not b!918456))

(assert (not d!280043))

(assert (not d!280045))

(assert (not b!918355))

(assert (not b!918369))

(assert (not b!918250))

(assert (not b!918446))

(assert (not d!280047))

(assert (not b!918455))

(assert (not b!918444))

(assert (not b!918448))

(assert (not b!918253))

(assert (not b!918452))

(assert (not bm!55670))

(assert (not bm!55664))

(assert (not b!918254))

(assert (not b!918312))

(assert (not b!918447))

(assert (not bm!55659))

(assert (not bm!55657))

(assert (not bm!55639))

(assert (not d!280035))

(assert (not b!918429))

(assert (not b!918423))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

