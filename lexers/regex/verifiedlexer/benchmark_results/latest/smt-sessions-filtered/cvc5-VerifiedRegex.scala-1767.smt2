; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!88276 () Bool)

(assert start!88276)

(declare-fun b!1009513 () Bool)

(assert (=> b!1009513 true))

(assert (=> b!1009513 true))

(assert (=> b!1009513 true))

(declare-fun lambda!35798 () Int)

(declare-fun lambda!35797 () Int)

(assert (=> b!1009513 (not (= lambda!35798 lambda!35797))))

(assert (=> b!1009513 true))

(assert (=> b!1009513 true))

(assert (=> b!1009513 true))

(declare-fun b!1009502 () Bool)

(declare-fun res!454749 () Bool)

(declare-fun e!646055 () Bool)

(assert (=> b!1009502 (=> res!454749 e!646055)))

(declare-fun lt!352867 () Bool)

(assert (=> b!1009502 (= res!454749 (not lt!352867))))

(declare-fun b!1009503 () Bool)

(declare-fun res!454753 () Bool)

(declare-fun e!646054 () Bool)

(assert (=> b!1009503 (=> res!454753 e!646054)))

(declare-datatypes ((C!6154 0))(
  ( (C!6155 (val!3325 Int)) )
))
(declare-datatypes ((Regex!2792 0))(
  ( (ElementMatch!2792 (c!166675 C!6154)) (Concat!4625 (regOne!6096 Regex!2792) (regTwo!6096 Regex!2792)) (EmptyExpr!2792) (Star!2792 (reg!3121 Regex!2792)) (EmptyLang!2792) (Union!2792 (regOne!6097 Regex!2792) (regTwo!6097 Regex!2792)) )
))
(declare-fun lt!352863 () Regex!2792)

(declare-datatypes ((List!10022 0))(
  ( (Nil!10006) (Cons!10006 (h!15407 C!6154) (t!101068 List!10022)) )
))
(declare-datatypes ((tuple2!11378 0))(
  ( (tuple2!11379 (_1!6515 List!10022) (_2!6515 List!10022)) )
))
(declare-fun lt!352870 () tuple2!11378)

(declare-fun matchR!1328 (Regex!2792 List!10022) Bool)

(assert (=> b!1009503 (= res!454753 (not (matchR!1328 lt!352863 (_2!6515 lt!352870))))))

(declare-fun b!1009504 () Bool)

(declare-fun res!454748 () Bool)

(declare-fun e!646053 () Bool)

(assert (=> b!1009504 (=> res!454748 e!646053)))

(declare-fun s!10566 () List!10022)

(declare-fun ++!2725 (List!10022 List!10022) List!10022)

(assert (=> b!1009504 (= res!454748 (not (= (++!2725 (_1!6515 lt!352870) (_2!6515 lt!352870)) s!10566)))))

(declare-fun b!1009505 () Bool)

(assert (=> b!1009505 (= e!646055 e!646054)))

(declare-fun res!454752 () Bool)

(assert (=> b!1009505 (=> res!454752 e!646054)))

(declare-fun r!15766 () Regex!2792)

(assert (=> b!1009505 (= res!454752 (not (matchR!1328 (reg!3121 r!15766) (_1!6515 lt!352870))))))

(declare-datatypes ((Option!2331 0))(
  ( (None!2330) (Some!2330 (v!19747 tuple2!11378)) )
))
(declare-fun lt!352868 () Option!2331)

(declare-fun get!3503 (Option!2331) tuple2!11378)

(assert (=> b!1009505 (= lt!352870 (get!3503 lt!352868))))

(declare-fun b!1009506 () Bool)

(declare-fun e!646048 () Bool)

(declare-fun nullable!904 (Regex!2792) Bool)

(assert (=> b!1009506 (= e!646048 (not (nullable!904 (reg!3121 r!15766))))))

(declare-fun matchRSpec!591 (Regex!2792 List!10022) Bool)

(assert (=> b!1009506 (matchRSpec!591 (reg!3121 r!15766) (_1!6515 lt!352870))))

(declare-datatypes ((Unit!15243 0))(
  ( (Unit!15244) )
))
(declare-fun lt!352865 () Unit!15243)

(declare-fun mainMatchTheorem!591 (Regex!2792 List!10022) Unit!15243)

(assert (=> b!1009506 (= lt!352865 (mainMatchTheorem!591 (reg!3121 r!15766) (_1!6515 lt!352870)))))

(declare-fun b!1009507 () Bool)

(declare-fun e!646049 () Bool)

(declare-fun e!646051 () Bool)

(assert (=> b!1009507 (= e!646049 (not e!646051))))

(declare-fun res!454751 () Bool)

(assert (=> b!1009507 (=> res!454751 e!646051)))

(declare-fun lt!352872 () Bool)

(assert (=> b!1009507 (= res!454751 (or (not lt!352872) (and (is-Concat!4625 r!15766) (is-EmptyExpr!2792 (regOne!6096 r!15766))) (and (is-Concat!4625 r!15766) (is-EmptyExpr!2792 (regTwo!6096 r!15766))) (is-Concat!4625 r!15766) (is-Union!2792 r!15766) (not (is-Star!2792 r!15766))))))

(assert (=> b!1009507 (= lt!352872 (matchRSpec!591 r!15766 s!10566))))

(assert (=> b!1009507 (= lt!352872 (matchR!1328 r!15766 s!10566))))

(declare-fun lt!352862 () Unit!15243)

(assert (=> b!1009507 (= lt!352862 (mainMatchTheorem!591 r!15766 s!10566))))

(declare-fun b!1009509 () Bool)

(declare-fun e!646050 () Bool)

(declare-fun tp!307378 () Bool)

(declare-fun tp!307380 () Bool)

(assert (=> b!1009509 (= e!646050 (and tp!307378 tp!307380))))

(declare-fun b!1009510 () Bool)

(assert (=> b!1009510 (= e!646053 e!646048)))

(declare-fun res!454756 () Bool)

(assert (=> b!1009510 (=> res!454756 e!646048)))

(declare-fun lt!352861 () Int)

(declare-fun lt!352871 () Int)

(declare-fun lt!352860 () Int)

(assert (=> b!1009510 (= res!454756 (or (not (= (+ lt!352871 lt!352860) lt!352861)) (not (= lt!352871 0))))))

(declare-fun size!7968 (List!10022) Int)

(assert (=> b!1009510 (= lt!352871 (size!7968 (_1!6515 lt!352870)))))

(declare-fun b!1009511 () Bool)

(declare-fun tp!307381 () Bool)

(assert (=> b!1009511 (= e!646050 tp!307381)))

(declare-fun b!1009512 () Bool)

(declare-fun e!646052 () Bool)

(declare-fun tp_is_empty!5227 () Bool)

(declare-fun tp!307377 () Bool)

(assert (=> b!1009512 (= e!646052 (and tp_is_empty!5227 tp!307377))))

(assert (=> b!1009513 (= e!646051 e!646055)))

(declare-fun res!454754 () Bool)

(assert (=> b!1009513 (=> res!454754 e!646055)))

(declare-fun isEmpty!6350 (List!10022) Bool)

(assert (=> b!1009513 (= res!454754 (isEmpty!6350 s!10566))))

(declare-fun Exists!525 (Int) Bool)

(assert (=> b!1009513 (= (Exists!525 lambda!35797) (Exists!525 lambda!35798))))

(declare-fun lt!352869 () Unit!15243)

(declare-fun lemmaExistCutMatchRandMatchRSpecEquivalentStar!163 (Regex!2792 List!10022) Unit!15243)

(assert (=> b!1009513 (= lt!352869 (lemmaExistCutMatchRandMatchRSpecEquivalentStar!163 (reg!3121 r!15766) s!10566))))

(assert (=> b!1009513 (= lt!352867 (Exists!525 lambda!35797))))

(declare-fun isDefined!1973 (Option!2331) Bool)

(assert (=> b!1009513 (= lt!352867 (isDefined!1973 lt!352868))))

(declare-fun findConcatSeparation!437 (Regex!2792 Regex!2792 List!10022 List!10022 List!10022) Option!2331)

(assert (=> b!1009513 (= lt!352868 (findConcatSeparation!437 (reg!3121 r!15766) lt!352863 Nil!10006 s!10566 s!10566))))

(declare-fun lt!352864 () Unit!15243)

(declare-fun lemmaFindConcatSeparationEquivalentToExists!437 (Regex!2792 Regex!2792 List!10022) Unit!15243)

(assert (=> b!1009513 (= lt!352864 (lemmaFindConcatSeparationEquivalentToExists!437 (reg!3121 r!15766) lt!352863 s!10566))))

(assert (=> b!1009513 (= lt!352863 (Star!2792 (reg!3121 r!15766)))))

(declare-fun b!1009514 () Bool)

(assert (=> b!1009514 (= e!646050 tp_is_empty!5227)))

(declare-fun res!454750 () Bool)

(assert (=> start!88276 (=> (not res!454750) (not e!646049))))

(declare-fun validRegex!1261 (Regex!2792) Bool)

(assert (=> start!88276 (= res!454750 (validRegex!1261 r!15766))))

(assert (=> start!88276 e!646049))

(assert (=> start!88276 e!646050))

(assert (=> start!88276 e!646052))

(declare-fun b!1009508 () Bool)

(assert (=> b!1009508 (= e!646054 e!646053)))

(declare-fun res!454747 () Bool)

(assert (=> b!1009508 (=> res!454747 e!646053)))

(assert (=> b!1009508 (= res!454747 (not (= lt!352860 lt!352861)))))

(assert (=> b!1009508 (= lt!352861 (size!7968 s!10566))))

(assert (=> b!1009508 (= lt!352860 (size!7968 (_2!6515 lt!352870)))))

(declare-fun removeUselessConcat!373 (Regex!2792) Regex!2792)

(assert (=> b!1009508 (matchR!1328 (removeUselessConcat!373 (reg!3121 r!15766)) (_1!6515 lt!352870))))

(declare-fun lt!352866 () Unit!15243)

(declare-fun lemmaRemoveUselessConcatSound!217 (Regex!2792 List!10022) Unit!15243)

(assert (=> b!1009508 (= lt!352866 (lemmaRemoveUselessConcatSound!217 (reg!3121 r!15766) (_1!6515 lt!352870)))))

(declare-fun b!1009515 () Bool)

(declare-fun tp!307379 () Bool)

(declare-fun tp!307382 () Bool)

(assert (=> b!1009515 (= e!646050 (and tp!307379 tp!307382))))

(declare-fun b!1009516 () Bool)

(declare-fun res!454755 () Bool)

(assert (=> b!1009516 (=> res!454755 e!646048)))

(assert (=> b!1009516 (= res!454755 (not (isEmpty!6350 (_1!6515 lt!352870))))))

(assert (= (and start!88276 res!454750) b!1009507))

(assert (= (and b!1009507 (not res!454751)) b!1009513))

(assert (= (and b!1009513 (not res!454754)) b!1009502))

(assert (= (and b!1009502 (not res!454749)) b!1009505))

(assert (= (and b!1009505 (not res!454752)) b!1009503))

(assert (= (and b!1009503 (not res!454753)) b!1009508))

(assert (= (and b!1009508 (not res!454747)) b!1009504))

(assert (= (and b!1009504 (not res!454748)) b!1009510))

(assert (= (and b!1009510 (not res!454756)) b!1009516))

(assert (= (and b!1009516 (not res!454755)) b!1009506))

(assert (= (and start!88276 (is-ElementMatch!2792 r!15766)) b!1009514))

(assert (= (and start!88276 (is-Concat!4625 r!15766)) b!1009515))

(assert (= (and start!88276 (is-Star!2792 r!15766)) b!1009511))

(assert (= (and start!88276 (is-Union!2792 r!15766)) b!1009509))

(assert (= (and start!88276 (is-Cons!10006 s!10566)) b!1009512))

(declare-fun m!1194077 () Bool)

(assert (=> b!1009505 m!1194077))

(declare-fun m!1194079 () Bool)

(assert (=> b!1009505 m!1194079))

(declare-fun m!1194081 () Bool)

(assert (=> b!1009507 m!1194081))

(declare-fun m!1194083 () Bool)

(assert (=> b!1009507 m!1194083))

(declare-fun m!1194085 () Bool)

(assert (=> b!1009507 m!1194085))

(declare-fun m!1194087 () Bool)

(assert (=> b!1009510 m!1194087))

(declare-fun m!1194089 () Bool)

(assert (=> b!1009513 m!1194089))

(declare-fun m!1194091 () Bool)

(assert (=> b!1009513 m!1194091))

(assert (=> b!1009513 m!1194091))

(declare-fun m!1194093 () Bool)

(assert (=> b!1009513 m!1194093))

(declare-fun m!1194095 () Bool)

(assert (=> b!1009513 m!1194095))

(declare-fun m!1194097 () Bool)

(assert (=> b!1009513 m!1194097))

(declare-fun m!1194099 () Bool)

(assert (=> b!1009513 m!1194099))

(declare-fun m!1194101 () Bool)

(assert (=> b!1009513 m!1194101))

(declare-fun m!1194103 () Bool)

(assert (=> b!1009508 m!1194103))

(assert (=> b!1009508 m!1194103))

(declare-fun m!1194105 () Bool)

(assert (=> b!1009508 m!1194105))

(declare-fun m!1194107 () Bool)

(assert (=> b!1009508 m!1194107))

(declare-fun m!1194109 () Bool)

(assert (=> b!1009508 m!1194109))

(declare-fun m!1194111 () Bool)

(assert (=> b!1009508 m!1194111))

(declare-fun m!1194113 () Bool)

(assert (=> b!1009516 m!1194113))

(declare-fun m!1194115 () Bool)

(assert (=> b!1009504 m!1194115))

(declare-fun m!1194117 () Bool)

(assert (=> start!88276 m!1194117))

(declare-fun m!1194119 () Bool)

(assert (=> b!1009503 m!1194119))

(declare-fun m!1194121 () Bool)

(assert (=> b!1009506 m!1194121))

(declare-fun m!1194123 () Bool)

(assert (=> b!1009506 m!1194123))

(declare-fun m!1194125 () Bool)

(assert (=> b!1009506 m!1194125))

(push 1)

(assert (not b!1009511))

(assert (not b!1009508))

(assert (not b!1009509))

(assert (not b!1009513))

(assert tp_is_empty!5227)

(assert (not b!1009507))

(assert (not start!88276))

(assert (not b!1009504))

(assert (not b!1009510))

(assert (not b!1009503))

(assert (not b!1009505))

(assert (not b!1009516))

(assert (not b!1009506))

(assert (not b!1009512))

(assert (not b!1009515))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!292612 () Bool)

(declare-fun lt!352914 () Int)

(assert (=> d!292612 (>= lt!352914 0)))

(declare-fun e!646088 () Int)

(assert (=> d!292612 (= lt!352914 e!646088)))

(declare-fun c!166679 () Bool)

(assert (=> d!292612 (= c!166679 (is-Nil!10006 (_1!6515 lt!352870)))))

(assert (=> d!292612 (= (size!7968 (_1!6515 lt!352870)) lt!352914)))

(declare-fun b!1009588 () Bool)

(assert (=> b!1009588 (= e!646088 0)))

(declare-fun b!1009589 () Bool)

(assert (=> b!1009589 (= e!646088 (+ 1 (size!7968 (t!101068 (_1!6515 lt!352870)))))))

(assert (= (and d!292612 c!166679) b!1009588))

(assert (= (and d!292612 (not c!166679)) b!1009589))

(declare-fun m!1194177 () Bool)

(assert (=> b!1009589 m!1194177))

(assert (=> b!1009510 d!292612))

(declare-fun b!1009618 () Bool)

(declare-fun e!646108 () Bool)

(declare-fun derivativeStep!708 (Regex!2792 C!6154) Regex!2792)

(declare-fun head!1862 (List!10022) C!6154)

(declare-fun tail!1424 (List!10022) List!10022)

(assert (=> b!1009618 (= e!646108 (matchR!1328 (derivativeStep!708 (reg!3121 r!15766) (head!1862 (_1!6515 lt!352870))) (tail!1424 (_1!6515 lt!352870))))))

(declare-fun b!1009619 () Bool)

(assert (=> b!1009619 (= e!646108 (nullable!904 (reg!3121 r!15766)))))

(declare-fun b!1009620 () Bool)

(declare-fun res!454821 () Bool)

(declare-fun e!646106 () Bool)

(assert (=> b!1009620 (=> (not res!454821) (not e!646106))))

(assert (=> b!1009620 (= res!454821 (isEmpty!6350 (tail!1424 (_1!6515 lt!352870))))))

(declare-fun b!1009621 () Bool)

(declare-fun e!646104 () Bool)

(declare-fun lt!352917 () Bool)

(assert (=> b!1009621 (= e!646104 (not lt!352917))))

(declare-fun b!1009622 () Bool)

(declare-fun e!646109 () Bool)

(declare-fun call!67984 () Bool)

(assert (=> b!1009622 (= e!646109 (= lt!352917 call!67984))))

(declare-fun b!1009623 () Bool)

(declare-fun e!646107 () Bool)

(declare-fun e!646105 () Bool)

(assert (=> b!1009623 (= e!646107 e!646105)))

(declare-fun res!454822 () Bool)

(assert (=> b!1009623 (=> res!454822 e!646105)))

(assert (=> b!1009623 (= res!454822 call!67984)))

(declare-fun b!1009624 () Bool)

(declare-fun res!454823 () Bool)

(assert (=> b!1009624 (=> res!454823 e!646105)))

(assert (=> b!1009624 (= res!454823 (not (isEmpty!6350 (tail!1424 (_1!6515 lt!352870)))))))

(declare-fun b!1009625 () Bool)

(assert (=> b!1009625 (= e!646106 (= (head!1862 (_1!6515 lt!352870)) (c!166675 (reg!3121 r!15766))))))

(declare-fun bm!67979 () Bool)

(assert (=> bm!67979 (= call!67984 (isEmpty!6350 (_1!6515 lt!352870)))))

(declare-fun b!1009626 () Bool)

(assert (=> b!1009626 (= e!646105 (not (= (head!1862 (_1!6515 lt!352870)) (c!166675 (reg!3121 r!15766)))))))

(declare-fun b!1009627 () Bool)

(declare-fun res!454817 () Bool)

(declare-fun e!646103 () Bool)

(assert (=> b!1009627 (=> res!454817 e!646103)))

(assert (=> b!1009627 (= res!454817 e!646106)))

(declare-fun res!454820 () Bool)

(assert (=> b!1009627 (=> (not res!454820) (not e!646106))))

(assert (=> b!1009627 (= res!454820 lt!352917)))

(declare-fun b!1009628 () Bool)

(assert (=> b!1009628 (= e!646103 e!646107)))

(declare-fun res!454818 () Bool)

(assert (=> b!1009628 (=> (not res!454818) (not e!646107))))

(assert (=> b!1009628 (= res!454818 (not lt!352917))))

(declare-fun b!1009629 () Bool)

(assert (=> b!1009629 (= e!646109 e!646104)))

(declare-fun c!166686 () Bool)

(assert (=> b!1009629 (= c!166686 (is-EmptyLang!2792 (reg!3121 r!15766)))))

(declare-fun d!292614 () Bool)

(assert (=> d!292614 e!646109))

(declare-fun c!166688 () Bool)

(assert (=> d!292614 (= c!166688 (is-EmptyExpr!2792 (reg!3121 r!15766)))))

(assert (=> d!292614 (= lt!352917 e!646108)))

(declare-fun c!166687 () Bool)

(assert (=> d!292614 (= c!166687 (isEmpty!6350 (_1!6515 lt!352870)))))

(assert (=> d!292614 (validRegex!1261 (reg!3121 r!15766))))

(assert (=> d!292614 (= (matchR!1328 (reg!3121 r!15766) (_1!6515 lt!352870)) lt!352917)))

(declare-fun b!1009630 () Bool)

(declare-fun res!454819 () Bool)

(assert (=> b!1009630 (=> (not res!454819) (not e!646106))))

(assert (=> b!1009630 (= res!454819 (not call!67984))))

(declare-fun b!1009631 () Bool)

(declare-fun res!454824 () Bool)

(assert (=> b!1009631 (=> res!454824 e!646103)))

(assert (=> b!1009631 (= res!454824 (not (is-ElementMatch!2792 (reg!3121 r!15766))))))

(assert (=> b!1009631 (= e!646104 e!646103)))

(assert (= (and d!292614 c!166687) b!1009619))

(assert (= (and d!292614 (not c!166687)) b!1009618))

(assert (= (and d!292614 c!166688) b!1009622))

(assert (= (and d!292614 (not c!166688)) b!1009629))

(assert (= (and b!1009629 c!166686) b!1009621))

(assert (= (and b!1009629 (not c!166686)) b!1009631))

(assert (= (and b!1009631 (not res!454824)) b!1009627))

(assert (= (and b!1009627 res!454820) b!1009630))

(assert (= (and b!1009630 res!454819) b!1009620))

(assert (= (and b!1009620 res!454821) b!1009625))

(assert (= (and b!1009627 (not res!454817)) b!1009628))

(assert (= (and b!1009628 res!454818) b!1009623))

(assert (= (and b!1009623 (not res!454822)) b!1009624))

(assert (= (and b!1009624 (not res!454823)) b!1009626))

(assert (= (or b!1009622 b!1009623 b!1009630) bm!67979))

(assert (=> b!1009619 m!1194121))

(declare-fun m!1194179 () Bool)

(assert (=> b!1009626 m!1194179))

(assert (=> d!292614 m!1194113))

(declare-fun m!1194181 () Bool)

(assert (=> d!292614 m!1194181))

(assert (=> b!1009625 m!1194179))

(declare-fun m!1194183 () Bool)

(assert (=> b!1009620 m!1194183))

(assert (=> b!1009620 m!1194183))

(declare-fun m!1194185 () Bool)

(assert (=> b!1009620 m!1194185))

(assert (=> b!1009618 m!1194179))

(assert (=> b!1009618 m!1194179))

(declare-fun m!1194187 () Bool)

(assert (=> b!1009618 m!1194187))

(assert (=> b!1009618 m!1194183))

(assert (=> b!1009618 m!1194187))

(assert (=> b!1009618 m!1194183))

(declare-fun m!1194189 () Bool)

(assert (=> b!1009618 m!1194189))

(assert (=> bm!67979 m!1194113))

(assert (=> b!1009624 m!1194183))

(assert (=> b!1009624 m!1194183))

(assert (=> b!1009624 m!1194185))

(assert (=> b!1009505 d!292614))

(declare-fun d!292616 () Bool)

(assert (=> d!292616 (= (get!3503 lt!352868) (v!19747 lt!352868))))

(assert (=> b!1009505 d!292616))

(declare-fun d!292618 () Bool)

(assert (=> d!292618 (= (isEmpty!6350 (_1!6515 lt!352870)) (is-Nil!10006 (_1!6515 lt!352870)))))

(assert (=> b!1009516 d!292618))

(declare-fun d!292620 () Bool)

(declare-fun nullableFct!212 (Regex!2792) Bool)

(assert (=> d!292620 (= (nullable!904 (reg!3121 r!15766)) (nullableFct!212 (reg!3121 r!15766)))))

(declare-fun bs!245658 () Bool)

(assert (= bs!245658 d!292620))

(declare-fun m!1194191 () Bool)

(assert (=> bs!245658 m!1194191))

(assert (=> b!1009506 d!292620))

(declare-fun bs!245659 () Bool)

(declare-fun b!1009677 () Bool)

(assert (= bs!245659 (and b!1009677 b!1009513)))

(declare-fun lambda!35811 () Int)

(assert (=> bs!245659 (not (= lambda!35811 lambda!35797))))

(assert (=> bs!245659 (= (and (= (_1!6515 lt!352870) s!10566) (= (reg!3121 (reg!3121 r!15766)) (reg!3121 r!15766)) (= (reg!3121 r!15766) lt!352863)) (= lambda!35811 lambda!35798))))

(assert (=> b!1009677 true))

(assert (=> b!1009677 true))

(declare-fun bs!245660 () Bool)

(declare-fun b!1009675 () Bool)

(assert (= bs!245660 (and b!1009675 b!1009513)))

(declare-fun lambda!35812 () Int)

(assert (=> bs!245660 (not (= lambda!35812 lambda!35797))))

(assert (=> bs!245660 (not (= lambda!35812 lambda!35798))))

(declare-fun bs!245661 () Bool)

(assert (= bs!245661 (and b!1009675 b!1009677)))

(assert (=> bs!245661 (not (= lambda!35812 lambda!35811))))

(assert (=> b!1009675 true))

(assert (=> b!1009675 true))

(declare-fun bm!67984 () Bool)

(declare-fun call!67990 () Bool)

(assert (=> bm!67984 (= call!67990 (isEmpty!6350 (_1!6515 lt!352870)))))

(declare-fun b!1009672 () Bool)

(declare-fun c!166703 () Bool)

(assert (=> b!1009672 (= c!166703 (is-Union!2792 (reg!3121 r!15766)))))

(declare-fun e!646133 () Bool)

(declare-fun e!646139 () Bool)

(assert (=> b!1009672 (= e!646133 e!646139)))

(declare-fun b!1009673 () Bool)

(declare-fun e!646138 () Bool)

(assert (=> b!1009673 (= e!646138 call!67990)))

(declare-fun b!1009674 () Bool)

(declare-fun e!646134 () Bool)

(assert (=> b!1009674 (= e!646138 e!646134)))

(declare-fun res!454844 () Bool)

(assert (=> b!1009674 (= res!454844 (not (is-EmptyLang!2792 (reg!3121 r!15766))))))

(assert (=> b!1009674 (=> (not res!454844) (not e!646134))))

(declare-fun e!646136 () Bool)

(declare-fun call!67989 () Bool)

(assert (=> b!1009675 (= e!646136 call!67989)))

(declare-fun b!1009676 () Bool)

(declare-fun e!646137 () Bool)

(assert (=> b!1009676 (= e!646137 (matchRSpec!591 (regTwo!6097 (reg!3121 r!15766)) (_1!6515 lt!352870)))))

(declare-fun c!166702 () Bool)

(declare-fun bm!67985 () Bool)

(assert (=> bm!67985 (= call!67989 (Exists!525 (ite c!166702 lambda!35811 lambda!35812)))))

(declare-fun e!646135 () Bool)

(assert (=> b!1009677 (= e!646135 call!67989)))

(declare-fun d!292622 () Bool)

(declare-fun c!166700 () Bool)

(assert (=> d!292622 (= c!166700 (is-EmptyExpr!2792 (reg!3121 r!15766)))))

(assert (=> d!292622 (= (matchRSpec!591 (reg!3121 r!15766) (_1!6515 lt!352870)) e!646138)))

(declare-fun b!1009678 () Bool)

(assert (=> b!1009678 (= e!646133 (= (_1!6515 lt!352870) (Cons!10006 (c!166675 (reg!3121 r!15766)) Nil!10006)))))

(declare-fun b!1009679 () Bool)

(assert (=> b!1009679 (= e!646139 e!646137)))

(declare-fun res!454843 () Bool)

(assert (=> b!1009679 (= res!454843 (matchRSpec!591 (regOne!6097 (reg!3121 r!15766)) (_1!6515 lt!352870)))))

(assert (=> b!1009679 (=> res!454843 e!646137)))

(declare-fun b!1009680 () Bool)

(declare-fun res!454845 () Bool)

(assert (=> b!1009680 (=> res!454845 e!646135)))

(assert (=> b!1009680 (= res!454845 call!67990)))

(assert (=> b!1009680 (= e!646136 e!646135)))

(declare-fun b!1009683 () Bool)

(declare-fun c!166701 () Bool)

(assert (=> b!1009683 (= c!166701 (is-ElementMatch!2792 (reg!3121 r!15766)))))

(assert (=> b!1009683 (= e!646134 e!646133)))

(declare-fun b!1009684 () Bool)

(assert (=> b!1009684 (= e!646139 e!646136)))

(assert (=> b!1009684 (= c!166702 (is-Star!2792 (reg!3121 r!15766)))))

(assert (= (and d!292622 c!166700) b!1009673))

(assert (= (and d!292622 (not c!166700)) b!1009674))

(assert (= (and b!1009674 res!454844) b!1009683))

(assert (= (and b!1009683 c!166701) b!1009678))

(assert (= (and b!1009683 (not c!166701)) b!1009672))

(assert (= (and b!1009672 c!166703) b!1009679))

(assert (= (and b!1009672 (not c!166703)) b!1009684))

(assert (= (and b!1009679 (not res!454843)) b!1009676))

(assert (= (and b!1009684 c!166702) b!1009680))

(assert (= (and b!1009684 (not c!166702)) b!1009675))

(assert (= (and b!1009680 (not res!454845)) b!1009677))

(assert (= (or b!1009677 b!1009675) bm!67985))

(assert (= (or b!1009673 b!1009680) bm!67984))

(assert (=> bm!67984 m!1194113))

(declare-fun m!1194195 () Bool)

(assert (=> b!1009676 m!1194195))

(declare-fun m!1194197 () Bool)

(assert (=> bm!67985 m!1194197))

(declare-fun m!1194199 () Bool)

(assert (=> b!1009679 m!1194199))

(assert (=> b!1009506 d!292622))

(declare-fun d!292628 () Bool)

(assert (=> d!292628 (= (matchR!1328 (reg!3121 r!15766) (_1!6515 lt!352870)) (matchRSpec!591 (reg!3121 r!15766) (_1!6515 lt!352870)))))

(declare-fun lt!352923 () Unit!15243)

(declare-fun choose!6387 (Regex!2792 List!10022) Unit!15243)

(assert (=> d!292628 (= lt!352923 (choose!6387 (reg!3121 r!15766) (_1!6515 lt!352870)))))

(assert (=> d!292628 (validRegex!1261 (reg!3121 r!15766))))

(assert (=> d!292628 (= (mainMatchTheorem!591 (reg!3121 r!15766) (_1!6515 lt!352870)) lt!352923)))

(declare-fun bs!245662 () Bool)

(assert (= bs!245662 d!292628))

(assert (=> bs!245662 m!1194077))

(assert (=> bs!245662 m!1194123))

(declare-fun m!1194201 () Bool)

(assert (=> bs!245662 m!1194201))

(assert (=> bs!245662 m!1194181))

(assert (=> b!1009506 d!292628))

(declare-fun bs!245663 () Bool)

(declare-fun b!1009704 () Bool)

(assert (= bs!245663 (and b!1009704 b!1009513)))

(declare-fun lambda!35813 () Int)

(assert (=> bs!245663 (not (= lambda!35813 lambda!35797))))

(assert (=> bs!245663 (= (= r!15766 lt!352863) (= lambda!35813 lambda!35798))))

(declare-fun bs!245664 () Bool)

(assert (= bs!245664 (and b!1009704 b!1009677)))

(assert (=> bs!245664 (= (and (= s!10566 (_1!6515 lt!352870)) (= (reg!3121 r!15766) (reg!3121 (reg!3121 r!15766))) (= r!15766 (reg!3121 r!15766))) (= lambda!35813 lambda!35811))))

(declare-fun bs!245665 () Bool)

(assert (= bs!245665 (and b!1009704 b!1009675)))

(assert (=> bs!245665 (not (= lambda!35813 lambda!35812))))

(assert (=> b!1009704 true))

(assert (=> b!1009704 true))

(declare-fun bs!245666 () Bool)

(declare-fun b!1009702 () Bool)

(assert (= bs!245666 (and b!1009702 b!1009675)))

(declare-fun lambda!35814 () Int)

(assert (=> bs!245666 (= (and (= s!10566 (_1!6515 lt!352870)) (= (regOne!6096 r!15766) (regOne!6096 (reg!3121 r!15766))) (= (regTwo!6096 r!15766) (regTwo!6096 (reg!3121 r!15766)))) (= lambda!35814 lambda!35812))))

(declare-fun bs!245667 () Bool)

(assert (= bs!245667 (and b!1009702 b!1009513)))

(assert (=> bs!245667 (not (= lambda!35814 lambda!35798))))

(declare-fun bs!245668 () Bool)

(assert (= bs!245668 (and b!1009702 b!1009677)))

(assert (=> bs!245668 (not (= lambda!35814 lambda!35811))))

(declare-fun bs!245669 () Bool)

(assert (= bs!245669 (and b!1009702 b!1009704)))

(assert (=> bs!245669 (not (= lambda!35814 lambda!35813))))

(assert (=> bs!245667 (not (= lambda!35814 lambda!35797))))

(assert (=> b!1009702 true))

(assert (=> b!1009702 true))

(declare-fun bm!67992 () Bool)

(declare-fun call!67998 () Bool)

(assert (=> bm!67992 (= call!67998 (isEmpty!6350 s!10566))))

(declare-fun b!1009699 () Bool)

(declare-fun c!166711 () Bool)

(assert (=> b!1009699 (= c!166711 (is-Union!2792 r!15766))))

(declare-fun e!646152 () Bool)

(declare-fun e!646158 () Bool)

(assert (=> b!1009699 (= e!646152 e!646158)))

(declare-fun b!1009700 () Bool)

(declare-fun e!646157 () Bool)

(assert (=> b!1009700 (= e!646157 call!67998)))

(declare-fun b!1009701 () Bool)

(declare-fun e!646153 () Bool)

(assert (=> b!1009701 (= e!646157 e!646153)))

(declare-fun res!454855 () Bool)

(assert (=> b!1009701 (= res!454855 (not (is-EmptyLang!2792 r!15766)))))

(assert (=> b!1009701 (=> (not res!454855) (not e!646153))))

(declare-fun e!646155 () Bool)

(declare-fun call!67997 () Bool)

(assert (=> b!1009702 (= e!646155 call!67997)))

(declare-fun b!1009703 () Bool)

(declare-fun e!646156 () Bool)

(assert (=> b!1009703 (= e!646156 (matchRSpec!591 (regTwo!6097 r!15766) s!10566))))

(declare-fun c!166710 () Bool)

(declare-fun bm!67993 () Bool)

(assert (=> bm!67993 (= call!67997 (Exists!525 (ite c!166710 lambda!35813 lambda!35814)))))

(declare-fun e!646154 () Bool)

(assert (=> b!1009704 (= e!646154 call!67997)))

(declare-fun d!292630 () Bool)

(declare-fun c!166708 () Bool)

(assert (=> d!292630 (= c!166708 (is-EmptyExpr!2792 r!15766))))

(assert (=> d!292630 (= (matchRSpec!591 r!15766 s!10566) e!646157)))

(declare-fun b!1009705 () Bool)

(assert (=> b!1009705 (= e!646152 (= s!10566 (Cons!10006 (c!166675 r!15766) Nil!10006)))))

(declare-fun b!1009706 () Bool)

(assert (=> b!1009706 (= e!646158 e!646156)))

(declare-fun res!454854 () Bool)

(assert (=> b!1009706 (= res!454854 (matchRSpec!591 (regOne!6097 r!15766) s!10566))))

(assert (=> b!1009706 (=> res!454854 e!646156)))

(declare-fun b!1009707 () Bool)

(declare-fun res!454856 () Bool)

(assert (=> b!1009707 (=> res!454856 e!646154)))

(assert (=> b!1009707 (= res!454856 call!67998)))

(assert (=> b!1009707 (= e!646155 e!646154)))

(declare-fun b!1009708 () Bool)

(declare-fun c!166709 () Bool)

(assert (=> b!1009708 (= c!166709 (is-ElementMatch!2792 r!15766))))

(assert (=> b!1009708 (= e!646153 e!646152)))

(declare-fun b!1009709 () Bool)

(assert (=> b!1009709 (= e!646158 e!646155)))

(assert (=> b!1009709 (= c!166710 (is-Star!2792 r!15766))))

(assert (= (and d!292630 c!166708) b!1009700))

(assert (= (and d!292630 (not c!166708)) b!1009701))

(assert (= (and b!1009701 res!454855) b!1009708))

(assert (= (and b!1009708 c!166709) b!1009705))

(assert (= (and b!1009708 (not c!166709)) b!1009699))

(assert (= (and b!1009699 c!166711) b!1009706))

(assert (= (and b!1009699 (not c!166711)) b!1009709))

(assert (= (and b!1009706 (not res!454854)) b!1009703))

(assert (= (and b!1009709 c!166710) b!1009707))

(assert (= (and b!1009709 (not c!166710)) b!1009702))

(assert (= (and b!1009707 (not res!454856)) b!1009704))

(assert (= (or b!1009704 b!1009702) bm!67993))

(assert (= (or b!1009700 b!1009707) bm!67992))

(assert (=> bm!67992 m!1194093))

(declare-fun m!1194203 () Bool)

(assert (=> b!1009703 m!1194203))

(declare-fun m!1194205 () Bool)

(assert (=> bm!67993 m!1194205))

(declare-fun m!1194207 () Bool)

(assert (=> b!1009706 m!1194207))

(assert (=> b!1009507 d!292630))

(declare-fun b!1009710 () Bool)

(declare-fun e!646164 () Bool)

(assert (=> b!1009710 (= e!646164 (matchR!1328 (derivativeStep!708 r!15766 (head!1862 s!10566)) (tail!1424 s!10566)))))

(declare-fun b!1009711 () Bool)

(assert (=> b!1009711 (= e!646164 (nullable!904 r!15766))))

(declare-fun b!1009712 () Bool)

(declare-fun res!454861 () Bool)

(declare-fun e!646162 () Bool)

(assert (=> b!1009712 (=> (not res!454861) (not e!646162))))

(assert (=> b!1009712 (= res!454861 (isEmpty!6350 (tail!1424 s!10566)))))

(declare-fun b!1009713 () Bool)

(declare-fun e!646160 () Bool)

(declare-fun lt!352924 () Bool)

(assert (=> b!1009713 (= e!646160 (not lt!352924))))

(declare-fun b!1009714 () Bool)

(declare-fun e!646165 () Bool)

(declare-fun call!67999 () Bool)

(assert (=> b!1009714 (= e!646165 (= lt!352924 call!67999))))

(declare-fun b!1009715 () Bool)

(declare-fun e!646163 () Bool)

(declare-fun e!646161 () Bool)

(assert (=> b!1009715 (= e!646163 e!646161)))

(declare-fun res!454862 () Bool)

(assert (=> b!1009715 (=> res!454862 e!646161)))

(assert (=> b!1009715 (= res!454862 call!67999)))

(declare-fun b!1009716 () Bool)

(declare-fun res!454863 () Bool)

(assert (=> b!1009716 (=> res!454863 e!646161)))

(assert (=> b!1009716 (= res!454863 (not (isEmpty!6350 (tail!1424 s!10566))))))

(declare-fun b!1009717 () Bool)

(assert (=> b!1009717 (= e!646162 (= (head!1862 s!10566) (c!166675 r!15766)))))

(declare-fun bm!67994 () Bool)

(assert (=> bm!67994 (= call!67999 (isEmpty!6350 s!10566))))

(declare-fun b!1009718 () Bool)

(assert (=> b!1009718 (= e!646161 (not (= (head!1862 s!10566) (c!166675 r!15766))))))

(declare-fun b!1009719 () Bool)

(declare-fun res!454857 () Bool)

(declare-fun e!646159 () Bool)

(assert (=> b!1009719 (=> res!454857 e!646159)))

(assert (=> b!1009719 (= res!454857 e!646162)))

(declare-fun res!454860 () Bool)

(assert (=> b!1009719 (=> (not res!454860) (not e!646162))))

(assert (=> b!1009719 (= res!454860 lt!352924)))

(declare-fun b!1009720 () Bool)

(assert (=> b!1009720 (= e!646159 e!646163)))

(declare-fun res!454858 () Bool)

(assert (=> b!1009720 (=> (not res!454858) (not e!646163))))

(assert (=> b!1009720 (= res!454858 (not lt!352924))))

(declare-fun b!1009721 () Bool)

(assert (=> b!1009721 (= e!646165 e!646160)))

(declare-fun c!166712 () Bool)

(assert (=> b!1009721 (= c!166712 (is-EmptyLang!2792 r!15766))))

(declare-fun d!292632 () Bool)

(assert (=> d!292632 e!646165))

(declare-fun c!166714 () Bool)

(assert (=> d!292632 (= c!166714 (is-EmptyExpr!2792 r!15766))))

(assert (=> d!292632 (= lt!352924 e!646164)))

(declare-fun c!166713 () Bool)

(assert (=> d!292632 (= c!166713 (isEmpty!6350 s!10566))))

(assert (=> d!292632 (validRegex!1261 r!15766)))

(assert (=> d!292632 (= (matchR!1328 r!15766 s!10566) lt!352924)))

(declare-fun b!1009722 () Bool)

(declare-fun res!454859 () Bool)

(assert (=> b!1009722 (=> (not res!454859) (not e!646162))))

(assert (=> b!1009722 (= res!454859 (not call!67999))))

(declare-fun b!1009723 () Bool)

(declare-fun res!454864 () Bool)

(assert (=> b!1009723 (=> res!454864 e!646159)))

(assert (=> b!1009723 (= res!454864 (not (is-ElementMatch!2792 r!15766)))))

(assert (=> b!1009723 (= e!646160 e!646159)))

(assert (= (and d!292632 c!166713) b!1009711))

(assert (= (and d!292632 (not c!166713)) b!1009710))

(assert (= (and d!292632 c!166714) b!1009714))

(assert (= (and d!292632 (not c!166714)) b!1009721))

(assert (= (and b!1009721 c!166712) b!1009713))

(assert (= (and b!1009721 (not c!166712)) b!1009723))

(assert (= (and b!1009723 (not res!454864)) b!1009719))

(assert (= (and b!1009719 res!454860) b!1009722))

(assert (= (and b!1009722 res!454859) b!1009712))

(assert (= (and b!1009712 res!454861) b!1009717))

(assert (= (and b!1009719 (not res!454857)) b!1009720))

(assert (= (and b!1009720 res!454858) b!1009715))

(assert (= (and b!1009715 (not res!454862)) b!1009716))

(assert (= (and b!1009716 (not res!454863)) b!1009718))

(assert (= (or b!1009714 b!1009715 b!1009722) bm!67994))

(declare-fun m!1194209 () Bool)

(assert (=> b!1009711 m!1194209))

(declare-fun m!1194211 () Bool)

(assert (=> b!1009718 m!1194211))

(assert (=> d!292632 m!1194093))

(assert (=> d!292632 m!1194117))

(assert (=> b!1009717 m!1194211))

(declare-fun m!1194213 () Bool)

(assert (=> b!1009712 m!1194213))

(assert (=> b!1009712 m!1194213))

(declare-fun m!1194215 () Bool)

(assert (=> b!1009712 m!1194215))

(assert (=> b!1009710 m!1194211))

(assert (=> b!1009710 m!1194211))

(declare-fun m!1194217 () Bool)

(assert (=> b!1009710 m!1194217))

(assert (=> b!1009710 m!1194213))

(assert (=> b!1009710 m!1194217))

(assert (=> b!1009710 m!1194213))

(declare-fun m!1194219 () Bool)

(assert (=> b!1009710 m!1194219))

(assert (=> bm!67994 m!1194093))

(assert (=> b!1009716 m!1194213))

(assert (=> b!1009716 m!1194213))

(assert (=> b!1009716 m!1194215))

(assert (=> b!1009507 d!292632))

(declare-fun d!292634 () Bool)

(assert (=> d!292634 (= (matchR!1328 r!15766 s!10566) (matchRSpec!591 r!15766 s!10566))))

(declare-fun lt!352925 () Unit!15243)

(assert (=> d!292634 (= lt!352925 (choose!6387 r!15766 s!10566))))

(assert (=> d!292634 (validRegex!1261 r!15766)))

(assert (=> d!292634 (= (mainMatchTheorem!591 r!15766 s!10566) lt!352925)))

(declare-fun bs!245670 () Bool)

(assert (= bs!245670 d!292634))

(assert (=> bs!245670 m!1194083))

(assert (=> bs!245670 m!1194081))

(declare-fun m!1194221 () Bool)

(assert (=> bs!245670 m!1194221))

(assert (=> bs!245670 m!1194117))

(assert (=> b!1009507 d!292634))

(declare-fun bm!68004 () Bool)

(declare-fun call!68009 () Bool)

(declare-fun call!68010 () Bool)

(assert (=> bm!68004 (= call!68009 call!68010)))

(declare-fun b!1009751 () Bool)

(declare-fun e!646187 () Bool)

(declare-fun e!646191 () Bool)

(assert (=> b!1009751 (= e!646187 e!646191)))

(declare-fun c!166722 () Bool)

(assert (=> b!1009751 (= c!166722 (is-Star!2792 r!15766))))

(declare-fun b!1009752 () Bool)

(declare-fun e!646189 () Bool)

(declare-fun call!68011 () Bool)

(assert (=> b!1009752 (= e!646189 call!68011)))

(declare-fun b!1009753 () Bool)

(declare-fun res!454882 () Bool)

(declare-fun e!646192 () Bool)

(assert (=> b!1009753 (=> res!454882 e!646192)))

(assert (=> b!1009753 (= res!454882 (not (is-Concat!4625 r!15766)))))

(declare-fun e!646190 () Bool)

(assert (=> b!1009753 (= e!646190 e!646192)))

(declare-fun b!1009754 () Bool)

(declare-fun e!646188 () Bool)

(assert (=> b!1009754 (= e!646191 e!646188)))

(declare-fun res!454884 () Bool)

(assert (=> b!1009754 (= res!454884 (not (nullable!904 (reg!3121 r!15766))))))

(assert (=> b!1009754 (=> (not res!454884) (not e!646188))))

(declare-fun d!292636 () Bool)

(declare-fun res!454883 () Bool)

(assert (=> d!292636 (=> res!454883 e!646187)))

(assert (=> d!292636 (= res!454883 (is-ElementMatch!2792 r!15766))))

(assert (=> d!292636 (= (validRegex!1261 r!15766) e!646187)))

(declare-fun b!1009755 () Bool)

(declare-fun e!646193 () Bool)

(assert (=> b!1009755 (= e!646193 call!68011)))

(declare-fun b!1009756 () Bool)

(assert (=> b!1009756 (= e!646191 e!646190)))

(declare-fun c!166721 () Bool)

(assert (=> b!1009756 (= c!166721 (is-Union!2792 r!15766))))

(declare-fun bm!68005 () Bool)

(assert (=> bm!68005 (= call!68010 (validRegex!1261 (ite c!166722 (reg!3121 r!15766) (ite c!166721 (regOne!6097 r!15766) (regOne!6096 r!15766)))))))

(declare-fun b!1009757 () Bool)

(assert (=> b!1009757 (= e!646188 call!68010)))

(declare-fun b!1009758 () Bool)

(declare-fun res!454880 () Bool)

(assert (=> b!1009758 (=> (not res!454880) (not e!646193))))

(assert (=> b!1009758 (= res!454880 call!68009)))

(assert (=> b!1009758 (= e!646190 e!646193)))

(declare-fun b!1009759 () Bool)

(assert (=> b!1009759 (= e!646192 e!646189)))

(declare-fun res!454881 () Bool)

(assert (=> b!1009759 (=> (not res!454881) (not e!646189))))

(assert (=> b!1009759 (= res!454881 call!68009)))

(declare-fun bm!68006 () Bool)

(assert (=> bm!68006 (= call!68011 (validRegex!1261 (ite c!166721 (regTwo!6097 r!15766) (regTwo!6096 r!15766))))))

(assert (= (and d!292636 (not res!454883)) b!1009751))

(assert (= (and b!1009751 c!166722) b!1009754))

(assert (= (and b!1009751 (not c!166722)) b!1009756))

(assert (= (and b!1009754 res!454884) b!1009757))

(assert (= (and b!1009756 c!166721) b!1009758))

(assert (= (and b!1009756 (not c!166721)) b!1009753))

(assert (= (and b!1009758 res!454880) b!1009755))

(assert (= (and b!1009753 (not res!454882)) b!1009759))

(assert (= (and b!1009759 res!454881) b!1009752))

(assert (= (or b!1009755 b!1009752) bm!68006))

(assert (= (or b!1009758 b!1009759) bm!68004))

(assert (= (or b!1009757 bm!68004) bm!68005))

(assert (=> b!1009754 m!1194121))

(declare-fun m!1194227 () Bool)

(assert (=> bm!68005 m!1194227))

(declare-fun m!1194229 () Bool)

(assert (=> bm!68006 m!1194229))

(assert (=> start!88276 d!292636))

(declare-fun d!292640 () Bool)

(assert (=> d!292640 (= (isEmpty!6350 s!10566) (is-Nil!10006 s!10566))))

(assert (=> b!1009513 d!292640))

(declare-fun bs!245671 () Bool)

(declare-fun d!292642 () Bool)

(assert (= bs!245671 (and d!292642 b!1009675)))

(declare-fun lambda!35819 () Int)

(assert (=> bs!245671 (not (= lambda!35819 lambda!35812))))

(declare-fun bs!245672 () Bool)

(assert (= bs!245672 (and d!292642 b!1009513)))

(assert (=> bs!245672 (not (= lambda!35819 lambda!35798))))

(declare-fun bs!245673 () Bool)

(assert (= bs!245673 (and d!292642 b!1009702)))

(assert (=> bs!245673 (not (= lambda!35819 lambda!35814))))

(declare-fun bs!245674 () Bool)

(assert (= bs!245674 (and d!292642 b!1009677)))

(assert (=> bs!245674 (not (= lambda!35819 lambda!35811))))

(declare-fun bs!245675 () Bool)

(assert (= bs!245675 (and d!292642 b!1009704)))

(assert (=> bs!245675 (not (= lambda!35819 lambda!35813))))

(assert (=> bs!245672 (= (= (Star!2792 (reg!3121 r!15766)) lt!352863) (= lambda!35819 lambda!35797))))

(assert (=> d!292642 true))

(assert (=> d!292642 true))

(declare-fun lambda!35820 () Int)

(assert (=> bs!245671 (not (= lambda!35820 lambda!35812))))

(declare-fun bs!245676 () Bool)

(assert (= bs!245676 d!292642))

(assert (=> bs!245676 (not (= lambda!35820 lambda!35819))))

(assert (=> bs!245672 (= (= (Star!2792 (reg!3121 r!15766)) lt!352863) (= lambda!35820 lambda!35798))))

(assert (=> bs!245673 (not (= lambda!35820 lambda!35814))))

(assert (=> bs!245674 (= (and (= s!10566 (_1!6515 lt!352870)) (= (reg!3121 r!15766) (reg!3121 (reg!3121 r!15766))) (= (Star!2792 (reg!3121 r!15766)) (reg!3121 r!15766))) (= lambda!35820 lambda!35811))))

(assert (=> bs!245675 (= (= (Star!2792 (reg!3121 r!15766)) r!15766) (= lambda!35820 lambda!35813))))

(assert (=> bs!245672 (not (= lambda!35820 lambda!35797))))

(assert (=> d!292642 true))

(assert (=> d!292642 true))

(assert (=> d!292642 (= (Exists!525 lambda!35819) (Exists!525 lambda!35820))))

(declare-fun lt!352931 () Unit!15243)

(declare-fun choose!6388 (Regex!2792 List!10022) Unit!15243)

(assert (=> d!292642 (= lt!352931 (choose!6388 (reg!3121 r!15766) s!10566))))

(assert (=> d!292642 (validRegex!1261 (reg!3121 r!15766))))

(assert (=> d!292642 (= (lemmaExistCutMatchRandMatchRSpecEquivalentStar!163 (reg!3121 r!15766) s!10566) lt!352931)))

(declare-fun m!1194241 () Bool)

(assert (=> bs!245676 m!1194241))

(declare-fun m!1194243 () Bool)

(assert (=> bs!245676 m!1194243))

(declare-fun m!1194245 () Bool)

(assert (=> bs!245676 m!1194245))

(assert (=> bs!245676 m!1194181))

(assert (=> b!1009513 d!292642))

(declare-fun bs!245677 () Bool)

(declare-fun d!292648 () Bool)

(assert (= bs!245677 (and d!292648 b!1009675)))

(declare-fun lambda!35823 () Int)

(assert (=> bs!245677 (not (= lambda!35823 lambda!35812))))

(declare-fun bs!245678 () Bool)

(assert (= bs!245678 (and d!292648 d!292642)))

(assert (=> bs!245678 (= (= lt!352863 (Star!2792 (reg!3121 r!15766))) (= lambda!35823 lambda!35819))))

(declare-fun bs!245679 () Bool)

(assert (= bs!245679 (and d!292648 b!1009513)))

(assert (=> bs!245679 (not (= lambda!35823 lambda!35798))))

(declare-fun bs!245680 () Bool)

(assert (= bs!245680 (and d!292648 b!1009702)))

(assert (=> bs!245680 (not (= lambda!35823 lambda!35814))))

(declare-fun bs!245681 () Bool)

(assert (= bs!245681 (and d!292648 b!1009704)))

(assert (=> bs!245681 (not (= lambda!35823 lambda!35813))))

(assert (=> bs!245679 (= lambda!35823 lambda!35797)))

(declare-fun bs!245682 () Bool)

(assert (= bs!245682 (and d!292648 b!1009677)))

(assert (=> bs!245682 (not (= lambda!35823 lambda!35811))))

(assert (=> bs!245678 (not (= lambda!35823 lambda!35820))))

(assert (=> d!292648 true))

(assert (=> d!292648 true))

(assert (=> d!292648 true))

(assert (=> d!292648 (= (isDefined!1973 (findConcatSeparation!437 (reg!3121 r!15766) lt!352863 Nil!10006 s!10566 s!10566)) (Exists!525 lambda!35823))))

(declare-fun lt!352934 () Unit!15243)

(declare-fun choose!6389 (Regex!2792 Regex!2792 List!10022) Unit!15243)

(assert (=> d!292648 (= lt!352934 (choose!6389 (reg!3121 r!15766) lt!352863 s!10566))))

(assert (=> d!292648 (validRegex!1261 (reg!3121 r!15766))))

(assert (=> d!292648 (= (lemmaFindConcatSeparationEquivalentToExists!437 (reg!3121 r!15766) lt!352863 s!10566) lt!352934)))

(declare-fun bs!245683 () Bool)

(assert (= bs!245683 d!292648))

(declare-fun m!1194247 () Bool)

(assert (=> bs!245683 m!1194247))

(assert (=> bs!245683 m!1194181))

(assert (=> bs!245683 m!1194099))

(declare-fun m!1194249 () Bool)

(assert (=> bs!245683 m!1194249))

(assert (=> bs!245683 m!1194099))

(declare-fun m!1194251 () Bool)

(assert (=> bs!245683 m!1194251))

(assert (=> b!1009513 d!292648))

(declare-fun d!292650 () Bool)

(declare-fun e!646236 () Bool)

(assert (=> d!292650 e!646236))

(declare-fun res!454932 () Bool)

(assert (=> d!292650 (=> res!454932 e!646236)))

(declare-fun e!646237 () Bool)

(assert (=> d!292650 (= res!454932 e!646237)))

(declare-fun res!454933 () Bool)

(assert (=> d!292650 (=> (not res!454933) (not e!646237))))

(declare-fun lt!352943 () Option!2331)

(assert (=> d!292650 (= res!454933 (isDefined!1973 lt!352943))))

(declare-fun e!646238 () Option!2331)

(assert (=> d!292650 (= lt!352943 e!646238)))

(declare-fun c!166739 () Bool)

(declare-fun e!646234 () Bool)

(assert (=> d!292650 (= c!166739 e!646234)))

(declare-fun res!454935 () Bool)

(assert (=> d!292650 (=> (not res!454935) (not e!646234))))

(assert (=> d!292650 (= res!454935 (matchR!1328 (reg!3121 r!15766) Nil!10006))))

(assert (=> d!292650 (validRegex!1261 (reg!3121 r!15766))))

(assert (=> d!292650 (= (findConcatSeparation!437 (reg!3121 r!15766) lt!352863 Nil!10006 s!10566 s!10566) lt!352943)))

(declare-fun b!1009836 () Bool)

(declare-fun lt!352942 () Unit!15243)

(declare-fun lt!352941 () Unit!15243)

(assert (=> b!1009836 (= lt!352942 lt!352941)))

(assert (=> b!1009836 (= (++!2725 (++!2725 Nil!10006 (Cons!10006 (h!15407 s!10566) Nil!10006)) (t!101068 s!10566)) s!10566)))

(declare-fun lemmaMoveElementToOtherListKeepsConcatEq!325 (List!10022 C!6154 List!10022 List!10022) Unit!15243)

(assert (=> b!1009836 (= lt!352941 (lemmaMoveElementToOtherListKeepsConcatEq!325 Nil!10006 (h!15407 s!10566) (t!101068 s!10566) s!10566))))

(declare-fun e!646235 () Option!2331)

(assert (=> b!1009836 (= e!646235 (findConcatSeparation!437 (reg!3121 r!15766) lt!352863 (++!2725 Nil!10006 (Cons!10006 (h!15407 s!10566) Nil!10006)) (t!101068 s!10566) s!10566))))

(declare-fun b!1009837 () Bool)

(assert (=> b!1009837 (= e!646235 None!2330)))

(declare-fun b!1009838 () Bool)

(assert (=> b!1009838 (= e!646237 (= (++!2725 (_1!6515 (get!3503 lt!352943)) (_2!6515 (get!3503 lt!352943))) s!10566))))

(declare-fun b!1009839 () Bool)

(declare-fun res!454931 () Bool)

(assert (=> b!1009839 (=> (not res!454931) (not e!646237))))

(assert (=> b!1009839 (= res!454931 (matchR!1328 (reg!3121 r!15766) (_1!6515 (get!3503 lt!352943))))))

(declare-fun b!1009840 () Bool)

(assert (=> b!1009840 (= e!646236 (not (isDefined!1973 lt!352943)))))

(declare-fun b!1009841 () Bool)

(assert (=> b!1009841 (= e!646238 e!646235)))

(declare-fun c!166738 () Bool)

(assert (=> b!1009841 (= c!166738 (is-Nil!10006 s!10566))))

(declare-fun b!1009842 () Bool)

(declare-fun res!454934 () Bool)

(assert (=> b!1009842 (=> (not res!454934) (not e!646237))))

(assert (=> b!1009842 (= res!454934 (matchR!1328 lt!352863 (_2!6515 (get!3503 lt!352943))))))

(declare-fun b!1009843 () Bool)

(assert (=> b!1009843 (= e!646234 (matchR!1328 lt!352863 s!10566))))

(declare-fun b!1009844 () Bool)

(assert (=> b!1009844 (= e!646238 (Some!2330 (tuple2!11379 Nil!10006 s!10566)))))

(assert (= (and d!292650 res!454935) b!1009843))

(assert (= (and d!292650 c!166739) b!1009844))

(assert (= (and d!292650 (not c!166739)) b!1009841))

(assert (= (and b!1009841 c!166738) b!1009837))

(assert (= (and b!1009841 (not c!166738)) b!1009836))

(assert (= (and d!292650 res!454933) b!1009839))

(assert (= (and b!1009839 res!454931) b!1009842))

(assert (= (and b!1009842 res!454934) b!1009838))

(assert (= (and d!292650 (not res!454932)) b!1009840))

(declare-fun m!1194253 () Bool)

(assert (=> b!1009838 m!1194253))

(declare-fun m!1194255 () Bool)

(assert (=> b!1009838 m!1194255))

(declare-fun m!1194257 () Bool)

(assert (=> b!1009843 m!1194257))

(assert (=> b!1009839 m!1194253))

(declare-fun m!1194259 () Bool)

(assert (=> b!1009839 m!1194259))

(declare-fun m!1194261 () Bool)

(assert (=> b!1009836 m!1194261))

(assert (=> b!1009836 m!1194261))

(declare-fun m!1194263 () Bool)

(assert (=> b!1009836 m!1194263))

(declare-fun m!1194265 () Bool)

(assert (=> b!1009836 m!1194265))

(assert (=> b!1009836 m!1194261))

(declare-fun m!1194267 () Bool)

(assert (=> b!1009836 m!1194267))

(declare-fun m!1194269 () Bool)

(assert (=> b!1009840 m!1194269))

(assert (=> b!1009842 m!1194253))

(declare-fun m!1194271 () Bool)

(assert (=> b!1009842 m!1194271))

(assert (=> d!292650 m!1194269))

(declare-fun m!1194273 () Bool)

(assert (=> d!292650 m!1194273))

(assert (=> d!292650 m!1194181))

(assert (=> b!1009513 d!292650))

(declare-fun d!292652 () Bool)

(declare-fun choose!6390 (Int) Bool)

(assert (=> d!292652 (= (Exists!525 lambda!35797) (choose!6390 lambda!35797))))

(declare-fun bs!245684 () Bool)

(assert (= bs!245684 d!292652))

(declare-fun m!1194275 () Bool)

(assert (=> bs!245684 m!1194275))

(assert (=> b!1009513 d!292652))

(declare-fun d!292654 () Bool)

(assert (=> d!292654 (= (Exists!525 lambda!35798) (choose!6390 lambda!35798))))

(declare-fun bs!245685 () Bool)

(assert (= bs!245685 d!292654))

(declare-fun m!1194277 () Bool)

(assert (=> bs!245685 m!1194277))

(assert (=> b!1009513 d!292654))

(declare-fun d!292656 () Bool)

(declare-fun isEmpty!6352 (Option!2331) Bool)

(assert (=> d!292656 (= (isDefined!1973 lt!352868) (not (isEmpty!6352 lt!352868)))))

(declare-fun bs!245686 () Bool)

(assert (= bs!245686 d!292656))

(declare-fun m!1194279 () Bool)

(assert (=> bs!245686 m!1194279))

(assert (=> b!1009513 d!292656))

(declare-fun b!1009845 () Bool)

(declare-fun e!646244 () Bool)

(assert (=> b!1009845 (= e!646244 (matchR!1328 (derivativeStep!708 (removeUselessConcat!373 (reg!3121 r!15766)) (head!1862 (_1!6515 lt!352870))) (tail!1424 (_1!6515 lt!352870))))))

(declare-fun b!1009846 () Bool)

(assert (=> b!1009846 (= e!646244 (nullable!904 (removeUselessConcat!373 (reg!3121 r!15766))))))

(declare-fun b!1009847 () Bool)

(declare-fun res!454940 () Bool)

(declare-fun e!646242 () Bool)

(assert (=> b!1009847 (=> (not res!454940) (not e!646242))))

(assert (=> b!1009847 (= res!454940 (isEmpty!6350 (tail!1424 (_1!6515 lt!352870))))))

(declare-fun b!1009848 () Bool)

(declare-fun e!646240 () Bool)

(declare-fun lt!352944 () Bool)

(assert (=> b!1009848 (= e!646240 (not lt!352944))))

(declare-fun b!1009849 () Bool)

(declare-fun e!646245 () Bool)

(declare-fun call!68016 () Bool)

(assert (=> b!1009849 (= e!646245 (= lt!352944 call!68016))))

(declare-fun b!1009850 () Bool)

(declare-fun e!646243 () Bool)

(declare-fun e!646241 () Bool)

(assert (=> b!1009850 (= e!646243 e!646241)))

(declare-fun res!454941 () Bool)

(assert (=> b!1009850 (=> res!454941 e!646241)))

(assert (=> b!1009850 (= res!454941 call!68016)))

(declare-fun b!1009851 () Bool)

(declare-fun res!454942 () Bool)

(assert (=> b!1009851 (=> res!454942 e!646241)))

(assert (=> b!1009851 (= res!454942 (not (isEmpty!6350 (tail!1424 (_1!6515 lt!352870)))))))

(declare-fun b!1009852 () Bool)

(assert (=> b!1009852 (= e!646242 (= (head!1862 (_1!6515 lt!352870)) (c!166675 (removeUselessConcat!373 (reg!3121 r!15766)))))))

(declare-fun bm!68011 () Bool)

(assert (=> bm!68011 (= call!68016 (isEmpty!6350 (_1!6515 lt!352870)))))

(declare-fun b!1009853 () Bool)

(assert (=> b!1009853 (= e!646241 (not (= (head!1862 (_1!6515 lt!352870)) (c!166675 (removeUselessConcat!373 (reg!3121 r!15766))))))))

(declare-fun b!1009854 () Bool)

(declare-fun res!454936 () Bool)

(declare-fun e!646239 () Bool)

(assert (=> b!1009854 (=> res!454936 e!646239)))

(assert (=> b!1009854 (= res!454936 e!646242)))

(declare-fun res!454939 () Bool)

(assert (=> b!1009854 (=> (not res!454939) (not e!646242))))

(assert (=> b!1009854 (= res!454939 lt!352944)))

(declare-fun b!1009855 () Bool)

(assert (=> b!1009855 (= e!646239 e!646243)))

(declare-fun res!454937 () Bool)

(assert (=> b!1009855 (=> (not res!454937) (not e!646243))))

(assert (=> b!1009855 (= res!454937 (not lt!352944))))

(declare-fun b!1009856 () Bool)

(assert (=> b!1009856 (= e!646245 e!646240)))

(declare-fun c!166740 () Bool)

(assert (=> b!1009856 (= c!166740 (is-EmptyLang!2792 (removeUselessConcat!373 (reg!3121 r!15766))))))

(declare-fun d!292658 () Bool)

(assert (=> d!292658 e!646245))

(declare-fun c!166742 () Bool)

(assert (=> d!292658 (= c!166742 (is-EmptyExpr!2792 (removeUselessConcat!373 (reg!3121 r!15766))))))

(assert (=> d!292658 (= lt!352944 e!646244)))

(declare-fun c!166741 () Bool)

(assert (=> d!292658 (= c!166741 (isEmpty!6350 (_1!6515 lt!352870)))))

(assert (=> d!292658 (validRegex!1261 (removeUselessConcat!373 (reg!3121 r!15766)))))

(assert (=> d!292658 (= (matchR!1328 (removeUselessConcat!373 (reg!3121 r!15766)) (_1!6515 lt!352870)) lt!352944)))

(declare-fun b!1009857 () Bool)

(declare-fun res!454938 () Bool)

(assert (=> b!1009857 (=> (not res!454938) (not e!646242))))

(assert (=> b!1009857 (= res!454938 (not call!68016))))

(declare-fun b!1009858 () Bool)

(declare-fun res!454943 () Bool)

(assert (=> b!1009858 (=> res!454943 e!646239)))

(assert (=> b!1009858 (= res!454943 (not (is-ElementMatch!2792 (removeUselessConcat!373 (reg!3121 r!15766)))))))

(assert (=> b!1009858 (= e!646240 e!646239)))

(assert (= (and d!292658 c!166741) b!1009846))

(assert (= (and d!292658 (not c!166741)) b!1009845))

(assert (= (and d!292658 c!166742) b!1009849))

(assert (= (and d!292658 (not c!166742)) b!1009856))

(assert (= (and b!1009856 c!166740) b!1009848))

(assert (= (and b!1009856 (not c!166740)) b!1009858))

(assert (= (and b!1009858 (not res!454943)) b!1009854))

(assert (= (and b!1009854 res!454939) b!1009857))

(assert (= (and b!1009857 res!454938) b!1009847))

(assert (= (and b!1009847 res!454940) b!1009852))

(assert (= (and b!1009854 (not res!454936)) b!1009855))

(assert (= (and b!1009855 res!454937) b!1009850))

(assert (= (and b!1009850 (not res!454941)) b!1009851))

(assert (= (and b!1009851 (not res!454942)) b!1009853))

(assert (= (or b!1009849 b!1009850 b!1009857) bm!68011))

(assert (=> b!1009846 m!1194103))

(declare-fun m!1194281 () Bool)

(assert (=> b!1009846 m!1194281))

(assert (=> b!1009853 m!1194179))

(assert (=> d!292658 m!1194113))

(assert (=> d!292658 m!1194103))

(declare-fun m!1194283 () Bool)

(assert (=> d!292658 m!1194283))

(assert (=> b!1009852 m!1194179))

(assert (=> b!1009847 m!1194183))

(assert (=> b!1009847 m!1194183))

(assert (=> b!1009847 m!1194185))

(assert (=> b!1009845 m!1194179))

(assert (=> b!1009845 m!1194103))

(assert (=> b!1009845 m!1194179))

(declare-fun m!1194285 () Bool)

(assert (=> b!1009845 m!1194285))

(assert (=> b!1009845 m!1194183))

(assert (=> b!1009845 m!1194285))

(assert (=> b!1009845 m!1194183))

(declare-fun m!1194287 () Bool)

(assert (=> b!1009845 m!1194287))

(assert (=> bm!68011 m!1194113))

(assert (=> b!1009851 m!1194183))

(assert (=> b!1009851 m!1194183))

(assert (=> b!1009851 m!1194185))

(assert (=> b!1009508 d!292658))

(declare-fun d!292660 () Bool)

(declare-fun lt!352945 () Int)

(assert (=> d!292660 (>= lt!352945 0)))

(declare-fun e!646246 () Int)

(assert (=> d!292660 (= lt!352945 e!646246)))

(declare-fun c!166743 () Bool)

(assert (=> d!292660 (= c!166743 (is-Nil!10006 s!10566))))

(assert (=> d!292660 (= (size!7968 s!10566) lt!352945)))

(declare-fun b!1009859 () Bool)

(assert (=> b!1009859 (= e!646246 0)))

(declare-fun b!1009860 () Bool)

(assert (=> b!1009860 (= e!646246 (+ 1 (size!7968 (t!101068 s!10566))))))

(assert (= (and d!292660 c!166743) b!1009859))

(assert (= (and d!292660 (not c!166743)) b!1009860))

(declare-fun m!1194289 () Bool)

(assert (=> b!1009860 m!1194289))

(assert (=> b!1009508 d!292660))

(declare-fun b!1009894 () Bool)

(declare-fun e!646271 () Regex!2792)

(declare-fun call!68031 () Regex!2792)

(declare-fun call!68029 () Regex!2792)

(assert (=> b!1009894 (= e!646271 (Concat!4625 call!68031 call!68029))))

(declare-fun bm!68024 () Bool)

(declare-fun call!68030 () Regex!2792)

(declare-fun call!68032 () Regex!2792)

(assert (=> bm!68024 (= call!68030 call!68032)))

(declare-fun b!1009895 () Bool)

(declare-fun e!646268 () Regex!2792)

(assert (=> b!1009895 (= e!646268 call!68030)))

(declare-fun b!1009896 () Bool)

(declare-fun c!166758 () Bool)

(assert (=> b!1009896 (= c!166758 (is-Star!2792 (reg!3121 r!15766)))))

(declare-fun e!646270 () Regex!2792)

(declare-fun e!646269 () Regex!2792)

(assert (=> b!1009896 (= e!646270 e!646269)))

(declare-fun b!1009897 () Bool)

(declare-fun e!646267 () Regex!2792)

(assert (=> b!1009897 (= e!646267 call!68032)))

(declare-fun b!1009898 () Bool)

(assert (=> b!1009898 (= e!646269 (reg!3121 r!15766))))

(declare-fun bm!68025 () Bool)

(declare-fun c!166759 () Bool)

(assert (=> bm!68025 (= call!68031 (removeUselessConcat!373 (ite c!166759 (regOne!6096 (reg!3121 r!15766)) (regOne!6097 (reg!3121 r!15766)))))))

(declare-fun bm!68026 () Bool)

(declare-fun call!68033 () Regex!2792)

(assert (=> bm!68026 (= call!68033 call!68029)))

(declare-fun d!292662 () Bool)

(declare-fun e!646266 () Bool)

(assert (=> d!292662 e!646266))

(declare-fun res!454949 () Bool)

(assert (=> d!292662 (=> (not res!454949) (not e!646266))))

(declare-fun lt!352948 () Regex!2792)

(assert (=> d!292662 (= res!454949 (validRegex!1261 lt!352948))))

(assert (=> d!292662 (= lt!352948 e!646267)))

(declare-fun c!166761 () Bool)

(assert (=> d!292662 (= c!166761 (and (is-Concat!4625 (reg!3121 r!15766)) (is-EmptyExpr!2792 (regOne!6096 (reg!3121 r!15766)))))))

(assert (=> d!292662 (validRegex!1261 (reg!3121 r!15766))))

(assert (=> d!292662 (= (removeUselessConcat!373 (reg!3121 r!15766)) lt!352948)))

(declare-fun b!1009899 () Bool)

(assert (=> b!1009899 (= e!646270 (Union!2792 call!68031 call!68033))))

(declare-fun b!1009900 () Bool)

(assert (=> b!1009900 (= e!646269 (Star!2792 call!68033))))

(declare-fun b!1009901 () Bool)

(assert (=> b!1009901 (= e!646266 (= (nullable!904 lt!352948) (nullable!904 (reg!3121 r!15766))))))

(declare-fun bm!68027 () Bool)

(assert (=> bm!68027 (= call!68029 call!68030)))

(declare-fun b!1009902 () Bool)

(assert (=> b!1009902 (= c!166759 (is-Concat!4625 (reg!3121 r!15766)))))

(assert (=> b!1009902 (= e!646268 e!646271)))

(declare-fun b!1009903 () Bool)

(assert (=> b!1009903 (= e!646267 e!646268)))

(declare-fun c!166762 () Bool)

(assert (=> b!1009903 (= c!166762 (and (is-Concat!4625 (reg!3121 r!15766)) (is-EmptyExpr!2792 (regTwo!6096 (reg!3121 r!15766)))))))

(declare-fun c!166760 () Bool)

(declare-fun bm!68028 () Bool)

(assert (=> bm!68028 (= call!68032 (removeUselessConcat!373 (ite c!166761 (regTwo!6096 (reg!3121 r!15766)) (ite c!166762 (regOne!6096 (reg!3121 r!15766)) (ite c!166759 (regTwo!6096 (reg!3121 r!15766)) (ite c!166760 (regTwo!6097 (reg!3121 r!15766)) (reg!3121 (reg!3121 r!15766))))))))))

(declare-fun b!1009904 () Bool)

(assert (=> b!1009904 (= e!646271 e!646270)))

(assert (=> b!1009904 (= c!166760 (is-Union!2792 (reg!3121 r!15766)))))

(assert (= (and d!292662 c!166761) b!1009897))

(assert (= (and d!292662 (not c!166761)) b!1009903))

(assert (= (and b!1009903 c!166762) b!1009895))

(assert (= (and b!1009903 (not c!166762)) b!1009902))

(assert (= (and b!1009902 c!166759) b!1009894))

(assert (= (and b!1009902 (not c!166759)) b!1009904))

(assert (= (and b!1009904 c!166760) b!1009899))

(assert (= (and b!1009904 (not c!166760)) b!1009896))

(assert (= (and b!1009896 c!166758) b!1009900))

(assert (= (and b!1009896 (not c!166758)) b!1009898))

(assert (= (or b!1009899 b!1009900) bm!68026))

(assert (= (or b!1009894 bm!68026) bm!68027))

(assert (= (or b!1009894 b!1009899) bm!68025))

(assert (= (or b!1009895 bm!68027) bm!68024))

(assert (= (or b!1009897 bm!68024) bm!68028))

(assert (= (and d!292662 res!454949) b!1009901))

(declare-fun m!1194297 () Bool)

(assert (=> bm!68025 m!1194297))

(declare-fun m!1194299 () Bool)

(assert (=> d!292662 m!1194299))

(assert (=> d!292662 m!1194181))

(declare-fun m!1194301 () Bool)

(assert (=> b!1009901 m!1194301))

(assert (=> b!1009901 m!1194121))

(declare-fun m!1194303 () Bool)

(assert (=> bm!68028 m!1194303))

(assert (=> b!1009508 d!292662))

(declare-fun d!292666 () Bool)

(assert (=> d!292666 (= (matchR!1328 (reg!3121 r!15766) (_1!6515 lt!352870)) (matchR!1328 (removeUselessConcat!373 (reg!3121 r!15766)) (_1!6515 lt!352870)))))

(declare-fun lt!352951 () Unit!15243)

(declare-fun choose!6391 (Regex!2792 List!10022) Unit!15243)

(assert (=> d!292666 (= lt!352951 (choose!6391 (reg!3121 r!15766) (_1!6515 lt!352870)))))

(assert (=> d!292666 (validRegex!1261 (reg!3121 r!15766))))

(assert (=> d!292666 (= (lemmaRemoveUselessConcatSound!217 (reg!3121 r!15766) (_1!6515 lt!352870)) lt!352951)))

(declare-fun bs!245690 () Bool)

(assert (= bs!245690 d!292666))

(assert (=> bs!245690 m!1194103))

(assert (=> bs!245690 m!1194103))

(assert (=> bs!245690 m!1194105))

(assert (=> bs!245690 m!1194077))

(declare-fun m!1194305 () Bool)

(assert (=> bs!245690 m!1194305))

(assert (=> bs!245690 m!1194181))

(assert (=> b!1009508 d!292666))

(declare-fun d!292668 () Bool)

(declare-fun lt!352952 () Int)

(assert (=> d!292668 (>= lt!352952 0)))

(declare-fun e!646272 () Int)

(assert (=> d!292668 (= lt!352952 e!646272)))

(declare-fun c!166763 () Bool)

(assert (=> d!292668 (= c!166763 (is-Nil!10006 (_2!6515 lt!352870)))))

(assert (=> d!292668 (= (size!7968 (_2!6515 lt!352870)) lt!352952)))

(declare-fun b!1009905 () Bool)

(assert (=> b!1009905 (= e!646272 0)))

(declare-fun b!1009906 () Bool)

(assert (=> b!1009906 (= e!646272 (+ 1 (size!7968 (t!101068 (_2!6515 lt!352870)))))))

(assert (= (and d!292668 c!166763) b!1009905))

(assert (= (and d!292668 (not c!166763)) b!1009906))

(declare-fun m!1194307 () Bool)

(assert (=> b!1009906 m!1194307))

(assert (=> b!1009508 d!292668))

(declare-fun b!1009907 () Bool)

(declare-fun e!646278 () Bool)

(assert (=> b!1009907 (= e!646278 (matchR!1328 (derivativeStep!708 lt!352863 (head!1862 (_2!6515 lt!352870))) (tail!1424 (_2!6515 lt!352870))))))

(declare-fun b!1009908 () Bool)

(assert (=> b!1009908 (= e!646278 (nullable!904 lt!352863))))

(declare-fun b!1009909 () Bool)

(declare-fun res!454954 () Bool)

(declare-fun e!646276 () Bool)

(assert (=> b!1009909 (=> (not res!454954) (not e!646276))))

(assert (=> b!1009909 (= res!454954 (isEmpty!6350 (tail!1424 (_2!6515 lt!352870))))))

(declare-fun b!1009910 () Bool)

(declare-fun e!646274 () Bool)

(declare-fun lt!352953 () Bool)

(assert (=> b!1009910 (= e!646274 (not lt!352953))))

(declare-fun b!1009911 () Bool)

(declare-fun e!646279 () Bool)

(declare-fun call!68034 () Bool)

(assert (=> b!1009911 (= e!646279 (= lt!352953 call!68034))))

(declare-fun b!1009912 () Bool)

(declare-fun e!646277 () Bool)

(declare-fun e!646275 () Bool)

(assert (=> b!1009912 (= e!646277 e!646275)))

(declare-fun res!454955 () Bool)

(assert (=> b!1009912 (=> res!454955 e!646275)))

(assert (=> b!1009912 (= res!454955 call!68034)))

(declare-fun b!1009913 () Bool)

(declare-fun res!454956 () Bool)

(assert (=> b!1009913 (=> res!454956 e!646275)))

(assert (=> b!1009913 (= res!454956 (not (isEmpty!6350 (tail!1424 (_2!6515 lt!352870)))))))

(declare-fun b!1009914 () Bool)

(assert (=> b!1009914 (= e!646276 (= (head!1862 (_2!6515 lt!352870)) (c!166675 lt!352863)))))

(declare-fun bm!68029 () Bool)

(assert (=> bm!68029 (= call!68034 (isEmpty!6350 (_2!6515 lt!352870)))))

(declare-fun b!1009915 () Bool)

(assert (=> b!1009915 (= e!646275 (not (= (head!1862 (_2!6515 lt!352870)) (c!166675 lt!352863))))))

(declare-fun b!1009916 () Bool)

(declare-fun res!454950 () Bool)

(declare-fun e!646273 () Bool)

(assert (=> b!1009916 (=> res!454950 e!646273)))

(assert (=> b!1009916 (= res!454950 e!646276)))

(declare-fun res!454953 () Bool)

(assert (=> b!1009916 (=> (not res!454953) (not e!646276))))

(assert (=> b!1009916 (= res!454953 lt!352953)))

(declare-fun b!1009917 () Bool)

(assert (=> b!1009917 (= e!646273 e!646277)))

(declare-fun res!454951 () Bool)

(assert (=> b!1009917 (=> (not res!454951) (not e!646277))))

(assert (=> b!1009917 (= res!454951 (not lt!352953))))

(declare-fun b!1009918 () Bool)

(assert (=> b!1009918 (= e!646279 e!646274)))

(declare-fun c!166764 () Bool)

(assert (=> b!1009918 (= c!166764 (is-EmptyLang!2792 lt!352863))))

(declare-fun d!292670 () Bool)

(assert (=> d!292670 e!646279))

(declare-fun c!166766 () Bool)

(assert (=> d!292670 (= c!166766 (is-EmptyExpr!2792 lt!352863))))

(assert (=> d!292670 (= lt!352953 e!646278)))

(declare-fun c!166765 () Bool)

(assert (=> d!292670 (= c!166765 (isEmpty!6350 (_2!6515 lt!352870)))))

(assert (=> d!292670 (validRegex!1261 lt!352863)))

(assert (=> d!292670 (= (matchR!1328 lt!352863 (_2!6515 lt!352870)) lt!352953)))

(declare-fun b!1009919 () Bool)

(declare-fun res!454952 () Bool)

(assert (=> b!1009919 (=> (not res!454952) (not e!646276))))

(assert (=> b!1009919 (= res!454952 (not call!68034))))

(declare-fun b!1009920 () Bool)

(declare-fun res!454957 () Bool)

(assert (=> b!1009920 (=> res!454957 e!646273)))

(assert (=> b!1009920 (= res!454957 (not (is-ElementMatch!2792 lt!352863)))))

(assert (=> b!1009920 (= e!646274 e!646273)))

(assert (= (and d!292670 c!166765) b!1009908))

(assert (= (and d!292670 (not c!166765)) b!1009907))

(assert (= (and d!292670 c!166766) b!1009911))

(assert (= (and d!292670 (not c!166766)) b!1009918))

(assert (= (and b!1009918 c!166764) b!1009910))

(assert (= (and b!1009918 (not c!166764)) b!1009920))

(assert (= (and b!1009920 (not res!454957)) b!1009916))

(assert (= (and b!1009916 res!454953) b!1009919))

(assert (= (and b!1009919 res!454952) b!1009909))

(assert (= (and b!1009909 res!454954) b!1009914))

(assert (= (and b!1009916 (not res!454950)) b!1009917))

(assert (= (and b!1009917 res!454951) b!1009912))

(assert (= (and b!1009912 (not res!454955)) b!1009913))

(assert (= (and b!1009913 (not res!454956)) b!1009915))

(assert (= (or b!1009911 b!1009912 b!1009919) bm!68029))

(declare-fun m!1194309 () Bool)

(assert (=> b!1009908 m!1194309))

(declare-fun m!1194311 () Bool)

(assert (=> b!1009915 m!1194311))

(declare-fun m!1194313 () Bool)

(assert (=> d!292670 m!1194313))

(declare-fun m!1194315 () Bool)

(assert (=> d!292670 m!1194315))

(assert (=> b!1009914 m!1194311))

(declare-fun m!1194317 () Bool)

(assert (=> b!1009909 m!1194317))

(assert (=> b!1009909 m!1194317))

(declare-fun m!1194319 () Bool)

(assert (=> b!1009909 m!1194319))

(assert (=> b!1009907 m!1194311))

(assert (=> b!1009907 m!1194311))

(declare-fun m!1194321 () Bool)

(assert (=> b!1009907 m!1194321))

(assert (=> b!1009907 m!1194317))

(assert (=> b!1009907 m!1194321))

(assert (=> b!1009907 m!1194317))

(declare-fun m!1194323 () Bool)

(assert (=> b!1009907 m!1194323))

(assert (=> bm!68029 m!1194313))

(assert (=> b!1009913 m!1194317))

(assert (=> b!1009913 m!1194317))

(assert (=> b!1009913 m!1194319))

(assert (=> b!1009503 d!292670))

(declare-fun d!292672 () Bool)

(declare-fun e!646284 () Bool)

(assert (=> d!292672 e!646284))

(declare-fun res!454962 () Bool)

(assert (=> d!292672 (=> (not res!454962) (not e!646284))))

(declare-fun lt!352956 () List!10022)

(declare-fun content!1432 (List!10022) (Set C!6154))

(assert (=> d!292672 (= res!454962 (= (content!1432 lt!352956) (set.union (content!1432 (_1!6515 lt!352870)) (content!1432 (_2!6515 lt!352870)))))))

(declare-fun e!646285 () List!10022)

(assert (=> d!292672 (= lt!352956 e!646285)))

(declare-fun c!166769 () Bool)

(assert (=> d!292672 (= c!166769 (is-Nil!10006 (_1!6515 lt!352870)))))

(assert (=> d!292672 (= (++!2725 (_1!6515 lt!352870) (_2!6515 lt!352870)) lt!352956)))

(declare-fun b!1009929 () Bool)

(assert (=> b!1009929 (= e!646285 (_2!6515 lt!352870))))

(declare-fun b!1009930 () Bool)

(assert (=> b!1009930 (= e!646285 (Cons!10006 (h!15407 (_1!6515 lt!352870)) (++!2725 (t!101068 (_1!6515 lt!352870)) (_2!6515 lt!352870))))))

(declare-fun b!1009932 () Bool)

(assert (=> b!1009932 (= e!646284 (or (not (= (_2!6515 lt!352870) Nil!10006)) (= lt!352956 (_1!6515 lt!352870))))))

(declare-fun b!1009931 () Bool)

(declare-fun res!454963 () Bool)

(assert (=> b!1009931 (=> (not res!454963) (not e!646284))))

(assert (=> b!1009931 (= res!454963 (= (size!7968 lt!352956) (+ (size!7968 (_1!6515 lt!352870)) (size!7968 (_2!6515 lt!352870)))))))

(assert (= (and d!292672 c!166769) b!1009929))

(assert (= (and d!292672 (not c!166769)) b!1009930))

(assert (= (and d!292672 res!454962) b!1009931))

(assert (= (and b!1009931 res!454963) b!1009932))

(declare-fun m!1194325 () Bool)

(assert (=> d!292672 m!1194325))

(declare-fun m!1194327 () Bool)

(assert (=> d!292672 m!1194327))

(declare-fun m!1194329 () Bool)

(assert (=> d!292672 m!1194329))

(declare-fun m!1194331 () Bool)

(assert (=> b!1009930 m!1194331))

(declare-fun m!1194333 () Bool)

(assert (=> b!1009931 m!1194333))

(assert (=> b!1009931 m!1194087))

(assert (=> b!1009931 m!1194111))

(assert (=> b!1009504 d!292672))

(declare-fun e!646290 () Bool)

(assert (=> b!1009515 (= tp!307379 e!646290)))

(declare-fun b!1009948 () Bool)

(declare-fun tp!307414 () Bool)

(declare-fun tp!307413 () Bool)

(assert (=> b!1009948 (= e!646290 (and tp!307414 tp!307413))))

(declare-fun b!1009950 () Bool)

(declare-fun tp!307412 () Bool)

(declare-fun tp!307411 () Bool)

(assert (=> b!1009950 (= e!646290 (and tp!307412 tp!307411))))

(declare-fun b!1009949 () Bool)

(declare-fun tp!307415 () Bool)

(assert (=> b!1009949 (= e!646290 tp!307415)))

(declare-fun b!1009947 () Bool)

(assert (=> b!1009947 (= e!646290 tp_is_empty!5227)))

(assert (= (and b!1009515 (is-ElementMatch!2792 (regOne!6096 r!15766))) b!1009947))

(assert (= (and b!1009515 (is-Concat!4625 (regOne!6096 r!15766))) b!1009948))

(assert (= (and b!1009515 (is-Star!2792 (regOne!6096 r!15766))) b!1009949))

(assert (= (and b!1009515 (is-Union!2792 (regOne!6096 r!15766))) b!1009950))

(declare-fun e!646291 () Bool)

(assert (=> b!1009515 (= tp!307382 e!646291)))

(declare-fun b!1009952 () Bool)

(declare-fun tp!307419 () Bool)

(declare-fun tp!307418 () Bool)

(assert (=> b!1009952 (= e!646291 (and tp!307419 tp!307418))))

(declare-fun b!1009954 () Bool)

(declare-fun tp!307417 () Bool)

(declare-fun tp!307416 () Bool)

(assert (=> b!1009954 (= e!646291 (and tp!307417 tp!307416))))

(declare-fun b!1009953 () Bool)

(declare-fun tp!307420 () Bool)

(assert (=> b!1009953 (= e!646291 tp!307420)))

(declare-fun b!1009951 () Bool)

(assert (=> b!1009951 (= e!646291 tp_is_empty!5227)))

(assert (= (and b!1009515 (is-ElementMatch!2792 (regTwo!6096 r!15766))) b!1009951))

(assert (= (and b!1009515 (is-Concat!4625 (regTwo!6096 r!15766))) b!1009952))

(assert (= (and b!1009515 (is-Star!2792 (regTwo!6096 r!15766))) b!1009953))

(assert (= (and b!1009515 (is-Union!2792 (regTwo!6096 r!15766))) b!1009954))

(declare-fun e!646292 () Bool)

(assert (=> b!1009511 (= tp!307381 e!646292)))

(declare-fun b!1009956 () Bool)

(declare-fun tp!307424 () Bool)

(declare-fun tp!307423 () Bool)

(assert (=> b!1009956 (= e!646292 (and tp!307424 tp!307423))))

(declare-fun b!1009959 () Bool)

(declare-fun tp!307422 () Bool)

(declare-fun tp!307421 () Bool)

(assert (=> b!1009959 (= e!646292 (and tp!307422 tp!307421))))

(declare-fun b!1009957 () Bool)

(declare-fun tp!307425 () Bool)

(assert (=> b!1009957 (= e!646292 tp!307425)))

(declare-fun b!1009955 () Bool)

(assert (=> b!1009955 (= e!646292 tp_is_empty!5227)))

(assert (= (and b!1009511 (is-ElementMatch!2792 (reg!3121 r!15766))) b!1009955))

(assert (= (and b!1009511 (is-Concat!4625 (reg!3121 r!15766))) b!1009956))

(assert (= (and b!1009511 (is-Star!2792 (reg!3121 r!15766))) b!1009957))

(assert (= (and b!1009511 (is-Union!2792 (reg!3121 r!15766))) b!1009959))

(declare-fun b!1009971 () Bool)

(declare-fun e!646299 () Bool)

(declare-fun tp!307428 () Bool)

(assert (=> b!1009971 (= e!646299 (and tp_is_empty!5227 tp!307428))))

(assert (=> b!1009512 (= tp!307377 e!646299)))

(assert (= (and b!1009512 (is-Cons!10006 (t!101068 s!10566))) b!1009971))

(declare-fun e!646300 () Bool)

(assert (=> b!1009509 (= tp!307378 e!646300)))

(declare-fun b!1009973 () Bool)

(declare-fun tp!307432 () Bool)

(declare-fun tp!307431 () Bool)

(assert (=> b!1009973 (= e!646300 (and tp!307432 tp!307431))))

(declare-fun b!1009975 () Bool)

(declare-fun tp!307430 () Bool)

(declare-fun tp!307429 () Bool)

(assert (=> b!1009975 (= e!646300 (and tp!307430 tp!307429))))

(declare-fun b!1009974 () Bool)

(declare-fun tp!307433 () Bool)

(assert (=> b!1009974 (= e!646300 tp!307433)))

(declare-fun b!1009972 () Bool)

(assert (=> b!1009972 (= e!646300 tp_is_empty!5227)))

(assert (= (and b!1009509 (is-ElementMatch!2792 (regOne!6097 r!15766))) b!1009972))

(assert (= (and b!1009509 (is-Concat!4625 (regOne!6097 r!15766))) b!1009973))

(assert (= (and b!1009509 (is-Star!2792 (regOne!6097 r!15766))) b!1009974))

(assert (= (and b!1009509 (is-Union!2792 (regOne!6097 r!15766))) b!1009975))

(declare-fun e!646303 () Bool)

(assert (=> b!1009509 (= tp!307380 e!646303)))

(declare-fun b!1009979 () Bool)

(declare-fun tp!307437 () Bool)

(declare-fun tp!307436 () Bool)

(assert (=> b!1009979 (= e!646303 (and tp!307437 tp!307436))))

(declare-fun b!1009981 () Bool)

(declare-fun tp!307435 () Bool)

(declare-fun tp!307434 () Bool)

(assert (=> b!1009981 (= e!646303 (and tp!307435 tp!307434))))

(declare-fun b!1009980 () Bool)

(declare-fun tp!307438 () Bool)

(assert (=> b!1009980 (= e!646303 tp!307438)))

(declare-fun b!1009978 () Bool)

(assert (=> b!1009978 (= e!646303 tp_is_empty!5227)))

(assert (= (and b!1009509 (is-ElementMatch!2792 (regTwo!6097 r!15766))) b!1009978))

(assert (= (and b!1009509 (is-Concat!4625 (regTwo!6097 r!15766))) b!1009979))

(assert (= (and b!1009509 (is-Star!2792 (regTwo!6097 r!15766))) b!1009980))

(assert (= (and b!1009509 (is-Union!2792 (regTwo!6097 r!15766))) b!1009981))

(push 1)

(assert (not b!1009931))

(assert (not b!1009915))

(assert (not d!292654))

(assert (not bm!68029))

(assert (not d!292632))

(assert (not d!292672))

(assert (not d!292666))

(assert (not b!1009959))

(assert (not b!1009589))

(assert (not b!1009852))

(assert (not b!1009620))

(assert (not b!1009754))

(assert (not b!1009901))

(assert (not b!1009843))

(assert (not b!1009712))

(assert (not b!1009952))

(assert (not b!1009980))

(assert (not b!1009956))

(assert (not bm!67984))

(assert (not d!292628))

(assert (not b!1009909))

(assert (not d!292648))

(assert (not b!1009625))

(assert (not b!1009930))

(assert (not b!1009908))

(assert (not d!292634))

(assert (not b!1009853))

(assert (not b!1009950))

(assert (not bm!67993))

(assert (not b!1009971))

(assert (not d!292652))

(assert (not b!1009957))

(assert (not bm!68028))

(assert (not b!1009839))

(assert (not b!1009906))

(assert (not b!1009842))

(assert (not b!1009676))

(assert (not b!1009840))

(assert (not bm!67985))

(assert (not b!1009948))

(assert (not b!1009624))

(assert (not b!1009851))

(assert (not d!292670))

(assert (not b!1009913))

(assert (not bm!67979))

(assert (not b!1009706))

(assert (not d!292642))

(assert (not b!1009847))

(assert (not b!1009914))

(assert (not b!1009974))

(assert tp_is_empty!5227)

(assert (not bm!67992))

(assert (not b!1009907))

(assert (not b!1009838))

(assert (not b!1009953))

(assert (not b!1009711))

(assert (not d!292662))

(assert (not bm!68006))

(assert (not d!292620))

(assert (not b!1009981))

(assert (not b!1009979))

(assert (not b!1009860))

(assert (not b!1009716))

(assert (not d!292656))

(assert (not d!292650))

(assert (not b!1009703))

(assert (not b!1009973))

(assert (not b!1009717))

(assert (not d!292658))

(assert (not b!1009846))

(assert (not b!1009954))

(assert (not bm!68025))

(assert (not b!1009845))

(assert (not b!1009618))

(assert (not b!1009679))

(assert (not b!1009718))

(assert (not b!1009710))

(assert (not b!1009626))

(assert (not bm!68011))

(assert (not b!1009619))

(assert (not b!1009975))

(assert (not b!1009836))

(assert (not d!292614))

(assert (not bm!67994))

(assert (not bm!68005))

(assert (not b!1009949))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

