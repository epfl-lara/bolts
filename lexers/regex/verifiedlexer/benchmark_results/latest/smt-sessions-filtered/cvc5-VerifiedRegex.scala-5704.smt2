; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!283830 () Bool)

(assert start!283830)

(declare-fun b!2912679 () Bool)

(assert (=> b!2912679 true))

(assert (=> b!2912679 true))

(declare-fun lambda!108182 () Int)

(declare-fun lambda!108181 () Int)

(assert (=> b!2912679 (not (= lambda!108182 lambda!108181))))

(assert (=> b!2912679 true))

(assert (=> b!2912679 true))

(declare-fun b!2912678 () Bool)

(declare-fun e!1838341 () Bool)

(declare-fun tp!935726 () Bool)

(declare-fun tp!935729 () Bool)

(assert (=> b!2912678 (= e!1838341 (and tp!935726 tp!935729))))

(declare-fun res!1202330 () Bool)

(declare-fun e!1838342 () Bool)

(assert (=> start!283830 (=> (not res!1202330) (not e!1838342))))

(declare-datatypes ((C!18102 0))(
  ( (C!18103 (val!11087 Int)) )
))
(declare-datatypes ((Regex!8958 0))(
  ( (ElementMatch!8958 (c!474970 C!18102)) (Concat!14279 (regOne!18428 Regex!8958) (regTwo!18428 Regex!8958)) (EmptyExpr!8958) (Star!8958 (reg!9287 Regex!8958)) (EmptyLang!8958) (Union!8958 (regOne!18429 Regex!8958) (regTwo!18429 Regex!8958)) )
))
(declare-fun r!17423 () Regex!8958)

(declare-fun validRegex!3691 (Regex!8958) Bool)

(assert (=> start!283830 (= res!1202330 (validRegex!3691 r!17423))))

(assert (=> start!283830 e!1838342))

(assert (=> start!283830 e!1838341))

(declare-fun e!1838343 () Bool)

(assert (=> start!283830 e!1838343))

(declare-fun e!1838344 () Bool)

(declare-fun e!1838340 () Bool)

(assert (=> b!2912679 (= e!1838344 e!1838340)))

(declare-fun res!1202331 () Bool)

(assert (=> b!2912679 (=> res!1202331 e!1838340)))

(assert (=> b!2912679 (= res!1202331 (not (validRegex!3691 (regOne!18428 r!17423))))))

(declare-fun Exists!1338 (Int) Bool)

(assert (=> b!2912679 (= (Exists!1338 lambda!108181) (Exists!1338 lambda!108182))))

(declare-datatypes ((Unit!48255 0))(
  ( (Unit!48256) )
))
(declare-fun lt!1024071 () Unit!48255)

(declare-datatypes ((List!34823 0))(
  ( (Nil!34699) (Cons!34699 (h!40119 C!18102) (t!233888 List!34823)) )
))
(declare-fun s!11993 () List!34823)

(declare-fun lemmaExistCutMatchRandMatchRSpecEquivalent!479 (Regex!8958 Regex!8958 List!34823) Unit!48255)

(assert (=> b!2912679 (= lt!1024071 (lemmaExistCutMatchRandMatchRSpecEquivalent!479 (regOne!18428 r!17423) (regTwo!18428 r!17423) s!11993))))

(declare-datatypes ((tuple2!33654 0))(
  ( (tuple2!33655 (_1!19959 List!34823) (_2!19959 List!34823)) )
))
(declare-datatypes ((Option!6559 0))(
  ( (None!6558) (Some!6558 (v!34692 tuple2!33654)) )
))
(declare-fun isDefined!5110 (Option!6559) Bool)

(declare-fun findConcatSeparation!953 (Regex!8958 Regex!8958 List!34823 List!34823 List!34823) Option!6559)

(assert (=> b!2912679 (= (isDefined!5110 (findConcatSeparation!953 (regOne!18428 r!17423) (regTwo!18428 r!17423) Nil!34699 s!11993 s!11993)) (Exists!1338 lambda!108181))))

(declare-fun lt!1024070 () Unit!48255)

(declare-fun lemmaFindConcatSeparationEquivalentToExists!735 (Regex!8958 Regex!8958 List!34823) Unit!48255)

(assert (=> b!2912679 (= lt!1024070 (lemmaFindConcatSeparationEquivalentToExists!735 (regOne!18428 r!17423) (regTwo!18428 r!17423) s!11993))))

(declare-fun b!2912680 () Bool)

(declare-fun tp_is_empty!15479 () Bool)

(assert (=> b!2912680 (= e!1838341 tp_is_empty!15479)))

(declare-fun b!2912681 () Bool)

(declare-fun ++!8271 (List!34823 List!34823) List!34823)

(assert (=> b!2912681 (= e!1838340 (= (++!8271 Nil!34699 s!11993) s!11993))))

(declare-fun b!2912682 () Bool)

(declare-fun tp!935727 () Bool)

(declare-fun tp!935731 () Bool)

(assert (=> b!2912682 (= e!1838341 (and tp!935727 tp!935731))))

(declare-fun b!2912683 () Bool)

(assert (=> b!2912683 (= e!1838342 (not e!1838344))))

(declare-fun res!1202329 () Bool)

(assert (=> b!2912683 (=> res!1202329 e!1838344)))

(declare-fun lt!1024072 () Bool)

(assert (=> b!2912683 (= res!1202329 (or (not lt!1024072) (not (is-Concat!14279 r!17423))))))

(declare-fun matchRSpec!1095 (Regex!8958 List!34823) Bool)

(assert (=> b!2912683 (= lt!1024072 (matchRSpec!1095 r!17423 s!11993))))

(declare-fun matchR!3840 (Regex!8958 List!34823) Bool)

(assert (=> b!2912683 (= lt!1024072 (matchR!3840 r!17423 s!11993))))

(declare-fun lt!1024073 () Unit!48255)

(declare-fun mainMatchTheorem!1095 (Regex!8958 List!34823) Unit!48255)

(assert (=> b!2912683 (= lt!1024073 (mainMatchTheorem!1095 r!17423 s!11993))))

(declare-fun b!2912684 () Bool)

(declare-fun res!1202333 () Bool)

(assert (=> b!2912684 (=> res!1202333 e!1838340)))

(assert (=> b!2912684 (= res!1202333 (not (validRegex!3691 (regTwo!18428 r!17423))))))

(declare-fun b!2912685 () Bool)

(declare-fun res!1202332 () Bool)

(assert (=> b!2912685 (=> res!1202332 e!1838344)))

(declare-fun isEmpty!18943 (List!34823) Bool)

(assert (=> b!2912685 (= res!1202332 (isEmpty!18943 s!11993))))

(declare-fun b!2912686 () Bool)

(declare-fun tp!935728 () Bool)

(assert (=> b!2912686 (= e!1838343 (and tp_is_empty!15479 tp!935728))))

(declare-fun b!2912687 () Bool)

(declare-fun tp!935730 () Bool)

(assert (=> b!2912687 (= e!1838341 tp!935730)))

(assert (= (and start!283830 res!1202330) b!2912683))

(assert (= (and b!2912683 (not res!1202329)) b!2912685))

(assert (= (and b!2912685 (not res!1202332)) b!2912679))

(assert (= (and b!2912679 (not res!1202331)) b!2912684))

(assert (= (and b!2912684 (not res!1202333)) b!2912681))

(assert (= (and start!283830 (is-ElementMatch!8958 r!17423)) b!2912680))

(assert (= (and start!283830 (is-Concat!14279 r!17423)) b!2912678))

(assert (= (and start!283830 (is-Star!8958 r!17423)) b!2912687))

(assert (= (and start!283830 (is-Union!8958 r!17423)) b!2912682))

(assert (= (and start!283830 (is-Cons!34699 s!11993)) b!2912686))

(declare-fun m!3313161 () Bool)

(assert (=> b!2912684 m!3313161))

(declare-fun m!3313163 () Bool)

(assert (=> b!2912681 m!3313163))

(declare-fun m!3313165 () Bool)

(assert (=> start!283830 m!3313165))

(declare-fun m!3313167 () Bool)

(assert (=> b!2912685 m!3313167))

(declare-fun m!3313169 () Bool)

(assert (=> b!2912679 m!3313169))

(declare-fun m!3313171 () Bool)

(assert (=> b!2912679 m!3313171))

(declare-fun m!3313173 () Bool)

(assert (=> b!2912679 m!3313173))

(assert (=> b!2912679 m!3313169))

(declare-fun m!3313175 () Bool)

(assert (=> b!2912679 m!3313175))

(declare-fun m!3313177 () Bool)

(assert (=> b!2912679 m!3313177))

(declare-fun m!3313179 () Bool)

(assert (=> b!2912679 m!3313179))

(assert (=> b!2912679 m!3313175))

(declare-fun m!3313181 () Bool)

(assert (=> b!2912679 m!3313181))

(declare-fun m!3313183 () Bool)

(assert (=> b!2912683 m!3313183))

(declare-fun m!3313185 () Bool)

(assert (=> b!2912683 m!3313185))

(declare-fun m!3313187 () Bool)

(assert (=> b!2912683 m!3313187))

(push 1)

(assert (not b!2912683))

(assert (not b!2912679))

(assert (not b!2912685))

(assert tp_is_empty!15479)

(assert (not b!2912686))

(assert (not b!2912681))

(assert (not b!2912682))

(assert (not b!2912678))

(assert (not b!2912684))

(assert (not start!283830))

(assert (not b!2912687))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun b!2912748 () Bool)

(declare-fun res!1202365 () Bool)

(declare-fun e!1838371 () Bool)

(assert (=> b!2912748 (=> (not res!1202365) (not e!1838371))))

(declare-fun lt!1024088 () List!34823)

(declare-fun size!26435 (List!34823) Int)

(assert (=> b!2912748 (= res!1202365 (= (size!26435 lt!1024088) (+ (size!26435 Nil!34699) (size!26435 s!11993))))))

(declare-fun d!837777 () Bool)

(assert (=> d!837777 e!1838371))

(declare-fun res!1202366 () Bool)

(assert (=> d!837777 (=> (not res!1202366) (not e!1838371))))

(declare-fun content!4746 (List!34823) (Set C!18102))

(assert (=> d!837777 (= res!1202366 (= (content!4746 lt!1024088) (set.union (content!4746 Nil!34699) (content!4746 s!11993))))))

(declare-fun e!1838370 () List!34823)

(assert (=> d!837777 (= lt!1024088 e!1838370)))

(declare-fun c!474974 () Bool)

(assert (=> d!837777 (= c!474974 (is-Nil!34699 Nil!34699))))

(assert (=> d!837777 (= (++!8271 Nil!34699 s!11993) lt!1024088)))

(declare-fun b!2912749 () Bool)

(assert (=> b!2912749 (= e!1838371 (or (not (= s!11993 Nil!34699)) (= lt!1024088 Nil!34699)))))

(declare-fun b!2912746 () Bool)

(assert (=> b!2912746 (= e!1838370 s!11993)))

(declare-fun b!2912747 () Bool)

(assert (=> b!2912747 (= e!1838370 (Cons!34699 (h!40119 Nil!34699) (++!8271 (t!233888 Nil!34699) s!11993)))))

(assert (= (and d!837777 c!474974) b!2912746))

(assert (= (and d!837777 (not c!474974)) b!2912747))

(assert (= (and d!837777 res!1202366) b!2912748))

(assert (= (and b!2912748 res!1202365) b!2912749))

(declare-fun m!3313217 () Bool)

(assert (=> b!2912748 m!3313217))

(declare-fun m!3313219 () Bool)

(assert (=> b!2912748 m!3313219))

(declare-fun m!3313221 () Bool)

(assert (=> b!2912748 m!3313221))

(declare-fun m!3313223 () Bool)

(assert (=> d!837777 m!3313223))

(declare-fun m!3313225 () Bool)

(assert (=> d!837777 m!3313225))

(declare-fun m!3313227 () Bool)

(assert (=> d!837777 m!3313227))

(declare-fun m!3313229 () Bool)

(assert (=> b!2912747 m!3313229))

(assert (=> b!2912681 d!837777))

(declare-fun d!837779 () Bool)

(assert (=> d!837779 (= (isEmpty!18943 s!11993) (is-Nil!34699 s!11993))))

(assert (=> b!2912685 d!837779))

(declare-fun d!837781 () Bool)

(declare-fun choose!17134 (Int) Bool)

(assert (=> d!837781 (= (Exists!1338 lambda!108181) (choose!17134 lambda!108181))))

(declare-fun bs!524623 () Bool)

(assert (= bs!524623 d!837781))

(declare-fun m!3313231 () Bool)

(assert (=> bs!524623 m!3313231))

(assert (=> b!2912679 d!837781))

(declare-fun d!837783 () Bool)

(assert (=> d!837783 (= (Exists!1338 lambda!108182) (choose!17134 lambda!108182))))

(declare-fun bs!524624 () Bool)

(assert (= bs!524624 d!837783))

(declare-fun m!3313233 () Bool)

(assert (=> bs!524624 m!3313233))

(assert (=> b!2912679 d!837783))

(declare-fun d!837785 () Bool)

(declare-fun isEmpty!18945 (Option!6559) Bool)

(assert (=> d!837785 (= (isDefined!5110 (findConcatSeparation!953 (regOne!18428 r!17423) (regTwo!18428 r!17423) Nil!34699 s!11993 s!11993)) (not (isEmpty!18945 (findConcatSeparation!953 (regOne!18428 r!17423) (regTwo!18428 r!17423) Nil!34699 s!11993 s!11993))))))

(declare-fun bs!524625 () Bool)

(assert (= bs!524625 d!837785))

(assert (=> bs!524625 m!3313175))

(declare-fun m!3313235 () Bool)

(assert (=> bs!524625 m!3313235))

(assert (=> b!2912679 d!837785))

(declare-fun bs!524626 () Bool)

(declare-fun d!837787 () Bool)

(assert (= bs!524626 (and d!837787 b!2912679)))

(declare-fun lambda!108195 () Int)

(assert (=> bs!524626 (= lambda!108195 lambda!108181)))

(assert (=> bs!524626 (not (= lambda!108195 lambda!108182))))

(assert (=> d!837787 true))

(assert (=> d!837787 true))

(assert (=> d!837787 true))

(declare-fun lambda!108196 () Int)

(assert (=> bs!524626 (not (= lambda!108196 lambda!108181))))

(assert (=> bs!524626 (= lambda!108196 lambda!108182)))

(declare-fun bs!524627 () Bool)

(assert (= bs!524627 d!837787))

(assert (=> bs!524627 (not (= lambda!108196 lambda!108195))))

(assert (=> d!837787 true))

(assert (=> d!837787 true))

(assert (=> d!837787 true))

(assert (=> d!837787 (= (Exists!1338 lambda!108195) (Exists!1338 lambda!108196))))

(declare-fun lt!1024091 () Unit!48255)

(declare-fun choose!17135 (Regex!8958 Regex!8958 List!34823) Unit!48255)

(assert (=> d!837787 (= lt!1024091 (choose!17135 (regOne!18428 r!17423) (regTwo!18428 r!17423) s!11993))))

(assert (=> d!837787 (validRegex!3691 (regOne!18428 r!17423))))

(assert (=> d!837787 (= (lemmaExistCutMatchRandMatchRSpecEquivalent!479 (regOne!18428 r!17423) (regTwo!18428 r!17423) s!11993) lt!1024091)))

(declare-fun m!3313237 () Bool)

(assert (=> bs!524627 m!3313237))

(declare-fun m!3313239 () Bool)

(assert (=> bs!524627 m!3313239))

(declare-fun m!3313241 () Bool)

(assert (=> bs!524627 m!3313241))

(assert (=> bs!524627 m!3313173))

(assert (=> b!2912679 d!837787))

(declare-fun c!474983 () Bool)

(declare-fun c!474982 () Bool)

(declare-fun bm!190174 () Bool)

(declare-fun call!190179 () Bool)

(assert (=> bm!190174 (= call!190179 (validRegex!3691 (ite c!474982 (reg!9287 (regOne!18428 r!17423)) (ite c!474983 (regTwo!18429 (regOne!18428 r!17423)) (regOne!18428 (regOne!18428 r!17423))))))))

(declare-fun b!2912788 () Bool)

(declare-fun res!1202393 () Bool)

(declare-fun e!1838400 () Bool)

(assert (=> b!2912788 (=> res!1202393 e!1838400)))

(assert (=> b!2912788 (= res!1202393 (not (is-Concat!14279 (regOne!18428 r!17423))))))

(declare-fun e!1838402 () Bool)

(assert (=> b!2912788 (= e!1838402 e!1838400)))

(declare-fun b!2912790 () Bool)

(declare-fun e!1838398 () Bool)

(assert (=> b!2912790 (= e!1838400 e!1838398)))

(declare-fun res!1202392 () Bool)

(assert (=> b!2912790 (=> (not res!1202392) (not e!1838398))))

(declare-fun call!190180 () Bool)

(assert (=> b!2912790 (= res!1202392 call!190180)))

(declare-fun b!2912791 () Bool)

(declare-fun res!1202395 () Bool)

(declare-fun e!1838401 () Bool)

(assert (=> b!2912791 (=> (not res!1202395) (not e!1838401))))

(declare-fun call!190181 () Bool)

(assert (=> b!2912791 (= res!1202395 call!190181)))

(assert (=> b!2912791 (= e!1838402 e!1838401)))

(declare-fun bm!190175 () Bool)

(assert (=> bm!190175 (= call!190180 call!190179)))

(declare-fun b!2912792 () Bool)

(declare-fun e!1838397 () Bool)

(declare-fun e!1838399 () Bool)

(assert (=> b!2912792 (= e!1838397 e!1838399)))

(declare-fun res!1202391 () Bool)

(declare-fun nullable!2796 (Regex!8958) Bool)

(assert (=> b!2912792 (= res!1202391 (not (nullable!2796 (reg!9287 (regOne!18428 r!17423)))))))

(assert (=> b!2912792 (=> (not res!1202391) (not e!1838399))))

(declare-fun b!2912793 () Bool)

(assert (=> b!2912793 (= e!1838397 e!1838402)))

(assert (=> b!2912793 (= c!474983 (is-Union!8958 (regOne!18428 r!17423)))))

(declare-fun bm!190176 () Bool)

(assert (=> bm!190176 (= call!190181 (validRegex!3691 (ite c!474983 (regOne!18429 (regOne!18428 r!17423)) (regTwo!18428 (regOne!18428 r!17423)))))))

(declare-fun b!2912794 () Bool)

(assert (=> b!2912794 (= e!1838399 call!190179)))

(declare-fun b!2912795 () Bool)

(assert (=> b!2912795 (= e!1838401 call!190180)))

(declare-fun b!2912796 () Bool)

(declare-fun e!1838396 () Bool)

(assert (=> b!2912796 (= e!1838396 e!1838397)))

(assert (=> b!2912796 (= c!474982 (is-Star!8958 (regOne!18428 r!17423)))))

(declare-fun b!2912789 () Bool)

(assert (=> b!2912789 (= e!1838398 call!190181)))

(declare-fun d!837791 () Bool)

(declare-fun res!1202394 () Bool)

(assert (=> d!837791 (=> res!1202394 e!1838396)))

(assert (=> d!837791 (= res!1202394 (is-ElementMatch!8958 (regOne!18428 r!17423)))))

(assert (=> d!837791 (= (validRegex!3691 (regOne!18428 r!17423)) e!1838396)))

(assert (= (and d!837791 (not res!1202394)) b!2912796))

(assert (= (and b!2912796 c!474982) b!2912792))

(assert (= (and b!2912796 (not c!474982)) b!2912793))

(assert (= (and b!2912792 res!1202391) b!2912794))

(assert (= (and b!2912793 c!474983) b!2912791))

(assert (= (and b!2912793 (not c!474983)) b!2912788))

(assert (= (and b!2912791 res!1202395) b!2912795))

(assert (= (and b!2912788 (not res!1202393)) b!2912790))

(assert (= (and b!2912790 res!1202392) b!2912789))

(assert (= (or b!2912791 b!2912789) bm!190176))

(assert (= (or b!2912795 b!2912790) bm!190175))

(assert (= (or b!2912794 bm!190175) bm!190174))

(declare-fun m!3313257 () Bool)

(assert (=> bm!190174 m!3313257))

(declare-fun m!3313259 () Bool)

(assert (=> b!2912792 m!3313259))

(declare-fun m!3313261 () Bool)

(assert (=> bm!190176 m!3313261))

(assert (=> b!2912679 d!837791))

(declare-fun b!2912842 () Bool)

(declare-fun res!1202425 () Bool)

(declare-fun e!1838437 () Bool)

(assert (=> b!2912842 (=> (not res!1202425) (not e!1838437))))

(declare-fun lt!1024101 () Option!6559)

(declare-fun get!10541 (Option!6559) tuple2!33654)

(assert (=> b!2912842 (= res!1202425 (matchR!3840 (regTwo!18428 r!17423) (_2!19959 (get!10541 lt!1024101))))))

(declare-fun b!2912843 () Bool)

(declare-fun e!1838435 () Option!6559)

(declare-fun e!1838438 () Option!6559)

(assert (=> b!2912843 (= e!1838435 e!1838438)))

(declare-fun c!474994 () Bool)

(assert (=> b!2912843 (= c!474994 (is-Nil!34699 s!11993))))

(declare-fun b!2912844 () Bool)

(assert (=> b!2912844 (= e!1838435 (Some!6558 (tuple2!33655 Nil!34699 s!11993)))))

(declare-fun b!2912845 () Bool)

(declare-fun res!1202424 () Bool)

(assert (=> b!2912845 (=> (not res!1202424) (not e!1838437))))

(assert (=> b!2912845 (= res!1202424 (matchR!3840 (regOne!18428 r!17423) (_1!19959 (get!10541 lt!1024101))))))

(declare-fun b!2912846 () Bool)

(assert (=> b!2912846 (= e!1838438 None!6558)))

(declare-fun b!2912847 () Bool)

(declare-fun e!1838434 () Bool)

(assert (=> b!2912847 (= e!1838434 (matchR!3840 (regTwo!18428 r!17423) s!11993))))

(declare-fun b!2912848 () Bool)

(declare-fun e!1838436 () Bool)

(assert (=> b!2912848 (= e!1838436 (not (isDefined!5110 lt!1024101)))))

(declare-fun d!837795 () Bool)

(assert (=> d!837795 e!1838436))

(declare-fun res!1202422 () Bool)

(assert (=> d!837795 (=> res!1202422 e!1838436)))

(assert (=> d!837795 (= res!1202422 e!1838437)))

(declare-fun res!1202423 () Bool)

(assert (=> d!837795 (=> (not res!1202423) (not e!1838437))))

(assert (=> d!837795 (= res!1202423 (isDefined!5110 lt!1024101))))

(assert (=> d!837795 (= lt!1024101 e!1838435)))

(declare-fun c!474995 () Bool)

(assert (=> d!837795 (= c!474995 e!1838434)))

(declare-fun res!1202421 () Bool)

(assert (=> d!837795 (=> (not res!1202421) (not e!1838434))))

(assert (=> d!837795 (= res!1202421 (matchR!3840 (regOne!18428 r!17423) Nil!34699))))

(assert (=> d!837795 (validRegex!3691 (regOne!18428 r!17423))))

(assert (=> d!837795 (= (findConcatSeparation!953 (regOne!18428 r!17423) (regTwo!18428 r!17423) Nil!34699 s!11993 s!11993) lt!1024101)))

(declare-fun b!2912849 () Bool)

(assert (=> b!2912849 (= e!1838437 (= (++!8271 (_1!19959 (get!10541 lt!1024101)) (_2!19959 (get!10541 lt!1024101))) s!11993))))

(declare-fun b!2912850 () Bool)

(declare-fun lt!1024102 () Unit!48255)

(declare-fun lt!1024103 () Unit!48255)

(assert (=> b!2912850 (= lt!1024102 lt!1024103)))

(assert (=> b!2912850 (= (++!8271 (++!8271 Nil!34699 (Cons!34699 (h!40119 s!11993) Nil!34699)) (t!233888 s!11993)) s!11993)))

(declare-fun lemmaMoveElementToOtherListKeepsConcatEq!908 (List!34823 C!18102 List!34823 List!34823) Unit!48255)

(assert (=> b!2912850 (= lt!1024103 (lemmaMoveElementToOtherListKeepsConcatEq!908 Nil!34699 (h!40119 s!11993) (t!233888 s!11993) s!11993))))

(assert (=> b!2912850 (= e!1838438 (findConcatSeparation!953 (regOne!18428 r!17423) (regTwo!18428 r!17423) (++!8271 Nil!34699 (Cons!34699 (h!40119 s!11993) Nil!34699)) (t!233888 s!11993) s!11993))))

(assert (= (and d!837795 res!1202421) b!2912847))

(assert (= (and d!837795 c!474995) b!2912844))

(assert (= (and d!837795 (not c!474995)) b!2912843))

(assert (= (and b!2912843 c!474994) b!2912846))

(assert (= (and b!2912843 (not c!474994)) b!2912850))

(assert (= (and d!837795 res!1202423) b!2912845))

(assert (= (and b!2912845 res!1202424) b!2912842))

(assert (= (and b!2912842 res!1202425) b!2912849))

(assert (= (and d!837795 (not res!1202422)) b!2912848))

(declare-fun m!3313269 () Bool)

(assert (=> d!837795 m!3313269))

(declare-fun m!3313271 () Bool)

(assert (=> d!837795 m!3313271))

(assert (=> d!837795 m!3313173))

(declare-fun m!3313273 () Bool)

(assert (=> b!2912842 m!3313273))

(declare-fun m!3313275 () Bool)

(assert (=> b!2912842 m!3313275))

(assert (=> b!2912848 m!3313269))

(assert (=> b!2912849 m!3313273))

(declare-fun m!3313277 () Bool)

(assert (=> b!2912849 m!3313277))

(assert (=> b!2912845 m!3313273))

(declare-fun m!3313279 () Bool)

(assert (=> b!2912845 m!3313279))

(declare-fun m!3313281 () Bool)

(assert (=> b!2912850 m!3313281))

(assert (=> b!2912850 m!3313281))

(declare-fun m!3313283 () Bool)

(assert (=> b!2912850 m!3313283))

(declare-fun m!3313285 () Bool)

(assert (=> b!2912850 m!3313285))

(assert (=> b!2912850 m!3313281))

(declare-fun m!3313287 () Bool)

(assert (=> b!2912850 m!3313287))

(declare-fun m!3313289 () Bool)

(assert (=> b!2912847 m!3313289))

(assert (=> b!2912679 d!837795))

(declare-fun bs!524628 () Bool)

(declare-fun d!837799 () Bool)

(assert (= bs!524628 (and d!837799 b!2912679)))

(declare-fun lambda!108199 () Int)

(assert (=> bs!524628 (= lambda!108199 lambda!108181)))

(assert (=> bs!524628 (not (= lambda!108199 lambda!108182))))

(declare-fun bs!524629 () Bool)

(assert (= bs!524629 (and d!837799 d!837787)))

(assert (=> bs!524629 (= lambda!108199 lambda!108195)))

(assert (=> bs!524629 (not (= lambda!108199 lambda!108196))))

(assert (=> d!837799 true))

(assert (=> d!837799 true))

(assert (=> d!837799 true))

(assert (=> d!837799 (= (isDefined!5110 (findConcatSeparation!953 (regOne!18428 r!17423) (regTwo!18428 r!17423) Nil!34699 s!11993 s!11993)) (Exists!1338 lambda!108199))))

(declare-fun lt!1024106 () Unit!48255)

(declare-fun choose!17136 (Regex!8958 Regex!8958 List!34823) Unit!48255)

(assert (=> d!837799 (= lt!1024106 (choose!17136 (regOne!18428 r!17423) (regTwo!18428 r!17423) s!11993))))

(assert (=> d!837799 (validRegex!3691 (regOne!18428 r!17423))))

(assert (=> d!837799 (= (lemmaFindConcatSeparationEquivalentToExists!735 (regOne!18428 r!17423) (regTwo!18428 r!17423) s!11993) lt!1024106)))

(declare-fun bs!524630 () Bool)

(assert (= bs!524630 d!837799))

(assert (=> bs!524630 m!3313173))

(assert (=> bs!524630 m!3313175))

(assert (=> bs!524630 m!3313177))

(assert (=> bs!524630 m!3313175))

(declare-fun m!3313297 () Bool)

(assert (=> bs!524630 m!3313297))

(declare-fun m!3313299 () Bool)

(assert (=> bs!524630 m!3313299))

(assert (=> b!2912679 d!837799))

(declare-fun call!190194 () Bool)

(declare-fun c!474998 () Bool)

(declare-fun bm!190189 () Bool)

(declare-fun c!474999 () Bool)

(assert (=> bm!190189 (= call!190194 (validRegex!3691 (ite c!474998 (reg!9287 (regTwo!18428 r!17423)) (ite c!474999 (regTwo!18429 (regTwo!18428 r!17423)) (regOne!18428 (regTwo!18428 r!17423))))))))

(declare-fun b!2912864 () Bool)

(declare-fun res!1202437 () Bool)

(declare-fun e!1838452 () Bool)

(assert (=> b!2912864 (=> res!1202437 e!1838452)))

(assert (=> b!2912864 (= res!1202437 (not (is-Concat!14279 (regTwo!18428 r!17423))))))

(declare-fun e!1838454 () Bool)

(assert (=> b!2912864 (= e!1838454 e!1838452)))

(declare-fun b!2912866 () Bool)

(declare-fun e!1838450 () Bool)

(assert (=> b!2912866 (= e!1838452 e!1838450)))

(declare-fun res!1202436 () Bool)

(assert (=> b!2912866 (=> (not res!1202436) (not e!1838450))))

(declare-fun call!190195 () Bool)

(assert (=> b!2912866 (= res!1202436 call!190195)))

(declare-fun b!2912867 () Bool)

(declare-fun res!1202439 () Bool)

(declare-fun e!1838453 () Bool)

(assert (=> b!2912867 (=> (not res!1202439) (not e!1838453))))

(declare-fun call!190196 () Bool)

(assert (=> b!2912867 (= res!1202439 call!190196)))

(assert (=> b!2912867 (= e!1838454 e!1838453)))

(declare-fun bm!190190 () Bool)

(assert (=> bm!190190 (= call!190195 call!190194)))

(declare-fun b!2912868 () Bool)

(declare-fun e!1838449 () Bool)

(declare-fun e!1838451 () Bool)

(assert (=> b!2912868 (= e!1838449 e!1838451)))

(declare-fun res!1202435 () Bool)

(assert (=> b!2912868 (= res!1202435 (not (nullable!2796 (reg!9287 (regTwo!18428 r!17423)))))))

(assert (=> b!2912868 (=> (not res!1202435) (not e!1838451))))

(declare-fun b!2912869 () Bool)

(assert (=> b!2912869 (= e!1838449 e!1838454)))

(assert (=> b!2912869 (= c!474999 (is-Union!8958 (regTwo!18428 r!17423)))))

(declare-fun bm!190191 () Bool)

(assert (=> bm!190191 (= call!190196 (validRegex!3691 (ite c!474999 (regOne!18429 (regTwo!18428 r!17423)) (regTwo!18428 (regTwo!18428 r!17423)))))))

(declare-fun b!2912870 () Bool)

(assert (=> b!2912870 (= e!1838451 call!190194)))

(declare-fun b!2912871 () Bool)

(assert (=> b!2912871 (= e!1838453 call!190195)))

(declare-fun b!2912872 () Bool)

(declare-fun e!1838448 () Bool)

(assert (=> b!2912872 (= e!1838448 e!1838449)))

(assert (=> b!2912872 (= c!474998 (is-Star!8958 (regTwo!18428 r!17423)))))

(declare-fun b!2912865 () Bool)

(assert (=> b!2912865 (= e!1838450 call!190196)))

(declare-fun d!837805 () Bool)

(declare-fun res!1202438 () Bool)

(assert (=> d!837805 (=> res!1202438 e!1838448)))

(assert (=> d!837805 (= res!1202438 (is-ElementMatch!8958 (regTwo!18428 r!17423)))))

(assert (=> d!837805 (= (validRegex!3691 (regTwo!18428 r!17423)) e!1838448)))

(assert (= (and d!837805 (not res!1202438)) b!2912872))

(assert (= (and b!2912872 c!474998) b!2912868))

(assert (= (and b!2912872 (not c!474998)) b!2912869))

(assert (= (and b!2912868 res!1202435) b!2912870))

(assert (= (and b!2912869 c!474999) b!2912867))

(assert (= (and b!2912869 (not c!474999)) b!2912864))

(assert (= (and b!2912867 res!1202439) b!2912871))

(assert (= (and b!2912864 (not res!1202437)) b!2912866))

(assert (= (and b!2912866 res!1202436) b!2912865))

(assert (= (or b!2912867 b!2912865) bm!190191))

(assert (= (or b!2912871 b!2912866) bm!190190))

(assert (= (or b!2912870 bm!190190) bm!190189))

(declare-fun m!3313301 () Bool)

(assert (=> bm!190189 m!3313301))

(declare-fun m!3313303 () Bool)

(assert (=> b!2912868 m!3313303))

(declare-fun m!3313305 () Bool)

(assert (=> bm!190191 m!3313305))

(assert (=> b!2912684 d!837805))

(declare-fun c!475000 () Bool)

(declare-fun call!190197 () Bool)

(declare-fun c!475001 () Bool)

(declare-fun bm!190192 () Bool)

(assert (=> bm!190192 (= call!190197 (validRegex!3691 (ite c!475000 (reg!9287 r!17423) (ite c!475001 (regTwo!18429 r!17423) (regOne!18428 r!17423)))))))

(declare-fun b!2912873 () Bool)

(declare-fun res!1202442 () Bool)

(declare-fun e!1838459 () Bool)

(assert (=> b!2912873 (=> res!1202442 e!1838459)))

(assert (=> b!2912873 (= res!1202442 (not (is-Concat!14279 r!17423)))))

(declare-fun e!1838461 () Bool)

(assert (=> b!2912873 (= e!1838461 e!1838459)))

(declare-fun b!2912875 () Bool)

(declare-fun e!1838457 () Bool)

(assert (=> b!2912875 (= e!1838459 e!1838457)))

(declare-fun res!1202441 () Bool)

(assert (=> b!2912875 (=> (not res!1202441) (not e!1838457))))

(declare-fun call!190198 () Bool)

(assert (=> b!2912875 (= res!1202441 call!190198)))

(declare-fun b!2912876 () Bool)

(declare-fun res!1202444 () Bool)

(declare-fun e!1838460 () Bool)

(assert (=> b!2912876 (=> (not res!1202444) (not e!1838460))))

(declare-fun call!190199 () Bool)

(assert (=> b!2912876 (= res!1202444 call!190199)))

(assert (=> b!2912876 (= e!1838461 e!1838460)))

(declare-fun bm!190193 () Bool)

(assert (=> bm!190193 (= call!190198 call!190197)))

(declare-fun b!2912877 () Bool)

(declare-fun e!1838456 () Bool)

(declare-fun e!1838458 () Bool)

(assert (=> b!2912877 (= e!1838456 e!1838458)))

(declare-fun res!1202440 () Bool)

(assert (=> b!2912877 (= res!1202440 (not (nullable!2796 (reg!9287 r!17423))))))

(assert (=> b!2912877 (=> (not res!1202440) (not e!1838458))))

(declare-fun b!2912878 () Bool)

(assert (=> b!2912878 (= e!1838456 e!1838461)))

(assert (=> b!2912878 (= c!475001 (is-Union!8958 r!17423))))

(declare-fun bm!190194 () Bool)

(assert (=> bm!190194 (= call!190199 (validRegex!3691 (ite c!475001 (regOne!18429 r!17423) (regTwo!18428 r!17423))))))

(declare-fun b!2912879 () Bool)

(assert (=> b!2912879 (= e!1838458 call!190197)))

(declare-fun b!2912880 () Bool)

(assert (=> b!2912880 (= e!1838460 call!190198)))

(declare-fun b!2912881 () Bool)

(declare-fun e!1838455 () Bool)

(assert (=> b!2912881 (= e!1838455 e!1838456)))

(assert (=> b!2912881 (= c!475000 (is-Star!8958 r!17423))))

(declare-fun b!2912874 () Bool)

(assert (=> b!2912874 (= e!1838457 call!190199)))

(declare-fun d!837807 () Bool)

(declare-fun res!1202443 () Bool)

(assert (=> d!837807 (=> res!1202443 e!1838455)))

(assert (=> d!837807 (= res!1202443 (is-ElementMatch!8958 r!17423))))

(assert (=> d!837807 (= (validRegex!3691 r!17423) e!1838455)))

(assert (= (and d!837807 (not res!1202443)) b!2912881))

(assert (= (and b!2912881 c!475000) b!2912877))

(assert (= (and b!2912881 (not c!475000)) b!2912878))

(assert (= (and b!2912877 res!1202440) b!2912879))

(assert (= (and b!2912878 c!475001) b!2912876))

(assert (= (and b!2912878 (not c!475001)) b!2912873))

(assert (= (and b!2912876 res!1202444) b!2912880))

(assert (= (and b!2912873 (not res!1202442)) b!2912875))

(assert (= (and b!2912875 res!1202441) b!2912874))

(assert (= (or b!2912876 b!2912874) bm!190194))

(assert (= (or b!2912880 b!2912875) bm!190193))

(assert (= (or b!2912879 bm!190193) bm!190192))

(declare-fun m!3313307 () Bool)

(assert (=> bm!190192 m!3313307))

(declare-fun m!3313309 () Bool)

(assert (=> b!2912877 m!3313309))

(declare-fun m!3313311 () Bool)

(assert (=> bm!190194 m!3313311))

(assert (=> start!283830 d!837807))

(declare-fun bs!524631 () Bool)

(declare-fun b!2912947 () Bool)

(assert (= bs!524631 (and b!2912947 b!2912679)))

(declare-fun lambda!108208 () Int)

(assert (=> bs!524631 (not (= lambda!108208 lambda!108182))))

(declare-fun bs!524632 () Bool)

(assert (= bs!524632 (and b!2912947 d!837799)))

(assert (=> bs!524632 (not (= lambda!108208 lambda!108199))))

(declare-fun bs!524633 () Bool)

(assert (= bs!524633 (and b!2912947 d!837787)))

(assert (=> bs!524633 (not (= lambda!108208 lambda!108195))))

(assert (=> bs!524633 (not (= lambda!108208 lambda!108196))))

(assert (=> bs!524631 (not (= lambda!108208 lambda!108181))))

(assert (=> b!2912947 true))

(assert (=> b!2912947 true))

(declare-fun bs!524634 () Bool)

(declare-fun b!2912948 () Bool)

(assert (= bs!524634 (and b!2912948 b!2912679)))

(declare-fun lambda!108209 () Int)

(assert (=> bs!524634 (= lambda!108209 lambda!108182)))

(declare-fun bs!524635 () Bool)

(assert (= bs!524635 (and b!2912948 d!837799)))

(assert (=> bs!524635 (not (= lambda!108209 lambda!108199))))

(declare-fun bs!524636 () Bool)

(assert (= bs!524636 (and b!2912948 b!2912947)))

(assert (=> bs!524636 (not (= lambda!108209 lambda!108208))))

(declare-fun bs!524637 () Bool)

(assert (= bs!524637 (and b!2912948 d!837787)))

(assert (=> bs!524637 (not (= lambda!108209 lambda!108195))))

(assert (=> bs!524637 (= lambda!108209 lambda!108196)))

(assert (=> bs!524634 (not (= lambda!108209 lambda!108181))))

(assert (=> b!2912948 true))

(assert (=> b!2912948 true))

(declare-fun bm!190199 () Bool)

(declare-fun call!190204 () Bool)

(assert (=> bm!190199 (= call!190204 (isEmpty!18943 s!11993))))

(declare-fun b!2912946 () Bool)

(declare-fun e!1838502 () Bool)

(assert (=> b!2912946 (= e!1838502 (matchRSpec!1095 (regTwo!18429 r!17423) s!11993))))

(declare-fun e!1838499 () Bool)

(declare-fun call!190205 () Bool)

(assert (=> b!2912947 (= e!1838499 call!190205)))

(declare-fun e!1838498 () Bool)

(assert (=> b!2912948 (= e!1838498 call!190205)))

(declare-fun b!2912949 () Bool)

(declare-fun c!475019 () Bool)

(assert (=> b!2912949 (= c!475019 (is-ElementMatch!8958 r!17423))))

(declare-fun e!1838500 () Bool)

(declare-fun e!1838503 () Bool)

(assert (=> b!2912949 (= e!1838500 e!1838503)))

(declare-fun c!475018 () Bool)

(declare-fun bm!190200 () Bool)

(assert (=> bm!190200 (= call!190205 (Exists!1338 (ite c!475018 lambda!108208 lambda!108209)))))

(declare-fun b!2912950 () Bool)

(declare-fun e!1838504 () Bool)

(assert (=> b!2912950 (= e!1838504 call!190204)))

(declare-fun b!2912951 () Bool)

(assert (=> b!2912951 (= e!1838503 (= s!11993 (Cons!34699 (c!474970 r!17423) Nil!34699)))))

(declare-fun d!837809 () Bool)

(declare-fun c!475021 () Bool)

(assert (=> d!837809 (= c!475021 (is-EmptyExpr!8958 r!17423))))

(assert (=> d!837809 (= (matchRSpec!1095 r!17423 s!11993) e!1838504)))

(declare-fun b!2912952 () Bool)

(declare-fun e!1838501 () Bool)

(assert (=> b!2912952 (= e!1838501 e!1838498)))

(assert (=> b!2912952 (= c!475018 (is-Star!8958 r!17423))))

(declare-fun b!2912953 () Bool)

(declare-fun res!1202479 () Bool)

(assert (=> b!2912953 (=> res!1202479 e!1838499)))

(assert (=> b!2912953 (= res!1202479 call!190204)))

(assert (=> b!2912953 (= e!1838498 e!1838499)))

(declare-fun b!2912954 () Bool)

(declare-fun c!475020 () Bool)

(assert (=> b!2912954 (= c!475020 (is-Union!8958 r!17423))))

(assert (=> b!2912954 (= e!1838503 e!1838501)))

(declare-fun b!2912955 () Bool)

(assert (=> b!2912955 (= e!1838504 e!1838500)))

(declare-fun res!1202478 () Bool)

(assert (=> b!2912955 (= res!1202478 (not (is-EmptyLang!8958 r!17423)))))

(assert (=> b!2912955 (=> (not res!1202478) (not e!1838500))))

(declare-fun b!2912956 () Bool)

(assert (=> b!2912956 (= e!1838501 e!1838502)))

(declare-fun res!1202477 () Bool)

(assert (=> b!2912956 (= res!1202477 (matchRSpec!1095 (regOne!18429 r!17423) s!11993))))

(assert (=> b!2912956 (=> res!1202477 e!1838502)))

(assert (= (and d!837809 c!475021) b!2912950))

(assert (= (and d!837809 (not c!475021)) b!2912955))

(assert (= (and b!2912955 res!1202478) b!2912949))

(assert (= (and b!2912949 c!475019) b!2912951))

(assert (= (and b!2912949 (not c!475019)) b!2912954))

(assert (= (and b!2912954 c!475020) b!2912956))

(assert (= (and b!2912954 (not c!475020)) b!2912952))

(assert (= (and b!2912956 (not res!1202477)) b!2912946))

(assert (= (and b!2912952 c!475018) b!2912953))

(assert (= (and b!2912952 (not c!475018)) b!2912948))

(assert (= (and b!2912953 (not res!1202479)) b!2912947))

(assert (= (or b!2912947 b!2912948) bm!190200))

(assert (= (or b!2912950 b!2912953) bm!190199))

(assert (=> bm!190199 m!3313167))

(declare-fun m!3313313 () Bool)

(assert (=> b!2912946 m!3313313))

(declare-fun m!3313315 () Bool)

(assert (=> bm!190200 m!3313315))

(declare-fun m!3313317 () Bool)

(assert (=> b!2912956 m!3313317))

(assert (=> b!2912683 d!837809))

(declare-fun b!2912996 () Bool)

(declare-fun e!1838526 () Bool)

(assert (=> b!2912996 (= e!1838526 (nullable!2796 r!17423))))

(declare-fun b!2912997 () Bool)

(declare-fun e!1838529 () Bool)

(declare-fun e!1838527 () Bool)

(assert (=> b!2912997 (= e!1838529 e!1838527)))

(declare-fun c!475032 () Bool)

(assert (=> b!2912997 (= c!475032 (is-EmptyLang!8958 r!17423))))

(declare-fun b!2912998 () Bool)

(declare-fun e!1838528 () Bool)

(declare-fun e!1838532 () Bool)

(assert (=> b!2912998 (= e!1838528 e!1838532)))

(declare-fun res!1202504 () Bool)

(assert (=> b!2912998 (=> res!1202504 e!1838532)))

(declare-fun call!190214 () Bool)

(assert (=> b!2912998 (= res!1202504 call!190214)))

(declare-fun b!2912999 () Bool)

(declare-fun res!1202499 () Bool)

(declare-fun e!1838530 () Bool)

(assert (=> b!2912999 (=> res!1202499 e!1838530)))

(assert (=> b!2912999 (= res!1202499 (not (is-ElementMatch!8958 r!17423)))))

(assert (=> b!2912999 (= e!1838527 e!1838530)))

(declare-fun b!2913000 () Bool)

(declare-fun res!1202506 () Bool)

(declare-fun e!1838531 () Bool)

(assert (=> b!2913000 (=> (not res!1202506) (not e!1838531))))

(assert (=> b!2913000 (= res!1202506 (not call!190214))))

(declare-fun b!2913001 () Bool)

(declare-fun lt!1024109 () Bool)

(assert (=> b!2913001 (= e!1838527 (not lt!1024109))))

(declare-fun b!2913002 () Bool)

(declare-fun res!1202505 () Bool)

(assert (=> b!2913002 (=> res!1202505 e!1838530)))

(assert (=> b!2913002 (= res!1202505 e!1838531)))

(declare-fun res!1202503 () Bool)

(assert (=> b!2913002 (=> (not res!1202503) (not e!1838531))))

(assert (=> b!2913002 (= res!1202503 lt!1024109)))

(declare-fun b!2913003 () Bool)

(declare-fun res!1202500 () Bool)

(assert (=> b!2913003 (=> (not res!1202500) (not e!1838531))))

(declare-fun tail!4696 (List!34823) List!34823)

(assert (=> b!2913003 (= res!1202500 (isEmpty!18943 (tail!4696 s!11993)))))

(declare-fun bm!190209 () Bool)

(assert (=> bm!190209 (= call!190214 (isEmpty!18943 s!11993))))

(declare-fun b!2913004 () Bool)

(declare-fun head!6469 (List!34823) C!18102)

(assert (=> b!2913004 (= e!1838531 (= (head!6469 s!11993) (c!474970 r!17423)))))

(declare-fun b!2913005 () Bool)

(assert (=> b!2913005 (= e!1838530 e!1838528)))

(declare-fun res!1202501 () Bool)

(assert (=> b!2913005 (=> (not res!1202501) (not e!1838528))))

(assert (=> b!2913005 (= res!1202501 (not lt!1024109))))

(declare-fun b!2913006 () Bool)

(assert (=> b!2913006 (= e!1838532 (not (= (head!6469 s!11993) (c!474970 r!17423))))))

(declare-fun d!837811 () Bool)

(assert (=> d!837811 e!1838529))

(declare-fun c!475033 () Bool)

(assert (=> d!837811 (= c!475033 (is-EmptyExpr!8958 r!17423))))

(assert (=> d!837811 (= lt!1024109 e!1838526)))

(declare-fun c!475034 () Bool)

(assert (=> d!837811 (= c!475034 (isEmpty!18943 s!11993))))

(assert (=> d!837811 (validRegex!3691 r!17423)))

(assert (=> d!837811 (= (matchR!3840 r!17423 s!11993) lt!1024109)))

(declare-fun b!2913007 () Bool)

(declare-fun derivativeStep!2411 (Regex!8958 C!18102) Regex!8958)

(assert (=> b!2913007 (= e!1838526 (matchR!3840 (derivativeStep!2411 r!17423 (head!6469 s!11993)) (tail!4696 s!11993)))))

(declare-fun b!2913008 () Bool)

(assert (=> b!2913008 (= e!1838529 (= lt!1024109 call!190214))))

(declare-fun b!2913009 () Bool)

(declare-fun res!1202502 () Bool)

(assert (=> b!2913009 (=> res!1202502 e!1838532)))

(assert (=> b!2913009 (= res!1202502 (not (isEmpty!18943 (tail!4696 s!11993))))))

(assert (= (and d!837811 c!475034) b!2912996))

(assert (= (and d!837811 (not c!475034)) b!2913007))

(assert (= (and d!837811 c!475033) b!2913008))

(assert (= (and d!837811 (not c!475033)) b!2912997))

(assert (= (and b!2912997 c!475032) b!2913001))

(assert (= (and b!2912997 (not c!475032)) b!2912999))

(assert (= (and b!2912999 (not res!1202499)) b!2913002))

(assert (= (and b!2913002 res!1202503) b!2913000))

(assert (= (and b!2913000 res!1202506) b!2913003))

(assert (= (and b!2913003 res!1202500) b!2913004))

(assert (= (and b!2913002 (not res!1202505)) b!2913005))

(assert (= (and b!2913005 res!1202501) b!2912998))

(assert (= (and b!2912998 (not res!1202504)) b!2913009))

(assert (= (and b!2913009 (not res!1202502)) b!2913006))

(assert (= (or b!2913008 b!2912998 b!2913000) bm!190209))

(declare-fun m!3313319 () Bool)

(assert (=> b!2913009 m!3313319))

(assert (=> b!2913009 m!3313319))

(declare-fun m!3313321 () Bool)

(assert (=> b!2913009 m!3313321))

(declare-fun m!3313323 () Bool)

(assert (=> b!2912996 m!3313323))

(assert (=> b!2913003 m!3313319))

(assert (=> b!2913003 m!3313319))

(assert (=> b!2913003 m!3313321))

(declare-fun m!3313325 () Bool)

(assert (=> b!2913006 m!3313325))

(assert (=> d!837811 m!3313167))

(assert (=> d!837811 m!3313165))

(assert (=> bm!190209 m!3313167))

(assert (=> b!2913007 m!3313325))

(assert (=> b!2913007 m!3313325))

(declare-fun m!3313327 () Bool)

(assert (=> b!2913007 m!3313327))

(assert (=> b!2913007 m!3313319))

(assert (=> b!2913007 m!3313327))

(assert (=> b!2913007 m!3313319))

(declare-fun m!3313329 () Bool)

(assert (=> b!2913007 m!3313329))

(assert (=> b!2913004 m!3313325))

(assert (=> b!2912683 d!837811))

(declare-fun d!837813 () Bool)

(assert (=> d!837813 (= (matchR!3840 r!17423 s!11993) (matchRSpec!1095 r!17423 s!11993))))

(declare-fun lt!1024112 () Unit!48255)

(declare-fun choose!17137 (Regex!8958 List!34823) Unit!48255)

(assert (=> d!837813 (= lt!1024112 (choose!17137 r!17423 s!11993))))

(assert (=> d!837813 (validRegex!3691 r!17423)))

(assert (=> d!837813 (= (mainMatchTheorem!1095 r!17423 s!11993) lt!1024112)))

(declare-fun bs!524641 () Bool)

(assert (= bs!524641 d!837813))

(assert (=> bs!524641 m!3313185))

(assert (=> bs!524641 m!3313183))

(declare-fun m!3313337 () Bool)

(assert (=> bs!524641 m!3313337))

(assert (=> bs!524641 m!3313165))

(assert (=> b!2912683 d!837813))

(declare-fun b!2913021 () Bool)

(declare-fun e!1838535 () Bool)

(declare-fun tp!935763 () Bool)

(declare-fun tp!935762 () Bool)

(assert (=> b!2913021 (= e!1838535 (and tp!935763 tp!935762))))

(declare-fun b!2913022 () Bool)

(declare-fun tp!935761 () Bool)

(assert (=> b!2913022 (= e!1838535 tp!935761)))

(declare-fun b!2913023 () Bool)

(declare-fun tp!935760 () Bool)

(declare-fun tp!935764 () Bool)

(assert (=> b!2913023 (= e!1838535 (and tp!935760 tp!935764))))

(declare-fun b!2913020 () Bool)

(assert (=> b!2913020 (= e!1838535 tp_is_empty!15479)))

(assert (=> b!2912682 (= tp!935727 e!1838535)))

(assert (= (and b!2912682 (is-ElementMatch!8958 (regOne!18429 r!17423))) b!2913020))

(assert (= (and b!2912682 (is-Concat!14279 (regOne!18429 r!17423))) b!2913021))

(assert (= (and b!2912682 (is-Star!8958 (regOne!18429 r!17423))) b!2913022))

(assert (= (and b!2912682 (is-Union!8958 (regOne!18429 r!17423))) b!2913023))

(declare-fun b!2913025 () Bool)

(declare-fun e!1838536 () Bool)

(declare-fun tp!935768 () Bool)

(declare-fun tp!935767 () Bool)

(assert (=> b!2913025 (= e!1838536 (and tp!935768 tp!935767))))

(declare-fun b!2913026 () Bool)

(declare-fun tp!935766 () Bool)

(assert (=> b!2913026 (= e!1838536 tp!935766)))

(declare-fun b!2913027 () Bool)

(declare-fun tp!935765 () Bool)

(declare-fun tp!935769 () Bool)

(assert (=> b!2913027 (= e!1838536 (and tp!935765 tp!935769))))

(declare-fun b!2913024 () Bool)

(assert (=> b!2913024 (= e!1838536 tp_is_empty!15479)))

(assert (=> b!2912682 (= tp!935731 e!1838536)))

(assert (= (and b!2912682 (is-ElementMatch!8958 (regTwo!18429 r!17423))) b!2913024))

(assert (= (and b!2912682 (is-Concat!14279 (regTwo!18429 r!17423))) b!2913025))

(assert (= (and b!2912682 (is-Star!8958 (regTwo!18429 r!17423))) b!2913026))

(assert (= (and b!2912682 (is-Union!8958 (regTwo!18429 r!17423))) b!2913027))

(declare-fun b!2913029 () Bool)

(declare-fun e!1838537 () Bool)

(declare-fun tp!935773 () Bool)

(declare-fun tp!935772 () Bool)

(assert (=> b!2913029 (= e!1838537 (and tp!935773 tp!935772))))

(declare-fun b!2913030 () Bool)

(declare-fun tp!935771 () Bool)

(assert (=> b!2913030 (= e!1838537 tp!935771)))

(declare-fun b!2913031 () Bool)

(declare-fun tp!935770 () Bool)

(declare-fun tp!935774 () Bool)

(assert (=> b!2913031 (= e!1838537 (and tp!935770 tp!935774))))

(declare-fun b!2913028 () Bool)

(assert (=> b!2913028 (= e!1838537 tp_is_empty!15479)))

(assert (=> b!2912687 (= tp!935730 e!1838537)))

(assert (= (and b!2912687 (is-ElementMatch!8958 (reg!9287 r!17423))) b!2913028))

(assert (= (and b!2912687 (is-Concat!14279 (reg!9287 r!17423))) b!2913029))

(assert (= (and b!2912687 (is-Star!8958 (reg!9287 r!17423))) b!2913030))

(assert (= (and b!2912687 (is-Union!8958 (reg!9287 r!17423))) b!2913031))

(declare-fun b!2913036 () Bool)

(declare-fun e!1838540 () Bool)

(declare-fun tp!935777 () Bool)

(assert (=> b!2913036 (= e!1838540 (and tp_is_empty!15479 tp!935777))))

(assert (=> b!2912686 (= tp!935728 e!1838540)))

(assert (= (and b!2912686 (is-Cons!34699 (t!233888 s!11993))) b!2913036))

(declare-fun b!2913038 () Bool)

(declare-fun e!1838541 () Bool)

(declare-fun tp!935781 () Bool)

(declare-fun tp!935780 () Bool)

(assert (=> b!2913038 (= e!1838541 (and tp!935781 tp!935780))))

(declare-fun b!2913039 () Bool)

(declare-fun tp!935779 () Bool)

(assert (=> b!2913039 (= e!1838541 tp!935779)))

(declare-fun b!2913040 () Bool)

(declare-fun tp!935778 () Bool)

(declare-fun tp!935782 () Bool)

(assert (=> b!2913040 (= e!1838541 (and tp!935778 tp!935782))))

(declare-fun b!2913037 () Bool)

(assert (=> b!2913037 (= e!1838541 tp_is_empty!15479)))

(assert (=> b!2912678 (= tp!935726 e!1838541)))

(assert (= (and b!2912678 (is-ElementMatch!8958 (regOne!18428 r!17423))) b!2913037))

(assert (= (and b!2912678 (is-Concat!14279 (regOne!18428 r!17423))) b!2913038))

(assert (= (and b!2912678 (is-Star!8958 (regOne!18428 r!17423))) b!2913039))

(assert (= (and b!2912678 (is-Union!8958 (regOne!18428 r!17423))) b!2913040))

(declare-fun b!2913042 () Bool)

(declare-fun e!1838542 () Bool)

(declare-fun tp!935786 () Bool)

(declare-fun tp!935785 () Bool)

(assert (=> b!2913042 (= e!1838542 (and tp!935786 tp!935785))))

(declare-fun b!2913043 () Bool)

(declare-fun tp!935784 () Bool)

(assert (=> b!2913043 (= e!1838542 tp!935784)))

(declare-fun b!2913044 () Bool)

(declare-fun tp!935783 () Bool)

(declare-fun tp!935787 () Bool)

(assert (=> b!2913044 (= e!1838542 (and tp!935783 tp!935787))))

(declare-fun b!2913041 () Bool)

(assert (=> b!2913041 (= e!1838542 tp_is_empty!15479)))

(assert (=> b!2912678 (= tp!935729 e!1838542)))

(assert (= (and b!2912678 (is-ElementMatch!8958 (regTwo!18428 r!17423))) b!2913041))

(assert (= (and b!2912678 (is-Concat!14279 (regTwo!18428 r!17423))) b!2913042))

(assert (= (and b!2912678 (is-Star!8958 (regTwo!18428 r!17423))) b!2913043))

(assert (= (and b!2912678 (is-Union!8958 (regTwo!18428 r!17423))) b!2913044))

(push 1)

(assert (not d!837787))

(assert (not b!2913023))

(assert (not b!2913022))

(assert (not b!2913039))

(assert (not b!2913044))

(assert (not b!2913004))

(assert (not bm!190189))

(assert (not b!2913029))

(assert (not b!2913038))

(assert (not d!837799))

(assert (not bm!190176))

(assert (not bm!190199))

(assert (not d!837783))

(assert (not b!2913025))

(assert (not d!837781))

(assert (not b!2912946))

(assert (not bm!190194))

(assert (not b!2912748))

(assert (not b!2912847))

(assert (not b!2912850))

(assert (not b!2912996))

(assert (not b!2912877))

(assert (not b!2913026))

(assert (not b!2913042))

(assert (not b!2912842))

(assert (not b!2912845))

(assert (not b!2912848))

(assert (not b!2913003))

(assert (not d!837795))

(assert (not bm!190191))

(assert (not d!837785))

(assert (not b!2913036))

(assert (not b!2912849))

(assert (not bm!190209))

(assert (not b!2913040))

(assert (not bm!190200))

(assert (not b!2913007))

(assert (not b!2913009))

(assert (not b!2912747))

(assert (not b!2913027))

(assert tp_is_empty!15479)

(assert (not b!2913006))

(assert (not b!2912792))

(assert (not d!837777))

(assert (not bm!190174))

(assert (not b!2912868))

(assert (not b!2913043))

(assert (not bm!190192))

(assert (not d!837811))

(assert (not b!2913021))

(assert (not b!2913030))

(assert (not b!2912956))

(assert (not b!2913031))

(assert (not d!837813))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

