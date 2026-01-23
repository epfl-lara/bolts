; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!85172 () Bool)

(assert start!85172)

(declare-fun b!955802 () Bool)

(assert (=> b!955802 true))

(assert (=> b!955802 true))

(assert (=> b!955802 true))

(declare-fun lambda!33068 () Int)

(declare-fun lambda!33067 () Int)

(assert (=> b!955802 (not (= lambda!33068 lambda!33067))))

(assert (=> b!955802 true))

(assert (=> b!955802 true))

(assert (=> b!955802 true))

(declare-fun b!955794 () Bool)

(declare-fun e!618080 () Bool)

(declare-fun e!618085 () Bool)

(assert (=> b!955794 (= e!618080 e!618085)))

(declare-fun res!434401 () Bool)

(assert (=> b!955794 (=> res!434401 e!618085)))

(declare-datatypes ((C!5854 0))(
  ( (C!5855 (val!3175 Int)) )
))
(declare-datatypes ((Regex!2642 0))(
  ( (ElementMatch!2642 (c!155603 C!5854)) (Concat!4475 (regOne!5796 Regex!2642) (regTwo!5796 Regex!2642)) (EmptyExpr!2642) (Star!2642 (reg!2971 Regex!2642)) (EmptyLang!2642) (Union!2642 (regOne!5797 Regex!2642) (regTwo!5797 Regex!2642)) )
))
(declare-fun r!15766 () Regex!2642)

(declare-datatypes ((List!9872 0))(
  ( (Nil!9856) (Cons!9856 (h!15257 C!5854) (t!100918 List!9872)) )
))
(declare-datatypes ((tuple2!11170 0))(
  ( (tuple2!11171 (_1!6411 List!9872) (_2!6411 List!9872)) )
))
(declare-fun lt!345454 () tuple2!11170)

(declare-fun matchR!1180 (Regex!2642 List!9872) Bool)

(assert (=> b!955794 (= res!434401 (not (matchR!1180 (reg!2971 r!15766) (_1!6411 lt!345454))))))

(declare-datatypes ((Option!2227 0))(
  ( (None!2226) (Some!2226 (v!19643 tuple2!11170)) )
))
(declare-fun lt!345460 () Option!2227)

(declare-fun get!3337 (Option!2227) tuple2!11170)

(assert (=> b!955794 (= lt!345454 (get!3337 lt!345460))))

(declare-fun lt!345456 () Int)

(declare-fun e!618081 () Bool)

(declare-fun b!955795 () Bool)

(declare-fun lt!345461 () Int)

(declare-fun size!7914 (List!9872) Int)

(assert (=> b!955795 (= e!618081 (= (+ (size!7914 (_1!6411 lt!345454)) lt!345461) lt!345456))))

(declare-fun b!955796 () Bool)

(declare-fun e!618083 () Bool)

(declare-fun tp_is_empty!4927 () Bool)

(assert (=> b!955796 (= e!618083 tp_is_empty!4927)))

(declare-fun b!955798 () Bool)

(assert (=> b!955798 (= e!618085 e!618081)))

(declare-fun res!434403 () Bool)

(assert (=> b!955798 (=> res!434403 e!618081)))

(assert (=> b!955798 (= res!434403 (not (= lt!345461 lt!345456)))))

(declare-fun s!10566 () List!9872)

(assert (=> b!955798 (= lt!345456 (size!7914 s!10566))))

(assert (=> b!955798 (= lt!345461 (size!7914 (_2!6411 lt!345454)))))

(declare-fun removeUselessConcat!293 (Regex!2642) Regex!2642)

(assert (=> b!955798 (matchR!1180 (removeUselessConcat!293 (reg!2971 r!15766)) (_1!6411 lt!345454))))

(declare-datatypes ((Unit!14927 0))(
  ( (Unit!14928) )
))
(declare-fun lt!345453 () Unit!14927)

(declare-fun lemmaRemoveUselessConcatSound!153 (Regex!2642 List!9872) Unit!14927)

(assert (=> b!955798 (= lt!345453 (lemmaRemoveUselessConcatSound!153 (reg!2971 r!15766) (_1!6411 lt!345454)))))

(declare-fun b!955799 () Bool)

(declare-fun e!618084 () Bool)

(declare-fun tp!294325 () Bool)

(assert (=> b!955799 (= e!618084 (and tp_is_empty!4927 tp!294325))))

(declare-fun b!955800 () Bool)

(declare-fun e!618082 () Bool)

(declare-fun e!618086 () Bool)

(assert (=> b!955800 (= e!618082 (not e!618086))))

(declare-fun res!434406 () Bool)

(assert (=> b!955800 (=> res!434406 e!618086)))

(declare-fun lt!345459 () Bool)

(assert (=> b!955800 (= res!434406 (or (not lt!345459) (and (is-Concat!4475 r!15766) (is-EmptyExpr!2642 (regOne!5796 r!15766))) (and (is-Concat!4475 r!15766) (is-EmptyExpr!2642 (regTwo!5796 r!15766))) (is-Concat!4475 r!15766) (is-Union!2642 r!15766) (not (is-Star!2642 r!15766))))))

(declare-fun matchRSpec!443 (Regex!2642 List!9872) Bool)

(assert (=> b!955800 (= lt!345459 (matchRSpec!443 r!15766 s!10566))))

(assert (=> b!955800 (= lt!345459 (matchR!1180 r!15766 s!10566))))

(declare-fun lt!345462 () Unit!14927)

(declare-fun mainMatchTheorem!443 (Regex!2642 List!9872) Unit!14927)

(assert (=> b!955800 (= lt!345462 (mainMatchTheorem!443 r!15766 s!10566))))

(declare-fun b!955801 () Bool)

(declare-fun tp!294324 () Bool)

(declare-fun tp!294322 () Bool)

(assert (=> b!955801 (= e!618083 (and tp!294324 tp!294322))))

(assert (=> b!955802 (= e!618086 e!618080)))

(declare-fun res!434404 () Bool)

(assert (=> b!955802 (=> res!434404 e!618080)))

(declare-fun isEmpty!6137 (List!9872) Bool)

(assert (=> b!955802 (= res!434404 (isEmpty!6137 s!10566))))

(declare-fun Exists!389 (Int) Bool)

(assert (=> b!955802 (= (Exists!389 lambda!33067) (Exists!389 lambda!33068))))

(declare-fun lt!345452 () Unit!14927)

(declare-fun lemmaExistCutMatchRandMatchRSpecEquivalentStar!117 (Regex!2642 List!9872) Unit!14927)

(assert (=> b!955802 (= lt!345452 (lemmaExistCutMatchRandMatchRSpecEquivalentStar!117 (reg!2971 r!15766) s!10566))))

(declare-fun lt!345458 () Bool)

(assert (=> b!955802 (= lt!345458 (Exists!389 lambda!33067))))

(declare-fun isDefined!1869 (Option!2227) Bool)

(assert (=> b!955802 (= lt!345458 (isDefined!1869 lt!345460))))

(declare-fun lt!345457 () Regex!2642)

(declare-fun findConcatSeparation!333 (Regex!2642 Regex!2642 List!9872 List!9872 List!9872) Option!2227)

(assert (=> b!955802 (= lt!345460 (findConcatSeparation!333 (reg!2971 r!15766) lt!345457 Nil!9856 s!10566 s!10566))))

(declare-fun lt!345455 () Unit!14927)

(declare-fun lemmaFindConcatSeparationEquivalentToExists!333 (Regex!2642 Regex!2642 List!9872) Unit!14927)

(assert (=> b!955802 (= lt!345455 (lemmaFindConcatSeparationEquivalentToExists!333 (reg!2971 r!15766) lt!345457 s!10566))))

(assert (=> b!955802 (= lt!345457 (Star!2642 (reg!2971 r!15766)))))

(declare-fun b!955797 () Bool)

(declare-fun res!434408 () Bool)

(assert (=> b!955797 (=> res!434408 e!618080)))

(assert (=> b!955797 (= res!434408 (not lt!345458))))

(declare-fun res!434402 () Bool)

(assert (=> start!85172 (=> (not res!434402) (not e!618082))))

(declare-fun validRegex!1111 (Regex!2642) Bool)

(assert (=> start!85172 (= res!434402 (validRegex!1111 r!15766))))

(assert (=> start!85172 e!618082))

(assert (=> start!85172 e!618083))

(assert (=> start!85172 e!618084))

(declare-fun b!955803 () Bool)

(declare-fun res!434407 () Bool)

(assert (=> b!955803 (=> res!434407 e!618085)))

(assert (=> b!955803 (= res!434407 (not (matchR!1180 lt!345457 (_2!6411 lt!345454))))))

(declare-fun b!955804 () Bool)

(declare-fun tp!294323 () Bool)

(assert (=> b!955804 (= e!618083 tp!294323)))

(declare-fun b!955805 () Bool)

(declare-fun tp!294326 () Bool)

(declare-fun tp!294321 () Bool)

(assert (=> b!955805 (= e!618083 (and tp!294326 tp!294321))))

(declare-fun b!955806 () Bool)

(declare-fun res!434405 () Bool)

(assert (=> b!955806 (=> res!434405 e!618081)))

(declare-fun ++!2645 (List!9872 List!9872) List!9872)

(assert (=> b!955806 (= res!434405 (not (= (++!2645 (_1!6411 lt!345454) (_2!6411 lt!345454)) s!10566)))))

(assert (= (and start!85172 res!434402) b!955800))

(assert (= (and b!955800 (not res!434406)) b!955802))

(assert (= (and b!955802 (not res!434404)) b!955797))

(assert (= (and b!955797 (not res!434408)) b!955794))

(assert (= (and b!955794 (not res!434401)) b!955803))

(assert (= (and b!955803 (not res!434407)) b!955798))

(assert (= (and b!955798 (not res!434403)) b!955806))

(assert (= (and b!955806 (not res!434405)) b!955795))

(assert (= (and start!85172 (is-ElementMatch!2642 r!15766)) b!955796))

(assert (= (and start!85172 (is-Concat!4475 r!15766)) b!955801))

(assert (= (and start!85172 (is-Star!2642 r!15766)) b!955804))

(assert (= (and start!85172 (is-Union!2642 r!15766)) b!955805))

(assert (= (and start!85172 (is-Cons!9856 s!10566)) b!955799))

(declare-fun m!1166193 () Bool)

(assert (=> b!955794 m!1166193))

(declare-fun m!1166195 () Bool)

(assert (=> b!955794 m!1166195))

(declare-fun m!1166197 () Bool)

(assert (=> b!955802 m!1166197))

(declare-fun m!1166199 () Bool)

(assert (=> b!955802 m!1166199))

(declare-fun m!1166201 () Bool)

(assert (=> b!955802 m!1166201))

(declare-fun m!1166203 () Bool)

(assert (=> b!955802 m!1166203))

(declare-fun m!1166205 () Bool)

(assert (=> b!955802 m!1166205))

(declare-fun m!1166207 () Bool)

(assert (=> b!955802 m!1166207))

(assert (=> b!955802 m!1166199))

(declare-fun m!1166209 () Bool)

(assert (=> b!955802 m!1166209))

(declare-fun m!1166211 () Bool)

(assert (=> b!955806 m!1166211))

(declare-fun m!1166213 () Bool)

(assert (=> b!955800 m!1166213))

(declare-fun m!1166215 () Bool)

(assert (=> b!955800 m!1166215))

(declare-fun m!1166217 () Bool)

(assert (=> b!955800 m!1166217))

(declare-fun m!1166219 () Bool)

(assert (=> b!955798 m!1166219))

(declare-fun m!1166221 () Bool)

(assert (=> b!955798 m!1166221))

(declare-fun m!1166223 () Bool)

(assert (=> b!955798 m!1166223))

(declare-fun m!1166225 () Bool)

(assert (=> b!955798 m!1166225))

(assert (=> b!955798 m!1166221))

(declare-fun m!1166227 () Bool)

(assert (=> b!955798 m!1166227))

(declare-fun m!1166229 () Bool)

(assert (=> start!85172 m!1166229))

(declare-fun m!1166231 () Bool)

(assert (=> b!955795 m!1166231))

(declare-fun m!1166233 () Bool)

(assert (=> b!955803 m!1166233))

(push 1)

(assert (not b!955800))

(assert tp_is_empty!4927)

(assert (not b!955794))

(assert (not b!955804))

(assert (not b!955795))

(assert (not start!85172))

(assert (not b!955805))

(assert (not b!955799))

(assert (not b!955801))

(assert (not b!955806))

(assert (not b!955802))

(assert (not b!955803))

(assert (not b!955798))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!284409 () Bool)

(assert (=> d!284409 (= (matchR!1180 (reg!2971 r!15766) (_1!6411 lt!345454)) (matchR!1180 (removeUselessConcat!293 (reg!2971 r!15766)) (_1!6411 lt!345454)))))

(declare-fun lt!345498 () Unit!14927)

(declare-fun choose!5994 (Regex!2642 List!9872) Unit!14927)

(assert (=> d!284409 (= lt!345498 (choose!5994 (reg!2971 r!15766) (_1!6411 lt!345454)))))

(assert (=> d!284409 (validRegex!1111 (reg!2971 r!15766))))

(assert (=> d!284409 (= (lemmaRemoveUselessConcatSound!153 (reg!2971 r!15766) (_1!6411 lt!345454)) lt!345498)))

(declare-fun bs!240424 () Bool)

(assert (= bs!240424 d!284409))

(assert (=> bs!240424 m!1166221))

(assert (=> bs!240424 m!1166221))

(assert (=> bs!240424 m!1166223))

(declare-fun m!1166277 () Bool)

(assert (=> bs!240424 m!1166277))

(assert (=> bs!240424 m!1166193))

(declare-fun m!1166279 () Bool)

(assert (=> bs!240424 m!1166279))

(assert (=> b!955798 d!284409))

(declare-fun d!284413 () Bool)

(declare-fun lt!345501 () Int)

(assert (=> d!284413 (>= lt!345501 0)))

(declare-fun e!618116 () Int)

(assert (=> d!284413 (= lt!345501 e!618116)))

(declare-fun c!155607 () Bool)

(assert (=> d!284413 (= c!155607 (is-Nil!9856 s!10566))))

(assert (=> d!284413 (= (size!7914 s!10566) lt!345501)))

(declare-fun b!955872 () Bool)

(assert (=> b!955872 (= e!618116 0)))

(declare-fun b!955873 () Bool)

(assert (=> b!955873 (= e!618116 (+ 1 (size!7914 (t!100918 s!10566))))))

(assert (= (and d!284413 c!155607) b!955872))

(assert (= (and d!284413 (not c!155607)) b!955873))

(declare-fun m!1166281 () Bool)

(assert (=> b!955873 m!1166281))

(assert (=> b!955798 d!284413))

(declare-fun d!284415 () Bool)

(declare-fun lt!345502 () Int)

(assert (=> d!284415 (>= lt!345502 0)))

(declare-fun e!618117 () Int)

(assert (=> d!284415 (= lt!345502 e!618117)))

(declare-fun c!155608 () Bool)

(assert (=> d!284415 (= c!155608 (is-Nil!9856 (_2!6411 lt!345454)))))

(assert (=> d!284415 (= (size!7914 (_2!6411 lt!345454)) lt!345502)))

(declare-fun b!955874 () Bool)

(assert (=> b!955874 (= e!618117 0)))

(declare-fun b!955875 () Bool)

(assert (=> b!955875 (= e!618117 (+ 1 (size!7914 (t!100918 (_2!6411 lt!345454)))))))

(assert (= (and d!284415 c!155608) b!955874))

(assert (= (and d!284415 (not c!155608)) b!955875))

(declare-fun m!1166283 () Bool)

(assert (=> b!955875 m!1166283))

(assert (=> b!955798 d!284415))

(declare-fun b!955898 () Bool)

(declare-fun e!618131 () Regex!2642)

(declare-fun call!60057 () Regex!2642)

(declare-fun call!60058 () Regex!2642)

(assert (=> b!955898 (= e!618131 (Union!2642 call!60057 call!60058))))

(declare-fun b!955899 () Bool)

(declare-fun e!618133 () Regex!2642)

(assert (=> b!955899 (= e!618133 e!618131)))

(declare-fun c!155621 () Bool)

(assert (=> b!955899 (= c!155621 (is-Union!2642 (reg!2971 r!15766)))))

(declare-fun bm!60051 () Bool)

(declare-fun call!60059 () Regex!2642)

(declare-fun call!60060 () Regex!2642)

(assert (=> bm!60051 (= call!60059 call!60060)))

(declare-fun b!955900 () Bool)

(declare-fun e!618134 () Regex!2642)

(assert (=> b!955900 (= e!618134 call!60060)))

(declare-fun b!955901 () Bool)

(declare-fun e!618132 () Bool)

(declare-fun lt!345505 () Regex!2642)

(declare-fun nullable!791 (Regex!2642) Bool)

(assert (=> b!955901 (= e!618132 (= (nullable!791 lt!345505) (nullable!791 (reg!2971 r!15766))))))

(declare-fun b!955902 () Bool)

(declare-fun e!618130 () Regex!2642)

(assert (=> b!955902 (= e!618130 call!60059)))

(declare-fun b!955903 () Bool)

(declare-fun e!618135 () Regex!2642)

(assert (=> b!955903 (= e!618135 (reg!2971 r!15766))))

(declare-fun b!955904 () Bool)

(declare-fun call!60056 () Regex!2642)

(assert (=> b!955904 (= e!618133 (Concat!4475 call!60056 call!60057))))

(declare-fun c!155623 () Bool)

(declare-fun c!155619 () Bool)

(declare-fun c!155620 () Bool)

(declare-fun bm!60053 () Bool)

(assert (=> bm!60053 (= call!60060 (removeUselessConcat!293 (ite c!155619 (regTwo!5796 (reg!2971 r!15766)) (ite (or c!155620 c!155623) (regOne!5796 (reg!2971 r!15766)) (ite c!155621 (regTwo!5797 (reg!2971 r!15766)) (reg!2971 (reg!2971 r!15766)))))))))

(declare-fun bm!60054 () Bool)

(assert (=> bm!60054 (= call!60058 call!60056)))

(declare-fun bm!60055 () Bool)

(assert (=> bm!60055 (= call!60057 (removeUselessConcat!293 (ite c!155623 (regTwo!5796 (reg!2971 r!15766)) (regOne!5797 (reg!2971 r!15766)))))))

(declare-fun bm!60052 () Bool)

(assert (=> bm!60052 (= call!60056 call!60059)))

(declare-fun d!284417 () Bool)

(assert (=> d!284417 e!618132))

(declare-fun res!434449 () Bool)

(assert (=> d!284417 (=> (not res!434449) (not e!618132))))

(assert (=> d!284417 (= res!434449 (validRegex!1111 lt!345505))))

(assert (=> d!284417 (= lt!345505 e!618134)))

(assert (=> d!284417 (= c!155619 (and (is-Concat!4475 (reg!2971 r!15766)) (is-EmptyExpr!2642 (regOne!5796 (reg!2971 r!15766)))))))

(assert (=> d!284417 (validRegex!1111 (reg!2971 r!15766))))

(assert (=> d!284417 (= (removeUselessConcat!293 (reg!2971 r!15766)) lt!345505)))

(declare-fun b!955905 () Bool)

(declare-fun c!155622 () Bool)

(assert (=> b!955905 (= c!155622 (is-Star!2642 (reg!2971 r!15766)))))

(assert (=> b!955905 (= e!618131 e!618135)))

(declare-fun b!955906 () Bool)

(assert (=> b!955906 (= e!618134 e!618130)))

(assert (=> b!955906 (= c!155620 (and (is-Concat!4475 (reg!2971 r!15766)) (is-EmptyExpr!2642 (regTwo!5796 (reg!2971 r!15766)))))))

(declare-fun b!955907 () Bool)

(assert (=> b!955907 (= c!155623 (is-Concat!4475 (reg!2971 r!15766)))))

(assert (=> b!955907 (= e!618130 e!618133)))

(declare-fun b!955908 () Bool)

(assert (=> b!955908 (= e!618135 (Star!2642 call!60058))))

(assert (= (and d!284417 c!155619) b!955900))

(assert (= (and d!284417 (not c!155619)) b!955906))

(assert (= (and b!955906 c!155620) b!955902))

(assert (= (and b!955906 (not c!155620)) b!955907))

(assert (= (and b!955907 c!155623) b!955904))

(assert (= (and b!955907 (not c!155623)) b!955899))

(assert (= (and b!955899 c!155621) b!955898))

(assert (= (and b!955899 (not c!155621)) b!955905))

(assert (= (and b!955905 c!155622) b!955908))

(assert (= (and b!955905 (not c!155622)) b!955903))

(assert (= (or b!955898 b!955908) bm!60054))

(assert (= (or b!955904 b!955898) bm!60055))

(assert (= (or b!955904 bm!60054) bm!60052))

(assert (= (or b!955902 bm!60052) bm!60051))

(assert (= (or b!955900 bm!60051) bm!60053))

(assert (= (and d!284417 res!434449) b!955901))

(declare-fun m!1166285 () Bool)

(assert (=> b!955901 m!1166285))

(declare-fun m!1166287 () Bool)

(assert (=> b!955901 m!1166287))

(declare-fun m!1166289 () Bool)

(assert (=> bm!60053 m!1166289))

(declare-fun m!1166291 () Bool)

(assert (=> bm!60055 m!1166291))

(declare-fun m!1166293 () Bool)

(assert (=> d!284417 m!1166293))

(assert (=> d!284417 m!1166279))

(assert (=> b!955798 d!284417))

(declare-fun b!955965 () Bool)

(declare-fun e!618165 () Bool)

(declare-fun derivativeStep!600 (Regex!2642 C!5854) Regex!2642)

(declare-fun head!1753 (List!9872) C!5854)

(declare-fun tail!1315 (List!9872) List!9872)

(assert (=> b!955965 (= e!618165 (matchR!1180 (derivativeStep!600 (removeUselessConcat!293 (reg!2971 r!15766)) (head!1753 (_1!6411 lt!345454))) (tail!1315 (_1!6411 lt!345454))))))

(declare-fun d!284419 () Bool)

(declare-fun e!618168 () Bool)

(assert (=> d!284419 e!618168))

(declare-fun c!155637 () Bool)

(assert (=> d!284419 (= c!155637 (is-EmptyExpr!2642 (removeUselessConcat!293 (reg!2971 r!15766))))))

(declare-fun lt!345510 () Bool)

(assert (=> d!284419 (= lt!345510 e!618165)))

(declare-fun c!155636 () Bool)

(assert (=> d!284419 (= c!155636 (isEmpty!6137 (_1!6411 lt!345454)))))

(assert (=> d!284419 (validRegex!1111 (removeUselessConcat!293 (reg!2971 r!15766)))))

(assert (=> d!284419 (= (matchR!1180 (removeUselessConcat!293 (reg!2971 r!15766)) (_1!6411 lt!345454)) lt!345510)))

(declare-fun b!955966 () Bool)

(declare-fun res!434488 () Bool)

(declare-fun e!618164 () Bool)

(assert (=> b!955966 (=> res!434488 e!618164)))

(assert (=> b!955966 (= res!434488 (not (is-ElementMatch!2642 (removeUselessConcat!293 (reg!2971 r!15766)))))))

(declare-fun e!618167 () Bool)

(assert (=> b!955966 (= e!618167 e!618164)))

(declare-fun b!955967 () Bool)

(declare-fun e!618170 () Bool)

(assert (=> b!955967 (= e!618170 (= (head!1753 (_1!6411 lt!345454)) (c!155603 (removeUselessConcat!293 (reg!2971 r!15766)))))))

(declare-fun b!955968 () Bool)

(declare-fun e!618169 () Bool)

(assert (=> b!955968 (= e!618169 (not (= (head!1753 (_1!6411 lt!345454)) (c!155603 (removeUselessConcat!293 (reg!2971 r!15766))))))))

(declare-fun b!955969 () Bool)

(declare-fun call!60065 () Bool)

(assert (=> b!955969 (= e!618168 (= lt!345510 call!60065))))

(declare-fun b!955970 () Bool)

(assert (=> b!955970 (= e!618167 (not lt!345510))))

(declare-fun b!955971 () Bool)

(declare-fun e!618166 () Bool)

(assert (=> b!955971 (= e!618166 e!618169)))

(declare-fun res!434487 () Bool)

(assert (=> b!955971 (=> res!434487 e!618169)))

(assert (=> b!955971 (= res!434487 call!60065)))

(declare-fun b!955972 () Bool)

(assert (=> b!955972 (= e!618164 e!618166)))

(declare-fun res!434486 () Bool)

(assert (=> b!955972 (=> (not res!434486) (not e!618166))))

(assert (=> b!955972 (= res!434486 (not lt!345510))))

(declare-fun b!955973 () Bool)

(assert (=> b!955973 (= e!618168 e!618167)))

(declare-fun c!155638 () Bool)

(assert (=> b!955973 (= c!155638 (is-EmptyLang!2642 (removeUselessConcat!293 (reg!2971 r!15766))))))

(declare-fun b!955974 () Bool)

(assert (=> b!955974 (= e!618165 (nullable!791 (removeUselessConcat!293 (reg!2971 r!15766))))))

(declare-fun b!955975 () Bool)

(declare-fun res!434482 () Bool)

(assert (=> b!955975 (=> (not res!434482) (not e!618170))))

(assert (=> b!955975 (= res!434482 (isEmpty!6137 (tail!1315 (_1!6411 lt!345454))))))

(declare-fun b!955976 () Bool)

(declare-fun res!434483 () Bool)

(assert (=> b!955976 (=> (not res!434483) (not e!618170))))

(assert (=> b!955976 (= res!434483 (not call!60065))))

(declare-fun b!955977 () Bool)

(declare-fun res!434489 () Bool)

(assert (=> b!955977 (=> res!434489 e!618164)))

(assert (=> b!955977 (= res!434489 e!618170)))

(declare-fun res!434485 () Bool)

(assert (=> b!955977 (=> (not res!434485) (not e!618170))))

(assert (=> b!955977 (= res!434485 lt!345510)))

(declare-fun bm!60060 () Bool)

(assert (=> bm!60060 (= call!60065 (isEmpty!6137 (_1!6411 lt!345454)))))

(declare-fun b!955978 () Bool)

(declare-fun res!434484 () Bool)

(assert (=> b!955978 (=> res!434484 e!618169)))

(assert (=> b!955978 (= res!434484 (not (isEmpty!6137 (tail!1315 (_1!6411 lt!345454)))))))

(assert (= (and d!284419 c!155636) b!955974))

(assert (= (and d!284419 (not c!155636)) b!955965))

(assert (= (and d!284419 c!155637) b!955969))

(assert (= (and d!284419 (not c!155637)) b!955973))

(assert (= (and b!955973 c!155638) b!955970))

(assert (= (and b!955973 (not c!155638)) b!955966))

(assert (= (and b!955966 (not res!434488)) b!955977))

(assert (= (and b!955977 res!434485) b!955976))

(assert (= (and b!955976 res!434483) b!955975))

(assert (= (and b!955975 res!434482) b!955967))

(assert (= (and b!955977 (not res!434489)) b!955972))

(assert (= (and b!955972 res!434486) b!955971))

(assert (= (and b!955971 (not res!434487)) b!955978))

(assert (= (and b!955978 (not res!434484)) b!955968))

(assert (= (or b!955969 b!955971 b!955976) bm!60060))

(assert (=> b!955974 m!1166221))

(declare-fun m!1166295 () Bool)

(assert (=> b!955974 m!1166295))

(declare-fun m!1166297 () Bool)

(assert (=> b!955975 m!1166297))

(assert (=> b!955975 m!1166297))

(declare-fun m!1166299 () Bool)

(assert (=> b!955975 m!1166299))

(declare-fun m!1166301 () Bool)

(assert (=> b!955965 m!1166301))

(assert (=> b!955965 m!1166221))

(assert (=> b!955965 m!1166301))

(declare-fun m!1166303 () Bool)

(assert (=> b!955965 m!1166303))

(assert (=> b!955965 m!1166297))

(assert (=> b!955965 m!1166303))

(assert (=> b!955965 m!1166297))

(declare-fun m!1166305 () Bool)

(assert (=> b!955965 m!1166305))

(assert (=> b!955967 m!1166301))

(declare-fun m!1166307 () Bool)

(assert (=> d!284419 m!1166307))

(assert (=> d!284419 m!1166221))

(declare-fun m!1166309 () Bool)

(assert (=> d!284419 m!1166309))

(assert (=> bm!60060 m!1166307))

(assert (=> b!955978 m!1166297))

(assert (=> b!955978 m!1166297))

(assert (=> b!955978 m!1166299))

(assert (=> b!955968 m!1166301))

(assert (=> b!955798 d!284419))

(declare-fun b!955979 () Bool)

(declare-fun e!618172 () Bool)

(assert (=> b!955979 (= e!618172 (matchR!1180 (derivativeStep!600 lt!345457 (head!1753 (_2!6411 lt!345454))) (tail!1315 (_2!6411 lt!345454))))))

(declare-fun d!284421 () Bool)

(declare-fun e!618175 () Bool)

(assert (=> d!284421 e!618175))

(declare-fun c!155640 () Bool)

(assert (=> d!284421 (= c!155640 (is-EmptyExpr!2642 lt!345457))))

(declare-fun lt!345511 () Bool)

(assert (=> d!284421 (= lt!345511 e!618172)))

(declare-fun c!155639 () Bool)

(assert (=> d!284421 (= c!155639 (isEmpty!6137 (_2!6411 lt!345454)))))

(assert (=> d!284421 (validRegex!1111 lt!345457)))

(assert (=> d!284421 (= (matchR!1180 lt!345457 (_2!6411 lt!345454)) lt!345511)))

(declare-fun b!955980 () Bool)

(declare-fun res!434496 () Bool)

(declare-fun e!618171 () Bool)

(assert (=> b!955980 (=> res!434496 e!618171)))

(assert (=> b!955980 (= res!434496 (not (is-ElementMatch!2642 lt!345457)))))

(declare-fun e!618174 () Bool)

(assert (=> b!955980 (= e!618174 e!618171)))

(declare-fun b!955981 () Bool)

(declare-fun e!618177 () Bool)

(assert (=> b!955981 (= e!618177 (= (head!1753 (_2!6411 lt!345454)) (c!155603 lt!345457)))))

(declare-fun b!955982 () Bool)

(declare-fun e!618176 () Bool)

(assert (=> b!955982 (= e!618176 (not (= (head!1753 (_2!6411 lt!345454)) (c!155603 lt!345457))))))

(declare-fun b!955983 () Bool)

(declare-fun call!60066 () Bool)

(assert (=> b!955983 (= e!618175 (= lt!345511 call!60066))))

(declare-fun b!955984 () Bool)

(assert (=> b!955984 (= e!618174 (not lt!345511))))

(declare-fun b!955985 () Bool)

(declare-fun e!618173 () Bool)

(assert (=> b!955985 (= e!618173 e!618176)))

(declare-fun res!434495 () Bool)

(assert (=> b!955985 (=> res!434495 e!618176)))

(assert (=> b!955985 (= res!434495 call!60066)))

(declare-fun b!955986 () Bool)

(assert (=> b!955986 (= e!618171 e!618173)))

(declare-fun res!434494 () Bool)

(assert (=> b!955986 (=> (not res!434494) (not e!618173))))

(assert (=> b!955986 (= res!434494 (not lt!345511))))

(declare-fun b!955987 () Bool)

(assert (=> b!955987 (= e!618175 e!618174)))

(declare-fun c!155641 () Bool)

(assert (=> b!955987 (= c!155641 (is-EmptyLang!2642 lt!345457))))

(declare-fun b!955988 () Bool)

(assert (=> b!955988 (= e!618172 (nullable!791 lt!345457))))

(declare-fun b!955989 () Bool)

(declare-fun res!434490 () Bool)

(assert (=> b!955989 (=> (not res!434490) (not e!618177))))

(assert (=> b!955989 (= res!434490 (isEmpty!6137 (tail!1315 (_2!6411 lt!345454))))))

(declare-fun b!955990 () Bool)

(declare-fun res!434491 () Bool)

(assert (=> b!955990 (=> (not res!434491) (not e!618177))))

(assert (=> b!955990 (= res!434491 (not call!60066))))

(declare-fun b!955991 () Bool)

(declare-fun res!434497 () Bool)

(assert (=> b!955991 (=> res!434497 e!618171)))

(assert (=> b!955991 (= res!434497 e!618177)))

(declare-fun res!434493 () Bool)

(assert (=> b!955991 (=> (not res!434493) (not e!618177))))

(assert (=> b!955991 (= res!434493 lt!345511)))

(declare-fun bm!60061 () Bool)

(assert (=> bm!60061 (= call!60066 (isEmpty!6137 (_2!6411 lt!345454)))))

(declare-fun b!955992 () Bool)

(declare-fun res!434492 () Bool)

(assert (=> b!955992 (=> res!434492 e!618176)))

(assert (=> b!955992 (= res!434492 (not (isEmpty!6137 (tail!1315 (_2!6411 lt!345454)))))))

(assert (= (and d!284421 c!155639) b!955988))

(assert (= (and d!284421 (not c!155639)) b!955979))

(assert (= (and d!284421 c!155640) b!955983))

(assert (= (and d!284421 (not c!155640)) b!955987))

(assert (= (and b!955987 c!155641) b!955984))

(assert (= (and b!955987 (not c!155641)) b!955980))

(assert (= (and b!955980 (not res!434496)) b!955991))

(assert (= (and b!955991 res!434493) b!955990))

(assert (= (and b!955990 res!434491) b!955989))

(assert (= (and b!955989 res!434490) b!955981))

(assert (= (and b!955991 (not res!434497)) b!955986))

(assert (= (and b!955986 res!434494) b!955985))

(assert (= (and b!955985 (not res!434495)) b!955992))

(assert (= (and b!955992 (not res!434492)) b!955982))

(assert (= (or b!955983 b!955985 b!955990) bm!60061))

(declare-fun m!1166311 () Bool)

(assert (=> b!955988 m!1166311))

(declare-fun m!1166313 () Bool)

(assert (=> b!955989 m!1166313))

(assert (=> b!955989 m!1166313))

(declare-fun m!1166315 () Bool)

(assert (=> b!955989 m!1166315))

(declare-fun m!1166317 () Bool)

(assert (=> b!955979 m!1166317))

(assert (=> b!955979 m!1166317))

(declare-fun m!1166319 () Bool)

(assert (=> b!955979 m!1166319))

(assert (=> b!955979 m!1166313))

(assert (=> b!955979 m!1166319))

(assert (=> b!955979 m!1166313))

(declare-fun m!1166321 () Bool)

(assert (=> b!955979 m!1166321))

(assert (=> b!955981 m!1166317))

(declare-fun m!1166323 () Bool)

(assert (=> d!284421 m!1166323))

(declare-fun m!1166325 () Bool)

(assert (=> d!284421 m!1166325))

(assert (=> bm!60061 m!1166323))

(assert (=> b!955992 m!1166313))

(assert (=> b!955992 m!1166313))

(assert (=> b!955992 m!1166315))

(assert (=> b!955982 m!1166317))

(assert (=> b!955803 d!284421))

(declare-fun bm!60069 () Bool)

(declare-fun call!60076 () Bool)

(declare-fun c!155649 () Bool)

(assert (=> bm!60069 (= call!60076 (validRegex!1111 (ite c!155649 (regTwo!5797 r!15766) (regTwo!5796 r!15766))))))

(declare-fun b!956025 () Bool)

(declare-fun e!618202 () Bool)

(assert (=> b!956025 (= e!618202 call!60076)))

(declare-fun b!956026 () Bool)

(declare-fun e!618201 () Bool)

(declare-fun call!60074 () Bool)

(assert (=> b!956026 (= e!618201 call!60074)))

(declare-fun d!284423 () Bool)

(declare-fun res!434516 () Bool)

(declare-fun e!618199 () Bool)

(assert (=> d!284423 (=> res!434516 e!618199)))

(assert (=> d!284423 (= res!434516 (is-ElementMatch!2642 r!15766))))

(assert (=> d!284423 (= (validRegex!1111 r!15766) e!618199)))

(declare-fun b!956027 () Bool)

(declare-fun e!618204 () Bool)

(declare-fun e!618205 () Bool)

(assert (=> b!956027 (= e!618204 e!618205)))

(assert (=> b!956027 (= c!155649 (is-Union!2642 r!15766))))

(declare-fun b!956028 () Bool)

(declare-fun res!434519 () Bool)

(assert (=> b!956028 (=> (not res!434519) (not e!618202))))

(declare-fun call!60075 () Bool)

(assert (=> b!956028 (= res!434519 call!60075)))

(assert (=> b!956028 (= e!618205 e!618202)))

(declare-fun b!956029 () Bool)

(assert (=> b!956029 (= e!618199 e!618204)))

(declare-fun c!155650 () Bool)

(assert (=> b!956029 (= c!155650 (is-Star!2642 r!15766))))

(declare-fun b!956030 () Bool)

(declare-fun e!618200 () Bool)

(declare-fun e!618203 () Bool)

(assert (=> b!956030 (= e!618200 e!618203)))

(declare-fun res!434518 () Bool)

(assert (=> b!956030 (=> (not res!434518) (not e!618203))))

(assert (=> b!956030 (= res!434518 call!60075)))

(declare-fun b!956031 () Bool)

(assert (=> b!956031 (= e!618203 call!60076)))

(declare-fun b!956032 () Bool)

(assert (=> b!956032 (= e!618204 e!618201)))

(declare-fun res!434517 () Bool)

(assert (=> b!956032 (= res!434517 (not (nullable!791 (reg!2971 r!15766))))))

(assert (=> b!956032 (=> (not res!434517) (not e!618201))))

(declare-fun bm!60070 () Bool)

(assert (=> bm!60070 (= call!60075 call!60074)))

(declare-fun b!956033 () Bool)

(declare-fun res!434520 () Bool)

(assert (=> b!956033 (=> res!434520 e!618200)))

(assert (=> b!956033 (= res!434520 (not (is-Concat!4475 r!15766)))))

(assert (=> b!956033 (= e!618205 e!618200)))

(declare-fun bm!60071 () Bool)

(assert (=> bm!60071 (= call!60074 (validRegex!1111 (ite c!155650 (reg!2971 r!15766) (ite c!155649 (regOne!5797 r!15766) (regOne!5796 r!15766)))))))

(assert (= (and d!284423 (not res!434516)) b!956029))

(assert (= (and b!956029 c!155650) b!956032))

(assert (= (and b!956029 (not c!155650)) b!956027))

(assert (= (and b!956032 res!434517) b!956026))

(assert (= (and b!956027 c!155649) b!956028))

(assert (= (and b!956027 (not c!155649)) b!956033))

(assert (= (and b!956028 res!434519) b!956025))

(assert (= (and b!956033 (not res!434520)) b!956030))

(assert (= (and b!956030 res!434518) b!956031))

(assert (= (or b!956025 b!956031) bm!60069))

(assert (= (or b!956028 b!956030) bm!60070))

(assert (= (or b!956026 bm!60070) bm!60071))

(declare-fun m!1166343 () Bool)

(assert (=> bm!60069 m!1166343))

(assert (=> b!956032 m!1166287))

(declare-fun m!1166345 () Bool)

(assert (=> bm!60071 m!1166345))

(assert (=> start!85172 d!284423))

(declare-fun d!284427 () Bool)

(assert (=> d!284427 (= (isEmpty!6137 s!10566) (is-Nil!9856 s!10566))))

(assert (=> b!955802 d!284427))

(declare-fun d!284429 () Bool)

(declare-fun choose!5995 (Int) Bool)

(assert (=> d!284429 (= (Exists!389 lambda!33067) (choose!5995 lambda!33067))))

(declare-fun bs!240425 () Bool)

(assert (= bs!240425 d!284429))

(declare-fun m!1166347 () Bool)

(assert (=> bs!240425 m!1166347))

(assert (=> b!955802 d!284429))

(declare-fun d!284433 () Bool)

(declare-fun isEmpty!6139 (Option!2227) Bool)

(assert (=> d!284433 (= (isDefined!1869 lt!345460) (not (isEmpty!6139 lt!345460)))))

(declare-fun bs!240426 () Bool)

(assert (= bs!240426 d!284433))

(declare-fun m!1166349 () Bool)

(assert (=> bs!240426 m!1166349))

(assert (=> b!955802 d!284433))

(declare-fun bs!240427 () Bool)

(declare-fun d!284435 () Bool)

(assert (= bs!240427 (and d!284435 b!955802)))

(declare-fun lambda!33081 () Int)

(assert (=> bs!240427 (= (= (Star!2642 (reg!2971 r!15766)) lt!345457) (= lambda!33081 lambda!33067))))

(assert (=> bs!240427 (not (= lambda!33081 lambda!33068))))

(assert (=> d!284435 true))

(assert (=> d!284435 true))

(declare-fun lambda!33082 () Int)

(assert (=> bs!240427 (not (= lambda!33082 lambda!33067))))

(assert (=> bs!240427 (= (= (Star!2642 (reg!2971 r!15766)) lt!345457) (= lambda!33082 lambda!33068))))

(declare-fun bs!240428 () Bool)

(assert (= bs!240428 d!284435))

(assert (=> bs!240428 (not (= lambda!33082 lambda!33081))))

(assert (=> d!284435 true))

(assert (=> d!284435 true))

(assert (=> d!284435 (= (Exists!389 lambda!33081) (Exists!389 lambda!33082))))

(declare-fun lt!345515 () Unit!14927)

(declare-fun choose!5996 (Regex!2642 List!9872) Unit!14927)

(assert (=> d!284435 (= lt!345515 (choose!5996 (reg!2971 r!15766) s!10566))))

(assert (=> d!284435 (validRegex!1111 (reg!2971 r!15766))))

(assert (=> d!284435 (= (lemmaExistCutMatchRandMatchRSpecEquivalentStar!117 (reg!2971 r!15766) s!10566) lt!345515)))

(declare-fun m!1166351 () Bool)

(assert (=> bs!240428 m!1166351))

(declare-fun m!1166353 () Bool)

(assert (=> bs!240428 m!1166353))

(declare-fun m!1166355 () Bool)

(assert (=> bs!240428 m!1166355))

(assert (=> bs!240428 m!1166279))

(assert (=> b!955802 d!284435))

(declare-fun d!284437 () Bool)

(assert (=> d!284437 (= (Exists!389 lambda!33068) (choose!5995 lambda!33068))))

(declare-fun bs!240429 () Bool)

(assert (= bs!240429 d!284437))

(declare-fun m!1166357 () Bool)

(assert (=> bs!240429 m!1166357))

(assert (=> b!955802 d!284437))

(declare-fun b!956099 () Bool)

(declare-fun e!618247 () Option!2227)

(assert (=> b!956099 (= e!618247 None!2226)))

(declare-fun b!956100 () Bool)

(declare-fun e!618250 () Bool)

(declare-fun lt!345529 () Option!2227)

(assert (=> b!956100 (= e!618250 (not (isDefined!1869 lt!345529)))))

(declare-fun b!956101 () Bool)

(declare-fun lt!345528 () Unit!14927)

(declare-fun lt!345527 () Unit!14927)

(assert (=> b!956101 (= lt!345528 lt!345527)))

(assert (=> b!956101 (= (++!2645 (++!2645 Nil!9856 (Cons!9856 (h!15257 s!10566) Nil!9856)) (t!100918 s!10566)) s!10566)))

(declare-fun lemmaMoveElementToOtherListKeepsConcatEq!254 (List!9872 C!5854 List!9872 List!9872) Unit!14927)

(assert (=> b!956101 (= lt!345527 (lemmaMoveElementToOtherListKeepsConcatEq!254 Nil!9856 (h!15257 s!10566) (t!100918 s!10566) s!10566))))

(assert (=> b!956101 (= e!618247 (findConcatSeparation!333 (reg!2971 r!15766) lt!345457 (++!2645 Nil!9856 (Cons!9856 (h!15257 s!10566) Nil!9856)) (t!100918 s!10566) s!10566))))

(declare-fun b!956102 () Bool)

(declare-fun res!434557 () Bool)

(declare-fun e!618248 () Bool)

(assert (=> b!956102 (=> (not res!434557) (not e!618248))))

(assert (=> b!956102 (= res!434557 (matchR!1180 (reg!2971 r!15766) (_1!6411 (get!3337 lt!345529))))))

(declare-fun b!956103 () Bool)

(declare-fun e!618249 () Option!2227)

(assert (=> b!956103 (= e!618249 (Some!2226 (tuple2!11171 Nil!9856 s!10566)))))

(declare-fun b!956104 () Bool)

(declare-fun e!618246 () Bool)

(assert (=> b!956104 (= e!618246 (matchR!1180 lt!345457 s!10566))))

(declare-fun b!956105 () Bool)

(declare-fun res!434556 () Bool)

(assert (=> b!956105 (=> (not res!434556) (not e!618248))))

(assert (=> b!956105 (= res!434556 (matchR!1180 lt!345457 (_2!6411 (get!3337 lt!345529))))))

(declare-fun b!956106 () Bool)

(assert (=> b!956106 (= e!618249 e!618247)))

(declare-fun c!155667 () Bool)

(assert (=> b!956106 (= c!155667 (is-Nil!9856 s!10566))))

(declare-fun b!956107 () Bool)

(assert (=> b!956107 (= e!618248 (= (++!2645 (_1!6411 (get!3337 lt!345529)) (_2!6411 (get!3337 lt!345529))) s!10566))))

(declare-fun d!284439 () Bool)

(assert (=> d!284439 e!618250))

(declare-fun res!434560 () Bool)

(assert (=> d!284439 (=> res!434560 e!618250)))

(assert (=> d!284439 (= res!434560 e!618248)))

(declare-fun res!434559 () Bool)

(assert (=> d!284439 (=> (not res!434559) (not e!618248))))

(assert (=> d!284439 (= res!434559 (isDefined!1869 lt!345529))))

(assert (=> d!284439 (= lt!345529 e!618249)))

(declare-fun c!155666 () Bool)

(assert (=> d!284439 (= c!155666 e!618246)))

(declare-fun res!434558 () Bool)

(assert (=> d!284439 (=> (not res!434558) (not e!618246))))

(assert (=> d!284439 (= res!434558 (matchR!1180 (reg!2971 r!15766) Nil!9856))))

(assert (=> d!284439 (validRegex!1111 (reg!2971 r!15766))))

(assert (=> d!284439 (= (findConcatSeparation!333 (reg!2971 r!15766) lt!345457 Nil!9856 s!10566 s!10566) lt!345529)))

(assert (= (and d!284439 res!434558) b!956104))

(assert (= (and d!284439 c!155666) b!956103))

(assert (= (and d!284439 (not c!155666)) b!956106))

(assert (= (and b!956106 c!155667) b!956099))

(assert (= (and b!956106 (not c!155667)) b!956101))

(assert (= (and d!284439 res!434559) b!956102))

(assert (= (and b!956102 res!434557) b!956105))

(assert (= (and b!956105 res!434556) b!956107))

(assert (= (and d!284439 (not res!434560)) b!956100))

(declare-fun m!1166369 () Bool)

(assert (=> b!956101 m!1166369))

(assert (=> b!956101 m!1166369))

(declare-fun m!1166371 () Bool)

(assert (=> b!956101 m!1166371))

(declare-fun m!1166373 () Bool)

(assert (=> b!956101 m!1166373))

(assert (=> b!956101 m!1166369))

(declare-fun m!1166375 () Bool)

(assert (=> b!956101 m!1166375))

(declare-fun m!1166377 () Bool)

(assert (=> b!956107 m!1166377))

(declare-fun m!1166379 () Bool)

(assert (=> b!956107 m!1166379))

(declare-fun m!1166381 () Bool)

(assert (=> d!284439 m!1166381))

(declare-fun m!1166383 () Bool)

(assert (=> d!284439 m!1166383))

(assert (=> d!284439 m!1166279))

(assert (=> b!956105 m!1166377))

(declare-fun m!1166385 () Bool)

(assert (=> b!956105 m!1166385))

(assert (=> b!956100 m!1166381))

(assert (=> b!956102 m!1166377))

(declare-fun m!1166387 () Bool)

(assert (=> b!956102 m!1166387))

(declare-fun m!1166389 () Bool)

(assert (=> b!956104 m!1166389))

(assert (=> b!955802 d!284439))

(declare-fun bs!240431 () Bool)

(declare-fun d!284449 () Bool)

(assert (= bs!240431 (and d!284449 b!955802)))

(declare-fun lambda!33085 () Int)

(assert (=> bs!240431 (= lambda!33085 lambda!33067)))

(assert (=> bs!240431 (not (= lambda!33085 lambda!33068))))

(declare-fun bs!240432 () Bool)

(assert (= bs!240432 (and d!284449 d!284435)))

(assert (=> bs!240432 (= (= lt!345457 (Star!2642 (reg!2971 r!15766))) (= lambda!33085 lambda!33081))))

(assert (=> bs!240432 (not (= lambda!33085 lambda!33082))))

(assert (=> d!284449 true))

(assert (=> d!284449 true))

(assert (=> d!284449 true))

(assert (=> d!284449 (= (isDefined!1869 (findConcatSeparation!333 (reg!2971 r!15766) lt!345457 Nil!9856 s!10566 s!10566)) (Exists!389 lambda!33085))))

(declare-fun lt!345535 () Unit!14927)

(declare-fun choose!5997 (Regex!2642 Regex!2642 List!9872) Unit!14927)

(assert (=> d!284449 (= lt!345535 (choose!5997 (reg!2971 r!15766) lt!345457 s!10566))))

(assert (=> d!284449 (validRegex!1111 (reg!2971 r!15766))))

(assert (=> d!284449 (= (lemmaFindConcatSeparationEquivalentToExists!333 (reg!2971 r!15766) lt!345457 s!10566) lt!345535)))

(declare-fun bs!240433 () Bool)

(assert (= bs!240433 d!284449))

(assert (=> bs!240433 m!1166279))

(assert (=> bs!240433 m!1166207))

(declare-fun m!1166393 () Bool)

(assert (=> bs!240433 m!1166393))

(declare-fun m!1166395 () Bool)

(assert (=> bs!240433 m!1166395))

(assert (=> bs!240433 m!1166207))

(declare-fun m!1166397 () Bool)

(assert (=> bs!240433 m!1166397))

(assert (=> b!955802 d!284449))

(declare-fun d!284453 () Bool)

(declare-fun e!618267 () Bool)

(assert (=> d!284453 e!618267))

(declare-fun res!434570 () Bool)

(assert (=> d!284453 (=> (not res!434570) (not e!618267))))

(declare-fun lt!345540 () List!9872)

(declare-fun content!1402 (List!9872) (Set C!5854))

(assert (=> d!284453 (= res!434570 (= (content!1402 lt!345540) (set.union (content!1402 (_1!6411 lt!345454)) (content!1402 (_2!6411 lt!345454)))))))

(declare-fun e!618268 () List!9872)

(assert (=> d!284453 (= lt!345540 e!618268)))

(declare-fun c!155680 () Bool)

(assert (=> d!284453 (= c!155680 (is-Nil!9856 (_1!6411 lt!345454)))))

(assert (=> d!284453 (= (++!2645 (_1!6411 lt!345454) (_2!6411 lt!345454)) lt!345540)))

(declare-fun b!956140 () Bool)

(assert (=> b!956140 (= e!618268 (_2!6411 lt!345454))))

(declare-fun b!956141 () Bool)

(assert (=> b!956141 (= e!618268 (Cons!9856 (h!15257 (_1!6411 lt!345454)) (++!2645 (t!100918 (_1!6411 lt!345454)) (_2!6411 lt!345454))))))

(declare-fun b!956142 () Bool)

(declare-fun res!434569 () Bool)

(assert (=> b!956142 (=> (not res!434569) (not e!618267))))

(assert (=> b!956142 (= res!434569 (= (size!7914 lt!345540) (+ (size!7914 (_1!6411 lt!345454)) (size!7914 (_2!6411 lt!345454)))))))

(declare-fun b!956143 () Bool)

(assert (=> b!956143 (= e!618267 (or (not (= (_2!6411 lt!345454) Nil!9856)) (= lt!345540 (_1!6411 lt!345454))))))

(assert (= (and d!284453 c!155680) b!956140))

(assert (= (and d!284453 (not c!155680)) b!956141))

(assert (= (and d!284453 res!434570) b!956142))

(assert (= (and b!956142 res!434569) b!956143))

(declare-fun m!1166399 () Bool)

(assert (=> d!284453 m!1166399))

(declare-fun m!1166401 () Bool)

(assert (=> d!284453 m!1166401))

(declare-fun m!1166403 () Bool)

(assert (=> d!284453 m!1166403))

(declare-fun m!1166405 () Bool)

(assert (=> b!956141 m!1166405))

(declare-fun m!1166407 () Bool)

(assert (=> b!956142 m!1166407))

(assert (=> b!956142 m!1166231))

(assert (=> b!956142 m!1166219))

(assert (=> b!955806 d!284453))

(declare-fun d!284455 () Bool)

(declare-fun lt!345541 () Int)

(assert (=> d!284455 (>= lt!345541 0)))

(declare-fun e!618269 () Int)

(assert (=> d!284455 (= lt!345541 e!618269)))

(declare-fun c!155681 () Bool)

(assert (=> d!284455 (= c!155681 (is-Nil!9856 (_1!6411 lt!345454)))))

(assert (=> d!284455 (= (size!7914 (_1!6411 lt!345454)) lt!345541)))

(declare-fun b!956144 () Bool)

(assert (=> b!956144 (= e!618269 0)))

(declare-fun b!956145 () Bool)

(assert (=> b!956145 (= e!618269 (+ 1 (size!7914 (t!100918 (_1!6411 lt!345454)))))))

(assert (= (and d!284455 c!155681) b!956144))

(assert (= (and d!284455 (not c!155681)) b!956145))

(declare-fun m!1166409 () Bool)

(assert (=> b!956145 m!1166409))

(assert (=> b!955795 d!284455))

(declare-fun bs!240434 () Bool)

(declare-fun b!956214 () Bool)

(assert (= bs!240434 (and b!956214 d!284435)))

(declare-fun lambda!33090 () Int)

(assert (=> bs!240434 (= (= r!15766 (Star!2642 (reg!2971 r!15766))) (= lambda!33090 lambda!33082))))

(assert (=> bs!240434 (not (= lambda!33090 lambda!33081))))

(declare-fun bs!240435 () Bool)

(assert (= bs!240435 (and b!956214 b!955802)))

(assert (=> bs!240435 (= (= r!15766 lt!345457) (= lambda!33090 lambda!33068))))

(assert (=> bs!240435 (not (= lambda!33090 lambda!33067))))

(declare-fun bs!240436 () Bool)

(assert (= bs!240436 (and b!956214 d!284449)))

(assert (=> bs!240436 (not (= lambda!33090 lambda!33085))))

(assert (=> b!956214 true))

(assert (=> b!956214 true))

(declare-fun bs!240437 () Bool)

(declare-fun b!956211 () Bool)

(assert (= bs!240437 (and b!956211 d!284435)))

(declare-fun lambda!33091 () Int)

(assert (=> bs!240437 (not (= lambda!33091 lambda!33082))))

(assert (=> bs!240437 (not (= lambda!33091 lambda!33081))))

(declare-fun bs!240438 () Bool)

(assert (= bs!240438 (and b!956211 b!955802)))

(assert (=> bs!240438 (not (= lambda!33091 lambda!33068))))

(declare-fun bs!240439 () Bool)

(assert (= bs!240439 (and b!956211 b!956214)))

(assert (=> bs!240439 (not (= lambda!33091 lambda!33090))))

(assert (=> bs!240438 (not (= lambda!33091 lambda!33067))))

(declare-fun bs!240440 () Bool)

(assert (= bs!240440 (and b!956211 d!284449)))

(assert (=> bs!240440 (not (= lambda!33091 lambda!33085))))

(assert (=> b!956211 true))

(assert (=> b!956211 true))

(declare-fun b!956205 () Bool)

(declare-fun c!155698 () Bool)

(assert (=> b!956205 (= c!155698 (is-ElementMatch!2642 r!15766))))

(declare-fun e!618308 () Bool)

(declare-fun e!618306 () Bool)

(assert (=> b!956205 (= e!618308 e!618306)))

(declare-fun c!155701 () Bool)

(declare-fun bm!60101 () Bool)

(declare-fun call!60107 () Bool)

(assert (=> bm!60101 (= call!60107 (Exists!389 (ite c!155701 lambda!33090 lambda!33091)))))

(declare-fun b!956206 () Bool)

(declare-fun e!618305 () Bool)

(declare-fun call!60106 () Bool)

(assert (=> b!956206 (= e!618305 call!60106)))

(declare-fun b!956207 () Bool)

(assert (=> b!956207 (= e!618306 (= s!10566 (Cons!9856 (c!155603 r!15766) Nil!9856)))))

(declare-fun b!956208 () Bool)

(declare-fun e!618307 () Bool)

(assert (=> b!956208 (= e!618307 (matchRSpec!443 (regTwo!5797 r!15766) s!10566))))

(declare-fun bm!60102 () Bool)

(assert (=> bm!60102 (= call!60106 (isEmpty!6137 s!10566))))

(declare-fun b!956209 () Bool)

(assert (=> b!956209 (= e!618305 e!618308)))

(declare-fun res!434600 () Bool)

(assert (=> b!956209 (= res!434600 (not (is-EmptyLang!2642 r!15766)))))

(assert (=> b!956209 (=> (not res!434600) (not e!618308))))

(declare-fun b!956210 () Bool)

(declare-fun res!434599 () Bool)

(declare-fun e!618303 () Bool)

(assert (=> b!956210 (=> res!434599 e!618303)))

(assert (=> b!956210 (= res!434599 call!60106)))

(declare-fun e!618309 () Bool)

(assert (=> b!956210 (= e!618309 e!618303)))

(declare-fun b!956212 () Bool)

(declare-fun c!155700 () Bool)

(assert (=> b!956212 (= c!155700 (is-Union!2642 r!15766))))

(declare-fun e!618304 () Bool)

(assert (=> b!956212 (= e!618306 e!618304)))

(declare-fun b!956213 () Bool)

(assert (=> b!956213 (= e!618304 e!618307)))

(declare-fun res!434598 () Bool)

(assert (=> b!956213 (= res!434598 (matchRSpec!443 (regOne!5797 r!15766) s!10566))))

(assert (=> b!956213 (=> res!434598 e!618307)))

(assert (=> b!956214 (= e!618303 call!60107)))

(declare-fun b!956215 () Bool)

(assert (=> b!956215 (= e!618304 e!618309)))

(assert (=> b!956215 (= c!155701 (is-Star!2642 r!15766))))

(assert (=> b!956211 (= e!618309 call!60107)))

(declare-fun d!284457 () Bool)

(declare-fun c!155699 () Bool)

(assert (=> d!284457 (= c!155699 (is-EmptyExpr!2642 r!15766))))

(assert (=> d!284457 (= (matchRSpec!443 r!15766 s!10566) e!618305)))

(assert (= (and d!284457 c!155699) b!956206))

(assert (= (and d!284457 (not c!155699)) b!956209))

(assert (= (and b!956209 res!434600) b!956205))

(assert (= (and b!956205 c!155698) b!956207))

(assert (= (and b!956205 (not c!155698)) b!956212))

(assert (= (and b!956212 c!155700) b!956213))

(assert (= (and b!956212 (not c!155700)) b!956215))

(assert (= (and b!956213 (not res!434598)) b!956208))

(assert (= (and b!956215 c!155701) b!956210))

(assert (= (and b!956215 (not c!155701)) b!956211))

(assert (= (and b!956210 (not res!434599)) b!956214))

(assert (= (or b!956214 b!956211) bm!60101))

(assert (= (or b!956206 b!956210) bm!60102))

(declare-fun m!1166427 () Bool)

(assert (=> bm!60101 m!1166427))

(declare-fun m!1166429 () Bool)

(assert (=> b!956208 m!1166429))

(assert (=> bm!60102 m!1166205))

(declare-fun m!1166431 () Bool)

(assert (=> b!956213 m!1166431))

(assert (=> b!955800 d!284457))

(declare-fun b!956216 () Bool)

(declare-fun e!618311 () Bool)

(assert (=> b!956216 (= e!618311 (matchR!1180 (derivativeStep!600 r!15766 (head!1753 s!10566)) (tail!1315 s!10566)))))

(declare-fun d!284463 () Bool)

(declare-fun e!618314 () Bool)

(assert (=> d!284463 e!618314))

(declare-fun c!155703 () Bool)

(assert (=> d!284463 (= c!155703 (is-EmptyExpr!2642 r!15766))))

(declare-fun lt!345544 () Bool)

(assert (=> d!284463 (= lt!345544 e!618311)))

(declare-fun c!155702 () Bool)

(assert (=> d!284463 (= c!155702 (isEmpty!6137 s!10566))))

(assert (=> d!284463 (validRegex!1111 r!15766)))

(assert (=> d!284463 (= (matchR!1180 r!15766 s!10566) lt!345544)))

(declare-fun b!956217 () Bool)

(declare-fun res!434607 () Bool)

(declare-fun e!618310 () Bool)

(assert (=> b!956217 (=> res!434607 e!618310)))

(assert (=> b!956217 (= res!434607 (not (is-ElementMatch!2642 r!15766)))))

(declare-fun e!618313 () Bool)

(assert (=> b!956217 (= e!618313 e!618310)))

(declare-fun b!956218 () Bool)

(declare-fun e!618316 () Bool)

(assert (=> b!956218 (= e!618316 (= (head!1753 s!10566) (c!155603 r!15766)))))

(declare-fun b!956219 () Bool)

(declare-fun e!618315 () Bool)

(assert (=> b!956219 (= e!618315 (not (= (head!1753 s!10566) (c!155603 r!15766))))))

(declare-fun b!956220 () Bool)

(declare-fun call!60108 () Bool)

(assert (=> b!956220 (= e!618314 (= lt!345544 call!60108))))

(declare-fun b!956221 () Bool)

(assert (=> b!956221 (= e!618313 (not lt!345544))))

(declare-fun b!956222 () Bool)

(declare-fun e!618312 () Bool)

(assert (=> b!956222 (= e!618312 e!618315)))

(declare-fun res!434606 () Bool)

(assert (=> b!956222 (=> res!434606 e!618315)))

(assert (=> b!956222 (= res!434606 call!60108)))

(declare-fun b!956223 () Bool)

(assert (=> b!956223 (= e!618310 e!618312)))

(declare-fun res!434605 () Bool)

(assert (=> b!956223 (=> (not res!434605) (not e!618312))))

(assert (=> b!956223 (= res!434605 (not lt!345544))))

(declare-fun b!956224 () Bool)

(assert (=> b!956224 (= e!618314 e!618313)))

(declare-fun c!155704 () Bool)

(assert (=> b!956224 (= c!155704 (is-EmptyLang!2642 r!15766))))

(declare-fun b!956225 () Bool)

(assert (=> b!956225 (= e!618311 (nullable!791 r!15766))))

(declare-fun b!956226 () Bool)

(declare-fun res!434601 () Bool)

(assert (=> b!956226 (=> (not res!434601) (not e!618316))))

(assert (=> b!956226 (= res!434601 (isEmpty!6137 (tail!1315 s!10566)))))

(declare-fun b!956227 () Bool)

(declare-fun res!434602 () Bool)

(assert (=> b!956227 (=> (not res!434602) (not e!618316))))

(assert (=> b!956227 (= res!434602 (not call!60108))))

(declare-fun b!956228 () Bool)

(declare-fun res!434608 () Bool)

(assert (=> b!956228 (=> res!434608 e!618310)))

(assert (=> b!956228 (= res!434608 e!618316)))

(declare-fun res!434604 () Bool)

(assert (=> b!956228 (=> (not res!434604) (not e!618316))))

(assert (=> b!956228 (= res!434604 lt!345544)))

(declare-fun bm!60103 () Bool)

(assert (=> bm!60103 (= call!60108 (isEmpty!6137 s!10566))))

(declare-fun b!956229 () Bool)

(declare-fun res!434603 () Bool)

(assert (=> b!956229 (=> res!434603 e!618315)))

(assert (=> b!956229 (= res!434603 (not (isEmpty!6137 (tail!1315 s!10566))))))

(assert (= (and d!284463 c!155702) b!956225))

(assert (= (and d!284463 (not c!155702)) b!956216))

(assert (= (and d!284463 c!155703) b!956220))

(assert (= (and d!284463 (not c!155703)) b!956224))

(assert (= (and b!956224 c!155704) b!956221))

(assert (= (and b!956224 (not c!155704)) b!956217))

(assert (= (and b!956217 (not res!434607)) b!956228))

(assert (= (and b!956228 res!434604) b!956227))

(assert (= (and b!956227 res!434602) b!956226))

(assert (= (and b!956226 res!434601) b!956218))

(assert (= (and b!956228 (not res!434608)) b!956223))

(assert (= (and b!956223 res!434605) b!956222))

(assert (= (and b!956222 (not res!434606)) b!956229))

(assert (= (and b!956229 (not res!434603)) b!956219))

(assert (= (or b!956220 b!956222 b!956227) bm!60103))

(declare-fun m!1166433 () Bool)

(assert (=> b!956225 m!1166433))

(declare-fun m!1166435 () Bool)

(assert (=> b!956226 m!1166435))

(assert (=> b!956226 m!1166435))

(declare-fun m!1166437 () Bool)

(assert (=> b!956226 m!1166437))

(declare-fun m!1166439 () Bool)

(assert (=> b!956216 m!1166439))

(assert (=> b!956216 m!1166439))

(declare-fun m!1166441 () Bool)

(assert (=> b!956216 m!1166441))

(assert (=> b!956216 m!1166435))

(assert (=> b!956216 m!1166441))

(assert (=> b!956216 m!1166435))

(declare-fun m!1166443 () Bool)

(assert (=> b!956216 m!1166443))

(assert (=> b!956218 m!1166439))

(assert (=> d!284463 m!1166205))

(assert (=> d!284463 m!1166229))

(assert (=> bm!60103 m!1166205))

(assert (=> b!956229 m!1166435))

(assert (=> b!956229 m!1166435))

(assert (=> b!956229 m!1166437))

(assert (=> b!956219 m!1166439))

(assert (=> b!955800 d!284463))

(declare-fun d!284465 () Bool)

(assert (=> d!284465 (= (matchR!1180 r!15766 s!10566) (matchRSpec!443 r!15766 s!10566))))

(declare-fun lt!345547 () Unit!14927)

(declare-fun choose!5998 (Regex!2642 List!9872) Unit!14927)

(assert (=> d!284465 (= lt!345547 (choose!5998 r!15766 s!10566))))

(assert (=> d!284465 (validRegex!1111 r!15766)))

(assert (=> d!284465 (= (mainMatchTheorem!443 r!15766 s!10566) lt!345547)))

(declare-fun bs!240441 () Bool)

(assert (= bs!240441 d!284465))

(assert (=> bs!240441 m!1166215))

(assert (=> bs!240441 m!1166213))

(declare-fun m!1166445 () Bool)

(assert (=> bs!240441 m!1166445))

(assert (=> bs!240441 m!1166229))

(assert (=> b!955800 d!284465))

(declare-fun b!956230 () Bool)

(declare-fun e!618318 () Bool)

(assert (=> b!956230 (= e!618318 (matchR!1180 (derivativeStep!600 (reg!2971 r!15766) (head!1753 (_1!6411 lt!345454))) (tail!1315 (_1!6411 lt!345454))))))

(declare-fun d!284467 () Bool)

(declare-fun e!618321 () Bool)

(assert (=> d!284467 e!618321))

(declare-fun c!155706 () Bool)

(assert (=> d!284467 (= c!155706 (is-EmptyExpr!2642 (reg!2971 r!15766)))))

(declare-fun lt!345548 () Bool)

(assert (=> d!284467 (= lt!345548 e!618318)))

(declare-fun c!155705 () Bool)

(assert (=> d!284467 (= c!155705 (isEmpty!6137 (_1!6411 lt!345454)))))

(assert (=> d!284467 (validRegex!1111 (reg!2971 r!15766))))

(assert (=> d!284467 (= (matchR!1180 (reg!2971 r!15766) (_1!6411 lt!345454)) lt!345548)))

(declare-fun b!956231 () Bool)

(declare-fun res!434615 () Bool)

(declare-fun e!618317 () Bool)

(assert (=> b!956231 (=> res!434615 e!618317)))

(assert (=> b!956231 (= res!434615 (not (is-ElementMatch!2642 (reg!2971 r!15766))))))

(declare-fun e!618320 () Bool)

(assert (=> b!956231 (= e!618320 e!618317)))

(declare-fun b!956232 () Bool)

(declare-fun e!618323 () Bool)

(assert (=> b!956232 (= e!618323 (= (head!1753 (_1!6411 lt!345454)) (c!155603 (reg!2971 r!15766))))))

(declare-fun b!956233 () Bool)

(declare-fun e!618322 () Bool)

(assert (=> b!956233 (= e!618322 (not (= (head!1753 (_1!6411 lt!345454)) (c!155603 (reg!2971 r!15766)))))))

(declare-fun b!956234 () Bool)

(declare-fun call!60109 () Bool)

(assert (=> b!956234 (= e!618321 (= lt!345548 call!60109))))

(declare-fun b!956235 () Bool)

(assert (=> b!956235 (= e!618320 (not lt!345548))))

(declare-fun b!956236 () Bool)

(declare-fun e!618319 () Bool)

(assert (=> b!956236 (= e!618319 e!618322)))

(declare-fun res!434614 () Bool)

(assert (=> b!956236 (=> res!434614 e!618322)))

(assert (=> b!956236 (= res!434614 call!60109)))

(declare-fun b!956237 () Bool)

(assert (=> b!956237 (= e!618317 e!618319)))

(declare-fun res!434613 () Bool)

(assert (=> b!956237 (=> (not res!434613) (not e!618319))))

(assert (=> b!956237 (= res!434613 (not lt!345548))))

(declare-fun b!956238 () Bool)

(assert (=> b!956238 (= e!618321 e!618320)))

(declare-fun c!155707 () Bool)

(assert (=> b!956238 (= c!155707 (is-EmptyLang!2642 (reg!2971 r!15766)))))

(declare-fun b!956239 () Bool)

(assert (=> b!956239 (= e!618318 (nullable!791 (reg!2971 r!15766)))))

(declare-fun b!956240 () Bool)

(declare-fun res!434609 () Bool)

(assert (=> b!956240 (=> (not res!434609) (not e!618323))))

(assert (=> b!956240 (= res!434609 (isEmpty!6137 (tail!1315 (_1!6411 lt!345454))))))

(declare-fun b!956241 () Bool)

(declare-fun res!434610 () Bool)

(assert (=> b!956241 (=> (not res!434610) (not e!618323))))

(assert (=> b!956241 (= res!434610 (not call!60109))))

(declare-fun b!956242 () Bool)

(declare-fun res!434616 () Bool)

(assert (=> b!956242 (=> res!434616 e!618317)))

(assert (=> b!956242 (= res!434616 e!618323)))

(declare-fun res!434612 () Bool)

(assert (=> b!956242 (=> (not res!434612) (not e!618323))))

(assert (=> b!956242 (= res!434612 lt!345548)))

(declare-fun bm!60104 () Bool)

(assert (=> bm!60104 (= call!60109 (isEmpty!6137 (_1!6411 lt!345454)))))

(declare-fun b!956243 () Bool)

(declare-fun res!434611 () Bool)

(assert (=> b!956243 (=> res!434611 e!618322)))

(assert (=> b!956243 (= res!434611 (not (isEmpty!6137 (tail!1315 (_1!6411 lt!345454)))))))

(assert (= (and d!284467 c!155705) b!956239))

(assert (= (and d!284467 (not c!155705)) b!956230))

(assert (= (and d!284467 c!155706) b!956234))

(assert (= (and d!284467 (not c!155706)) b!956238))

(assert (= (and b!956238 c!155707) b!956235))

(assert (= (and b!956238 (not c!155707)) b!956231))

(assert (= (and b!956231 (not res!434615)) b!956242))

(assert (= (and b!956242 res!434612) b!956241))

(assert (= (and b!956241 res!434610) b!956240))

(assert (= (and b!956240 res!434609) b!956232))

(assert (= (and b!956242 (not res!434616)) b!956237))

(assert (= (and b!956237 res!434613) b!956236))

(assert (= (and b!956236 (not res!434614)) b!956243))

(assert (= (and b!956243 (not res!434611)) b!956233))

(assert (= (or b!956234 b!956236 b!956241) bm!60104))

(assert (=> b!956239 m!1166287))

(assert (=> b!956240 m!1166297))

(assert (=> b!956240 m!1166297))

(assert (=> b!956240 m!1166299))

(assert (=> b!956230 m!1166301))

(assert (=> b!956230 m!1166301))

(declare-fun m!1166447 () Bool)

(assert (=> b!956230 m!1166447))

(assert (=> b!956230 m!1166297))

(assert (=> b!956230 m!1166447))

(assert (=> b!956230 m!1166297))

(declare-fun m!1166449 () Bool)

(assert (=> b!956230 m!1166449))

(assert (=> b!956232 m!1166301))

(assert (=> d!284467 m!1166307))

(assert (=> d!284467 m!1166279))

(assert (=> bm!60104 m!1166307))

(assert (=> b!956243 m!1166297))

(assert (=> b!956243 m!1166297))

(assert (=> b!956243 m!1166299))

(assert (=> b!956233 m!1166301))

(assert (=> b!955794 d!284467))

(declare-fun d!284469 () Bool)

(assert (=> d!284469 (= (get!3337 lt!345460) (v!19643 lt!345460))))

(assert (=> b!955794 d!284469))

(declare-fun b!956264 () Bool)

(declare-fun e!618330 () Bool)

(declare-fun tp!294358 () Bool)

(assert (=> b!956264 (= e!618330 tp!294358)))

(declare-fun b!956262 () Bool)

(assert (=> b!956262 (= e!618330 tp_is_empty!4927)))

(declare-fun b!956263 () Bool)

(declare-fun tp!294359 () Bool)

(declare-fun tp!294355 () Bool)

(assert (=> b!956263 (= e!618330 (and tp!294359 tp!294355))))

(assert (=> b!955801 (= tp!294324 e!618330)))

(declare-fun b!956265 () Bool)

(declare-fun tp!294356 () Bool)

(declare-fun tp!294357 () Bool)

(assert (=> b!956265 (= e!618330 (and tp!294356 tp!294357))))

(assert (= (and b!955801 (is-ElementMatch!2642 (regOne!5796 r!15766))) b!956262))

(assert (= (and b!955801 (is-Concat!4475 (regOne!5796 r!15766))) b!956263))

(assert (= (and b!955801 (is-Star!2642 (regOne!5796 r!15766))) b!956264))

(assert (= (and b!955801 (is-Union!2642 (regOne!5796 r!15766))) b!956265))

(declare-fun b!956268 () Bool)

(declare-fun e!618331 () Bool)

(declare-fun tp!294363 () Bool)

(assert (=> b!956268 (= e!618331 tp!294363)))

(declare-fun b!956266 () Bool)

(assert (=> b!956266 (= e!618331 tp_is_empty!4927)))

(declare-fun b!956267 () Bool)

(declare-fun tp!294364 () Bool)

(declare-fun tp!294360 () Bool)

(assert (=> b!956267 (= e!618331 (and tp!294364 tp!294360))))

(assert (=> b!955801 (= tp!294322 e!618331)))

(declare-fun b!956269 () Bool)

(declare-fun tp!294361 () Bool)

(declare-fun tp!294362 () Bool)

(assert (=> b!956269 (= e!618331 (and tp!294361 tp!294362))))

(assert (= (and b!955801 (is-ElementMatch!2642 (regTwo!5796 r!15766))) b!956266))

(assert (= (and b!955801 (is-Concat!4475 (regTwo!5796 r!15766))) b!956267))

(assert (= (and b!955801 (is-Star!2642 (regTwo!5796 r!15766))) b!956268))

(assert (= (and b!955801 (is-Union!2642 (regTwo!5796 r!15766))) b!956269))

(declare-fun b!956272 () Bool)

(declare-fun e!618332 () Bool)

(declare-fun tp!294368 () Bool)

(assert (=> b!956272 (= e!618332 tp!294368)))

(declare-fun b!956270 () Bool)

(assert (=> b!956270 (= e!618332 tp_is_empty!4927)))

(declare-fun b!956271 () Bool)

(declare-fun tp!294369 () Bool)

(declare-fun tp!294365 () Bool)

(assert (=> b!956271 (= e!618332 (and tp!294369 tp!294365))))

(assert (=> b!955805 (= tp!294326 e!618332)))

(declare-fun b!956273 () Bool)

(declare-fun tp!294366 () Bool)

(declare-fun tp!294367 () Bool)

(assert (=> b!956273 (= e!618332 (and tp!294366 tp!294367))))

(assert (= (and b!955805 (is-ElementMatch!2642 (regOne!5797 r!15766))) b!956270))

(assert (= (and b!955805 (is-Concat!4475 (regOne!5797 r!15766))) b!956271))

(assert (= (and b!955805 (is-Star!2642 (regOne!5797 r!15766))) b!956272))

(assert (= (and b!955805 (is-Union!2642 (regOne!5797 r!15766))) b!956273))

(declare-fun b!956276 () Bool)

(declare-fun e!618333 () Bool)

(declare-fun tp!294373 () Bool)

(assert (=> b!956276 (= e!618333 tp!294373)))

(declare-fun b!956274 () Bool)

(assert (=> b!956274 (= e!618333 tp_is_empty!4927)))

(declare-fun b!956275 () Bool)

(declare-fun tp!294374 () Bool)

(declare-fun tp!294370 () Bool)

(assert (=> b!956275 (= e!618333 (and tp!294374 tp!294370))))

(assert (=> b!955805 (= tp!294321 e!618333)))

(declare-fun b!956277 () Bool)

(declare-fun tp!294371 () Bool)

(declare-fun tp!294372 () Bool)

(assert (=> b!956277 (= e!618333 (and tp!294371 tp!294372))))

(assert (= (and b!955805 (is-ElementMatch!2642 (regTwo!5797 r!15766))) b!956274))

(assert (= (and b!955805 (is-Concat!4475 (regTwo!5797 r!15766))) b!956275))

(assert (= (and b!955805 (is-Star!2642 (regTwo!5797 r!15766))) b!956276))

(assert (= (and b!955805 (is-Union!2642 (regTwo!5797 r!15766))) b!956277))

(declare-fun b!956282 () Bool)

(declare-fun e!618336 () Bool)

(declare-fun tp!294377 () Bool)

(assert (=> b!956282 (= e!618336 (and tp_is_empty!4927 tp!294377))))

(assert (=> b!955799 (= tp!294325 e!618336)))

(assert (= (and b!955799 (is-Cons!9856 (t!100918 s!10566))) b!956282))

(declare-fun b!956285 () Bool)

(declare-fun e!618337 () Bool)

(declare-fun tp!294381 () Bool)

(assert (=> b!956285 (= e!618337 tp!294381)))

(declare-fun b!956283 () Bool)

(assert (=> b!956283 (= e!618337 tp_is_empty!4927)))

(declare-fun b!956284 () Bool)

(declare-fun tp!294382 () Bool)

(declare-fun tp!294378 () Bool)

(assert (=> b!956284 (= e!618337 (and tp!294382 tp!294378))))

(assert (=> b!955804 (= tp!294323 e!618337)))

(declare-fun b!956286 () Bool)

(declare-fun tp!294379 () Bool)

(declare-fun tp!294380 () Bool)

(assert (=> b!956286 (= e!618337 (and tp!294379 tp!294380))))

(assert (= (and b!955804 (is-ElementMatch!2642 (reg!2971 r!15766))) b!956283))

(assert (= (and b!955804 (is-Concat!4475 (reg!2971 r!15766))) b!956284))

(assert (= (and b!955804 (is-Star!2642 (reg!2971 r!15766))) b!956285))

(assert (= (and b!955804 (is-Union!2642 (reg!2971 r!15766))) b!956286))

(push 1)

(assert (not bm!60060))

(assert (not bm!60069))

(assert (not b!956230))

(assert (not b!956286))

(assert (not b!956218))

(assert (not b!955873))

(assert (not b!956272))

(assert (not b!955981))

(assert (not b!956276))

(assert (not bm!60104))

(assert (not b!955992))

(assert (not bm!60061))

(assert (not b!956145))

(assert (not b!956208))

(assert tp_is_empty!4927)

(assert (not bm!60071))

(assert (not b!956141))

(assert (not b!955989))

(assert (not d!284435))

(assert (not b!956101))

(assert (not d!284437))

(assert (not b!956142))

(assert (not b!956264))

(assert (not b!956265))

(assert (not b!955968))

(assert (not b!956216))

(assert (not b!956275))

(assert (not b!955967))

(assert (not b!956263))

(assert (not b!956100))

(assert (not b!956213))

(assert (not b!956282))

(assert (not b!956107))

(assert (not b!956273))

(assert (not b!955901))

(assert (not d!284463))

(assert (not d!284449))

(assert (not b!956240))

(assert (not b!955965))

(assert (not b!956102))

(assert (not b!956239))

(assert (not b!956105))

(assert (not b!956229))

(assert (not bm!60053))

(assert (not b!956269))

(assert (not b!956225))

(assert (not b!956277))

(assert (not d!284433))

(assert (not b!955988))

(assert (not b!955975))

(assert (not b!955978))

(assert (not b!956267))

(assert (not d!284453))

(assert (not b!956233))

(assert (not b!955982))

(assert (not d!284467))

(assert (not d!284419))

(assert (not b!956271))

(assert (not bm!60102))

(assert (not bm!60101))

(assert (not b!956219))

(assert (not b!956032))

(assert (not b!956104))

(assert (not d!284465))

(assert (not d!284421))

(assert (not bm!60055))

(assert (not b!956226))

(assert (not b!956243))

(assert (not d!284429))

(assert (not d!284439))

(assert (not d!284409))

(assert (not b!955974))

(assert (not d!284417))

(assert (not b!956284))

(assert (not b!955875))

(assert (not b!955979))

(assert (not b!956232))

(assert (not b!956285))

(assert (not bm!60103))

(assert (not b!956268))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

