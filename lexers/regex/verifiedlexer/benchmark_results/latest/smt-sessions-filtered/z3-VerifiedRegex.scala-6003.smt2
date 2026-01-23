; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!294144 () Bool)

(assert start!294144)

(declare-fun b!3099699 () Bool)

(assert (=> b!3099699 true))

(assert (=> b!3099699 true))

(assert (=> b!3099699 true))

(declare-fun lambda!114834 () Int)

(declare-fun lambda!114833 () Int)

(assert (=> b!3099699 (not (= lambda!114834 lambda!114833))))

(assert (=> b!3099699 true))

(assert (=> b!3099699 true))

(assert (=> b!3099699 true))

(declare-fun b!3099688 () Bool)

(declare-fun res!1269833 () Bool)

(declare-fun e!1937185 () Bool)

(assert (=> b!3099688 (=> res!1269833 e!1937185)))

(declare-datatypes ((C!19300 0))(
  ( (C!19301 (val!11686 Int)) )
))
(declare-datatypes ((Regex!9557 0))(
  ( (ElementMatch!9557 (c!517801 C!19300)) (Concat!14878 (regOne!19626 Regex!9557) (regTwo!19626 Regex!9557)) (EmptyExpr!9557) (Star!9557 (reg!9886 Regex!9557)) (EmptyLang!9557) (Union!9557 (regOne!19627 Regex!9557) (regTwo!19627 Regex!9557)) )
))
(declare-fun lt!1055554 () Regex!9557)

(declare-fun isEmptyLang!608 (Regex!9557) Bool)

(assert (=> b!3099688 (= res!1269833 (isEmptyLang!608 lt!1055554))))

(declare-fun b!3099689 () Bool)

(declare-fun e!1937183 () Bool)

(declare-fun e!1937184 () Bool)

(assert (=> b!3099689 (= e!1937183 (not e!1937184))))

(declare-fun res!1269838 () Bool)

(assert (=> b!3099689 (=> res!1269838 e!1937184)))

(declare-fun lt!1055551 () Bool)

(declare-fun r!17423 () Regex!9557)

(get-info :version)

(assert (=> b!3099689 (= res!1269838 (or lt!1055551 (not ((_ is Concat!14878) r!17423))))))

(declare-datatypes ((List!35422 0))(
  ( (Nil!35298) (Cons!35298 (h!40718 C!19300) (t!234487 List!35422)) )
))
(declare-fun s!11993 () List!35422)

(declare-fun matchRSpec!1694 (Regex!9557 List!35422) Bool)

(assert (=> b!3099689 (= lt!1055551 (matchRSpec!1694 r!17423 s!11993))))

(declare-fun matchR!4439 (Regex!9557 List!35422) Bool)

(assert (=> b!3099689 (= lt!1055551 (matchR!4439 r!17423 s!11993))))

(declare-datatypes ((Unit!49553 0))(
  ( (Unit!49554) )
))
(declare-fun lt!1055552 () Unit!49553)

(declare-fun mainMatchTheorem!1694 (Regex!9557 List!35422) Unit!49553)

(assert (=> b!3099689 (= lt!1055552 (mainMatchTheorem!1694 r!17423 s!11993))))

(declare-fun b!3099690 () Bool)

(declare-fun res!1269836 () Bool)

(assert (=> b!3099690 (=> res!1269836 e!1937185)))

(declare-fun isEmptyExpr!614 (Regex!9557) Bool)

(assert (=> b!3099690 (= res!1269836 (isEmptyExpr!614 lt!1055554))))

(declare-fun b!3099691 () Bool)

(declare-fun e!1937181 () Bool)

(declare-fun tp_is_empty!16677 () Bool)

(assert (=> b!3099691 (= e!1937181 tp_is_empty!16677)))

(declare-fun b!3099692 () Bool)

(declare-fun tp!974509 () Bool)

(declare-fun tp!974505 () Bool)

(assert (=> b!3099692 (= e!1937181 (and tp!974509 tp!974505))))

(declare-fun b!3099693 () Bool)

(declare-fun res!1269837 () Bool)

(assert (=> b!3099693 (=> res!1269837 e!1937184)))

(declare-fun isEmpty!19647 (List!35422) Bool)

(assert (=> b!3099693 (= res!1269837 (isEmpty!19647 s!11993))))

(declare-fun b!3099694 () Bool)

(assert (=> b!3099694 (= e!1937184 e!1937185)))

(declare-fun res!1269831 () Bool)

(assert (=> b!3099694 (=> res!1269831 e!1937185)))

(declare-fun lt!1055560 () Regex!9557)

(assert (=> b!3099694 (= res!1269831 (isEmptyLang!608 lt!1055560))))

(declare-fun simplify!512 (Regex!9557) Regex!9557)

(assert (=> b!3099694 (= lt!1055554 (simplify!512 (regTwo!19626 r!17423)))))

(assert (=> b!3099694 (= lt!1055560 (simplify!512 (regOne!19626 r!17423)))))

(declare-fun b!3099695 () Bool)

(declare-fun tp!974506 () Bool)

(declare-fun tp!974504 () Bool)

(assert (=> b!3099695 (= e!1937181 (and tp!974506 tp!974504))))

(declare-fun b!3099696 () Bool)

(declare-fun tp!974508 () Bool)

(assert (=> b!3099696 (= e!1937181 tp!974508)))

(declare-fun b!3099697 () Bool)

(declare-fun res!1269835 () Bool)

(assert (=> b!3099697 (=> res!1269835 e!1937185)))

(assert (=> b!3099697 (= res!1269835 (isEmptyExpr!614 lt!1055560))))

(declare-fun b!3099698 () Bool)

(declare-fun e!1937182 () Bool)

(assert (=> b!3099698 (= e!1937185 e!1937182)))

(declare-fun res!1269832 () Bool)

(assert (=> b!3099698 (=> res!1269832 e!1937182)))

(declare-fun lt!1055561 () Regex!9557)

(assert (=> b!3099698 (= res!1269832 (not (matchR!4439 lt!1055561 s!11993)))))

(assert (=> b!3099698 (= lt!1055561 (Concat!14878 lt!1055560 lt!1055554))))

(declare-fun e!1937186 () Bool)

(assert (=> b!3099699 (= e!1937182 e!1937186)))

(declare-fun res!1269834 () Bool)

(assert (=> b!3099699 (=> res!1269834 e!1937186)))

(declare-fun lt!1055557 () Bool)

(assert (=> b!3099699 (= res!1269834 (not lt!1055557))))

(declare-fun Exists!1820 (Int) Bool)

(assert (=> b!3099699 (= (Exists!1820 lambda!114833) (Exists!1820 lambda!114834))))

(declare-fun lt!1055553 () Unit!49553)

(declare-fun lemmaExistCutMatchRandMatchRSpecEquivalent!574 (Regex!9557 Regex!9557 List!35422) Unit!49553)

(assert (=> b!3099699 (= lt!1055553 (lemmaExistCutMatchRandMatchRSpecEquivalent!574 lt!1055560 lt!1055554 s!11993))))

(assert (=> b!3099699 (= lt!1055557 (Exists!1820 lambda!114833))))

(declare-datatypes ((tuple2!34224 0))(
  ( (tuple2!34225 (_1!20244 List!35422) (_2!20244 List!35422)) )
))
(declare-datatypes ((Option!6844 0))(
  ( (None!6843) (Some!6843 (v!34977 tuple2!34224)) )
))
(declare-fun lt!1055549 () Option!6844)

(declare-fun isDefined!5395 (Option!6844) Bool)

(assert (=> b!3099699 (= lt!1055557 (isDefined!5395 lt!1055549))))

(declare-fun findConcatSeparation!1238 (Regex!9557 Regex!9557 List!35422 List!35422 List!35422) Option!6844)

(assert (=> b!3099699 (= lt!1055549 (findConcatSeparation!1238 lt!1055560 lt!1055554 Nil!35298 s!11993 s!11993))))

(declare-fun lt!1055559 () Unit!49553)

(declare-fun lemmaFindConcatSeparationEquivalentToExists!1008 (Regex!9557 Regex!9557 List!35422) Unit!49553)

(assert (=> b!3099699 (= lt!1055559 (lemmaFindConcatSeparationEquivalentToExists!1008 lt!1055560 lt!1055554 s!11993))))

(assert (=> b!3099699 (matchRSpec!1694 lt!1055561 s!11993)))

(declare-fun lt!1055555 () Unit!49553)

(assert (=> b!3099699 (= lt!1055555 (mainMatchTheorem!1694 lt!1055561 s!11993))))

(declare-fun res!1269830 () Bool)

(assert (=> start!294144 (=> (not res!1269830) (not e!1937183))))

(declare-fun validRegex!4290 (Regex!9557) Bool)

(assert (=> start!294144 (= res!1269830 (validRegex!4290 r!17423))))

(assert (=> start!294144 e!1937183))

(assert (=> start!294144 e!1937181))

(declare-fun e!1937187 () Bool)

(assert (=> start!294144 e!1937187))

(declare-fun b!3099700 () Bool)

(assert (=> b!3099700 (= e!1937186 false)))

(declare-fun lt!1055550 () tuple2!34224)

(declare-fun ++!8499 (List!35422 List!35422) List!35422)

(assert (=> b!3099700 (matchR!4439 (Concat!14878 (regOne!19626 r!17423) (regTwo!19626 r!17423)) (++!8499 (_1!20244 lt!1055550) (_2!20244 lt!1055550)))))

(declare-fun lt!1055556 () Unit!49553)

(declare-fun lemmaTwoRegexMatchThenConcatMatchesConcatString!156 (Regex!9557 Regex!9557 List!35422 List!35422) Unit!49553)

(assert (=> b!3099700 (= lt!1055556 (lemmaTwoRegexMatchThenConcatMatchesConcatString!156 (regOne!19626 r!17423) (regTwo!19626 r!17423) (_1!20244 lt!1055550) (_2!20244 lt!1055550)))))

(assert (=> b!3099700 (= (matchR!4439 (regTwo!19626 r!17423) (_2!20244 lt!1055550)) (matchR!4439 lt!1055554 (_2!20244 lt!1055550)))))

(declare-fun lt!1055562 () Unit!49553)

(declare-fun lemmaSimplifySound!326 (Regex!9557 List!35422) Unit!49553)

(assert (=> b!3099700 (= lt!1055562 (lemmaSimplifySound!326 (regTwo!19626 r!17423) (_2!20244 lt!1055550)))))

(assert (=> b!3099700 (= (matchR!4439 (regOne!19626 r!17423) (_1!20244 lt!1055550)) (matchR!4439 lt!1055560 (_1!20244 lt!1055550)))))

(declare-fun lt!1055558 () Unit!49553)

(assert (=> b!3099700 (= lt!1055558 (lemmaSimplifySound!326 (regOne!19626 r!17423) (_1!20244 lt!1055550)))))

(declare-fun get!11088 (Option!6844) tuple2!34224)

(assert (=> b!3099700 (= lt!1055550 (get!11088 lt!1055549))))

(declare-fun b!3099701 () Bool)

(declare-fun tp!974507 () Bool)

(assert (=> b!3099701 (= e!1937187 (and tp_is_empty!16677 tp!974507))))

(assert (= (and start!294144 res!1269830) b!3099689))

(assert (= (and b!3099689 (not res!1269838)) b!3099693))

(assert (= (and b!3099693 (not res!1269837)) b!3099694))

(assert (= (and b!3099694 (not res!1269831)) b!3099688))

(assert (= (and b!3099688 (not res!1269833)) b!3099697))

(assert (= (and b!3099697 (not res!1269835)) b!3099690))

(assert (= (and b!3099690 (not res!1269836)) b!3099698))

(assert (= (and b!3099698 (not res!1269832)) b!3099699))

(assert (= (and b!3099699 (not res!1269834)) b!3099700))

(assert (= (and start!294144 ((_ is ElementMatch!9557) r!17423)) b!3099691))

(assert (= (and start!294144 ((_ is Concat!14878) r!17423)) b!3099692))

(assert (= (and start!294144 ((_ is Star!9557) r!17423)) b!3099696))

(assert (= (and start!294144 ((_ is Union!9557) r!17423)) b!3099695))

(assert (= (and start!294144 ((_ is Cons!35298) s!11993)) b!3099701))

(declare-fun m!3400429 () Bool)

(assert (=> start!294144 m!3400429))

(declare-fun m!3400431 () Bool)

(assert (=> b!3099689 m!3400431))

(declare-fun m!3400433 () Bool)

(assert (=> b!3099689 m!3400433))

(declare-fun m!3400435 () Bool)

(assert (=> b!3099689 m!3400435))

(declare-fun m!3400437 () Bool)

(assert (=> b!3099694 m!3400437))

(declare-fun m!3400439 () Bool)

(assert (=> b!3099694 m!3400439))

(declare-fun m!3400441 () Bool)

(assert (=> b!3099694 m!3400441))

(declare-fun m!3400443 () Bool)

(assert (=> b!3099690 m!3400443))

(declare-fun m!3400445 () Bool)

(assert (=> b!3099699 m!3400445))

(declare-fun m!3400447 () Bool)

(assert (=> b!3099699 m!3400447))

(declare-fun m!3400449 () Bool)

(assert (=> b!3099699 m!3400449))

(declare-fun m!3400451 () Bool)

(assert (=> b!3099699 m!3400451))

(declare-fun m!3400453 () Bool)

(assert (=> b!3099699 m!3400453))

(assert (=> b!3099699 m!3400445))

(declare-fun m!3400455 () Bool)

(assert (=> b!3099699 m!3400455))

(declare-fun m!3400457 () Bool)

(assert (=> b!3099699 m!3400457))

(declare-fun m!3400459 () Bool)

(assert (=> b!3099699 m!3400459))

(declare-fun m!3400461 () Bool)

(assert (=> b!3099698 m!3400461))

(declare-fun m!3400463 () Bool)

(assert (=> b!3099700 m!3400463))

(declare-fun m!3400465 () Bool)

(assert (=> b!3099700 m!3400465))

(declare-fun m!3400467 () Bool)

(assert (=> b!3099700 m!3400467))

(declare-fun m!3400469 () Bool)

(assert (=> b!3099700 m!3400469))

(declare-fun m!3400471 () Bool)

(assert (=> b!3099700 m!3400471))

(declare-fun m!3400473 () Bool)

(assert (=> b!3099700 m!3400473))

(declare-fun m!3400475 () Bool)

(assert (=> b!3099700 m!3400475))

(assert (=> b!3099700 m!3400463))

(declare-fun m!3400477 () Bool)

(assert (=> b!3099700 m!3400477))

(declare-fun m!3400479 () Bool)

(assert (=> b!3099700 m!3400479))

(declare-fun m!3400481 () Bool)

(assert (=> b!3099700 m!3400481))

(declare-fun m!3400483 () Bool)

(assert (=> b!3099693 m!3400483))

(declare-fun m!3400485 () Bool)

(assert (=> b!3099697 m!3400485))

(declare-fun m!3400487 () Bool)

(assert (=> b!3099688 m!3400487))

(check-sat (not b!3099696) (not b!3099694) (not start!294144) (not b!3099701) (not b!3099692) (not b!3099689) (not b!3099695) tp_is_empty!16677 (not b!3099700) (not b!3099698) (not b!3099688) (not b!3099699) (not b!3099697) (not b!3099693) (not b!3099690))
(check-sat)
(get-model)

(declare-fun d!860874 () Bool)

(assert (=> d!860874 (= (isEmptyExpr!614 lt!1055554) ((_ is EmptyExpr!9557) lt!1055554))))

(assert (=> b!3099690 d!860874))

(declare-fun d!860876 () Bool)

(assert (=> d!860876 (= (isEmptyExpr!614 lt!1055560) ((_ is EmptyExpr!9557) lt!1055560))))

(assert (=> b!3099697 d!860876))

(declare-fun b!3099724 () Bool)

(declare-fun e!1937205 () Bool)

(declare-fun e!1937208 () Bool)

(assert (=> b!3099724 (= e!1937205 e!1937208)))

(declare-fun res!1269849 () Bool)

(assert (=> b!3099724 (=> (not res!1269849) (not e!1937208))))

(declare-fun call!218387 () Bool)

(assert (=> b!3099724 (= res!1269849 call!218387)))

(declare-fun b!3099726 () Bool)

(declare-fun e!1937202 () Bool)

(declare-fun e!1937203 () Bool)

(assert (=> b!3099726 (= e!1937202 e!1937203)))

(declare-fun c!517807 () Bool)

(assert (=> b!3099726 (= c!517807 ((_ is Star!9557) r!17423))))

(declare-fun b!3099727 () Bool)

(declare-fun e!1937207 () Bool)

(assert (=> b!3099727 (= e!1937203 e!1937207)))

(declare-fun res!1269852 () Bool)

(declare-fun nullable!3203 (Regex!9557) Bool)

(assert (=> b!3099727 (= res!1269852 (not (nullable!3203 (reg!9886 r!17423))))))

(assert (=> b!3099727 (=> (not res!1269852) (not e!1937207))))

(declare-fun b!3099728 () Bool)

(declare-fun call!218388 () Bool)

(assert (=> b!3099728 (= e!1937208 call!218388)))

(declare-fun b!3099729 () Bool)

(declare-fun call!218389 () Bool)

(assert (=> b!3099729 (= e!1937207 call!218389)))

(declare-fun bm!218382 () Bool)

(declare-fun c!517806 () Bool)

(assert (=> bm!218382 (= call!218389 (validRegex!4290 (ite c!517807 (reg!9886 r!17423) (ite c!517806 (regOne!19627 r!17423) (regTwo!19626 r!17423)))))))

(declare-fun b!3099730 () Bool)

(declare-fun e!1937206 () Bool)

(assert (=> b!3099730 (= e!1937203 e!1937206)))

(assert (=> b!3099730 (= c!517806 ((_ is Union!9557) r!17423))))

(declare-fun b!3099725 () Bool)

(declare-fun res!1269853 () Bool)

(assert (=> b!3099725 (=> res!1269853 e!1937205)))

(assert (=> b!3099725 (= res!1269853 (not ((_ is Concat!14878) r!17423)))))

(assert (=> b!3099725 (= e!1937206 e!1937205)))

(declare-fun d!860878 () Bool)

(declare-fun res!1269850 () Bool)

(assert (=> d!860878 (=> res!1269850 e!1937202)))

(assert (=> d!860878 (= res!1269850 ((_ is ElementMatch!9557) r!17423))))

(assert (=> d!860878 (= (validRegex!4290 r!17423) e!1937202)))

(declare-fun bm!218383 () Bool)

(assert (=> bm!218383 (= call!218387 (validRegex!4290 (ite c!517806 (regTwo!19627 r!17423) (regOne!19626 r!17423))))))

(declare-fun b!3099731 () Bool)

(declare-fun res!1269851 () Bool)

(declare-fun e!1937204 () Bool)

(assert (=> b!3099731 (=> (not res!1269851) (not e!1937204))))

(assert (=> b!3099731 (= res!1269851 call!218388)))

(assert (=> b!3099731 (= e!1937206 e!1937204)))

(declare-fun bm!218384 () Bool)

(assert (=> bm!218384 (= call!218388 call!218389)))

(declare-fun b!3099732 () Bool)

(assert (=> b!3099732 (= e!1937204 call!218387)))

(assert (= (and d!860878 (not res!1269850)) b!3099726))

(assert (= (and b!3099726 c!517807) b!3099727))

(assert (= (and b!3099726 (not c!517807)) b!3099730))

(assert (= (and b!3099727 res!1269852) b!3099729))

(assert (= (and b!3099730 c!517806) b!3099731))

(assert (= (and b!3099730 (not c!517806)) b!3099725))

(assert (= (and b!3099731 res!1269851) b!3099732))

(assert (= (and b!3099725 (not res!1269853)) b!3099724))

(assert (= (and b!3099724 res!1269849) b!3099728))

(assert (= (or b!3099731 b!3099728) bm!218384))

(assert (= (or b!3099732 b!3099724) bm!218383))

(assert (= (or b!3099729 bm!218384) bm!218382))

(declare-fun m!3400489 () Bool)

(assert (=> b!3099727 m!3400489))

(declare-fun m!3400491 () Bool)

(assert (=> bm!218382 m!3400491))

(declare-fun m!3400493 () Bool)

(assert (=> bm!218383 m!3400493))

(assert (=> start!294144 d!860878))

(declare-fun d!860884 () Bool)

(assert (=> d!860884 (= (isEmpty!19647 s!11993) ((_ is Nil!35298) s!11993))))

(assert (=> b!3099693 d!860884))

(declare-fun b!3099807 () Bool)

(declare-fun res!1269899 () Bool)

(declare-fun e!1937246 () Bool)

(assert (=> b!3099807 (=> (not res!1269899) (not e!1937246))))

(declare-fun call!218395 () Bool)

(assert (=> b!3099807 (= res!1269899 (not call!218395))))

(declare-fun b!3099808 () Bool)

(declare-fun res!1269905 () Bool)

(assert (=> b!3099808 (=> (not res!1269905) (not e!1937246))))

(declare-fun tail!5083 (List!35422) List!35422)

(assert (=> b!3099808 (= res!1269905 (isEmpty!19647 (tail!5083 s!11993)))))

(declare-fun b!3099809 () Bool)

(declare-fun res!1269900 () Bool)

(declare-fun e!1937252 () Bool)

(assert (=> b!3099809 (=> res!1269900 e!1937252)))

(assert (=> b!3099809 (= res!1269900 (not ((_ is ElementMatch!9557) lt!1055561)))))

(declare-fun e!1937250 () Bool)

(assert (=> b!3099809 (= e!1937250 e!1937252)))

(declare-fun b!3099810 () Bool)

(declare-fun e!1937247 () Bool)

(assert (=> b!3099810 (= e!1937247 e!1937250)))

(declare-fun c!517823 () Bool)

(assert (=> b!3099810 (= c!517823 ((_ is EmptyLang!9557) lt!1055561))))

(declare-fun b!3099811 () Bool)

(declare-fun res!1269902 () Bool)

(declare-fun e!1937248 () Bool)

(assert (=> b!3099811 (=> res!1269902 e!1937248)))

(assert (=> b!3099811 (= res!1269902 (not (isEmpty!19647 (tail!5083 s!11993))))))

(declare-fun bm!218390 () Bool)

(assert (=> bm!218390 (= call!218395 (isEmpty!19647 s!11993))))

(declare-fun b!3099812 () Bool)

(declare-fun head!6857 (List!35422) C!19300)

(assert (=> b!3099812 (= e!1937248 (not (= (head!6857 s!11993) (c!517801 lt!1055561))))))

(declare-fun b!3099813 () Bool)

(declare-fun e!1937249 () Bool)

(assert (=> b!3099813 (= e!1937249 (nullable!3203 lt!1055561))))

(declare-fun b!3099815 () Bool)

(declare-fun lt!1055574 () Bool)

(assert (=> b!3099815 (= e!1937250 (not lt!1055574))))

(declare-fun b!3099816 () Bool)

(declare-fun e!1937251 () Bool)

(assert (=> b!3099816 (= e!1937251 e!1937248)))

(declare-fun res!1269904 () Bool)

(assert (=> b!3099816 (=> res!1269904 e!1937248)))

(assert (=> b!3099816 (= res!1269904 call!218395)))

(declare-fun b!3099817 () Bool)

(assert (=> b!3099817 (= e!1937247 (= lt!1055574 call!218395))))

(declare-fun b!3099818 () Bool)

(declare-fun res!1269901 () Bool)

(assert (=> b!3099818 (=> res!1269901 e!1937252)))

(assert (=> b!3099818 (= res!1269901 e!1937246)))

(declare-fun res!1269898 () Bool)

(assert (=> b!3099818 (=> (not res!1269898) (not e!1937246))))

(assert (=> b!3099818 (= res!1269898 lt!1055574)))

(declare-fun b!3099819 () Bool)

(declare-fun derivativeStep!2798 (Regex!9557 C!19300) Regex!9557)

(assert (=> b!3099819 (= e!1937249 (matchR!4439 (derivativeStep!2798 lt!1055561 (head!6857 s!11993)) (tail!5083 s!11993)))))

(declare-fun b!3099820 () Bool)

(assert (=> b!3099820 (= e!1937246 (= (head!6857 s!11993) (c!517801 lt!1055561)))))

(declare-fun b!3099814 () Bool)

(assert (=> b!3099814 (= e!1937252 e!1937251)))

(declare-fun res!1269903 () Bool)

(assert (=> b!3099814 (=> (not res!1269903) (not e!1937251))))

(assert (=> b!3099814 (= res!1269903 (not lt!1055574))))

(declare-fun d!860886 () Bool)

(assert (=> d!860886 e!1937247))

(declare-fun c!517825 () Bool)

(assert (=> d!860886 (= c!517825 ((_ is EmptyExpr!9557) lt!1055561))))

(assert (=> d!860886 (= lt!1055574 e!1937249)))

(declare-fun c!517824 () Bool)

(assert (=> d!860886 (= c!517824 (isEmpty!19647 s!11993))))

(assert (=> d!860886 (validRegex!4290 lt!1055561)))

(assert (=> d!860886 (= (matchR!4439 lt!1055561 s!11993) lt!1055574)))

(assert (= (and d!860886 c!517824) b!3099813))

(assert (= (and d!860886 (not c!517824)) b!3099819))

(assert (= (and d!860886 c!517825) b!3099817))

(assert (= (and d!860886 (not c!517825)) b!3099810))

(assert (= (and b!3099810 c!517823) b!3099815))

(assert (= (and b!3099810 (not c!517823)) b!3099809))

(assert (= (and b!3099809 (not res!1269900)) b!3099818))

(assert (= (and b!3099818 res!1269898) b!3099807))

(assert (= (and b!3099807 res!1269899) b!3099808))

(assert (= (and b!3099808 res!1269905) b!3099820))

(assert (= (and b!3099818 (not res!1269901)) b!3099814))

(assert (= (and b!3099814 res!1269903) b!3099816))

(assert (= (and b!3099816 (not res!1269904)) b!3099811))

(assert (= (and b!3099811 (not res!1269902)) b!3099812))

(assert (= (or b!3099817 b!3099807 b!3099816) bm!218390))

(declare-fun m!3400523 () Bool)

(assert (=> b!3099812 m!3400523))

(assert (=> b!3099820 m!3400523))

(declare-fun m!3400525 () Bool)

(assert (=> b!3099813 m!3400525))

(declare-fun m!3400527 () Bool)

(assert (=> b!3099808 m!3400527))

(assert (=> b!3099808 m!3400527))

(declare-fun m!3400529 () Bool)

(assert (=> b!3099808 m!3400529))

(assert (=> b!3099819 m!3400523))

(assert (=> b!3099819 m!3400523))

(declare-fun m!3400531 () Bool)

(assert (=> b!3099819 m!3400531))

(assert (=> b!3099819 m!3400527))

(assert (=> b!3099819 m!3400531))

(assert (=> b!3099819 m!3400527))

(declare-fun m!3400533 () Bool)

(assert (=> b!3099819 m!3400533))

(assert (=> b!3099811 m!3400527))

(assert (=> b!3099811 m!3400527))

(assert (=> b!3099811 m!3400529))

(assert (=> d!860886 m!3400483))

(declare-fun m!3400535 () Bool)

(assert (=> d!860886 m!3400535))

(assert (=> bm!218390 m!3400483))

(assert (=> b!3099698 d!860886))

(declare-fun bs!535632 () Bool)

(declare-fun b!3099926 () Bool)

(assert (= bs!535632 (and b!3099926 b!3099699)))

(declare-fun lambda!114852 () Int)

(assert (=> bs!535632 (not (= lambda!114852 lambda!114833))))

(assert (=> bs!535632 (not (= lambda!114852 lambda!114834))))

(assert (=> b!3099926 true))

(assert (=> b!3099926 true))

(declare-fun bs!535639 () Bool)

(declare-fun b!3099927 () Bool)

(assert (= bs!535639 (and b!3099927 b!3099699)))

(declare-fun lambda!114855 () Int)

(assert (=> bs!535639 (not (= lambda!114855 lambda!114833))))

(assert (=> bs!535639 (= (and (= (regOne!19626 lt!1055561) lt!1055560) (= (regTwo!19626 lt!1055561) lt!1055554)) (= lambda!114855 lambda!114834))))

(declare-fun bs!535640 () Bool)

(assert (= bs!535640 (and b!3099927 b!3099926)))

(assert (=> bs!535640 (not (= lambda!114855 lambda!114852))))

(assert (=> b!3099927 true))

(assert (=> b!3099927 true))

(declare-fun b!3099920 () Bool)

(declare-fun res!1269963 () Bool)

(declare-fun e!1937314 () Bool)

(assert (=> b!3099920 (=> res!1269963 e!1937314)))

(declare-fun call!218404 () Bool)

(assert (=> b!3099920 (= res!1269963 call!218404)))

(declare-fun e!1937308 () Bool)

(assert (=> b!3099920 (= e!1937308 e!1937314)))

(declare-fun d!860898 () Bool)

(declare-fun c!517849 () Bool)

(assert (=> d!860898 (= c!517849 ((_ is EmptyExpr!9557) lt!1055561))))

(declare-fun e!1937309 () Bool)

(assert (=> d!860898 (= (matchRSpec!1694 lt!1055561 s!11993) e!1937309)))

(declare-fun call!218405 () Bool)

(declare-fun bm!218399 () Bool)

(declare-fun c!517850 () Bool)

(assert (=> bm!218399 (= call!218405 (Exists!1820 (ite c!517850 lambda!114852 lambda!114855)))))

(declare-fun b!3099921 () Bool)

(declare-fun c!517848 () Bool)

(assert (=> b!3099921 (= c!517848 ((_ is Union!9557) lt!1055561))))

(declare-fun e!1937313 () Bool)

(declare-fun e!1937312 () Bool)

(assert (=> b!3099921 (= e!1937313 e!1937312)))

(declare-fun b!3099922 () Bool)

(assert (=> b!3099922 (= e!1937312 e!1937308)))

(assert (=> b!3099922 (= c!517850 ((_ is Star!9557) lt!1055561))))

(declare-fun bm!218400 () Bool)

(assert (=> bm!218400 (= call!218404 (isEmpty!19647 s!11993))))

(declare-fun b!3099923 () Bool)

(assert (=> b!3099923 (= e!1937309 call!218404)))

(declare-fun b!3099924 () Bool)

(declare-fun e!1937311 () Bool)

(assert (=> b!3099924 (= e!1937311 (matchRSpec!1694 (regTwo!19627 lt!1055561) s!11993))))

(declare-fun b!3099925 () Bool)

(assert (=> b!3099925 (= e!1937313 (= s!11993 (Cons!35298 (c!517801 lt!1055561) Nil!35298)))))

(assert (=> b!3099926 (= e!1937314 call!218405)))

(assert (=> b!3099927 (= e!1937308 call!218405)))

(declare-fun b!3099928 () Bool)

(assert (=> b!3099928 (= e!1937312 e!1937311)))

(declare-fun res!1269961 () Bool)

(assert (=> b!3099928 (= res!1269961 (matchRSpec!1694 (regOne!19627 lt!1055561) s!11993))))

(assert (=> b!3099928 (=> res!1269961 e!1937311)))

(declare-fun b!3099929 () Bool)

(declare-fun e!1937310 () Bool)

(assert (=> b!3099929 (= e!1937309 e!1937310)))

(declare-fun res!1269962 () Bool)

(assert (=> b!3099929 (= res!1269962 (not ((_ is EmptyLang!9557) lt!1055561)))))

(assert (=> b!3099929 (=> (not res!1269962) (not e!1937310))))

(declare-fun b!3099930 () Bool)

(declare-fun c!517851 () Bool)

(assert (=> b!3099930 (= c!517851 ((_ is ElementMatch!9557) lt!1055561))))

(assert (=> b!3099930 (= e!1937310 e!1937313)))

(assert (= (and d!860898 c!517849) b!3099923))

(assert (= (and d!860898 (not c!517849)) b!3099929))

(assert (= (and b!3099929 res!1269962) b!3099930))

(assert (= (and b!3099930 c!517851) b!3099925))

(assert (= (and b!3099930 (not c!517851)) b!3099921))

(assert (= (and b!3099921 c!517848) b!3099928))

(assert (= (and b!3099921 (not c!517848)) b!3099922))

(assert (= (and b!3099928 (not res!1269961)) b!3099924))

(assert (= (and b!3099922 c!517850) b!3099920))

(assert (= (and b!3099922 (not c!517850)) b!3099927))

(assert (= (and b!3099920 (not res!1269963)) b!3099926))

(assert (= (or b!3099926 b!3099927) bm!218399))

(assert (= (or b!3099923 b!3099920) bm!218400))

(declare-fun m!3400589 () Bool)

(assert (=> bm!218399 m!3400589))

(assert (=> bm!218400 m!3400483))

(declare-fun m!3400591 () Bool)

(assert (=> b!3099924 m!3400591))

(declare-fun m!3400593 () Bool)

(assert (=> b!3099928 m!3400593))

(assert (=> b!3099699 d!860898))

(declare-fun bs!535643 () Bool)

(declare-fun d!860910 () Bool)

(assert (= bs!535643 (and d!860910 b!3099699)))

(declare-fun lambda!114858 () Int)

(assert (=> bs!535643 (= lambda!114858 lambda!114833)))

(assert (=> bs!535643 (not (= lambda!114858 lambda!114834))))

(declare-fun bs!535644 () Bool)

(assert (= bs!535644 (and d!860910 b!3099926)))

(assert (=> bs!535644 (not (= lambda!114858 lambda!114852))))

(declare-fun bs!535645 () Bool)

(assert (= bs!535645 (and d!860910 b!3099927)))

(assert (=> bs!535645 (not (= lambda!114858 lambda!114855))))

(assert (=> d!860910 true))

(assert (=> d!860910 true))

(assert (=> d!860910 true))

(assert (=> d!860910 (= (isDefined!5395 (findConcatSeparation!1238 lt!1055560 lt!1055554 Nil!35298 s!11993 s!11993)) (Exists!1820 lambda!114858))))

(declare-fun lt!1055604 () Unit!49553)

(declare-fun choose!18342 (Regex!9557 Regex!9557 List!35422) Unit!49553)

(assert (=> d!860910 (= lt!1055604 (choose!18342 lt!1055560 lt!1055554 s!11993))))

(assert (=> d!860910 (validRegex!4290 lt!1055560)))

(assert (=> d!860910 (= (lemmaFindConcatSeparationEquivalentToExists!1008 lt!1055560 lt!1055554 s!11993) lt!1055604)))

(declare-fun bs!535646 () Bool)

(assert (= bs!535646 d!860910))

(assert (=> bs!535646 m!3400447))

(declare-fun m!3400665 () Bool)

(assert (=> bs!535646 m!3400665))

(declare-fun m!3400667 () Bool)

(assert (=> bs!535646 m!3400667))

(declare-fun m!3400669 () Bool)

(assert (=> bs!535646 m!3400669))

(assert (=> bs!535646 m!3400447))

(declare-fun m!3400671 () Bool)

(assert (=> bs!535646 m!3400671))

(assert (=> b!3099699 d!860910))

(declare-fun d!860930 () Bool)

(declare-fun choose!18343 (Int) Bool)

(assert (=> d!860930 (= (Exists!1820 lambda!114833) (choose!18343 lambda!114833))))

(declare-fun bs!535647 () Bool)

(assert (= bs!535647 d!860930))

(declare-fun m!3400673 () Bool)

(assert (=> bs!535647 m!3400673))

(assert (=> b!3099699 d!860930))

(declare-fun d!860932 () Bool)

(declare-fun isEmpty!19649 (Option!6844) Bool)

(assert (=> d!860932 (= (isDefined!5395 lt!1055549) (not (isEmpty!19649 lt!1055549)))))

(declare-fun bs!535648 () Bool)

(assert (= bs!535648 d!860932))

(declare-fun m!3400681 () Bool)

(assert (=> bs!535648 m!3400681))

(assert (=> b!3099699 d!860932))

(declare-fun d!860938 () Bool)

(assert (=> d!860938 (= (Exists!1820 lambda!114834) (choose!18343 lambda!114834))))

(declare-fun bs!535649 () Bool)

(assert (= bs!535649 d!860938))

(declare-fun m!3400683 () Bool)

(assert (=> bs!535649 m!3400683))

(assert (=> b!3099699 d!860938))

(declare-fun bs!535652 () Bool)

(declare-fun d!860940 () Bool)

(assert (= bs!535652 (and d!860940 b!3099927)))

(declare-fun lambda!114864 () Int)

(assert (=> bs!535652 (not (= lambda!114864 lambda!114855))))

(declare-fun bs!535655 () Bool)

(assert (= bs!535655 (and d!860940 d!860910)))

(assert (=> bs!535655 (= lambda!114864 lambda!114858)))

(declare-fun bs!535657 () Bool)

(assert (= bs!535657 (and d!860940 b!3099926)))

(assert (=> bs!535657 (not (= lambda!114864 lambda!114852))))

(declare-fun bs!535658 () Bool)

(assert (= bs!535658 (and d!860940 b!3099699)))

(assert (=> bs!535658 (not (= lambda!114864 lambda!114834))))

(assert (=> bs!535658 (= lambda!114864 lambda!114833)))

(assert (=> d!860940 true))

(assert (=> d!860940 true))

(assert (=> d!860940 true))

(declare-fun lambda!114866 () Int)

(assert (=> bs!535652 (= (and (= lt!1055560 (regOne!19626 lt!1055561)) (= lt!1055554 (regTwo!19626 lt!1055561))) (= lambda!114866 lambda!114855))))

(assert (=> bs!535655 (not (= lambda!114866 lambda!114858))))

(assert (=> bs!535657 (not (= lambda!114866 lambda!114852))))

(assert (=> bs!535658 (= lambda!114866 lambda!114834)))

(declare-fun bs!535665 () Bool)

(assert (= bs!535665 d!860940))

(assert (=> bs!535665 (not (= lambda!114866 lambda!114864))))

(assert (=> bs!535658 (not (= lambda!114866 lambda!114833))))

(assert (=> d!860940 true))

(assert (=> d!860940 true))

(assert (=> d!860940 true))

(assert (=> d!860940 (= (Exists!1820 lambda!114864) (Exists!1820 lambda!114866))))

(declare-fun lt!1055631 () Unit!49553)

(declare-fun choose!18344 (Regex!9557 Regex!9557 List!35422) Unit!49553)

(assert (=> d!860940 (= lt!1055631 (choose!18344 lt!1055560 lt!1055554 s!11993))))

(assert (=> d!860940 (validRegex!4290 lt!1055560)))

(assert (=> d!860940 (= (lemmaExistCutMatchRandMatchRSpecEquivalent!574 lt!1055560 lt!1055554 s!11993) lt!1055631)))

(declare-fun m!3400725 () Bool)

(assert (=> bs!535665 m!3400725))

(declare-fun m!3400729 () Bool)

(assert (=> bs!535665 m!3400729))

(declare-fun m!3400731 () Bool)

(assert (=> bs!535665 m!3400731))

(assert (=> bs!535665 m!3400667))

(assert (=> b!3099699 d!860940))

(declare-fun d!860950 () Bool)

(assert (=> d!860950 (= (matchR!4439 lt!1055561 s!11993) (matchRSpec!1694 lt!1055561 s!11993))))

(declare-fun lt!1055636 () Unit!49553)

(declare-fun choose!18345 (Regex!9557 List!35422) Unit!49553)

(assert (=> d!860950 (= lt!1055636 (choose!18345 lt!1055561 s!11993))))

(assert (=> d!860950 (validRegex!4290 lt!1055561)))

(assert (=> d!860950 (= (mainMatchTheorem!1694 lt!1055561 s!11993) lt!1055636)))

(declare-fun bs!535667 () Bool)

(assert (= bs!535667 d!860950))

(assert (=> bs!535667 m!3400461))

(assert (=> bs!535667 m!3400451))

(declare-fun m!3400737 () Bool)

(assert (=> bs!535667 m!3400737))

(assert (=> bs!535667 m!3400535))

(assert (=> b!3099699 d!860950))

(declare-fun b!3100244 () Bool)

(declare-fun e!1937485 () Option!6844)

(declare-fun e!1937484 () Option!6844)

(assert (=> b!3100244 (= e!1937485 e!1937484)))

(declare-fun c!517935 () Bool)

(assert (=> b!3100244 (= c!517935 ((_ is Nil!35298) s!11993))))

(declare-fun b!3100245 () Bool)

(declare-fun res!1270076 () Bool)

(declare-fun e!1937487 () Bool)

(assert (=> b!3100245 (=> (not res!1270076) (not e!1937487))))

(declare-fun lt!1055643 () Option!6844)

(assert (=> b!3100245 (= res!1270076 (matchR!4439 lt!1055560 (_1!20244 (get!11088 lt!1055643))))))

(declare-fun b!3100246 () Bool)

(assert (=> b!3100246 (= e!1937484 None!6843)))

(declare-fun b!3100247 () Bool)

(declare-fun e!1937483 () Bool)

(assert (=> b!3100247 (= e!1937483 (not (isDefined!5395 lt!1055643)))))

(declare-fun b!3100248 () Bool)

(declare-fun res!1270077 () Bool)

(assert (=> b!3100248 (=> (not res!1270077) (not e!1937487))))

(assert (=> b!3100248 (= res!1270077 (matchR!4439 lt!1055554 (_2!20244 (get!11088 lt!1055643))))))

(declare-fun b!3100249 () Bool)

(assert (=> b!3100249 (= e!1937485 (Some!6843 (tuple2!34225 Nil!35298 s!11993)))))

(declare-fun b!3100250 () Bool)

(declare-fun e!1937486 () Bool)

(assert (=> b!3100250 (= e!1937486 (matchR!4439 lt!1055554 s!11993))))

(declare-fun d!860958 () Bool)

(assert (=> d!860958 e!1937483))

(declare-fun res!1270080 () Bool)

(assert (=> d!860958 (=> res!1270080 e!1937483)))

(assert (=> d!860958 (= res!1270080 e!1937487)))

(declare-fun res!1270079 () Bool)

(assert (=> d!860958 (=> (not res!1270079) (not e!1937487))))

(assert (=> d!860958 (= res!1270079 (isDefined!5395 lt!1055643))))

(assert (=> d!860958 (= lt!1055643 e!1937485)))

(declare-fun c!517936 () Bool)

(assert (=> d!860958 (= c!517936 e!1937486)))

(declare-fun res!1270078 () Bool)

(assert (=> d!860958 (=> (not res!1270078) (not e!1937486))))

(assert (=> d!860958 (= res!1270078 (matchR!4439 lt!1055560 Nil!35298))))

(assert (=> d!860958 (validRegex!4290 lt!1055560)))

(assert (=> d!860958 (= (findConcatSeparation!1238 lt!1055560 lt!1055554 Nil!35298 s!11993 s!11993) lt!1055643)))

(declare-fun b!3100251 () Bool)

(declare-fun lt!1055644 () Unit!49553)

(declare-fun lt!1055645 () Unit!49553)

(assert (=> b!3100251 (= lt!1055644 lt!1055645)))

(assert (=> b!3100251 (= (++!8499 (++!8499 Nil!35298 (Cons!35298 (h!40718 s!11993) Nil!35298)) (t!234487 s!11993)) s!11993)))

(declare-fun lemmaMoveElementToOtherListKeepsConcatEq!1094 (List!35422 C!19300 List!35422 List!35422) Unit!49553)

(assert (=> b!3100251 (= lt!1055645 (lemmaMoveElementToOtherListKeepsConcatEq!1094 Nil!35298 (h!40718 s!11993) (t!234487 s!11993) s!11993))))

(assert (=> b!3100251 (= e!1937484 (findConcatSeparation!1238 lt!1055560 lt!1055554 (++!8499 Nil!35298 (Cons!35298 (h!40718 s!11993) Nil!35298)) (t!234487 s!11993) s!11993))))

(declare-fun b!3100252 () Bool)

(assert (=> b!3100252 (= e!1937487 (= (++!8499 (_1!20244 (get!11088 lt!1055643)) (_2!20244 (get!11088 lt!1055643))) s!11993))))

(assert (= (and d!860958 res!1270078) b!3100250))

(assert (= (and d!860958 c!517936) b!3100249))

(assert (= (and d!860958 (not c!517936)) b!3100244))

(assert (= (and b!3100244 c!517935) b!3100246))

(assert (= (and b!3100244 (not c!517935)) b!3100251))

(assert (= (and d!860958 res!1270079) b!3100245))

(assert (= (and b!3100245 res!1270076) b!3100248))

(assert (= (and b!3100248 res!1270077) b!3100252))

(assert (= (and d!860958 (not res!1270080)) b!3100247))

(declare-fun m!3400739 () Bool)

(assert (=> b!3100250 m!3400739))

(declare-fun m!3400741 () Bool)

(assert (=> d!860958 m!3400741))

(declare-fun m!3400743 () Bool)

(assert (=> d!860958 m!3400743))

(assert (=> d!860958 m!3400667))

(assert (=> b!3100247 m!3400741))

(declare-fun m!3400745 () Bool)

(assert (=> b!3100252 m!3400745))

(declare-fun m!3400747 () Bool)

(assert (=> b!3100252 m!3400747))

(declare-fun m!3400749 () Bool)

(assert (=> b!3100251 m!3400749))

(assert (=> b!3100251 m!3400749))

(declare-fun m!3400751 () Bool)

(assert (=> b!3100251 m!3400751))

(declare-fun m!3400753 () Bool)

(assert (=> b!3100251 m!3400753))

(assert (=> b!3100251 m!3400749))

(declare-fun m!3400755 () Bool)

(assert (=> b!3100251 m!3400755))

(assert (=> b!3100245 m!3400745))

(declare-fun m!3400757 () Bool)

(assert (=> b!3100245 m!3400757))

(assert (=> b!3100248 m!3400745))

(declare-fun m!3400759 () Bool)

(assert (=> b!3100248 m!3400759))

(assert (=> b!3099699 d!860958))

(declare-fun d!860960 () Bool)

(assert (=> d!860960 (= (isEmptyLang!608 lt!1055554) ((_ is EmptyLang!9557) lt!1055554))))

(assert (=> b!3099688 d!860960))

(declare-fun bs!535668 () Bool)

(declare-fun b!3100259 () Bool)

(assert (= bs!535668 (and b!3100259 b!3099927)))

(declare-fun lambda!114867 () Int)

(assert (=> bs!535668 (not (= lambda!114867 lambda!114855))))

(declare-fun bs!535669 () Bool)

(assert (= bs!535669 (and b!3100259 d!860910)))

(assert (=> bs!535669 (not (= lambda!114867 lambda!114858))))

(declare-fun bs!535670 () Bool)

(assert (= bs!535670 (and b!3100259 d!860940)))

(assert (=> bs!535670 (not (= lambda!114867 lambda!114866))))

(declare-fun bs!535671 () Bool)

(assert (= bs!535671 (and b!3100259 b!3099926)))

(assert (=> bs!535671 (= (and (= (reg!9886 r!17423) (reg!9886 lt!1055561)) (= r!17423 lt!1055561)) (= lambda!114867 lambda!114852))))

(declare-fun bs!535672 () Bool)

(assert (= bs!535672 (and b!3100259 b!3099699)))

(assert (=> bs!535672 (not (= lambda!114867 lambda!114834))))

(assert (=> bs!535670 (not (= lambda!114867 lambda!114864))))

(assert (=> bs!535672 (not (= lambda!114867 lambda!114833))))

(assert (=> b!3100259 true))

(assert (=> b!3100259 true))

(declare-fun bs!535673 () Bool)

(declare-fun b!3100260 () Bool)

(assert (= bs!535673 (and b!3100260 b!3099927)))

(declare-fun lambda!114868 () Int)

(assert (=> bs!535673 (= (and (= (regOne!19626 r!17423) (regOne!19626 lt!1055561)) (= (regTwo!19626 r!17423) (regTwo!19626 lt!1055561))) (= lambda!114868 lambda!114855))))

(declare-fun bs!535674 () Bool)

(assert (= bs!535674 (and b!3100260 d!860910)))

(assert (=> bs!535674 (not (= lambda!114868 lambda!114858))))

(declare-fun bs!535675 () Bool)

(assert (= bs!535675 (and b!3100260 b!3100259)))

(assert (=> bs!535675 (not (= lambda!114868 lambda!114867))))

(declare-fun bs!535676 () Bool)

(assert (= bs!535676 (and b!3100260 d!860940)))

(assert (=> bs!535676 (= (and (= (regOne!19626 r!17423) lt!1055560) (= (regTwo!19626 r!17423) lt!1055554)) (= lambda!114868 lambda!114866))))

(declare-fun bs!535677 () Bool)

(assert (= bs!535677 (and b!3100260 b!3099926)))

(assert (=> bs!535677 (not (= lambda!114868 lambda!114852))))

(declare-fun bs!535678 () Bool)

(assert (= bs!535678 (and b!3100260 b!3099699)))

(assert (=> bs!535678 (= (and (= (regOne!19626 r!17423) lt!1055560) (= (regTwo!19626 r!17423) lt!1055554)) (= lambda!114868 lambda!114834))))

(assert (=> bs!535676 (not (= lambda!114868 lambda!114864))))

(assert (=> bs!535678 (not (= lambda!114868 lambda!114833))))

(assert (=> b!3100260 true))

(assert (=> b!3100260 true))

(declare-fun b!3100253 () Bool)

(declare-fun res!1270083 () Bool)

(declare-fun e!1937494 () Bool)

(assert (=> b!3100253 (=> res!1270083 e!1937494)))

(declare-fun call!218453 () Bool)

(assert (=> b!3100253 (= res!1270083 call!218453)))

(declare-fun e!1937488 () Bool)

(assert (=> b!3100253 (= e!1937488 e!1937494)))

(declare-fun d!860962 () Bool)

(declare-fun c!517938 () Bool)

(assert (=> d!860962 (= c!517938 ((_ is EmptyExpr!9557) r!17423))))

(declare-fun e!1937489 () Bool)

(assert (=> d!860962 (= (matchRSpec!1694 r!17423 s!11993) e!1937489)))

(declare-fun call!218454 () Bool)

(declare-fun c!517939 () Bool)

(declare-fun bm!218448 () Bool)

(assert (=> bm!218448 (= call!218454 (Exists!1820 (ite c!517939 lambda!114867 lambda!114868)))))

(declare-fun b!3100254 () Bool)

(declare-fun c!517937 () Bool)

(assert (=> b!3100254 (= c!517937 ((_ is Union!9557) r!17423))))

(declare-fun e!1937493 () Bool)

(declare-fun e!1937492 () Bool)

(assert (=> b!3100254 (= e!1937493 e!1937492)))

(declare-fun b!3100255 () Bool)

(assert (=> b!3100255 (= e!1937492 e!1937488)))

(assert (=> b!3100255 (= c!517939 ((_ is Star!9557) r!17423))))

(declare-fun bm!218449 () Bool)

(assert (=> bm!218449 (= call!218453 (isEmpty!19647 s!11993))))

(declare-fun b!3100256 () Bool)

(assert (=> b!3100256 (= e!1937489 call!218453)))

(declare-fun b!3100257 () Bool)

(declare-fun e!1937491 () Bool)

(assert (=> b!3100257 (= e!1937491 (matchRSpec!1694 (regTwo!19627 r!17423) s!11993))))

(declare-fun b!3100258 () Bool)

(assert (=> b!3100258 (= e!1937493 (= s!11993 (Cons!35298 (c!517801 r!17423) Nil!35298)))))

(assert (=> b!3100259 (= e!1937494 call!218454)))

(assert (=> b!3100260 (= e!1937488 call!218454)))

(declare-fun b!3100261 () Bool)

(assert (=> b!3100261 (= e!1937492 e!1937491)))

(declare-fun res!1270081 () Bool)

(assert (=> b!3100261 (= res!1270081 (matchRSpec!1694 (regOne!19627 r!17423) s!11993))))

(assert (=> b!3100261 (=> res!1270081 e!1937491)))

(declare-fun b!3100262 () Bool)

(declare-fun e!1937490 () Bool)

(assert (=> b!3100262 (= e!1937489 e!1937490)))

(declare-fun res!1270082 () Bool)

(assert (=> b!3100262 (= res!1270082 (not ((_ is EmptyLang!9557) r!17423)))))

(assert (=> b!3100262 (=> (not res!1270082) (not e!1937490))))

(declare-fun b!3100263 () Bool)

(declare-fun c!517940 () Bool)

(assert (=> b!3100263 (= c!517940 ((_ is ElementMatch!9557) r!17423))))

(assert (=> b!3100263 (= e!1937490 e!1937493)))

(assert (= (and d!860962 c!517938) b!3100256))

(assert (= (and d!860962 (not c!517938)) b!3100262))

(assert (= (and b!3100262 res!1270082) b!3100263))

(assert (= (and b!3100263 c!517940) b!3100258))

(assert (= (and b!3100263 (not c!517940)) b!3100254))

(assert (= (and b!3100254 c!517937) b!3100261))

(assert (= (and b!3100254 (not c!517937)) b!3100255))

(assert (= (and b!3100261 (not res!1270081)) b!3100257))

(assert (= (and b!3100255 c!517939) b!3100253))

(assert (= (and b!3100255 (not c!517939)) b!3100260))

(assert (= (and b!3100253 (not res!1270083)) b!3100259))

(assert (= (or b!3100259 b!3100260) bm!218448))

(assert (= (or b!3100256 b!3100253) bm!218449))

(declare-fun m!3400761 () Bool)

(assert (=> bm!218448 m!3400761))

(assert (=> bm!218449 m!3400483))

(declare-fun m!3400763 () Bool)

(assert (=> b!3100257 m!3400763))

(declare-fun m!3400765 () Bool)

(assert (=> b!3100261 m!3400765))

(assert (=> b!3099689 d!860962))

(declare-fun b!3100264 () Bool)

(declare-fun res!1270085 () Bool)

(declare-fun e!1937495 () Bool)

(assert (=> b!3100264 (=> (not res!1270085) (not e!1937495))))

(declare-fun call!218455 () Bool)

(assert (=> b!3100264 (= res!1270085 (not call!218455))))

(declare-fun b!3100265 () Bool)

(declare-fun res!1270091 () Bool)

(assert (=> b!3100265 (=> (not res!1270091) (not e!1937495))))

(assert (=> b!3100265 (= res!1270091 (isEmpty!19647 (tail!5083 s!11993)))))

(declare-fun b!3100266 () Bool)

(declare-fun res!1270086 () Bool)

(declare-fun e!1937501 () Bool)

(assert (=> b!3100266 (=> res!1270086 e!1937501)))

(assert (=> b!3100266 (= res!1270086 (not ((_ is ElementMatch!9557) r!17423)))))

(declare-fun e!1937499 () Bool)

(assert (=> b!3100266 (= e!1937499 e!1937501)))

(declare-fun b!3100267 () Bool)

(declare-fun e!1937496 () Bool)

(assert (=> b!3100267 (= e!1937496 e!1937499)))

(declare-fun c!517941 () Bool)

(assert (=> b!3100267 (= c!517941 ((_ is EmptyLang!9557) r!17423))))

(declare-fun b!3100268 () Bool)

(declare-fun res!1270088 () Bool)

(declare-fun e!1937497 () Bool)

(assert (=> b!3100268 (=> res!1270088 e!1937497)))

(assert (=> b!3100268 (= res!1270088 (not (isEmpty!19647 (tail!5083 s!11993))))))

(declare-fun bm!218450 () Bool)

(assert (=> bm!218450 (= call!218455 (isEmpty!19647 s!11993))))

(declare-fun b!3100269 () Bool)

(assert (=> b!3100269 (= e!1937497 (not (= (head!6857 s!11993) (c!517801 r!17423))))))

(declare-fun b!3100270 () Bool)

(declare-fun e!1937498 () Bool)

(assert (=> b!3100270 (= e!1937498 (nullable!3203 r!17423))))

(declare-fun b!3100272 () Bool)

(declare-fun lt!1055646 () Bool)

(assert (=> b!3100272 (= e!1937499 (not lt!1055646))))

(declare-fun b!3100273 () Bool)

(declare-fun e!1937500 () Bool)

(assert (=> b!3100273 (= e!1937500 e!1937497)))

(declare-fun res!1270090 () Bool)

(assert (=> b!3100273 (=> res!1270090 e!1937497)))

(assert (=> b!3100273 (= res!1270090 call!218455)))

(declare-fun b!3100274 () Bool)

(assert (=> b!3100274 (= e!1937496 (= lt!1055646 call!218455))))

(declare-fun b!3100275 () Bool)

(declare-fun res!1270087 () Bool)

(assert (=> b!3100275 (=> res!1270087 e!1937501)))

(assert (=> b!3100275 (= res!1270087 e!1937495)))

(declare-fun res!1270084 () Bool)

(assert (=> b!3100275 (=> (not res!1270084) (not e!1937495))))

(assert (=> b!3100275 (= res!1270084 lt!1055646)))

(declare-fun b!3100276 () Bool)

(assert (=> b!3100276 (= e!1937498 (matchR!4439 (derivativeStep!2798 r!17423 (head!6857 s!11993)) (tail!5083 s!11993)))))

(declare-fun b!3100277 () Bool)

(assert (=> b!3100277 (= e!1937495 (= (head!6857 s!11993) (c!517801 r!17423)))))

(declare-fun b!3100271 () Bool)

(assert (=> b!3100271 (= e!1937501 e!1937500)))

(declare-fun res!1270089 () Bool)

(assert (=> b!3100271 (=> (not res!1270089) (not e!1937500))))

(assert (=> b!3100271 (= res!1270089 (not lt!1055646))))

(declare-fun d!860964 () Bool)

(assert (=> d!860964 e!1937496))

(declare-fun c!517943 () Bool)

(assert (=> d!860964 (= c!517943 ((_ is EmptyExpr!9557) r!17423))))

(assert (=> d!860964 (= lt!1055646 e!1937498)))

(declare-fun c!517942 () Bool)

(assert (=> d!860964 (= c!517942 (isEmpty!19647 s!11993))))

(assert (=> d!860964 (validRegex!4290 r!17423)))

(assert (=> d!860964 (= (matchR!4439 r!17423 s!11993) lt!1055646)))

(assert (= (and d!860964 c!517942) b!3100270))

(assert (= (and d!860964 (not c!517942)) b!3100276))

(assert (= (and d!860964 c!517943) b!3100274))

(assert (= (and d!860964 (not c!517943)) b!3100267))

(assert (= (and b!3100267 c!517941) b!3100272))

(assert (= (and b!3100267 (not c!517941)) b!3100266))

(assert (= (and b!3100266 (not res!1270086)) b!3100275))

(assert (= (and b!3100275 res!1270084) b!3100264))

(assert (= (and b!3100264 res!1270085) b!3100265))

(assert (= (and b!3100265 res!1270091) b!3100277))

(assert (= (and b!3100275 (not res!1270087)) b!3100271))

(assert (= (and b!3100271 res!1270089) b!3100273))

(assert (= (and b!3100273 (not res!1270090)) b!3100268))

(assert (= (and b!3100268 (not res!1270088)) b!3100269))

(assert (= (or b!3100274 b!3100264 b!3100273) bm!218450))

(assert (=> b!3100269 m!3400523))

(assert (=> b!3100277 m!3400523))

(declare-fun m!3400767 () Bool)

(assert (=> b!3100270 m!3400767))

(assert (=> b!3100265 m!3400527))

(assert (=> b!3100265 m!3400527))

(assert (=> b!3100265 m!3400529))

(assert (=> b!3100276 m!3400523))

(assert (=> b!3100276 m!3400523))

(declare-fun m!3400769 () Bool)

(assert (=> b!3100276 m!3400769))

(assert (=> b!3100276 m!3400527))

(assert (=> b!3100276 m!3400769))

(assert (=> b!3100276 m!3400527))

(declare-fun m!3400771 () Bool)

(assert (=> b!3100276 m!3400771))

(assert (=> b!3100268 m!3400527))

(assert (=> b!3100268 m!3400527))

(assert (=> b!3100268 m!3400529))

(assert (=> d!860964 m!3400483))

(assert (=> d!860964 m!3400429))

(assert (=> bm!218450 m!3400483))

(assert (=> b!3099689 d!860964))

(declare-fun d!860966 () Bool)

(assert (=> d!860966 (= (matchR!4439 r!17423 s!11993) (matchRSpec!1694 r!17423 s!11993))))

(declare-fun lt!1055647 () Unit!49553)

(assert (=> d!860966 (= lt!1055647 (choose!18345 r!17423 s!11993))))

(assert (=> d!860966 (validRegex!4290 r!17423)))

(assert (=> d!860966 (= (mainMatchTheorem!1694 r!17423 s!11993) lt!1055647)))

(declare-fun bs!535679 () Bool)

(assert (= bs!535679 d!860966))

(assert (=> bs!535679 m!3400433))

(assert (=> bs!535679 m!3400431))

(declare-fun m!3400773 () Bool)

(assert (=> bs!535679 m!3400773))

(assert (=> bs!535679 m!3400429))

(assert (=> b!3099689 d!860966))

(declare-fun d!860968 () Bool)

(assert (=> d!860968 (= (isEmptyLang!608 lt!1055560) ((_ is EmptyLang!9557) lt!1055560))))

(assert (=> b!3099694 d!860968))

(declare-fun b!3100328 () Bool)

(declare-fun e!1937542 () Regex!9557)

(declare-fun e!1937541 () Regex!9557)

(assert (=> b!3100328 (= e!1937542 e!1937541)))

(declare-fun c!517971 () Bool)

(assert (=> b!3100328 (= c!517971 ((_ is ElementMatch!9557) (regTwo!19626 r!17423)))))

(declare-fun b!3100329 () Bool)

(declare-fun c!517975 () Bool)

(declare-fun call!218471 () Bool)

(assert (=> b!3100329 (= c!517975 call!218471)))

(declare-fun e!1937538 () Regex!9557)

(declare-fun e!1937543 () Regex!9557)

(assert (=> b!3100329 (= e!1937538 e!1937543)))

(declare-fun b!3100330 () Bool)

(declare-fun lt!1055662 () Regex!9557)

(assert (=> b!3100330 (= e!1937543 lt!1055662)))

(declare-fun b!3100331 () Bool)

(declare-fun e!1937540 () Regex!9557)

(declare-fun e!1937530 () Regex!9557)

(assert (=> b!3100331 (= e!1937540 e!1937530)))

(declare-fun c!517966 () Bool)

(assert (=> b!3100331 (= c!517966 ((_ is Star!9557) (regTwo!19626 r!17423)))))

(declare-fun b!3100332 () Bool)

(declare-fun c!517968 () Bool)

(declare-fun e!1937539 () Bool)

(assert (=> b!3100332 (= c!517968 e!1937539)))

(declare-fun res!1270100 () Bool)

(assert (=> b!3100332 (=> res!1270100 e!1937539)))

(declare-fun call!218475 () Bool)

(assert (=> b!3100332 (= res!1270100 call!218475)))

(declare-fun lt!1055664 () Regex!9557)

(declare-fun call!218474 () Regex!9557)

(assert (=> b!3100332 (= lt!1055664 call!218474)))

(declare-fun e!1937537 () Regex!9557)

(assert (=> b!3100332 (= e!1937530 e!1937537)))

(declare-fun bm!218465 () Bool)

(declare-fun call!218473 () Regex!9557)

(assert (=> bm!218465 (= call!218473 call!218474)))

(declare-fun lt!1055663 () Regex!9557)

(declare-fun bm!218466 () Bool)

(declare-fun call!218472 () Bool)

(assert (=> bm!218466 (= call!218472 (isEmptyExpr!614 (ite c!517966 lt!1055664 lt!1055663)))))

(declare-fun b!3100333 () Bool)

(declare-fun e!1937536 () Regex!9557)

(assert (=> b!3100333 (= e!1937536 EmptyLang!9557)))

(declare-fun b!3100334 () Bool)

(declare-fun e!1937533 () Regex!9557)

(assert (=> b!3100334 (= e!1937533 e!1937536)))

(declare-fun lt!1055661 () Regex!9557)

(assert (=> b!3100334 (= lt!1055661 call!218473)))

(declare-fun call!218470 () Regex!9557)

(assert (=> b!3100334 (= lt!1055663 call!218470)))

(declare-fun res!1270099 () Bool)

(declare-fun call!218476 () Bool)

(assert (=> b!3100334 (= res!1270099 call!218476)))

(declare-fun e!1937534 () Bool)

(assert (=> b!3100334 (=> res!1270099 e!1937534)))

(declare-fun c!517974 () Bool)

(assert (=> b!3100334 (= c!517974 e!1937534)))

(declare-fun b!3100335 () Bool)

(assert (=> b!3100335 (= e!1937542 EmptyLang!9557)))

(declare-fun b!3100336 () Bool)

(declare-fun lt!1055660 () Regex!9557)

(assert (=> b!3100336 (= e!1937543 (Union!9557 lt!1055662 lt!1055660))))

(declare-fun b!3100337 () Bool)

(assert (=> b!3100337 (= e!1937537 EmptyExpr!9557)))

(declare-fun b!3100338 () Bool)

(declare-fun c!517973 () Bool)

(assert (=> b!3100338 (= c!517973 ((_ is Union!9557) (regTwo!19626 r!17423)))))

(assert (=> b!3100338 (= e!1937530 e!1937533)))

(declare-fun b!3100339 () Bool)

(declare-fun e!1937535 () Regex!9557)

(assert (=> b!3100339 (= e!1937535 (Concat!14878 lt!1055661 lt!1055663))))

(declare-fun b!3100340 () Bool)

(assert (=> b!3100340 (= e!1937539 call!218472)))

(declare-fun b!3100341 () Bool)

(assert (=> b!3100341 (= e!1937534 call!218471)))

(declare-fun b!3100342 () Bool)

(assert (=> b!3100342 (= e!1937541 (regTwo!19626 r!17423))))

(declare-fun b!3100343 () Bool)

(assert (=> b!3100343 (= e!1937537 (Star!9557 lt!1055664))))

(declare-fun bm!218467 () Bool)

(assert (=> bm!218467 (= call!218476 (isEmptyLang!608 (ite c!517973 lt!1055662 lt!1055661)))))

(declare-fun b!3100344 () Bool)

(declare-fun e!1937531 () Regex!9557)

(assert (=> b!3100344 (= e!1937531 e!1937535)))

(declare-fun c!517969 () Bool)

(assert (=> b!3100344 (= c!517969 call!218472)))

(declare-fun b!3100345 () Bool)

(assert (=> b!3100345 (= e!1937533 e!1937538)))

(assert (=> b!3100345 (= lt!1055662 call!218470)))

(assert (=> b!3100345 (= lt!1055660 call!218473)))

(declare-fun c!517972 () Bool)

(assert (=> b!3100345 (= c!517972 call!218476)))

(declare-fun b!3100346 () Bool)

(assert (=> b!3100346 (= e!1937531 lt!1055663)))

(declare-fun bm!218468 () Bool)

(assert (=> bm!218468 (= call!218471 call!218475)))

(declare-fun b!3100347 () Bool)

(assert (=> b!3100347 (= e!1937538 lt!1055660)))

(declare-fun b!3100348 () Bool)

(assert (=> b!3100348 (= e!1937540 EmptyExpr!9557)))

(declare-fun bm!218469 () Bool)

(assert (=> bm!218469 (= call!218475 (isEmptyLang!608 (ite c!517966 lt!1055664 (ite c!517973 lt!1055660 lt!1055663))))))

(declare-fun bm!218470 () Bool)

(assert (=> bm!218470 (= call!218470 (simplify!512 (ite c!517973 (regOne!19627 (regTwo!19626 r!17423)) (regTwo!19626 (regTwo!19626 r!17423)))))))

(declare-fun bm!218471 () Bool)

(assert (=> bm!218471 (= call!218474 (simplify!512 (ite c!517966 (reg!9886 (regTwo!19626 r!17423)) (ite c!517973 (regTwo!19627 (regTwo!19626 r!17423)) (regOne!19626 (regTwo!19626 r!17423))))))))

(declare-fun d!860970 () Bool)

(declare-fun e!1937532 () Bool)

(assert (=> d!860970 e!1937532))

(declare-fun res!1270098 () Bool)

(assert (=> d!860970 (=> (not res!1270098) (not e!1937532))))

(declare-fun lt!1055665 () Regex!9557)

(assert (=> d!860970 (= res!1270098 (validRegex!4290 lt!1055665))))

(assert (=> d!860970 (= lt!1055665 e!1937542)))

(declare-fun c!517976 () Bool)

(assert (=> d!860970 (= c!517976 ((_ is EmptyLang!9557) (regTwo!19626 r!17423)))))

(assert (=> d!860970 (validRegex!4290 (regTwo!19626 r!17423))))

(assert (=> d!860970 (= (simplify!512 (regTwo!19626 r!17423)) lt!1055665)))

(declare-fun b!3100349 () Bool)

(assert (=> b!3100349 (= e!1937535 lt!1055661)))

(declare-fun b!3100350 () Bool)

(declare-fun c!517967 () Bool)

(assert (=> b!3100350 (= c!517967 (isEmptyExpr!614 lt!1055661))))

(assert (=> b!3100350 (= e!1937536 e!1937531)))

(declare-fun b!3100351 () Bool)

(declare-fun c!517970 () Bool)

(assert (=> b!3100351 (= c!517970 ((_ is EmptyExpr!9557) (regTwo!19626 r!17423)))))

(assert (=> b!3100351 (= e!1937541 e!1937540)))

(declare-fun b!3100352 () Bool)

(assert (=> b!3100352 (= e!1937532 (= (nullable!3203 lt!1055665) (nullable!3203 (regTwo!19626 r!17423))))))

(assert (= (and d!860970 c!517976) b!3100335))

(assert (= (and d!860970 (not c!517976)) b!3100328))

(assert (= (and b!3100328 c!517971) b!3100342))

(assert (= (and b!3100328 (not c!517971)) b!3100351))

(assert (= (and b!3100351 c!517970) b!3100348))

(assert (= (and b!3100351 (not c!517970)) b!3100331))

(assert (= (and b!3100331 c!517966) b!3100332))

(assert (= (and b!3100331 (not c!517966)) b!3100338))

(assert (= (and b!3100332 (not res!1270100)) b!3100340))

(assert (= (and b!3100332 c!517968) b!3100337))

(assert (= (and b!3100332 (not c!517968)) b!3100343))

(assert (= (and b!3100338 c!517973) b!3100345))

(assert (= (and b!3100338 (not c!517973)) b!3100334))

(assert (= (and b!3100345 c!517972) b!3100347))

(assert (= (and b!3100345 (not c!517972)) b!3100329))

(assert (= (and b!3100329 c!517975) b!3100330))

(assert (= (and b!3100329 (not c!517975)) b!3100336))

(assert (= (and b!3100334 (not res!1270099)) b!3100341))

(assert (= (and b!3100334 c!517974) b!3100333))

(assert (= (and b!3100334 (not c!517974)) b!3100350))

(assert (= (and b!3100350 c!517967) b!3100346))

(assert (= (and b!3100350 (not c!517967)) b!3100344))

(assert (= (and b!3100344 c!517969) b!3100349))

(assert (= (and b!3100344 (not c!517969)) b!3100339))

(assert (= (or b!3100345 b!3100334) bm!218470))

(assert (= (or b!3100345 b!3100334) bm!218465))

(assert (= (or b!3100329 b!3100341) bm!218468))

(assert (= (or b!3100345 b!3100334) bm!218467))

(assert (= (or b!3100340 b!3100344) bm!218466))

(assert (= (or b!3100332 bm!218465) bm!218471))

(assert (= (or b!3100332 bm!218468) bm!218469))

(assert (= (and d!860970 res!1270098) b!3100352))

(declare-fun m!3400775 () Bool)

(assert (=> b!3100352 m!3400775))

(declare-fun m!3400777 () Bool)

(assert (=> b!3100352 m!3400777))

(declare-fun m!3400779 () Bool)

(assert (=> d!860970 m!3400779))

(declare-fun m!3400781 () Bool)

(assert (=> d!860970 m!3400781))

(declare-fun m!3400783 () Bool)

(assert (=> b!3100350 m!3400783))

(declare-fun m!3400785 () Bool)

(assert (=> bm!218470 m!3400785))

(declare-fun m!3400787 () Bool)

(assert (=> bm!218469 m!3400787))

(declare-fun m!3400789 () Bool)

(assert (=> bm!218466 m!3400789))

(declare-fun m!3400791 () Bool)

(assert (=> bm!218467 m!3400791))

(declare-fun m!3400793 () Bool)

(assert (=> bm!218471 m!3400793))

(assert (=> b!3099694 d!860970))

(declare-fun b!3100353 () Bool)

(declare-fun e!1937556 () Regex!9557)

(declare-fun e!1937555 () Regex!9557)

(assert (=> b!3100353 (= e!1937556 e!1937555)))

(declare-fun c!517982 () Bool)

(assert (=> b!3100353 (= c!517982 ((_ is ElementMatch!9557) (regOne!19626 r!17423)))))

(declare-fun b!3100354 () Bool)

(declare-fun c!517986 () Bool)

(declare-fun call!218478 () Bool)

(assert (=> b!3100354 (= c!517986 call!218478)))

(declare-fun e!1937552 () Regex!9557)

(declare-fun e!1937557 () Regex!9557)

(assert (=> b!3100354 (= e!1937552 e!1937557)))

(declare-fun b!3100355 () Bool)

(declare-fun lt!1055668 () Regex!9557)

(assert (=> b!3100355 (= e!1937557 lt!1055668)))

(declare-fun b!3100356 () Bool)

(declare-fun e!1937554 () Regex!9557)

(declare-fun e!1937544 () Regex!9557)

(assert (=> b!3100356 (= e!1937554 e!1937544)))

(declare-fun c!517977 () Bool)

(assert (=> b!3100356 (= c!517977 ((_ is Star!9557) (regOne!19626 r!17423)))))

(declare-fun b!3100357 () Bool)

(declare-fun c!517979 () Bool)

(declare-fun e!1937553 () Bool)

(assert (=> b!3100357 (= c!517979 e!1937553)))

(declare-fun res!1270103 () Bool)

(assert (=> b!3100357 (=> res!1270103 e!1937553)))

(declare-fun call!218482 () Bool)

(assert (=> b!3100357 (= res!1270103 call!218482)))

(declare-fun lt!1055670 () Regex!9557)

(declare-fun call!218481 () Regex!9557)

(assert (=> b!3100357 (= lt!1055670 call!218481)))

(declare-fun e!1937551 () Regex!9557)

(assert (=> b!3100357 (= e!1937544 e!1937551)))

(declare-fun bm!218472 () Bool)

(declare-fun call!218480 () Regex!9557)

(assert (=> bm!218472 (= call!218480 call!218481)))

(declare-fun bm!218473 () Bool)

(declare-fun lt!1055669 () Regex!9557)

(declare-fun call!218479 () Bool)

(assert (=> bm!218473 (= call!218479 (isEmptyExpr!614 (ite c!517977 lt!1055670 lt!1055669)))))

(declare-fun b!3100358 () Bool)

(declare-fun e!1937550 () Regex!9557)

(assert (=> b!3100358 (= e!1937550 EmptyLang!9557)))

(declare-fun b!3100359 () Bool)

(declare-fun e!1937547 () Regex!9557)

(assert (=> b!3100359 (= e!1937547 e!1937550)))

(declare-fun lt!1055667 () Regex!9557)

(assert (=> b!3100359 (= lt!1055667 call!218480)))

(declare-fun call!218477 () Regex!9557)

(assert (=> b!3100359 (= lt!1055669 call!218477)))

(declare-fun res!1270102 () Bool)

(declare-fun call!218483 () Bool)

(assert (=> b!3100359 (= res!1270102 call!218483)))

(declare-fun e!1937548 () Bool)

(assert (=> b!3100359 (=> res!1270102 e!1937548)))

(declare-fun c!517985 () Bool)

(assert (=> b!3100359 (= c!517985 e!1937548)))

(declare-fun b!3100360 () Bool)

(assert (=> b!3100360 (= e!1937556 EmptyLang!9557)))

(declare-fun b!3100361 () Bool)

(declare-fun lt!1055666 () Regex!9557)

(assert (=> b!3100361 (= e!1937557 (Union!9557 lt!1055668 lt!1055666))))

(declare-fun b!3100362 () Bool)

(assert (=> b!3100362 (= e!1937551 EmptyExpr!9557)))

(declare-fun b!3100363 () Bool)

(declare-fun c!517984 () Bool)

(assert (=> b!3100363 (= c!517984 ((_ is Union!9557) (regOne!19626 r!17423)))))

(assert (=> b!3100363 (= e!1937544 e!1937547)))

(declare-fun b!3100364 () Bool)

(declare-fun e!1937549 () Regex!9557)

(assert (=> b!3100364 (= e!1937549 (Concat!14878 lt!1055667 lt!1055669))))

(declare-fun b!3100365 () Bool)

(assert (=> b!3100365 (= e!1937553 call!218479)))

(declare-fun b!3100366 () Bool)

(assert (=> b!3100366 (= e!1937548 call!218478)))

(declare-fun b!3100367 () Bool)

(assert (=> b!3100367 (= e!1937555 (regOne!19626 r!17423))))

(declare-fun b!3100368 () Bool)

(assert (=> b!3100368 (= e!1937551 (Star!9557 lt!1055670))))

(declare-fun bm!218474 () Bool)

(assert (=> bm!218474 (= call!218483 (isEmptyLang!608 (ite c!517984 lt!1055668 lt!1055667)))))

(declare-fun b!3100369 () Bool)

(declare-fun e!1937545 () Regex!9557)

(assert (=> b!3100369 (= e!1937545 e!1937549)))

(declare-fun c!517980 () Bool)

(assert (=> b!3100369 (= c!517980 call!218479)))

(declare-fun b!3100370 () Bool)

(assert (=> b!3100370 (= e!1937547 e!1937552)))

(assert (=> b!3100370 (= lt!1055668 call!218477)))

(assert (=> b!3100370 (= lt!1055666 call!218480)))

(declare-fun c!517983 () Bool)

(assert (=> b!3100370 (= c!517983 call!218483)))

(declare-fun b!3100371 () Bool)

(assert (=> b!3100371 (= e!1937545 lt!1055669)))

(declare-fun bm!218475 () Bool)

(assert (=> bm!218475 (= call!218478 call!218482)))

(declare-fun b!3100372 () Bool)

(assert (=> b!3100372 (= e!1937552 lt!1055666)))

(declare-fun b!3100373 () Bool)

(assert (=> b!3100373 (= e!1937554 EmptyExpr!9557)))

(declare-fun bm!218476 () Bool)

(assert (=> bm!218476 (= call!218482 (isEmptyLang!608 (ite c!517977 lt!1055670 (ite c!517984 lt!1055666 lt!1055669))))))

(declare-fun bm!218477 () Bool)

(assert (=> bm!218477 (= call!218477 (simplify!512 (ite c!517984 (regOne!19627 (regOne!19626 r!17423)) (regTwo!19626 (regOne!19626 r!17423)))))))

(declare-fun bm!218478 () Bool)

(assert (=> bm!218478 (= call!218481 (simplify!512 (ite c!517977 (reg!9886 (regOne!19626 r!17423)) (ite c!517984 (regTwo!19627 (regOne!19626 r!17423)) (regOne!19626 (regOne!19626 r!17423))))))))

(declare-fun d!860972 () Bool)

(declare-fun e!1937546 () Bool)

(assert (=> d!860972 e!1937546))

(declare-fun res!1270101 () Bool)

(assert (=> d!860972 (=> (not res!1270101) (not e!1937546))))

(declare-fun lt!1055671 () Regex!9557)

(assert (=> d!860972 (= res!1270101 (validRegex!4290 lt!1055671))))

(assert (=> d!860972 (= lt!1055671 e!1937556)))

(declare-fun c!517987 () Bool)

(assert (=> d!860972 (= c!517987 ((_ is EmptyLang!9557) (regOne!19626 r!17423)))))

(assert (=> d!860972 (validRegex!4290 (regOne!19626 r!17423))))

(assert (=> d!860972 (= (simplify!512 (regOne!19626 r!17423)) lt!1055671)))

(declare-fun b!3100374 () Bool)

(assert (=> b!3100374 (= e!1937549 lt!1055667)))

(declare-fun b!3100375 () Bool)

(declare-fun c!517978 () Bool)

(assert (=> b!3100375 (= c!517978 (isEmptyExpr!614 lt!1055667))))

(assert (=> b!3100375 (= e!1937550 e!1937545)))

(declare-fun b!3100376 () Bool)

(declare-fun c!517981 () Bool)

(assert (=> b!3100376 (= c!517981 ((_ is EmptyExpr!9557) (regOne!19626 r!17423)))))

(assert (=> b!3100376 (= e!1937555 e!1937554)))

(declare-fun b!3100377 () Bool)

(assert (=> b!3100377 (= e!1937546 (= (nullable!3203 lt!1055671) (nullable!3203 (regOne!19626 r!17423))))))

(assert (= (and d!860972 c!517987) b!3100360))

(assert (= (and d!860972 (not c!517987)) b!3100353))

(assert (= (and b!3100353 c!517982) b!3100367))

(assert (= (and b!3100353 (not c!517982)) b!3100376))

(assert (= (and b!3100376 c!517981) b!3100373))

(assert (= (and b!3100376 (not c!517981)) b!3100356))

(assert (= (and b!3100356 c!517977) b!3100357))

(assert (= (and b!3100356 (not c!517977)) b!3100363))

(assert (= (and b!3100357 (not res!1270103)) b!3100365))

(assert (= (and b!3100357 c!517979) b!3100362))

(assert (= (and b!3100357 (not c!517979)) b!3100368))

(assert (= (and b!3100363 c!517984) b!3100370))

(assert (= (and b!3100363 (not c!517984)) b!3100359))

(assert (= (and b!3100370 c!517983) b!3100372))

(assert (= (and b!3100370 (not c!517983)) b!3100354))

(assert (= (and b!3100354 c!517986) b!3100355))

(assert (= (and b!3100354 (not c!517986)) b!3100361))

(assert (= (and b!3100359 (not res!1270102)) b!3100366))

(assert (= (and b!3100359 c!517985) b!3100358))

(assert (= (and b!3100359 (not c!517985)) b!3100375))

(assert (= (and b!3100375 c!517978) b!3100371))

(assert (= (and b!3100375 (not c!517978)) b!3100369))

(assert (= (and b!3100369 c!517980) b!3100374))

(assert (= (and b!3100369 (not c!517980)) b!3100364))

(assert (= (or b!3100370 b!3100359) bm!218477))

(assert (= (or b!3100370 b!3100359) bm!218472))

(assert (= (or b!3100354 b!3100366) bm!218475))

(assert (= (or b!3100370 b!3100359) bm!218474))

(assert (= (or b!3100365 b!3100369) bm!218473))

(assert (= (or b!3100357 bm!218472) bm!218478))

(assert (= (or b!3100357 bm!218475) bm!218476))

(assert (= (and d!860972 res!1270101) b!3100377))

(declare-fun m!3400795 () Bool)

(assert (=> b!3100377 m!3400795))

(declare-fun m!3400797 () Bool)

(assert (=> b!3100377 m!3400797))

(declare-fun m!3400799 () Bool)

(assert (=> d!860972 m!3400799))

(declare-fun m!3400801 () Bool)

(assert (=> d!860972 m!3400801))

(declare-fun m!3400803 () Bool)

(assert (=> b!3100375 m!3400803))

(declare-fun m!3400805 () Bool)

(assert (=> bm!218477 m!3400805))

(declare-fun m!3400807 () Bool)

(assert (=> bm!218476 m!3400807))

(declare-fun m!3400809 () Bool)

(assert (=> bm!218473 m!3400809))

(declare-fun m!3400811 () Bool)

(assert (=> bm!218474 m!3400811))

(declare-fun m!3400813 () Bool)

(assert (=> bm!218478 m!3400813))

(assert (=> b!3099694 d!860972))

(declare-fun b!3100389 () Bool)

(declare-fun e!1937563 () Bool)

(declare-fun lt!1055674 () List!35422)

(assert (=> b!3100389 (= e!1937563 (or (not (= (_2!20244 lt!1055550) Nil!35298)) (= lt!1055674 (_1!20244 lt!1055550))))))

(declare-fun d!860974 () Bool)

(assert (=> d!860974 e!1937563))

(declare-fun res!1270109 () Bool)

(assert (=> d!860974 (=> (not res!1270109) (not e!1937563))))

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!4818 (List!35422) (InoxSet C!19300))

(assert (=> d!860974 (= res!1270109 (= (content!4818 lt!1055674) ((_ map or) (content!4818 (_1!20244 lt!1055550)) (content!4818 (_2!20244 lt!1055550)))))))

(declare-fun e!1937562 () List!35422)

(assert (=> d!860974 (= lt!1055674 e!1937562)))

(declare-fun c!517990 () Bool)

(assert (=> d!860974 (= c!517990 ((_ is Nil!35298) (_1!20244 lt!1055550)))))

(assert (=> d!860974 (= (++!8499 (_1!20244 lt!1055550) (_2!20244 lt!1055550)) lt!1055674)))

(declare-fun b!3100386 () Bool)

(assert (=> b!3100386 (= e!1937562 (_2!20244 lt!1055550))))

(declare-fun b!3100387 () Bool)

(assert (=> b!3100387 (= e!1937562 (Cons!35298 (h!40718 (_1!20244 lt!1055550)) (++!8499 (t!234487 (_1!20244 lt!1055550)) (_2!20244 lt!1055550))))))

(declare-fun b!3100388 () Bool)

(declare-fun res!1270108 () Bool)

(assert (=> b!3100388 (=> (not res!1270108) (not e!1937563))))

(declare-fun size!26573 (List!35422) Int)

(assert (=> b!3100388 (= res!1270108 (= (size!26573 lt!1055674) (+ (size!26573 (_1!20244 lt!1055550)) (size!26573 (_2!20244 lt!1055550)))))))

(assert (= (and d!860974 c!517990) b!3100386))

(assert (= (and d!860974 (not c!517990)) b!3100387))

(assert (= (and d!860974 res!1270109) b!3100388))

(assert (= (and b!3100388 res!1270108) b!3100389))

(declare-fun m!3400815 () Bool)

(assert (=> d!860974 m!3400815))

(declare-fun m!3400817 () Bool)

(assert (=> d!860974 m!3400817))

(declare-fun m!3400819 () Bool)

(assert (=> d!860974 m!3400819))

(declare-fun m!3400821 () Bool)

(assert (=> b!3100387 m!3400821))

(declare-fun m!3400823 () Bool)

(assert (=> b!3100388 m!3400823))

(declare-fun m!3400825 () Bool)

(assert (=> b!3100388 m!3400825))

(declare-fun m!3400827 () Bool)

(assert (=> b!3100388 m!3400827))

(assert (=> b!3099700 d!860974))

(declare-fun b!3100390 () Bool)

(declare-fun res!1270111 () Bool)

(declare-fun e!1937564 () Bool)

(assert (=> b!3100390 (=> (not res!1270111) (not e!1937564))))

(declare-fun call!218484 () Bool)

(assert (=> b!3100390 (= res!1270111 (not call!218484))))

(declare-fun b!3100391 () Bool)

(declare-fun res!1270117 () Bool)

(assert (=> b!3100391 (=> (not res!1270117) (not e!1937564))))

(assert (=> b!3100391 (= res!1270117 (isEmpty!19647 (tail!5083 (++!8499 (_1!20244 lt!1055550) (_2!20244 lt!1055550)))))))

(declare-fun b!3100392 () Bool)

(declare-fun res!1270112 () Bool)

(declare-fun e!1937570 () Bool)

(assert (=> b!3100392 (=> res!1270112 e!1937570)))

(assert (=> b!3100392 (= res!1270112 (not ((_ is ElementMatch!9557) (Concat!14878 (regOne!19626 r!17423) (regTwo!19626 r!17423)))))))

(declare-fun e!1937568 () Bool)

(assert (=> b!3100392 (= e!1937568 e!1937570)))

(declare-fun b!3100393 () Bool)

(declare-fun e!1937565 () Bool)

(assert (=> b!3100393 (= e!1937565 e!1937568)))

(declare-fun c!517991 () Bool)

(assert (=> b!3100393 (= c!517991 ((_ is EmptyLang!9557) (Concat!14878 (regOne!19626 r!17423) (regTwo!19626 r!17423))))))

(declare-fun b!3100394 () Bool)

(declare-fun res!1270114 () Bool)

(declare-fun e!1937566 () Bool)

(assert (=> b!3100394 (=> res!1270114 e!1937566)))

(assert (=> b!3100394 (= res!1270114 (not (isEmpty!19647 (tail!5083 (++!8499 (_1!20244 lt!1055550) (_2!20244 lt!1055550))))))))

(declare-fun bm!218479 () Bool)

(assert (=> bm!218479 (= call!218484 (isEmpty!19647 (++!8499 (_1!20244 lt!1055550) (_2!20244 lt!1055550))))))

(declare-fun b!3100395 () Bool)

(assert (=> b!3100395 (= e!1937566 (not (= (head!6857 (++!8499 (_1!20244 lt!1055550) (_2!20244 lt!1055550))) (c!517801 (Concat!14878 (regOne!19626 r!17423) (regTwo!19626 r!17423))))))))

(declare-fun b!3100396 () Bool)

(declare-fun e!1937567 () Bool)

(assert (=> b!3100396 (= e!1937567 (nullable!3203 (Concat!14878 (regOne!19626 r!17423) (regTwo!19626 r!17423))))))

(declare-fun b!3100398 () Bool)

(declare-fun lt!1055675 () Bool)

(assert (=> b!3100398 (= e!1937568 (not lt!1055675))))

(declare-fun b!3100399 () Bool)

(declare-fun e!1937569 () Bool)

(assert (=> b!3100399 (= e!1937569 e!1937566)))

(declare-fun res!1270116 () Bool)

(assert (=> b!3100399 (=> res!1270116 e!1937566)))

(assert (=> b!3100399 (= res!1270116 call!218484)))

(declare-fun b!3100400 () Bool)

(assert (=> b!3100400 (= e!1937565 (= lt!1055675 call!218484))))

(declare-fun b!3100401 () Bool)

(declare-fun res!1270113 () Bool)

(assert (=> b!3100401 (=> res!1270113 e!1937570)))

(assert (=> b!3100401 (= res!1270113 e!1937564)))

(declare-fun res!1270110 () Bool)

(assert (=> b!3100401 (=> (not res!1270110) (not e!1937564))))

(assert (=> b!3100401 (= res!1270110 lt!1055675)))

(declare-fun b!3100402 () Bool)

(assert (=> b!3100402 (= e!1937567 (matchR!4439 (derivativeStep!2798 (Concat!14878 (regOne!19626 r!17423) (regTwo!19626 r!17423)) (head!6857 (++!8499 (_1!20244 lt!1055550) (_2!20244 lt!1055550)))) (tail!5083 (++!8499 (_1!20244 lt!1055550) (_2!20244 lt!1055550)))))))

(declare-fun b!3100403 () Bool)

(assert (=> b!3100403 (= e!1937564 (= (head!6857 (++!8499 (_1!20244 lt!1055550) (_2!20244 lt!1055550))) (c!517801 (Concat!14878 (regOne!19626 r!17423) (regTwo!19626 r!17423)))))))

(declare-fun b!3100397 () Bool)

(assert (=> b!3100397 (= e!1937570 e!1937569)))

(declare-fun res!1270115 () Bool)

(assert (=> b!3100397 (=> (not res!1270115) (not e!1937569))))

(assert (=> b!3100397 (= res!1270115 (not lt!1055675))))

(declare-fun d!860976 () Bool)

(assert (=> d!860976 e!1937565))

(declare-fun c!517993 () Bool)

(assert (=> d!860976 (= c!517993 ((_ is EmptyExpr!9557) (Concat!14878 (regOne!19626 r!17423) (regTwo!19626 r!17423))))))

(assert (=> d!860976 (= lt!1055675 e!1937567)))

(declare-fun c!517992 () Bool)

(assert (=> d!860976 (= c!517992 (isEmpty!19647 (++!8499 (_1!20244 lt!1055550) (_2!20244 lt!1055550))))))

(assert (=> d!860976 (validRegex!4290 (Concat!14878 (regOne!19626 r!17423) (regTwo!19626 r!17423)))))

(assert (=> d!860976 (= (matchR!4439 (Concat!14878 (regOne!19626 r!17423) (regTwo!19626 r!17423)) (++!8499 (_1!20244 lt!1055550) (_2!20244 lt!1055550))) lt!1055675)))

(assert (= (and d!860976 c!517992) b!3100396))

(assert (= (and d!860976 (not c!517992)) b!3100402))

(assert (= (and d!860976 c!517993) b!3100400))

(assert (= (and d!860976 (not c!517993)) b!3100393))

(assert (= (and b!3100393 c!517991) b!3100398))

(assert (= (and b!3100393 (not c!517991)) b!3100392))

(assert (= (and b!3100392 (not res!1270112)) b!3100401))

(assert (= (and b!3100401 res!1270110) b!3100390))

(assert (= (and b!3100390 res!1270111) b!3100391))

(assert (= (and b!3100391 res!1270117) b!3100403))

(assert (= (and b!3100401 (not res!1270113)) b!3100397))

(assert (= (and b!3100397 res!1270115) b!3100399))

(assert (= (and b!3100399 (not res!1270116)) b!3100394))

(assert (= (and b!3100394 (not res!1270114)) b!3100395))

(assert (= (or b!3100400 b!3100390 b!3100399) bm!218479))

(assert (=> b!3100395 m!3400463))

(declare-fun m!3400829 () Bool)

(assert (=> b!3100395 m!3400829))

(assert (=> b!3100403 m!3400463))

(assert (=> b!3100403 m!3400829))

(declare-fun m!3400831 () Bool)

(assert (=> b!3100396 m!3400831))

(assert (=> b!3100391 m!3400463))

(declare-fun m!3400833 () Bool)

(assert (=> b!3100391 m!3400833))

(assert (=> b!3100391 m!3400833))

(declare-fun m!3400835 () Bool)

(assert (=> b!3100391 m!3400835))

(assert (=> b!3100402 m!3400463))

(assert (=> b!3100402 m!3400829))

(assert (=> b!3100402 m!3400829))

(declare-fun m!3400837 () Bool)

(assert (=> b!3100402 m!3400837))

(assert (=> b!3100402 m!3400463))

(assert (=> b!3100402 m!3400833))

(assert (=> b!3100402 m!3400837))

(assert (=> b!3100402 m!3400833))

(declare-fun m!3400839 () Bool)

(assert (=> b!3100402 m!3400839))

(assert (=> b!3100394 m!3400463))

(assert (=> b!3100394 m!3400833))

(assert (=> b!3100394 m!3400833))

(assert (=> b!3100394 m!3400835))

(assert (=> d!860976 m!3400463))

(declare-fun m!3400841 () Bool)

(assert (=> d!860976 m!3400841))

(declare-fun m!3400843 () Bool)

(assert (=> d!860976 m!3400843))

(assert (=> bm!218479 m!3400463))

(assert (=> bm!218479 m!3400841))

(assert (=> b!3099700 d!860976))

(declare-fun b!3100404 () Bool)

(declare-fun res!1270119 () Bool)

(declare-fun e!1937571 () Bool)

(assert (=> b!3100404 (=> (not res!1270119) (not e!1937571))))

(declare-fun call!218485 () Bool)

(assert (=> b!3100404 (= res!1270119 (not call!218485))))

(declare-fun b!3100405 () Bool)

(declare-fun res!1270125 () Bool)

(assert (=> b!3100405 (=> (not res!1270125) (not e!1937571))))

(assert (=> b!3100405 (= res!1270125 (isEmpty!19647 (tail!5083 (_2!20244 lt!1055550))))))

(declare-fun b!3100406 () Bool)

(declare-fun res!1270120 () Bool)

(declare-fun e!1937577 () Bool)

(assert (=> b!3100406 (=> res!1270120 e!1937577)))

(assert (=> b!3100406 (= res!1270120 (not ((_ is ElementMatch!9557) (regTwo!19626 r!17423))))))

(declare-fun e!1937575 () Bool)

(assert (=> b!3100406 (= e!1937575 e!1937577)))

(declare-fun b!3100407 () Bool)

(declare-fun e!1937572 () Bool)

(assert (=> b!3100407 (= e!1937572 e!1937575)))

(declare-fun c!517994 () Bool)

(assert (=> b!3100407 (= c!517994 ((_ is EmptyLang!9557) (regTwo!19626 r!17423)))))

(declare-fun b!3100408 () Bool)

(declare-fun res!1270122 () Bool)

(declare-fun e!1937573 () Bool)

(assert (=> b!3100408 (=> res!1270122 e!1937573)))

(assert (=> b!3100408 (= res!1270122 (not (isEmpty!19647 (tail!5083 (_2!20244 lt!1055550)))))))

(declare-fun bm!218480 () Bool)

(assert (=> bm!218480 (= call!218485 (isEmpty!19647 (_2!20244 lt!1055550)))))

(declare-fun b!3100409 () Bool)

(assert (=> b!3100409 (= e!1937573 (not (= (head!6857 (_2!20244 lt!1055550)) (c!517801 (regTwo!19626 r!17423)))))))

(declare-fun b!3100410 () Bool)

(declare-fun e!1937574 () Bool)

(assert (=> b!3100410 (= e!1937574 (nullable!3203 (regTwo!19626 r!17423)))))

(declare-fun b!3100412 () Bool)

(declare-fun lt!1055676 () Bool)

(assert (=> b!3100412 (= e!1937575 (not lt!1055676))))

(declare-fun b!3100413 () Bool)

(declare-fun e!1937576 () Bool)

(assert (=> b!3100413 (= e!1937576 e!1937573)))

(declare-fun res!1270124 () Bool)

(assert (=> b!3100413 (=> res!1270124 e!1937573)))

(assert (=> b!3100413 (= res!1270124 call!218485)))

(declare-fun b!3100414 () Bool)

(assert (=> b!3100414 (= e!1937572 (= lt!1055676 call!218485))))

(declare-fun b!3100415 () Bool)

(declare-fun res!1270121 () Bool)

(assert (=> b!3100415 (=> res!1270121 e!1937577)))

(assert (=> b!3100415 (= res!1270121 e!1937571)))

(declare-fun res!1270118 () Bool)

(assert (=> b!3100415 (=> (not res!1270118) (not e!1937571))))

(assert (=> b!3100415 (= res!1270118 lt!1055676)))

(declare-fun b!3100416 () Bool)

(assert (=> b!3100416 (= e!1937574 (matchR!4439 (derivativeStep!2798 (regTwo!19626 r!17423) (head!6857 (_2!20244 lt!1055550))) (tail!5083 (_2!20244 lt!1055550))))))

(declare-fun b!3100417 () Bool)

(assert (=> b!3100417 (= e!1937571 (= (head!6857 (_2!20244 lt!1055550)) (c!517801 (regTwo!19626 r!17423))))))

(declare-fun b!3100411 () Bool)

(assert (=> b!3100411 (= e!1937577 e!1937576)))

(declare-fun res!1270123 () Bool)

(assert (=> b!3100411 (=> (not res!1270123) (not e!1937576))))

(assert (=> b!3100411 (= res!1270123 (not lt!1055676))))

(declare-fun d!860978 () Bool)

(assert (=> d!860978 e!1937572))

(declare-fun c!517996 () Bool)

(assert (=> d!860978 (= c!517996 ((_ is EmptyExpr!9557) (regTwo!19626 r!17423)))))

(assert (=> d!860978 (= lt!1055676 e!1937574)))

(declare-fun c!517995 () Bool)

(assert (=> d!860978 (= c!517995 (isEmpty!19647 (_2!20244 lt!1055550)))))

(assert (=> d!860978 (validRegex!4290 (regTwo!19626 r!17423))))

(assert (=> d!860978 (= (matchR!4439 (regTwo!19626 r!17423) (_2!20244 lt!1055550)) lt!1055676)))

(assert (= (and d!860978 c!517995) b!3100410))

(assert (= (and d!860978 (not c!517995)) b!3100416))

(assert (= (and d!860978 c!517996) b!3100414))

(assert (= (and d!860978 (not c!517996)) b!3100407))

(assert (= (and b!3100407 c!517994) b!3100412))

(assert (= (and b!3100407 (not c!517994)) b!3100406))

(assert (= (and b!3100406 (not res!1270120)) b!3100415))

(assert (= (and b!3100415 res!1270118) b!3100404))

(assert (= (and b!3100404 res!1270119) b!3100405))

(assert (= (and b!3100405 res!1270125) b!3100417))

(assert (= (and b!3100415 (not res!1270121)) b!3100411))

(assert (= (and b!3100411 res!1270123) b!3100413))

(assert (= (and b!3100413 (not res!1270124)) b!3100408))

(assert (= (and b!3100408 (not res!1270122)) b!3100409))

(assert (= (or b!3100414 b!3100404 b!3100413) bm!218480))

(declare-fun m!3400845 () Bool)

(assert (=> b!3100409 m!3400845))

(assert (=> b!3100417 m!3400845))

(assert (=> b!3100410 m!3400777))

(declare-fun m!3400847 () Bool)

(assert (=> b!3100405 m!3400847))

(assert (=> b!3100405 m!3400847))

(declare-fun m!3400849 () Bool)

(assert (=> b!3100405 m!3400849))

(assert (=> b!3100416 m!3400845))

(assert (=> b!3100416 m!3400845))

(declare-fun m!3400851 () Bool)

(assert (=> b!3100416 m!3400851))

(assert (=> b!3100416 m!3400847))

(assert (=> b!3100416 m!3400851))

(assert (=> b!3100416 m!3400847))

(declare-fun m!3400853 () Bool)

(assert (=> b!3100416 m!3400853))

(assert (=> b!3100408 m!3400847))

(assert (=> b!3100408 m!3400847))

(assert (=> b!3100408 m!3400849))

(declare-fun m!3400855 () Bool)

(assert (=> d!860978 m!3400855))

(assert (=> d!860978 m!3400781))

(assert (=> bm!218480 m!3400855))

(assert (=> b!3099700 d!860978))

(declare-fun b!3100418 () Bool)

(declare-fun res!1270127 () Bool)

(declare-fun e!1937578 () Bool)

(assert (=> b!3100418 (=> (not res!1270127) (not e!1937578))))

(declare-fun call!218486 () Bool)

(assert (=> b!3100418 (= res!1270127 (not call!218486))))

(declare-fun b!3100419 () Bool)

(declare-fun res!1270133 () Bool)

(assert (=> b!3100419 (=> (not res!1270133) (not e!1937578))))

(assert (=> b!3100419 (= res!1270133 (isEmpty!19647 (tail!5083 (_1!20244 lt!1055550))))))

(declare-fun b!3100420 () Bool)

(declare-fun res!1270128 () Bool)

(declare-fun e!1937584 () Bool)

(assert (=> b!3100420 (=> res!1270128 e!1937584)))

(assert (=> b!3100420 (= res!1270128 (not ((_ is ElementMatch!9557) lt!1055560)))))

(declare-fun e!1937582 () Bool)

(assert (=> b!3100420 (= e!1937582 e!1937584)))

(declare-fun b!3100421 () Bool)

(declare-fun e!1937579 () Bool)

(assert (=> b!3100421 (= e!1937579 e!1937582)))

(declare-fun c!517997 () Bool)

(assert (=> b!3100421 (= c!517997 ((_ is EmptyLang!9557) lt!1055560))))

(declare-fun b!3100422 () Bool)

(declare-fun res!1270130 () Bool)

(declare-fun e!1937580 () Bool)

(assert (=> b!3100422 (=> res!1270130 e!1937580)))

(assert (=> b!3100422 (= res!1270130 (not (isEmpty!19647 (tail!5083 (_1!20244 lt!1055550)))))))

(declare-fun bm!218481 () Bool)

(assert (=> bm!218481 (= call!218486 (isEmpty!19647 (_1!20244 lt!1055550)))))

(declare-fun b!3100423 () Bool)

(assert (=> b!3100423 (= e!1937580 (not (= (head!6857 (_1!20244 lt!1055550)) (c!517801 lt!1055560))))))

(declare-fun b!3100424 () Bool)

(declare-fun e!1937581 () Bool)

(assert (=> b!3100424 (= e!1937581 (nullable!3203 lt!1055560))))

(declare-fun b!3100426 () Bool)

(declare-fun lt!1055677 () Bool)

(assert (=> b!3100426 (= e!1937582 (not lt!1055677))))

(declare-fun b!3100427 () Bool)

(declare-fun e!1937583 () Bool)

(assert (=> b!3100427 (= e!1937583 e!1937580)))

(declare-fun res!1270132 () Bool)

(assert (=> b!3100427 (=> res!1270132 e!1937580)))

(assert (=> b!3100427 (= res!1270132 call!218486)))

(declare-fun b!3100428 () Bool)

(assert (=> b!3100428 (= e!1937579 (= lt!1055677 call!218486))))

(declare-fun b!3100429 () Bool)

(declare-fun res!1270129 () Bool)

(assert (=> b!3100429 (=> res!1270129 e!1937584)))

(assert (=> b!3100429 (= res!1270129 e!1937578)))

(declare-fun res!1270126 () Bool)

(assert (=> b!3100429 (=> (not res!1270126) (not e!1937578))))

(assert (=> b!3100429 (= res!1270126 lt!1055677)))

(declare-fun b!3100430 () Bool)

(assert (=> b!3100430 (= e!1937581 (matchR!4439 (derivativeStep!2798 lt!1055560 (head!6857 (_1!20244 lt!1055550))) (tail!5083 (_1!20244 lt!1055550))))))

(declare-fun b!3100431 () Bool)

(assert (=> b!3100431 (= e!1937578 (= (head!6857 (_1!20244 lt!1055550)) (c!517801 lt!1055560)))))

(declare-fun b!3100425 () Bool)

(assert (=> b!3100425 (= e!1937584 e!1937583)))

(declare-fun res!1270131 () Bool)

(assert (=> b!3100425 (=> (not res!1270131) (not e!1937583))))

(assert (=> b!3100425 (= res!1270131 (not lt!1055677))))

(declare-fun d!860980 () Bool)

(assert (=> d!860980 e!1937579))

(declare-fun c!517999 () Bool)

(assert (=> d!860980 (= c!517999 ((_ is EmptyExpr!9557) lt!1055560))))

(assert (=> d!860980 (= lt!1055677 e!1937581)))

(declare-fun c!517998 () Bool)

(assert (=> d!860980 (= c!517998 (isEmpty!19647 (_1!20244 lt!1055550)))))

(assert (=> d!860980 (validRegex!4290 lt!1055560)))

(assert (=> d!860980 (= (matchR!4439 lt!1055560 (_1!20244 lt!1055550)) lt!1055677)))

(assert (= (and d!860980 c!517998) b!3100424))

(assert (= (and d!860980 (not c!517998)) b!3100430))

(assert (= (and d!860980 c!517999) b!3100428))

(assert (= (and d!860980 (not c!517999)) b!3100421))

(assert (= (and b!3100421 c!517997) b!3100426))

(assert (= (and b!3100421 (not c!517997)) b!3100420))

(assert (= (and b!3100420 (not res!1270128)) b!3100429))

(assert (= (and b!3100429 res!1270126) b!3100418))

(assert (= (and b!3100418 res!1270127) b!3100419))

(assert (= (and b!3100419 res!1270133) b!3100431))

(assert (= (and b!3100429 (not res!1270129)) b!3100425))

(assert (= (and b!3100425 res!1270131) b!3100427))

(assert (= (and b!3100427 (not res!1270132)) b!3100422))

(assert (= (and b!3100422 (not res!1270130)) b!3100423))

(assert (= (or b!3100428 b!3100418 b!3100427) bm!218481))

(declare-fun m!3400857 () Bool)

(assert (=> b!3100423 m!3400857))

(assert (=> b!3100431 m!3400857))

(declare-fun m!3400859 () Bool)

(assert (=> b!3100424 m!3400859))

(declare-fun m!3400861 () Bool)

(assert (=> b!3100419 m!3400861))

(assert (=> b!3100419 m!3400861))

(declare-fun m!3400863 () Bool)

(assert (=> b!3100419 m!3400863))

(assert (=> b!3100430 m!3400857))

(assert (=> b!3100430 m!3400857))

(declare-fun m!3400865 () Bool)

(assert (=> b!3100430 m!3400865))

(assert (=> b!3100430 m!3400861))

(assert (=> b!3100430 m!3400865))

(assert (=> b!3100430 m!3400861))

(declare-fun m!3400867 () Bool)

(assert (=> b!3100430 m!3400867))

(assert (=> b!3100422 m!3400861))

(assert (=> b!3100422 m!3400861))

(assert (=> b!3100422 m!3400863))

(declare-fun m!3400869 () Bool)

(assert (=> d!860980 m!3400869))

(assert (=> d!860980 m!3400667))

(assert (=> bm!218481 m!3400869))

(assert (=> b!3099700 d!860980))

(declare-fun d!860982 () Bool)

(assert (=> d!860982 (= (matchR!4439 (regTwo!19626 r!17423) (_2!20244 lt!1055550)) (matchR!4439 (simplify!512 (regTwo!19626 r!17423)) (_2!20244 lt!1055550)))))

(declare-fun lt!1055680 () Unit!49553)

(declare-fun choose!18346 (Regex!9557 List!35422) Unit!49553)

(assert (=> d!860982 (= lt!1055680 (choose!18346 (regTwo!19626 r!17423) (_2!20244 lt!1055550)))))

(assert (=> d!860982 (validRegex!4290 (regTwo!19626 r!17423))))

(assert (=> d!860982 (= (lemmaSimplifySound!326 (regTwo!19626 r!17423) (_2!20244 lt!1055550)) lt!1055680)))

(declare-fun bs!535680 () Bool)

(assert (= bs!535680 d!860982))

(assert (=> bs!535680 m!3400439))

(declare-fun m!3400871 () Bool)

(assert (=> bs!535680 m!3400871))

(assert (=> bs!535680 m!3400475))

(assert (=> bs!535680 m!3400781))

(assert (=> bs!535680 m!3400439))

(declare-fun m!3400873 () Bool)

(assert (=> bs!535680 m!3400873))

(assert (=> b!3099700 d!860982))

(declare-fun d!860984 () Bool)

(assert (=> d!860984 (= (matchR!4439 (regOne!19626 r!17423) (_1!20244 lt!1055550)) (matchR!4439 (simplify!512 (regOne!19626 r!17423)) (_1!20244 lt!1055550)))))

(declare-fun lt!1055681 () Unit!49553)

(assert (=> d!860984 (= lt!1055681 (choose!18346 (regOne!19626 r!17423) (_1!20244 lt!1055550)))))

(assert (=> d!860984 (validRegex!4290 (regOne!19626 r!17423))))

(assert (=> d!860984 (= (lemmaSimplifySound!326 (regOne!19626 r!17423) (_1!20244 lt!1055550)) lt!1055681)))

(declare-fun bs!535681 () Bool)

(assert (= bs!535681 d!860984))

(assert (=> bs!535681 m!3400441))

(declare-fun m!3400875 () Bool)

(assert (=> bs!535681 m!3400875))

(assert (=> bs!535681 m!3400481))

(assert (=> bs!535681 m!3400801))

(assert (=> bs!535681 m!3400441))

(declare-fun m!3400877 () Bool)

(assert (=> bs!535681 m!3400877))

(assert (=> b!3099700 d!860984))

(declare-fun b!3100432 () Bool)

(declare-fun res!1270135 () Bool)

(declare-fun e!1937585 () Bool)

(assert (=> b!3100432 (=> (not res!1270135) (not e!1937585))))

(declare-fun call!218487 () Bool)

(assert (=> b!3100432 (= res!1270135 (not call!218487))))

(declare-fun b!3100433 () Bool)

(declare-fun res!1270141 () Bool)

(assert (=> b!3100433 (=> (not res!1270141) (not e!1937585))))

(assert (=> b!3100433 (= res!1270141 (isEmpty!19647 (tail!5083 (_2!20244 lt!1055550))))))

(declare-fun b!3100434 () Bool)

(declare-fun res!1270136 () Bool)

(declare-fun e!1937591 () Bool)

(assert (=> b!3100434 (=> res!1270136 e!1937591)))

(assert (=> b!3100434 (= res!1270136 (not ((_ is ElementMatch!9557) lt!1055554)))))

(declare-fun e!1937589 () Bool)

(assert (=> b!3100434 (= e!1937589 e!1937591)))

(declare-fun b!3100435 () Bool)

(declare-fun e!1937586 () Bool)

(assert (=> b!3100435 (= e!1937586 e!1937589)))

(declare-fun c!518000 () Bool)

(assert (=> b!3100435 (= c!518000 ((_ is EmptyLang!9557) lt!1055554))))

(declare-fun b!3100436 () Bool)

(declare-fun res!1270138 () Bool)

(declare-fun e!1937587 () Bool)

(assert (=> b!3100436 (=> res!1270138 e!1937587)))

(assert (=> b!3100436 (= res!1270138 (not (isEmpty!19647 (tail!5083 (_2!20244 lt!1055550)))))))

(declare-fun bm!218482 () Bool)

(assert (=> bm!218482 (= call!218487 (isEmpty!19647 (_2!20244 lt!1055550)))))

(declare-fun b!3100437 () Bool)

(assert (=> b!3100437 (= e!1937587 (not (= (head!6857 (_2!20244 lt!1055550)) (c!517801 lt!1055554))))))

(declare-fun b!3100438 () Bool)

(declare-fun e!1937588 () Bool)

(assert (=> b!3100438 (= e!1937588 (nullable!3203 lt!1055554))))

(declare-fun b!3100440 () Bool)

(declare-fun lt!1055682 () Bool)

(assert (=> b!3100440 (= e!1937589 (not lt!1055682))))

(declare-fun b!3100441 () Bool)

(declare-fun e!1937590 () Bool)

(assert (=> b!3100441 (= e!1937590 e!1937587)))

(declare-fun res!1270140 () Bool)

(assert (=> b!3100441 (=> res!1270140 e!1937587)))

(assert (=> b!3100441 (= res!1270140 call!218487)))

(declare-fun b!3100442 () Bool)

(assert (=> b!3100442 (= e!1937586 (= lt!1055682 call!218487))))

(declare-fun b!3100443 () Bool)

(declare-fun res!1270137 () Bool)

(assert (=> b!3100443 (=> res!1270137 e!1937591)))

(assert (=> b!3100443 (= res!1270137 e!1937585)))

(declare-fun res!1270134 () Bool)

(assert (=> b!3100443 (=> (not res!1270134) (not e!1937585))))

(assert (=> b!3100443 (= res!1270134 lt!1055682)))

(declare-fun b!3100444 () Bool)

(assert (=> b!3100444 (= e!1937588 (matchR!4439 (derivativeStep!2798 lt!1055554 (head!6857 (_2!20244 lt!1055550))) (tail!5083 (_2!20244 lt!1055550))))))

(declare-fun b!3100445 () Bool)

(assert (=> b!3100445 (= e!1937585 (= (head!6857 (_2!20244 lt!1055550)) (c!517801 lt!1055554)))))

(declare-fun b!3100439 () Bool)

(assert (=> b!3100439 (= e!1937591 e!1937590)))

(declare-fun res!1270139 () Bool)

(assert (=> b!3100439 (=> (not res!1270139) (not e!1937590))))

(assert (=> b!3100439 (= res!1270139 (not lt!1055682))))

(declare-fun d!860986 () Bool)

(assert (=> d!860986 e!1937586))

(declare-fun c!518002 () Bool)

(assert (=> d!860986 (= c!518002 ((_ is EmptyExpr!9557) lt!1055554))))

(assert (=> d!860986 (= lt!1055682 e!1937588)))

(declare-fun c!518001 () Bool)

(assert (=> d!860986 (= c!518001 (isEmpty!19647 (_2!20244 lt!1055550)))))

(assert (=> d!860986 (validRegex!4290 lt!1055554)))

(assert (=> d!860986 (= (matchR!4439 lt!1055554 (_2!20244 lt!1055550)) lt!1055682)))

(assert (= (and d!860986 c!518001) b!3100438))

(assert (= (and d!860986 (not c!518001)) b!3100444))

(assert (= (and d!860986 c!518002) b!3100442))

(assert (= (and d!860986 (not c!518002)) b!3100435))

(assert (= (and b!3100435 c!518000) b!3100440))

(assert (= (and b!3100435 (not c!518000)) b!3100434))

(assert (= (and b!3100434 (not res!1270136)) b!3100443))

(assert (= (and b!3100443 res!1270134) b!3100432))

(assert (= (and b!3100432 res!1270135) b!3100433))

(assert (= (and b!3100433 res!1270141) b!3100445))

(assert (= (and b!3100443 (not res!1270137)) b!3100439))

(assert (= (and b!3100439 res!1270139) b!3100441))

(assert (= (and b!3100441 (not res!1270140)) b!3100436))

(assert (= (and b!3100436 (not res!1270138)) b!3100437))

(assert (= (or b!3100442 b!3100432 b!3100441) bm!218482))

(assert (=> b!3100437 m!3400845))

(assert (=> b!3100445 m!3400845))

(declare-fun m!3400879 () Bool)

(assert (=> b!3100438 m!3400879))

(assert (=> b!3100433 m!3400847))

(assert (=> b!3100433 m!3400847))

(assert (=> b!3100433 m!3400849))

(assert (=> b!3100444 m!3400845))

(assert (=> b!3100444 m!3400845))

(declare-fun m!3400881 () Bool)

(assert (=> b!3100444 m!3400881))

(assert (=> b!3100444 m!3400847))

(assert (=> b!3100444 m!3400881))

(assert (=> b!3100444 m!3400847))

(declare-fun m!3400883 () Bool)

(assert (=> b!3100444 m!3400883))

(assert (=> b!3100436 m!3400847))

(assert (=> b!3100436 m!3400847))

(assert (=> b!3100436 m!3400849))

(assert (=> d!860986 m!3400855))

(declare-fun m!3400885 () Bool)

(assert (=> d!860986 m!3400885))

(assert (=> bm!218482 m!3400855))

(assert (=> b!3099700 d!860986))

(declare-fun d!860988 () Bool)

(assert (=> d!860988 (matchR!4439 (Concat!14878 (regOne!19626 r!17423) (regTwo!19626 r!17423)) (++!8499 (_1!20244 lt!1055550) (_2!20244 lt!1055550)))))

(declare-fun lt!1055685 () Unit!49553)

(declare-fun choose!18347 (Regex!9557 Regex!9557 List!35422 List!35422) Unit!49553)

(assert (=> d!860988 (= lt!1055685 (choose!18347 (regOne!19626 r!17423) (regTwo!19626 r!17423) (_1!20244 lt!1055550) (_2!20244 lt!1055550)))))

(declare-fun e!1937594 () Bool)

(assert (=> d!860988 e!1937594))

(declare-fun res!1270144 () Bool)

(assert (=> d!860988 (=> (not res!1270144) (not e!1937594))))

(assert (=> d!860988 (= res!1270144 (validRegex!4290 (regOne!19626 r!17423)))))

(assert (=> d!860988 (= (lemmaTwoRegexMatchThenConcatMatchesConcatString!156 (regOne!19626 r!17423) (regTwo!19626 r!17423) (_1!20244 lt!1055550) (_2!20244 lt!1055550)) lt!1055685)))

(declare-fun b!3100448 () Bool)

(assert (=> b!3100448 (= e!1937594 (validRegex!4290 (regTwo!19626 r!17423)))))

(assert (= (and d!860988 res!1270144) b!3100448))

(assert (=> d!860988 m!3400463))

(assert (=> d!860988 m!3400463))

(assert (=> d!860988 m!3400465))

(declare-fun m!3400887 () Bool)

(assert (=> d!860988 m!3400887))

(assert (=> d!860988 m!3400801))

(assert (=> b!3100448 m!3400781))

(assert (=> b!3099700 d!860988))

(declare-fun b!3100449 () Bool)

(declare-fun res!1270146 () Bool)

(declare-fun e!1937595 () Bool)

(assert (=> b!3100449 (=> (not res!1270146) (not e!1937595))))

(declare-fun call!218488 () Bool)

(assert (=> b!3100449 (= res!1270146 (not call!218488))))

(declare-fun b!3100450 () Bool)

(declare-fun res!1270152 () Bool)

(assert (=> b!3100450 (=> (not res!1270152) (not e!1937595))))

(assert (=> b!3100450 (= res!1270152 (isEmpty!19647 (tail!5083 (_1!20244 lt!1055550))))))

(declare-fun b!3100451 () Bool)

(declare-fun res!1270147 () Bool)

(declare-fun e!1937601 () Bool)

(assert (=> b!3100451 (=> res!1270147 e!1937601)))

(assert (=> b!3100451 (= res!1270147 (not ((_ is ElementMatch!9557) (regOne!19626 r!17423))))))

(declare-fun e!1937599 () Bool)

(assert (=> b!3100451 (= e!1937599 e!1937601)))

(declare-fun b!3100452 () Bool)

(declare-fun e!1937596 () Bool)

(assert (=> b!3100452 (= e!1937596 e!1937599)))

(declare-fun c!518003 () Bool)

(assert (=> b!3100452 (= c!518003 ((_ is EmptyLang!9557) (regOne!19626 r!17423)))))

(declare-fun b!3100453 () Bool)

(declare-fun res!1270149 () Bool)

(declare-fun e!1937597 () Bool)

(assert (=> b!3100453 (=> res!1270149 e!1937597)))

(assert (=> b!3100453 (= res!1270149 (not (isEmpty!19647 (tail!5083 (_1!20244 lt!1055550)))))))

(declare-fun bm!218483 () Bool)

(assert (=> bm!218483 (= call!218488 (isEmpty!19647 (_1!20244 lt!1055550)))))

(declare-fun b!3100454 () Bool)

(assert (=> b!3100454 (= e!1937597 (not (= (head!6857 (_1!20244 lt!1055550)) (c!517801 (regOne!19626 r!17423)))))))

(declare-fun b!3100455 () Bool)

(declare-fun e!1937598 () Bool)

(assert (=> b!3100455 (= e!1937598 (nullable!3203 (regOne!19626 r!17423)))))

(declare-fun b!3100457 () Bool)

(declare-fun lt!1055686 () Bool)

(assert (=> b!3100457 (= e!1937599 (not lt!1055686))))

(declare-fun b!3100458 () Bool)

(declare-fun e!1937600 () Bool)

(assert (=> b!3100458 (= e!1937600 e!1937597)))

(declare-fun res!1270151 () Bool)

(assert (=> b!3100458 (=> res!1270151 e!1937597)))

(assert (=> b!3100458 (= res!1270151 call!218488)))

(declare-fun b!3100459 () Bool)

(assert (=> b!3100459 (= e!1937596 (= lt!1055686 call!218488))))

(declare-fun b!3100460 () Bool)

(declare-fun res!1270148 () Bool)

(assert (=> b!3100460 (=> res!1270148 e!1937601)))

(assert (=> b!3100460 (= res!1270148 e!1937595)))

(declare-fun res!1270145 () Bool)

(assert (=> b!3100460 (=> (not res!1270145) (not e!1937595))))

(assert (=> b!3100460 (= res!1270145 lt!1055686)))

(declare-fun b!3100461 () Bool)

(assert (=> b!3100461 (= e!1937598 (matchR!4439 (derivativeStep!2798 (regOne!19626 r!17423) (head!6857 (_1!20244 lt!1055550))) (tail!5083 (_1!20244 lt!1055550))))))

(declare-fun b!3100462 () Bool)

(assert (=> b!3100462 (= e!1937595 (= (head!6857 (_1!20244 lt!1055550)) (c!517801 (regOne!19626 r!17423))))))

(declare-fun b!3100456 () Bool)

(assert (=> b!3100456 (= e!1937601 e!1937600)))

(declare-fun res!1270150 () Bool)

(assert (=> b!3100456 (=> (not res!1270150) (not e!1937600))))

(assert (=> b!3100456 (= res!1270150 (not lt!1055686))))

(declare-fun d!860990 () Bool)

(assert (=> d!860990 e!1937596))

(declare-fun c!518005 () Bool)

(assert (=> d!860990 (= c!518005 ((_ is EmptyExpr!9557) (regOne!19626 r!17423)))))

(assert (=> d!860990 (= lt!1055686 e!1937598)))

(declare-fun c!518004 () Bool)

(assert (=> d!860990 (= c!518004 (isEmpty!19647 (_1!20244 lt!1055550)))))

(assert (=> d!860990 (validRegex!4290 (regOne!19626 r!17423))))

(assert (=> d!860990 (= (matchR!4439 (regOne!19626 r!17423) (_1!20244 lt!1055550)) lt!1055686)))

(assert (= (and d!860990 c!518004) b!3100455))

(assert (= (and d!860990 (not c!518004)) b!3100461))

(assert (= (and d!860990 c!518005) b!3100459))

(assert (= (and d!860990 (not c!518005)) b!3100452))

(assert (= (and b!3100452 c!518003) b!3100457))

(assert (= (and b!3100452 (not c!518003)) b!3100451))

(assert (= (and b!3100451 (not res!1270147)) b!3100460))

(assert (= (and b!3100460 res!1270145) b!3100449))

(assert (= (and b!3100449 res!1270146) b!3100450))

(assert (= (and b!3100450 res!1270152) b!3100462))

(assert (= (and b!3100460 (not res!1270148)) b!3100456))

(assert (= (and b!3100456 res!1270150) b!3100458))

(assert (= (and b!3100458 (not res!1270151)) b!3100453))

(assert (= (and b!3100453 (not res!1270149)) b!3100454))

(assert (= (or b!3100459 b!3100449 b!3100458) bm!218483))

(assert (=> b!3100454 m!3400857))

(assert (=> b!3100462 m!3400857))

(assert (=> b!3100455 m!3400797))

(assert (=> b!3100450 m!3400861))

(assert (=> b!3100450 m!3400861))

(assert (=> b!3100450 m!3400863))

(assert (=> b!3100461 m!3400857))

(assert (=> b!3100461 m!3400857))

(declare-fun m!3400889 () Bool)

(assert (=> b!3100461 m!3400889))

(assert (=> b!3100461 m!3400861))

(assert (=> b!3100461 m!3400889))

(assert (=> b!3100461 m!3400861))

(declare-fun m!3400891 () Bool)

(assert (=> b!3100461 m!3400891))

(assert (=> b!3100453 m!3400861))

(assert (=> b!3100453 m!3400861))

(assert (=> b!3100453 m!3400863))

(assert (=> d!860990 m!3400869))

(assert (=> d!860990 m!3400801))

(assert (=> bm!218483 m!3400869))

(assert (=> b!3099700 d!860990))

(declare-fun d!860992 () Bool)

(assert (=> d!860992 (= (get!11088 lt!1055549) (v!34977 lt!1055549))))

(assert (=> b!3099700 d!860992))

(declare-fun b!3100467 () Bool)

(declare-fun e!1937604 () Bool)

(declare-fun tp!974550 () Bool)

(assert (=> b!3100467 (= e!1937604 (and tp_is_empty!16677 tp!974550))))

(assert (=> b!3099701 (= tp!974507 e!1937604)))

(assert (= (and b!3099701 ((_ is Cons!35298) (t!234487 s!11993))) b!3100467))

(declare-fun b!3100480 () Bool)

(declare-fun e!1937607 () Bool)

(declare-fun tp!974564 () Bool)

(assert (=> b!3100480 (= e!1937607 tp!974564)))

(declare-fun b!3100478 () Bool)

(assert (=> b!3100478 (= e!1937607 tp_is_empty!16677)))

(declare-fun b!3100481 () Bool)

(declare-fun tp!974563 () Bool)

(declare-fun tp!974565 () Bool)

(assert (=> b!3100481 (= e!1937607 (and tp!974563 tp!974565))))

(declare-fun b!3100479 () Bool)

(declare-fun tp!974561 () Bool)

(declare-fun tp!974562 () Bool)

(assert (=> b!3100479 (= e!1937607 (and tp!974561 tp!974562))))

(assert (=> b!3099696 (= tp!974508 e!1937607)))

(assert (= (and b!3099696 ((_ is ElementMatch!9557) (reg!9886 r!17423))) b!3100478))

(assert (= (and b!3099696 ((_ is Concat!14878) (reg!9886 r!17423))) b!3100479))

(assert (= (and b!3099696 ((_ is Star!9557) (reg!9886 r!17423))) b!3100480))

(assert (= (and b!3099696 ((_ is Union!9557) (reg!9886 r!17423))) b!3100481))

(declare-fun b!3100484 () Bool)

(declare-fun e!1937608 () Bool)

(declare-fun tp!974569 () Bool)

(assert (=> b!3100484 (= e!1937608 tp!974569)))

(declare-fun b!3100482 () Bool)

(assert (=> b!3100482 (= e!1937608 tp_is_empty!16677)))

(declare-fun b!3100485 () Bool)

(declare-fun tp!974568 () Bool)

(declare-fun tp!974570 () Bool)

(assert (=> b!3100485 (= e!1937608 (and tp!974568 tp!974570))))

(declare-fun b!3100483 () Bool)

(declare-fun tp!974566 () Bool)

(declare-fun tp!974567 () Bool)

(assert (=> b!3100483 (= e!1937608 (and tp!974566 tp!974567))))

(assert (=> b!3099692 (= tp!974509 e!1937608)))

(assert (= (and b!3099692 ((_ is ElementMatch!9557) (regOne!19626 r!17423))) b!3100482))

(assert (= (and b!3099692 ((_ is Concat!14878) (regOne!19626 r!17423))) b!3100483))

(assert (= (and b!3099692 ((_ is Star!9557) (regOne!19626 r!17423))) b!3100484))

(assert (= (and b!3099692 ((_ is Union!9557) (regOne!19626 r!17423))) b!3100485))

(declare-fun b!3100488 () Bool)

(declare-fun e!1937609 () Bool)

(declare-fun tp!974574 () Bool)

(assert (=> b!3100488 (= e!1937609 tp!974574)))

(declare-fun b!3100486 () Bool)

(assert (=> b!3100486 (= e!1937609 tp_is_empty!16677)))

(declare-fun b!3100489 () Bool)

(declare-fun tp!974573 () Bool)

(declare-fun tp!974575 () Bool)

(assert (=> b!3100489 (= e!1937609 (and tp!974573 tp!974575))))

(declare-fun b!3100487 () Bool)

(declare-fun tp!974571 () Bool)

(declare-fun tp!974572 () Bool)

(assert (=> b!3100487 (= e!1937609 (and tp!974571 tp!974572))))

(assert (=> b!3099692 (= tp!974505 e!1937609)))

(assert (= (and b!3099692 ((_ is ElementMatch!9557) (regTwo!19626 r!17423))) b!3100486))

(assert (= (and b!3099692 ((_ is Concat!14878) (regTwo!19626 r!17423))) b!3100487))

(assert (= (and b!3099692 ((_ is Star!9557) (regTwo!19626 r!17423))) b!3100488))

(assert (= (and b!3099692 ((_ is Union!9557) (regTwo!19626 r!17423))) b!3100489))

(declare-fun b!3100492 () Bool)

(declare-fun e!1937610 () Bool)

(declare-fun tp!974579 () Bool)

(assert (=> b!3100492 (= e!1937610 tp!974579)))

(declare-fun b!3100490 () Bool)

(assert (=> b!3100490 (= e!1937610 tp_is_empty!16677)))

(declare-fun b!3100493 () Bool)

(declare-fun tp!974578 () Bool)

(declare-fun tp!974580 () Bool)

(assert (=> b!3100493 (= e!1937610 (and tp!974578 tp!974580))))

(declare-fun b!3100491 () Bool)

(declare-fun tp!974576 () Bool)

(declare-fun tp!974577 () Bool)

(assert (=> b!3100491 (= e!1937610 (and tp!974576 tp!974577))))

(assert (=> b!3099695 (= tp!974506 e!1937610)))

(assert (= (and b!3099695 ((_ is ElementMatch!9557) (regOne!19627 r!17423))) b!3100490))

(assert (= (and b!3099695 ((_ is Concat!14878) (regOne!19627 r!17423))) b!3100491))

(assert (= (and b!3099695 ((_ is Star!9557) (regOne!19627 r!17423))) b!3100492))

(assert (= (and b!3099695 ((_ is Union!9557) (regOne!19627 r!17423))) b!3100493))

(declare-fun b!3100496 () Bool)

(declare-fun e!1937611 () Bool)

(declare-fun tp!974584 () Bool)

(assert (=> b!3100496 (= e!1937611 tp!974584)))

(declare-fun b!3100494 () Bool)

(assert (=> b!3100494 (= e!1937611 tp_is_empty!16677)))

(declare-fun b!3100497 () Bool)

(declare-fun tp!974583 () Bool)

(declare-fun tp!974585 () Bool)

(assert (=> b!3100497 (= e!1937611 (and tp!974583 tp!974585))))

(declare-fun b!3100495 () Bool)

(declare-fun tp!974581 () Bool)

(declare-fun tp!974582 () Bool)

(assert (=> b!3100495 (= e!1937611 (and tp!974581 tp!974582))))

(assert (=> b!3099695 (= tp!974504 e!1937611)))

(assert (= (and b!3099695 ((_ is ElementMatch!9557) (regTwo!19627 r!17423))) b!3100494))

(assert (= (and b!3099695 ((_ is Concat!14878) (regTwo!19627 r!17423))) b!3100495))

(assert (= (and b!3099695 ((_ is Star!9557) (regTwo!19627 r!17423))) b!3100496))

(assert (= (and b!3099695 ((_ is Union!9557) (regTwo!19627 r!17423))) b!3100497))

(check-sat (not b!3100430) (not b!3100479) (not d!860978) (not d!860966) (not b!3100419) (not bm!218476) (not b!3100265) (not b!3099924) (not b!3100247) (not b!3099819) (not b!3100480) (not b!3099812) (not b!3100495) (not d!860930) (not b!3100387) (not b!3100409) (not d!860988) (not b!3100375) (not bm!218390) (not d!860932) (not d!860938) (not b!3100433) (not b!3100417) (not b!3100257) (not b!3100395) (not bm!218466) (not bm!218474) (not d!860950) (not b!3100252) (not b!3100261) (not b!3099928) (not b!3099808) (not d!860980) (not b!3100251) (not b!3100455) (not bm!218479) (not b!3100431) (not bm!218383) (not b!3100270) (not b!3100445) (not b!3100483) (not b!3100454) (not b!3100436) (not b!3100350) (not d!860910) (not b!3099820) (not b!3100377) (not b!3100496) (not d!860970) (not b!3100444) (not d!860986) (not b!3100437) (not bm!218450) (not b!3100408) (not b!3100461) (not b!3099811) (not bm!218483) (not b!3100453) (not d!860974) (not b!3100248) (not bm!218400) (not b!3100488) (not b!3100497) (not bm!218473) (not b!3100388) (not bm!218467) (not d!860976) (not b!3100423) (not d!860958) (not b!3100487) (not bm!218470) (not bm!218382) (not bm!218471) (not bm!218448) (not bm!218482) (not b!3100467) (not b!3100276) (not bm!218477) tp_is_empty!16677 (not b!3100269) (not d!860984) (not b!3100277) (not bm!218469) (not b!3100416) (not d!860972) (not b!3100485) (not b!3100438) (not d!860886) (not b!3100481) (not bm!218399) (not bm!218481) (not b!3100424) (not bm!218480) (not b!3100402) (not b!3100268) (not b!3100394) (not d!860982) (not b!3100352) (not d!860964) (not b!3100489) (not b!3100410) (not b!3100422) (not b!3100462) (not b!3100493) (not b!3100448) (not b!3100391) (not b!3100491) (not b!3100450) (not b!3100484) (not b!3100403) (not b!3099727) (not b!3100245) (not b!3100250) (not b!3100492) (not bm!218478) (not b!3099813) (not d!860940) (not bm!218449) (not d!860990) (not b!3100396) (not b!3100405))
(check-sat)
