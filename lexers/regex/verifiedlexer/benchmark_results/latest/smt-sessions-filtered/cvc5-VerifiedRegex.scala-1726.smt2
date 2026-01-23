; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!86364 () Bool)

(assert start!86364)

(declare-fun b!971623 () Bool)

(assert (=> b!971623 true))

(assert (=> b!971623 true))

(declare-fun lambda!34424 () Int)

(declare-fun lambda!34423 () Int)

(assert (=> b!971623 (not (= lambda!34424 lambda!34423))))

(assert (=> b!971623 true))

(assert (=> b!971623 true))

(declare-fun b!971622 () Bool)

(declare-fun e!626263 () Bool)

(declare-fun tp!297570 () Bool)

(declare-fun tp!297571 () Bool)

(assert (=> b!971622 (= e!626263 (and tp!297570 tp!297571))))

(declare-fun res!441655 () Bool)

(declare-fun e!626261 () Bool)

(assert (=> start!86364 (=> (not res!441655) (not e!626261))))

(declare-datatypes ((C!5990 0))(
  ( (C!5991 (val!3243 Int)) )
))
(declare-datatypes ((Regex!2710 0))(
  ( (ElementMatch!2710 (c!158437 C!5990)) (Concat!4543 (regOne!5932 Regex!2710) (regTwo!5932 Regex!2710)) (EmptyExpr!2710) (Star!2710 (reg!3039 Regex!2710)) (EmptyLang!2710) (Union!2710 (regOne!5933 Regex!2710) (regTwo!5933 Regex!2710)) )
))
(declare-fun r!15766 () Regex!2710)

(declare-fun validRegex!1179 (Regex!2710) Bool)

(assert (=> start!86364 (= res!441655 (validRegex!1179 r!15766))))

(assert (=> start!86364 e!626261))

(assert (=> start!86364 e!626263))

(declare-fun e!626260 () Bool)

(assert (=> start!86364 e!626260))

(declare-fun e!626258 () Bool)

(declare-fun e!626259 () Bool)

(assert (=> b!971623 (= e!626258 e!626259)))

(declare-fun res!441657 () Bool)

(assert (=> b!971623 (=> res!441657 e!626259)))

(declare-datatypes ((List!9940 0))(
  ( (Nil!9924) (Cons!9924 (h!15325 C!5990) (t!100986 List!9940)) )
))
(declare-fun s!10566 () List!9940)

(declare-fun isEmpty!6233 (List!9940) Bool)

(assert (=> b!971623 (= res!441657 (isEmpty!6233 s!10566))))

(declare-fun Exists!449 (Int) Bool)

(assert (=> b!971623 (= (Exists!449 lambda!34423) (Exists!449 lambda!34424))))

(declare-datatypes ((Unit!15079 0))(
  ( (Unit!15080) )
))
(declare-fun lt!349000 () Unit!15079)

(declare-fun lemmaExistCutMatchRandMatchRSpecEquivalent!215 (Regex!2710 Regex!2710 List!9940) Unit!15079)

(assert (=> b!971623 (= lt!349000 (lemmaExistCutMatchRandMatchRSpecEquivalent!215 EmptyExpr!2710 (regTwo!5932 r!15766) s!10566))))

(declare-datatypes ((tuple2!11286 0))(
  ( (tuple2!11287 (_1!6469 List!9940) (_2!6469 List!9940)) )
))
(declare-datatypes ((Option!2285 0))(
  ( (None!2284) (Some!2284 (v!19701 tuple2!11286)) )
))
(declare-fun lt!348998 () Option!2285)

(declare-fun isDefined!1927 (Option!2285) Bool)

(assert (=> b!971623 (= (isDefined!1927 lt!348998) (Exists!449 lambda!34423))))

(declare-fun findConcatSeparation!391 (Regex!2710 Regex!2710 List!9940 List!9940 List!9940) Option!2285)

(assert (=> b!971623 (= lt!348998 (findConcatSeparation!391 EmptyExpr!2710 (regTwo!5932 r!15766) Nil!9924 s!10566 s!10566))))

(declare-fun lt!348997 () Unit!15079)

(declare-fun lemmaFindConcatSeparationEquivalentToExists!391 (Regex!2710 Regex!2710 List!9940) Unit!15079)

(assert (=> b!971623 (= lt!348997 (lemmaFindConcatSeparationEquivalentToExists!391 EmptyExpr!2710 (regTwo!5932 r!15766) s!10566))))

(declare-fun b!971624 () Bool)

(declare-fun tp!297572 () Bool)

(declare-fun tp!297574 () Bool)

(assert (=> b!971624 (= e!626263 (and tp!297572 tp!297574))))

(declare-fun b!971625 () Bool)

(declare-fun tp!297569 () Bool)

(assert (=> b!971625 (= e!626263 tp!297569)))

(declare-fun b!971626 () Bool)

(declare-fun e!626262 () Bool)

(assert (=> b!971626 (= e!626262 (validRegex!1179 (regTwo!5932 r!15766)))))

(declare-fun lt!349002 () tuple2!11286)

(declare-fun matchRSpec!509 (Regex!2710 List!9940) Bool)

(assert (=> b!971626 (matchRSpec!509 (regTwo!5932 r!15766) (_2!6469 lt!349002))))

(declare-fun lt!348996 () Unit!15079)

(declare-fun mainMatchTheorem!509 (Regex!2710 List!9940) Unit!15079)

(assert (=> b!971626 (= lt!348996 (mainMatchTheorem!509 (regTwo!5932 r!15766) (_2!6469 lt!349002)))))

(declare-fun b!971627 () Bool)

(declare-fun tp_is_empty!5063 () Bool)

(assert (=> b!971627 (= e!626263 tp_is_empty!5063)))

(declare-fun b!971628 () Bool)

(assert (=> b!971628 (= e!626261 (not e!626258))))

(declare-fun res!441654 () Bool)

(assert (=> b!971628 (=> res!441654 e!626258)))

(declare-fun lt!349001 () Bool)

(assert (=> b!971628 (= res!441654 (or (not lt!349001) (not (is-Concat!4543 r!15766)) (not (is-EmptyExpr!2710 (regOne!5932 r!15766)))))))

(assert (=> b!971628 (= lt!349001 (matchRSpec!509 r!15766 s!10566))))

(declare-fun matchR!1246 (Regex!2710 List!9940) Bool)

(assert (=> b!971628 (= lt!349001 (matchR!1246 r!15766 s!10566))))

(declare-fun lt!348999 () Unit!15079)

(assert (=> b!971628 (= lt!348999 (mainMatchTheorem!509 r!15766 s!10566))))

(declare-fun b!971629 () Bool)

(assert (=> b!971629 (= e!626259 e!626262)))

(declare-fun res!441653 () Bool)

(assert (=> b!971629 (=> res!441653 e!626262)))

(assert (=> b!971629 (= res!441653 (not (isEmpty!6233 (_1!6469 lt!349002))))))

(declare-fun get!3421 (Option!2285) tuple2!11286)

(assert (=> b!971629 (= lt!349002 (get!3421 lt!348998))))

(declare-fun b!971630 () Bool)

(declare-fun tp!297573 () Bool)

(assert (=> b!971630 (= e!626260 (and tp_is_empty!5063 tp!297573))))

(declare-fun b!971631 () Bool)

(declare-fun res!441656 () Bool)

(assert (=> b!971631 (=> res!441656 e!626262)))

(assert (=> b!971631 (= res!441656 (not (matchR!1246 (regTwo!5932 r!15766) (_2!6469 lt!349002))))))

(assert (= (and start!86364 res!441655) b!971628))

(assert (= (and b!971628 (not res!441654)) b!971623))

(assert (= (and b!971623 (not res!441657)) b!971629))

(assert (= (and b!971629 (not res!441653)) b!971631))

(assert (= (and b!971631 (not res!441656)) b!971626))

(assert (= (and start!86364 (is-ElementMatch!2710 r!15766)) b!971627))

(assert (= (and start!86364 (is-Concat!4543 r!15766)) b!971622))

(assert (= (and start!86364 (is-Star!2710 r!15766)) b!971625))

(assert (= (and start!86364 (is-Union!2710 r!15766)) b!971624))

(assert (= (and start!86364 (is-Cons!9924 s!10566)) b!971630))

(declare-fun m!1175221 () Bool)

(assert (=> b!971626 m!1175221))

(declare-fun m!1175223 () Bool)

(assert (=> b!971626 m!1175223))

(declare-fun m!1175225 () Bool)

(assert (=> b!971626 m!1175225))

(declare-fun m!1175227 () Bool)

(assert (=> start!86364 m!1175227))

(declare-fun m!1175229 () Bool)

(assert (=> b!971628 m!1175229))

(declare-fun m!1175231 () Bool)

(assert (=> b!971628 m!1175231))

(declare-fun m!1175233 () Bool)

(assert (=> b!971628 m!1175233))

(declare-fun m!1175235 () Bool)

(assert (=> b!971631 m!1175235))

(declare-fun m!1175237 () Bool)

(assert (=> b!971629 m!1175237))

(declare-fun m!1175239 () Bool)

(assert (=> b!971629 m!1175239))

(declare-fun m!1175241 () Bool)

(assert (=> b!971623 m!1175241))

(declare-fun m!1175243 () Bool)

(assert (=> b!971623 m!1175243))

(declare-fun m!1175245 () Bool)

(assert (=> b!971623 m!1175245))

(declare-fun m!1175247 () Bool)

(assert (=> b!971623 m!1175247))

(declare-fun m!1175249 () Bool)

(assert (=> b!971623 m!1175249))

(assert (=> b!971623 m!1175249))

(declare-fun m!1175251 () Bool)

(assert (=> b!971623 m!1175251))

(declare-fun m!1175253 () Bool)

(assert (=> b!971623 m!1175253))

(push 1)

(assert (not b!971623))

(assert (not b!971624))

(assert tp_is_empty!5063)

(assert (not b!971628))

(assert (not b!971626))

(assert (not b!971629))

(assert (not start!86364))

(assert (not b!971631))

(assert (not b!971622))

(assert (not b!971630))

(assert (not b!971625))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun b!971700 () Bool)

(declare-fun e!626305 () Bool)

(declare-fun e!626306 () Bool)

(assert (=> b!971700 (= e!626305 e!626306)))

(declare-fun c!158444 () Bool)

(assert (=> b!971700 (= c!158444 (is-Union!2710 r!15766))))

(declare-fun bm!61673 () Bool)

(declare-fun call!61680 () Bool)

(assert (=> bm!61673 (= call!61680 (validRegex!1179 (ite c!158444 (regOne!5933 r!15766) (regOne!5932 r!15766))))))

(declare-fun bm!61674 () Bool)

(declare-fun call!61679 () Bool)

(declare-fun call!61678 () Bool)

(assert (=> bm!61674 (= call!61679 call!61678)))

(declare-fun b!971701 () Bool)

(declare-fun e!626304 () Bool)

(declare-fun e!626302 () Bool)

(assert (=> b!971701 (= e!626304 e!626302)))

(declare-fun res!441699 () Bool)

(assert (=> b!971701 (=> (not res!441699) (not e!626302))))

(assert (=> b!971701 (= res!441699 call!61680)))

(declare-fun b!971703 () Bool)

(assert (=> b!971703 (= e!626302 call!61679)))

(declare-fun bm!61675 () Bool)

(declare-fun c!158443 () Bool)

(assert (=> bm!61675 (= call!61678 (validRegex!1179 (ite c!158443 (reg!3039 r!15766) (ite c!158444 (regTwo!5933 r!15766) (regTwo!5932 r!15766)))))))

(declare-fun b!971704 () Bool)

(declare-fun e!626303 () Bool)

(assert (=> b!971704 (= e!626303 call!61679)))

(declare-fun b!971705 () Bool)

(declare-fun e!626307 () Bool)

(assert (=> b!971705 (= e!626307 call!61678)))

(declare-fun b!971706 () Bool)

(declare-fun res!441697 () Bool)

(assert (=> b!971706 (=> (not res!441697) (not e!626303))))

(assert (=> b!971706 (= res!441697 call!61680)))

(assert (=> b!971706 (= e!626306 e!626303)))

(declare-fun b!971707 () Bool)

(declare-fun res!441696 () Bool)

(assert (=> b!971707 (=> res!441696 e!626304)))

(assert (=> b!971707 (= res!441696 (not (is-Concat!4543 r!15766)))))

(assert (=> b!971707 (= e!626306 e!626304)))

(declare-fun b!971708 () Bool)

(declare-fun e!626308 () Bool)

(assert (=> b!971708 (= e!626308 e!626305)))

(assert (=> b!971708 (= c!158443 (is-Star!2710 r!15766))))

(declare-fun d!286671 () Bool)

(declare-fun res!441695 () Bool)

(assert (=> d!286671 (=> res!441695 e!626308)))

(assert (=> d!286671 (= res!441695 (is-ElementMatch!2710 r!15766))))

(assert (=> d!286671 (= (validRegex!1179 r!15766) e!626308)))

(declare-fun b!971702 () Bool)

(assert (=> b!971702 (= e!626305 e!626307)))

(declare-fun res!441698 () Bool)

(declare-fun nullable!830 (Regex!2710) Bool)

(assert (=> b!971702 (= res!441698 (not (nullable!830 (reg!3039 r!15766))))))

(assert (=> b!971702 (=> (not res!441698) (not e!626307))))

(assert (= (and d!286671 (not res!441695)) b!971708))

(assert (= (and b!971708 c!158443) b!971702))

(assert (= (and b!971708 (not c!158443)) b!971700))

(assert (= (and b!971702 res!441698) b!971705))

(assert (= (and b!971700 c!158444) b!971706))

(assert (= (and b!971700 (not c!158444)) b!971707))

(assert (= (and b!971706 res!441697) b!971704))

(assert (= (and b!971707 (not res!441696)) b!971701))

(assert (= (and b!971701 res!441699) b!971703))

(assert (= (or b!971704 b!971703) bm!61674))

(assert (= (or b!971706 b!971701) bm!61673))

(assert (= (or b!971705 bm!61674) bm!61675))

(declare-fun m!1175289 () Bool)

(assert (=> bm!61673 m!1175289))

(declare-fun m!1175291 () Bool)

(assert (=> bm!61675 m!1175291))

(declare-fun m!1175293 () Bool)

(assert (=> b!971702 m!1175293))

(assert (=> start!86364 d!286671))

(declare-fun bm!61678 () Bool)

(declare-fun call!61683 () Bool)

(assert (=> bm!61678 (= call!61683 (isEmpty!6233 (_2!6469 lt!349002)))))

(declare-fun b!971737 () Bool)

(declare-fun res!441717 () Bool)

(declare-fun e!626329 () Bool)

(assert (=> b!971737 (=> (not res!441717) (not e!626329))))

(assert (=> b!971737 (= res!441717 (not call!61683))))

(declare-fun b!971738 () Bool)

(declare-fun res!441723 () Bool)

(declare-fun e!626327 () Bool)

(assert (=> b!971738 (=> res!441723 e!626327)))

(assert (=> b!971738 (= res!441723 (not (is-ElementMatch!2710 (regTwo!5932 r!15766))))))

(declare-fun e!626323 () Bool)

(assert (=> b!971738 (= e!626323 e!626327)))

(declare-fun d!286673 () Bool)

(declare-fun e!626324 () Bool)

(assert (=> d!286673 e!626324))

(declare-fun c!158452 () Bool)

(assert (=> d!286673 (= c!158452 (is-EmptyExpr!2710 (regTwo!5932 r!15766)))))

(declare-fun lt!349026 () Bool)

(declare-fun e!626326 () Bool)

(assert (=> d!286673 (= lt!349026 e!626326)))

(declare-fun c!158451 () Bool)

(assert (=> d!286673 (= c!158451 (isEmpty!6233 (_2!6469 lt!349002)))))

(assert (=> d!286673 (validRegex!1179 (regTwo!5932 r!15766))))

(assert (=> d!286673 (= (matchR!1246 (regTwo!5932 r!15766) (_2!6469 lt!349002)) lt!349026)))

(declare-fun b!971739 () Bool)

(assert (=> b!971739 (= e!626324 (= lt!349026 call!61683))))

(declare-fun b!971740 () Bool)

(declare-fun e!626328 () Bool)

(declare-fun e!626325 () Bool)

(assert (=> b!971740 (= e!626328 e!626325)))

(declare-fun res!441719 () Bool)

(assert (=> b!971740 (=> res!441719 e!626325)))

(assert (=> b!971740 (= res!441719 call!61683)))

(declare-fun b!971741 () Bool)

(declare-fun head!1789 (List!9940) C!5990)

(assert (=> b!971741 (= e!626329 (= (head!1789 (_2!6469 lt!349002)) (c!158437 (regTwo!5932 r!15766))))))

(declare-fun b!971742 () Bool)

(declare-fun res!441721 () Bool)

(assert (=> b!971742 (=> res!441721 e!626325)))

(declare-fun tail!1351 (List!9940) List!9940)

(assert (=> b!971742 (= res!441721 (not (isEmpty!6233 (tail!1351 (_2!6469 lt!349002)))))))

(declare-fun b!971743 () Bool)

(assert (=> b!971743 (= e!626327 e!626328)))

(declare-fun res!441720 () Bool)

(assert (=> b!971743 (=> (not res!441720) (not e!626328))))

(assert (=> b!971743 (= res!441720 (not lt!349026))))

(declare-fun b!971744 () Bool)

(declare-fun derivativeStep!636 (Regex!2710 C!5990) Regex!2710)

(assert (=> b!971744 (= e!626326 (matchR!1246 (derivativeStep!636 (regTwo!5932 r!15766) (head!1789 (_2!6469 lt!349002))) (tail!1351 (_2!6469 lt!349002))))))

(declare-fun b!971745 () Bool)

(assert (=> b!971745 (= e!626326 (nullable!830 (regTwo!5932 r!15766)))))

(declare-fun b!971746 () Bool)

(assert (=> b!971746 (= e!626324 e!626323)))

(declare-fun c!158453 () Bool)

(assert (=> b!971746 (= c!158453 (is-EmptyLang!2710 (regTwo!5932 r!15766)))))

(declare-fun b!971747 () Bool)

(declare-fun res!441718 () Bool)

(assert (=> b!971747 (=> res!441718 e!626327)))

(assert (=> b!971747 (= res!441718 e!626329)))

(declare-fun res!441716 () Bool)

(assert (=> b!971747 (=> (not res!441716) (not e!626329))))

(assert (=> b!971747 (= res!441716 lt!349026)))

(declare-fun b!971748 () Bool)

(declare-fun res!441722 () Bool)

(assert (=> b!971748 (=> (not res!441722) (not e!626329))))

(assert (=> b!971748 (= res!441722 (isEmpty!6233 (tail!1351 (_2!6469 lt!349002))))))

(declare-fun b!971749 () Bool)

(assert (=> b!971749 (= e!626323 (not lt!349026))))

(declare-fun b!971750 () Bool)

(assert (=> b!971750 (= e!626325 (not (= (head!1789 (_2!6469 lt!349002)) (c!158437 (regTwo!5932 r!15766)))))))

(assert (= (and d!286673 c!158451) b!971745))

(assert (= (and d!286673 (not c!158451)) b!971744))

(assert (= (and d!286673 c!158452) b!971739))

(assert (= (and d!286673 (not c!158452)) b!971746))

(assert (= (and b!971746 c!158453) b!971749))

(assert (= (and b!971746 (not c!158453)) b!971738))

(assert (= (and b!971738 (not res!441723)) b!971747))

(assert (= (and b!971747 res!441716) b!971737))

(assert (= (and b!971737 res!441717) b!971748))

(assert (= (and b!971748 res!441722) b!971741))

(assert (= (and b!971747 (not res!441718)) b!971743))

(assert (= (and b!971743 res!441720) b!971740))

(assert (= (and b!971740 (not res!441719)) b!971742))

(assert (= (and b!971742 (not res!441721)) b!971750))

(assert (= (or b!971739 b!971737 b!971740) bm!61678))

(declare-fun m!1175295 () Bool)

(assert (=> b!971748 m!1175295))

(assert (=> b!971748 m!1175295))

(declare-fun m!1175297 () Bool)

(assert (=> b!971748 m!1175297))

(assert (=> b!971742 m!1175295))

(assert (=> b!971742 m!1175295))

(assert (=> b!971742 m!1175297))

(declare-fun m!1175299 () Bool)

(assert (=> b!971750 m!1175299))

(assert (=> b!971744 m!1175299))

(assert (=> b!971744 m!1175299))

(declare-fun m!1175301 () Bool)

(assert (=> b!971744 m!1175301))

(assert (=> b!971744 m!1175295))

(assert (=> b!971744 m!1175301))

(assert (=> b!971744 m!1175295))

(declare-fun m!1175303 () Bool)

(assert (=> b!971744 m!1175303))

(declare-fun m!1175305 () Bool)

(assert (=> b!971745 m!1175305))

(assert (=> b!971741 m!1175299))

(declare-fun m!1175307 () Bool)

(assert (=> bm!61678 m!1175307))

(assert (=> d!286673 m!1175307))

(assert (=> d!286673 m!1175221))

(assert (=> b!971631 d!286673))

(declare-fun b!971751 () Bool)

(declare-fun e!626333 () Bool)

(declare-fun e!626334 () Bool)

(assert (=> b!971751 (= e!626333 e!626334)))

(declare-fun c!158455 () Bool)

(assert (=> b!971751 (= c!158455 (is-Union!2710 (regTwo!5932 r!15766)))))

(declare-fun bm!61679 () Bool)

(declare-fun call!61686 () Bool)

(assert (=> bm!61679 (= call!61686 (validRegex!1179 (ite c!158455 (regOne!5933 (regTwo!5932 r!15766)) (regOne!5932 (regTwo!5932 r!15766)))))))

(declare-fun bm!61680 () Bool)

(declare-fun call!61685 () Bool)

(declare-fun call!61684 () Bool)

(assert (=> bm!61680 (= call!61685 call!61684)))

(declare-fun b!971752 () Bool)

(declare-fun e!626332 () Bool)

(declare-fun e!626330 () Bool)

(assert (=> b!971752 (= e!626332 e!626330)))

(declare-fun res!441728 () Bool)

(assert (=> b!971752 (=> (not res!441728) (not e!626330))))

(assert (=> b!971752 (= res!441728 call!61686)))

(declare-fun b!971754 () Bool)

(assert (=> b!971754 (= e!626330 call!61685)))

(declare-fun c!158454 () Bool)

(declare-fun bm!61681 () Bool)

(assert (=> bm!61681 (= call!61684 (validRegex!1179 (ite c!158454 (reg!3039 (regTwo!5932 r!15766)) (ite c!158455 (regTwo!5933 (regTwo!5932 r!15766)) (regTwo!5932 (regTwo!5932 r!15766))))))))

(declare-fun b!971755 () Bool)

(declare-fun e!626331 () Bool)

(assert (=> b!971755 (= e!626331 call!61685)))

(declare-fun b!971756 () Bool)

(declare-fun e!626335 () Bool)

(assert (=> b!971756 (= e!626335 call!61684)))

(declare-fun b!971757 () Bool)

(declare-fun res!441726 () Bool)

(assert (=> b!971757 (=> (not res!441726) (not e!626331))))

(assert (=> b!971757 (= res!441726 call!61686)))

(assert (=> b!971757 (= e!626334 e!626331)))

(declare-fun b!971758 () Bool)

(declare-fun res!441725 () Bool)

(assert (=> b!971758 (=> res!441725 e!626332)))

(assert (=> b!971758 (= res!441725 (not (is-Concat!4543 (regTwo!5932 r!15766))))))

(assert (=> b!971758 (= e!626334 e!626332)))

(declare-fun b!971759 () Bool)

(declare-fun e!626336 () Bool)

(assert (=> b!971759 (= e!626336 e!626333)))

(assert (=> b!971759 (= c!158454 (is-Star!2710 (regTwo!5932 r!15766)))))

(declare-fun d!286677 () Bool)

(declare-fun res!441724 () Bool)

(assert (=> d!286677 (=> res!441724 e!626336)))

(assert (=> d!286677 (= res!441724 (is-ElementMatch!2710 (regTwo!5932 r!15766)))))

(assert (=> d!286677 (= (validRegex!1179 (regTwo!5932 r!15766)) e!626336)))

(declare-fun b!971753 () Bool)

(assert (=> b!971753 (= e!626333 e!626335)))

(declare-fun res!441727 () Bool)

(assert (=> b!971753 (= res!441727 (not (nullable!830 (reg!3039 (regTwo!5932 r!15766)))))))

(assert (=> b!971753 (=> (not res!441727) (not e!626335))))

(assert (= (and d!286677 (not res!441724)) b!971759))

(assert (= (and b!971759 c!158454) b!971753))

(assert (= (and b!971759 (not c!158454)) b!971751))

(assert (= (and b!971753 res!441727) b!971756))

(assert (= (and b!971751 c!158455) b!971757))

(assert (= (and b!971751 (not c!158455)) b!971758))

(assert (= (and b!971757 res!441726) b!971755))

(assert (= (and b!971758 (not res!441725)) b!971752))

(assert (= (and b!971752 res!441728) b!971754))

(assert (= (or b!971755 b!971754) bm!61680))

(assert (= (or b!971757 b!971752) bm!61679))

(assert (= (or b!971756 bm!61680) bm!61681))

(declare-fun m!1175309 () Bool)

(assert (=> bm!61679 m!1175309))

(declare-fun m!1175311 () Bool)

(assert (=> bm!61681 m!1175311))

(declare-fun m!1175313 () Bool)

(assert (=> b!971753 m!1175313))

(assert (=> b!971626 d!286677))

(declare-fun bs!242446 () Bool)

(declare-fun b!971829 () Bool)

(assert (= bs!242446 (and b!971829 b!971623)))

(declare-fun lambda!34437 () Int)

(assert (=> bs!242446 (not (= lambda!34437 lambda!34423))))

(assert (=> bs!242446 (not (= lambda!34437 lambda!34424))))

(assert (=> b!971829 true))

(assert (=> b!971829 true))

(declare-fun bs!242447 () Bool)

(declare-fun b!971819 () Bool)

(assert (= bs!242447 (and b!971819 b!971623)))

(declare-fun lambda!34438 () Int)

(assert (=> bs!242447 (not (= lambda!34438 lambda!34423))))

(assert (=> bs!242447 (= (and (= (_2!6469 lt!349002) s!10566) (= (regOne!5932 (regTwo!5932 r!15766)) EmptyExpr!2710) (= (regTwo!5932 (regTwo!5932 r!15766)) (regTwo!5932 r!15766))) (= lambda!34438 lambda!34424))))

(declare-fun bs!242448 () Bool)

(assert (= bs!242448 (and b!971819 b!971829)))

(assert (=> bs!242448 (not (= lambda!34438 lambda!34437))))

(assert (=> b!971819 true))

(assert (=> b!971819 true))

(declare-fun bm!61695 () Bool)

(declare-fun call!61701 () Bool)

(assert (=> bm!61695 (= call!61701 (isEmpty!6233 (_2!6469 lt!349002)))))

(declare-fun e!626377 () Bool)

(declare-fun call!61700 () Bool)

(assert (=> b!971819 (= e!626377 call!61700)))

(declare-fun b!971820 () Bool)

(declare-fun e!626376 () Bool)

(assert (=> b!971820 (= e!626376 (= (_2!6469 lt!349002) (Cons!9924 (c!158437 (regTwo!5932 r!15766)) Nil!9924)))))

(declare-fun b!971821 () Bool)

(declare-fun c!158471 () Bool)

(assert (=> b!971821 (= c!158471 (is-ElementMatch!2710 (regTwo!5932 r!15766)))))

(declare-fun e!626378 () Bool)

(assert (=> b!971821 (= e!626378 e!626376)))

(declare-fun b!971822 () Bool)

(declare-fun e!626380 () Bool)

(declare-fun e!626382 () Bool)

(assert (=> b!971822 (= e!626380 e!626382)))

(declare-fun res!441762 () Bool)

(assert (=> b!971822 (= res!441762 (matchRSpec!509 (regOne!5933 (regTwo!5932 r!15766)) (_2!6469 lt!349002)))))

(assert (=> b!971822 (=> res!441762 e!626382)))

(declare-fun d!286679 () Bool)

(declare-fun c!158472 () Bool)

(assert (=> d!286679 (= c!158472 (is-EmptyExpr!2710 (regTwo!5932 r!15766)))))

(declare-fun e!626379 () Bool)

(assert (=> d!286679 (= (matchRSpec!509 (regTwo!5932 r!15766) (_2!6469 lt!349002)) e!626379)))

(declare-fun b!971823 () Bool)

(declare-fun res!441761 () Bool)

(declare-fun e!626381 () Bool)

(assert (=> b!971823 (=> res!441761 e!626381)))

(assert (=> b!971823 (= res!441761 call!61701)))

(assert (=> b!971823 (= e!626377 e!626381)))

(declare-fun b!971824 () Bool)

(assert (=> b!971824 (= e!626380 e!626377)))

(declare-fun c!158473 () Bool)

(assert (=> b!971824 (= c!158473 (is-Star!2710 (regTwo!5932 r!15766)))))

(declare-fun b!971825 () Bool)

(assert (=> b!971825 (= e!626379 e!626378)))

(declare-fun res!441760 () Bool)

(assert (=> b!971825 (= res!441760 (not (is-EmptyLang!2710 (regTwo!5932 r!15766))))))

(assert (=> b!971825 (=> (not res!441760) (not e!626378))))

(declare-fun b!971826 () Bool)

(declare-fun c!158470 () Bool)

(assert (=> b!971826 (= c!158470 (is-Union!2710 (regTwo!5932 r!15766)))))

(assert (=> b!971826 (= e!626376 e!626380)))

(declare-fun b!971827 () Bool)

(assert (=> b!971827 (= e!626382 (matchRSpec!509 (regTwo!5933 (regTwo!5932 r!15766)) (_2!6469 lt!349002)))))

(declare-fun b!971828 () Bool)

(assert (=> b!971828 (= e!626379 call!61701)))

(declare-fun bm!61696 () Bool)

(assert (=> bm!61696 (= call!61700 (Exists!449 (ite c!158473 lambda!34437 lambda!34438)))))

(assert (=> b!971829 (= e!626381 call!61700)))

(assert (= (and d!286679 c!158472) b!971828))

(assert (= (and d!286679 (not c!158472)) b!971825))

(assert (= (and b!971825 res!441760) b!971821))

(assert (= (and b!971821 c!158471) b!971820))

(assert (= (and b!971821 (not c!158471)) b!971826))

(assert (= (and b!971826 c!158470) b!971822))

(assert (= (and b!971826 (not c!158470)) b!971824))

(assert (= (and b!971822 (not res!441762)) b!971827))

(assert (= (and b!971824 c!158473) b!971823))

(assert (= (and b!971824 (not c!158473)) b!971819))

(assert (= (and b!971823 (not res!441761)) b!971829))

(assert (= (or b!971829 b!971819) bm!61696))

(assert (= (or b!971828 b!971823) bm!61695))

(assert (=> bm!61695 m!1175307))

(declare-fun m!1175321 () Bool)

(assert (=> b!971822 m!1175321))

(declare-fun m!1175323 () Bool)

(assert (=> b!971827 m!1175323))

(declare-fun m!1175325 () Bool)

(assert (=> bm!61696 m!1175325))

(assert (=> b!971626 d!286679))

(declare-fun d!286683 () Bool)

(assert (=> d!286683 (= (matchR!1246 (regTwo!5932 r!15766) (_2!6469 lt!349002)) (matchRSpec!509 (regTwo!5932 r!15766) (_2!6469 lt!349002)))))

(declare-fun lt!349029 () Unit!15079)

(declare-fun choose!6151 (Regex!2710 List!9940) Unit!15079)

(assert (=> d!286683 (= lt!349029 (choose!6151 (regTwo!5932 r!15766) (_2!6469 lt!349002)))))

(assert (=> d!286683 (validRegex!1179 (regTwo!5932 r!15766))))

(assert (=> d!286683 (= (mainMatchTheorem!509 (regTwo!5932 r!15766) (_2!6469 lt!349002)) lt!349029)))

(declare-fun bs!242449 () Bool)

(assert (= bs!242449 d!286683))

(assert (=> bs!242449 m!1175235))

(assert (=> bs!242449 m!1175223))

(declare-fun m!1175327 () Bool)

(assert (=> bs!242449 m!1175327))

(assert (=> bs!242449 m!1175221))

(assert (=> b!971626 d!286683))

(declare-fun bs!242450 () Bool)

(declare-fun b!971840 () Bool)

(assert (= bs!242450 (and b!971840 b!971623)))

(declare-fun lambda!34439 () Int)

(assert (=> bs!242450 (not (= lambda!34439 lambda!34423))))

(assert (=> bs!242450 (not (= lambda!34439 lambda!34424))))

(declare-fun bs!242451 () Bool)

(assert (= bs!242451 (and b!971840 b!971829)))

(assert (=> bs!242451 (= (and (= s!10566 (_2!6469 lt!349002)) (= (reg!3039 r!15766) (reg!3039 (regTwo!5932 r!15766))) (= r!15766 (regTwo!5932 r!15766))) (= lambda!34439 lambda!34437))))

(declare-fun bs!242452 () Bool)

(assert (= bs!242452 (and b!971840 b!971819)))

(assert (=> bs!242452 (not (= lambda!34439 lambda!34438))))

(assert (=> b!971840 true))

(assert (=> b!971840 true))

(declare-fun bs!242453 () Bool)

(declare-fun b!971830 () Bool)

(assert (= bs!242453 (and b!971830 b!971819)))

(declare-fun lambda!34440 () Int)

(assert (=> bs!242453 (= (and (= s!10566 (_2!6469 lt!349002)) (= (regOne!5932 r!15766) (regOne!5932 (regTwo!5932 r!15766))) (= (regTwo!5932 r!15766) (regTwo!5932 (regTwo!5932 r!15766)))) (= lambda!34440 lambda!34438))))

(declare-fun bs!242454 () Bool)

(assert (= bs!242454 (and b!971830 b!971623)))

(assert (=> bs!242454 (= (= (regOne!5932 r!15766) EmptyExpr!2710) (= lambda!34440 lambda!34424))))

(declare-fun bs!242455 () Bool)

(assert (= bs!242455 (and b!971830 b!971840)))

(assert (=> bs!242455 (not (= lambda!34440 lambda!34439))))

(assert (=> bs!242454 (not (= lambda!34440 lambda!34423))))

(declare-fun bs!242456 () Bool)

(assert (= bs!242456 (and b!971830 b!971829)))

(assert (=> bs!242456 (not (= lambda!34440 lambda!34437))))

(assert (=> b!971830 true))

(assert (=> b!971830 true))

(declare-fun bm!61697 () Bool)

(declare-fun call!61703 () Bool)

(assert (=> bm!61697 (= call!61703 (isEmpty!6233 s!10566))))

(declare-fun e!626384 () Bool)

(declare-fun call!61702 () Bool)

(assert (=> b!971830 (= e!626384 call!61702)))

(declare-fun b!971831 () Bool)

(declare-fun e!626383 () Bool)

(assert (=> b!971831 (= e!626383 (= s!10566 (Cons!9924 (c!158437 r!15766) Nil!9924)))))

(declare-fun b!971832 () Bool)

(declare-fun c!158475 () Bool)

(assert (=> b!971832 (= c!158475 (is-ElementMatch!2710 r!15766))))

(declare-fun e!626385 () Bool)

(assert (=> b!971832 (= e!626385 e!626383)))

(declare-fun b!971833 () Bool)

(declare-fun e!626387 () Bool)

(declare-fun e!626389 () Bool)

(assert (=> b!971833 (= e!626387 e!626389)))

(declare-fun res!441765 () Bool)

(assert (=> b!971833 (= res!441765 (matchRSpec!509 (regOne!5933 r!15766) s!10566))))

(assert (=> b!971833 (=> res!441765 e!626389)))

(declare-fun d!286685 () Bool)

(declare-fun c!158476 () Bool)

(assert (=> d!286685 (= c!158476 (is-EmptyExpr!2710 r!15766))))

(declare-fun e!626386 () Bool)

(assert (=> d!286685 (= (matchRSpec!509 r!15766 s!10566) e!626386)))

(declare-fun b!971834 () Bool)

(declare-fun res!441764 () Bool)

(declare-fun e!626388 () Bool)

(assert (=> b!971834 (=> res!441764 e!626388)))

(assert (=> b!971834 (= res!441764 call!61703)))

(assert (=> b!971834 (= e!626384 e!626388)))

(declare-fun b!971835 () Bool)

(assert (=> b!971835 (= e!626387 e!626384)))

(declare-fun c!158477 () Bool)

(assert (=> b!971835 (= c!158477 (is-Star!2710 r!15766))))

(declare-fun b!971836 () Bool)

(assert (=> b!971836 (= e!626386 e!626385)))

(declare-fun res!441763 () Bool)

(assert (=> b!971836 (= res!441763 (not (is-EmptyLang!2710 r!15766)))))

(assert (=> b!971836 (=> (not res!441763) (not e!626385))))

(declare-fun b!971837 () Bool)

(declare-fun c!158474 () Bool)

(assert (=> b!971837 (= c!158474 (is-Union!2710 r!15766))))

(assert (=> b!971837 (= e!626383 e!626387)))

(declare-fun b!971838 () Bool)

(assert (=> b!971838 (= e!626389 (matchRSpec!509 (regTwo!5933 r!15766) s!10566))))

(declare-fun b!971839 () Bool)

(assert (=> b!971839 (= e!626386 call!61703)))

(declare-fun bm!61698 () Bool)

(assert (=> bm!61698 (= call!61702 (Exists!449 (ite c!158477 lambda!34439 lambda!34440)))))

(assert (=> b!971840 (= e!626388 call!61702)))

(assert (= (and d!286685 c!158476) b!971839))

(assert (= (and d!286685 (not c!158476)) b!971836))

(assert (= (and b!971836 res!441763) b!971832))

(assert (= (and b!971832 c!158475) b!971831))

(assert (= (and b!971832 (not c!158475)) b!971837))

(assert (= (and b!971837 c!158474) b!971833))

(assert (= (and b!971837 (not c!158474)) b!971835))

(assert (= (and b!971833 (not res!441765)) b!971838))

(assert (= (and b!971835 c!158477) b!971834))

(assert (= (and b!971835 (not c!158477)) b!971830))

(assert (= (and b!971834 (not res!441764)) b!971840))

(assert (= (or b!971840 b!971830) bm!61698))

(assert (= (or b!971839 b!971834) bm!61697))

(assert (=> bm!61697 m!1175245))

(declare-fun m!1175329 () Bool)

(assert (=> b!971833 m!1175329))

(declare-fun m!1175331 () Bool)

(assert (=> b!971838 m!1175331))

(declare-fun m!1175333 () Bool)

(assert (=> bm!61698 m!1175333))

(assert (=> b!971628 d!286685))

(declare-fun bm!61699 () Bool)

(declare-fun call!61704 () Bool)

(assert (=> bm!61699 (= call!61704 (isEmpty!6233 s!10566))))

(declare-fun b!971841 () Bool)

(declare-fun res!441767 () Bool)

(declare-fun e!626396 () Bool)

(assert (=> b!971841 (=> (not res!441767) (not e!626396))))

(assert (=> b!971841 (= res!441767 (not call!61704))))

(declare-fun b!971842 () Bool)

(declare-fun res!441773 () Bool)

(declare-fun e!626394 () Bool)

(assert (=> b!971842 (=> res!441773 e!626394)))

(assert (=> b!971842 (= res!441773 (not (is-ElementMatch!2710 r!15766)))))

(declare-fun e!626390 () Bool)

(assert (=> b!971842 (= e!626390 e!626394)))

(declare-fun d!286687 () Bool)

(declare-fun e!626391 () Bool)

(assert (=> d!286687 e!626391))

(declare-fun c!158479 () Bool)

(assert (=> d!286687 (= c!158479 (is-EmptyExpr!2710 r!15766))))

(declare-fun lt!349030 () Bool)

(declare-fun e!626393 () Bool)

(assert (=> d!286687 (= lt!349030 e!626393)))

(declare-fun c!158478 () Bool)

(assert (=> d!286687 (= c!158478 (isEmpty!6233 s!10566))))

(assert (=> d!286687 (validRegex!1179 r!15766)))

(assert (=> d!286687 (= (matchR!1246 r!15766 s!10566) lt!349030)))

(declare-fun b!971843 () Bool)

(assert (=> b!971843 (= e!626391 (= lt!349030 call!61704))))

(declare-fun b!971844 () Bool)

(declare-fun e!626395 () Bool)

(declare-fun e!626392 () Bool)

(assert (=> b!971844 (= e!626395 e!626392)))

(declare-fun res!441769 () Bool)

(assert (=> b!971844 (=> res!441769 e!626392)))

(assert (=> b!971844 (= res!441769 call!61704)))

(declare-fun b!971845 () Bool)

(assert (=> b!971845 (= e!626396 (= (head!1789 s!10566) (c!158437 r!15766)))))

(declare-fun b!971846 () Bool)

(declare-fun res!441771 () Bool)

(assert (=> b!971846 (=> res!441771 e!626392)))

(assert (=> b!971846 (= res!441771 (not (isEmpty!6233 (tail!1351 s!10566))))))

(declare-fun b!971847 () Bool)

(assert (=> b!971847 (= e!626394 e!626395)))

(declare-fun res!441770 () Bool)

(assert (=> b!971847 (=> (not res!441770) (not e!626395))))

(assert (=> b!971847 (= res!441770 (not lt!349030))))

(declare-fun b!971848 () Bool)

(assert (=> b!971848 (= e!626393 (matchR!1246 (derivativeStep!636 r!15766 (head!1789 s!10566)) (tail!1351 s!10566)))))

(declare-fun b!971849 () Bool)

(assert (=> b!971849 (= e!626393 (nullable!830 r!15766))))

(declare-fun b!971850 () Bool)

(assert (=> b!971850 (= e!626391 e!626390)))

(declare-fun c!158480 () Bool)

(assert (=> b!971850 (= c!158480 (is-EmptyLang!2710 r!15766))))

(declare-fun b!971851 () Bool)

(declare-fun res!441768 () Bool)

(assert (=> b!971851 (=> res!441768 e!626394)))

(assert (=> b!971851 (= res!441768 e!626396)))

(declare-fun res!441766 () Bool)

(assert (=> b!971851 (=> (not res!441766) (not e!626396))))

(assert (=> b!971851 (= res!441766 lt!349030)))

(declare-fun b!971852 () Bool)

(declare-fun res!441772 () Bool)

(assert (=> b!971852 (=> (not res!441772) (not e!626396))))

(assert (=> b!971852 (= res!441772 (isEmpty!6233 (tail!1351 s!10566)))))

(declare-fun b!971853 () Bool)

(assert (=> b!971853 (= e!626390 (not lt!349030))))

(declare-fun b!971854 () Bool)

(assert (=> b!971854 (= e!626392 (not (= (head!1789 s!10566) (c!158437 r!15766))))))

(assert (= (and d!286687 c!158478) b!971849))

(assert (= (and d!286687 (not c!158478)) b!971848))

(assert (= (and d!286687 c!158479) b!971843))

(assert (= (and d!286687 (not c!158479)) b!971850))

(assert (= (and b!971850 c!158480) b!971853))

(assert (= (and b!971850 (not c!158480)) b!971842))

(assert (= (and b!971842 (not res!441773)) b!971851))

(assert (= (and b!971851 res!441766) b!971841))

(assert (= (and b!971841 res!441767) b!971852))

(assert (= (and b!971852 res!441772) b!971845))

(assert (= (and b!971851 (not res!441768)) b!971847))

(assert (= (and b!971847 res!441770) b!971844))

(assert (= (and b!971844 (not res!441769)) b!971846))

(assert (= (and b!971846 (not res!441771)) b!971854))

(assert (= (or b!971843 b!971841 b!971844) bm!61699))

(declare-fun m!1175335 () Bool)

(assert (=> b!971852 m!1175335))

(assert (=> b!971852 m!1175335))

(declare-fun m!1175337 () Bool)

(assert (=> b!971852 m!1175337))

(assert (=> b!971846 m!1175335))

(assert (=> b!971846 m!1175335))

(assert (=> b!971846 m!1175337))

(declare-fun m!1175339 () Bool)

(assert (=> b!971854 m!1175339))

(assert (=> b!971848 m!1175339))

(assert (=> b!971848 m!1175339))

(declare-fun m!1175341 () Bool)

(assert (=> b!971848 m!1175341))

(assert (=> b!971848 m!1175335))

(assert (=> b!971848 m!1175341))

(assert (=> b!971848 m!1175335))

(declare-fun m!1175343 () Bool)

(assert (=> b!971848 m!1175343))

(declare-fun m!1175345 () Bool)

(assert (=> b!971849 m!1175345))

(assert (=> b!971845 m!1175339))

(assert (=> bm!61699 m!1175245))

(assert (=> d!286687 m!1175245))

(assert (=> d!286687 m!1175227))

(assert (=> b!971628 d!286687))

(declare-fun d!286689 () Bool)

(assert (=> d!286689 (= (matchR!1246 r!15766 s!10566) (matchRSpec!509 r!15766 s!10566))))

(declare-fun lt!349033 () Unit!15079)

(assert (=> d!286689 (= lt!349033 (choose!6151 r!15766 s!10566))))

(assert (=> d!286689 (validRegex!1179 r!15766)))

(assert (=> d!286689 (= (mainMatchTheorem!509 r!15766 s!10566) lt!349033)))

(declare-fun bs!242457 () Bool)

(assert (= bs!242457 d!286689))

(assert (=> bs!242457 m!1175231))

(assert (=> bs!242457 m!1175229))

(declare-fun m!1175347 () Bool)

(assert (=> bs!242457 m!1175347))

(assert (=> bs!242457 m!1175227))

(assert (=> b!971628 d!286689))

(declare-fun d!286691 () Bool)

(assert (=> d!286691 (= (isEmpty!6233 s!10566) (is-Nil!9924 s!10566))))

(assert (=> b!971623 d!286691))

(declare-fun b!971915 () Bool)

(declare-fun res!441809 () Bool)

(declare-fun e!626431 () Bool)

(assert (=> b!971915 (=> (not res!441809) (not e!626431))))

(declare-fun lt!349042 () Option!2285)

(assert (=> b!971915 (= res!441809 (matchR!1246 EmptyExpr!2710 (_1!6469 (get!3421 lt!349042))))))

(declare-fun b!971916 () Bool)

(declare-fun e!626430 () Option!2285)

(declare-fun e!626429 () Option!2285)

(assert (=> b!971916 (= e!626430 e!626429)))

(declare-fun c!158494 () Bool)

(assert (=> b!971916 (= c!158494 (is-Nil!9924 s!10566))))

(declare-fun d!286693 () Bool)

(declare-fun e!626432 () Bool)

(assert (=> d!286693 e!626432))

(declare-fun res!441808 () Bool)

(assert (=> d!286693 (=> res!441808 e!626432)))

(assert (=> d!286693 (= res!441808 e!626431)))

(declare-fun res!441812 () Bool)

(assert (=> d!286693 (=> (not res!441812) (not e!626431))))

(assert (=> d!286693 (= res!441812 (isDefined!1927 lt!349042))))

(assert (=> d!286693 (= lt!349042 e!626430)))

(declare-fun c!158495 () Bool)

(declare-fun e!626428 () Bool)

(assert (=> d!286693 (= c!158495 e!626428)))

(declare-fun res!441811 () Bool)

(assert (=> d!286693 (=> (not res!441811) (not e!626428))))

(assert (=> d!286693 (= res!441811 (matchR!1246 EmptyExpr!2710 Nil!9924))))

(assert (=> d!286693 (validRegex!1179 EmptyExpr!2710)))

(assert (=> d!286693 (= (findConcatSeparation!391 EmptyExpr!2710 (regTwo!5932 r!15766) Nil!9924 s!10566 s!10566) lt!349042)))

(declare-fun b!971917 () Bool)

(declare-fun lt!349043 () Unit!15079)

(declare-fun lt!349041 () Unit!15079)

(assert (=> b!971917 (= lt!349043 lt!349041)))

(declare-fun ++!2687 (List!9940 List!9940) List!9940)

(assert (=> b!971917 (= (++!2687 (++!2687 Nil!9924 (Cons!9924 (h!15325 s!10566) Nil!9924)) (t!100986 s!10566)) s!10566)))

(declare-fun lemmaMoveElementToOtherListKeepsConcatEq!288 (List!9940 C!5990 List!9940 List!9940) Unit!15079)

(assert (=> b!971917 (= lt!349041 (lemmaMoveElementToOtherListKeepsConcatEq!288 Nil!9924 (h!15325 s!10566) (t!100986 s!10566) s!10566))))

(assert (=> b!971917 (= e!626429 (findConcatSeparation!391 EmptyExpr!2710 (regTwo!5932 r!15766) (++!2687 Nil!9924 (Cons!9924 (h!15325 s!10566) Nil!9924)) (t!100986 s!10566) s!10566))))

(declare-fun b!971918 () Bool)

(declare-fun res!441810 () Bool)

(assert (=> b!971918 (=> (not res!441810) (not e!626431))))

(assert (=> b!971918 (= res!441810 (matchR!1246 (regTwo!5932 r!15766) (_2!6469 (get!3421 lt!349042))))))

(declare-fun b!971919 () Bool)

(assert (=> b!971919 (= e!626431 (= (++!2687 (_1!6469 (get!3421 lt!349042)) (_2!6469 (get!3421 lt!349042))) s!10566))))

(declare-fun b!971920 () Bool)

(assert (=> b!971920 (= e!626428 (matchR!1246 (regTwo!5932 r!15766) s!10566))))

(declare-fun b!971921 () Bool)

(assert (=> b!971921 (= e!626432 (not (isDefined!1927 lt!349042)))))

(declare-fun b!971922 () Bool)

(assert (=> b!971922 (= e!626430 (Some!2284 (tuple2!11287 Nil!9924 s!10566)))))

(declare-fun b!971923 () Bool)

(assert (=> b!971923 (= e!626429 None!2284)))

(assert (= (and d!286693 res!441811) b!971920))

(assert (= (and d!286693 c!158495) b!971922))

(assert (= (and d!286693 (not c!158495)) b!971916))

(assert (= (and b!971916 c!158494) b!971923))

(assert (= (and b!971916 (not c!158494)) b!971917))

(assert (= (and d!286693 res!441812) b!971915))

(assert (= (and b!971915 res!441809) b!971918))

(assert (= (and b!971918 res!441810) b!971919))

(assert (= (and d!286693 (not res!441808)) b!971921))

(declare-fun m!1175363 () Bool)

(assert (=> b!971919 m!1175363))

(declare-fun m!1175365 () Bool)

(assert (=> b!971919 m!1175365))

(declare-fun m!1175367 () Bool)

(assert (=> d!286693 m!1175367))

(declare-fun m!1175369 () Bool)

(assert (=> d!286693 m!1175369))

(declare-fun m!1175371 () Bool)

(assert (=> d!286693 m!1175371))

(declare-fun m!1175373 () Bool)

(assert (=> b!971920 m!1175373))

(assert (=> b!971921 m!1175367))

(assert (=> b!971915 m!1175363))

(declare-fun m!1175375 () Bool)

(assert (=> b!971915 m!1175375))

(assert (=> b!971918 m!1175363))

(declare-fun m!1175377 () Bool)

(assert (=> b!971918 m!1175377))

(declare-fun m!1175379 () Bool)

(assert (=> b!971917 m!1175379))

(assert (=> b!971917 m!1175379))

(declare-fun m!1175381 () Bool)

(assert (=> b!971917 m!1175381))

(declare-fun m!1175383 () Bool)

(assert (=> b!971917 m!1175383))

(assert (=> b!971917 m!1175379))

(declare-fun m!1175385 () Bool)

(assert (=> b!971917 m!1175385))

(assert (=> b!971623 d!286693))

(declare-fun d!286697 () Bool)

(declare-fun isEmpty!6235 (Option!2285) Bool)

(assert (=> d!286697 (= (isDefined!1927 lt!348998) (not (isEmpty!6235 lt!348998)))))

(declare-fun bs!242458 () Bool)

(assert (= bs!242458 d!286697))

(declare-fun m!1175387 () Bool)

(assert (=> bs!242458 m!1175387))

(assert (=> b!971623 d!286697))

(declare-fun bs!242459 () Bool)

(declare-fun d!286699 () Bool)

(assert (= bs!242459 (and d!286699 b!971819)))

(declare-fun lambda!34443 () Int)

(assert (=> bs!242459 (not (= lambda!34443 lambda!34438))))

(declare-fun bs!242460 () Bool)

(assert (= bs!242460 (and d!286699 b!971623)))

(assert (=> bs!242460 (not (= lambda!34443 lambda!34424))))

(declare-fun bs!242461 () Bool)

(assert (= bs!242461 (and d!286699 b!971840)))

(assert (=> bs!242461 (not (= lambda!34443 lambda!34439))))

(assert (=> bs!242460 (= lambda!34443 lambda!34423)))

(declare-fun bs!242462 () Bool)

(assert (= bs!242462 (and d!286699 b!971830)))

(assert (=> bs!242462 (not (= lambda!34443 lambda!34440))))

(declare-fun bs!242463 () Bool)

(assert (= bs!242463 (and d!286699 b!971829)))

(assert (=> bs!242463 (not (= lambda!34443 lambda!34437))))

(assert (=> d!286699 true))

(assert (=> d!286699 true))

(assert (=> d!286699 true))

(assert (=> d!286699 (= (isDefined!1927 (findConcatSeparation!391 EmptyExpr!2710 (regTwo!5932 r!15766) Nil!9924 s!10566 s!10566)) (Exists!449 lambda!34443))))

(declare-fun lt!349046 () Unit!15079)

(declare-fun choose!6152 (Regex!2710 Regex!2710 List!9940) Unit!15079)

(assert (=> d!286699 (= lt!349046 (choose!6152 EmptyExpr!2710 (regTwo!5932 r!15766) s!10566))))

(assert (=> d!286699 (validRegex!1179 EmptyExpr!2710)))

(assert (=> d!286699 (= (lemmaFindConcatSeparationEquivalentToExists!391 EmptyExpr!2710 (regTwo!5932 r!15766) s!10566) lt!349046)))

(declare-fun bs!242464 () Bool)

(assert (= bs!242464 d!286699))

(assert (=> bs!242464 m!1175371))

(declare-fun m!1175389 () Bool)

(assert (=> bs!242464 m!1175389))

(assert (=> bs!242464 m!1175247))

(declare-fun m!1175391 () Bool)

(assert (=> bs!242464 m!1175391))

(assert (=> bs!242464 m!1175247))

(declare-fun m!1175393 () Bool)

(assert (=> bs!242464 m!1175393))

(assert (=> b!971623 d!286699))

(declare-fun bs!242465 () Bool)

(declare-fun d!286701 () Bool)

(assert (= bs!242465 (and d!286701 b!971819)))

(declare-fun lambda!34450 () Int)

(assert (=> bs!242465 (not (= lambda!34450 lambda!34438))))

(declare-fun bs!242466 () Bool)

(assert (= bs!242466 (and d!286701 b!971623)))

(assert (=> bs!242466 (not (= lambda!34450 lambda!34424))))

(declare-fun bs!242467 () Bool)

(assert (= bs!242467 (and d!286701 b!971840)))

(assert (=> bs!242467 (not (= lambda!34450 lambda!34439))))

(assert (=> bs!242466 (= lambda!34450 lambda!34423)))

(declare-fun bs!242468 () Bool)

(assert (= bs!242468 (and d!286701 b!971830)))

(assert (=> bs!242468 (not (= lambda!34450 lambda!34440))))

(declare-fun bs!242469 () Bool)

(assert (= bs!242469 (and d!286701 b!971829)))

(assert (=> bs!242469 (not (= lambda!34450 lambda!34437))))

(declare-fun bs!242470 () Bool)

(assert (= bs!242470 (and d!286701 d!286699)))

(assert (=> bs!242470 (= lambda!34450 lambda!34443)))

(assert (=> d!286701 true))

(assert (=> d!286701 true))

(assert (=> d!286701 true))

(declare-fun lambda!34453 () Int)

(assert (=> bs!242465 (= (and (= s!10566 (_2!6469 lt!349002)) (= EmptyExpr!2710 (regOne!5932 (regTwo!5932 r!15766))) (= (regTwo!5932 r!15766) (regTwo!5932 (regTwo!5932 r!15766)))) (= lambda!34453 lambda!34438))))

(assert (=> bs!242466 (= lambda!34453 lambda!34424)))

(assert (=> bs!242467 (not (= lambda!34453 lambda!34439))))

(assert (=> bs!242466 (not (= lambda!34453 lambda!34423))))

(assert (=> bs!242468 (= (= EmptyExpr!2710 (regOne!5932 r!15766)) (= lambda!34453 lambda!34440))))

(assert (=> bs!242470 (not (= lambda!34453 lambda!34443))))

(declare-fun bs!242471 () Bool)

(assert (= bs!242471 d!286701))

(assert (=> bs!242471 (not (= lambda!34453 lambda!34450))))

(assert (=> bs!242469 (not (= lambda!34453 lambda!34437))))

(assert (=> d!286701 true))

(assert (=> d!286701 true))

(assert (=> d!286701 true))

(assert (=> d!286701 (= (Exists!449 lambda!34450) (Exists!449 lambda!34453))))

(declare-fun lt!349049 () Unit!15079)

(declare-fun choose!6153 (Regex!2710 Regex!2710 List!9940) Unit!15079)

(assert (=> d!286701 (= lt!349049 (choose!6153 EmptyExpr!2710 (regTwo!5932 r!15766) s!10566))))

(assert (=> d!286701 (validRegex!1179 EmptyExpr!2710)))

(assert (=> d!286701 (= (lemmaExistCutMatchRandMatchRSpecEquivalent!215 EmptyExpr!2710 (regTwo!5932 r!15766) s!10566) lt!349049)))

(declare-fun m!1175395 () Bool)

(assert (=> bs!242471 m!1175395))

(declare-fun m!1175397 () Bool)

(assert (=> bs!242471 m!1175397))

(declare-fun m!1175399 () Bool)

(assert (=> bs!242471 m!1175399))

(assert (=> bs!242471 m!1175371))

(assert (=> b!971623 d!286701))

(declare-fun d!286703 () Bool)

(declare-fun choose!6154 (Int) Bool)

(assert (=> d!286703 (= (Exists!449 lambda!34424) (choose!6154 lambda!34424))))

(declare-fun bs!242472 () Bool)

(assert (= bs!242472 d!286703))

(declare-fun m!1175401 () Bool)

(assert (=> bs!242472 m!1175401))

(assert (=> b!971623 d!286703))

(declare-fun d!286705 () Bool)

(assert (=> d!286705 (= (Exists!449 lambda!34423) (choose!6154 lambda!34423))))

(declare-fun bs!242473 () Bool)

(assert (= bs!242473 d!286705))

(declare-fun m!1175403 () Bool)

(assert (=> bs!242473 m!1175403))

(assert (=> b!971623 d!286705))

(declare-fun d!286707 () Bool)

(assert (=> d!286707 (= (isEmpty!6233 (_1!6469 lt!349002)) (is-Nil!9924 (_1!6469 lt!349002)))))

(assert (=> b!971629 d!286707))

(declare-fun d!286709 () Bool)

(assert (=> d!286709 (= (get!3421 lt!348998) (v!19701 lt!348998))))

(assert (=> b!971629 d!286709))

(declare-fun b!971978 () Bool)

(declare-fun e!626459 () Bool)

(assert (=> b!971978 (= e!626459 tp_is_empty!5063)))

(assert (=> b!971622 (= tp!297570 e!626459)))

(declare-fun b!971979 () Bool)

(declare-fun tp!297607 () Bool)

(declare-fun tp!297604 () Bool)

(assert (=> b!971979 (= e!626459 (and tp!297607 tp!297604))))

(declare-fun b!971981 () Bool)

(declare-fun tp!297606 () Bool)

(declare-fun tp!297603 () Bool)

(assert (=> b!971981 (= e!626459 (and tp!297606 tp!297603))))

(declare-fun b!971980 () Bool)

(declare-fun tp!297605 () Bool)

(assert (=> b!971980 (= e!626459 tp!297605)))

(assert (= (and b!971622 (is-ElementMatch!2710 (regOne!5932 r!15766))) b!971978))

(assert (= (and b!971622 (is-Concat!4543 (regOne!5932 r!15766))) b!971979))

(assert (= (and b!971622 (is-Star!2710 (regOne!5932 r!15766))) b!971980))

(assert (= (and b!971622 (is-Union!2710 (regOne!5932 r!15766))) b!971981))

(declare-fun b!971982 () Bool)

(declare-fun e!626460 () Bool)

(assert (=> b!971982 (= e!626460 tp_is_empty!5063)))

(assert (=> b!971622 (= tp!297571 e!626460)))

(declare-fun b!971983 () Bool)

(declare-fun tp!297612 () Bool)

(declare-fun tp!297609 () Bool)

(assert (=> b!971983 (= e!626460 (and tp!297612 tp!297609))))

(declare-fun b!971985 () Bool)

(declare-fun tp!297611 () Bool)

(declare-fun tp!297608 () Bool)

(assert (=> b!971985 (= e!626460 (and tp!297611 tp!297608))))

(declare-fun b!971984 () Bool)

(declare-fun tp!297610 () Bool)

(assert (=> b!971984 (= e!626460 tp!297610)))

(assert (= (and b!971622 (is-ElementMatch!2710 (regTwo!5932 r!15766))) b!971982))

(assert (= (and b!971622 (is-Concat!4543 (regTwo!5932 r!15766))) b!971983))

(assert (= (and b!971622 (is-Star!2710 (regTwo!5932 r!15766))) b!971984))

(assert (= (and b!971622 (is-Union!2710 (regTwo!5932 r!15766))) b!971985))

(declare-fun b!971986 () Bool)

(declare-fun e!626461 () Bool)

(assert (=> b!971986 (= e!626461 tp_is_empty!5063)))

(assert (=> b!971624 (= tp!297572 e!626461)))

(declare-fun b!971987 () Bool)

(declare-fun tp!297617 () Bool)

(declare-fun tp!297614 () Bool)

(assert (=> b!971987 (= e!626461 (and tp!297617 tp!297614))))

(declare-fun b!971989 () Bool)

(declare-fun tp!297616 () Bool)

(declare-fun tp!297613 () Bool)

(assert (=> b!971989 (= e!626461 (and tp!297616 tp!297613))))

(declare-fun b!971988 () Bool)

(declare-fun tp!297615 () Bool)

(assert (=> b!971988 (= e!626461 tp!297615)))

(assert (= (and b!971624 (is-ElementMatch!2710 (regOne!5933 r!15766))) b!971986))

(assert (= (and b!971624 (is-Concat!4543 (regOne!5933 r!15766))) b!971987))

(assert (= (and b!971624 (is-Star!2710 (regOne!5933 r!15766))) b!971988))

(assert (= (and b!971624 (is-Union!2710 (regOne!5933 r!15766))) b!971989))

(declare-fun b!971990 () Bool)

(declare-fun e!626462 () Bool)

(assert (=> b!971990 (= e!626462 tp_is_empty!5063)))

(assert (=> b!971624 (= tp!297574 e!626462)))

(declare-fun b!971991 () Bool)

(declare-fun tp!297622 () Bool)

(declare-fun tp!297619 () Bool)

(assert (=> b!971991 (= e!626462 (and tp!297622 tp!297619))))

(declare-fun b!971993 () Bool)

(declare-fun tp!297621 () Bool)

(declare-fun tp!297618 () Bool)

(assert (=> b!971993 (= e!626462 (and tp!297621 tp!297618))))

(declare-fun b!971992 () Bool)

(declare-fun tp!297620 () Bool)

(assert (=> b!971992 (= e!626462 tp!297620)))

(assert (= (and b!971624 (is-ElementMatch!2710 (regTwo!5933 r!15766))) b!971990))

(assert (= (and b!971624 (is-Concat!4543 (regTwo!5933 r!15766))) b!971991))

(assert (= (and b!971624 (is-Star!2710 (regTwo!5933 r!15766))) b!971992))

(assert (= (and b!971624 (is-Union!2710 (regTwo!5933 r!15766))) b!971993))

(declare-fun b!971998 () Bool)

(declare-fun e!626465 () Bool)

(declare-fun tp!297625 () Bool)

(assert (=> b!971998 (= e!626465 (and tp_is_empty!5063 tp!297625))))

(assert (=> b!971630 (= tp!297573 e!626465)))

(assert (= (and b!971630 (is-Cons!9924 (t!100986 s!10566))) b!971998))

(declare-fun b!971999 () Bool)

(declare-fun e!626466 () Bool)

(assert (=> b!971999 (= e!626466 tp_is_empty!5063)))

(assert (=> b!971625 (= tp!297569 e!626466)))

(declare-fun b!972000 () Bool)

(declare-fun tp!297630 () Bool)

(declare-fun tp!297627 () Bool)

(assert (=> b!972000 (= e!626466 (and tp!297630 tp!297627))))

(declare-fun b!972002 () Bool)

(declare-fun tp!297629 () Bool)

(declare-fun tp!297626 () Bool)

(assert (=> b!972002 (= e!626466 (and tp!297629 tp!297626))))

(declare-fun b!972001 () Bool)

(declare-fun tp!297628 () Bool)

(assert (=> b!972001 (= e!626466 tp!297628)))

(assert (= (and b!971625 (is-ElementMatch!2710 (reg!3039 r!15766))) b!971999))

(assert (= (and b!971625 (is-Concat!4543 (reg!3039 r!15766))) b!972000))

(assert (= (and b!971625 (is-Star!2710 (reg!3039 r!15766))) b!972001))

(assert (= (and b!971625 (is-Union!2710 (reg!3039 r!15766))) b!972002))

(push 1)

(assert (not b!971920))

(assert (not d!286683))

(assert (not b!971991))

(assert tp_is_empty!5063)

(assert (not b!971702))

(assert (not b!971742))

(assert (not b!971921))

(assert (not b!971753))

(assert (not b!971845))

(assert (not b!971984))

(assert (not b!971983))

(assert (not b!971745))

(assert (not b!971849))

(assert (not b!972001))

(assert (not b!971741))

(assert (not bm!61697))

(assert (not b!972000))

(assert (not d!286703))

(assert (not b!971919))

(assert (not b!971988))

(assert (not bm!61696))

(assert (not d!286699))

(assert (not b!971833))

(assert (not b!971915))

(assert (not b!971993))

(assert (not d!286693))

(assert (not d!286687))

(assert (not b!971838))

(assert (not b!971985))

(assert (not b!971750))

(assert (not b!971827))

(assert (not b!971852))

(assert (not b!971980))

(assert (not b!971987))

(assert (not b!971981))

(assert (not b!971854))

(assert (not b!971918))

(assert (not b!971744))

(assert (not b!971917))

(assert (not b!971992))

(assert (not bm!61681))

(assert (not b!972002))

(assert (not bm!61679))

(assert (not bm!61695))

(assert (not b!971979))

(assert (not d!286689))

(assert (not bm!61673))

(assert (not b!971748))

(assert (not bm!61699))

(assert (not bm!61675))

(assert (not b!971848))

(assert (not b!971989))

(assert (not d!286697))

(assert (not b!971998))

(assert (not d!286701))

(assert (not d!286673))

(assert (not bm!61678))

(assert (not d!286705))

(assert (not b!971846))

(assert (not b!971822))

(assert (not bm!61698))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

