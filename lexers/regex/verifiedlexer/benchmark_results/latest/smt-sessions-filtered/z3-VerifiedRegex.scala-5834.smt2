; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!287052 () Bool)

(assert start!287052)

(declare-fun b!2964117 () Bool)

(declare-fun e!1865573 () Bool)

(declare-fun tp_is_empty!16001 () Bool)

(declare-fun tp!945748 () Bool)

(assert (=> b!2964117 (= e!1865573 (and tp_is_empty!16001 tp!945748))))

(declare-fun b!2964118 () Bool)

(declare-fun e!1865575 () Bool)

(declare-fun tp!945747 () Bool)

(declare-fun tp!945745 () Bool)

(assert (=> b!2964118 (= e!1865575 (and tp!945747 tp!945745))))

(declare-fun b!2964119 () Bool)

(declare-fun e!1865572 () Bool)

(declare-datatypes ((C!18624 0))(
  ( (C!18625 (val!11348 Int)) )
))
(declare-datatypes ((Regex!9219 0))(
  ( (ElementMatch!9219 (c!485967 C!18624)) (Concat!14540 (regOne!18950 Regex!9219) (regTwo!18950 Regex!9219)) (EmptyExpr!9219) (Star!9219 (reg!9548 Regex!9219)) (EmptyLang!9219) (Union!9219 (regOne!18951 Regex!9219) (regTwo!18951 Regex!9219)) )
))
(declare-fun lt!1034839 () Regex!9219)

(declare-fun lt!1034838 () Regex!9219)

(declare-fun validRegex!3952 (Regex!9219) Bool)

(assert (=> b!2964119 (= e!1865572 (validRegex!3952 (Union!9219 lt!1034839 lt!1034838)))))

(declare-fun res!1222716 () Bool)

(declare-fun e!1865571 () Bool)

(assert (=> start!287052 (=> (not res!1222716) (not e!1865571))))

(declare-fun r!17423 () Regex!9219)

(assert (=> start!287052 (= res!1222716 (validRegex!3952 r!17423))))

(assert (=> start!287052 e!1865571))

(assert (=> start!287052 e!1865575))

(assert (=> start!287052 e!1865573))

(declare-fun b!2964120 () Bool)

(declare-fun tp!945746 () Bool)

(assert (=> b!2964120 (= e!1865575 tp!945746)))

(declare-fun b!2964121 () Bool)

(declare-fun e!1865574 () Bool)

(assert (=> b!2964121 (= e!1865574 e!1865572)))

(declare-fun res!1222714 () Bool)

(assert (=> b!2964121 (=> res!1222714 e!1865572)))

(declare-fun isEmptyLang!335 (Regex!9219) Bool)

(assert (=> b!2964121 (= res!1222714 (isEmptyLang!335 lt!1034839))))

(declare-fun simplify!222 (Regex!9219) Regex!9219)

(assert (=> b!2964121 (= lt!1034838 (simplify!222 (regTwo!18951 r!17423)))))

(assert (=> b!2964121 (= lt!1034839 (simplify!222 (regOne!18951 r!17423)))))

(declare-fun b!2964122 () Bool)

(declare-fun res!1222713 () Bool)

(assert (=> b!2964122 (=> res!1222713 e!1865572)))

(assert (=> b!2964122 (= res!1222713 (isEmptyLang!335 lt!1034838))))

(declare-fun b!2964123 () Bool)

(assert (=> b!2964123 (= e!1865575 tp_is_empty!16001)))

(declare-fun b!2964124 () Bool)

(declare-fun tp!945744 () Bool)

(declare-fun tp!945749 () Bool)

(assert (=> b!2964124 (= e!1865575 (and tp!945744 tp!945749))))

(declare-fun b!2964125 () Bool)

(assert (=> b!2964125 (= e!1865571 (not e!1865574))))

(declare-fun res!1222715 () Bool)

(assert (=> b!2964125 (=> res!1222715 e!1865574)))

(declare-fun lt!1034840 () Bool)

(get-info :version)

(assert (=> b!2964125 (= res!1222715 (or lt!1034840 ((_ is Concat!14540) r!17423) (not ((_ is Union!9219) r!17423))))))

(declare-datatypes ((List!35084 0))(
  ( (Nil!34960) (Cons!34960 (h!40380 C!18624) (t!234149 List!35084)) )
))
(declare-fun s!11993 () List!35084)

(declare-fun matchRSpec!1356 (Regex!9219 List!35084) Bool)

(assert (=> b!2964125 (= lt!1034840 (matchRSpec!1356 r!17423 s!11993))))

(declare-fun matchR!4101 (Regex!9219 List!35084) Bool)

(assert (=> b!2964125 (= lt!1034840 (matchR!4101 r!17423 s!11993))))

(declare-datatypes ((Unit!48817 0))(
  ( (Unit!48818) )
))
(declare-fun lt!1034837 () Unit!48817)

(declare-fun mainMatchTheorem!1356 (Regex!9219 List!35084) Unit!48817)

(assert (=> b!2964125 (= lt!1034837 (mainMatchTheorem!1356 r!17423 s!11993))))

(assert (= (and start!287052 res!1222716) b!2964125))

(assert (= (and b!2964125 (not res!1222715)) b!2964121))

(assert (= (and b!2964121 (not res!1222714)) b!2964122))

(assert (= (and b!2964122 (not res!1222713)) b!2964119))

(assert (= (and start!287052 ((_ is ElementMatch!9219) r!17423)) b!2964123))

(assert (= (and start!287052 ((_ is Concat!14540) r!17423)) b!2964124))

(assert (= (and start!287052 ((_ is Star!9219) r!17423)) b!2964120))

(assert (= (and start!287052 ((_ is Union!9219) r!17423)) b!2964118))

(assert (= (and start!287052 ((_ is Cons!34960) s!11993)) b!2964117))

(declare-fun m!3335617 () Bool)

(assert (=> b!2964122 m!3335617))

(declare-fun m!3335619 () Bool)

(assert (=> start!287052 m!3335619))

(declare-fun m!3335621 () Bool)

(assert (=> b!2964119 m!3335621))

(declare-fun m!3335623 () Bool)

(assert (=> b!2964125 m!3335623))

(declare-fun m!3335625 () Bool)

(assert (=> b!2964125 m!3335625))

(declare-fun m!3335627 () Bool)

(assert (=> b!2964125 m!3335627))

(declare-fun m!3335629 () Bool)

(assert (=> b!2964121 m!3335629))

(declare-fun m!3335631 () Bool)

(assert (=> b!2964121 m!3335631))

(declare-fun m!3335633 () Bool)

(assert (=> b!2964121 m!3335633))

(check-sat (not b!2964124) (not b!2964117) (not b!2964118) (not b!2964125) (not start!287052) (not b!2964122) (not b!2964120) (not b!2964119) tp_is_empty!16001 (not b!2964121))
(check-sat)
(get-model)

(declare-fun b!2964144 () Bool)

(declare-fun e!1865590 () Bool)

(declare-fun e!1865594 () Bool)

(assert (=> b!2964144 (= e!1865590 e!1865594)))

(declare-fun res!1222729 () Bool)

(assert (=> b!2964144 (=> (not res!1222729) (not e!1865594))))

(declare-fun call!196819 () Bool)

(assert (=> b!2964144 (= res!1222729 call!196819)))

(declare-fun bm!196814 () Bool)

(declare-fun c!485973 () Bool)

(declare-fun call!196820 () Bool)

(declare-fun c!485972 () Bool)

(assert (=> bm!196814 (= call!196820 (validRegex!3952 (ite c!485972 (reg!9548 r!17423) (ite c!485973 (regTwo!18951 r!17423) (regOne!18950 r!17423)))))))

(declare-fun b!2964146 () Bool)

(declare-fun res!1222731 () Bool)

(declare-fun e!1865595 () Bool)

(assert (=> b!2964146 (=> (not res!1222731) (not e!1865595))))

(declare-fun call!196821 () Bool)

(assert (=> b!2964146 (= res!1222731 call!196821)))

(declare-fun e!1865592 () Bool)

(assert (=> b!2964146 (= e!1865592 e!1865595)))

(declare-fun bm!196815 () Bool)

(assert (=> bm!196815 (= call!196821 (validRegex!3952 (ite c!485973 (regOne!18951 r!17423) (regTwo!18950 r!17423))))))

(declare-fun b!2964147 () Bool)

(declare-fun e!1865596 () Bool)

(declare-fun e!1865591 () Bool)

(assert (=> b!2964147 (= e!1865596 e!1865591)))

(assert (=> b!2964147 (= c!485972 ((_ is Star!9219) r!17423))))

(declare-fun b!2964148 () Bool)

(assert (=> b!2964148 (= e!1865591 e!1865592)))

(assert (=> b!2964148 (= c!485973 ((_ is Union!9219) r!17423))))

(declare-fun b!2964149 () Bool)

(assert (=> b!2964149 (= e!1865594 call!196821)))

(declare-fun bm!196816 () Bool)

(assert (=> bm!196816 (= call!196819 call!196820)))

(declare-fun b!2964150 () Bool)

(declare-fun e!1865593 () Bool)

(assert (=> b!2964150 (= e!1865591 e!1865593)))

(declare-fun res!1222728 () Bool)

(declare-fun nullable!2944 (Regex!9219) Bool)

(assert (=> b!2964150 (= res!1222728 (not (nullable!2944 (reg!9548 r!17423))))))

(assert (=> b!2964150 (=> (not res!1222728) (not e!1865593))))

(declare-fun d!842223 () Bool)

(declare-fun res!1222727 () Bool)

(assert (=> d!842223 (=> res!1222727 e!1865596)))

(assert (=> d!842223 (= res!1222727 ((_ is ElementMatch!9219) r!17423))))

(assert (=> d!842223 (= (validRegex!3952 r!17423) e!1865596)))

(declare-fun b!2964145 () Bool)

(assert (=> b!2964145 (= e!1865595 call!196819)))

(declare-fun b!2964151 () Bool)

(declare-fun res!1222730 () Bool)

(assert (=> b!2964151 (=> res!1222730 e!1865590)))

(assert (=> b!2964151 (= res!1222730 (not ((_ is Concat!14540) r!17423)))))

(assert (=> b!2964151 (= e!1865592 e!1865590)))

(declare-fun b!2964152 () Bool)

(assert (=> b!2964152 (= e!1865593 call!196820)))

(assert (= (and d!842223 (not res!1222727)) b!2964147))

(assert (= (and b!2964147 c!485972) b!2964150))

(assert (= (and b!2964147 (not c!485972)) b!2964148))

(assert (= (and b!2964150 res!1222728) b!2964152))

(assert (= (and b!2964148 c!485973) b!2964146))

(assert (= (and b!2964148 (not c!485973)) b!2964151))

(assert (= (and b!2964146 res!1222731) b!2964145))

(assert (= (and b!2964151 (not res!1222730)) b!2964144))

(assert (= (and b!2964144 res!1222729) b!2964149))

(assert (= (or b!2964146 b!2964149) bm!196815))

(assert (= (or b!2964145 b!2964144) bm!196816))

(assert (= (or b!2964152 bm!196816) bm!196814))

(declare-fun m!3335635 () Bool)

(assert (=> bm!196814 m!3335635))

(declare-fun m!3335637 () Bool)

(assert (=> bm!196815 m!3335637))

(declare-fun m!3335639 () Bool)

(assert (=> b!2964150 m!3335639))

(assert (=> start!287052 d!842223))

(declare-fun b!2964153 () Bool)

(declare-fun e!1865597 () Bool)

(declare-fun e!1865601 () Bool)

(assert (=> b!2964153 (= e!1865597 e!1865601)))

(declare-fun res!1222734 () Bool)

(assert (=> b!2964153 (=> (not res!1222734) (not e!1865601))))

(declare-fun call!196822 () Bool)

(assert (=> b!2964153 (= res!1222734 call!196822)))

(declare-fun c!485975 () Bool)

(declare-fun bm!196817 () Bool)

(declare-fun call!196823 () Bool)

(declare-fun c!485974 () Bool)

(assert (=> bm!196817 (= call!196823 (validRegex!3952 (ite c!485974 (reg!9548 (Union!9219 lt!1034839 lt!1034838)) (ite c!485975 (regTwo!18951 (Union!9219 lt!1034839 lt!1034838)) (regOne!18950 (Union!9219 lt!1034839 lt!1034838))))))))

(declare-fun b!2964155 () Bool)

(declare-fun res!1222736 () Bool)

(declare-fun e!1865602 () Bool)

(assert (=> b!2964155 (=> (not res!1222736) (not e!1865602))))

(declare-fun call!196824 () Bool)

(assert (=> b!2964155 (= res!1222736 call!196824)))

(declare-fun e!1865599 () Bool)

(assert (=> b!2964155 (= e!1865599 e!1865602)))

(declare-fun bm!196818 () Bool)

(assert (=> bm!196818 (= call!196824 (validRegex!3952 (ite c!485975 (regOne!18951 (Union!9219 lt!1034839 lt!1034838)) (regTwo!18950 (Union!9219 lt!1034839 lt!1034838)))))))

(declare-fun b!2964156 () Bool)

(declare-fun e!1865603 () Bool)

(declare-fun e!1865598 () Bool)

(assert (=> b!2964156 (= e!1865603 e!1865598)))

(assert (=> b!2964156 (= c!485974 ((_ is Star!9219) (Union!9219 lt!1034839 lt!1034838)))))

(declare-fun b!2964157 () Bool)

(assert (=> b!2964157 (= e!1865598 e!1865599)))

(assert (=> b!2964157 (= c!485975 ((_ is Union!9219) (Union!9219 lt!1034839 lt!1034838)))))

(declare-fun b!2964158 () Bool)

(assert (=> b!2964158 (= e!1865601 call!196824)))

(declare-fun bm!196819 () Bool)

(assert (=> bm!196819 (= call!196822 call!196823)))

(declare-fun b!2964159 () Bool)

(declare-fun e!1865600 () Bool)

(assert (=> b!2964159 (= e!1865598 e!1865600)))

(declare-fun res!1222733 () Bool)

(assert (=> b!2964159 (= res!1222733 (not (nullable!2944 (reg!9548 (Union!9219 lt!1034839 lt!1034838)))))))

(assert (=> b!2964159 (=> (not res!1222733) (not e!1865600))))

(declare-fun d!842227 () Bool)

(declare-fun res!1222732 () Bool)

(assert (=> d!842227 (=> res!1222732 e!1865603)))

(assert (=> d!842227 (= res!1222732 ((_ is ElementMatch!9219) (Union!9219 lt!1034839 lt!1034838)))))

(assert (=> d!842227 (= (validRegex!3952 (Union!9219 lt!1034839 lt!1034838)) e!1865603)))

(declare-fun b!2964154 () Bool)

(assert (=> b!2964154 (= e!1865602 call!196822)))

(declare-fun b!2964160 () Bool)

(declare-fun res!1222735 () Bool)

(assert (=> b!2964160 (=> res!1222735 e!1865597)))

(assert (=> b!2964160 (= res!1222735 (not ((_ is Concat!14540) (Union!9219 lt!1034839 lt!1034838))))))

(assert (=> b!2964160 (= e!1865599 e!1865597)))

(declare-fun b!2964161 () Bool)

(assert (=> b!2964161 (= e!1865600 call!196823)))

(assert (= (and d!842227 (not res!1222732)) b!2964156))

(assert (= (and b!2964156 c!485974) b!2964159))

(assert (= (and b!2964156 (not c!485974)) b!2964157))

(assert (= (and b!2964159 res!1222733) b!2964161))

(assert (= (and b!2964157 c!485975) b!2964155))

(assert (= (and b!2964157 (not c!485975)) b!2964160))

(assert (= (and b!2964155 res!1222736) b!2964154))

(assert (= (and b!2964160 (not res!1222735)) b!2964153))

(assert (= (and b!2964153 res!1222734) b!2964158))

(assert (= (or b!2964155 b!2964158) bm!196818))

(assert (= (or b!2964154 b!2964153) bm!196819))

(assert (= (or b!2964161 bm!196819) bm!196817))

(declare-fun m!3335641 () Bool)

(assert (=> bm!196817 m!3335641))

(declare-fun m!3335643 () Bool)

(assert (=> bm!196818 m!3335643))

(declare-fun m!3335645 () Bool)

(assert (=> b!2964159 m!3335645))

(assert (=> b!2964119 d!842227))

(declare-fun b!2964331 () Bool)

(assert (=> b!2964331 true))

(assert (=> b!2964331 true))

(declare-fun bs!526388 () Bool)

(declare-fun b!2964335 () Bool)

(assert (= bs!526388 (and b!2964335 b!2964331)))

(declare-fun lambda!110433 () Int)

(declare-fun lambda!110431 () Int)

(assert (=> bs!526388 (not (= lambda!110433 lambda!110431))))

(assert (=> b!2964335 true))

(assert (=> b!2964335 true))

(declare-fun b!2964326 () Bool)

(declare-fun e!1865696 () Bool)

(declare-fun call!196861 () Bool)

(assert (=> b!2964326 (= e!1865696 call!196861)))

(declare-fun bm!196856 () Bool)

(declare-fun isEmpty!19224 (List!35084) Bool)

(assert (=> bm!196856 (= call!196861 (isEmpty!19224 s!11993))))

(declare-fun b!2964327 () Bool)

(declare-fun res!1222783 () Bool)

(declare-fun e!1865700 () Bool)

(assert (=> b!2964327 (=> res!1222783 e!1865700)))

(assert (=> b!2964327 (= res!1222783 call!196861)))

(declare-fun e!1865701 () Bool)

(assert (=> b!2964327 (= e!1865701 e!1865700)))

(declare-fun b!2964328 () Bool)

(declare-fun e!1865698 () Bool)

(declare-fun e!1865697 () Bool)

(assert (=> b!2964328 (= e!1865698 e!1865697)))

(declare-fun res!1222781 () Bool)

(assert (=> b!2964328 (= res!1222781 (matchRSpec!1356 (regOne!18951 r!17423) s!11993))))

(assert (=> b!2964328 (=> res!1222781 e!1865697)))

(declare-fun b!2964329 () Bool)

(declare-fun c!486039 () Bool)

(assert (=> b!2964329 (= c!486039 ((_ is ElementMatch!9219) r!17423))))

(declare-fun e!1865702 () Bool)

(declare-fun e!1865699 () Bool)

(assert (=> b!2964329 (= e!1865702 e!1865699)))

(declare-fun b!2964330 () Bool)

(assert (=> b!2964330 (= e!1865699 (= s!11993 (Cons!34960 (c!485967 r!17423) Nil!34960)))))

(declare-fun b!2964332 () Bool)

(declare-fun c!486038 () Bool)

(assert (=> b!2964332 (= c!486038 ((_ is Union!9219) r!17423))))

(assert (=> b!2964332 (= e!1865699 e!1865698)))

(declare-fun call!196862 () Bool)

(declare-fun bm!196857 () Bool)

(declare-fun c!486036 () Bool)

(declare-fun Exists!1530 (Int) Bool)

(assert (=> bm!196857 (= call!196862 (Exists!1530 (ite c!486036 lambda!110431 lambda!110433)))))

(declare-fun b!2964333 () Bool)

(assert (=> b!2964333 (= e!1865697 (matchRSpec!1356 (regTwo!18951 r!17423) s!11993))))

(declare-fun b!2964334 () Bool)

(assert (=> b!2964334 (= e!1865696 e!1865702)))

(declare-fun res!1222782 () Bool)

(assert (=> b!2964334 (= res!1222782 (not ((_ is EmptyLang!9219) r!17423)))))

(assert (=> b!2964334 (=> (not res!1222782) (not e!1865702))))

(assert (=> b!2964335 (= e!1865701 call!196862)))

(declare-fun b!2964336 () Bool)

(assert (=> b!2964336 (= e!1865698 e!1865701)))

(assert (=> b!2964336 (= c!486036 ((_ is Star!9219) r!17423))))

(declare-fun d!842229 () Bool)

(declare-fun c!486037 () Bool)

(assert (=> d!842229 (= c!486037 ((_ is EmptyExpr!9219) r!17423))))

(assert (=> d!842229 (= (matchRSpec!1356 r!17423 s!11993) e!1865696)))

(assert (=> b!2964331 (= e!1865700 call!196862)))

(assert (= (and d!842229 c!486037) b!2964326))

(assert (= (and d!842229 (not c!486037)) b!2964334))

(assert (= (and b!2964334 res!1222782) b!2964329))

(assert (= (and b!2964329 c!486039) b!2964330))

(assert (= (and b!2964329 (not c!486039)) b!2964332))

(assert (= (and b!2964332 c!486038) b!2964328))

(assert (= (and b!2964332 (not c!486038)) b!2964336))

(assert (= (and b!2964328 (not res!1222781)) b!2964333))

(assert (= (and b!2964336 c!486036) b!2964327))

(assert (= (and b!2964336 (not c!486036)) b!2964335))

(assert (= (and b!2964327 (not res!1222783)) b!2964331))

(assert (= (or b!2964331 b!2964335) bm!196857))

(assert (= (or b!2964326 b!2964327) bm!196856))

(declare-fun m!3335687 () Bool)

(assert (=> bm!196856 m!3335687))

(declare-fun m!3335689 () Bool)

(assert (=> b!2964328 m!3335689))

(declare-fun m!3335691 () Bool)

(assert (=> bm!196857 m!3335691))

(declare-fun m!3335693 () Bool)

(assert (=> b!2964333 m!3335693))

(assert (=> b!2964125 d!842229))

(declare-fun b!2964412 () Bool)

(declare-fun res!1222825 () Bool)

(declare-fun e!1865742 () Bool)

(assert (=> b!2964412 (=> (not res!1222825) (not e!1865742))))

(declare-fun call!196869 () Bool)

(assert (=> b!2964412 (= res!1222825 (not call!196869))))

(declare-fun b!2964413 () Bool)

(declare-fun e!1865741 () Bool)

(assert (=> b!2964413 (= e!1865741 (nullable!2944 r!17423))))

(declare-fun b!2964414 () Bool)

(declare-fun e!1865738 () Bool)

(declare-fun e!1865739 () Bool)

(assert (=> b!2964414 (= e!1865738 e!1865739)))

(declare-fun res!1222824 () Bool)

(assert (=> b!2964414 (=> (not res!1222824) (not e!1865739))))

(declare-fun lt!1034869 () Bool)

(assert (=> b!2964414 (= res!1222824 (not lt!1034869))))

(declare-fun b!2964415 () Bool)

(declare-fun res!1222821 () Bool)

(assert (=> b!2964415 (=> (not res!1222821) (not e!1865742))))

(declare-fun tail!4831 (List!35084) List!35084)

(assert (=> b!2964415 (= res!1222821 (isEmpty!19224 (tail!4831 s!11993)))))

(declare-fun b!2964416 () Bool)

(declare-fun res!1222823 () Bool)

(declare-fun e!1865740 () Bool)

(assert (=> b!2964416 (=> res!1222823 e!1865740)))

(assert (=> b!2964416 (= res!1222823 (not (isEmpty!19224 (tail!4831 s!11993))))))

(declare-fun b!2964417 () Bool)

(declare-fun res!1222819 () Bool)

(assert (=> b!2964417 (=> res!1222819 e!1865738)))

(assert (=> b!2964417 (= res!1222819 e!1865742)))

(declare-fun res!1222826 () Bool)

(assert (=> b!2964417 (=> (not res!1222826) (not e!1865742))))

(assert (=> b!2964417 (= res!1222826 lt!1034869)))

(declare-fun b!2964418 () Bool)

(declare-fun head!6605 (List!35084) C!18624)

(assert (=> b!2964418 (= e!1865742 (= (head!6605 s!11993) (c!485967 r!17423)))))

(declare-fun b!2964419 () Bool)

(declare-fun e!1865743 () Bool)

(declare-fun e!1865744 () Bool)

(assert (=> b!2964419 (= e!1865743 e!1865744)))

(declare-fun c!486057 () Bool)

(assert (=> b!2964419 (= c!486057 ((_ is EmptyLang!9219) r!17423))))

(declare-fun b!2964420 () Bool)

(assert (=> b!2964420 (= e!1865739 e!1865740)))

(declare-fun res!1222822 () Bool)

(assert (=> b!2964420 (=> res!1222822 e!1865740)))

(assert (=> b!2964420 (= res!1222822 call!196869)))

(declare-fun b!2964421 () Bool)

(declare-fun res!1222820 () Bool)

(assert (=> b!2964421 (=> res!1222820 e!1865738)))

(assert (=> b!2964421 (= res!1222820 (not ((_ is ElementMatch!9219) r!17423)))))

(assert (=> b!2964421 (= e!1865744 e!1865738)))

(declare-fun b!2964422 () Bool)

(declare-fun derivativeStep!2546 (Regex!9219 C!18624) Regex!9219)

(assert (=> b!2964422 (= e!1865741 (matchR!4101 (derivativeStep!2546 r!17423 (head!6605 s!11993)) (tail!4831 s!11993)))))

(declare-fun b!2964423 () Bool)

(assert (=> b!2964423 (= e!1865744 (not lt!1034869))))

(declare-fun b!2964424 () Bool)

(assert (=> b!2964424 (= e!1865740 (not (= (head!6605 s!11993) (c!485967 r!17423))))))

(declare-fun bm!196864 () Bool)

(assert (=> bm!196864 (= call!196869 (isEmpty!19224 s!11993))))

(declare-fun b!2964425 () Bool)

(assert (=> b!2964425 (= e!1865743 (= lt!1034869 call!196869))))

(declare-fun d!842237 () Bool)

(assert (=> d!842237 e!1865743))

(declare-fun c!486056 () Bool)

(assert (=> d!842237 (= c!486056 ((_ is EmptyExpr!9219) r!17423))))

(assert (=> d!842237 (= lt!1034869 e!1865741)))

(declare-fun c!486058 () Bool)

(assert (=> d!842237 (= c!486058 (isEmpty!19224 s!11993))))

(assert (=> d!842237 (validRegex!3952 r!17423)))

(assert (=> d!842237 (= (matchR!4101 r!17423 s!11993) lt!1034869)))

(assert (= (and d!842237 c!486058) b!2964413))

(assert (= (and d!842237 (not c!486058)) b!2964422))

(assert (= (and d!842237 c!486056) b!2964425))

(assert (= (and d!842237 (not c!486056)) b!2964419))

(assert (= (and b!2964419 c!486057) b!2964423))

(assert (= (and b!2964419 (not c!486057)) b!2964421))

(assert (= (and b!2964421 (not res!1222820)) b!2964417))

(assert (= (and b!2964417 res!1222826) b!2964412))

(assert (= (and b!2964412 res!1222825) b!2964415))

(assert (= (and b!2964415 res!1222821) b!2964418))

(assert (= (and b!2964417 (not res!1222819)) b!2964414))

(assert (= (and b!2964414 res!1222824) b!2964420))

(assert (= (and b!2964420 (not res!1222822)) b!2964416))

(assert (= (and b!2964416 (not res!1222823)) b!2964424))

(assert (= (or b!2964425 b!2964412 b!2964420) bm!196864))

(assert (=> d!842237 m!3335687))

(assert (=> d!842237 m!3335619))

(declare-fun m!3335703 () Bool)

(assert (=> b!2964418 m!3335703))

(declare-fun m!3335707 () Bool)

(assert (=> b!2964413 m!3335707))

(assert (=> bm!196864 m!3335687))

(declare-fun m!3335711 () Bool)

(assert (=> b!2964416 m!3335711))

(assert (=> b!2964416 m!3335711))

(declare-fun m!3335715 () Bool)

(assert (=> b!2964416 m!3335715))

(assert (=> b!2964424 m!3335703))

(assert (=> b!2964415 m!3335711))

(assert (=> b!2964415 m!3335711))

(assert (=> b!2964415 m!3335715))

(assert (=> b!2964422 m!3335703))

(assert (=> b!2964422 m!3335703))

(declare-fun m!3335719 () Bool)

(assert (=> b!2964422 m!3335719))

(assert (=> b!2964422 m!3335711))

(assert (=> b!2964422 m!3335719))

(assert (=> b!2964422 m!3335711))

(declare-fun m!3335723 () Bool)

(assert (=> b!2964422 m!3335723))

(assert (=> b!2964125 d!842237))

(declare-fun d!842241 () Bool)

(assert (=> d!842241 (= (matchR!4101 r!17423 s!11993) (matchRSpec!1356 r!17423 s!11993))))

(declare-fun lt!1034876 () Unit!48817)

(declare-fun choose!17535 (Regex!9219 List!35084) Unit!48817)

(assert (=> d!842241 (= lt!1034876 (choose!17535 r!17423 s!11993))))

(assert (=> d!842241 (validRegex!3952 r!17423)))

(assert (=> d!842241 (= (mainMatchTheorem!1356 r!17423 s!11993) lt!1034876)))

(declare-fun bs!526391 () Bool)

(assert (= bs!526391 d!842241))

(assert (=> bs!526391 m!3335625))

(assert (=> bs!526391 m!3335623))

(declare-fun m!3335729 () Bool)

(assert (=> bs!526391 m!3335729))

(assert (=> bs!526391 m!3335619))

(assert (=> b!2964125 d!842241))

(declare-fun d!842247 () Bool)

(assert (=> d!842247 (= (isEmptyLang!335 lt!1034838) ((_ is EmptyLang!9219) lt!1034838))))

(assert (=> b!2964122 d!842247))

(declare-fun d!842249 () Bool)

(assert (=> d!842249 (= (isEmptyLang!335 lt!1034839) ((_ is EmptyLang!9219) lt!1034839))))

(assert (=> b!2964121 d!842249))

(declare-fun lt!1034890 () Regex!9219)

(declare-fun c!486100 () Bool)

(declare-fun call!196900 () Bool)

(declare-fun c!486096 () Bool)

(declare-fun bm!196892 () Bool)

(declare-fun lt!1034893 () Regex!9219)

(declare-fun lt!1034894 () Regex!9219)

(assert (=> bm!196892 (= call!196900 (isEmptyLang!335 (ite c!486100 lt!1034890 (ite c!486096 lt!1034894 lt!1034893))))))

(declare-fun b!2964561 () Bool)

(declare-fun e!1865820 () Regex!9219)

(assert (=> b!2964561 (= e!1865820 EmptyExpr!9219)))

(declare-fun b!2964562 () Bool)

(declare-fun c!486095 () Bool)

(declare-fun e!1865825 () Bool)

(assert (=> b!2964562 (= c!486095 e!1865825)))

(declare-fun res!1222863 () Bool)

(assert (=> b!2964562 (=> res!1222863 e!1865825)))

(assert (=> b!2964562 (= res!1222863 call!196900)))

(declare-fun call!196898 () Regex!9219)

(assert (=> b!2964562 (= lt!1034890 call!196898)))

(declare-fun e!1865830 () Regex!9219)

(declare-fun e!1865826 () Regex!9219)

(assert (=> b!2964562 (= e!1865830 e!1865826)))

(declare-fun lt!1034889 () Regex!9219)

(declare-fun bm!196893 () Bool)

(declare-fun call!196901 () Bool)

(declare-fun lt!1034891 () Regex!9219)

(assert (=> bm!196893 (= call!196901 (isEmptyLang!335 (ite c!486096 lt!1034891 lt!1034889)))))

(declare-fun b!2964563 () Bool)

(assert (=> b!2964563 (= e!1865826 (Star!9219 lt!1034890))))

(declare-fun bm!196894 () Bool)

(declare-fun call!196902 () Regex!9219)

(assert (=> bm!196894 (= call!196902 call!196898)))

(declare-fun b!2964564 () Bool)

(declare-fun e!1865818 () Regex!9219)

(assert (=> b!2964564 (= e!1865818 (Concat!14540 lt!1034889 lt!1034893))))

(declare-fun b!2964565 () Bool)

(declare-fun call!196903 () Bool)

(assert (=> b!2964565 (= e!1865825 call!196903)))

(declare-fun b!2964566 () Bool)

(declare-fun e!1865823 () Regex!9219)

(assert (=> b!2964566 (= e!1865823 EmptyLang!9219)))

(declare-fun b!2964567 () Bool)

(assert (=> b!2964567 (= c!486096 ((_ is Union!9219) (regTwo!18951 r!17423)))))

(declare-fun e!1865831 () Regex!9219)

(assert (=> b!2964567 (= e!1865830 e!1865831)))

(declare-fun bm!196895 () Bool)

(declare-fun isEmptyExpr!402 (Regex!9219) Bool)

(assert (=> bm!196895 (= call!196903 (isEmptyExpr!402 (ite c!486100 lt!1034890 lt!1034893)))))

(declare-fun b!2964568 () Bool)

(declare-fun e!1865819 () Regex!9219)

(assert (=> b!2964568 (= e!1865819 lt!1034894)))

(declare-fun b!2964569 () Bool)

(declare-fun e!1865827 () Bool)

(declare-fun lt!1034892 () Regex!9219)

(assert (=> b!2964569 (= e!1865827 (= (nullable!2944 lt!1034892) (nullable!2944 (regTwo!18951 r!17423))))))

(declare-fun b!2964570 () Bool)

(declare-fun e!1865821 () Regex!9219)

(assert (=> b!2964570 (= e!1865831 e!1865821)))

(declare-fun call!196899 () Regex!9219)

(assert (=> b!2964570 (= lt!1034889 call!196899)))

(assert (=> b!2964570 (= lt!1034893 call!196902)))

(declare-fun res!1222861 () Bool)

(assert (=> b!2964570 (= res!1222861 call!196901)))

(declare-fun e!1865829 () Bool)

(assert (=> b!2964570 (=> res!1222861 e!1865829)))

(declare-fun c!486099 () Bool)

(assert (=> b!2964570 (= c!486099 e!1865829)))

(declare-fun b!2964571 () Bool)

(assert (=> b!2964571 (= e!1865819 (Union!9219 lt!1034894 lt!1034891))))

(declare-fun b!2964572 () Bool)

(declare-fun c!486102 () Bool)

(assert (=> b!2964572 (= c!486102 ((_ is EmptyExpr!9219) (regTwo!18951 r!17423)))))

(declare-fun e!1865828 () Regex!9219)

(assert (=> b!2964572 (= e!1865828 e!1865820)))

(declare-fun d!842251 () Bool)

(assert (=> d!842251 e!1865827))

(declare-fun res!1222862 () Bool)

(assert (=> d!842251 (=> (not res!1222862) (not e!1865827))))

(assert (=> d!842251 (= res!1222862 (validRegex!3952 lt!1034892))))

(assert (=> d!842251 (= lt!1034892 e!1865823)))

(declare-fun c!486094 () Bool)

(assert (=> d!842251 (= c!486094 ((_ is EmptyLang!9219) (regTwo!18951 r!17423)))))

(assert (=> d!842251 (validRegex!3952 (regTwo!18951 r!17423))))

(assert (=> d!842251 (= (simplify!222 (regTwo!18951 r!17423)) lt!1034892)))

(declare-fun b!2964573 () Bool)

(assert (=> b!2964573 (= e!1865820 e!1865830)))

(assert (=> b!2964573 (= c!486100 ((_ is Star!9219) (regTwo!18951 r!17423)))))

(declare-fun b!2964574 () Bool)

(declare-fun e!1865824 () Regex!9219)

(assert (=> b!2964574 (= e!1865824 lt!1034891)))

(declare-fun b!2964575 () Bool)

(assert (=> b!2964575 (= e!1865826 EmptyExpr!9219)))

(declare-fun b!2964576 () Bool)

(declare-fun e!1865822 () Regex!9219)

(assert (=> b!2964576 (= e!1865822 lt!1034893)))

(declare-fun b!2964577 () Bool)

(assert (=> b!2964577 (= e!1865828 (regTwo!18951 r!17423))))

(declare-fun b!2964578 () Bool)

(declare-fun c!486097 () Bool)

(assert (=> b!2964578 (= c!486097 (isEmptyExpr!402 lt!1034889))))

(assert (=> b!2964578 (= e!1865821 e!1865822)))

(declare-fun bm!196896 () Bool)

(assert (=> bm!196896 (= call!196898 (simplify!222 (ite c!486100 (reg!9548 (regTwo!18951 r!17423)) (ite c!486096 (regOne!18951 (regTwo!18951 r!17423)) (regTwo!18950 (regTwo!18951 r!17423))))))))

(declare-fun b!2964579 () Bool)

(declare-fun call!196897 () Bool)

(assert (=> b!2964579 (= e!1865829 call!196897)))

(declare-fun b!2964580 () Bool)

(assert (=> b!2964580 (= e!1865818 lt!1034889)))

(declare-fun b!2964581 () Bool)

(assert (=> b!2964581 (= e!1865821 EmptyLang!9219)))

(declare-fun b!2964582 () Bool)

(assert (=> b!2964582 (= e!1865823 e!1865828)))

(declare-fun c!486101 () Bool)

(assert (=> b!2964582 (= c!486101 ((_ is ElementMatch!9219) (regTwo!18951 r!17423)))))

(declare-fun b!2964583 () Bool)

(assert (=> b!2964583 (= e!1865822 e!1865818)))

(declare-fun c!486093 () Bool)

(assert (=> b!2964583 (= c!486093 call!196903)))

(declare-fun b!2964584 () Bool)

(assert (=> b!2964584 (= e!1865831 e!1865824)))

(assert (=> b!2964584 (= lt!1034894 call!196902)))

(assert (=> b!2964584 (= lt!1034891 call!196899)))

(declare-fun c!486098 () Bool)

(assert (=> b!2964584 (= c!486098 call!196897)))

(declare-fun bm!196897 () Bool)

(assert (=> bm!196897 (= call!196897 call!196900)))

(declare-fun b!2964585 () Bool)

(declare-fun c!486092 () Bool)

(assert (=> b!2964585 (= c!486092 call!196901)))

(assert (=> b!2964585 (= e!1865824 e!1865819)))

(declare-fun bm!196898 () Bool)

(assert (=> bm!196898 (= call!196899 (simplify!222 (ite c!486096 (regTwo!18951 (regTwo!18951 r!17423)) (regOne!18950 (regTwo!18951 r!17423)))))))

(assert (= (and d!842251 c!486094) b!2964566))

(assert (= (and d!842251 (not c!486094)) b!2964582))

(assert (= (and b!2964582 c!486101) b!2964577))

(assert (= (and b!2964582 (not c!486101)) b!2964572))

(assert (= (and b!2964572 c!486102) b!2964561))

(assert (= (and b!2964572 (not c!486102)) b!2964573))

(assert (= (and b!2964573 c!486100) b!2964562))

(assert (= (and b!2964573 (not c!486100)) b!2964567))

(assert (= (and b!2964562 (not res!1222863)) b!2964565))

(assert (= (and b!2964562 c!486095) b!2964575))

(assert (= (and b!2964562 (not c!486095)) b!2964563))

(assert (= (and b!2964567 c!486096) b!2964584))

(assert (= (and b!2964567 (not c!486096)) b!2964570))

(assert (= (and b!2964584 c!486098) b!2964574))

(assert (= (and b!2964584 (not c!486098)) b!2964585))

(assert (= (and b!2964585 c!486092) b!2964568))

(assert (= (and b!2964585 (not c!486092)) b!2964571))

(assert (= (and b!2964570 (not res!1222861)) b!2964579))

(assert (= (and b!2964570 c!486099) b!2964581))

(assert (= (and b!2964570 (not c!486099)) b!2964578))

(assert (= (and b!2964578 c!486097) b!2964576))

(assert (= (and b!2964578 (not c!486097)) b!2964583))

(assert (= (and b!2964583 c!486093) b!2964580))

(assert (= (and b!2964583 (not c!486093)) b!2964564))

(assert (= (or b!2964584 b!2964570) bm!196894))

(assert (= (or b!2964584 b!2964570) bm!196898))

(assert (= (or b!2964585 b!2964570) bm!196893))

(assert (= (or b!2964584 b!2964579) bm!196897))

(assert (= (or b!2964565 b!2964583) bm!196895))

(assert (= (or b!2964562 bm!196894) bm!196896))

(assert (= (or b!2964562 bm!196897) bm!196892))

(assert (= (and d!842251 res!1222862) b!2964569))

(declare-fun m!3335743 () Bool)

(assert (=> bm!196898 m!3335743))

(declare-fun m!3335745 () Bool)

(assert (=> b!2964569 m!3335745))

(declare-fun m!3335747 () Bool)

(assert (=> b!2964569 m!3335747))

(declare-fun m!3335749 () Bool)

(assert (=> bm!196893 m!3335749))

(declare-fun m!3335751 () Bool)

(assert (=> bm!196896 m!3335751))

(declare-fun m!3335753 () Bool)

(assert (=> bm!196895 m!3335753))

(declare-fun m!3335755 () Bool)

(assert (=> bm!196892 m!3335755))

(declare-fun m!3335757 () Bool)

(assert (=> b!2964578 m!3335757))

(declare-fun m!3335759 () Bool)

(assert (=> d!842251 m!3335759))

(declare-fun m!3335761 () Bool)

(assert (=> d!842251 m!3335761))

(assert (=> b!2964121 d!842251))

(declare-fun c!486111 () Bool)

(declare-fun bm!196899 () Bool)

(declare-fun c!486107 () Bool)

(declare-fun lt!1034896 () Regex!9219)

(declare-fun lt!1034899 () Regex!9219)

(declare-fun call!196907 () Bool)

(declare-fun lt!1034900 () Regex!9219)

(assert (=> bm!196899 (= call!196907 (isEmptyLang!335 (ite c!486111 lt!1034896 (ite c!486107 lt!1034900 lt!1034899))))))

(declare-fun b!2964586 () Bool)

(declare-fun e!1865834 () Regex!9219)

(assert (=> b!2964586 (= e!1865834 EmptyExpr!9219)))

(declare-fun b!2964587 () Bool)

(declare-fun c!486106 () Bool)

(declare-fun e!1865839 () Bool)

(assert (=> b!2964587 (= c!486106 e!1865839)))

(declare-fun res!1222866 () Bool)

(assert (=> b!2964587 (=> res!1222866 e!1865839)))

(assert (=> b!2964587 (= res!1222866 call!196907)))

(declare-fun call!196905 () Regex!9219)

(assert (=> b!2964587 (= lt!1034896 call!196905)))

(declare-fun e!1865844 () Regex!9219)

(declare-fun e!1865840 () Regex!9219)

(assert (=> b!2964587 (= e!1865844 e!1865840)))

(declare-fun call!196908 () Bool)

(declare-fun bm!196900 () Bool)

(declare-fun lt!1034897 () Regex!9219)

(declare-fun lt!1034895 () Regex!9219)

(assert (=> bm!196900 (= call!196908 (isEmptyLang!335 (ite c!486107 lt!1034897 lt!1034895)))))

(declare-fun b!2964588 () Bool)

(assert (=> b!2964588 (= e!1865840 (Star!9219 lt!1034896))))

(declare-fun bm!196901 () Bool)

(declare-fun call!196909 () Regex!9219)

(assert (=> bm!196901 (= call!196909 call!196905)))

(declare-fun b!2964589 () Bool)

(declare-fun e!1865832 () Regex!9219)

(assert (=> b!2964589 (= e!1865832 (Concat!14540 lt!1034895 lt!1034899))))

(declare-fun b!2964590 () Bool)

(declare-fun call!196910 () Bool)

(assert (=> b!2964590 (= e!1865839 call!196910)))

(declare-fun b!2964591 () Bool)

(declare-fun e!1865837 () Regex!9219)

(assert (=> b!2964591 (= e!1865837 EmptyLang!9219)))

(declare-fun b!2964592 () Bool)

(assert (=> b!2964592 (= c!486107 ((_ is Union!9219) (regOne!18951 r!17423)))))

(declare-fun e!1865845 () Regex!9219)

(assert (=> b!2964592 (= e!1865844 e!1865845)))

(declare-fun bm!196902 () Bool)

(assert (=> bm!196902 (= call!196910 (isEmptyExpr!402 (ite c!486111 lt!1034896 lt!1034899)))))

(declare-fun b!2964593 () Bool)

(declare-fun e!1865833 () Regex!9219)

(assert (=> b!2964593 (= e!1865833 lt!1034900)))

(declare-fun b!2964594 () Bool)

(declare-fun e!1865841 () Bool)

(declare-fun lt!1034898 () Regex!9219)

(assert (=> b!2964594 (= e!1865841 (= (nullable!2944 lt!1034898) (nullable!2944 (regOne!18951 r!17423))))))

(declare-fun b!2964595 () Bool)

(declare-fun e!1865835 () Regex!9219)

(assert (=> b!2964595 (= e!1865845 e!1865835)))

(declare-fun call!196906 () Regex!9219)

(assert (=> b!2964595 (= lt!1034895 call!196906)))

(assert (=> b!2964595 (= lt!1034899 call!196909)))

(declare-fun res!1222864 () Bool)

(assert (=> b!2964595 (= res!1222864 call!196908)))

(declare-fun e!1865843 () Bool)

(assert (=> b!2964595 (=> res!1222864 e!1865843)))

(declare-fun c!486110 () Bool)

(assert (=> b!2964595 (= c!486110 e!1865843)))

(declare-fun b!2964596 () Bool)

(assert (=> b!2964596 (= e!1865833 (Union!9219 lt!1034900 lt!1034897))))

(declare-fun b!2964597 () Bool)

(declare-fun c!486113 () Bool)

(assert (=> b!2964597 (= c!486113 ((_ is EmptyExpr!9219) (regOne!18951 r!17423)))))

(declare-fun e!1865842 () Regex!9219)

(assert (=> b!2964597 (= e!1865842 e!1865834)))

(declare-fun d!842255 () Bool)

(assert (=> d!842255 e!1865841))

(declare-fun res!1222865 () Bool)

(assert (=> d!842255 (=> (not res!1222865) (not e!1865841))))

(assert (=> d!842255 (= res!1222865 (validRegex!3952 lt!1034898))))

(assert (=> d!842255 (= lt!1034898 e!1865837)))

(declare-fun c!486105 () Bool)

(assert (=> d!842255 (= c!486105 ((_ is EmptyLang!9219) (regOne!18951 r!17423)))))

(assert (=> d!842255 (validRegex!3952 (regOne!18951 r!17423))))

(assert (=> d!842255 (= (simplify!222 (regOne!18951 r!17423)) lt!1034898)))

(declare-fun b!2964598 () Bool)

(assert (=> b!2964598 (= e!1865834 e!1865844)))

(assert (=> b!2964598 (= c!486111 ((_ is Star!9219) (regOne!18951 r!17423)))))

(declare-fun b!2964599 () Bool)

(declare-fun e!1865838 () Regex!9219)

(assert (=> b!2964599 (= e!1865838 lt!1034897)))

(declare-fun b!2964600 () Bool)

(assert (=> b!2964600 (= e!1865840 EmptyExpr!9219)))

(declare-fun b!2964601 () Bool)

(declare-fun e!1865836 () Regex!9219)

(assert (=> b!2964601 (= e!1865836 lt!1034899)))

(declare-fun b!2964602 () Bool)

(assert (=> b!2964602 (= e!1865842 (regOne!18951 r!17423))))

(declare-fun b!2964603 () Bool)

(declare-fun c!486108 () Bool)

(assert (=> b!2964603 (= c!486108 (isEmptyExpr!402 lt!1034895))))

(assert (=> b!2964603 (= e!1865835 e!1865836)))

(declare-fun bm!196903 () Bool)

(assert (=> bm!196903 (= call!196905 (simplify!222 (ite c!486111 (reg!9548 (regOne!18951 r!17423)) (ite c!486107 (regOne!18951 (regOne!18951 r!17423)) (regTwo!18950 (regOne!18951 r!17423))))))))

(declare-fun b!2964604 () Bool)

(declare-fun call!196904 () Bool)

(assert (=> b!2964604 (= e!1865843 call!196904)))

(declare-fun b!2964605 () Bool)

(assert (=> b!2964605 (= e!1865832 lt!1034895)))

(declare-fun b!2964606 () Bool)

(assert (=> b!2964606 (= e!1865835 EmptyLang!9219)))

(declare-fun b!2964607 () Bool)

(assert (=> b!2964607 (= e!1865837 e!1865842)))

(declare-fun c!486112 () Bool)

(assert (=> b!2964607 (= c!486112 ((_ is ElementMatch!9219) (regOne!18951 r!17423)))))

(declare-fun b!2964608 () Bool)

(assert (=> b!2964608 (= e!1865836 e!1865832)))

(declare-fun c!486104 () Bool)

(assert (=> b!2964608 (= c!486104 call!196910)))

(declare-fun b!2964609 () Bool)

(assert (=> b!2964609 (= e!1865845 e!1865838)))

(assert (=> b!2964609 (= lt!1034900 call!196909)))

(assert (=> b!2964609 (= lt!1034897 call!196906)))

(declare-fun c!486109 () Bool)

(assert (=> b!2964609 (= c!486109 call!196904)))

(declare-fun bm!196904 () Bool)

(assert (=> bm!196904 (= call!196904 call!196907)))

(declare-fun b!2964610 () Bool)

(declare-fun c!486103 () Bool)

(assert (=> b!2964610 (= c!486103 call!196908)))

(assert (=> b!2964610 (= e!1865838 e!1865833)))

(declare-fun bm!196905 () Bool)

(assert (=> bm!196905 (= call!196906 (simplify!222 (ite c!486107 (regTwo!18951 (regOne!18951 r!17423)) (regOne!18950 (regOne!18951 r!17423)))))))

(assert (= (and d!842255 c!486105) b!2964591))

(assert (= (and d!842255 (not c!486105)) b!2964607))

(assert (= (and b!2964607 c!486112) b!2964602))

(assert (= (and b!2964607 (not c!486112)) b!2964597))

(assert (= (and b!2964597 c!486113) b!2964586))

(assert (= (and b!2964597 (not c!486113)) b!2964598))

(assert (= (and b!2964598 c!486111) b!2964587))

(assert (= (and b!2964598 (not c!486111)) b!2964592))

(assert (= (and b!2964587 (not res!1222866)) b!2964590))

(assert (= (and b!2964587 c!486106) b!2964600))

(assert (= (and b!2964587 (not c!486106)) b!2964588))

(assert (= (and b!2964592 c!486107) b!2964609))

(assert (= (and b!2964592 (not c!486107)) b!2964595))

(assert (= (and b!2964609 c!486109) b!2964599))

(assert (= (and b!2964609 (not c!486109)) b!2964610))

(assert (= (and b!2964610 c!486103) b!2964593))

(assert (= (and b!2964610 (not c!486103)) b!2964596))

(assert (= (and b!2964595 (not res!1222864)) b!2964604))

(assert (= (and b!2964595 c!486110) b!2964606))

(assert (= (and b!2964595 (not c!486110)) b!2964603))

(assert (= (and b!2964603 c!486108) b!2964601))

(assert (= (and b!2964603 (not c!486108)) b!2964608))

(assert (= (and b!2964608 c!486104) b!2964605))

(assert (= (and b!2964608 (not c!486104)) b!2964589))

(assert (= (or b!2964609 b!2964595) bm!196901))

(assert (= (or b!2964609 b!2964595) bm!196905))

(assert (= (or b!2964610 b!2964595) bm!196900))

(assert (= (or b!2964609 b!2964604) bm!196904))

(assert (= (or b!2964590 b!2964608) bm!196902))

(assert (= (or b!2964587 bm!196901) bm!196903))

(assert (= (or b!2964587 bm!196904) bm!196899))

(assert (= (and d!842255 res!1222865) b!2964594))

(declare-fun m!3335763 () Bool)

(assert (=> bm!196905 m!3335763))

(declare-fun m!3335765 () Bool)

(assert (=> b!2964594 m!3335765))

(declare-fun m!3335767 () Bool)

(assert (=> b!2964594 m!3335767))

(declare-fun m!3335769 () Bool)

(assert (=> bm!196900 m!3335769))

(declare-fun m!3335771 () Bool)

(assert (=> bm!196903 m!3335771))

(declare-fun m!3335773 () Bool)

(assert (=> bm!196902 m!3335773))

(declare-fun m!3335775 () Bool)

(assert (=> bm!196899 m!3335775))

(declare-fun m!3335777 () Bool)

(assert (=> b!2964603 m!3335777))

(declare-fun m!3335779 () Bool)

(assert (=> d!842255 m!3335779))

(declare-fun m!3335781 () Bool)

(assert (=> d!842255 m!3335781))

(assert (=> b!2964121 d!842255))

(declare-fun b!2964622 () Bool)

(declare-fun e!1865848 () Bool)

(declare-fun tp!945800 () Bool)

(declare-fun tp!945799 () Bool)

(assert (=> b!2964622 (= e!1865848 (and tp!945800 tp!945799))))

(declare-fun b!2964621 () Bool)

(assert (=> b!2964621 (= e!1865848 tp_is_empty!16001)))

(declare-fun b!2964624 () Bool)

(declare-fun tp!945802 () Bool)

(declare-fun tp!945798 () Bool)

(assert (=> b!2964624 (= e!1865848 (and tp!945802 tp!945798))))

(declare-fun b!2964623 () Bool)

(declare-fun tp!945801 () Bool)

(assert (=> b!2964623 (= e!1865848 tp!945801)))

(assert (=> b!2964124 (= tp!945744 e!1865848)))

(assert (= (and b!2964124 ((_ is ElementMatch!9219) (regOne!18950 r!17423))) b!2964621))

(assert (= (and b!2964124 ((_ is Concat!14540) (regOne!18950 r!17423))) b!2964622))

(assert (= (and b!2964124 ((_ is Star!9219) (regOne!18950 r!17423))) b!2964623))

(assert (= (and b!2964124 ((_ is Union!9219) (regOne!18950 r!17423))) b!2964624))

(declare-fun b!2964626 () Bool)

(declare-fun e!1865849 () Bool)

(declare-fun tp!945805 () Bool)

(declare-fun tp!945804 () Bool)

(assert (=> b!2964626 (= e!1865849 (and tp!945805 tp!945804))))

(declare-fun b!2964625 () Bool)

(assert (=> b!2964625 (= e!1865849 tp_is_empty!16001)))

(declare-fun b!2964628 () Bool)

(declare-fun tp!945807 () Bool)

(declare-fun tp!945803 () Bool)

(assert (=> b!2964628 (= e!1865849 (and tp!945807 tp!945803))))

(declare-fun b!2964627 () Bool)

(declare-fun tp!945806 () Bool)

(assert (=> b!2964627 (= e!1865849 tp!945806)))

(assert (=> b!2964124 (= tp!945749 e!1865849)))

(assert (= (and b!2964124 ((_ is ElementMatch!9219) (regTwo!18950 r!17423))) b!2964625))

(assert (= (and b!2964124 ((_ is Concat!14540) (regTwo!18950 r!17423))) b!2964626))

(assert (= (and b!2964124 ((_ is Star!9219) (regTwo!18950 r!17423))) b!2964627))

(assert (= (and b!2964124 ((_ is Union!9219) (regTwo!18950 r!17423))) b!2964628))

(declare-fun b!2964630 () Bool)

(declare-fun e!1865850 () Bool)

(declare-fun tp!945810 () Bool)

(declare-fun tp!945809 () Bool)

(assert (=> b!2964630 (= e!1865850 (and tp!945810 tp!945809))))

(declare-fun b!2964629 () Bool)

(assert (=> b!2964629 (= e!1865850 tp_is_empty!16001)))

(declare-fun b!2964632 () Bool)

(declare-fun tp!945812 () Bool)

(declare-fun tp!945808 () Bool)

(assert (=> b!2964632 (= e!1865850 (and tp!945812 tp!945808))))

(declare-fun b!2964631 () Bool)

(declare-fun tp!945811 () Bool)

(assert (=> b!2964631 (= e!1865850 tp!945811)))

(assert (=> b!2964120 (= tp!945746 e!1865850)))

(assert (= (and b!2964120 ((_ is ElementMatch!9219) (reg!9548 r!17423))) b!2964629))

(assert (= (and b!2964120 ((_ is Concat!14540) (reg!9548 r!17423))) b!2964630))

(assert (= (and b!2964120 ((_ is Star!9219) (reg!9548 r!17423))) b!2964631))

(assert (= (and b!2964120 ((_ is Union!9219) (reg!9548 r!17423))) b!2964632))

(declare-fun b!2964634 () Bool)

(declare-fun e!1865851 () Bool)

(declare-fun tp!945815 () Bool)

(declare-fun tp!945814 () Bool)

(assert (=> b!2964634 (= e!1865851 (and tp!945815 tp!945814))))

(declare-fun b!2964633 () Bool)

(assert (=> b!2964633 (= e!1865851 tp_is_empty!16001)))

(declare-fun b!2964636 () Bool)

(declare-fun tp!945817 () Bool)

(declare-fun tp!945813 () Bool)

(assert (=> b!2964636 (= e!1865851 (and tp!945817 tp!945813))))

(declare-fun b!2964635 () Bool)

(declare-fun tp!945816 () Bool)

(assert (=> b!2964635 (= e!1865851 tp!945816)))

(assert (=> b!2964118 (= tp!945747 e!1865851)))

(assert (= (and b!2964118 ((_ is ElementMatch!9219) (regOne!18951 r!17423))) b!2964633))

(assert (= (and b!2964118 ((_ is Concat!14540) (regOne!18951 r!17423))) b!2964634))

(assert (= (and b!2964118 ((_ is Star!9219) (regOne!18951 r!17423))) b!2964635))

(assert (= (and b!2964118 ((_ is Union!9219) (regOne!18951 r!17423))) b!2964636))

(declare-fun b!2964638 () Bool)

(declare-fun e!1865852 () Bool)

(declare-fun tp!945820 () Bool)

(declare-fun tp!945819 () Bool)

(assert (=> b!2964638 (= e!1865852 (and tp!945820 tp!945819))))

(declare-fun b!2964637 () Bool)

(assert (=> b!2964637 (= e!1865852 tp_is_empty!16001)))

(declare-fun b!2964640 () Bool)

(declare-fun tp!945822 () Bool)

(declare-fun tp!945818 () Bool)

(assert (=> b!2964640 (= e!1865852 (and tp!945822 tp!945818))))

(declare-fun b!2964639 () Bool)

(declare-fun tp!945821 () Bool)

(assert (=> b!2964639 (= e!1865852 tp!945821)))

(assert (=> b!2964118 (= tp!945745 e!1865852)))

(assert (= (and b!2964118 ((_ is ElementMatch!9219) (regTwo!18951 r!17423))) b!2964637))

(assert (= (and b!2964118 ((_ is Concat!14540) (regTwo!18951 r!17423))) b!2964638))

(assert (= (and b!2964118 ((_ is Star!9219) (regTwo!18951 r!17423))) b!2964639))

(assert (= (and b!2964118 ((_ is Union!9219) (regTwo!18951 r!17423))) b!2964640))

(declare-fun b!2964645 () Bool)

(declare-fun e!1865855 () Bool)

(declare-fun tp!945825 () Bool)

(assert (=> b!2964645 (= e!1865855 (and tp_is_empty!16001 tp!945825))))

(assert (=> b!2964117 (= tp!945748 e!1865855)))

(assert (= (and b!2964117 ((_ is Cons!34960) (t!234149 s!11993))) b!2964645))

(check-sat (not bm!196900) (not b!2964418) (not b!2964626) (not b!2964159) (not b!2964628) (not bm!196899) (not bm!196857) (not b!2964623) tp_is_empty!16001 (not bm!196898) (not b!2964638) (not b!2964594) (not d!842241) (not bm!196895) (not b!2964622) (not bm!196856) (not bm!196814) (not bm!196893) (not b!2964624) (not d!842255) (not b!2964578) (not bm!196817) (not bm!196896) (not b!2964627) (not b!2964645) (not b!2964636) (not b!2964424) (not b!2964631) (not bm!196818) (not d!842237) (not bm!196815) (not bm!196892) (not b!2964569) (not b!2964413) (not b!2964328) (not b!2964639) (not bm!196864) (not b!2964635) (not b!2964632) (not bm!196902) (not bm!196905) (not b!2964150) (not bm!196903) (not b!2964333) (not b!2964603) (not b!2964640) (not b!2964634) (not b!2964415) (not b!2964630) (not d!842251) (not b!2964422) (not b!2964416))
(check-sat)
