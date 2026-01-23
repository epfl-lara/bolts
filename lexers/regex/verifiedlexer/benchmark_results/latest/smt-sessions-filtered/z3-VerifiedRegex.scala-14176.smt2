; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!743622 () Bool)

(assert start!743622)

(declare-fun b!7860867 () Bool)

(declare-fun e!4645420 () Bool)

(declare-fun tp!2329691 () Bool)

(declare-fun tp!2329687 () Bool)

(assert (=> b!7860867 (= e!4645420 (and tp!2329691 tp!2329687))))

(declare-fun b!7860868 () Bool)

(declare-fun tp_is_empty!52649 () Bool)

(assert (=> b!7860868 (= e!4645420 tp_is_empty!52649)))

(declare-fun b!7860869 () Bool)

(declare-fun res!3125004 () Bool)

(declare-fun e!4645421 () Bool)

(assert (=> b!7860869 (=> (not res!3125004) (not e!4645421))))

(declare-datatypes ((C!42576 0))(
  ( (C!42577 (val!31750 Int)) )
))
(declare-datatypes ((Regex!21125 0))(
  ( (ElementMatch!21125 (c!1444533 C!42576)) (Concat!29970 (regOne!42762 Regex!21125) (regTwo!42762 Regex!21125)) (EmptyExpr!21125) (Star!21125 (reg!21454 Regex!21125)) (EmptyLang!21125) (Union!21125 (regOne!42763 Regex!21125) (regTwo!42763 Regex!21125)) )
))
(declare-fun r2!6156 () Regex!21125)

(declare-fun nullable!9395 (Regex!21125) Bool)

(assert (=> b!7860869 (= res!3125004 (nullable!9395 r2!6156))))

(declare-fun b!7860870 () Bool)

(declare-fun e!4645423 () Bool)

(declare-fun tp!2329685 () Bool)

(declare-fun tp!2329690 () Bool)

(assert (=> b!7860870 (= e!4645423 (and tp!2329685 tp!2329690))))

(declare-fun b!7860871 () Bool)

(assert (=> b!7860871 (= e!4645423 tp_is_empty!52649)))

(declare-fun b!7860872 () Bool)

(declare-fun r1!6218 () Regex!21125)

(declare-fun validRegex!11535 (Regex!21125) Bool)

(assert (=> b!7860872 (= e!4645421 (not (validRegex!11535 (Concat!29970 r2!6156 r1!6218))))))

(declare-fun b!7860873 () Bool)

(declare-fun tp!2329689 () Bool)

(assert (=> b!7860873 (= e!4645420 tp!2329689)))

(declare-fun b!7860874 () Bool)

(declare-fun res!3125005 () Bool)

(assert (=> b!7860874 (=> (not res!3125005) (not e!4645421))))

(assert (=> b!7860874 (= res!3125005 (validRegex!11535 r2!6156))))

(declare-fun b!7860875 () Bool)

(declare-fun tp!2329686 () Bool)

(assert (=> b!7860875 (= e!4645423 tp!2329686)))

(declare-fun res!3125003 () Bool)

(assert (=> start!743622 (=> (not res!3125003) (not e!4645421))))

(assert (=> start!743622 (= res!3125003 (validRegex!11535 r1!6218))))

(assert (=> start!743622 e!4645421))

(assert (=> start!743622 e!4645420))

(assert (=> start!743622 e!4645423))

(declare-fun e!4645422 () Bool)

(assert (=> start!743622 e!4645422))

(declare-fun b!7860876 () Bool)

(declare-fun res!3125006 () Bool)

(assert (=> b!7860876 (=> (not res!3125006) (not e!4645421))))

(declare-datatypes ((List!73984 0))(
  ( (Nil!73860) (Cons!73860 (h!80308 C!42576) (t!388719 List!73984)) )
))
(declare-fun s!14237 () List!73984)

(get-info :version)

(assert (=> b!7860876 (= res!3125006 (not ((_ is Cons!73860) s!14237)))))

(declare-fun b!7860877 () Bool)

(declare-fun res!3125002 () Bool)

(assert (=> b!7860877 (=> (not res!3125002) (not e!4645421))))

(declare-fun matchR!10561 (Regex!21125 List!73984) Bool)

(assert (=> b!7860877 (= res!3125002 (matchR!10561 r1!6218 s!14237))))

(declare-fun b!7860878 () Bool)

(declare-fun tp!2329688 () Bool)

(declare-fun tp!2329684 () Bool)

(assert (=> b!7860878 (= e!4645423 (and tp!2329688 tp!2329684))))

(declare-fun b!7860879 () Bool)

(declare-fun tp!2329683 () Bool)

(assert (=> b!7860879 (= e!4645422 (and tp_is_empty!52649 tp!2329683))))

(declare-fun b!7860880 () Bool)

(declare-fun tp!2329692 () Bool)

(declare-fun tp!2329682 () Bool)

(assert (=> b!7860880 (= e!4645420 (and tp!2329692 tp!2329682))))

(assert (= (and start!743622 res!3125003) b!7860874))

(assert (= (and b!7860874 res!3125005) b!7860877))

(assert (= (and b!7860877 res!3125002) b!7860869))

(assert (= (and b!7860869 res!3125004) b!7860876))

(assert (= (and b!7860876 res!3125006) b!7860872))

(assert (= (and start!743622 ((_ is ElementMatch!21125) r1!6218)) b!7860868))

(assert (= (and start!743622 ((_ is Concat!29970) r1!6218)) b!7860867))

(assert (= (and start!743622 ((_ is Star!21125) r1!6218)) b!7860873))

(assert (= (and start!743622 ((_ is Union!21125) r1!6218)) b!7860880))

(assert (= (and start!743622 ((_ is ElementMatch!21125) r2!6156)) b!7860871))

(assert (= (and start!743622 ((_ is Concat!29970) r2!6156)) b!7860878))

(assert (= (and start!743622 ((_ is Star!21125) r2!6156)) b!7860875))

(assert (= (and start!743622 ((_ is Union!21125) r2!6156)) b!7860870))

(assert (= (and start!743622 ((_ is Cons!73860) s!14237)) b!7860879))

(declare-fun m!8262326 () Bool)

(assert (=> b!7860877 m!8262326))

(declare-fun m!8262328 () Bool)

(assert (=> b!7860872 m!8262328))

(declare-fun m!8262330 () Bool)

(assert (=> b!7860874 m!8262330))

(declare-fun m!8262332 () Bool)

(assert (=> start!743622 m!8262332))

(declare-fun m!8262334 () Bool)

(assert (=> b!7860869 m!8262334))

(check-sat (not b!7860870) (not b!7860873) (not b!7860877) (not b!7860880) tp_is_empty!52649 (not b!7860867) (not b!7860879) (not b!7860875) (not b!7860874) (not b!7860869) (not b!7860878) (not b!7860872) (not start!743622))
(check-sat)
(get-model)

(declare-fun d!2354417 () Bool)

(declare-fun nullableFct!3706 (Regex!21125) Bool)

(assert (=> d!2354417 (= (nullable!9395 r2!6156) (nullableFct!3706 r2!6156))))

(declare-fun bs!1967197 () Bool)

(assert (= bs!1967197 d!2354417))

(declare-fun m!8262336 () Bool)

(assert (=> bs!1967197 m!8262336))

(assert (=> b!7860869 d!2354417))

(declare-fun d!2354419 () Bool)

(declare-fun res!3125028 () Bool)

(declare-fun e!4645457 () Bool)

(assert (=> d!2354419 (=> res!3125028 e!4645457)))

(assert (=> d!2354419 (= res!3125028 ((_ is ElementMatch!21125) r2!6156))))

(assert (=> d!2354419 (= (validRegex!11535 r2!6156) e!4645457)))

(declare-fun b!7860917 () Bool)

(declare-fun e!4645458 () Bool)

(declare-fun e!4645452 () Bool)

(assert (=> b!7860917 (= e!4645458 e!4645452)))

(declare-fun res!3125029 () Bool)

(assert (=> b!7860917 (=> (not res!3125029) (not e!4645452))))

(declare-fun call!728775 () Bool)

(assert (=> b!7860917 (= res!3125029 call!728775)))

(declare-fun b!7860918 () Bool)

(declare-fun e!4645453 () Bool)

(declare-fun e!4645454 () Bool)

(assert (=> b!7860918 (= e!4645453 e!4645454)))

(declare-fun res!3125031 () Bool)

(assert (=> b!7860918 (= res!3125031 (not (nullable!9395 (reg!21454 r2!6156))))))

(assert (=> b!7860918 (=> (not res!3125031) (not e!4645454))))

(declare-fun b!7860919 () Bool)

(declare-fun call!728777 () Bool)

(assert (=> b!7860919 (= e!4645454 call!728777)))

(declare-fun b!7860920 () Bool)

(declare-fun res!3125027 () Bool)

(assert (=> b!7860920 (=> res!3125027 e!4645458)))

(assert (=> b!7860920 (= res!3125027 (not ((_ is Concat!29970) r2!6156)))))

(declare-fun e!4645455 () Bool)

(assert (=> b!7860920 (= e!4645455 e!4645458)))

(declare-fun b!7860921 () Bool)

(assert (=> b!7860921 (= e!4645453 e!4645455)))

(declare-fun c!1444543 () Bool)

(assert (=> b!7860921 (= c!1444543 ((_ is Union!21125) r2!6156))))

(declare-fun b!7860922 () Bool)

(declare-fun call!728776 () Bool)

(assert (=> b!7860922 (= e!4645452 call!728776)))

(declare-fun bm!728770 () Bool)

(assert (=> bm!728770 (= call!728775 (validRegex!11535 (ite c!1444543 (regOne!42763 r2!6156) (regOne!42762 r2!6156))))))

(declare-fun b!7860923 () Bool)

(assert (=> b!7860923 (= e!4645457 e!4645453)))

(declare-fun c!1444542 () Bool)

(assert (=> b!7860923 (= c!1444542 ((_ is Star!21125) r2!6156))))

(declare-fun bm!728771 () Bool)

(assert (=> bm!728771 (= call!728776 call!728777)))

(declare-fun b!7860924 () Bool)

(declare-fun e!4645456 () Bool)

(assert (=> b!7860924 (= e!4645456 call!728776)))

(declare-fun b!7860925 () Bool)

(declare-fun res!3125030 () Bool)

(assert (=> b!7860925 (=> (not res!3125030) (not e!4645456))))

(assert (=> b!7860925 (= res!3125030 call!728775)))

(assert (=> b!7860925 (= e!4645455 e!4645456)))

(declare-fun bm!728772 () Bool)

(assert (=> bm!728772 (= call!728777 (validRegex!11535 (ite c!1444542 (reg!21454 r2!6156) (ite c!1444543 (regTwo!42763 r2!6156) (regTwo!42762 r2!6156)))))))

(assert (= (and d!2354419 (not res!3125028)) b!7860923))

(assert (= (and b!7860923 c!1444542) b!7860918))

(assert (= (and b!7860923 (not c!1444542)) b!7860921))

(assert (= (and b!7860918 res!3125031) b!7860919))

(assert (= (and b!7860921 c!1444543) b!7860925))

(assert (= (and b!7860921 (not c!1444543)) b!7860920))

(assert (= (and b!7860925 res!3125030) b!7860924))

(assert (= (and b!7860920 (not res!3125027)) b!7860917))

(assert (= (and b!7860917 res!3125029) b!7860922))

(assert (= (or b!7860924 b!7860922) bm!728771))

(assert (= (or b!7860925 b!7860917) bm!728770))

(assert (= (or b!7860919 bm!728771) bm!728772))

(declare-fun m!8262338 () Bool)

(assert (=> b!7860918 m!8262338))

(declare-fun m!8262340 () Bool)

(assert (=> bm!728770 m!8262340))

(declare-fun m!8262342 () Bool)

(assert (=> bm!728772 m!8262342))

(assert (=> b!7860874 d!2354419))

(declare-fun d!2354423 () Bool)

(declare-fun res!3125036 () Bool)

(declare-fun e!4645471 () Bool)

(assert (=> d!2354423 (=> res!3125036 e!4645471)))

(assert (=> d!2354423 (= res!3125036 ((_ is ElementMatch!21125) r1!6218))))

(assert (=> d!2354423 (= (validRegex!11535 r1!6218) e!4645471)))

(declare-fun b!7860929 () Bool)

(declare-fun e!4645472 () Bool)

(declare-fun e!4645462 () Bool)

(assert (=> b!7860929 (= e!4645472 e!4645462)))

(declare-fun res!3125037 () Bool)

(assert (=> b!7860929 (=> (not res!3125037) (not e!4645462))))

(declare-fun call!728779 () Bool)

(assert (=> b!7860929 (= res!3125037 call!728779)))

(declare-fun b!7860930 () Bool)

(declare-fun e!4645464 () Bool)

(declare-fun e!4645466 () Bool)

(assert (=> b!7860930 (= e!4645464 e!4645466)))

(declare-fun res!3125041 () Bool)

(assert (=> b!7860930 (= res!3125041 (not (nullable!9395 (reg!21454 r1!6218))))))

(assert (=> b!7860930 (=> (not res!3125041) (not e!4645466))))

(declare-fun b!7860931 () Bool)

(declare-fun call!728783 () Bool)

(assert (=> b!7860931 (= e!4645466 call!728783)))

(declare-fun b!7860932 () Bool)

(declare-fun res!3125033 () Bool)

(assert (=> b!7860932 (=> res!3125033 e!4645472)))

(assert (=> b!7860932 (= res!3125033 (not ((_ is Concat!29970) r1!6218)))))

(declare-fun e!4645467 () Bool)

(assert (=> b!7860932 (= e!4645467 e!4645472)))

(declare-fun b!7860933 () Bool)

(assert (=> b!7860933 (= e!4645464 e!4645467)))

(declare-fun c!1444547 () Bool)

(assert (=> b!7860933 (= c!1444547 ((_ is Union!21125) r1!6218))))

(declare-fun b!7860934 () Bool)

(declare-fun call!728780 () Bool)

(assert (=> b!7860934 (= e!4645462 call!728780)))

(declare-fun bm!728776 () Bool)

(assert (=> bm!728776 (= call!728779 (validRegex!11535 (ite c!1444547 (regOne!42763 r1!6218) (regOne!42762 r1!6218))))))

(declare-fun b!7860937 () Bool)

(assert (=> b!7860937 (= e!4645471 e!4645464)))

(declare-fun c!1444544 () Bool)

(assert (=> b!7860937 (= c!1444544 ((_ is Star!21125) r1!6218))))

(declare-fun bm!728777 () Bool)

(assert (=> bm!728777 (= call!728780 call!728783)))

(declare-fun b!7860940 () Bool)

(declare-fun e!4645469 () Bool)

(assert (=> b!7860940 (= e!4645469 call!728780)))

(declare-fun b!7860942 () Bool)

(declare-fun res!3125040 () Bool)

(assert (=> b!7860942 (=> (not res!3125040) (not e!4645469))))

(assert (=> b!7860942 (= res!3125040 call!728779)))

(assert (=> b!7860942 (= e!4645467 e!4645469)))

(declare-fun bm!728778 () Bool)

(assert (=> bm!728778 (= call!728783 (validRegex!11535 (ite c!1444544 (reg!21454 r1!6218) (ite c!1444547 (regTwo!42763 r1!6218) (regTwo!42762 r1!6218)))))))

(assert (= (and d!2354423 (not res!3125036)) b!7860937))

(assert (= (and b!7860937 c!1444544) b!7860930))

(assert (= (and b!7860937 (not c!1444544)) b!7860933))

(assert (= (and b!7860930 res!3125041) b!7860931))

(assert (= (and b!7860933 c!1444547) b!7860942))

(assert (= (and b!7860933 (not c!1444547)) b!7860932))

(assert (= (and b!7860942 res!3125040) b!7860940))

(assert (= (and b!7860932 (not res!3125033)) b!7860929))

(assert (= (and b!7860929 res!3125037) b!7860934))

(assert (= (or b!7860940 b!7860934) bm!728777))

(assert (= (or b!7860942 b!7860929) bm!728776))

(assert (= (or b!7860931 bm!728777) bm!728778))

(declare-fun m!8262344 () Bool)

(assert (=> b!7860930 m!8262344))

(declare-fun m!8262346 () Bool)

(assert (=> bm!728776 m!8262346))

(declare-fun m!8262348 () Bool)

(assert (=> bm!728778 m!8262348))

(assert (=> start!743622 d!2354423))

(declare-fun d!2354425 () Bool)

(declare-fun res!3125043 () Bool)

(declare-fun e!4645478 () Bool)

(assert (=> d!2354425 (=> res!3125043 e!4645478)))

(assert (=> d!2354425 (= res!3125043 ((_ is ElementMatch!21125) (Concat!29970 r2!6156 r1!6218)))))

(assert (=> d!2354425 (= (validRegex!11535 (Concat!29970 r2!6156 r1!6218)) e!4645478)))

(declare-fun b!7860944 () Bool)

(declare-fun e!4645479 () Bool)

(declare-fun e!4645473 () Bool)

(assert (=> b!7860944 (= e!4645479 e!4645473)))

(declare-fun res!3125044 () Bool)

(assert (=> b!7860944 (=> (not res!3125044) (not e!4645473))))

(declare-fun call!728784 () Bool)

(assert (=> b!7860944 (= res!3125044 call!728784)))

(declare-fun b!7860945 () Bool)

(declare-fun e!4645474 () Bool)

(declare-fun e!4645475 () Bool)

(assert (=> b!7860945 (= e!4645474 e!4645475)))

(declare-fun res!3125046 () Bool)

(assert (=> b!7860945 (= res!3125046 (not (nullable!9395 (reg!21454 (Concat!29970 r2!6156 r1!6218)))))))

(assert (=> b!7860945 (=> (not res!3125046) (not e!4645475))))

(declare-fun b!7860946 () Bool)

(declare-fun call!728786 () Bool)

(assert (=> b!7860946 (= e!4645475 call!728786)))

(declare-fun b!7860947 () Bool)

(declare-fun res!3125042 () Bool)

(assert (=> b!7860947 (=> res!3125042 e!4645479)))

(assert (=> b!7860947 (= res!3125042 (not ((_ is Concat!29970) (Concat!29970 r2!6156 r1!6218))))))

(declare-fun e!4645476 () Bool)

(assert (=> b!7860947 (= e!4645476 e!4645479)))

(declare-fun b!7860948 () Bool)

(assert (=> b!7860948 (= e!4645474 e!4645476)))

(declare-fun c!1444549 () Bool)

(assert (=> b!7860948 (= c!1444549 ((_ is Union!21125) (Concat!29970 r2!6156 r1!6218)))))

(declare-fun b!7860949 () Bool)

(declare-fun call!728785 () Bool)

(assert (=> b!7860949 (= e!4645473 call!728785)))

(declare-fun bm!728779 () Bool)

(assert (=> bm!728779 (= call!728784 (validRegex!11535 (ite c!1444549 (regOne!42763 (Concat!29970 r2!6156 r1!6218)) (regOne!42762 (Concat!29970 r2!6156 r1!6218)))))))

(declare-fun b!7860950 () Bool)

(assert (=> b!7860950 (= e!4645478 e!4645474)))

(declare-fun c!1444548 () Bool)

(assert (=> b!7860950 (= c!1444548 ((_ is Star!21125) (Concat!29970 r2!6156 r1!6218)))))

(declare-fun bm!728780 () Bool)

(assert (=> bm!728780 (= call!728785 call!728786)))

(declare-fun b!7860951 () Bool)

(declare-fun e!4645477 () Bool)

(assert (=> b!7860951 (= e!4645477 call!728785)))

(declare-fun b!7860952 () Bool)

(declare-fun res!3125045 () Bool)

(assert (=> b!7860952 (=> (not res!3125045) (not e!4645477))))

(assert (=> b!7860952 (= res!3125045 call!728784)))

(assert (=> b!7860952 (= e!4645476 e!4645477)))

(declare-fun bm!728781 () Bool)

(assert (=> bm!728781 (= call!728786 (validRegex!11535 (ite c!1444548 (reg!21454 (Concat!29970 r2!6156 r1!6218)) (ite c!1444549 (regTwo!42763 (Concat!29970 r2!6156 r1!6218)) (regTwo!42762 (Concat!29970 r2!6156 r1!6218))))))))

(assert (= (and d!2354425 (not res!3125043)) b!7860950))

(assert (= (and b!7860950 c!1444548) b!7860945))

(assert (= (and b!7860950 (not c!1444548)) b!7860948))

(assert (= (and b!7860945 res!3125046) b!7860946))

(assert (= (and b!7860948 c!1444549) b!7860952))

(assert (= (and b!7860948 (not c!1444549)) b!7860947))

(assert (= (and b!7860952 res!3125045) b!7860951))

(assert (= (and b!7860947 (not res!3125042)) b!7860944))

(assert (= (and b!7860944 res!3125044) b!7860949))

(assert (= (or b!7860951 b!7860949) bm!728780))

(assert (= (or b!7860952 b!7860944) bm!728779))

(assert (= (or b!7860946 bm!728780) bm!728781))

(declare-fun m!8262356 () Bool)

(assert (=> b!7860945 m!8262356))

(declare-fun m!8262358 () Bool)

(assert (=> bm!728779 m!8262358))

(declare-fun m!8262360 () Bool)

(assert (=> bm!728781 m!8262360))

(assert (=> b!7860872 d!2354425))

(declare-fun b!7861023 () Bool)

(declare-fun res!3125093 () Bool)

(declare-fun e!4645520 () Bool)

(assert (=> b!7861023 (=> (not res!3125093) (not e!4645520))))

(declare-fun isEmpty!42363 (List!73984) Bool)

(declare-fun tail!15617 (List!73984) List!73984)

(assert (=> b!7861023 (= res!3125093 (isEmpty!42363 (tail!15617 s!14237)))))

(declare-fun b!7861024 () Bool)

(declare-fun e!4645517 () Bool)

(declare-fun lt!2680403 () Bool)

(declare-fun call!728792 () Bool)

(assert (=> b!7861024 (= e!4645517 (= lt!2680403 call!728792))))

(declare-fun b!7861025 () Bool)

(declare-fun e!4645516 () Bool)

(assert (=> b!7861025 (= e!4645517 e!4645516)))

(declare-fun c!1444565 () Bool)

(assert (=> b!7861025 (= c!1444565 ((_ is EmptyLang!21125) r1!6218))))

(declare-fun b!7861026 () Bool)

(declare-fun res!3125094 () Bool)

(declare-fun e!4645518 () Bool)

(assert (=> b!7861026 (=> res!3125094 e!4645518)))

(assert (=> b!7861026 (= res!3125094 e!4645520)))

(declare-fun res!3125091 () Bool)

(assert (=> b!7861026 (=> (not res!3125091) (not e!4645520))))

(assert (=> b!7861026 (= res!3125091 lt!2680403)))

(declare-fun b!7861027 () Bool)

(declare-fun e!4645519 () Bool)

(declare-fun head!16074 (List!73984) C!42576)

(assert (=> b!7861027 (= e!4645519 (not (= (head!16074 s!14237) (c!1444533 r1!6218))))))

(declare-fun b!7861028 () Bool)

(declare-fun e!4645515 () Bool)

(assert (=> b!7861028 (= e!4645518 e!4645515)))

(declare-fun res!3125089 () Bool)

(assert (=> b!7861028 (=> (not res!3125089) (not e!4645515))))

(assert (=> b!7861028 (= res!3125089 (not lt!2680403))))

(declare-fun b!7861029 () Bool)

(declare-fun res!3125087 () Bool)

(assert (=> b!7861029 (=> res!3125087 e!4645518)))

(assert (=> b!7861029 (= res!3125087 (not ((_ is ElementMatch!21125) r1!6218)))))

(assert (=> b!7861029 (= e!4645516 e!4645518)))

(declare-fun b!7861030 () Bool)

(declare-fun res!3125090 () Bool)

(assert (=> b!7861030 (=> res!3125090 e!4645519)))

(assert (=> b!7861030 (= res!3125090 (not (isEmpty!42363 (tail!15617 s!14237))))))

(declare-fun b!7861031 () Bool)

(assert (=> b!7861031 (= e!4645515 e!4645519)))

(declare-fun res!3125092 () Bool)

(assert (=> b!7861031 (=> res!3125092 e!4645519)))

(assert (=> b!7861031 (= res!3125092 call!728792)))

(declare-fun b!7861032 () Bool)

(assert (=> b!7861032 (= e!4645520 (= (head!16074 s!14237) (c!1444533 r1!6218)))))

(declare-fun b!7861033 () Bool)

(assert (=> b!7861033 (= e!4645516 (not lt!2680403))))

(declare-fun b!7861034 () Bool)

(declare-fun e!4645521 () Bool)

(assert (=> b!7861034 (= e!4645521 (nullable!9395 r1!6218))))

(declare-fun d!2354429 () Bool)

(assert (=> d!2354429 e!4645517))

(declare-fun c!1444566 () Bool)

(assert (=> d!2354429 (= c!1444566 ((_ is EmptyExpr!21125) r1!6218))))

(assert (=> d!2354429 (= lt!2680403 e!4645521)))

(declare-fun c!1444567 () Bool)

(assert (=> d!2354429 (= c!1444567 (isEmpty!42363 s!14237))))

(assert (=> d!2354429 (validRegex!11535 r1!6218)))

(assert (=> d!2354429 (= (matchR!10561 r1!6218 s!14237) lt!2680403)))

(declare-fun bm!728787 () Bool)

(assert (=> bm!728787 (= call!728792 (isEmpty!42363 s!14237))))

(declare-fun b!7861035 () Bool)

(declare-fun derivativeStep!6358 (Regex!21125 C!42576) Regex!21125)

(assert (=> b!7861035 (= e!4645521 (matchR!10561 (derivativeStep!6358 r1!6218 (head!16074 s!14237)) (tail!15617 s!14237)))))

(declare-fun b!7861036 () Bool)

(declare-fun res!3125088 () Bool)

(assert (=> b!7861036 (=> (not res!3125088) (not e!4645520))))

(assert (=> b!7861036 (= res!3125088 (not call!728792))))

(assert (= (and d!2354429 c!1444567) b!7861034))

(assert (= (and d!2354429 (not c!1444567)) b!7861035))

(assert (= (and d!2354429 c!1444566) b!7861024))

(assert (= (and d!2354429 (not c!1444566)) b!7861025))

(assert (= (and b!7861025 c!1444565) b!7861033))

(assert (= (and b!7861025 (not c!1444565)) b!7861029))

(assert (= (and b!7861029 (not res!3125087)) b!7861026))

(assert (= (and b!7861026 res!3125091) b!7861036))

(assert (= (and b!7861036 res!3125088) b!7861023))

(assert (= (and b!7861023 res!3125093) b!7861032))

(assert (= (and b!7861026 (not res!3125094)) b!7861028))

(assert (= (and b!7861028 res!3125089) b!7861031))

(assert (= (and b!7861031 (not res!3125092)) b!7861030))

(assert (= (and b!7861030 (not res!3125090)) b!7861027))

(assert (= (or b!7861024 b!7861031 b!7861036) bm!728787))

(declare-fun m!8262376 () Bool)

(assert (=> d!2354429 m!8262376))

(assert (=> d!2354429 m!8262332))

(assert (=> bm!728787 m!8262376))

(declare-fun m!8262378 () Bool)

(assert (=> b!7861027 m!8262378))

(declare-fun m!8262380 () Bool)

(assert (=> b!7861030 m!8262380))

(assert (=> b!7861030 m!8262380))

(declare-fun m!8262382 () Bool)

(assert (=> b!7861030 m!8262382))

(assert (=> b!7861035 m!8262378))

(assert (=> b!7861035 m!8262378))

(declare-fun m!8262384 () Bool)

(assert (=> b!7861035 m!8262384))

(assert (=> b!7861035 m!8262380))

(assert (=> b!7861035 m!8262384))

(assert (=> b!7861035 m!8262380))

(declare-fun m!8262388 () Bool)

(assert (=> b!7861035 m!8262388))

(assert (=> b!7861023 m!8262380))

(assert (=> b!7861023 m!8262380))

(assert (=> b!7861023 m!8262382))

(assert (=> b!7861032 m!8262378))

(declare-fun m!8262394 () Bool)

(assert (=> b!7861034 m!8262394))

(assert (=> b!7860877 d!2354429))

(declare-fun b!7861066 () Bool)

(declare-fun e!4645538 () Bool)

(declare-fun tp!2329704 () Bool)

(declare-fun tp!2329706 () Bool)

(assert (=> b!7861066 (= e!4645538 (and tp!2329704 tp!2329706))))

(declare-fun b!7861065 () Bool)

(assert (=> b!7861065 (= e!4645538 tp_is_empty!52649)))

(declare-fun b!7861067 () Bool)

(declare-fun tp!2329707 () Bool)

(assert (=> b!7861067 (= e!4645538 tp!2329707)))

(assert (=> b!7860880 (= tp!2329692 e!4645538)))

(declare-fun b!7861068 () Bool)

(declare-fun tp!2329703 () Bool)

(declare-fun tp!2329705 () Bool)

(assert (=> b!7861068 (= e!4645538 (and tp!2329703 tp!2329705))))

(assert (= (and b!7860880 ((_ is ElementMatch!21125) (regOne!42763 r1!6218))) b!7861065))

(assert (= (and b!7860880 ((_ is Concat!29970) (regOne!42763 r1!6218))) b!7861066))

(assert (= (and b!7860880 ((_ is Star!21125) (regOne!42763 r1!6218))) b!7861067))

(assert (= (and b!7860880 ((_ is Union!21125) (regOne!42763 r1!6218))) b!7861068))

(declare-fun b!7861070 () Bool)

(declare-fun e!4645539 () Bool)

(declare-fun tp!2329709 () Bool)

(declare-fun tp!2329711 () Bool)

(assert (=> b!7861070 (= e!4645539 (and tp!2329709 tp!2329711))))

(declare-fun b!7861069 () Bool)

(assert (=> b!7861069 (= e!4645539 tp_is_empty!52649)))

(declare-fun b!7861071 () Bool)

(declare-fun tp!2329712 () Bool)

(assert (=> b!7861071 (= e!4645539 tp!2329712)))

(assert (=> b!7860880 (= tp!2329682 e!4645539)))

(declare-fun b!7861072 () Bool)

(declare-fun tp!2329708 () Bool)

(declare-fun tp!2329710 () Bool)

(assert (=> b!7861072 (= e!4645539 (and tp!2329708 tp!2329710))))

(assert (= (and b!7860880 ((_ is ElementMatch!21125) (regTwo!42763 r1!6218))) b!7861069))

(assert (= (and b!7860880 ((_ is Concat!29970) (regTwo!42763 r1!6218))) b!7861070))

(assert (= (and b!7860880 ((_ is Star!21125) (regTwo!42763 r1!6218))) b!7861071))

(assert (= (and b!7860880 ((_ is Union!21125) (regTwo!42763 r1!6218))) b!7861072))

(declare-fun b!7861080 () Bool)

(declare-fun e!4645542 () Bool)

(declare-fun tp!2329714 () Bool)

(declare-fun tp!2329716 () Bool)

(assert (=> b!7861080 (= e!4645542 (and tp!2329714 tp!2329716))))

(declare-fun b!7861079 () Bool)

(assert (=> b!7861079 (= e!4645542 tp_is_empty!52649)))

(declare-fun b!7861081 () Bool)

(declare-fun tp!2329717 () Bool)

(assert (=> b!7861081 (= e!4645542 tp!2329717)))

(assert (=> b!7860870 (= tp!2329685 e!4645542)))

(declare-fun b!7861082 () Bool)

(declare-fun tp!2329713 () Bool)

(declare-fun tp!2329715 () Bool)

(assert (=> b!7861082 (= e!4645542 (and tp!2329713 tp!2329715))))

(assert (= (and b!7860870 ((_ is ElementMatch!21125) (regOne!42763 r2!6156))) b!7861079))

(assert (= (and b!7860870 ((_ is Concat!29970) (regOne!42763 r2!6156))) b!7861080))

(assert (= (and b!7860870 ((_ is Star!21125) (regOne!42763 r2!6156))) b!7861081))

(assert (= (and b!7860870 ((_ is Union!21125) (regOne!42763 r2!6156))) b!7861082))

(declare-fun b!7861086 () Bool)

(declare-fun e!4645543 () Bool)

(declare-fun tp!2329725 () Bool)

(declare-fun tp!2329727 () Bool)

(assert (=> b!7861086 (= e!4645543 (and tp!2329725 tp!2329727))))

(declare-fun b!7861085 () Bool)

(assert (=> b!7861085 (= e!4645543 tp_is_empty!52649)))

(declare-fun b!7861087 () Bool)

(declare-fun tp!2329728 () Bool)

(assert (=> b!7861087 (= e!4645543 tp!2329728)))

(assert (=> b!7860870 (= tp!2329690 e!4645543)))

(declare-fun b!7861088 () Bool)

(declare-fun tp!2329724 () Bool)

(declare-fun tp!2329726 () Bool)

(assert (=> b!7861088 (= e!4645543 (and tp!2329724 tp!2329726))))

(assert (= (and b!7860870 ((_ is ElementMatch!21125) (regTwo!42763 r2!6156))) b!7861085))

(assert (= (and b!7860870 ((_ is Concat!29970) (regTwo!42763 r2!6156))) b!7861086))

(assert (= (and b!7860870 ((_ is Star!21125) (regTwo!42763 r2!6156))) b!7861087))

(assert (= (and b!7860870 ((_ is Union!21125) (regTwo!42763 r2!6156))) b!7861088))

(declare-fun b!7861092 () Bool)

(declare-fun e!4645544 () Bool)

(declare-fun tp!2329734 () Bool)

(declare-fun tp!2329736 () Bool)

(assert (=> b!7861092 (= e!4645544 (and tp!2329734 tp!2329736))))

(declare-fun b!7861091 () Bool)

(assert (=> b!7861091 (= e!4645544 tp_is_empty!52649)))

(declare-fun b!7861093 () Bool)

(declare-fun tp!2329737 () Bool)

(assert (=> b!7861093 (= e!4645544 tp!2329737)))

(assert (=> b!7860875 (= tp!2329686 e!4645544)))

(declare-fun b!7861094 () Bool)

(declare-fun tp!2329733 () Bool)

(declare-fun tp!2329735 () Bool)

(assert (=> b!7861094 (= e!4645544 (and tp!2329733 tp!2329735))))

(assert (= (and b!7860875 ((_ is ElementMatch!21125) (reg!21454 r2!6156))) b!7861091))

(assert (= (and b!7860875 ((_ is Concat!29970) (reg!21454 r2!6156))) b!7861092))

(assert (= (and b!7860875 ((_ is Star!21125) (reg!21454 r2!6156))) b!7861093))

(assert (= (and b!7860875 ((_ is Union!21125) (reg!21454 r2!6156))) b!7861094))

(declare-fun b!7861096 () Bool)

(declare-fun e!4645545 () Bool)

(declare-fun tp!2329739 () Bool)

(declare-fun tp!2329741 () Bool)

(assert (=> b!7861096 (= e!4645545 (and tp!2329739 tp!2329741))))

(declare-fun b!7861095 () Bool)

(assert (=> b!7861095 (= e!4645545 tp_is_empty!52649)))

(declare-fun b!7861097 () Bool)

(declare-fun tp!2329742 () Bool)

(assert (=> b!7861097 (= e!4645545 tp!2329742)))

(assert (=> b!7860873 (= tp!2329689 e!4645545)))

(declare-fun b!7861098 () Bool)

(declare-fun tp!2329738 () Bool)

(declare-fun tp!2329740 () Bool)

(assert (=> b!7861098 (= e!4645545 (and tp!2329738 tp!2329740))))

(assert (= (and b!7860873 ((_ is ElementMatch!21125) (reg!21454 r1!6218))) b!7861095))

(assert (= (and b!7860873 ((_ is Concat!29970) (reg!21454 r1!6218))) b!7861096))

(assert (= (and b!7860873 ((_ is Star!21125) (reg!21454 r1!6218))) b!7861097))

(assert (= (and b!7860873 ((_ is Union!21125) (reg!21454 r1!6218))) b!7861098))

(declare-fun b!7861107 () Bool)

(declare-fun e!4645549 () Bool)

(declare-fun tp!2329750 () Bool)

(assert (=> b!7861107 (= e!4645549 (and tp_is_empty!52649 tp!2329750))))

(assert (=> b!7860879 (= tp!2329683 e!4645549)))

(assert (= (and b!7860879 ((_ is Cons!73860) (t!388719 s!14237))) b!7861107))

(declare-fun b!7861112 () Bool)

(declare-fun e!4645550 () Bool)

(declare-fun tp!2329756 () Bool)

(declare-fun tp!2329759 () Bool)

(assert (=> b!7861112 (= e!4645550 (and tp!2329756 tp!2329759))))

(declare-fun b!7861110 () Bool)

(assert (=> b!7861110 (= e!4645550 tp_is_empty!52649)))

(declare-fun b!7861114 () Bool)

(declare-fun tp!2329760 () Bool)

(assert (=> b!7861114 (= e!4645550 tp!2329760)))

(assert (=> b!7860878 (= tp!2329688 e!4645550)))

(declare-fun b!7861115 () Bool)

(declare-fun tp!2329754 () Bool)

(declare-fun tp!2329757 () Bool)

(assert (=> b!7861115 (= e!4645550 (and tp!2329754 tp!2329757))))

(assert (= (and b!7860878 ((_ is ElementMatch!21125) (regOne!42762 r2!6156))) b!7861110))

(assert (= (and b!7860878 ((_ is Concat!29970) (regOne!42762 r2!6156))) b!7861112))

(assert (= (and b!7860878 ((_ is Star!21125) (regOne!42762 r2!6156))) b!7861114))

(assert (= (and b!7860878 ((_ is Union!21125) (regOne!42762 r2!6156))) b!7861115))

(declare-fun b!7861117 () Bool)

(declare-fun e!4645552 () Bool)

(declare-fun tp!2329763 () Bool)

(declare-fun tp!2329765 () Bool)

(assert (=> b!7861117 (= e!4645552 (and tp!2329763 tp!2329765))))

(declare-fun b!7861116 () Bool)

(assert (=> b!7861116 (= e!4645552 tp_is_empty!52649)))

(declare-fun b!7861118 () Bool)

(declare-fun tp!2329766 () Bool)

(assert (=> b!7861118 (= e!4645552 tp!2329766)))

(assert (=> b!7860878 (= tp!2329684 e!4645552)))

(declare-fun b!7861119 () Bool)

(declare-fun tp!2329761 () Bool)

(declare-fun tp!2329764 () Bool)

(assert (=> b!7861119 (= e!4645552 (and tp!2329761 tp!2329764))))

(assert (= (and b!7860878 ((_ is ElementMatch!21125) (regTwo!42762 r2!6156))) b!7861116))

(assert (= (and b!7860878 ((_ is Concat!29970) (regTwo!42762 r2!6156))) b!7861117))

(assert (= (and b!7860878 ((_ is Star!21125) (regTwo!42762 r2!6156))) b!7861118))

(assert (= (and b!7860878 ((_ is Union!21125) (regTwo!42762 r2!6156))) b!7861119))

(declare-fun b!7861128 () Bool)

(declare-fun e!4645554 () Bool)

(declare-fun tp!2329777 () Bool)

(declare-fun tp!2329779 () Bool)

(assert (=> b!7861128 (= e!4645554 (and tp!2329777 tp!2329779))))

(declare-fun b!7861126 () Bool)

(assert (=> b!7861126 (= e!4645554 tp_is_empty!52649)))

(declare-fun b!7861130 () Bool)

(declare-fun tp!2329780 () Bool)

(assert (=> b!7861130 (= e!4645554 tp!2329780)))

(assert (=> b!7860867 (= tp!2329691 e!4645554)))

(declare-fun b!7861131 () Bool)

(declare-fun tp!2329776 () Bool)

(declare-fun tp!2329778 () Bool)

(assert (=> b!7861131 (= e!4645554 (and tp!2329776 tp!2329778))))

(assert (= (and b!7860867 ((_ is ElementMatch!21125) (regOne!42762 r1!6218))) b!7861126))

(assert (= (and b!7860867 ((_ is Concat!29970) (regOne!42762 r1!6218))) b!7861128))

(assert (= (and b!7860867 ((_ is Star!21125) (regOne!42762 r1!6218))) b!7861130))

(assert (= (and b!7860867 ((_ is Union!21125) (regOne!42762 r1!6218))) b!7861131))

(declare-fun b!7861134 () Bool)

(declare-fun e!4645556 () Bool)

(declare-fun tp!2329782 () Bool)

(declare-fun tp!2329788 () Bool)

(assert (=> b!7861134 (= e!4645556 (and tp!2329782 tp!2329788))))

(declare-fun b!7861132 () Bool)

(assert (=> b!7861132 (= e!4645556 tp_is_empty!52649)))

(declare-fun b!7861136 () Bool)

(declare-fun tp!2329789 () Bool)

(assert (=> b!7861136 (= e!4645556 tp!2329789)))

(assert (=> b!7860867 (= tp!2329687 e!4645556)))

(declare-fun b!7861138 () Bool)

(declare-fun tp!2329781 () Bool)

(declare-fun tp!2329787 () Bool)

(assert (=> b!7861138 (= e!4645556 (and tp!2329781 tp!2329787))))

(assert (= (and b!7860867 ((_ is ElementMatch!21125) (regTwo!42762 r1!6218))) b!7861132))

(assert (= (and b!7860867 ((_ is Concat!29970) (regTwo!42762 r1!6218))) b!7861134))

(assert (= (and b!7860867 ((_ is Star!21125) (regTwo!42762 r1!6218))) b!7861136))

(assert (= (and b!7860867 ((_ is Union!21125) (regTwo!42762 r1!6218))) b!7861138))

(check-sat (not b!7861107) (not b!7861119) (not b!7861034) (not b!7861066) (not b!7861112) (not b!7861118) (not d!2354417) (not b!7861070) (not bm!728779) (not b!7860930) (not bm!728781) (not b!7861086) (not b!7861117) (not b!7861094) (not b!7861071) (not bm!728787) (not d!2354429) (not b!7861131) (not bm!728772) (not b!7861136) (not b!7861030) (not b!7860945) (not b!7861087) tp_is_empty!52649 (not b!7861134) (not b!7861072) (not b!7861097) (not b!7860918) (not bm!728778) (not b!7861114) (not b!7861081) (not b!7861023) (not b!7861128) (not bm!728770) (not b!7861080) (not b!7861130) (not b!7861035) (not b!7861088) (not b!7861093) (not b!7861032) (not b!7861082) (not b!7861096) (not b!7861138) (not bm!728776) (not b!7861092) (not b!7861067) (not b!7861098) (not b!7861115) (not b!7861027) (not b!7861068))
(check-sat)
