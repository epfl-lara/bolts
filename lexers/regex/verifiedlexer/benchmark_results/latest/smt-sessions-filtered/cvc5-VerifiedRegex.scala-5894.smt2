; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!288578 () Bool)

(assert start!288578)

(declare-fun b!2987638 () Bool)

(assert (=> b!2987638 true))

(assert (=> b!2987638 true))

(assert (=> b!2987638 true))

(declare-fun lambda!111614 () Int)

(declare-fun lambda!111613 () Int)

(assert (=> b!2987638 (not (= lambda!111614 lambda!111613))))

(assert (=> b!2987638 true))

(assert (=> b!2987638 true))

(assert (=> b!2987638 true))

(declare-fun b!2987632 () Bool)

(declare-fun e!1878375 () Bool)

(declare-fun tp_is_empty!16239 () Bool)

(assert (=> b!2987632 (= e!1878375 tp_is_empty!16239)))

(declare-fun b!2987633 () Bool)

(declare-fun tp!950399 () Bool)

(declare-fun tp!950396 () Bool)

(assert (=> b!2987633 (= e!1878375 (and tp!950399 tp!950396))))

(declare-fun b!2987634 () Bool)

(declare-fun tp!950398 () Bool)

(assert (=> b!2987634 (= e!1878375 tp!950398)))

(declare-fun b!2987635 () Bool)

(declare-fun e!1878376 () Bool)

(declare-datatypes ((C!18862 0))(
  ( (C!18863 (val!11467 Int)) )
))
(declare-datatypes ((Regex!9338 0))(
  ( (ElementMatch!9338 (c!490876 C!18862)) (Concat!14659 (regOne!19188 Regex!9338) (regTwo!19188 Regex!9338)) (EmptyExpr!9338) (Star!9338 (reg!9667 Regex!9338)) (EmptyLang!9338) (Union!9338 (regOne!19189 Regex!9338) (regTwo!19189 Regex!9338)) )
))
(declare-fun lt!1039719 () Regex!9338)

(declare-datatypes ((List!35203 0))(
  ( (Nil!35079) (Cons!35079 (h!40499 C!18862) (t!234268 List!35203)) )
))
(declare-datatypes ((tuple2!33994 0))(
  ( (tuple2!33995 (_1!20129 List!35203) (_2!20129 List!35203)) )
))
(declare-fun lt!1039721 () tuple2!33994)

(declare-fun matchR!4220 (Regex!9338 List!35203) Bool)

(assert (=> b!2987635 (= e!1878376 (matchR!4220 lt!1039719 (_2!20129 lt!1039721)))))

(declare-fun b!2987636 () Bool)

(declare-fun res!1232217 () Bool)

(declare-fun e!1878378 () Bool)

(assert (=> b!2987636 (=> res!1232217 e!1878378)))

(declare-fun s!11993 () List!35203)

(declare-fun isEmpty!19341 (List!35203) Bool)

(assert (=> b!2987636 (= res!1232217 (isEmpty!19341 s!11993))))

(declare-fun res!1232218 () Bool)

(declare-fun e!1878377 () Bool)

(assert (=> start!288578 (=> (not res!1232218) (not e!1878377))))

(declare-fun r!17423 () Regex!9338)

(declare-fun validRegex!4071 (Regex!9338) Bool)

(assert (=> start!288578 (= res!1232218 (validRegex!4071 r!17423))))

(assert (=> start!288578 e!1878377))

(assert (=> start!288578 e!1878375))

(declare-fun e!1878379 () Bool)

(assert (=> start!288578 e!1878379))

(declare-fun b!2987637 () Bool)

(declare-fun tp!950395 () Bool)

(declare-fun tp!950397 () Bool)

(assert (=> b!2987637 (= e!1878375 (and tp!950395 tp!950397))))

(declare-fun e!1878374 () Bool)

(assert (=> b!2987638 (= e!1878378 e!1878374)))

(declare-fun res!1232220 () Bool)

(assert (=> b!2987638 (=> res!1232220 e!1878374)))

(declare-fun lt!1039718 () Bool)

(assert (=> b!2987638 (= res!1232220 (not lt!1039718))))

(declare-fun Exists!1611 (Int) Bool)

(assert (=> b!2987638 (= (Exists!1611 lambda!111613) (Exists!1611 lambda!111614))))

(declare-datatypes ((Unit!49079 0))(
  ( (Unit!49080) )
))
(declare-fun lt!1039717 () Unit!49079)

(declare-fun lemmaExistCutMatchRandMatchRSpecEquivalentStar!287 (Regex!9338 List!35203) Unit!49079)

(assert (=> b!2987638 (= lt!1039717 (lemmaExistCutMatchRandMatchRSpecEquivalentStar!287 (reg!9667 r!17423) s!11993))))

(assert (=> b!2987638 (= lt!1039718 (Exists!1611 lambda!111613))))

(declare-datatypes ((Option!6729 0))(
  ( (None!6728) (Some!6728 (v!34862 tuple2!33994)) )
))
(declare-fun lt!1039724 () Option!6729)

(declare-fun isDefined!5280 (Option!6729) Bool)

(assert (=> b!2987638 (= lt!1039718 (isDefined!5280 lt!1039724))))

(declare-fun findConcatSeparation!1123 (Regex!9338 Regex!9338 List!35203 List!35203 List!35203) Option!6729)

(assert (=> b!2987638 (= lt!1039724 (findConcatSeparation!1123 (reg!9667 r!17423) lt!1039719 Nil!35079 s!11993 s!11993))))

(declare-fun lt!1039720 () Unit!49079)

(declare-fun lemmaFindConcatSeparationEquivalentToExists!901 (Regex!9338 Regex!9338 List!35203) Unit!49079)

(assert (=> b!2987638 (= lt!1039720 (lemmaFindConcatSeparationEquivalentToExists!901 (reg!9667 r!17423) lt!1039719 s!11993))))

(assert (=> b!2987638 (= lt!1039719 (Star!9338 (reg!9667 r!17423)))))

(declare-fun b!2987639 () Bool)

(assert (=> b!2987639 (= e!1878377 (not e!1878378))))

(declare-fun res!1232219 () Bool)

(assert (=> b!2987639 (=> res!1232219 e!1878378)))

(declare-fun lt!1039722 () Bool)

(assert (=> b!2987639 (= res!1232219 (or (not lt!1039722) (is-Concat!14659 r!17423) (is-Union!9338 r!17423) (not (is-Star!9338 r!17423))))))

(declare-fun matchRSpec!1475 (Regex!9338 List!35203) Bool)

(assert (=> b!2987639 (= lt!1039722 (matchRSpec!1475 r!17423 s!11993))))

(assert (=> b!2987639 (= lt!1039722 (matchR!4220 r!17423 s!11993))))

(declare-fun lt!1039723 () Unit!49079)

(declare-fun mainMatchTheorem!1475 (Regex!9338 List!35203) Unit!49079)

(assert (=> b!2987639 (= lt!1039723 (mainMatchTheorem!1475 r!17423 s!11993))))

(declare-fun b!2987640 () Bool)

(declare-fun tp!950394 () Bool)

(assert (=> b!2987640 (= e!1878379 (and tp_is_empty!16239 tp!950394))))

(declare-fun b!2987641 () Bool)

(assert (=> b!2987641 (= e!1878374 e!1878376)))

(declare-fun res!1232221 () Bool)

(assert (=> b!2987641 (=> res!1232221 e!1878376)))

(assert (=> b!2987641 (= res!1232221 (not (matchR!4220 (reg!9667 r!17423) (_1!20129 lt!1039721))))))

(declare-fun get!10866 (Option!6729) tuple2!33994)

(assert (=> b!2987641 (= lt!1039721 (get!10866 lt!1039724))))

(assert (= (and start!288578 res!1232218) b!2987639))

(assert (= (and b!2987639 (not res!1232219)) b!2987636))

(assert (= (and b!2987636 (not res!1232217)) b!2987638))

(assert (= (and b!2987638 (not res!1232220)) b!2987641))

(assert (= (and b!2987641 (not res!1232221)) b!2987635))

(assert (= (and start!288578 (is-ElementMatch!9338 r!17423)) b!2987632))

(assert (= (and start!288578 (is-Concat!14659 r!17423)) b!2987633))

(assert (= (and start!288578 (is-Star!9338 r!17423)) b!2987634))

(assert (= (and start!288578 (is-Union!9338 r!17423)) b!2987637))

(assert (= (and start!288578 (is-Cons!35079 s!11993)) b!2987640))

(declare-fun m!3345509 () Bool)

(assert (=> start!288578 m!3345509))

(declare-fun m!3345511 () Bool)

(assert (=> b!2987636 m!3345511))

(declare-fun m!3345513 () Bool)

(assert (=> b!2987641 m!3345513))

(declare-fun m!3345515 () Bool)

(assert (=> b!2987641 m!3345515))

(declare-fun m!3345517 () Bool)

(assert (=> b!2987638 m!3345517))

(declare-fun m!3345519 () Bool)

(assert (=> b!2987638 m!3345519))

(assert (=> b!2987638 m!3345517))

(declare-fun m!3345521 () Bool)

(assert (=> b!2987638 m!3345521))

(declare-fun m!3345523 () Bool)

(assert (=> b!2987638 m!3345523))

(declare-fun m!3345525 () Bool)

(assert (=> b!2987638 m!3345525))

(declare-fun m!3345527 () Bool)

(assert (=> b!2987638 m!3345527))

(declare-fun m!3345529 () Bool)

(assert (=> b!2987639 m!3345529))

(declare-fun m!3345531 () Bool)

(assert (=> b!2987639 m!3345531))

(declare-fun m!3345533 () Bool)

(assert (=> b!2987639 m!3345533))

(declare-fun m!3345535 () Bool)

(assert (=> b!2987635 m!3345535))

(push 1)

(assert (not b!2987640))

(assert (not b!2987635))

(assert (not b!2987633))

(assert (not b!2987637))

(assert (not b!2987639))

(assert (not b!2987638))

(assert (not start!288578))

(assert (not b!2987636))

(assert (not b!2987641))

(assert (not b!2987634))

(assert tp_is_empty!16239)

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun bs!527512 () Bool)

(declare-fun b!2987735 () Bool)

(assert (= bs!527512 (and b!2987735 b!2987638)))

(declare-fun lambda!111627 () Int)

(assert (=> bs!527512 (not (= lambda!111627 lambda!111613))))

(assert (=> bs!527512 (= (= r!17423 lt!1039719) (= lambda!111627 lambda!111614))))

(assert (=> b!2987735 true))

(assert (=> b!2987735 true))

(declare-fun bs!527513 () Bool)

(declare-fun b!2987733 () Bool)

(assert (= bs!527513 (and b!2987733 b!2987638)))

(declare-fun lambda!111628 () Int)

(assert (=> bs!527513 (not (= lambda!111628 lambda!111613))))

(assert (=> bs!527513 (not (= lambda!111628 lambda!111614))))

(declare-fun bs!527514 () Bool)

(assert (= bs!527514 (and b!2987733 b!2987735)))

(assert (=> bs!527514 (not (= lambda!111628 lambda!111627))))

(assert (=> b!2987733 true))

(assert (=> b!2987733 true))

(declare-fun b!2987726 () Bool)

(declare-fun c!490889 () Bool)

(assert (=> b!2987726 (= c!490889 (is-ElementMatch!9338 r!17423))))

(declare-fun e!1878424 () Bool)

(declare-fun e!1878423 () Bool)

(assert (=> b!2987726 (= e!1878424 e!1878423)))

(declare-fun b!2987727 () Bool)

(declare-fun e!1878422 () Bool)

(declare-fun e!1878425 () Bool)

(assert (=> b!2987727 (= e!1878422 e!1878425)))

(declare-fun res!1232269 () Bool)

(assert (=> b!2987727 (= res!1232269 (matchRSpec!1475 (regOne!19189 r!17423) s!11993))))

(assert (=> b!2987727 (=> res!1232269 e!1878425)))

(declare-fun b!2987728 () Bool)

(assert (=> b!2987728 (= e!1878423 (= s!11993 (Cons!35079 (c!490876 r!17423) Nil!35079)))))

(declare-fun d!844221 () Bool)

(declare-fun c!490888 () Bool)

(assert (=> d!844221 (= c!490888 (is-EmptyExpr!9338 r!17423))))

(declare-fun e!1878426 () Bool)

(assert (=> d!844221 (= (matchRSpec!1475 r!17423 s!11993) e!1878426)))

(declare-fun b!2987729 () Bool)

(assert (=> b!2987729 (= e!1878426 e!1878424)))

(declare-fun res!1232268 () Bool)

(assert (=> b!2987729 (= res!1232268 (not (is-EmptyLang!9338 r!17423)))))

(assert (=> b!2987729 (=> (not res!1232268) (not e!1878424))))

(declare-fun b!2987730 () Bool)

(assert (=> b!2987730 (= e!1878425 (matchRSpec!1475 (regTwo!19189 r!17423) s!11993))))

(declare-fun b!2987731 () Bool)

(declare-fun e!1878427 () Bool)

(assert (=> b!2987731 (= e!1878422 e!1878427)))

(declare-fun c!490887 () Bool)

(assert (=> b!2987731 (= c!490887 (is-Star!9338 r!17423))))

(declare-fun b!2987732 () Bool)

(declare-fun res!1232267 () Bool)

(declare-fun e!1878428 () Bool)

(assert (=> b!2987732 (=> res!1232267 e!1878428)))

(declare-fun call!199749 () Bool)

(assert (=> b!2987732 (= res!1232267 call!199749)))

(assert (=> b!2987732 (= e!1878427 e!1878428)))

(declare-fun bm!199744 () Bool)

(declare-fun call!199750 () Bool)

(assert (=> bm!199744 (= call!199750 (Exists!1611 (ite c!490887 lambda!111627 lambda!111628)))))

(declare-fun bm!199745 () Bool)

(assert (=> bm!199745 (= call!199749 (isEmpty!19341 s!11993))))

(assert (=> b!2987733 (= e!1878427 call!199750)))

(declare-fun b!2987734 () Bool)

(declare-fun c!490886 () Bool)

(assert (=> b!2987734 (= c!490886 (is-Union!9338 r!17423))))

(assert (=> b!2987734 (= e!1878423 e!1878422)))

(assert (=> b!2987735 (= e!1878428 call!199750)))

(declare-fun b!2987736 () Bool)

(assert (=> b!2987736 (= e!1878426 call!199749)))

(assert (= (and d!844221 c!490888) b!2987736))

(assert (= (and d!844221 (not c!490888)) b!2987729))

(assert (= (and b!2987729 res!1232268) b!2987726))

(assert (= (and b!2987726 c!490889) b!2987728))

(assert (= (and b!2987726 (not c!490889)) b!2987734))

(assert (= (and b!2987734 c!490886) b!2987727))

(assert (= (and b!2987734 (not c!490886)) b!2987731))

(assert (= (and b!2987727 (not res!1232269)) b!2987730))

(assert (= (and b!2987731 c!490887) b!2987732))

(assert (= (and b!2987731 (not c!490887)) b!2987733))

(assert (= (and b!2987732 (not res!1232267)) b!2987735))

(assert (= (or b!2987735 b!2987733) bm!199744))

(assert (= (or b!2987736 b!2987732) bm!199745))

(declare-fun m!3345565 () Bool)

(assert (=> b!2987727 m!3345565))

(declare-fun m!3345567 () Bool)

(assert (=> b!2987730 m!3345567))

(declare-fun m!3345569 () Bool)

(assert (=> bm!199744 m!3345569))

(assert (=> bm!199745 m!3345511))

(assert (=> b!2987639 d!844221))

(declare-fun b!2987793 () Bool)

(declare-fun e!1878461 () Bool)

(declare-fun e!1878463 () Bool)

(assert (=> b!2987793 (= e!1878461 e!1878463)))

(declare-fun res!1232306 () Bool)

(assert (=> b!2987793 (=> res!1232306 e!1878463)))

(declare-fun call!199755 () Bool)

(assert (=> b!2987793 (= res!1232306 call!199755)))

(declare-fun b!2987794 () Bool)

(declare-fun e!1878462 () Bool)

(declare-fun derivativeStep!2607 (Regex!9338 C!18862) Regex!9338)

(declare-fun head!6666 (List!35203) C!18862)

(declare-fun tail!4892 (List!35203) List!35203)

(assert (=> b!2987794 (= e!1878462 (matchR!4220 (derivativeStep!2607 r!17423 (head!6666 s!11993)) (tail!4892 s!11993)))))

(declare-fun b!2987795 () Bool)

(declare-fun res!1232302 () Bool)

(assert (=> b!2987795 (=> res!1232302 e!1878463)))

(assert (=> b!2987795 (= res!1232302 (not (isEmpty!19341 (tail!4892 s!11993))))))

(declare-fun b!2987796 () Bool)

(declare-fun e!1878460 () Bool)

(declare-fun lt!1039753 () Bool)

(assert (=> b!2987796 (= e!1878460 (= lt!1039753 call!199755))))

(declare-fun b!2987797 () Bool)

(declare-fun nullable!3009 (Regex!9338) Bool)

(assert (=> b!2987797 (= e!1878462 (nullable!3009 r!17423))))

(declare-fun b!2987798 () Bool)

(declare-fun e!1878458 () Bool)

(assert (=> b!2987798 (= e!1878458 e!1878461)))

(declare-fun res!1232307 () Bool)

(assert (=> b!2987798 (=> (not res!1232307) (not e!1878461))))

(assert (=> b!2987798 (= res!1232307 (not lt!1039753))))

(declare-fun b!2987799 () Bool)

(assert (=> b!2987799 (= e!1878463 (not (= (head!6666 s!11993) (c!490876 r!17423))))))

(declare-fun b!2987800 () Bool)

(declare-fun e!1878457 () Bool)

(assert (=> b!2987800 (= e!1878457 (not lt!1039753))))

(declare-fun b!2987801 () Bool)

(declare-fun res!1232309 () Bool)

(assert (=> b!2987801 (=> res!1232309 e!1878458)))

(declare-fun e!1878459 () Bool)

(assert (=> b!2987801 (= res!1232309 e!1878459)))

(declare-fun res!1232303 () Bool)

(assert (=> b!2987801 (=> (not res!1232303) (not e!1878459))))

(assert (=> b!2987801 (= res!1232303 lt!1039753)))

(declare-fun b!2987802 () Bool)

(assert (=> b!2987802 (= e!1878459 (= (head!6666 s!11993) (c!490876 r!17423)))))

(declare-fun d!844225 () Bool)

(assert (=> d!844225 e!1878460))

(declare-fun c!490904 () Bool)

(assert (=> d!844225 (= c!490904 (is-EmptyExpr!9338 r!17423))))

(assert (=> d!844225 (= lt!1039753 e!1878462)))

(declare-fun c!490902 () Bool)

(assert (=> d!844225 (= c!490902 (isEmpty!19341 s!11993))))

(assert (=> d!844225 (validRegex!4071 r!17423)))

(assert (=> d!844225 (= (matchR!4220 r!17423 s!11993) lt!1039753)))

(declare-fun bm!199750 () Bool)

(assert (=> bm!199750 (= call!199755 (isEmpty!19341 s!11993))))

(declare-fun b!2987803 () Bool)

(declare-fun res!1232304 () Bool)

(assert (=> b!2987803 (=> res!1232304 e!1878458)))

(assert (=> b!2987803 (= res!1232304 (not (is-ElementMatch!9338 r!17423)))))

(assert (=> b!2987803 (= e!1878457 e!1878458)))

(declare-fun b!2987804 () Bool)

(declare-fun res!1232305 () Bool)

(assert (=> b!2987804 (=> (not res!1232305) (not e!1878459))))

(assert (=> b!2987804 (= res!1232305 (isEmpty!19341 (tail!4892 s!11993)))))

(declare-fun b!2987805 () Bool)

(declare-fun res!1232308 () Bool)

(assert (=> b!2987805 (=> (not res!1232308) (not e!1878459))))

(assert (=> b!2987805 (= res!1232308 (not call!199755))))

(declare-fun b!2987806 () Bool)

(assert (=> b!2987806 (= e!1878460 e!1878457)))

(declare-fun c!490903 () Bool)

(assert (=> b!2987806 (= c!490903 (is-EmptyLang!9338 r!17423))))

(assert (= (and d!844225 c!490902) b!2987797))

(assert (= (and d!844225 (not c!490902)) b!2987794))

(assert (= (and d!844225 c!490904) b!2987796))

(assert (= (and d!844225 (not c!490904)) b!2987806))

(assert (= (and b!2987806 c!490903) b!2987800))

(assert (= (and b!2987806 (not c!490903)) b!2987803))

(assert (= (and b!2987803 (not res!1232304)) b!2987801))

(assert (= (and b!2987801 res!1232303) b!2987805))

(assert (= (and b!2987805 res!1232308) b!2987804))

(assert (= (and b!2987804 res!1232305) b!2987802))

(assert (= (and b!2987801 (not res!1232309)) b!2987798))

(assert (= (and b!2987798 res!1232307) b!2987793))

(assert (= (and b!2987793 (not res!1232306)) b!2987795))

(assert (= (and b!2987795 (not res!1232302)) b!2987799))

(assert (= (or b!2987796 b!2987793 b!2987805) bm!199750))

(declare-fun m!3345571 () Bool)

(assert (=> b!2987794 m!3345571))

(assert (=> b!2987794 m!3345571))

(declare-fun m!3345573 () Bool)

(assert (=> b!2987794 m!3345573))

(declare-fun m!3345575 () Bool)

(assert (=> b!2987794 m!3345575))

(assert (=> b!2987794 m!3345573))

(assert (=> b!2987794 m!3345575))

(declare-fun m!3345577 () Bool)

(assert (=> b!2987794 m!3345577))

(assert (=> bm!199750 m!3345511))

(assert (=> b!2987802 m!3345571))

(assert (=> b!2987799 m!3345571))

(assert (=> b!2987795 m!3345575))

(assert (=> b!2987795 m!3345575))

(declare-fun m!3345579 () Bool)

(assert (=> b!2987795 m!3345579))

(assert (=> d!844225 m!3345511))

(assert (=> d!844225 m!3345509))

(declare-fun m!3345581 () Bool)

(assert (=> b!2987797 m!3345581))

(assert (=> b!2987804 m!3345575))

(assert (=> b!2987804 m!3345575))

(assert (=> b!2987804 m!3345579))

(assert (=> b!2987639 d!844225))

(declare-fun d!844227 () Bool)

(assert (=> d!844227 (= (matchR!4220 r!17423 s!11993) (matchRSpec!1475 r!17423 s!11993))))

(declare-fun lt!1039756 () Unit!49079)

(declare-fun choose!17714 (Regex!9338 List!35203) Unit!49079)

(assert (=> d!844227 (= lt!1039756 (choose!17714 r!17423 s!11993))))

(assert (=> d!844227 (validRegex!4071 r!17423)))

(assert (=> d!844227 (= (mainMatchTheorem!1475 r!17423 s!11993) lt!1039756)))

(declare-fun bs!527515 () Bool)

(assert (= bs!527515 d!844227))

(assert (=> bs!527515 m!3345531))

(assert (=> bs!527515 m!3345529))

(declare-fun m!3345583 () Bool)

(assert (=> bs!527515 m!3345583))

(assert (=> bs!527515 m!3345509))

(assert (=> b!2987639 d!844227))

(declare-fun bm!199758 () Bool)

(declare-fun call!199765 () Bool)

(declare-fun c!490913 () Bool)

(assert (=> bm!199758 (= call!199765 (validRegex!4071 (ite c!490913 (regOne!19189 r!17423) (regTwo!19188 r!17423))))))

(declare-fun b!2987839 () Bool)

(declare-fun e!1878489 () Bool)

(declare-fun call!199764 () Bool)

(assert (=> b!2987839 (= e!1878489 call!199764)))

(declare-fun bm!199759 () Bool)

(declare-fun call!199763 () Bool)

(declare-fun c!490912 () Bool)

(assert (=> bm!199759 (= call!199763 (validRegex!4071 (ite c!490912 (reg!9667 r!17423) (ite c!490913 (regTwo!19189 r!17423) (regOne!19188 r!17423)))))))

(declare-fun b!2987840 () Bool)

(declare-fun e!1878487 () Bool)

(declare-fun e!1878485 () Bool)

(assert (=> b!2987840 (= e!1878487 e!1878485)))

(assert (=> b!2987840 (= c!490913 (is-Union!9338 r!17423))))

(declare-fun b!2987841 () Bool)

(declare-fun e!1878488 () Bool)

(assert (=> b!2987841 (= e!1878488 call!199763)))

(declare-fun b!2987842 () Bool)

(assert (=> b!2987842 (= e!1878487 e!1878488)))

(declare-fun res!1232331 () Bool)

(assert (=> b!2987842 (= res!1232331 (not (nullable!3009 (reg!9667 r!17423))))))

(assert (=> b!2987842 (=> (not res!1232331) (not e!1878488))))

(declare-fun b!2987843 () Bool)

(declare-fun e!1878486 () Bool)

(assert (=> b!2987843 (= e!1878486 call!199765)))

(declare-fun b!2987844 () Bool)

(declare-fun res!1232328 () Bool)

(declare-fun e!1878490 () Bool)

(assert (=> b!2987844 (=> res!1232328 e!1878490)))

(assert (=> b!2987844 (= res!1232328 (not (is-Concat!14659 r!17423)))))

(assert (=> b!2987844 (= e!1878485 e!1878490)))

(declare-fun bm!199760 () Bool)

(assert (=> bm!199760 (= call!199764 call!199763)))

(declare-fun b!2987845 () Bool)

(assert (=> b!2987845 (= e!1878490 e!1878486)))

(declare-fun res!1232329 () Bool)

(assert (=> b!2987845 (=> (not res!1232329) (not e!1878486))))

(assert (=> b!2987845 (= res!1232329 call!199764)))

(declare-fun b!2987846 () Bool)

(declare-fun e!1878491 () Bool)

(assert (=> b!2987846 (= e!1878491 e!1878487)))

(assert (=> b!2987846 (= c!490912 (is-Star!9338 r!17423))))

(declare-fun d!844229 () Bool)

(declare-fun res!1232330 () Bool)

(assert (=> d!844229 (=> res!1232330 e!1878491)))

(assert (=> d!844229 (= res!1232330 (is-ElementMatch!9338 r!17423))))

(assert (=> d!844229 (= (validRegex!4071 r!17423) e!1878491)))

(declare-fun b!2987847 () Bool)

(declare-fun res!1232332 () Bool)

(assert (=> b!2987847 (=> (not res!1232332) (not e!1878489))))

(assert (=> b!2987847 (= res!1232332 call!199765)))

(assert (=> b!2987847 (= e!1878485 e!1878489)))

(assert (= (and d!844229 (not res!1232330)) b!2987846))

(assert (= (and b!2987846 c!490912) b!2987842))

(assert (= (and b!2987846 (not c!490912)) b!2987840))

(assert (= (and b!2987842 res!1232331) b!2987841))

(assert (= (and b!2987840 c!490913) b!2987847))

(assert (= (and b!2987840 (not c!490913)) b!2987844))

(assert (= (and b!2987847 res!1232332) b!2987839))

(assert (= (and b!2987844 (not res!1232328)) b!2987845))

(assert (= (and b!2987845 res!1232329) b!2987843))

(assert (= (or b!2987847 b!2987843) bm!199758))

(assert (= (or b!2987839 b!2987845) bm!199760))

(assert (= (or b!2987841 bm!199760) bm!199759))

(declare-fun m!3345601 () Bool)

(assert (=> bm!199758 m!3345601))

(declare-fun m!3345605 () Bool)

(assert (=> bm!199759 m!3345605))

(declare-fun m!3345607 () Bool)

(assert (=> b!2987842 m!3345607))

(assert (=> start!288578 d!844229))

(declare-fun b!2987848 () Bool)

(declare-fun e!1878496 () Bool)

(declare-fun e!1878498 () Bool)

(assert (=> b!2987848 (= e!1878496 e!1878498)))

(declare-fun res!1232337 () Bool)

(assert (=> b!2987848 (=> res!1232337 e!1878498)))

(declare-fun call!199766 () Bool)

(assert (=> b!2987848 (= res!1232337 call!199766)))

(declare-fun b!2987849 () Bool)

(declare-fun e!1878497 () Bool)

(assert (=> b!2987849 (= e!1878497 (matchR!4220 (derivativeStep!2607 lt!1039719 (head!6666 (_2!20129 lt!1039721))) (tail!4892 (_2!20129 lt!1039721))))))

(declare-fun b!2987850 () Bool)

(declare-fun res!1232333 () Bool)

(assert (=> b!2987850 (=> res!1232333 e!1878498)))

(assert (=> b!2987850 (= res!1232333 (not (isEmpty!19341 (tail!4892 (_2!20129 lt!1039721)))))))

(declare-fun b!2987851 () Bool)

(declare-fun e!1878495 () Bool)

(declare-fun lt!1039758 () Bool)

(assert (=> b!2987851 (= e!1878495 (= lt!1039758 call!199766))))

(declare-fun b!2987852 () Bool)

(assert (=> b!2987852 (= e!1878497 (nullable!3009 lt!1039719))))

(declare-fun b!2987853 () Bool)

(declare-fun e!1878493 () Bool)

(assert (=> b!2987853 (= e!1878493 e!1878496)))

(declare-fun res!1232338 () Bool)

(assert (=> b!2987853 (=> (not res!1232338) (not e!1878496))))

(assert (=> b!2987853 (= res!1232338 (not lt!1039758))))

(declare-fun b!2987854 () Bool)

(assert (=> b!2987854 (= e!1878498 (not (= (head!6666 (_2!20129 lt!1039721)) (c!490876 lt!1039719))))))

(declare-fun b!2987855 () Bool)

(declare-fun e!1878492 () Bool)

(assert (=> b!2987855 (= e!1878492 (not lt!1039758))))

(declare-fun b!2987856 () Bool)

(declare-fun res!1232340 () Bool)

(assert (=> b!2987856 (=> res!1232340 e!1878493)))

(declare-fun e!1878494 () Bool)

(assert (=> b!2987856 (= res!1232340 e!1878494)))

(declare-fun res!1232334 () Bool)

(assert (=> b!2987856 (=> (not res!1232334) (not e!1878494))))

(assert (=> b!2987856 (= res!1232334 lt!1039758)))

(declare-fun b!2987857 () Bool)

(assert (=> b!2987857 (= e!1878494 (= (head!6666 (_2!20129 lt!1039721)) (c!490876 lt!1039719)))))

(declare-fun d!844233 () Bool)

(assert (=> d!844233 e!1878495))

(declare-fun c!490916 () Bool)

(assert (=> d!844233 (= c!490916 (is-EmptyExpr!9338 lt!1039719))))

(assert (=> d!844233 (= lt!1039758 e!1878497)))

(declare-fun c!490914 () Bool)

(assert (=> d!844233 (= c!490914 (isEmpty!19341 (_2!20129 lt!1039721)))))

(assert (=> d!844233 (validRegex!4071 lt!1039719)))

(assert (=> d!844233 (= (matchR!4220 lt!1039719 (_2!20129 lt!1039721)) lt!1039758)))

(declare-fun bm!199761 () Bool)

(assert (=> bm!199761 (= call!199766 (isEmpty!19341 (_2!20129 lt!1039721)))))

(declare-fun b!2987858 () Bool)

(declare-fun res!1232335 () Bool)

(assert (=> b!2987858 (=> res!1232335 e!1878493)))

(assert (=> b!2987858 (= res!1232335 (not (is-ElementMatch!9338 lt!1039719)))))

(assert (=> b!2987858 (= e!1878492 e!1878493)))

(declare-fun b!2987859 () Bool)

(declare-fun res!1232336 () Bool)

(assert (=> b!2987859 (=> (not res!1232336) (not e!1878494))))

(assert (=> b!2987859 (= res!1232336 (isEmpty!19341 (tail!4892 (_2!20129 lt!1039721))))))

(declare-fun b!2987860 () Bool)

(declare-fun res!1232339 () Bool)

(assert (=> b!2987860 (=> (not res!1232339) (not e!1878494))))

(assert (=> b!2987860 (= res!1232339 (not call!199766))))

(declare-fun b!2987861 () Bool)

(assert (=> b!2987861 (= e!1878495 e!1878492)))

(declare-fun c!490915 () Bool)

(assert (=> b!2987861 (= c!490915 (is-EmptyLang!9338 lt!1039719))))

(assert (= (and d!844233 c!490914) b!2987852))

(assert (= (and d!844233 (not c!490914)) b!2987849))

(assert (= (and d!844233 c!490916) b!2987851))

(assert (= (and d!844233 (not c!490916)) b!2987861))

(assert (= (and b!2987861 c!490915) b!2987855))

(assert (= (and b!2987861 (not c!490915)) b!2987858))

(assert (= (and b!2987858 (not res!1232335)) b!2987856))

(assert (= (and b!2987856 res!1232334) b!2987860))

(assert (= (and b!2987860 res!1232339) b!2987859))

(assert (= (and b!2987859 res!1232336) b!2987857))

(assert (= (and b!2987856 (not res!1232340)) b!2987853))

(assert (= (and b!2987853 res!1232338) b!2987848))

(assert (= (and b!2987848 (not res!1232337)) b!2987850))

(assert (= (and b!2987850 (not res!1232333)) b!2987854))

(assert (= (or b!2987851 b!2987848 b!2987860) bm!199761))

(declare-fun m!3345609 () Bool)

(assert (=> b!2987849 m!3345609))

(assert (=> b!2987849 m!3345609))

(declare-fun m!3345611 () Bool)

(assert (=> b!2987849 m!3345611))

(declare-fun m!3345613 () Bool)

(assert (=> b!2987849 m!3345613))

(assert (=> b!2987849 m!3345611))

(assert (=> b!2987849 m!3345613))

(declare-fun m!3345615 () Bool)

(assert (=> b!2987849 m!3345615))

(declare-fun m!3345617 () Bool)

(assert (=> bm!199761 m!3345617))

(assert (=> b!2987857 m!3345609))

(assert (=> b!2987854 m!3345609))

(assert (=> b!2987850 m!3345613))

(assert (=> b!2987850 m!3345613))

(declare-fun m!3345619 () Bool)

(assert (=> b!2987850 m!3345619))

(assert (=> d!844233 m!3345617))

(declare-fun m!3345621 () Bool)

(assert (=> d!844233 m!3345621))

(declare-fun m!3345623 () Bool)

(assert (=> b!2987852 m!3345623))

(assert (=> b!2987859 m!3345613))

(assert (=> b!2987859 m!3345613))

(assert (=> b!2987859 m!3345619))

(assert (=> b!2987635 d!844233))

(declare-fun b!2987862 () Bool)

(declare-fun e!1878503 () Bool)

(declare-fun e!1878505 () Bool)

(assert (=> b!2987862 (= e!1878503 e!1878505)))

(declare-fun res!1232345 () Bool)

(assert (=> b!2987862 (=> res!1232345 e!1878505)))

(declare-fun call!199767 () Bool)

(assert (=> b!2987862 (= res!1232345 call!199767)))

(declare-fun b!2987863 () Bool)

(declare-fun e!1878504 () Bool)

(assert (=> b!2987863 (= e!1878504 (matchR!4220 (derivativeStep!2607 (reg!9667 r!17423) (head!6666 (_1!20129 lt!1039721))) (tail!4892 (_1!20129 lt!1039721))))))

(declare-fun b!2987864 () Bool)

(declare-fun res!1232341 () Bool)

(assert (=> b!2987864 (=> res!1232341 e!1878505)))

(assert (=> b!2987864 (= res!1232341 (not (isEmpty!19341 (tail!4892 (_1!20129 lt!1039721)))))))

(declare-fun b!2987865 () Bool)

(declare-fun e!1878502 () Bool)

(declare-fun lt!1039759 () Bool)

(assert (=> b!2987865 (= e!1878502 (= lt!1039759 call!199767))))

(declare-fun b!2987866 () Bool)

(assert (=> b!2987866 (= e!1878504 (nullable!3009 (reg!9667 r!17423)))))

(declare-fun b!2987867 () Bool)

(declare-fun e!1878500 () Bool)

(assert (=> b!2987867 (= e!1878500 e!1878503)))

(declare-fun res!1232346 () Bool)

(assert (=> b!2987867 (=> (not res!1232346) (not e!1878503))))

(assert (=> b!2987867 (= res!1232346 (not lt!1039759))))

(declare-fun b!2987868 () Bool)

(assert (=> b!2987868 (= e!1878505 (not (= (head!6666 (_1!20129 lt!1039721)) (c!490876 (reg!9667 r!17423)))))))

(declare-fun b!2987869 () Bool)

(declare-fun e!1878499 () Bool)

(assert (=> b!2987869 (= e!1878499 (not lt!1039759))))

(declare-fun b!2987870 () Bool)

(declare-fun res!1232348 () Bool)

(assert (=> b!2987870 (=> res!1232348 e!1878500)))

(declare-fun e!1878501 () Bool)

(assert (=> b!2987870 (= res!1232348 e!1878501)))

(declare-fun res!1232342 () Bool)

(assert (=> b!2987870 (=> (not res!1232342) (not e!1878501))))

(assert (=> b!2987870 (= res!1232342 lt!1039759)))

(declare-fun b!2987871 () Bool)

(assert (=> b!2987871 (= e!1878501 (= (head!6666 (_1!20129 lt!1039721)) (c!490876 (reg!9667 r!17423))))))

(declare-fun d!844237 () Bool)

(assert (=> d!844237 e!1878502))

(declare-fun c!490919 () Bool)

(assert (=> d!844237 (= c!490919 (is-EmptyExpr!9338 (reg!9667 r!17423)))))

(assert (=> d!844237 (= lt!1039759 e!1878504)))

(declare-fun c!490917 () Bool)

(assert (=> d!844237 (= c!490917 (isEmpty!19341 (_1!20129 lt!1039721)))))

(assert (=> d!844237 (validRegex!4071 (reg!9667 r!17423))))

(assert (=> d!844237 (= (matchR!4220 (reg!9667 r!17423) (_1!20129 lt!1039721)) lt!1039759)))

(declare-fun bm!199762 () Bool)

(assert (=> bm!199762 (= call!199767 (isEmpty!19341 (_1!20129 lt!1039721)))))

(declare-fun b!2987872 () Bool)

(declare-fun res!1232343 () Bool)

(assert (=> b!2987872 (=> res!1232343 e!1878500)))

(assert (=> b!2987872 (= res!1232343 (not (is-ElementMatch!9338 (reg!9667 r!17423))))))

(assert (=> b!2987872 (= e!1878499 e!1878500)))

(declare-fun b!2987873 () Bool)

(declare-fun res!1232344 () Bool)

(assert (=> b!2987873 (=> (not res!1232344) (not e!1878501))))

(assert (=> b!2987873 (= res!1232344 (isEmpty!19341 (tail!4892 (_1!20129 lt!1039721))))))

(declare-fun b!2987874 () Bool)

(declare-fun res!1232347 () Bool)

(assert (=> b!2987874 (=> (not res!1232347) (not e!1878501))))

(assert (=> b!2987874 (= res!1232347 (not call!199767))))

(declare-fun b!2987875 () Bool)

(assert (=> b!2987875 (= e!1878502 e!1878499)))

(declare-fun c!490918 () Bool)

(assert (=> b!2987875 (= c!490918 (is-EmptyLang!9338 (reg!9667 r!17423)))))

(assert (= (and d!844237 c!490917) b!2987866))

(assert (= (and d!844237 (not c!490917)) b!2987863))

(assert (= (and d!844237 c!490919) b!2987865))

(assert (= (and d!844237 (not c!490919)) b!2987875))

(assert (= (and b!2987875 c!490918) b!2987869))

(assert (= (and b!2987875 (not c!490918)) b!2987872))

(assert (= (and b!2987872 (not res!1232343)) b!2987870))

(assert (= (and b!2987870 res!1232342) b!2987874))

(assert (= (and b!2987874 res!1232347) b!2987873))

(assert (= (and b!2987873 res!1232344) b!2987871))

(assert (= (and b!2987870 (not res!1232348)) b!2987867))

(assert (= (and b!2987867 res!1232346) b!2987862))

(assert (= (and b!2987862 (not res!1232345)) b!2987864))

(assert (= (and b!2987864 (not res!1232341)) b!2987868))

(assert (= (or b!2987865 b!2987862 b!2987874) bm!199762))

(declare-fun m!3345627 () Bool)

(assert (=> b!2987863 m!3345627))

(assert (=> b!2987863 m!3345627))

(declare-fun m!3345629 () Bool)

(assert (=> b!2987863 m!3345629))

(declare-fun m!3345631 () Bool)

(assert (=> b!2987863 m!3345631))

(assert (=> b!2987863 m!3345629))

(assert (=> b!2987863 m!3345631))

(declare-fun m!3345633 () Bool)

(assert (=> b!2987863 m!3345633))

(declare-fun m!3345635 () Bool)

(assert (=> bm!199762 m!3345635))

(assert (=> b!2987871 m!3345627))

(assert (=> b!2987868 m!3345627))

(assert (=> b!2987864 m!3345631))

(assert (=> b!2987864 m!3345631))

(declare-fun m!3345637 () Bool)

(assert (=> b!2987864 m!3345637))

(assert (=> d!844237 m!3345635))

(declare-fun m!3345639 () Bool)

(assert (=> d!844237 m!3345639))

(assert (=> b!2987866 m!3345607))

(assert (=> b!2987873 m!3345631))

(assert (=> b!2987873 m!3345631))

(assert (=> b!2987873 m!3345637))

(assert (=> b!2987641 d!844237))

(declare-fun d!844241 () Bool)

(assert (=> d!844241 (= (get!10866 lt!1039724) (v!34862 lt!1039724))))

(assert (=> b!2987641 d!844241))

(declare-fun d!844243 () Bool)

(assert (=> d!844243 (= (isEmpty!19341 s!11993) (is-Nil!35079 s!11993))))

(assert (=> b!2987636 d!844243))

(declare-fun b!2987898 () Bool)

(declare-fun lt!1039768 () Unit!49079)

(declare-fun lt!1039770 () Unit!49079)

(assert (=> b!2987898 (= lt!1039768 lt!1039770)))

(declare-fun ++!8382 (List!35203 List!35203) List!35203)

(assert (=> b!2987898 (= (++!8382 (++!8382 Nil!35079 (Cons!35079 (h!40499 s!11993) Nil!35079)) (t!234268 s!11993)) s!11993)))

(declare-fun lemmaMoveElementToOtherListKeepsConcatEq!997 (List!35203 C!18862 List!35203 List!35203) Unit!49079)

(assert (=> b!2987898 (= lt!1039770 (lemmaMoveElementToOtherListKeepsConcatEq!997 Nil!35079 (h!40499 s!11993) (t!234268 s!11993) s!11993))))

(declare-fun e!1878518 () Option!6729)

(assert (=> b!2987898 (= e!1878518 (findConcatSeparation!1123 (reg!9667 r!17423) lt!1039719 (++!8382 Nil!35079 (Cons!35079 (h!40499 s!11993) Nil!35079)) (t!234268 s!11993) s!11993))))

(declare-fun b!2987899 () Bool)

(declare-fun e!1878522 () Option!6729)

(assert (=> b!2987899 (= e!1878522 (Some!6728 (tuple2!33995 Nil!35079 s!11993)))))

(declare-fun b!2987900 () Bool)

(assert (=> b!2987900 (= e!1878518 None!6728)))

(declare-fun b!2987902 () Bool)

(declare-fun e!1878519 () Bool)

(assert (=> b!2987902 (= e!1878519 (matchR!4220 lt!1039719 s!11993))))

(declare-fun b!2987903 () Bool)

(declare-fun e!1878520 () Bool)

(declare-fun lt!1039769 () Option!6729)

(assert (=> b!2987903 (= e!1878520 (not (isDefined!5280 lt!1039769)))))

(declare-fun b!2987904 () Bool)

(declare-fun res!1232366 () Bool)

(declare-fun e!1878521 () Bool)

(assert (=> b!2987904 (=> (not res!1232366) (not e!1878521))))

(assert (=> b!2987904 (= res!1232366 (matchR!4220 (reg!9667 r!17423) (_1!20129 (get!10866 lt!1039769))))))

(declare-fun b!2987901 () Bool)

(assert (=> b!2987901 (= e!1878521 (= (++!8382 (_1!20129 (get!10866 lt!1039769)) (_2!20129 (get!10866 lt!1039769))) s!11993))))

(declare-fun d!844245 () Bool)

(assert (=> d!844245 e!1878520))

(declare-fun res!1232365 () Bool)

(assert (=> d!844245 (=> res!1232365 e!1878520)))

(assert (=> d!844245 (= res!1232365 e!1878521)))

(declare-fun res!1232367 () Bool)

(assert (=> d!844245 (=> (not res!1232367) (not e!1878521))))

(assert (=> d!844245 (= res!1232367 (isDefined!5280 lt!1039769))))

(assert (=> d!844245 (= lt!1039769 e!1878522)))

(declare-fun c!490924 () Bool)

(assert (=> d!844245 (= c!490924 e!1878519)))

(declare-fun res!1232364 () Bool)

(assert (=> d!844245 (=> (not res!1232364) (not e!1878519))))

(assert (=> d!844245 (= res!1232364 (matchR!4220 (reg!9667 r!17423) Nil!35079))))

(assert (=> d!844245 (validRegex!4071 (reg!9667 r!17423))))

(assert (=> d!844245 (= (findConcatSeparation!1123 (reg!9667 r!17423) lt!1039719 Nil!35079 s!11993 s!11993) lt!1039769)))

(declare-fun b!2987905 () Bool)

(assert (=> b!2987905 (= e!1878522 e!1878518)))

(declare-fun c!490925 () Bool)

(assert (=> b!2987905 (= c!490925 (is-Nil!35079 s!11993))))

(declare-fun b!2987906 () Bool)

(declare-fun res!1232363 () Bool)

(assert (=> b!2987906 (=> (not res!1232363) (not e!1878521))))

(assert (=> b!2987906 (= res!1232363 (matchR!4220 lt!1039719 (_2!20129 (get!10866 lt!1039769))))))

(assert (= (and d!844245 res!1232364) b!2987902))

(assert (= (and d!844245 c!490924) b!2987899))

(assert (= (and d!844245 (not c!490924)) b!2987905))

(assert (= (and b!2987905 c!490925) b!2987900))

(assert (= (and b!2987905 (not c!490925)) b!2987898))

(assert (= (and d!844245 res!1232367) b!2987904))

(assert (= (and b!2987904 res!1232366) b!2987906))

(assert (= (and b!2987906 res!1232363) b!2987901))

(assert (= (and d!844245 (not res!1232365)) b!2987903))

(declare-fun m!3345641 () Bool)

(assert (=> b!2987906 m!3345641))

(declare-fun m!3345643 () Bool)

(assert (=> b!2987906 m!3345643))

(assert (=> b!2987901 m!3345641))

(declare-fun m!3345645 () Bool)

(assert (=> b!2987901 m!3345645))

(declare-fun m!3345647 () Bool)

(assert (=> b!2987903 m!3345647))

(assert (=> d!844245 m!3345647))

(declare-fun m!3345649 () Bool)

(assert (=> d!844245 m!3345649))

(assert (=> d!844245 m!3345639))

(declare-fun m!3345651 () Bool)

(assert (=> b!2987902 m!3345651))

(assert (=> b!2987904 m!3345641))

(declare-fun m!3345653 () Bool)

(assert (=> b!2987904 m!3345653))

(declare-fun m!3345655 () Bool)

(assert (=> b!2987898 m!3345655))

(assert (=> b!2987898 m!3345655))

(declare-fun m!3345657 () Bool)

(assert (=> b!2987898 m!3345657))

(declare-fun m!3345659 () Bool)

(assert (=> b!2987898 m!3345659))

(assert (=> b!2987898 m!3345655))

(declare-fun m!3345661 () Bool)

(assert (=> b!2987898 m!3345661))

(assert (=> b!2987638 d!844245))

(declare-fun d!844247 () Bool)

(declare-fun choose!17715 (Int) Bool)

(assert (=> d!844247 (= (Exists!1611 lambda!111613) (choose!17715 lambda!111613))))

(declare-fun bs!527518 () Bool)

(assert (= bs!527518 d!844247))

(declare-fun m!3345663 () Bool)

(assert (=> bs!527518 m!3345663))

(assert (=> b!2987638 d!844247))

(declare-fun bs!527521 () Bool)

(declare-fun d!844249 () Bool)

(assert (= bs!527521 (and d!844249 b!2987638)))

(declare-fun lambda!111639 () Int)

(assert (=> bs!527521 (= (= (Star!9338 (reg!9667 r!17423)) lt!1039719) (= lambda!111639 lambda!111613))))

(assert (=> bs!527521 (not (= lambda!111639 lambda!111614))))

(declare-fun bs!527522 () Bool)

(assert (= bs!527522 (and d!844249 b!2987735)))

(assert (=> bs!527522 (not (= lambda!111639 lambda!111627))))

(declare-fun bs!527523 () Bool)

(assert (= bs!527523 (and d!844249 b!2987733)))

(assert (=> bs!527523 (not (= lambda!111639 lambda!111628))))

(assert (=> d!844249 true))

(assert (=> d!844249 true))

(declare-fun lambda!111640 () Int)

(assert (=> bs!527523 (not (= lambda!111640 lambda!111628))))

(declare-fun bs!527525 () Bool)

(assert (= bs!527525 d!844249))

(assert (=> bs!527525 (not (= lambda!111640 lambda!111639))))

(assert (=> bs!527522 (= (= (Star!9338 (reg!9667 r!17423)) r!17423) (= lambda!111640 lambda!111627))))

(assert (=> bs!527521 (not (= lambda!111640 lambda!111613))))

(assert (=> bs!527521 (= (= (Star!9338 (reg!9667 r!17423)) lt!1039719) (= lambda!111640 lambda!111614))))

(assert (=> d!844249 true))

(assert (=> d!844249 true))

(assert (=> d!844249 (= (Exists!1611 lambda!111639) (Exists!1611 lambda!111640))))

(declare-fun lt!1039774 () Unit!49079)

(declare-fun choose!17716 (Regex!9338 List!35203) Unit!49079)

(assert (=> d!844249 (= lt!1039774 (choose!17716 (reg!9667 r!17423) s!11993))))

(assert (=> d!844249 (validRegex!4071 (reg!9667 r!17423))))

(assert (=> d!844249 (= (lemmaExistCutMatchRandMatchRSpecEquivalentStar!287 (reg!9667 r!17423) s!11993) lt!1039774)))

(declare-fun m!3345675 () Bool)

(assert (=> bs!527525 m!3345675))

(declare-fun m!3345677 () Bool)

(assert (=> bs!527525 m!3345677))

(declare-fun m!3345679 () Bool)

(assert (=> bs!527525 m!3345679))

(assert (=> bs!527525 m!3345639))

(assert (=> b!2987638 d!844249))

(declare-fun d!844255 () Bool)

(declare-fun isEmpty!19343 (Option!6729) Bool)

(assert (=> d!844255 (= (isDefined!5280 lt!1039724) (not (isEmpty!19343 lt!1039724)))))

(declare-fun bs!527526 () Bool)

(assert (= bs!527526 d!844255))

(declare-fun m!3345681 () Bool)

(assert (=> bs!527526 m!3345681))

(assert (=> b!2987638 d!844255))

(declare-fun d!844257 () Bool)

(assert (=> d!844257 (= (Exists!1611 lambda!111614) (choose!17715 lambda!111614))))

(declare-fun bs!527527 () Bool)

(assert (= bs!527527 d!844257))

(declare-fun m!3345683 () Bool)

(assert (=> bs!527527 m!3345683))

(assert (=> b!2987638 d!844257))

(declare-fun bs!527528 () Bool)

(declare-fun d!844259 () Bool)

(assert (= bs!527528 (and d!844259 b!2987733)))

(declare-fun lambda!111643 () Int)

(assert (=> bs!527528 (not (= lambda!111643 lambda!111628))))

(declare-fun bs!527529 () Bool)

(assert (= bs!527529 (and d!844259 d!844249)))

(assert (=> bs!527529 (not (= lambda!111643 lambda!111640))))

(assert (=> bs!527529 (= (= lt!1039719 (Star!9338 (reg!9667 r!17423))) (= lambda!111643 lambda!111639))))

(declare-fun bs!527530 () Bool)

(assert (= bs!527530 (and d!844259 b!2987735)))

(assert (=> bs!527530 (not (= lambda!111643 lambda!111627))))

(declare-fun bs!527531 () Bool)

(assert (= bs!527531 (and d!844259 b!2987638)))

(assert (=> bs!527531 (= lambda!111643 lambda!111613)))

(assert (=> bs!527531 (not (= lambda!111643 lambda!111614))))

(assert (=> d!844259 true))

(assert (=> d!844259 true))

(assert (=> d!844259 true))

(assert (=> d!844259 (= (isDefined!5280 (findConcatSeparation!1123 (reg!9667 r!17423) lt!1039719 Nil!35079 s!11993 s!11993)) (Exists!1611 lambda!111643))))

(declare-fun lt!1039777 () Unit!49079)

(declare-fun choose!17717 (Regex!9338 Regex!9338 List!35203) Unit!49079)

(assert (=> d!844259 (= lt!1039777 (choose!17717 (reg!9667 r!17423) lt!1039719 s!11993))))

(assert (=> d!844259 (validRegex!4071 (reg!9667 r!17423))))

(assert (=> d!844259 (= (lemmaFindConcatSeparationEquivalentToExists!901 (reg!9667 r!17423) lt!1039719 s!11993) lt!1039777)))

(declare-fun bs!527532 () Bool)

(assert (= bs!527532 d!844259))

(assert (=> bs!527532 m!3345523))

(assert (=> bs!527532 m!3345639))

(declare-fun m!3345685 () Bool)

(assert (=> bs!527532 m!3345685))

(declare-fun m!3345687 () Bool)

(assert (=> bs!527532 m!3345687))

(assert (=> bs!527532 m!3345523))

(declare-fun m!3345689 () Bool)

(assert (=> bs!527532 m!3345689))

(assert (=> b!2987638 d!844259))

(declare-fun b!2987937 () Bool)

(declare-fun e!1878533 () Bool)

(assert (=> b!2987937 (= e!1878533 tp_is_empty!16239)))

(assert (=> b!2987634 (= tp!950398 e!1878533)))

(declare-fun b!2987939 () Bool)

(declare-fun tp!950431 () Bool)

(assert (=> b!2987939 (= e!1878533 tp!950431)))

(declare-fun b!2987940 () Bool)

(declare-fun tp!950430 () Bool)

(declare-fun tp!950432 () Bool)

(assert (=> b!2987940 (= e!1878533 (and tp!950430 tp!950432))))

(declare-fun b!2987938 () Bool)

(declare-fun tp!950429 () Bool)

(declare-fun tp!950428 () Bool)

(assert (=> b!2987938 (= e!1878533 (and tp!950429 tp!950428))))

(assert (= (and b!2987634 (is-ElementMatch!9338 (reg!9667 r!17423))) b!2987937))

(assert (= (and b!2987634 (is-Concat!14659 (reg!9667 r!17423))) b!2987938))

(assert (= (and b!2987634 (is-Star!9338 (reg!9667 r!17423))) b!2987939))

(assert (= (and b!2987634 (is-Union!9338 (reg!9667 r!17423))) b!2987940))

(declare-fun b!2987945 () Bool)

(declare-fun e!1878536 () Bool)

(declare-fun tp!950435 () Bool)

(assert (=> b!2987945 (= e!1878536 (and tp_is_empty!16239 tp!950435))))

(assert (=> b!2987640 (= tp!950394 e!1878536)))

(assert (= (and b!2987640 (is-Cons!35079 (t!234268 s!11993))) b!2987945))

(declare-fun b!2987946 () Bool)

(declare-fun e!1878537 () Bool)

(assert (=> b!2987946 (= e!1878537 tp_is_empty!16239)))

(assert (=> b!2987637 (= tp!950395 e!1878537)))

(declare-fun b!2987948 () Bool)

(declare-fun tp!950439 () Bool)

(assert (=> b!2987948 (= e!1878537 tp!950439)))

(declare-fun b!2987949 () Bool)

(declare-fun tp!950438 () Bool)

(declare-fun tp!950440 () Bool)

(assert (=> b!2987949 (= e!1878537 (and tp!950438 tp!950440))))

(declare-fun b!2987947 () Bool)

(declare-fun tp!950437 () Bool)

(declare-fun tp!950436 () Bool)

(assert (=> b!2987947 (= e!1878537 (and tp!950437 tp!950436))))

(assert (= (and b!2987637 (is-ElementMatch!9338 (regOne!19189 r!17423))) b!2987946))

(assert (= (and b!2987637 (is-Concat!14659 (regOne!19189 r!17423))) b!2987947))

(assert (= (and b!2987637 (is-Star!9338 (regOne!19189 r!17423))) b!2987948))

(assert (= (and b!2987637 (is-Union!9338 (regOne!19189 r!17423))) b!2987949))

(declare-fun b!2987950 () Bool)

(declare-fun e!1878538 () Bool)

(assert (=> b!2987950 (= e!1878538 tp_is_empty!16239)))

(assert (=> b!2987637 (= tp!950397 e!1878538)))

(declare-fun b!2987952 () Bool)

(declare-fun tp!950444 () Bool)

(assert (=> b!2987952 (= e!1878538 tp!950444)))

(declare-fun b!2987953 () Bool)

(declare-fun tp!950443 () Bool)

(declare-fun tp!950445 () Bool)

(assert (=> b!2987953 (= e!1878538 (and tp!950443 tp!950445))))

(declare-fun b!2987951 () Bool)

(declare-fun tp!950442 () Bool)

(declare-fun tp!950441 () Bool)

(assert (=> b!2987951 (= e!1878538 (and tp!950442 tp!950441))))

(assert (= (and b!2987637 (is-ElementMatch!9338 (regTwo!19189 r!17423))) b!2987950))

(assert (= (and b!2987637 (is-Concat!14659 (regTwo!19189 r!17423))) b!2987951))

(assert (= (and b!2987637 (is-Star!9338 (regTwo!19189 r!17423))) b!2987952))

(assert (= (and b!2987637 (is-Union!9338 (regTwo!19189 r!17423))) b!2987953))

(declare-fun b!2987954 () Bool)

(declare-fun e!1878539 () Bool)

(assert (=> b!2987954 (= e!1878539 tp_is_empty!16239)))

(assert (=> b!2987633 (= tp!950399 e!1878539)))

(declare-fun b!2987956 () Bool)

(declare-fun tp!950449 () Bool)

(assert (=> b!2987956 (= e!1878539 tp!950449)))

(declare-fun b!2987957 () Bool)

(declare-fun tp!950448 () Bool)

(declare-fun tp!950450 () Bool)

(assert (=> b!2987957 (= e!1878539 (and tp!950448 tp!950450))))

(declare-fun b!2987955 () Bool)

(declare-fun tp!950447 () Bool)

(declare-fun tp!950446 () Bool)

(assert (=> b!2987955 (= e!1878539 (and tp!950447 tp!950446))))

(assert (= (and b!2987633 (is-ElementMatch!9338 (regOne!19188 r!17423))) b!2987954))

(assert (= (and b!2987633 (is-Concat!14659 (regOne!19188 r!17423))) b!2987955))

(assert (= (and b!2987633 (is-Star!9338 (regOne!19188 r!17423))) b!2987956))

(assert (= (and b!2987633 (is-Union!9338 (regOne!19188 r!17423))) b!2987957))

(declare-fun b!2987958 () Bool)

(declare-fun e!1878540 () Bool)

(assert (=> b!2987958 (= e!1878540 tp_is_empty!16239)))

(assert (=> b!2987633 (= tp!950396 e!1878540)))

(declare-fun b!2987960 () Bool)

(declare-fun tp!950454 () Bool)

(assert (=> b!2987960 (= e!1878540 tp!950454)))

(declare-fun b!2987961 () Bool)

(declare-fun tp!950453 () Bool)

(declare-fun tp!950455 () Bool)

(assert (=> b!2987961 (= e!1878540 (and tp!950453 tp!950455))))

(declare-fun b!2987959 () Bool)

(declare-fun tp!950452 () Bool)

(declare-fun tp!950451 () Bool)

(assert (=> b!2987959 (= e!1878540 (and tp!950452 tp!950451))))

(assert (= (and b!2987633 (is-ElementMatch!9338 (regTwo!19188 r!17423))) b!2987958))

(assert (= (and b!2987633 (is-Concat!14659 (regTwo!19188 r!17423))) b!2987959))

(assert (= (and b!2987633 (is-Star!9338 (regTwo!19188 r!17423))) b!2987960))

(assert (= (and b!2987633 (is-Union!9338 (regTwo!19188 r!17423))) b!2987961))

(push 1)

(assert (not b!2987849))

(assert (not bm!199762))

(assert (not bm!199744))

(assert (not b!2987842))

(assert (not b!2987938))

(assert (not b!2987902))

(assert (not bm!199745))

(assert (not b!2987864))

(assert (not b!2987940))

(assert (not b!2987799))

(assert (not bm!199758))

(assert (not b!2987794))

(assert (not b!2987857))

(assert (not b!2987904))

(assert (not d!844237))

(assert (not b!2987871))

(assert tp_is_empty!16239)

(assert (not b!2987727))

(assert (not b!2987866))

(assert (not b!2987802))

(assert (not b!2987873))

(assert (not b!2987960))

(assert (not b!2987898))

(assert (not b!2987947))

(assert (not b!2987730))

(assert (not b!2987956))

(assert (not bm!199759))

(assert (not d!844247))

(assert (not b!2987948))

(assert (not d!844249))

(assert (not d!844255))

(assert (not b!2987959))

(assert (not b!2987901))

(assert (not b!2987804))

(assert (not b!2987939))

(assert (not d!844227))

(assert (not b!2987957))

(assert (not d!844257))

(assert (not b!2987854))

(assert (not b!2987952))

(assert (not d!844233))

(assert (not b!2987868))

(assert (not b!2987859))

(assert (not b!2987953))

(assert (not d!844225))

(assert (not b!2987795))

(assert (not b!2987903))

(assert (not b!2987945))

(assert (not b!2987850))

(assert (not b!2987852))

(assert (not d!844259))

(assert (not b!2987951))

(assert (not b!2987797))

(assert (not bm!199750))

(assert (not b!2987955))

(assert (not d!844245))

(assert (not b!2987863))

(assert (not bm!199761))

(assert (not b!2987961))

(assert (not b!2987949))

(assert (not b!2987906))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

