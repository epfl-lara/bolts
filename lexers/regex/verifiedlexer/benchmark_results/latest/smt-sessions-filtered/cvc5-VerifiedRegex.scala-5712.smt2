; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!284146 () Bool)

(assert start!284146)

(declare-fun b!2916731 () Bool)

(assert (=> b!2916731 true))

(assert (=> b!2916731 true))

(declare-fun lambda!108490 () Int)

(declare-fun lambda!108489 () Int)

(assert (=> b!2916731 (not (= lambda!108490 lambda!108489))))

(assert (=> b!2916731 true))

(assert (=> b!2916731 true))

(declare-fun b!2916724 () Bool)

(declare-fun e!1840460 () Bool)

(declare-fun tp_is_empty!15511 () Bool)

(assert (=> b!2916724 (= e!1840460 tp_is_empty!15511)))

(declare-fun res!1204117 () Bool)

(declare-fun e!1840464 () Bool)

(assert (=> start!284146 (=> (not res!1204117) (not e!1840464))))

(declare-datatypes ((C!18134 0))(
  ( (C!18135 (val!11103 Int)) )
))
(declare-datatypes ((Regex!8974 0))(
  ( (ElementMatch!8974 (c!475754 C!18134)) (Concat!14295 (regOne!18460 Regex!8974) (regTwo!18460 Regex!8974)) (EmptyExpr!8974) (Star!8974 (reg!9303 Regex!8974)) (EmptyLang!8974) (Union!8974 (regOne!18461 Regex!8974) (regTwo!18461 Regex!8974)) )
))
(declare-fun r!17423 () Regex!8974)

(declare-fun validRegex!3707 (Regex!8974) Bool)

(assert (=> start!284146 (= res!1204117 (validRegex!3707 r!17423))))

(assert (=> start!284146 e!1840464))

(assert (=> start!284146 e!1840460))

(declare-fun e!1840461 () Bool)

(assert (=> start!284146 e!1840461))

(declare-fun b!2916725 () Bool)

(declare-fun tp!936471 () Bool)

(declare-fun tp!936472 () Bool)

(assert (=> b!2916725 (= e!1840460 (and tp!936471 tp!936472))))

(declare-fun b!2916726 () Bool)

(declare-fun res!1204119 () Bool)

(declare-fun e!1840463 () Bool)

(assert (=> b!2916726 (=> res!1204119 e!1840463)))

(declare-datatypes ((List!34839 0))(
  ( (Nil!34715) (Cons!34715 (h!40135 C!18134) (t!233904 List!34839)) )
))
(declare-fun s!11993 () List!34839)

(declare-fun isEmpty!18970 (List!34839) Bool)

(assert (=> b!2916726 (= res!1204119 (isEmpty!18970 s!11993))))

(declare-fun b!2916727 () Bool)

(declare-fun res!1204116 () Bool)

(declare-fun e!1840462 () Bool)

(assert (=> b!2916727 (=> res!1204116 e!1840462)))

(declare-datatypes ((tuple2!33686 0))(
  ( (tuple2!33687 (_1!19975 List!34839) (_2!19975 List!34839)) )
))
(declare-fun lt!1024846 () tuple2!33686)

(declare-fun matchR!3856 (Regex!8974 List!34839) Bool)

(assert (=> b!2916727 (= res!1204116 (not (matchR!3856 (regTwo!18460 r!17423) (_2!19975 lt!1024846))))))

(declare-fun b!2916728 () Bool)

(declare-fun tp!936475 () Bool)

(assert (=> b!2916728 (= e!1840461 (and tp_is_empty!15511 tp!936475))))

(declare-fun b!2916729 () Bool)

(declare-fun lt!1024851 () Regex!8974)

(assert (=> b!2916729 (= e!1840462 (validRegex!3707 lt!1024851))))

(assert (=> b!2916729 (matchR!3856 lt!1024851 (_2!19975 lt!1024846))))

(declare-fun simplify!11 (Regex!8974) Regex!8974)

(assert (=> b!2916729 (= lt!1024851 (simplify!11 (regTwo!18460 r!17423)))))

(declare-datatypes ((Unit!48287 0))(
  ( (Unit!48288) )
))
(declare-fun lt!1024845 () Unit!48287)

(declare-fun lemmaSimplifySound!9 (Regex!8974 List!34839) Unit!48287)

(assert (=> b!2916729 (= lt!1024845 (lemmaSimplifySound!9 (regTwo!18460 r!17423) (_2!19975 lt!1024846)))))

(assert (=> b!2916729 (matchR!3856 (simplify!11 (regOne!18460 r!17423)) (_1!19975 lt!1024846))))

(declare-fun lt!1024844 () Unit!48287)

(assert (=> b!2916729 (= lt!1024844 (lemmaSimplifySound!9 (regOne!18460 r!17423) (_1!19975 lt!1024846)))))

(declare-fun b!2916730 () Bool)

(declare-fun tp!936474 () Bool)

(assert (=> b!2916730 (= e!1840460 tp!936474)))

(assert (=> b!2916731 (= e!1840463 e!1840462)))

(declare-fun res!1204118 () Bool)

(assert (=> b!2916731 (=> res!1204118 e!1840462)))

(assert (=> b!2916731 (= res!1204118 (not (matchR!3856 (regOne!18460 r!17423) (_1!19975 lt!1024846))))))

(declare-datatypes ((Option!6575 0))(
  ( (None!6574) (Some!6574 (v!34708 tuple2!33686)) )
))
(declare-fun lt!1024850 () Option!6575)

(declare-fun get!10563 (Option!6575) tuple2!33686)

(assert (=> b!2916731 (= lt!1024846 (get!10563 lt!1024850))))

(declare-fun Exists!1354 (Int) Bool)

(assert (=> b!2916731 (= (Exists!1354 lambda!108489) (Exists!1354 lambda!108490))))

(declare-fun lt!1024847 () Unit!48287)

(declare-fun lemmaExistCutMatchRandMatchRSpecEquivalent!495 (Regex!8974 Regex!8974 List!34839) Unit!48287)

(assert (=> b!2916731 (= lt!1024847 (lemmaExistCutMatchRandMatchRSpecEquivalent!495 (regOne!18460 r!17423) (regTwo!18460 r!17423) s!11993))))

(declare-fun isDefined!5126 (Option!6575) Bool)

(assert (=> b!2916731 (= (isDefined!5126 lt!1024850) (Exists!1354 lambda!108489))))

(declare-fun findConcatSeparation!969 (Regex!8974 Regex!8974 List!34839 List!34839 List!34839) Option!6575)

(assert (=> b!2916731 (= lt!1024850 (findConcatSeparation!969 (regOne!18460 r!17423) (regTwo!18460 r!17423) Nil!34715 s!11993 s!11993))))

(declare-fun lt!1024852 () Unit!48287)

(declare-fun lemmaFindConcatSeparationEquivalentToExists!751 (Regex!8974 Regex!8974 List!34839) Unit!48287)

(assert (=> b!2916731 (= lt!1024852 (lemmaFindConcatSeparationEquivalentToExists!751 (regOne!18460 r!17423) (regTwo!18460 r!17423) s!11993))))

(declare-fun b!2916732 () Bool)

(declare-fun tp!936473 () Bool)

(declare-fun tp!936470 () Bool)

(assert (=> b!2916732 (= e!1840460 (and tp!936473 tp!936470))))

(declare-fun b!2916733 () Bool)

(assert (=> b!2916733 (= e!1840464 (not e!1840463))))

(declare-fun res!1204115 () Bool)

(assert (=> b!2916733 (=> res!1204115 e!1840463)))

(declare-fun lt!1024849 () Bool)

(assert (=> b!2916733 (= res!1204115 (or (not lt!1024849) (not (is-Concat!14295 r!17423))))))

(declare-fun matchRSpec!1111 (Regex!8974 List!34839) Bool)

(assert (=> b!2916733 (= lt!1024849 (matchRSpec!1111 r!17423 s!11993))))

(assert (=> b!2916733 (= lt!1024849 (matchR!3856 r!17423 s!11993))))

(declare-fun lt!1024848 () Unit!48287)

(declare-fun mainMatchTheorem!1111 (Regex!8974 List!34839) Unit!48287)

(assert (=> b!2916733 (= lt!1024848 (mainMatchTheorem!1111 r!17423 s!11993))))

(assert (= (and start!284146 res!1204117) b!2916733))

(assert (= (and b!2916733 (not res!1204115)) b!2916726))

(assert (= (and b!2916726 (not res!1204119)) b!2916731))

(assert (= (and b!2916731 (not res!1204118)) b!2916727))

(assert (= (and b!2916727 (not res!1204116)) b!2916729))

(assert (= (and start!284146 (is-ElementMatch!8974 r!17423)) b!2916724))

(assert (= (and start!284146 (is-Concat!14295 r!17423)) b!2916732))

(assert (= (and start!284146 (is-Star!8974 r!17423)) b!2916730))

(assert (= (and start!284146 (is-Union!8974 r!17423)) b!2916725))

(assert (= (and start!284146 (is-Cons!34715 s!11993)) b!2916728))

(declare-fun m!3315109 () Bool)

(assert (=> b!2916733 m!3315109))

(declare-fun m!3315111 () Bool)

(assert (=> b!2916733 m!3315111))

(declare-fun m!3315113 () Bool)

(assert (=> b!2916733 m!3315113))

(declare-fun m!3315115 () Bool)

(assert (=> b!2916729 m!3315115))

(declare-fun m!3315117 () Bool)

(assert (=> b!2916729 m!3315117))

(declare-fun m!3315119 () Bool)

(assert (=> b!2916729 m!3315119))

(assert (=> b!2916729 m!3315119))

(declare-fun m!3315121 () Bool)

(assert (=> b!2916729 m!3315121))

(declare-fun m!3315123 () Bool)

(assert (=> b!2916729 m!3315123))

(declare-fun m!3315125 () Bool)

(assert (=> b!2916729 m!3315125))

(declare-fun m!3315127 () Bool)

(assert (=> b!2916729 m!3315127))

(declare-fun m!3315129 () Bool)

(assert (=> b!2916727 m!3315129))

(declare-fun m!3315131 () Bool)

(assert (=> start!284146 m!3315131))

(declare-fun m!3315133 () Bool)

(assert (=> b!2916726 m!3315133))

(declare-fun m!3315135 () Bool)

(assert (=> b!2916731 m!3315135))

(declare-fun m!3315137 () Bool)

(assert (=> b!2916731 m!3315137))

(declare-fun m!3315139 () Bool)

(assert (=> b!2916731 m!3315139))

(declare-fun m!3315141 () Bool)

(assert (=> b!2916731 m!3315141))

(declare-fun m!3315143 () Bool)

(assert (=> b!2916731 m!3315143))

(declare-fun m!3315145 () Bool)

(assert (=> b!2916731 m!3315145))

(declare-fun m!3315147 () Bool)

(assert (=> b!2916731 m!3315147))

(declare-fun m!3315149 () Bool)

(assert (=> b!2916731 m!3315149))

(assert (=> b!2916731 m!3315141))

(push 1)

(assert (not start!284146))

(assert (not b!2916730))

(assert (not b!2916727))

(assert (not b!2916728))

(assert (not b!2916729))

(assert tp_is_empty!15511)

(assert (not b!2916726))

(assert (not b!2916732))

(assert (not b!2916725))

(assert (not b!2916733))

(assert (not b!2916731))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun bs!524843 () Bool)

(declare-fun d!838193 () Bool)

(assert (= bs!524843 (and d!838193 b!2916731)))

(declare-fun lambda!108503 () Int)

(assert (=> bs!524843 (= lambda!108503 lambda!108489)))

(assert (=> bs!524843 (not (= lambda!108503 lambda!108490))))

(assert (=> d!838193 true))

(assert (=> d!838193 true))

(assert (=> d!838193 true))

(declare-fun lambda!108504 () Int)

(assert (=> bs!524843 (not (= lambda!108504 lambda!108489))))

(assert (=> bs!524843 (= lambda!108504 lambda!108490)))

(declare-fun bs!524844 () Bool)

(assert (= bs!524844 d!838193))

(assert (=> bs!524844 (not (= lambda!108504 lambda!108503))))

(assert (=> d!838193 true))

(assert (=> d!838193 true))

(assert (=> d!838193 true))

(assert (=> d!838193 (= (Exists!1354 lambda!108503) (Exists!1354 lambda!108504))))

(declare-fun lt!1024882 () Unit!48287)

(declare-fun choose!17181 (Regex!8974 Regex!8974 List!34839) Unit!48287)

(assert (=> d!838193 (= lt!1024882 (choose!17181 (regOne!18460 r!17423) (regTwo!18460 r!17423) s!11993))))

(assert (=> d!838193 (validRegex!3707 (regOne!18460 r!17423))))

(assert (=> d!838193 (= (lemmaExistCutMatchRandMatchRSpecEquivalent!495 (regOne!18460 r!17423) (regTwo!18460 r!17423) s!11993) lt!1024882)))

(declare-fun m!3315193 () Bool)

(assert (=> bs!524844 m!3315193))

(declare-fun m!3315195 () Bool)

(assert (=> bs!524844 m!3315195))

(declare-fun m!3315197 () Bool)

(assert (=> bs!524844 m!3315197))

(declare-fun m!3315199 () Bool)

(assert (=> bs!524844 m!3315199))

(assert (=> b!2916731 d!838193))

(declare-fun bm!190616 () Bool)

(declare-fun call!190621 () Bool)

(assert (=> bm!190616 (= call!190621 (isEmpty!18970 (_1!19975 lt!1024846)))))

(declare-fun b!2916820 () Bool)

(declare-fun res!1204173 () Bool)

(declare-fun e!1840508 () Bool)

(assert (=> b!2916820 (=> res!1204173 e!1840508)))

(assert (=> b!2916820 (= res!1204173 (not (is-ElementMatch!8974 (regOne!18460 r!17423))))))

(declare-fun e!1840505 () Bool)

(assert (=> b!2916820 (= e!1840505 e!1840508)))

(declare-fun b!2916821 () Bool)

(declare-fun res!1204176 () Bool)

(declare-fun e!1840506 () Bool)

(assert (=> b!2916821 (=> (not res!1204176) (not e!1840506))))

(declare-fun tail!4707 (List!34839) List!34839)

(assert (=> b!2916821 (= res!1204176 (isEmpty!18970 (tail!4707 (_1!19975 lt!1024846))))))

(declare-fun b!2916822 () Bool)

(declare-fun e!1840510 () Bool)

(declare-fun lt!1024885 () Bool)

(assert (=> b!2916822 (= e!1840510 (= lt!1024885 call!190621))))

(declare-fun b!2916823 () Bool)

(declare-fun res!1204171 () Bool)

(assert (=> b!2916823 (=> res!1204171 e!1840508)))

(assert (=> b!2916823 (= res!1204171 e!1840506)))

(declare-fun res!1204177 () Bool)

(assert (=> b!2916823 (=> (not res!1204177) (not e!1840506))))

(assert (=> b!2916823 (= res!1204177 lt!1024885)))

(declare-fun b!2916824 () Bool)

(declare-fun res!1204178 () Bool)

(declare-fun e!1840504 () Bool)

(assert (=> b!2916824 (=> res!1204178 e!1840504)))

(assert (=> b!2916824 (= res!1204178 (not (isEmpty!18970 (tail!4707 (_1!19975 lt!1024846)))))))

(declare-fun b!2916825 () Bool)

(assert (=> b!2916825 (= e!1840510 e!1840505)))

(declare-fun c!475763 () Bool)

(assert (=> b!2916825 (= c!475763 (is-EmptyLang!8974 (regOne!18460 r!17423)))))

(declare-fun b!2916826 () Bool)

(declare-fun e!1840509 () Bool)

(declare-fun nullable!2808 (Regex!8974) Bool)

(assert (=> b!2916826 (= e!1840509 (nullable!2808 (regOne!18460 r!17423)))))

(declare-fun b!2916827 () Bool)

(declare-fun head!6481 (List!34839) C!18134)

(assert (=> b!2916827 (= e!1840504 (not (= (head!6481 (_1!19975 lt!1024846)) (c!475754 (regOne!18460 r!17423)))))))

(declare-fun b!2916828 () Bool)

(declare-fun e!1840507 () Bool)

(assert (=> b!2916828 (= e!1840508 e!1840507)))

(declare-fun res!1204172 () Bool)

(assert (=> b!2916828 (=> (not res!1204172) (not e!1840507))))

(assert (=> b!2916828 (= res!1204172 (not lt!1024885))))

(declare-fun b!2916829 () Bool)

(declare-fun derivativeStep!2422 (Regex!8974 C!18134) Regex!8974)

(assert (=> b!2916829 (= e!1840509 (matchR!3856 (derivativeStep!2422 (regOne!18460 r!17423) (head!6481 (_1!19975 lt!1024846))) (tail!4707 (_1!19975 lt!1024846))))))

(declare-fun b!2916830 () Bool)

(assert (=> b!2916830 (= e!1840505 (not lt!1024885))))

(declare-fun b!2916831 () Bool)

(assert (=> b!2916831 (= e!1840507 e!1840504)))

(declare-fun res!1204175 () Bool)

(assert (=> b!2916831 (=> res!1204175 e!1840504)))

(assert (=> b!2916831 (= res!1204175 call!190621)))

(declare-fun d!838195 () Bool)

(assert (=> d!838195 e!1840510))

(declare-fun c!475762 () Bool)

(assert (=> d!838195 (= c!475762 (is-EmptyExpr!8974 (regOne!18460 r!17423)))))

(assert (=> d!838195 (= lt!1024885 e!1840509)))

(declare-fun c!475764 () Bool)

(assert (=> d!838195 (= c!475764 (isEmpty!18970 (_1!19975 lt!1024846)))))

(assert (=> d!838195 (validRegex!3707 (regOne!18460 r!17423))))

(assert (=> d!838195 (= (matchR!3856 (regOne!18460 r!17423) (_1!19975 lt!1024846)) lt!1024885)))

(declare-fun b!2916832 () Bool)

(declare-fun res!1204174 () Bool)

(assert (=> b!2916832 (=> (not res!1204174) (not e!1840506))))

(assert (=> b!2916832 (= res!1204174 (not call!190621))))

(declare-fun b!2916833 () Bool)

(assert (=> b!2916833 (= e!1840506 (= (head!6481 (_1!19975 lt!1024846)) (c!475754 (regOne!18460 r!17423))))))

(assert (= (and d!838195 c!475764) b!2916826))

(assert (= (and d!838195 (not c!475764)) b!2916829))

(assert (= (and d!838195 c!475762) b!2916822))

(assert (= (and d!838195 (not c!475762)) b!2916825))

(assert (= (and b!2916825 c!475763) b!2916830))

(assert (= (and b!2916825 (not c!475763)) b!2916820))

(assert (= (and b!2916820 (not res!1204173)) b!2916823))

(assert (= (and b!2916823 res!1204177) b!2916832))

(assert (= (and b!2916832 res!1204174) b!2916821))

(assert (= (and b!2916821 res!1204176) b!2916833))

(assert (= (and b!2916823 (not res!1204171)) b!2916828))

(assert (= (and b!2916828 res!1204172) b!2916831))

(assert (= (and b!2916831 (not res!1204175)) b!2916824))

(assert (= (and b!2916824 (not res!1204178)) b!2916827))

(assert (= (or b!2916822 b!2916831 b!2916832) bm!190616))

(declare-fun m!3315201 () Bool)

(assert (=> d!838195 m!3315201))

(assert (=> d!838195 m!3315199))

(declare-fun m!3315203 () Bool)

(assert (=> b!2916821 m!3315203))

(assert (=> b!2916821 m!3315203))

(declare-fun m!3315205 () Bool)

(assert (=> b!2916821 m!3315205))

(declare-fun m!3315207 () Bool)

(assert (=> b!2916833 m!3315207))

(declare-fun m!3315209 () Bool)

(assert (=> b!2916826 m!3315209))

(assert (=> b!2916824 m!3315203))

(assert (=> b!2916824 m!3315203))

(assert (=> b!2916824 m!3315205))

(assert (=> bm!190616 m!3315201))

(assert (=> b!2916829 m!3315207))

(assert (=> b!2916829 m!3315207))

(declare-fun m!3315211 () Bool)

(assert (=> b!2916829 m!3315211))

(assert (=> b!2916829 m!3315203))

(assert (=> b!2916829 m!3315211))

(assert (=> b!2916829 m!3315203))

(declare-fun m!3315213 () Bool)

(assert (=> b!2916829 m!3315213))

(assert (=> b!2916827 m!3315207))

(assert (=> b!2916731 d!838195))

(declare-fun d!838199 () Bool)

(declare-fun choose!17182 (Int) Bool)

(assert (=> d!838199 (= (Exists!1354 lambda!108489) (choose!17182 lambda!108489))))

(declare-fun bs!524845 () Bool)

(assert (= bs!524845 d!838199))

(declare-fun m!3315215 () Bool)

(assert (=> bs!524845 m!3315215))

(assert (=> b!2916731 d!838199))

(declare-fun d!838201 () Bool)

(declare-fun isEmpty!18972 (Option!6575) Bool)

(assert (=> d!838201 (= (isDefined!5126 lt!1024850) (not (isEmpty!18972 lt!1024850)))))

(declare-fun bs!524846 () Bool)

(assert (= bs!524846 d!838201))

(declare-fun m!3315217 () Bool)

(assert (=> bs!524846 m!3315217))

(assert (=> b!2916731 d!838201))

(declare-fun d!838203 () Bool)

(assert (=> d!838203 (= (get!10563 lt!1024850) (v!34708 lt!1024850))))

(assert (=> b!2916731 d!838203))

(declare-fun d!838205 () Bool)

(assert (=> d!838205 (= (Exists!1354 lambda!108490) (choose!17182 lambda!108490))))

(declare-fun bs!524847 () Bool)

(assert (= bs!524847 d!838205))

(declare-fun m!3315219 () Bool)

(assert (=> bs!524847 m!3315219))

(assert (=> b!2916731 d!838205))

(declare-fun b!2916880 () Bool)

(declare-fun e!1840540 () Bool)

(declare-fun lt!1024894 () Option!6575)

(assert (=> b!2916880 (= e!1840540 (not (isDefined!5126 lt!1024894)))))

(declare-fun b!2916881 () Bool)

(declare-fun e!1840538 () Bool)

(assert (=> b!2916881 (= e!1840538 (matchR!3856 (regTwo!18460 r!17423) s!11993))))

(declare-fun b!2916882 () Bool)

(declare-fun e!1840539 () Option!6575)

(declare-fun e!1840537 () Option!6575)

(assert (=> b!2916882 (= e!1840539 e!1840537)))

(declare-fun c!475777 () Bool)

(assert (=> b!2916882 (= c!475777 (is-Nil!34715 s!11993))))

(declare-fun b!2916883 () Bool)

(declare-fun res!1204203 () Bool)

(declare-fun e!1840541 () Bool)

(assert (=> b!2916883 (=> (not res!1204203) (not e!1840541))))

(assert (=> b!2916883 (= res!1204203 (matchR!3856 (regOne!18460 r!17423) (_1!19975 (get!10563 lt!1024894))))))

(declare-fun b!2916884 () Bool)

(declare-fun res!1204204 () Bool)

(assert (=> b!2916884 (=> (not res!1204204) (not e!1840541))))

(assert (=> b!2916884 (= res!1204204 (matchR!3856 (regTwo!18460 r!17423) (_2!19975 (get!10563 lt!1024894))))))

(declare-fun d!838207 () Bool)

(assert (=> d!838207 e!1840540))

(declare-fun res!1204205 () Bool)

(assert (=> d!838207 (=> res!1204205 e!1840540)))

(assert (=> d!838207 (= res!1204205 e!1840541)))

(declare-fun res!1204202 () Bool)

(assert (=> d!838207 (=> (not res!1204202) (not e!1840541))))

(assert (=> d!838207 (= res!1204202 (isDefined!5126 lt!1024894))))

(assert (=> d!838207 (= lt!1024894 e!1840539)))

(declare-fun c!475778 () Bool)

(assert (=> d!838207 (= c!475778 e!1840538)))

(declare-fun res!1204201 () Bool)

(assert (=> d!838207 (=> (not res!1204201) (not e!1840538))))

(assert (=> d!838207 (= res!1204201 (matchR!3856 (regOne!18460 r!17423) Nil!34715))))

(assert (=> d!838207 (validRegex!3707 (regOne!18460 r!17423))))

(assert (=> d!838207 (= (findConcatSeparation!969 (regOne!18460 r!17423) (regTwo!18460 r!17423) Nil!34715 s!11993 s!11993) lt!1024894)))

(declare-fun b!2916885 () Bool)

(assert (=> b!2916885 (= e!1840537 None!6574)))

(declare-fun b!2916886 () Bool)

(assert (=> b!2916886 (= e!1840539 (Some!6574 (tuple2!33687 Nil!34715 s!11993)))))

(declare-fun b!2916887 () Bool)

(declare-fun ++!8282 (List!34839 List!34839) List!34839)

(assert (=> b!2916887 (= e!1840541 (= (++!8282 (_1!19975 (get!10563 lt!1024894)) (_2!19975 (get!10563 lt!1024894))) s!11993))))

(declare-fun b!2916888 () Bool)

(declare-fun lt!1024893 () Unit!48287)

(declare-fun lt!1024892 () Unit!48287)

(assert (=> b!2916888 (= lt!1024893 lt!1024892)))

(assert (=> b!2916888 (= (++!8282 (++!8282 Nil!34715 (Cons!34715 (h!40135 s!11993) Nil!34715)) (t!233904 s!11993)) s!11993)))

(declare-fun lemmaMoveElementToOtherListKeepsConcatEq!918 (List!34839 C!18134 List!34839 List!34839) Unit!48287)

(assert (=> b!2916888 (= lt!1024892 (lemmaMoveElementToOtherListKeepsConcatEq!918 Nil!34715 (h!40135 s!11993) (t!233904 s!11993) s!11993))))

(assert (=> b!2916888 (= e!1840537 (findConcatSeparation!969 (regOne!18460 r!17423) (regTwo!18460 r!17423) (++!8282 Nil!34715 (Cons!34715 (h!40135 s!11993) Nil!34715)) (t!233904 s!11993) s!11993))))

(assert (= (and d!838207 res!1204201) b!2916881))

(assert (= (and d!838207 c!475778) b!2916886))

(assert (= (and d!838207 (not c!475778)) b!2916882))

(assert (= (and b!2916882 c!475777) b!2916885))

(assert (= (and b!2916882 (not c!475777)) b!2916888))

(assert (= (and d!838207 res!1204202) b!2916883))

(assert (= (and b!2916883 res!1204203) b!2916884))

(assert (= (and b!2916884 res!1204204) b!2916887))

(assert (= (and d!838207 (not res!1204205)) b!2916880))

(declare-fun m!3315221 () Bool)

(assert (=> b!2916881 m!3315221))

(declare-fun m!3315223 () Bool)

(assert (=> b!2916888 m!3315223))

(assert (=> b!2916888 m!3315223))

(declare-fun m!3315225 () Bool)

(assert (=> b!2916888 m!3315225))

(declare-fun m!3315227 () Bool)

(assert (=> b!2916888 m!3315227))

(assert (=> b!2916888 m!3315223))

(declare-fun m!3315229 () Bool)

(assert (=> b!2916888 m!3315229))

(declare-fun m!3315231 () Bool)

(assert (=> b!2916884 m!3315231))

(declare-fun m!3315233 () Bool)

(assert (=> b!2916884 m!3315233))

(declare-fun m!3315235 () Bool)

(assert (=> b!2916880 m!3315235))

(assert (=> b!2916883 m!3315231))

(declare-fun m!3315237 () Bool)

(assert (=> b!2916883 m!3315237))

(assert (=> b!2916887 m!3315231))

(declare-fun m!3315239 () Bool)

(assert (=> b!2916887 m!3315239))

(assert (=> d!838207 m!3315235))

(declare-fun m!3315241 () Bool)

(assert (=> d!838207 m!3315241))

(assert (=> d!838207 m!3315199))

(assert (=> b!2916731 d!838207))

(declare-fun bs!524848 () Bool)

(declare-fun d!838209 () Bool)

(assert (= bs!524848 (and d!838209 b!2916731)))

(declare-fun lambda!108511 () Int)

(assert (=> bs!524848 (= lambda!108511 lambda!108489)))

(assert (=> bs!524848 (not (= lambda!108511 lambda!108490))))

(declare-fun bs!524849 () Bool)

(assert (= bs!524849 (and d!838209 d!838193)))

(assert (=> bs!524849 (= lambda!108511 lambda!108503)))

(assert (=> bs!524849 (not (= lambda!108511 lambda!108504))))

(assert (=> d!838209 true))

(assert (=> d!838209 true))

(assert (=> d!838209 true))

(assert (=> d!838209 (= (isDefined!5126 (findConcatSeparation!969 (regOne!18460 r!17423) (regTwo!18460 r!17423) Nil!34715 s!11993 s!11993)) (Exists!1354 lambda!108511))))

(declare-fun lt!1024897 () Unit!48287)

(declare-fun choose!17183 (Regex!8974 Regex!8974 List!34839) Unit!48287)

(assert (=> d!838209 (= lt!1024897 (choose!17183 (regOne!18460 r!17423) (regTwo!18460 r!17423) s!11993))))

(assert (=> d!838209 (validRegex!3707 (regOne!18460 r!17423))))

(assert (=> d!838209 (= (lemmaFindConcatSeparationEquivalentToExists!751 (regOne!18460 r!17423) (regTwo!18460 r!17423) s!11993) lt!1024897)))

(declare-fun bs!524850 () Bool)

(assert (= bs!524850 d!838209))

(declare-fun m!3315243 () Bool)

(assert (=> bs!524850 m!3315243))

(declare-fun m!3315245 () Bool)

(assert (=> bs!524850 m!3315245))

(assert (=> bs!524850 m!3315199))

(assert (=> bs!524850 m!3315137))

(declare-fun m!3315247 () Bool)

(assert (=> bs!524850 m!3315247))

(assert (=> bs!524850 m!3315137))

(assert (=> b!2916731 d!838209))

(declare-fun b!2916923 () Bool)

(declare-fun e!1840573 () Bool)

(declare-fun e!1840564 () Bool)

(assert (=> b!2916923 (= e!1840573 e!1840564)))

(declare-fun res!1204228 () Bool)

(assert (=> b!2916923 (= res!1204228 (not (nullable!2808 (reg!9303 r!17423))))))

(assert (=> b!2916923 (=> (not res!1204228) (not e!1840564))))

(declare-fun bm!190628 () Bool)

(declare-fun call!190634 () Bool)

(declare-fun call!190635 () Bool)

(assert (=> bm!190628 (= call!190634 call!190635)))

(declare-fun b!2916926 () Bool)

(declare-fun e!1840570 () Bool)

(assert (=> b!2916926 (= e!1840573 e!1840570)))

(declare-fun c!475788 () Bool)

(assert (=> b!2916926 (= c!475788 (is-Union!8974 r!17423))))

(declare-fun b!2916927 () Bool)

(declare-fun e!1840572 () Bool)

(assert (=> b!2916927 (= e!1840572 e!1840573)))

(declare-fun c!475787 () Bool)

(assert (=> b!2916927 (= c!475787 (is-Star!8974 r!17423))))

(declare-fun d!838211 () Bool)

(declare-fun res!1204231 () Bool)

(assert (=> d!838211 (=> res!1204231 e!1840572)))

(assert (=> d!838211 (= res!1204231 (is-ElementMatch!8974 r!17423))))

(assert (=> d!838211 (= (validRegex!3707 r!17423) e!1840572)))

(declare-fun b!2916929 () Bool)

(declare-fun e!1840571 () Bool)

(declare-fun e!1840566 () Bool)

(assert (=> b!2916929 (= e!1840571 e!1840566)))

(declare-fun res!1204230 () Bool)

(assert (=> b!2916929 (=> (not res!1204230) (not e!1840566))))

(assert (=> b!2916929 (= res!1204230 call!190634)))

(declare-fun bm!190630 () Bool)

(declare-fun call!190636 () Bool)

(assert (=> bm!190630 (= call!190636 (validRegex!3707 (ite c!475788 (regOne!18461 r!17423) (regTwo!18460 r!17423))))))

(declare-fun b!2916930 () Bool)

(declare-fun res!1204226 () Bool)

(assert (=> b!2916930 (=> res!1204226 e!1840571)))

(assert (=> b!2916930 (= res!1204226 (not (is-Concat!14295 r!17423)))))

(assert (=> b!2916930 (= e!1840570 e!1840571)))

(declare-fun bm!190631 () Bool)

(assert (=> bm!190631 (= call!190635 (validRegex!3707 (ite c!475787 (reg!9303 r!17423) (ite c!475788 (regTwo!18461 r!17423) (regOne!18460 r!17423)))))))

(declare-fun b!2916931 () Bool)

(declare-fun res!1204227 () Bool)

(declare-fun e!1840568 () Bool)

(assert (=> b!2916931 (=> (not res!1204227) (not e!1840568))))

(assert (=> b!2916931 (= res!1204227 call!190636)))

(assert (=> b!2916931 (= e!1840570 e!1840568)))

(declare-fun b!2916932 () Bool)

(assert (=> b!2916932 (= e!1840564 call!190635)))

(declare-fun b!2916933 () Bool)

(assert (=> b!2916933 (= e!1840568 call!190634)))

(declare-fun b!2916934 () Bool)

(assert (=> b!2916934 (= e!1840566 call!190636)))

(assert (= (and d!838211 (not res!1204231)) b!2916927))

(assert (= (and b!2916927 c!475787) b!2916923))

(assert (= (and b!2916927 (not c!475787)) b!2916926))

(assert (= (and b!2916923 res!1204228) b!2916932))

(assert (= (and b!2916926 c!475788) b!2916931))

(assert (= (and b!2916926 (not c!475788)) b!2916930))

(assert (= (and b!2916931 res!1204227) b!2916933))

(assert (= (and b!2916930 (not res!1204226)) b!2916929))

(assert (= (and b!2916929 res!1204230) b!2916934))

(assert (= (or b!2916931 b!2916934) bm!190630))

(assert (= (or b!2916933 b!2916929) bm!190628))

(assert (= (or b!2916932 bm!190628) bm!190631))

(declare-fun m!3315249 () Bool)

(assert (=> b!2916923 m!3315249))

(declare-fun m!3315251 () Bool)

(assert (=> bm!190630 m!3315251))

(declare-fun m!3315253 () Bool)

(assert (=> bm!190631 m!3315253))

(assert (=> start!284146 d!838211))

(declare-fun bm!190632 () Bool)

(declare-fun call!190637 () Bool)

(assert (=> bm!190632 (= call!190637 (isEmpty!18970 (_2!19975 lt!1024846)))))

(declare-fun b!2916935 () Bool)

(declare-fun res!1204234 () Bool)

(declare-fun e!1840578 () Bool)

(assert (=> b!2916935 (=> res!1204234 e!1840578)))

(assert (=> b!2916935 (= res!1204234 (not (is-ElementMatch!8974 lt!1024851)))))

(declare-fun e!1840575 () Bool)

(assert (=> b!2916935 (= e!1840575 e!1840578)))

(declare-fun b!2916936 () Bool)

(declare-fun res!1204237 () Bool)

(declare-fun e!1840576 () Bool)

(assert (=> b!2916936 (=> (not res!1204237) (not e!1840576))))

(assert (=> b!2916936 (= res!1204237 (isEmpty!18970 (tail!4707 (_2!19975 lt!1024846))))))

(declare-fun b!2916937 () Bool)

(declare-fun e!1840580 () Bool)

(declare-fun lt!1024898 () Bool)

(assert (=> b!2916937 (= e!1840580 (= lt!1024898 call!190637))))

(declare-fun b!2916938 () Bool)

(declare-fun res!1204232 () Bool)

(assert (=> b!2916938 (=> res!1204232 e!1840578)))

(assert (=> b!2916938 (= res!1204232 e!1840576)))

(declare-fun res!1204238 () Bool)

(assert (=> b!2916938 (=> (not res!1204238) (not e!1840576))))

(assert (=> b!2916938 (= res!1204238 lt!1024898)))

(declare-fun b!2916939 () Bool)

(declare-fun res!1204239 () Bool)

(declare-fun e!1840574 () Bool)

(assert (=> b!2916939 (=> res!1204239 e!1840574)))

(assert (=> b!2916939 (= res!1204239 (not (isEmpty!18970 (tail!4707 (_2!19975 lt!1024846)))))))

(declare-fun b!2916940 () Bool)

(assert (=> b!2916940 (= e!1840580 e!1840575)))

(declare-fun c!475790 () Bool)

(assert (=> b!2916940 (= c!475790 (is-EmptyLang!8974 lt!1024851))))

(declare-fun b!2916941 () Bool)

(declare-fun e!1840579 () Bool)

(assert (=> b!2916941 (= e!1840579 (nullable!2808 lt!1024851))))

(declare-fun b!2916942 () Bool)

(assert (=> b!2916942 (= e!1840574 (not (= (head!6481 (_2!19975 lt!1024846)) (c!475754 lt!1024851))))))

(declare-fun b!2916943 () Bool)

(declare-fun e!1840577 () Bool)

(assert (=> b!2916943 (= e!1840578 e!1840577)))

(declare-fun res!1204233 () Bool)

(assert (=> b!2916943 (=> (not res!1204233) (not e!1840577))))

(assert (=> b!2916943 (= res!1204233 (not lt!1024898))))

(declare-fun b!2916944 () Bool)

(assert (=> b!2916944 (= e!1840579 (matchR!3856 (derivativeStep!2422 lt!1024851 (head!6481 (_2!19975 lt!1024846))) (tail!4707 (_2!19975 lt!1024846))))))

(declare-fun b!2916945 () Bool)

(assert (=> b!2916945 (= e!1840575 (not lt!1024898))))

(declare-fun b!2916946 () Bool)

(assert (=> b!2916946 (= e!1840577 e!1840574)))

(declare-fun res!1204236 () Bool)

(assert (=> b!2916946 (=> res!1204236 e!1840574)))

(assert (=> b!2916946 (= res!1204236 call!190637)))

(declare-fun d!838213 () Bool)

(assert (=> d!838213 e!1840580))

(declare-fun c!475789 () Bool)

(assert (=> d!838213 (= c!475789 (is-EmptyExpr!8974 lt!1024851))))

(assert (=> d!838213 (= lt!1024898 e!1840579)))

(declare-fun c!475791 () Bool)

(assert (=> d!838213 (= c!475791 (isEmpty!18970 (_2!19975 lt!1024846)))))

(assert (=> d!838213 (validRegex!3707 lt!1024851)))

(assert (=> d!838213 (= (matchR!3856 lt!1024851 (_2!19975 lt!1024846)) lt!1024898)))

(declare-fun b!2916947 () Bool)

(declare-fun res!1204235 () Bool)

(assert (=> b!2916947 (=> (not res!1204235) (not e!1840576))))

(assert (=> b!2916947 (= res!1204235 (not call!190637))))

(declare-fun b!2916948 () Bool)

(assert (=> b!2916948 (= e!1840576 (= (head!6481 (_2!19975 lt!1024846)) (c!475754 lt!1024851)))))

(assert (= (and d!838213 c!475791) b!2916941))

(assert (= (and d!838213 (not c!475791)) b!2916944))

(assert (= (and d!838213 c!475789) b!2916937))

(assert (= (and d!838213 (not c!475789)) b!2916940))

(assert (= (and b!2916940 c!475790) b!2916945))

(assert (= (and b!2916940 (not c!475790)) b!2916935))

(assert (= (and b!2916935 (not res!1204234)) b!2916938))

(assert (= (and b!2916938 res!1204238) b!2916947))

(assert (= (and b!2916947 res!1204235) b!2916936))

(assert (= (and b!2916936 res!1204237) b!2916948))

(assert (= (and b!2916938 (not res!1204232)) b!2916943))

(assert (= (and b!2916943 res!1204233) b!2916946))

(assert (= (and b!2916946 (not res!1204236)) b!2916939))

(assert (= (and b!2916939 (not res!1204239)) b!2916942))

(assert (= (or b!2916937 b!2916946 b!2916947) bm!190632))

(declare-fun m!3315255 () Bool)

(assert (=> d!838213 m!3315255))

(assert (=> d!838213 m!3315123))

(declare-fun m!3315257 () Bool)

(assert (=> b!2916936 m!3315257))

(assert (=> b!2916936 m!3315257))

(declare-fun m!3315259 () Bool)

(assert (=> b!2916936 m!3315259))

(declare-fun m!3315261 () Bool)

(assert (=> b!2916948 m!3315261))

(declare-fun m!3315263 () Bool)

(assert (=> b!2916941 m!3315263))

(assert (=> b!2916939 m!3315257))

(assert (=> b!2916939 m!3315257))

(assert (=> b!2916939 m!3315259))

(assert (=> bm!190632 m!3315255))

(assert (=> b!2916944 m!3315261))

(assert (=> b!2916944 m!3315261))

(declare-fun m!3315265 () Bool)

(assert (=> b!2916944 m!3315265))

(assert (=> b!2916944 m!3315257))

(assert (=> b!2916944 m!3315265))

(assert (=> b!2916944 m!3315257))

(declare-fun m!3315267 () Bool)

(assert (=> b!2916944 m!3315267))

(assert (=> b!2916942 m!3315261))

(assert (=> b!2916729 d!838213))

(declare-fun bm!190647 () Bool)

(declare-fun lt!1024913 () Regex!8974)

(declare-fun call!190653 () Bool)

(declare-fun lt!1024914 () Regex!8974)

(declare-fun c!475824 () Bool)

(declare-fun c!475823 () Bool)

(declare-fun lt!1024915 () Regex!8974)

(declare-fun isEmptyLang!163 (Regex!8974) Bool)

(assert (=> bm!190647 (= call!190653 (isEmptyLang!163 (ite c!475824 lt!1024915 (ite c!475823 lt!1024914 lt!1024913))))))

(declare-fun b!2917005 () Bool)

(declare-fun e!1840619 () Regex!8974)

(declare-fun e!1840617 () Regex!8974)

(assert (=> b!2917005 (= e!1840619 e!1840617)))

(declare-fun lt!1024916 () Regex!8974)

(declare-fun call!190657 () Regex!8974)

(assert (=> b!2917005 (= lt!1024916 call!190657)))

(declare-fun call!190658 () Regex!8974)

(assert (=> b!2917005 (= lt!1024913 call!190658)))

(declare-fun res!1204247 () Bool)

(declare-fun call!190654 () Bool)

(assert (=> b!2917005 (= res!1204247 call!190654)))

(declare-fun e!1840618 () Bool)

(assert (=> b!2917005 (=> res!1204247 e!1840618)))

(declare-fun c!475822 () Bool)

(assert (=> b!2917005 (= c!475822 e!1840618)))

(declare-fun b!2917006 () Bool)

(declare-fun call!190652 () Bool)

(assert (=> b!2917006 (= e!1840618 call!190652)))

(declare-fun b!2917007 () Bool)

(declare-fun e!1840613 () Regex!8974)

(declare-fun lt!1024918 () Regex!8974)

(assert (=> b!2917007 (= e!1840613 lt!1024918)))

(declare-fun b!2917008 () Bool)

(declare-fun c!475821 () Bool)

(assert (=> b!2917008 (= c!475821 (is-EmptyExpr!8974 (regTwo!18460 r!17423)))))

(declare-fun e!1840616 () Regex!8974)

(declare-fun e!1840614 () Regex!8974)

(assert (=> b!2917008 (= e!1840616 e!1840614)))

(declare-fun b!2917009 () Bool)

(declare-fun e!1840623 () Bool)

(declare-fun lt!1024917 () Regex!8974)

(assert (=> b!2917009 (= e!1840623 (= (nullable!2808 lt!1024917) (nullable!2808 (regTwo!18460 r!17423))))))

(declare-fun b!2917010 () Bool)

(assert (=> b!2917010 (= e!1840617 EmptyLang!8974)))

(declare-fun b!2917011 () Bool)

(declare-fun e!1840615 () Regex!8974)

(assert (=> b!2917011 (= e!1840615 e!1840616)))

(declare-fun c!475819 () Bool)

(assert (=> b!2917011 (= c!475819 (is-ElementMatch!8974 (regTwo!18460 r!17423)))))

(declare-fun b!2917012 () Bool)

(declare-fun c!475816 () Bool)

(declare-fun e!1840621 () Bool)

(assert (=> b!2917012 (= c!475816 e!1840621)))

(declare-fun res!1204246 () Bool)

(assert (=> b!2917012 (=> res!1204246 e!1840621)))

(assert (=> b!2917012 (= res!1204246 call!190653)))

(declare-fun call!190655 () Regex!8974)

(assert (=> b!2917012 (= lt!1024915 call!190655)))

(declare-fun e!1840624 () Regex!8974)

(declare-fun e!1840611 () Regex!8974)

(assert (=> b!2917012 (= e!1840624 e!1840611)))

(declare-fun bm!190648 () Bool)

(assert (=> bm!190648 (= call!190654 (isEmptyLang!163 (ite c!475823 lt!1024918 lt!1024916)))))

(declare-fun b!2917013 () Bool)

(assert (=> b!2917013 (= e!1840611 (Star!8974 lt!1024915))))

(declare-fun bm!190649 () Bool)

(assert (=> bm!190649 (= call!190658 call!190655)))

(declare-fun bm!190650 () Bool)

(assert (=> bm!190650 (= call!190655 (simplify!11 (ite c!475824 (reg!9303 (regTwo!18460 r!17423)) (ite c!475823 (regOne!18461 (regTwo!18460 r!17423)) (regTwo!18460 (regTwo!18460 r!17423))))))))

(declare-fun call!190656 () Bool)

(declare-fun bm!190651 () Bool)

(declare-fun isEmptyExpr!248 (Regex!8974) Bool)

(assert (=> bm!190651 (= call!190656 (isEmptyExpr!248 (ite c!475824 lt!1024915 lt!1024913)))))

(declare-fun b!2917015 () Bool)

(declare-fun e!1840620 () Regex!8974)

(assert (=> b!2917015 (= e!1840620 lt!1024916)))

(declare-fun b!2917016 () Bool)

(assert (=> b!2917016 (= e!1840614 EmptyExpr!8974)))

(declare-fun b!2917017 () Bool)

(assert (=> b!2917017 (= e!1840614 e!1840624)))

(assert (=> b!2917017 (= c!475824 (is-Star!8974 (regTwo!18460 r!17423)))))

(declare-fun bm!190652 () Bool)

(assert (=> bm!190652 (= call!190652 call!190653)))

(declare-fun b!2917018 () Bool)

(assert (=> b!2917018 (= e!1840619 e!1840613)))

(assert (=> b!2917018 (= lt!1024914 call!190658)))

(assert (=> b!2917018 (= lt!1024918 call!190657)))

(declare-fun c!475820 () Bool)

(assert (=> b!2917018 (= c!475820 call!190652)))

(declare-fun b!2917019 () Bool)

(declare-fun e!1840622 () Regex!8974)

(assert (=> b!2917019 (= e!1840622 (Union!8974 lt!1024914 lt!1024918))))

(declare-fun b!2917020 () Bool)

(assert (=> b!2917020 (= e!1840611 EmptyExpr!8974)))

(declare-fun b!2917021 () Bool)

(declare-fun e!1840612 () Regex!8974)

(assert (=> b!2917021 (= e!1840612 e!1840620)))

(declare-fun c!475825 () Bool)

(assert (=> b!2917021 (= c!475825 call!190656)))

(declare-fun b!2917022 () Bool)

(assert (=> b!2917022 (= c!475823 (is-Union!8974 (regTwo!18460 r!17423)))))

(assert (=> b!2917022 (= e!1840624 e!1840619)))

(declare-fun b!2917023 () Bool)

(assert (=> b!2917023 (= e!1840615 EmptyLang!8974)))

(declare-fun b!2917024 () Bool)

(assert (=> b!2917024 (= e!1840621 call!190656)))

(declare-fun b!2917025 () Bool)

(declare-fun c!475818 () Bool)

(assert (=> b!2917025 (= c!475818 (isEmptyExpr!248 lt!1024916))))

(assert (=> b!2917025 (= e!1840617 e!1840612)))

(declare-fun d!838215 () Bool)

(assert (=> d!838215 e!1840623))

(declare-fun res!1204248 () Bool)

(assert (=> d!838215 (=> (not res!1204248) (not e!1840623))))

(assert (=> d!838215 (= res!1204248 (validRegex!3707 lt!1024917))))

(assert (=> d!838215 (= lt!1024917 e!1840615)))

(declare-fun c!475826 () Bool)

(assert (=> d!838215 (= c!475826 (is-EmptyLang!8974 (regTwo!18460 r!17423)))))

(assert (=> d!838215 (validRegex!3707 (regTwo!18460 r!17423))))

(assert (=> d!838215 (= (simplify!11 (regTwo!18460 r!17423)) lt!1024917)))

(declare-fun b!2917014 () Bool)

(assert (=> b!2917014 (= e!1840622 lt!1024914)))

(declare-fun b!2917026 () Bool)

(assert (=> b!2917026 (= e!1840612 lt!1024913)))

(declare-fun bm!190653 () Bool)

(assert (=> bm!190653 (= call!190657 (simplify!11 (ite c!475823 (regTwo!18461 (regTwo!18460 r!17423)) (regOne!18460 (regTwo!18460 r!17423)))))))

(declare-fun b!2917027 () Bool)

(assert (=> b!2917027 (= e!1840620 (Concat!14295 lt!1024916 lt!1024913))))

(declare-fun b!2917028 () Bool)

(assert (=> b!2917028 (= e!1840616 (regTwo!18460 r!17423))))

(declare-fun b!2917029 () Bool)

(declare-fun c!475817 () Bool)

(assert (=> b!2917029 (= c!475817 call!190654)))

(assert (=> b!2917029 (= e!1840613 e!1840622)))

(assert (= (and d!838215 c!475826) b!2917023))

(assert (= (and d!838215 (not c!475826)) b!2917011))

(assert (= (and b!2917011 c!475819) b!2917028))

(assert (= (and b!2917011 (not c!475819)) b!2917008))

(assert (= (and b!2917008 c!475821) b!2917016))

(assert (= (and b!2917008 (not c!475821)) b!2917017))

(assert (= (and b!2917017 c!475824) b!2917012))

(assert (= (and b!2917017 (not c!475824)) b!2917022))

(assert (= (and b!2917012 (not res!1204246)) b!2917024))

(assert (= (and b!2917012 c!475816) b!2917020))

(assert (= (and b!2917012 (not c!475816)) b!2917013))

(assert (= (and b!2917022 c!475823) b!2917018))

(assert (= (and b!2917022 (not c!475823)) b!2917005))

(assert (= (and b!2917018 c!475820) b!2917007))

(assert (= (and b!2917018 (not c!475820)) b!2917029))

(assert (= (and b!2917029 c!475817) b!2917014))

(assert (= (and b!2917029 (not c!475817)) b!2917019))

(assert (= (and b!2917005 (not res!1204247)) b!2917006))

(assert (= (and b!2917005 c!475822) b!2917010))

(assert (= (and b!2917005 (not c!475822)) b!2917025))

(assert (= (and b!2917025 c!475818) b!2917026))

(assert (= (and b!2917025 (not c!475818)) b!2917021))

(assert (= (and b!2917021 c!475825) b!2917015))

(assert (= (and b!2917021 (not c!475825)) b!2917027))

(assert (= (or b!2917018 b!2917005) bm!190649))

(assert (= (or b!2917018 b!2917005) bm!190653))

(assert (= (or b!2917018 b!2917006) bm!190652))

(assert (= (or b!2917029 b!2917005) bm!190648))

(assert (= (or b!2917024 b!2917021) bm!190651))

(assert (= (or b!2917012 bm!190649) bm!190650))

(assert (= (or b!2917012 bm!190652) bm!190647))

(assert (= (and d!838215 res!1204248) b!2917009))

(declare-fun m!3315275 () Bool)

(assert (=> bm!190651 m!3315275))

(declare-fun m!3315277 () Bool)

(assert (=> bm!190653 m!3315277))

(declare-fun m!3315279 () Bool)

(assert (=> b!2917009 m!3315279))

(declare-fun m!3315281 () Bool)

(assert (=> b!2917009 m!3315281))

(declare-fun m!3315283 () Bool)

(assert (=> b!2917025 m!3315283))

(declare-fun m!3315285 () Bool)

(assert (=> d!838215 m!3315285))

(declare-fun m!3315287 () Bool)

(assert (=> d!838215 m!3315287))

(declare-fun m!3315289 () Bool)

(assert (=> bm!190650 m!3315289))

(declare-fun m!3315291 () Bool)

(assert (=> bm!190648 m!3315291))

(declare-fun m!3315293 () Bool)

(assert (=> bm!190647 m!3315293))

(assert (=> b!2916729 d!838215))

(declare-fun d!838219 () Bool)

(assert (=> d!838219 (= (matchR!3856 (regOne!18460 r!17423) (_1!19975 lt!1024846)) (matchR!3856 (simplify!11 (regOne!18460 r!17423)) (_1!19975 lt!1024846)))))

(declare-fun lt!1024921 () Unit!48287)

(declare-fun choose!17184 (Regex!8974 List!34839) Unit!48287)

(assert (=> d!838219 (= lt!1024921 (choose!17184 (regOne!18460 r!17423) (_1!19975 lt!1024846)))))

(assert (=> d!838219 (validRegex!3707 (regOne!18460 r!17423))))

(assert (=> d!838219 (= (lemmaSimplifySound!9 (regOne!18460 r!17423) (_1!19975 lt!1024846)) lt!1024921)))

(declare-fun bs!524854 () Bool)

(assert (= bs!524854 d!838219))

(assert (=> bs!524854 m!3315199))

(assert (=> bs!524854 m!3315119))

(assert (=> bs!524854 m!3315121))

(declare-fun m!3315295 () Bool)

(assert (=> bs!524854 m!3315295))

(assert (=> bs!524854 m!3315149))

(assert (=> bs!524854 m!3315119))

(assert (=> b!2916729 d!838219))

(declare-fun call!190662 () Bool)

(declare-fun lt!1024924 () Regex!8974)

(declare-fun lt!1024923 () Regex!8974)

(declare-fun c!475839 () Bool)

(declare-fun lt!1024922 () Regex!8974)

(declare-fun c!475838 () Bool)

(declare-fun bm!190656 () Bool)

(assert (=> bm!190656 (= call!190662 (isEmptyLang!163 (ite c!475839 lt!1024924 (ite c!475838 lt!1024923 lt!1024922))))))

(declare-fun b!2917052 () Bool)

(declare-fun e!1840645 () Regex!8974)

(declare-fun e!1840643 () Regex!8974)

(assert (=> b!2917052 (= e!1840645 e!1840643)))

(declare-fun lt!1024925 () Regex!8974)

(declare-fun call!190666 () Regex!8974)

(assert (=> b!2917052 (= lt!1024925 call!190666)))

(declare-fun call!190667 () Regex!8974)

(assert (=> b!2917052 (= lt!1024922 call!190667)))

(declare-fun res!1204266 () Bool)

(declare-fun call!190663 () Bool)

(assert (=> b!2917052 (= res!1204266 call!190663)))

(declare-fun e!1840644 () Bool)

(assert (=> b!2917052 (=> res!1204266 e!1840644)))

(declare-fun c!475837 () Bool)

(assert (=> b!2917052 (= c!475837 e!1840644)))

(declare-fun b!2917053 () Bool)

(declare-fun call!190661 () Bool)

(assert (=> b!2917053 (= e!1840644 call!190661)))

(declare-fun b!2917054 () Bool)

(declare-fun e!1840639 () Regex!8974)

(declare-fun lt!1024927 () Regex!8974)

(assert (=> b!2917054 (= e!1840639 lt!1024927)))

(declare-fun b!2917055 () Bool)

(declare-fun c!475836 () Bool)

(assert (=> b!2917055 (= c!475836 (is-EmptyExpr!8974 (regOne!18460 r!17423)))))

(declare-fun e!1840642 () Regex!8974)

(declare-fun e!1840640 () Regex!8974)

(assert (=> b!2917055 (= e!1840642 e!1840640)))

(declare-fun b!2917056 () Bool)

(declare-fun e!1840649 () Bool)

(declare-fun lt!1024926 () Regex!8974)

(assert (=> b!2917056 (= e!1840649 (= (nullable!2808 lt!1024926) (nullable!2808 (regOne!18460 r!17423))))))

(declare-fun b!2917057 () Bool)

(assert (=> b!2917057 (= e!1840643 EmptyLang!8974)))

(declare-fun b!2917058 () Bool)

(declare-fun e!1840641 () Regex!8974)

(assert (=> b!2917058 (= e!1840641 e!1840642)))

(declare-fun c!475834 () Bool)

(assert (=> b!2917058 (= c!475834 (is-ElementMatch!8974 (regOne!18460 r!17423)))))

(declare-fun b!2917059 () Bool)

(declare-fun c!475831 () Bool)

(declare-fun e!1840647 () Bool)

(assert (=> b!2917059 (= c!475831 e!1840647)))

(declare-fun res!1204265 () Bool)

(assert (=> b!2917059 (=> res!1204265 e!1840647)))

(assert (=> b!2917059 (= res!1204265 call!190662)))

(declare-fun call!190664 () Regex!8974)

(assert (=> b!2917059 (= lt!1024924 call!190664)))

(declare-fun e!1840650 () Regex!8974)

(declare-fun e!1840637 () Regex!8974)

(assert (=> b!2917059 (= e!1840650 e!1840637)))

(declare-fun bm!190657 () Bool)

(assert (=> bm!190657 (= call!190663 (isEmptyLang!163 (ite c!475838 lt!1024927 lt!1024925)))))

(declare-fun b!2917060 () Bool)

(assert (=> b!2917060 (= e!1840637 (Star!8974 lt!1024924))))

(declare-fun bm!190658 () Bool)

(assert (=> bm!190658 (= call!190667 call!190664)))

(declare-fun bm!190659 () Bool)

(assert (=> bm!190659 (= call!190664 (simplify!11 (ite c!475839 (reg!9303 (regOne!18460 r!17423)) (ite c!475838 (regOne!18461 (regOne!18460 r!17423)) (regTwo!18460 (regOne!18460 r!17423))))))))

(declare-fun bm!190660 () Bool)

(declare-fun call!190665 () Bool)

(assert (=> bm!190660 (= call!190665 (isEmptyExpr!248 (ite c!475839 lt!1024924 lt!1024922)))))

(declare-fun b!2917062 () Bool)

(declare-fun e!1840646 () Regex!8974)

(assert (=> b!2917062 (= e!1840646 lt!1024925)))

(declare-fun b!2917063 () Bool)

(assert (=> b!2917063 (= e!1840640 EmptyExpr!8974)))

(declare-fun b!2917064 () Bool)

(assert (=> b!2917064 (= e!1840640 e!1840650)))

(assert (=> b!2917064 (= c!475839 (is-Star!8974 (regOne!18460 r!17423)))))

(declare-fun bm!190661 () Bool)

(assert (=> bm!190661 (= call!190661 call!190662)))

(declare-fun b!2917065 () Bool)

(assert (=> b!2917065 (= e!1840645 e!1840639)))

(assert (=> b!2917065 (= lt!1024923 call!190667)))

(assert (=> b!2917065 (= lt!1024927 call!190666)))

(declare-fun c!475835 () Bool)

(assert (=> b!2917065 (= c!475835 call!190661)))

(declare-fun b!2917066 () Bool)

(declare-fun e!1840648 () Regex!8974)

(assert (=> b!2917066 (= e!1840648 (Union!8974 lt!1024923 lt!1024927))))

(declare-fun b!2917067 () Bool)

(assert (=> b!2917067 (= e!1840637 EmptyExpr!8974)))

(declare-fun b!2917068 () Bool)

(declare-fun e!1840638 () Regex!8974)

(assert (=> b!2917068 (= e!1840638 e!1840646)))

(declare-fun c!475840 () Bool)

(assert (=> b!2917068 (= c!475840 call!190665)))

(declare-fun b!2917069 () Bool)

(assert (=> b!2917069 (= c!475838 (is-Union!8974 (regOne!18460 r!17423)))))

(assert (=> b!2917069 (= e!1840650 e!1840645)))

(declare-fun b!2917070 () Bool)

(assert (=> b!2917070 (= e!1840641 EmptyLang!8974)))

(declare-fun b!2917071 () Bool)

(assert (=> b!2917071 (= e!1840647 call!190665)))

(declare-fun b!2917072 () Bool)

(declare-fun c!475833 () Bool)

(assert (=> b!2917072 (= c!475833 (isEmptyExpr!248 lt!1024925))))

(assert (=> b!2917072 (= e!1840643 e!1840638)))

(declare-fun d!838221 () Bool)

(assert (=> d!838221 e!1840649))

(declare-fun res!1204267 () Bool)

(assert (=> d!838221 (=> (not res!1204267) (not e!1840649))))

(assert (=> d!838221 (= res!1204267 (validRegex!3707 lt!1024926))))

(assert (=> d!838221 (= lt!1024926 e!1840641)))

(declare-fun c!475841 () Bool)

(assert (=> d!838221 (= c!475841 (is-EmptyLang!8974 (regOne!18460 r!17423)))))

(assert (=> d!838221 (validRegex!3707 (regOne!18460 r!17423))))

(assert (=> d!838221 (= (simplify!11 (regOne!18460 r!17423)) lt!1024926)))

(declare-fun b!2917061 () Bool)

(assert (=> b!2917061 (= e!1840648 lt!1024923)))

(declare-fun b!2917073 () Bool)

(assert (=> b!2917073 (= e!1840638 lt!1024922)))

(declare-fun bm!190662 () Bool)

(assert (=> bm!190662 (= call!190666 (simplify!11 (ite c!475838 (regTwo!18461 (regOne!18460 r!17423)) (regOne!18460 (regOne!18460 r!17423)))))))

(declare-fun b!2917074 () Bool)

(assert (=> b!2917074 (= e!1840646 (Concat!14295 lt!1024925 lt!1024922))))

(declare-fun b!2917075 () Bool)

(assert (=> b!2917075 (= e!1840642 (regOne!18460 r!17423))))

(declare-fun b!2917076 () Bool)

(declare-fun c!475832 () Bool)

(assert (=> b!2917076 (= c!475832 call!190663)))

(assert (=> b!2917076 (= e!1840639 e!1840648)))

(assert (= (and d!838221 c!475841) b!2917070))

(assert (= (and d!838221 (not c!475841)) b!2917058))

(assert (= (and b!2917058 c!475834) b!2917075))

(assert (= (and b!2917058 (not c!475834)) b!2917055))

(assert (= (and b!2917055 c!475836) b!2917063))

(assert (= (and b!2917055 (not c!475836)) b!2917064))

(assert (= (and b!2917064 c!475839) b!2917059))

(assert (= (and b!2917064 (not c!475839)) b!2917069))

(assert (= (and b!2917059 (not res!1204265)) b!2917071))

(assert (= (and b!2917059 c!475831) b!2917067))

(assert (= (and b!2917059 (not c!475831)) b!2917060))

(assert (= (and b!2917069 c!475838) b!2917065))

(assert (= (and b!2917069 (not c!475838)) b!2917052))

(assert (= (and b!2917065 c!475835) b!2917054))

(assert (= (and b!2917065 (not c!475835)) b!2917076))

(assert (= (and b!2917076 c!475832) b!2917061))

(assert (= (and b!2917076 (not c!475832)) b!2917066))

(assert (= (and b!2917052 (not res!1204266)) b!2917053))

(assert (= (and b!2917052 c!475837) b!2917057))

(assert (= (and b!2917052 (not c!475837)) b!2917072))

(assert (= (and b!2917072 c!475833) b!2917073))

(assert (= (and b!2917072 (not c!475833)) b!2917068))

(assert (= (and b!2917068 c!475840) b!2917062))

(assert (= (and b!2917068 (not c!475840)) b!2917074))

(assert (= (or b!2917065 b!2917052) bm!190658))

(assert (= (or b!2917065 b!2917052) bm!190662))

(assert (= (or b!2917065 b!2917053) bm!190661))

(assert (= (or b!2917076 b!2917052) bm!190657))

(assert (= (or b!2917071 b!2917068) bm!190660))

(assert (= (or b!2917059 bm!190658) bm!190659))

(assert (= (or b!2917059 bm!190661) bm!190656))

(assert (= (and d!838221 res!1204267) b!2917056))

(declare-fun m!3315297 () Bool)

(assert (=> bm!190660 m!3315297))

(declare-fun m!3315299 () Bool)

(assert (=> bm!190662 m!3315299))

(declare-fun m!3315301 () Bool)

(assert (=> b!2917056 m!3315301))

(assert (=> b!2917056 m!3315209))

(declare-fun m!3315303 () Bool)

(assert (=> b!2917072 m!3315303))

(declare-fun m!3315305 () Bool)

(assert (=> d!838221 m!3315305))

(assert (=> d!838221 m!3315199))

(declare-fun m!3315307 () Bool)

(assert (=> bm!190659 m!3315307))

(declare-fun m!3315309 () Bool)

(assert (=> bm!190657 m!3315309))

(declare-fun m!3315311 () Bool)

(assert (=> bm!190656 m!3315311))

(assert (=> b!2916729 d!838221))

(declare-fun b!2917077 () Bool)

(declare-fun e!1840657 () Bool)

(declare-fun e!1840651 () Bool)

(assert (=> b!2917077 (= e!1840657 e!1840651)))

(declare-fun res!1204270 () Bool)

(assert (=> b!2917077 (= res!1204270 (not (nullable!2808 (reg!9303 lt!1024851))))))

(assert (=> b!2917077 (=> (not res!1204270) (not e!1840651))))

(declare-fun bm!190663 () Bool)

(declare-fun call!190668 () Bool)

(declare-fun call!190669 () Bool)

(assert (=> bm!190663 (= call!190668 call!190669)))

(declare-fun b!2917078 () Bool)

(declare-fun e!1840654 () Bool)

(assert (=> b!2917078 (= e!1840657 e!1840654)))

(declare-fun c!475843 () Bool)

(assert (=> b!2917078 (= c!475843 (is-Union!8974 lt!1024851))))

(declare-fun b!2917079 () Bool)

(declare-fun e!1840656 () Bool)

(assert (=> b!2917079 (= e!1840656 e!1840657)))

(declare-fun c!475842 () Bool)

(assert (=> b!2917079 (= c!475842 (is-Star!8974 lt!1024851))))

(declare-fun d!838223 () Bool)

(declare-fun res!1204272 () Bool)

(assert (=> d!838223 (=> res!1204272 e!1840656)))

(assert (=> d!838223 (= res!1204272 (is-ElementMatch!8974 lt!1024851))))

(assert (=> d!838223 (= (validRegex!3707 lt!1024851) e!1840656)))

(declare-fun b!2917080 () Bool)

(declare-fun e!1840655 () Bool)

(declare-fun e!1840652 () Bool)

(assert (=> b!2917080 (= e!1840655 e!1840652)))

(declare-fun res!1204271 () Bool)

(assert (=> b!2917080 (=> (not res!1204271) (not e!1840652))))

(assert (=> b!2917080 (= res!1204271 call!190668)))

(declare-fun bm!190664 () Bool)

(declare-fun call!190670 () Bool)

(assert (=> bm!190664 (= call!190670 (validRegex!3707 (ite c!475843 (regOne!18461 lt!1024851) (regTwo!18460 lt!1024851))))))

(declare-fun b!2917081 () Bool)

(declare-fun res!1204268 () Bool)

(assert (=> b!2917081 (=> res!1204268 e!1840655)))

(assert (=> b!2917081 (= res!1204268 (not (is-Concat!14295 lt!1024851)))))

(assert (=> b!2917081 (= e!1840654 e!1840655)))

(declare-fun bm!190665 () Bool)

(assert (=> bm!190665 (= call!190669 (validRegex!3707 (ite c!475842 (reg!9303 lt!1024851) (ite c!475843 (regTwo!18461 lt!1024851) (regOne!18460 lt!1024851)))))))

(declare-fun b!2917082 () Bool)

(declare-fun res!1204269 () Bool)

(declare-fun e!1840653 () Bool)

(assert (=> b!2917082 (=> (not res!1204269) (not e!1840653))))

(assert (=> b!2917082 (= res!1204269 call!190670)))

(assert (=> b!2917082 (= e!1840654 e!1840653)))

(declare-fun b!2917083 () Bool)

(assert (=> b!2917083 (= e!1840651 call!190669)))

(declare-fun b!2917084 () Bool)

(assert (=> b!2917084 (= e!1840653 call!190668)))

(declare-fun b!2917085 () Bool)

(assert (=> b!2917085 (= e!1840652 call!190670)))

(assert (= (and d!838223 (not res!1204272)) b!2917079))

(assert (= (and b!2917079 c!475842) b!2917077))

(assert (= (and b!2917079 (not c!475842)) b!2917078))

(assert (= (and b!2917077 res!1204270) b!2917083))

(assert (= (and b!2917078 c!475843) b!2917082))

(assert (= (and b!2917078 (not c!475843)) b!2917081))

(assert (= (and b!2917082 res!1204269) b!2917084))

(assert (= (and b!2917081 (not res!1204268)) b!2917080))

(assert (= (and b!2917080 res!1204271) b!2917085))

(assert (= (or b!2917082 b!2917085) bm!190664))

(assert (= (or b!2917084 b!2917080) bm!190663))

(assert (= (or b!2917083 bm!190663) bm!190665))

(declare-fun m!3315313 () Bool)

(assert (=> b!2917077 m!3315313))

(declare-fun m!3315315 () Bool)

(assert (=> bm!190664 m!3315315))

(declare-fun m!3315317 () Bool)

(assert (=> bm!190665 m!3315317))

(assert (=> b!2916729 d!838223))

(declare-fun d!838225 () Bool)

(assert (=> d!838225 (= (matchR!3856 (regTwo!18460 r!17423) (_2!19975 lt!1024846)) (matchR!3856 (simplify!11 (regTwo!18460 r!17423)) (_2!19975 lt!1024846)))))

(declare-fun lt!1024928 () Unit!48287)

(assert (=> d!838225 (= lt!1024928 (choose!17184 (regTwo!18460 r!17423) (_2!19975 lt!1024846)))))

(assert (=> d!838225 (validRegex!3707 (regTwo!18460 r!17423))))

(assert (=> d!838225 (= (lemmaSimplifySound!9 (regTwo!18460 r!17423) (_2!19975 lt!1024846)) lt!1024928)))

(declare-fun bs!524855 () Bool)

(assert (= bs!524855 d!838225))

(assert (=> bs!524855 m!3315287))

(assert (=> bs!524855 m!3315117))

(declare-fun m!3315319 () Bool)

(assert (=> bs!524855 m!3315319))

(declare-fun m!3315321 () Bool)

(assert (=> bs!524855 m!3315321))

(assert (=> bs!524855 m!3315129))

(assert (=> bs!524855 m!3315117))

(assert (=> b!2916729 d!838225))

(declare-fun bm!190666 () Bool)

(declare-fun call!190671 () Bool)

(assert (=> bm!190666 (= call!190671 (isEmpty!18970 (_1!19975 lt!1024846)))))

(declare-fun b!2917086 () Bool)

(declare-fun res!1204275 () Bool)

(declare-fun e!1840662 () Bool)

(assert (=> b!2917086 (=> res!1204275 e!1840662)))

(assert (=> b!2917086 (= res!1204275 (not (is-ElementMatch!8974 (simplify!11 (regOne!18460 r!17423)))))))

(declare-fun e!1840659 () Bool)

(assert (=> b!2917086 (= e!1840659 e!1840662)))

(declare-fun b!2917087 () Bool)

(declare-fun res!1204278 () Bool)

(declare-fun e!1840660 () Bool)

(assert (=> b!2917087 (=> (not res!1204278) (not e!1840660))))

(assert (=> b!2917087 (= res!1204278 (isEmpty!18970 (tail!4707 (_1!19975 lt!1024846))))))

(declare-fun b!2917088 () Bool)

(declare-fun e!1840664 () Bool)

(declare-fun lt!1024929 () Bool)

(assert (=> b!2917088 (= e!1840664 (= lt!1024929 call!190671))))

(declare-fun b!2917089 () Bool)

(declare-fun res!1204273 () Bool)

(assert (=> b!2917089 (=> res!1204273 e!1840662)))

(assert (=> b!2917089 (= res!1204273 e!1840660)))

(declare-fun res!1204279 () Bool)

(assert (=> b!2917089 (=> (not res!1204279) (not e!1840660))))

(assert (=> b!2917089 (= res!1204279 lt!1024929)))

(declare-fun b!2917090 () Bool)

(declare-fun res!1204280 () Bool)

(declare-fun e!1840658 () Bool)

(assert (=> b!2917090 (=> res!1204280 e!1840658)))

(assert (=> b!2917090 (= res!1204280 (not (isEmpty!18970 (tail!4707 (_1!19975 lt!1024846)))))))

(declare-fun b!2917091 () Bool)

(assert (=> b!2917091 (= e!1840664 e!1840659)))

(declare-fun c!475845 () Bool)

(assert (=> b!2917091 (= c!475845 (is-EmptyLang!8974 (simplify!11 (regOne!18460 r!17423))))))

(declare-fun b!2917092 () Bool)

(declare-fun e!1840663 () Bool)

(assert (=> b!2917092 (= e!1840663 (nullable!2808 (simplify!11 (regOne!18460 r!17423))))))

(declare-fun b!2917093 () Bool)

(assert (=> b!2917093 (= e!1840658 (not (= (head!6481 (_1!19975 lt!1024846)) (c!475754 (simplify!11 (regOne!18460 r!17423))))))))

(declare-fun b!2917094 () Bool)

(declare-fun e!1840661 () Bool)

(assert (=> b!2917094 (= e!1840662 e!1840661)))

(declare-fun res!1204274 () Bool)

(assert (=> b!2917094 (=> (not res!1204274) (not e!1840661))))

(assert (=> b!2917094 (= res!1204274 (not lt!1024929))))

(declare-fun b!2917095 () Bool)

(assert (=> b!2917095 (= e!1840663 (matchR!3856 (derivativeStep!2422 (simplify!11 (regOne!18460 r!17423)) (head!6481 (_1!19975 lt!1024846))) (tail!4707 (_1!19975 lt!1024846))))))

(declare-fun b!2917096 () Bool)

(assert (=> b!2917096 (= e!1840659 (not lt!1024929))))

(declare-fun b!2917097 () Bool)

(assert (=> b!2917097 (= e!1840661 e!1840658)))

(declare-fun res!1204277 () Bool)

(assert (=> b!2917097 (=> res!1204277 e!1840658)))

(assert (=> b!2917097 (= res!1204277 call!190671)))

(declare-fun d!838227 () Bool)

(assert (=> d!838227 e!1840664))

(declare-fun c!475844 () Bool)

(assert (=> d!838227 (= c!475844 (is-EmptyExpr!8974 (simplify!11 (regOne!18460 r!17423))))))

(assert (=> d!838227 (= lt!1024929 e!1840663)))

(declare-fun c!475846 () Bool)

(assert (=> d!838227 (= c!475846 (isEmpty!18970 (_1!19975 lt!1024846)))))

(assert (=> d!838227 (validRegex!3707 (simplify!11 (regOne!18460 r!17423)))))

(assert (=> d!838227 (= (matchR!3856 (simplify!11 (regOne!18460 r!17423)) (_1!19975 lt!1024846)) lt!1024929)))

(declare-fun b!2917098 () Bool)

(declare-fun res!1204276 () Bool)

(assert (=> b!2917098 (=> (not res!1204276) (not e!1840660))))

(assert (=> b!2917098 (= res!1204276 (not call!190671))))

(declare-fun b!2917099 () Bool)

(assert (=> b!2917099 (= e!1840660 (= (head!6481 (_1!19975 lt!1024846)) (c!475754 (simplify!11 (regOne!18460 r!17423)))))))

(assert (= (and d!838227 c!475846) b!2917092))

(assert (= (and d!838227 (not c!475846)) b!2917095))

(assert (= (and d!838227 c!475844) b!2917088))

(assert (= (and d!838227 (not c!475844)) b!2917091))

(assert (= (and b!2917091 c!475845) b!2917096))

(assert (= (and b!2917091 (not c!475845)) b!2917086))

(assert (= (and b!2917086 (not res!1204275)) b!2917089))

(assert (= (and b!2917089 res!1204279) b!2917098))

(assert (= (and b!2917098 res!1204276) b!2917087))

(assert (= (and b!2917087 res!1204278) b!2917099))

(assert (= (and b!2917089 (not res!1204273)) b!2917094))

(assert (= (and b!2917094 res!1204274) b!2917097))

(assert (= (and b!2917097 (not res!1204277)) b!2917090))

(assert (= (and b!2917090 (not res!1204280)) b!2917093))

(assert (= (or b!2917088 b!2917097 b!2917098) bm!190666))

(assert (=> d!838227 m!3315201))

(assert (=> d!838227 m!3315119))

(declare-fun m!3315323 () Bool)

(assert (=> d!838227 m!3315323))

(assert (=> b!2917087 m!3315203))

(assert (=> b!2917087 m!3315203))

(assert (=> b!2917087 m!3315205))

(assert (=> b!2917099 m!3315207))

(assert (=> b!2917092 m!3315119))

(declare-fun m!3315325 () Bool)

(assert (=> b!2917092 m!3315325))

(assert (=> b!2917090 m!3315203))

(assert (=> b!2917090 m!3315203))

(assert (=> b!2917090 m!3315205))

(assert (=> bm!190666 m!3315201))

(assert (=> b!2917095 m!3315207))

(assert (=> b!2917095 m!3315119))

(assert (=> b!2917095 m!3315207))

(declare-fun m!3315327 () Bool)

(assert (=> b!2917095 m!3315327))

(assert (=> b!2917095 m!3315203))

(assert (=> b!2917095 m!3315327))

(assert (=> b!2917095 m!3315203))

(declare-fun m!3315329 () Bool)

(assert (=> b!2917095 m!3315329))

(assert (=> b!2917093 m!3315207))

(assert (=> b!2916729 d!838227))

(declare-fun bs!524856 () Bool)

(declare-fun b!2917155 () Bool)

(assert (= bs!524856 (and b!2917155 b!2916731)))

(declare-fun lambda!108518 () Int)

(assert (=> bs!524856 (not (= lambda!108518 lambda!108490))))

(declare-fun bs!524857 () Bool)

(assert (= bs!524857 (and b!2917155 d!838209)))

(assert (=> bs!524857 (not (= lambda!108518 lambda!108511))))

(declare-fun bs!524858 () Bool)

(assert (= bs!524858 (and b!2917155 d!838193)))

(assert (=> bs!524858 (not (= lambda!108518 lambda!108503))))

(assert (=> bs!524858 (not (= lambda!108518 lambda!108504))))

(assert (=> bs!524856 (not (= lambda!108518 lambda!108489))))

(assert (=> b!2917155 true))

(assert (=> b!2917155 true))

(declare-fun bs!524860 () Bool)

(declare-fun b!2917149 () Bool)

(assert (= bs!524860 (and b!2917149 b!2916731)))

(declare-fun lambda!108519 () Int)

(assert (=> bs!524860 (= lambda!108519 lambda!108490)))

(declare-fun bs!524861 () Bool)

(assert (= bs!524861 (and b!2917149 d!838209)))

(assert (=> bs!524861 (not (= lambda!108519 lambda!108511))))

(declare-fun bs!524862 () Bool)

(assert (= bs!524862 (and b!2917149 b!2917155)))

(assert (=> bs!524862 (not (= lambda!108519 lambda!108518))))

(declare-fun bs!524863 () Bool)

(assert (= bs!524863 (and b!2917149 d!838193)))

(assert (=> bs!524863 (not (= lambda!108519 lambda!108503))))

(assert (=> bs!524863 (= lambda!108519 lambda!108504)))

(assert (=> bs!524860 (not (= lambda!108519 lambda!108489))))

(assert (=> b!2917149 true))

(assert (=> b!2917149 true))

(declare-fun b!2917146 () Bool)

(declare-fun c!475859 () Bool)

(assert (=> b!2917146 (= c!475859 (is-Union!8974 r!17423))))

(declare-fun e!1840696 () Bool)

(declare-fun e!1840693 () Bool)

(assert (=> b!2917146 (= e!1840696 e!1840693)))

(declare-fun b!2917147 () Bool)

(declare-fun res!1204306 () Bool)

(declare-fun e!1840690 () Bool)

(assert (=> b!2917147 (=> res!1204306 e!1840690)))

(declare-fun call!190677 () Bool)

(assert (=> b!2917147 (= res!1204306 call!190677)))

(declare-fun e!1840694 () Bool)

(assert (=> b!2917147 (= e!1840694 e!1840690)))

(declare-fun b!2917148 () Bool)

(declare-fun c!475861 () Bool)

(assert (=> b!2917148 (= c!475861 (is-ElementMatch!8974 r!17423))))

(declare-fun e!1840695 () Bool)

(assert (=> b!2917148 (= e!1840695 e!1840696)))

(declare-fun call!190678 () Bool)

(assert (=> b!2917149 (= e!1840694 call!190678)))

(declare-fun bm!190672 () Bool)

(assert (=> bm!190672 (= call!190677 (isEmpty!18970 s!11993))))

(declare-fun b!2917150 () Bool)

(declare-fun e!1840691 () Bool)

(assert (=> b!2917150 (= e!1840693 e!1840691)))

(declare-fun res!1204305 () Bool)

(assert (=> b!2917150 (= res!1204305 (matchRSpec!1111 (regOne!18461 r!17423) s!11993))))

(assert (=> b!2917150 (=> res!1204305 e!1840691)))

(declare-fun b!2917151 () Bool)

(assert (=> b!2917151 (= e!1840691 (matchRSpec!1111 (regTwo!18461 r!17423) s!11993))))

(declare-fun b!2917152 () Bool)

(declare-fun e!1840692 () Bool)

(assert (=> b!2917152 (= e!1840692 e!1840695)))

(declare-fun res!1204307 () Bool)

(assert (=> b!2917152 (= res!1204307 (not (is-EmptyLang!8974 r!17423)))))

(assert (=> b!2917152 (=> (not res!1204307) (not e!1840695))))

(declare-fun bm!190673 () Bool)

(declare-fun c!475860 () Bool)

(assert (=> bm!190673 (= call!190678 (Exists!1354 (ite c!475860 lambda!108518 lambda!108519)))))

(declare-fun d!838229 () Bool)

(declare-fun c!475858 () Bool)

(assert (=> d!838229 (= c!475858 (is-EmptyExpr!8974 r!17423))))

(assert (=> d!838229 (= (matchRSpec!1111 r!17423 s!11993) e!1840692)))

(declare-fun b!2917153 () Bool)

(assert (=> b!2917153 (= e!1840692 call!190677)))

(declare-fun b!2917154 () Bool)

(assert (=> b!2917154 (= e!1840693 e!1840694)))

(assert (=> b!2917154 (= c!475860 (is-Star!8974 r!17423))))

(assert (=> b!2917155 (= e!1840690 call!190678)))

(declare-fun b!2917156 () Bool)

(assert (=> b!2917156 (= e!1840696 (= s!11993 (Cons!34715 (c!475754 r!17423) Nil!34715)))))

(assert (= (and d!838229 c!475858) b!2917153))

(assert (= (and d!838229 (not c!475858)) b!2917152))

(assert (= (and b!2917152 res!1204307) b!2917148))

(assert (= (and b!2917148 c!475861) b!2917156))

(assert (= (and b!2917148 (not c!475861)) b!2917146))

(assert (= (and b!2917146 c!475859) b!2917150))

(assert (= (and b!2917146 (not c!475859)) b!2917154))

(assert (= (and b!2917150 (not res!1204305)) b!2917151))

(assert (= (and b!2917154 c!475860) b!2917147))

(assert (= (and b!2917154 (not c!475860)) b!2917149))

(assert (= (and b!2917147 (not res!1204306)) b!2917155))

(assert (= (or b!2917155 b!2917149) bm!190673))

(assert (= (or b!2917153 b!2917147) bm!190672))

(assert (=> bm!190672 m!3315133))

(declare-fun m!3315345 () Bool)

(assert (=> b!2917150 m!3315345))

(declare-fun m!3315347 () Bool)

(assert (=> b!2917151 m!3315347))

(declare-fun m!3315349 () Bool)

(assert (=> bm!190673 m!3315349))

(assert (=> b!2916733 d!838229))

(declare-fun bm!190675 () Bool)

(declare-fun call!190680 () Bool)

(assert (=> bm!190675 (= call!190680 (isEmpty!18970 s!11993))))

(declare-fun b!2917171 () Bool)

(declare-fun res!1204318 () Bool)

(declare-fun e!1840708 () Bool)

(assert (=> b!2917171 (=> res!1204318 e!1840708)))

(assert (=> b!2917171 (= res!1204318 (not (is-ElementMatch!8974 r!17423)))))

(declare-fun e!1840705 () Bool)

(assert (=> b!2917171 (= e!1840705 e!1840708)))

(declare-fun b!2917172 () Bool)

(declare-fun res!1204321 () Bool)

(declare-fun e!1840706 () Bool)

(assert (=> b!2917172 (=> (not res!1204321) (not e!1840706))))

(assert (=> b!2917172 (= res!1204321 (isEmpty!18970 (tail!4707 s!11993)))))

(declare-fun b!2917173 () Bool)

(declare-fun e!1840710 () Bool)

(declare-fun lt!1024935 () Bool)

(assert (=> b!2917173 (= e!1840710 (= lt!1024935 call!190680))))

(declare-fun b!2917174 () Bool)

(declare-fun res!1204316 () Bool)

(assert (=> b!2917174 (=> res!1204316 e!1840708)))

(assert (=> b!2917174 (= res!1204316 e!1840706)))

(declare-fun res!1204322 () Bool)

(assert (=> b!2917174 (=> (not res!1204322) (not e!1840706))))

(assert (=> b!2917174 (= res!1204322 lt!1024935)))

(declare-fun b!2917175 () Bool)

(declare-fun res!1204323 () Bool)

(declare-fun e!1840704 () Bool)

(assert (=> b!2917175 (=> res!1204323 e!1840704)))

(assert (=> b!2917175 (= res!1204323 (not (isEmpty!18970 (tail!4707 s!11993))))))

(declare-fun b!2917176 () Bool)

(assert (=> b!2917176 (= e!1840710 e!1840705)))

(declare-fun c!475866 () Bool)

(assert (=> b!2917176 (= c!475866 (is-EmptyLang!8974 r!17423))))

(declare-fun b!2917177 () Bool)

(declare-fun e!1840709 () Bool)

(assert (=> b!2917177 (= e!1840709 (nullable!2808 r!17423))))

(declare-fun b!2917178 () Bool)

(assert (=> b!2917178 (= e!1840704 (not (= (head!6481 s!11993) (c!475754 r!17423))))))

(declare-fun b!2917179 () Bool)

(declare-fun e!1840707 () Bool)

(assert (=> b!2917179 (= e!1840708 e!1840707)))

(declare-fun res!1204317 () Bool)

(assert (=> b!2917179 (=> (not res!1204317) (not e!1840707))))

(assert (=> b!2917179 (= res!1204317 (not lt!1024935))))

(declare-fun b!2917180 () Bool)

(assert (=> b!2917180 (= e!1840709 (matchR!3856 (derivativeStep!2422 r!17423 (head!6481 s!11993)) (tail!4707 s!11993)))))

(declare-fun b!2917181 () Bool)

(assert (=> b!2917181 (= e!1840705 (not lt!1024935))))

(declare-fun b!2917182 () Bool)

(assert (=> b!2917182 (= e!1840707 e!1840704)))

(declare-fun res!1204320 () Bool)

(assert (=> b!2917182 (=> res!1204320 e!1840704)))

(assert (=> b!2917182 (= res!1204320 call!190680)))

(declare-fun d!838235 () Bool)

(assert (=> d!838235 e!1840710))

(declare-fun c!475865 () Bool)

(assert (=> d!838235 (= c!475865 (is-EmptyExpr!8974 r!17423))))

(assert (=> d!838235 (= lt!1024935 e!1840709)))

(declare-fun c!475867 () Bool)

(assert (=> d!838235 (= c!475867 (isEmpty!18970 s!11993))))

(assert (=> d!838235 (validRegex!3707 r!17423)))

(assert (=> d!838235 (= (matchR!3856 r!17423 s!11993) lt!1024935)))

(declare-fun b!2917183 () Bool)

(declare-fun res!1204319 () Bool)

(assert (=> b!2917183 (=> (not res!1204319) (not e!1840706))))

(assert (=> b!2917183 (= res!1204319 (not call!190680))))

(declare-fun b!2917184 () Bool)

(assert (=> b!2917184 (= e!1840706 (= (head!6481 s!11993) (c!475754 r!17423)))))

(assert (= (and d!838235 c!475867) b!2917177))

(assert (= (and d!838235 (not c!475867)) b!2917180))

(assert (= (and d!838235 c!475865) b!2917173))

(assert (= (and d!838235 (not c!475865)) b!2917176))

(assert (= (and b!2917176 c!475866) b!2917181))

(assert (= (and b!2917176 (not c!475866)) b!2917171))

(assert (= (and b!2917171 (not res!1204318)) b!2917174))

(assert (= (and b!2917174 res!1204322) b!2917183))

(assert (= (and b!2917183 res!1204319) b!2917172))

(assert (= (and b!2917172 res!1204321) b!2917184))

(assert (= (and b!2917174 (not res!1204316)) b!2917179))

(assert (= (and b!2917179 res!1204317) b!2917182))

(assert (= (and b!2917182 (not res!1204320)) b!2917175))

(assert (= (and b!2917175 (not res!1204323)) b!2917178))

(assert (= (or b!2917173 b!2917182 b!2917183) bm!190675))

(assert (=> d!838235 m!3315133))

(assert (=> d!838235 m!3315131))

(declare-fun m!3315361 () Bool)

(assert (=> b!2917172 m!3315361))

(assert (=> b!2917172 m!3315361))

(declare-fun m!3315363 () Bool)

(assert (=> b!2917172 m!3315363))

(declare-fun m!3315365 () Bool)

(assert (=> b!2917184 m!3315365))

(declare-fun m!3315369 () Bool)

(assert (=> b!2917177 m!3315369))

(assert (=> b!2917175 m!3315361))

(assert (=> b!2917175 m!3315361))

(assert (=> b!2917175 m!3315363))

(assert (=> bm!190675 m!3315133))

(assert (=> b!2917180 m!3315365))

(assert (=> b!2917180 m!3315365))

(declare-fun m!3315373 () Bool)

(assert (=> b!2917180 m!3315373))

(assert (=> b!2917180 m!3315361))

(assert (=> b!2917180 m!3315373))

(assert (=> b!2917180 m!3315361))

(declare-fun m!3315377 () Bool)

(assert (=> b!2917180 m!3315377))

(assert (=> b!2917178 m!3315365))

(assert (=> b!2916733 d!838235))

(declare-fun d!838239 () Bool)

(assert (=> d!838239 (= (matchR!3856 r!17423 s!11993) (matchRSpec!1111 r!17423 s!11993))))

(declare-fun lt!1024939 () Unit!48287)

(declare-fun choose!17186 (Regex!8974 List!34839) Unit!48287)

(assert (=> d!838239 (= lt!1024939 (choose!17186 r!17423 s!11993))))

(assert (=> d!838239 (validRegex!3707 r!17423)))

(assert (=> d!838239 (= (mainMatchTheorem!1111 r!17423 s!11993) lt!1024939)))

(declare-fun bs!524864 () Bool)

(assert (= bs!524864 d!838239))

(assert (=> bs!524864 m!3315111))

(assert (=> bs!524864 m!3315109))

(declare-fun m!3315379 () Bool)

(assert (=> bs!524864 m!3315379))

(assert (=> bs!524864 m!3315131))

(assert (=> b!2916733 d!838239))

(declare-fun bm!190677 () Bool)

(declare-fun call!190682 () Bool)

(assert (=> bm!190677 (= call!190682 (isEmpty!18970 (_2!19975 lt!1024846)))))

(declare-fun b!2917199 () Bool)

(declare-fun res!1204334 () Bool)

(declare-fun e!1840722 () Bool)

(assert (=> b!2917199 (=> res!1204334 e!1840722)))

(assert (=> b!2917199 (= res!1204334 (not (is-ElementMatch!8974 (regTwo!18460 r!17423))))))

(declare-fun e!1840719 () Bool)

(assert (=> b!2917199 (= e!1840719 e!1840722)))

(declare-fun b!2917200 () Bool)

(declare-fun res!1204337 () Bool)

(declare-fun e!1840720 () Bool)

(assert (=> b!2917200 (=> (not res!1204337) (not e!1840720))))

(assert (=> b!2917200 (= res!1204337 (isEmpty!18970 (tail!4707 (_2!19975 lt!1024846))))))

(declare-fun b!2917201 () Bool)

(declare-fun e!1840724 () Bool)

(declare-fun lt!1024940 () Bool)

(assert (=> b!2917201 (= e!1840724 (= lt!1024940 call!190682))))

(declare-fun b!2917202 () Bool)

(declare-fun res!1204332 () Bool)

(assert (=> b!2917202 (=> res!1204332 e!1840722)))

(assert (=> b!2917202 (= res!1204332 e!1840720)))

(declare-fun res!1204338 () Bool)

(assert (=> b!2917202 (=> (not res!1204338) (not e!1840720))))

(assert (=> b!2917202 (= res!1204338 lt!1024940)))

(declare-fun b!2917203 () Bool)

(declare-fun res!1204339 () Bool)

(declare-fun e!1840718 () Bool)

(assert (=> b!2917203 (=> res!1204339 e!1840718)))

(assert (=> b!2917203 (= res!1204339 (not (isEmpty!18970 (tail!4707 (_2!19975 lt!1024846)))))))

(declare-fun b!2917204 () Bool)

(assert (=> b!2917204 (= e!1840724 e!1840719)))

(declare-fun c!475872 () Bool)

(assert (=> b!2917204 (= c!475872 (is-EmptyLang!8974 (regTwo!18460 r!17423)))))

(declare-fun b!2917205 () Bool)

(declare-fun e!1840723 () Bool)

(assert (=> b!2917205 (= e!1840723 (nullable!2808 (regTwo!18460 r!17423)))))

(declare-fun b!2917206 () Bool)

(assert (=> b!2917206 (= e!1840718 (not (= (head!6481 (_2!19975 lt!1024846)) (c!475754 (regTwo!18460 r!17423)))))))

(declare-fun b!2917207 () Bool)

(declare-fun e!1840721 () Bool)

(assert (=> b!2917207 (= e!1840722 e!1840721)))

(declare-fun res!1204333 () Bool)

(assert (=> b!2917207 (=> (not res!1204333) (not e!1840721))))

(assert (=> b!2917207 (= res!1204333 (not lt!1024940))))

(declare-fun b!2917208 () Bool)

(assert (=> b!2917208 (= e!1840723 (matchR!3856 (derivativeStep!2422 (regTwo!18460 r!17423) (head!6481 (_2!19975 lt!1024846))) (tail!4707 (_2!19975 lt!1024846))))))

(declare-fun b!2917209 () Bool)

(assert (=> b!2917209 (= e!1840719 (not lt!1024940))))

(declare-fun b!2917210 () Bool)

(assert (=> b!2917210 (= e!1840721 e!1840718)))

(declare-fun res!1204336 () Bool)

(assert (=> b!2917210 (=> res!1204336 e!1840718)))

(assert (=> b!2917210 (= res!1204336 call!190682)))

(declare-fun d!838243 () Bool)

(assert (=> d!838243 e!1840724))

(declare-fun c!475871 () Bool)

(assert (=> d!838243 (= c!475871 (is-EmptyExpr!8974 (regTwo!18460 r!17423)))))

(assert (=> d!838243 (= lt!1024940 e!1840723)))

(declare-fun c!475873 () Bool)

(assert (=> d!838243 (= c!475873 (isEmpty!18970 (_2!19975 lt!1024846)))))

(assert (=> d!838243 (validRegex!3707 (regTwo!18460 r!17423))))

(assert (=> d!838243 (= (matchR!3856 (regTwo!18460 r!17423) (_2!19975 lt!1024846)) lt!1024940)))

(declare-fun b!2917211 () Bool)

(declare-fun res!1204335 () Bool)

(assert (=> b!2917211 (=> (not res!1204335) (not e!1840720))))

(assert (=> b!2917211 (= res!1204335 (not call!190682))))

(declare-fun b!2917212 () Bool)

(assert (=> b!2917212 (= e!1840720 (= (head!6481 (_2!19975 lt!1024846)) (c!475754 (regTwo!18460 r!17423))))))

(assert (= (and d!838243 c!475873) b!2917205))

(assert (= (and d!838243 (not c!475873)) b!2917208))

(assert (= (and d!838243 c!475871) b!2917201))

(assert (= (and d!838243 (not c!475871)) b!2917204))

(assert (= (and b!2917204 c!475872) b!2917209))

(assert (= (and b!2917204 (not c!475872)) b!2917199))

(assert (= (and b!2917199 (not res!1204334)) b!2917202))

(assert (= (and b!2917202 res!1204338) b!2917211))

(assert (= (and b!2917211 res!1204335) b!2917200))

(assert (= (and b!2917200 res!1204337) b!2917212))

(assert (= (and b!2917202 (not res!1204332)) b!2917207))

(assert (= (and b!2917207 res!1204333) b!2917210))

(assert (= (and b!2917210 (not res!1204336)) b!2917203))

(assert (= (and b!2917203 (not res!1204339)) b!2917206))

(assert (= (or b!2917201 b!2917210 b!2917211) bm!190677))

(assert (=> d!838243 m!3315255))

(assert (=> d!838243 m!3315287))

(assert (=> b!2917200 m!3315257))

(assert (=> b!2917200 m!3315257))

(assert (=> b!2917200 m!3315259))

(assert (=> b!2917212 m!3315261))

(assert (=> b!2917205 m!3315281))

(assert (=> b!2917203 m!3315257))

(assert (=> b!2917203 m!3315257))

(assert (=> b!2917203 m!3315259))

(assert (=> bm!190677 m!3315255))

(assert (=> b!2917208 m!3315261))

(assert (=> b!2917208 m!3315261))

(declare-fun m!3315397 () Bool)

(assert (=> b!2917208 m!3315397))

(assert (=> b!2917208 m!3315257))

(assert (=> b!2917208 m!3315397))

(assert (=> b!2917208 m!3315257))

(declare-fun m!3315399 () Bool)

(assert (=> b!2917208 m!3315399))

(assert (=> b!2917206 m!3315261))

(assert (=> b!2916727 d!838243))

(declare-fun d!838247 () Bool)

(assert (=> d!838247 (= (isEmpty!18970 s!11993) (is-Nil!34715 s!11993))))

(assert (=> b!2916726 d!838247))

(declare-fun b!2917226 () Bool)

(declare-fun e!1840727 () Bool)

(declare-fun tp!936504 () Bool)

(declare-fun tp!936505 () Bool)

(assert (=> b!2917226 (= e!1840727 (and tp!936504 tp!936505))))

(declare-fun b!2917224 () Bool)

(declare-fun tp!936507 () Bool)

(declare-fun tp!936506 () Bool)

(assert (=> b!2917224 (= e!1840727 (and tp!936507 tp!936506))))

(assert (=> b!2916725 (= tp!936471 e!1840727)))

(declare-fun b!2917223 () Bool)

(assert (=> b!2917223 (= e!1840727 tp_is_empty!15511)))

(declare-fun b!2917225 () Bool)

(declare-fun tp!936508 () Bool)

(assert (=> b!2917225 (= e!1840727 tp!936508)))

(assert (= (and b!2916725 (is-ElementMatch!8974 (regOne!18461 r!17423))) b!2917223))

(assert (= (and b!2916725 (is-Concat!14295 (regOne!18461 r!17423))) b!2917224))

(assert (= (and b!2916725 (is-Star!8974 (regOne!18461 r!17423))) b!2917225))

(assert (= (and b!2916725 (is-Union!8974 (regOne!18461 r!17423))) b!2917226))

(declare-fun b!2917230 () Bool)

(declare-fun e!1840728 () Bool)

(declare-fun tp!936509 () Bool)

(declare-fun tp!936510 () Bool)

(assert (=> b!2917230 (= e!1840728 (and tp!936509 tp!936510))))

(declare-fun b!2917228 () Bool)

(declare-fun tp!936512 () Bool)

(declare-fun tp!936511 () Bool)

(assert (=> b!2917228 (= e!1840728 (and tp!936512 tp!936511))))

(assert (=> b!2916725 (= tp!936472 e!1840728)))

(declare-fun b!2917227 () Bool)

(assert (=> b!2917227 (= e!1840728 tp_is_empty!15511)))

(declare-fun b!2917229 () Bool)

(declare-fun tp!936513 () Bool)

(assert (=> b!2917229 (= e!1840728 tp!936513)))

(assert (= (and b!2916725 (is-ElementMatch!8974 (regTwo!18461 r!17423))) b!2917227))

(assert (= (and b!2916725 (is-Concat!14295 (regTwo!18461 r!17423))) b!2917228))

(assert (= (and b!2916725 (is-Star!8974 (regTwo!18461 r!17423))) b!2917229))

(assert (= (and b!2916725 (is-Union!8974 (regTwo!18461 r!17423))) b!2917230))

(declare-fun b!2917234 () Bool)

(declare-fun e!1840729 () Bool)

(declare-fun tp!936514 () Bool)

(declare-fun tp!936515 () Bool)

(assert (=> b!2917234 (= e!1840729 (and tp!936514 tp!936515))))

(declare-fun b!2917232 () Bool)

(declare-fun tp!936517 () Bool)

(declare-fun tp!936516 () Bool)

(assert (=> b!2917232 (= e!1840729 (and tp!936517 tp!936516))))

(assert (=> b!2916730 (= tp!936474 e!1840729)))

(declare-fun b!2917231 () Bool)

(assert (=> b!2917231 (= e!1840729 tp_is_empty!15511)))

(declare-fun b!2917233 () Bool)

(declare-fun tp!936518 () Bool)

(assert (=> b!2917233 (= e!1840729 tp!936518)))

(assert (= (and b!2916730 (is-ElementMatch!8974 (reg!9303 r!17423))) b!2917231))

(assert (= (and b!2916730 (is-Concat!14295 (reg!9303 r!17423))) b!2917232))

(assert (= (and b!2916730 (is-Star!8974 (reg!9303 r!17423))) b!2917233))

(assert (= (and b!2916730 (is-Union!8974 (reg!9303 r!17423))) b!2917234))

(declare-fun b!2917239 () Bool)

(declare-fun e!1840732 () Bool)

(declare-fun tp!936521 () Bool)

(assert (=> b!2917239 (= e!1840732 (and tp_is_empty!15511 tp!936521))))

(assert (=> b!2916728 (= tp!936475 e!1840732)))

(assert (= (and b!2916728 (is-Cons!34715 (t!233904 s!11993))) b!2917239))

(declare-fun b!2917243 () Bool)

(declare-fun e!1840733 () Bool)

(declare-fun tp!936522 () Bool)

(declare-fun tp!936523 () Bool)

(assert (=> b!2917243 (= e!1840733 (and tp!936522 tp!936523))))

(declare-fun b!2917241 () Bool)

(declare-fun tp!936525 () Bool)

(declare-fun tp!936524 () Bool)

(assert (=> b!2917241 (= e!1840733 (and tp!936525 tp!936524))))

(assert (=> b!2916732 (= tp!936473 e!1840733)))

(declare-fun b!2917240 () Bool)

(assert (=> b!2917240 (= e!1840733 tp_is_empty!15511)))

(declare-fun b!2917242 () Bool)

(declare-fun tp!936526 () Bool)

(assert (=> b!2917242 (= e!1840733 tp!936526)))

(assert (= (and b!2916732 (is-ElementMatch!8974 (regOne!18460 r!17423))) b!2917240))

(assert (= (and b!2916732 (is-Concat!14295 (regOne!18460 r!17423))) b!2917241))

(assert (= (and b!2916732 (is-Star!8974 (regOne!18460 r!17423))) b!2917242))

(assert (= (and b!2916732 (is-Union!8974 (regOne!18460 r!17423))) b!2917243))

(declare-fun b!2917247 () Bool)

(declare-fun e!1840734 () Bool)

(declare-fun tp!936527 () Bool)

(declare-fun tp!936528 () Bool)

(assert (=> b!2917247 (= e!1840734 (and tp!936527 tp!936528))))

(declare-fun b!2917245 () Bool)

(declare-fun tp!936530 () Bool)

(declare-fun tp!936529 () Bool)

(assert (=> b!2917245 (= e!1840734 (and tp!936530 tp!936529))))

(assert (=> b!2916732 (= tp!936470 e!1840734)))

(declare-fun b!2917244 () Bool)

(assert (=> b!2917244 (= e!1840734 tp_is_empty!15511)))

(declare-fun b!2917246 () Bool)

(declare-fun tp!936531 () Bool)

(assert (=> b!2917246 (= e!1840734 tp!936531)))

(assert (= (and b!2916732 (is-ElementMatch!8974 (regTwo!18460 r!17423))) b!2917244))

(assert (= (and b!2916732 (is-Concat!14295 (regTwo!18460 r!17423))) b!2917245))

(assert (= (and b!2916732 (is-Star!8974 (regTwo!18460 r!17423))) b!2917246))

(assert (= (and b!2916732 (is-Union!8974 (regTwo!18460 r!17423))) b!2917247))

(push 1)

(assert (not b!2916888))

(assert (not bm!190675))

(assert (not d!838239))

(assert (not b!2917226))

(assert (not b!2916942))

(assert (not bm!190648))

(assert (not d!838225))

(assert (not b!2917150))

(assert (not bm!190630))

(assert (not b!2917224))

(assert (not b!2916887))

(assert (not b!2916833))

(assert (not d!838243))

(assert (not b!2916880))

(assert (not bm!190647))

(assert (not b!2916826))

(assert (not bm!190657))

(assert (not b!2917177))

(assert (not b!2917090))

(assert (not b!2916944))

(assert (not b!2916821))

(assert (not b!2917092))

(assert (not b!2917072))

(assert (not b!2917242))

(assert (not b!2916881))

(assert (not b!2917229))

(assert (not b!2917151))

(assert (not d!838195))

(assert (not bm!190662))

(assert (not bm!190664))

(assert (not bm!190660))

(assert (not d!838199))

(assert (not b!2917205))

(assert (not bm!190665))

(assert (not b!2916827))

(assert (not b!2917243))

(assert (not bm!190673))

(assert (not d!838215))

(assert (not bm!190650))

(assert (not bm!190666))

(assert (not b!2917241))

(assert (not b!2916829))

(assert (not b!2917225))

(assert (not b!2917172))

(assert (not b!2916948))

(assert (not bm!190651))

(assert (not d!838205))

(assert (not bm!190631))

(assert (not b!2917228))

(assert (not bm!190659))

(assert (not d!838201))

(assert (not b!2917087))

(assert (not b!2917009))

(assert (not b!2917200))

(assert (not b!2917099))

(assert (not b!2917175))

(assert (not bm!190616))

(assert (not b!2917230))

(assert (not bm!190677))

(assert (not b!2917093))

(assert (not b!2917056))

(assert (not b!2916883))

(assert (not b!2917234))

(assert (not b!2916941))

(assert (not b!2916923))

(assert (not b!2917246))

(assert (not d!838213))

(assert (not d!838227))

(assert (not b!2917203))

(assert (not b!2917245))

(assert (not d!838235))

(assert (not b!2916939))

(assert (not b!2917178))

(assert (not d!838209))

(assert (not bm!190632))

(assert (not b!2917212))

(assert (not d!838207))

(assert (not b!2916884))

(assert (not b!2916824))

(assert (not b!2917233))

(assert (not bm!190653))

(assert (not b!2917232))

(assert (not b!2917247))

(assert (not bm!190672))

(assert (not b!2917206))

(assert (not b!2917208))

(assert (not d!838221))

(assert (not b!2917077))

(assert (not d!838219))

(assert (not b!2916936))

(assert tp_is_empty!15511)

(assert (not b!2917239))

(assert (not b!2917095))

(assert (not d!838193))

(assert (not b!2917025))

(assert (not b!2917184))

(assert (not b!2917180))

(assert (not bm!190656))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

