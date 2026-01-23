; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!110506 () Bool)

(assert start!110506)

(declare-fun b!1254715 () Bool)

(declare-fun e!798559 () Bool)

(declare-datatypes ((C!7260 0))(
  ( (C!7261 (val!4160 Int)) )
))
(declare-datatypes ((Regex!3471 0))(
  ( (ElementMatch!3471 (c!208298 C!7260)) (Concat!5701 (regOne!7454 Regex!3471) (regTwo!7454 Regex!3471)) (EmptyExpr!3471) (Star!3471 (reg!3800 Regex!3471)) (EmptyLang!3471) (Union!3471 (regOne!7455 Regex!3471) (regTwo!7455 Regex!3471)) )
))
(declare-fun lt!420317 () Regex!3471)

(declare-fun r!15719 () Regex!3471)

(declare-fun nullable!1109 (Regex!3471) Bool)

(assert (=> b!1254715 (= e!798559 (not (= (nullable!1109 lt!420317) (nullable!1109 r!15719))))))

(declare-fun b!1254716 () Bool)

(declare-fun res!555790 () Bool)

(declare-fun e!798560 () Bool)

(assert (=> b!1254716 (=> (not res!555790) (not e!798560))))

(get-info :version)

(assert (=> b!1254716 (= res!555790 (and (or (not ((_ is Concat!5701) r!15719)) (not ((_ is EmptyExpr!3471) (regOne!7454 r!15719)))) (or (not ((_ is Concat!5701) r!15719)) (not ((_ is EmptyExpr!3471) (regTwo!7454 r!15719)))) (not ((_ is Concat!5701) r!15719)) (not ((_ is Union!3471) r!15719)) ((_ is Star!3471) r!15719)))))

(declare-fun b!1254717 () Bool)

(declare-fun e!798558 () Bool)

(declare-fun tp!369878 () Bool)

(declare-fun tp!369879 () Bool)

(assert (=> b!1254717 (= e!798558 (and tp!369878 tp!369879))))

(declare-fun res!555788 () Bool)

(assert (=> start!110506 (=> (not res!555788) (not e!798560))))

(declare-fun validRegex!1507 (Regex!3471) Bool)

(assert (=> start!110506 (= res!555788 (validRegex!1507 r!15719))))

(assert (=> start!110506 e!798560))

(assert (=> start!110506 e!798558))

(declare-fun b!1254718 () Bool)

(declare-fun tp!369875 () Bool)

(assert (=> b!1254718 (= e!798558 tp!369875)))

(declare-fun b!1254719 () Bool)

(declare-fun tp_is_empty!6463 () Bool)

(assert (=> b!1254719 (= e!798558 tp_is_empty!6463)))

(declare-fun b!1254720 () Bool)

(assert (=> b!1254720 (= e!798560 e!798559)))

(declare-fun res!555789 () Bool)

(assert (=> b!1254720 (=> res!555789 e!798559)))

(assert (=> b!1254720 (= res!555789 (not (validRegex!1507 lt!420317)))))

(declare-fun removeUselessConcat!520 (Regex!3471) Regex!3471)

(assert (=> b!1254720 (= lt!420317 (Star!3471 (removeUselessConcat!520 (reg!3800 r!15719))))))

(declare-fun b!1254721 () Bool)

(declare-fun tp!369876 () Bool)

(declare-fun tp!369877 () Bool)

(assert (=> b!1254721 (= e!798558 (and tp!369876 tp!369877))))

(assert (= (and start!110506 res!555788) b!1254716))

(assert (= (and b!1254716 res!555790) b!1254720))

(assert (= (and b!1254720 (not res!555789)) b!1254715))

(assert (= (and start!110506 ((_ is ElementMatch!3471) r!15719)) b!1254719))

(assert (= (and start!110506 ((_ is Concat!5701) r!15719)) b!1254717))

(assert (= (and start!110506 ((_ is Star!3471) r!15719)) b!1254718))

(assert (= (and start!110506 ((_ is Union!3471) r!15719)) b!1254721))

(declare-fun m!1413445 () Bool)

(assert (=> b!1254715 m!1413445))

(declare-fun m!1413447 () Bool)

(assert (=> b!1254715 m!1413447))

(declare-fun m!1413449 () Bool)

(assert (=> start!110506 m!1413449))

(declare-fun m!1413451 () Bool)

(assert (=> b!1254720 m!1413451))

(declare-fun m!1413453 () Bool)

(assert (=> b!1254720 m!1413453))

(check-sat (not b!1254721) (not start!110506) (not b!1254715) (not b!1254718) tp_is_empty!6463 (not b!1254717) (not b!1254720))
(check-sat)
(get-model)

(declare-fun b!1254740 () Bool)

(declare-fun e!798575 () Bool)

(declare-fun call!87950 () Bool)

(assert (=> b!1254740 (= e!798575 call!87950)))

(declare-fun bm!87943 () Bool)

(declare-fun call!87948 () Bool)

(declare-fun c!208303 () Bool)

(assert (=> bm!87943 (= call!87948 (validRegex!1507 (ite c!208303 (regOne!7455 lt!420317) (regOne!7454 lt!420317))))))

(declare-fun b!1254741 () Bool)

(declare-fun res!555805 () Bool)

(declare-fun e!798580 () Bool)

(assert (=> b!1254741 (=> res!555805 e!798580)))

(assert (=> b!1254741 (= res!555805 (not ((_ is Concat!5701) lt!420317)))))

(declare-fun e!798577 () Bool)

(assert (=> b!1254741 (= e!798577 e!798580)))

(declare-fun b!1254742 () Bool)

(declare-fun e!798581 () Bool)

(declare-fun e!798576 () Bool)

(assert (=> b!1254742 (= e!798581 e!798576)))

(declare-fun c!208304 () Bool)

(assert (=> b!1254742 (= c!208304 ((_ is Star!3471) lt!420317))))

(declare-fun bm!87944 () Bool)

(declare-fun call!87949 () Bool)

(assert (=> bm!87944 (= call!87950 call!87949)))

(declare-fun d!354719 () Bool)

(declare-fun res!555801 () Bool)

(assert (=> d!354719 (=> res!555801 e!798581)))

(assert (=> d!354719 (= res!555801 ((_ is ElementMatch!3471) lt!420317))))

(assert (=> d!354719 (= (validRegex!1507 lt!420317) e!798581)))

(declare-fun b!1254743 () Bool)

(declare-fun e!798579 () Bool)

(assert (=> b!1254743 (= e!798579 call!87950)))

(declare-fun b!1254744 () Bool)

(declare-fun res!555802 () Bool)

(assert (=> b!1254744 (=> (not res!555802) (not e!798575))))

(assert (=> b!1254744 (= res!555802 call!87948)))

(assert (=> b!1254744 (= e!798577 e!798575)))

(declare-fun b!1254745 () Bool)

(declare-fun e!798578 () Bool)

(assert (=> b!1254745 (= e!798578 call!87949)))

(declare-fun bm!87945 () Bool)

(assert (=> bm!87945 (= call!87949 (validRegex!1507 (ite c!208304 (reg!3800 lt!420317) (ite c!208303 (regTwo!7455 lt!420317) (regTwo!7454 lt!420317)))))))

(declare-fun b!1254746 () Bool)

(assert (=> b!1254746 (= e!798580 e!798579)))

(declare-fun res!555804 () Bool)

(assert (=> b!1254746 (=> (not res!555804) (not e!798579))))

(assert (=> b!1254746 (= res!555804 call!87948)))

(declare-fun b!1254747 () Bool)

(assert (=> b!1254747 (= e!798576 e!798578)))

(declare-fun res!555803 () Bool)

(assert (=> b!1254747 (= res!555803 (not (nullable!1109 (reg!3800 lt!420317))))))

(assert (=> b!1254747 (=> (not res!555803) (not e!798578))))

(declare-fun b!1254748 () Bool)

(assert (=> b!1254748 (= e!798576 e!798577)))

(assert (=> b!1254748 (= c!208303 ((_ is Union!3471) lt!420317))))

(assert (= (and d!354719 (not res!555801)) b!1254742))

(assert (= (and b!1254742 c!208304) b!1254747))

(assert (= (and b!1254742 (not c!208304)) b!1254748))

(assert (= (and b!1254747 res!555803) b!1254745))

(assert (= (and b!1254748 c!208303) b!1254744))

(assert (= (and b!1254748 (not c!208303)) b!1254741))

(assert (= (and b!1254744 res!555802) b!1254740))

(assert (= (and b!1254741 (not res!555805)) b!1254746))

(assert (= (and b!1254746 res!555804) b!1254743))

(assert (= (or b!1254740 b!1254743) bm!87944))

(assert (= (or b!1254744 b!1254746) bm!87943))

(assert (= (or b!1254745 bm!87944) bm!87945))

(declare-fun m!1413455 () Bool)

(assert (=> bm!87943 m!1413455))

(declare-fun m!1413457 () Bool)

(assert (=> bm!87945 m!1413457))

(declare-fun m!1413459 () Bool)

(assert (=> b!1254747 m!1413459))

(assert (=> b!1254720 d!354719))

(declare-fun b!1254789 () Bool)

(declare-fun c!208322 () Bool)

(assert (=> b!1254789 (= c!208322 ((_ is Star!3471) (reg!3800 r!15719)))))

(declare-fun e!798612 () Regex!3471)

(declare-fun e!798608 () Regex!3471)

(assert (=> b!1254789 (= e!798612 e!798608)))

(declare-fun b!1254790 () Bool)

(declare-fun e!798611 () Regex!3471)

(declare-fun e!798610 () Regex!3471)

(assert (=> b!1254790 (= e!798611 e!798610)))

(declare-fun c!208320 () Bool)

(assert (=> b!1254790 (= c!208320 (and ((_ is Concat!5701) (reg!3800 r!15719)) ((_ is EmptyExpr!3471) (regTwo!7454 (reg!3800 r!15719)))))))

(declare-fun b!1254791 () Bool)

(declare-fun call!87967 () Regex!3471)

(assert (=> b!1254791 (= e!798608 (Star!3471 call!87967))))

(declare-fun b!1254792 () Bool)

(declare-fun e!798609 () Regex!3471)

(declare-fun call!87970 () Regex!3471)

(declare-fun call!87969 () Regex!3471)

(assert (=> b!1254792 (= e!798609 (Concat!5701 call!87970 call!87969))))

(declare-fun bm!87962 () Bool)

(declare-fun call!87971 () Regex!3471)

(assert (=> bm!87962 (= call!87969 call!87971)))

(declare-fun b!1254793 () Bool)

(assert (=> b!1254793 (= e!798608 (reg!3800 r!15719))))

(declare-fun b!1254794 () Bool)

(assert (=> b!1254794 (= e!798611 call!87971)))

(declare-fun b!1254795 () Bool)

(declare-fun call!87968 () Regex!3471)

(assert (=> b!1254795 (= e!798610 call!87968)))

(declare-fun c!208319 () Bool)

(declare-fun c!208321 () Bool)

(declare-fun c!208323 () Bool)

(declare-fun bm!87963 () Bool)

(assert (=> bm!87963 (= call!87971 (removeUselessConcat!520 (ite (or c!208323 c!208321) (regTwo!7454 (reg!3800 r!15719)) (ite c!208319 (regOne!7455 (reg!3800 r!15719)) (reg!3800 (reg!3800 r!15719))))))))

(declare-fun b!1254796 () Bool)

(assert (=> b!1254796 (= e!798609 e!798612)))

(assert (=> b!1254796 (= c!208319 ((_ is Union!3471) (reg!3800 r!15719)))))

(declare-fun bm!87964 () Bool)

(assert (=> bm!87964 (= call!87968 (removeUselessConcat!520 (ite (or c!208320 c!208321) (regOne!7454 (reg!3800 r!15719)) (regTwo!7455 (reg!3800 r!15719)))))))

(declare-fun d!354723 () Bool)

(declare-fun e!798613 () Bool)

(assert (=> d!354723 e!798613))

(declare-fun res!555818 () Bool)

(assert (=> d!354723 (=> (not res!555818) (not e!798613))))

(declare-fun lt!420320 () Regex!3471)

(assert (=> d!354723 (= res!555818 (validRegex!1507 lt!420320))))

(assert (=> d!354723 (= lt!420320 e!798611)))

(assert (=> d!354723 (= c!208323 (and ((_ is Concat!5701) (reg!3800 r!15719)) ((_ is EmptyExpr!3471) (regOne!7454 (reg!3800 r!15719)))))))

(assert (=> d!354723 (validRegex!1507 (reg!3800 r!15719))))

(assert (=> d!354723 (= (removeUselessConcat!520 (reg!3800 r!15719)) lt!420320)))

(declare-fun b!1254797 () Bool)

(assert (=> b!1254797 (= e!798613 (= (nullable!1109 lt!420320) (nullable!1109 (reg!3800 r!15719))))))

(declare-fun b!1254798 () Bool)

(assert (=> b!1254798 (= e!798612 (Union!3471 call!87967 call!87970))))

(declare-fun bm!87965 () Bool)

(assert (=> bm!87965 (= call!87970 call!87968)))

(declare-fun b!1254799 () Bool)

(assert (=> b!1254799 (= c!208321 ((_ is Concat!5701) (reg!3800 r!15719)))))

(assert (=> b!1254799 (= e!798610 e!798609)))

(declare-fun bm!87966 () Bool)

(assert (=> bm!87966 (= call!87967 call!87969)))

(assert (= (and d!354723 c!208323) b!1254794))

(assert (= (and d!354723 (not c!208323)) b!1254790))

(assert (= (and b!1254790 c!208320) b!1254795))

(assert (= (and b!1254790 (not c!208320)) b!1254799))

(assert (= (and b!1254799 c!208321) b!1254792))

(assert (= (and b!1254799 (not c!208321)) b!1254796))

(assert (= (and b!1254796 c!208319) b!1254798))

(assert (= (and b!1254796 (not c!208319)) b!1254789))

(assert (= (and b!1254789 c!208322) b!1254791))

(assert (= (and b!1254789 (not c!208322)) b!1254793))

(assert (= (or b!1254798 b!1254791) bm!87966))

(assert (= (or b!1254792 b!1254798) bm!87965))

(assert (= (or b!1254792 bm!87966) bm!87962))

(assert (= (or b!1254795 bm!87965) bm!87964))

(assert (= (or b!1254794 bm!87962) bm!87963))

(assert (= (and d!354723 res!555818) b!1254797))

(declare-fun m!1413461 () Bool)

(assert (=> bm!87963 m!1413461))

(declare-fun m!1413463 () Bool)

(assert (=> bm!87964 m!1413463))

(declare-fun m!1413465 () Bool)

(assert (=> d!354723 m!1413465))

(declare-fun m!1413467 () Bool)

(assert (=> d!354723 m!1413467))

(declare-fun m!1413469 () Bool)

(assert (=> b!1254797 m!1413469))

(declare-fun m!1413471 () Bool)

(assert (=> b!1254797 m!1413471))

(assert (=> b!1254720 d!354723))

(declare-fun d!354725 () Bool)

(declare-fun nullableFct!249 (Regex!3471) Bool)

(assert (=> d!354725 (= (nullable!1109 lt!420317) (nullableFct!249 lt!420317))))

(declare-fun bs!289935 () Bool)

(assert (= bs!289935 d!354725))

(declare-fun m!1413473 () Bool)

(assert (=> bs!289935 m!1413473))

(assert (=> b!1254715 d!354725))

(declare-fun d!354727 () Bool)

(assert (=> d!354727 (= (nullable!1109 r!15719) (nullableFct!249 r!15719))))

(declare-fun bs!289936 () Bool)

(assert (= bs!289936 d!354727))

(declare-fun m!1413475 () Bool)

(assert (=> bs!289936 m!1413475))

(assert (=> b!1254715 d!354727))

(declare-fun b!1254809 () Bool)

(declare-fun e!798621 () Bool)

(declare-fun call!87977 () Bool)

(assert (=> b!1254809 (= e!798621 call!87977)))

(declare-fun bm!87970 () Bool)

(declare-fun call!87975 () Bool)

(declare-fun c!208326 () Bool)

(assert (=> bm!87970 (= call!87975 (validRegex!1507 (ite c!208326 (regOne!7455 r!15719) (regOne!7454 r!15719))))))

(declare-fun b!1254810 () Bool)

(declare-fun res!555828 () Bool)

(declare-fun e!798626 () Bool)

(assert (=> b!1254810 (=> res!555828 e!798626)))

(assert (=> b!1254810 (= res!555828 (not ((_ is Concat!5701) r!15719)))))

(declare-fun e!798623 () Bool)

(assert (=> b!1254810 (= e!798623 e!798626)))

(declare-fun b!1254811 () Bool)

(declare-fun e!798627 () Bool)

(declare-fun e!798622 () Bool)

(assert (=> b!1254811 (= e!798627 e!798622)))

(declare-fun c!208327 () Bool)

(assert (=> b!1254811 (= c!208327 ((_ is Star!3471) r!15719))))

(declare-fun bm!87971 () Bool)

(declare-fun call!87976 () Bool)

(assert (=> bm!87971 (= call!87977 call!87976)))

(declare-fun d!354729 () Bool)

(declare-fun res!555824 () Bool)

(assert (=> d!354729 (=> res!555824 e!798627)))

(assert (=> d!354729 (= res!555824 ((_ is ElementMatch!3471) r!15719))))

(assert (=> d!354729 (= (validRegex!1507 r!15719) e!798627)))

(declare-fun b!1254812 () Bool)

(declare-fun e!798625 () Bool)

(assert (=> b!1254812 (= e!798625 call!87977)))

(declare-fun b!1254813 () Bool)

(declare-fun res!555825 () Bool)

(assert (=> b!1254813 (=> (not res!555825) (not e!798621))))

(assert (=> b!1254813 (= res!555825 call!87975)))

(assert (=> b!1254813 (= e!798623 e!798621)))

(declare-fun b!1254814 () Bool)

(declare-fun e!798624 () Bool)

(assert (=> b!1254814 (= e!798624 call!87976)))

(declare-fun bm!87972 () Bool)

(assert (=> bm!87972 (= call!87976 (validRegex!1507 (ite c!208327 (reg!3800 r!15719) (ite c!208326 (regTwo!7455 r!15719) (regTwo!7454 r!15719)))))))

(declare-fun b!1254815 () Bool)

(assert (=> b!1254815 (= e!798626 e!798625)))

(declare-fun res!555827 () Bool)

(assert (=> b!1254815 (=> (not res!555827) (not e!798625))))

(assert (=> b!1254815 (= res!555827 call!87975)))

(declare-fun b!1254816 () Bool)

(assert (=> b!1254816 (= e!798622 e!798624)))

(declare-fun res!555826 () Bool)

(assert (=> b!1254816 (= res!555826 (not (nullable!1109 (reg!3800 r!15719))))))

(assert (=> b!1254816 (=> (not res!555826) (not e!798624))))

(declare-fun b!1254817 () Bool)

(assert (=> b!1254817 (= e!798622 e!798623)))

(assert (=> b!1254817 (= c!208326 ((_ is Union!3471) r!15719))))

(assert (= (and d!354729 (not res!555824)) b!1254811))

(assert (= (and b!1254811 c!208327) b!1254816))

(assert (= (and b!1254811 (not c!208327)) b!1254817))

(assert (= (and b!1254816 res!555826) b!1254814))

(assert (= (and b!1254817 c!208326) b!1254813))

(assert (= (and b!1254817 (not c!208326)) b!1254810))

(assert (= (and b!1254813 res!555825) b!1254809))

(assert (= (and b!1254810 (not res!555828)) b!1254815))

(assert (= (and b!1254815 res!555827) b!1254812))

(assert (= (or b!1254809 b!1254812) bm!87971))

(assert (= (or b!1254813 b!1254815) bm!87970))

(assert (= (or b!1254814 bm!87971) bm!87972))

(declare-fun m!1413483 () Bool)

(assert (=> bm!87970 m!1413483))

(declare-fun m!1413485 () Bool)

(assert (=> bm!87972 m!1413485))

(assert (=> b!1254816 m!1413471))

(assert (=> start!110506 d!354729))

(declare-fun b!1254828 () Bool)

(declare-fun e!798630 () Bool)

(assert (=> b!1254828 (= e!798630 tp_is_empty!6463)))

(declare-fun b!1254830 () Bool)

(declare-fun tp!369891 () Bool)

(assert (=> b!1254830 (= e!798630 tp!369891)))

(declare-fun b!1254829 () Bool)

(declare-fun tp!369890 () Bool)

(declare-fun tp!369894 () Bool)

(assert (=> b!1254829 (= e!798630 (and tp!369890 tp!369894))))

(declare-fun b!1254831 () Bool)

(declare-fun tp!369892 () Bool)

(declare-fun tp!369893 () Bool)

(assert (=> b!1254831 (= e!798630 (and tp!369892 tp!369893))))

(assert (=> b!1254717 (= tp!369878 e!798630)))

(assert (= (and b!1254717 ((_ is ElementMatch!3471) (regOne!7454 r!15719))) b!1254828))

(assert (= (and b!1254717 ((_ is Concat!5701) (regOne!7454 r!15719))) b!1254829))

(assert (= (and b!1254717 ((_ is Star!3471) (regOne!7454 r!15719))) b!1254830))

(assert (= (and b!1254717 ((_ is Union!3471) (regOne!7454 r!15719))) b!1254831))

(declare-fun b!1254832 () Bool)

(declare-fun e!798631 () Bool)

(assert (=> b!1254832 (= e!798631 tp_is_empty!6463)))

(declare-fun b!1254834 () Bool)

(declare-fun tp!369896 () Bool)

(assert (=> b!1254834 (= e!798631 tp!369896)))

(declare-fun b!1254833 () Bool)

(declare-fun tp!369895 () Bool)

(declare-fun tp!369899 () Bool)

(assert (=> b!1254833 (= e!798631 (and tp!369895 tp!369899))))

(declare-fun b!1254835 () Bool)

(declare-fun tp!369897 () Bool)

(declare-fun tp!369898 () Bool)

(assert (=> b!1254835 (= e!798631 (and tp!369897 tp!369898))))

(assert (=> b!1254717 (= tp!369879 e!798631)))

(assert (= (and b!1254717 ((_ is ElementMatch!3471) (regTwo!7454 r!15719))) b!1254832))

(assert (= (and b!1254717 ((_ is Concat!5701) (regTwo!7454 r!15719))) b!1254833))

(assert (= (and b!1254717 ((_ is Star!3471) (regTwo!7454 r!15719))) b!1254834))

(assert (= (and b!1254717 ((_ is Union!3471) (regTwo!7454 r!15719))) b!1254835))

(declare-fun b!1254836 () Bool)

(declare-fun e!798632 () Bool)

(assert (=> b!1254836 (= e!798632 tp_is_empty!6463)))

(declare-fun b!1254838 () Bool)

(declare-fun tp!369901 () Bool)

(assert (=> b!1254838 (= e!798632 tp!369901)))

(declare-fun b!1254837 () Bool)

(declare-fun tp!369900 () Bool)

(declare-fun tp!369904 () Bool)

(assert (=> b!1254837 (= e!798632 (and tp!369900 tp!369904))))

(declare-fun b!1254839 () Bool)

(declare-fun tp!369902 () Bool)

(declare-fun tp!369903 () Bool)

(assert (=> b!1254839 (= e!798632 (and tp!369902 tp!369903))))

(assert (=> b!1254718 (= tp!369875 e!798632)))

(assert (= (and b!1254718 ((_ is ElementMatch!3471) (reg!3800 r!15719))) b!1254836))

(assert (= (and b!1254718 ((_ is Concat!5701) (reg!3800 r!15719))) b!1254837))

(assert (= (and b!1254718 ((_ is Star!3471) (reg!3800 r!15719))) b!1254838))

(assert (= (and b!1254718 ((_ is Union!3471) (reg!3800 r!15719))) b!1254839))

(declare-fun b!1254840 () Bool)

(declare-fun e!798633 () Bool)

(assert (=> b!1254840 (= e!798633 tp_is_empty!6463)))

(declare-fun b!1254842 () Bool)

(declare-fun tp!369906 () Bool)

(assert (=> b!1254842 (= e!798633 tp!369906)))

(declare-fun b!1254841 () Bool)

(declare-fun tp!369905 () Bool)

(declare-fun tp!369909 () Bool)

(assert (=> b!1254841 (= e!798633 (and tp!369905 tp!369909))))

(declare-fun b!1254843 () Bool)

(declare-fun tp!369907 () Bool)

(declare-fun tp!369908 () Bool)

(assert (=> b!1254843 (= e!798633 (and tp!369907 tp!369908))))

(assert (=> b!1254721 (= tp!369876 e!798633)))

(assert (= (and b!1254721 ((_ is ElementMatch!3471) (regOne!7455 r!15719))) b!1254840))

(assert (= (and b!1254721 ((_ is Concat!5701) (regOne!7455 r!15719))) b!1254841))

(assert (= (and b!1254721 ((_ is Star!3471) (regOne!7455 r!15719))) b!1254842))

(assert (= (and b!1254721 ((_ is Union!3471) (regOne!7455 r!15719))) b!1254843))

(declare-fun b!1254844 () Bool)

(declare-fun e!798634 () Bool)

(assert (=> b!1254844 (= e!798634 tp_is_empty!6463)))

(declare-fun b!1254846 () Bool)

(declare-fun tp!369911 () Bool)

(assert (=> b!1254846 (= e!798634 tp!369911)))

(declare-fun b!1254845 () Bool)

(declare-fun tp!369910 () Bool)

(declare-fun tp!369914 () Bool)

(assert (=> b!1254845 (= e!798634 (and tp!369910 tp!369914))))

(declare-fun b!1254847 () Bool)

(declare-fun tp!369912 () Bool)

(declare-fun tp!369913 () Bool)

(assert (=> b!1254847 (= e!798634 (and tp!369912 tp!369913))))

(assert (=> b!1254721 (= tp!369877 e!798634)))

(assert (= (and b!1254721 ((_ is ElementMatch!3471) (regTwo!7455 r!15719))) b!1254844))

(assert (= (and b!1254721 ((_ is Concat!5701) (regTwo!7455 r!15719))) b!1254845))

(assert (= (and b!1254721 ((_ is Star!3471) (regTwo!7455 r!15719))) b!1254846))

(assert (= (and b!1254721 ((_ is Union!3471) (regTwo!7455 r!15719))) b!1254847))

(check-sat (not bm!87943) (not bm!87945) (not d!354723) (not b!1254839) (not b!1254845) (not b!1254830) (not b!1254829) (not bm!87963) (not b!1254797) (not b!1254846) (not bm!87970) (not d!354727) (not b!1254831) (not b!1254843) (not bm!87972) (not b!1254833) (not b!1254838) (not b!1254842) (not b!1254816) (not b!1254747) (not b!1254841) (not b!1254837) (not b!1254834) (not d!354725) (not bm!87964) tp_is_empty!6463 (not b!1254835) (not b!1254847))
(check-sat)
(get-model)

(declare-fun bm!87995 () Bool)

(declare-fun call!88001 () Bool)

(declare-fun c!208347 () Bool)

(assert (=> bm!87995 (= call!88001 (nullable!1109 (ite c!208347 (regOne!7455 r!15719) (regOne!7454 r!15719))))))

(declare-fun bm!87996 () Bool)

(declare-fun call!88000 () Bool)

(assert (=> bm!87996 (= call!88000 (nullable!1109 (ite c!208347 (regTwo!7455 r!15719) (regTwo!7454 r!15719))))))

(declare-fun b!1254934 () Bool)

(declare-fun e!798680 () Bool)

(assert (=> b!1254934 (= e!798680 call!88000)))

(declare-fun b!1254935 () Bool)

(declare-fun e!798679 () Bool)

(declare-fun e!798682 () Bool)

(assert (=> b!1254935 (= e!798679 e!798682)))

(assert (=> b!1254935 (= c!208347 ((_ is Union!3471) r!15719))))

(declare-fun b!1254936 () Bool)

(declare-fun e!798684 () Bool)

(assert (=> b!1254936 (= e!798684 call!88000)))

(declare-fun d!354739 () Bool)

(declare-fun res!555850 () Bool)

(declare-fun e!798681 () Bool)

(assert (=> d!354739 (=> res!555850 e!798681)))

(assert (=> d!354739 (= res!555850 ((_ is EmptyExpr!3471) r!15719))))

(assert (=> d!354739 (= (nullableFct!249 r!15719) e!798681)))

(declare-fun b!1254937 () Bool)

(declare-fun e!798683 () Bool)

(assert (=> b!1254937 (= e!798681 e!798683)))

(declare-fun res!555847 () Bool)

(assert (=> b!1254937 (=> (not res!555847) (not e!798683))))

(assert (=> b!1254937 (= res!555847 (and (not ((_ is EmptyLang!3471) r!15719)) (not ((_ is ElementMatch!3471) r!15719))))))

(declare-fun b!1254938 () Bool)

(assert (=> b!1254938 (= e!798682 e!798680)))

(declare-fun res!555849 () Bool)

(assert (=> b!1254938 (= res!555849 call!88001)))

(assert (=> b!1254938 (=> (not res!555849) (not e!798680))))

(declare-fun b!1254939 () Bool)

(assert (=> b!1254939 (= e!798683 e!798679)))

(declare-fun res!555851 () Bool)

(assert (=> b!1254939 (=> res!555851 e!798679)))

(assert (=> b!1254939 (= res!555851 ((_ is Star!3471) r!15719))))

(declare-fun b!1254940 () Bool)

(assert (=> b!1254940 (= e!798682 e!798684)))

(declare-fun res!555848 () Bool)

(assert (=> b!1254940 (= res!555848 call!88001)))

(assert (=> b!1254940 (=> res!555848 e!798684)))

(assert (= (and d!354739 (not res!555850)) b!1254937))

(assert (= (and b!1254937 res!555847) b!1254939))

(assert (= (and b!1254939 (not res!555851)) b!1254935))

(assert (= (and b!1254935 c!208347) b!1254940))

(assert (= (and b!1254935 (not c!208347)) b!1254938))

(assert (= (and b!1254940 (not res!555848)) b!1254936))

(assert (= (and b!1254938 res!555849) b!1254934))

(assert (= (or b!1254940 b!1254938) bm!87995))

(assert (= (or b!1254936 b!1254934) bm!87996))

(declare-fun m!1413507 () Bool)

(assert (=> bm!87995 m!1413507))

(declare-fun m!1413509 () Bool)

(assert (=> bm!87996 m!1413509))

(assert (=> d!354727 d!354739))

(declare-fun d!354741 () Bool)

(assert (=> d!354741 (= (nullable!1109 (reg!3800 r!15719)) (nullableFct!249 (reg!3800 r!15719)))))

(declare-fun bs!289939 () Bool)

(assert (= bs!289939 d!354741))

(declare-fun m!1413511 () Bool)

(assert (=> bs!289939 m!1413511))

(assert (=> b!1254816 d!354741))

(declare-fun bm!87997 () Bool)

(declare-fun call!88003 () Bool)

(declare-fun c!208348 () Bool)

(assert (=> bm!87997 (= call!88003 (nullable!1109 (ite c!208348 (regOne!7455 lt!420317) (regOne!7454 lt!420317))))))

(declare-fun bm!87998 () Bool)

(declare-fun call!88002 () Bool)

(assert (=> bm!87998 (= call!88002 (nullable!1109 (ite c!208348 (regTwo!7455 lt!420317) (regTwo!7454 lt!420317))))))

(declare-fun b!1254941 () Bool)

(declare-fun e!798686 () Bool)

(assert (=> b!1254941 (= e!798686 call!88002)))

(declare-fun b!1254942 () Bool)

(declare-fun e!798685 () Bool)

(declare-fun e!798688 () Bool)

(assert (=> b!1254942 (= e!798685 e!798688)))

(assert (=> b!1254942 (= c!208348 ((_ is Union!3471) lt!420317))))

(declare-fun b!1254943 () Bool)

(declare-fun e!798690 () Bool)

(assert (=> b!1254943 (= e!798690 call!88002)))

(declare-fun d!354743 () Bool)

(declare-fun res!555855 () Bool)

(declare-fun e!798687 () Bool)

(assert (=> d!354743 (=> res!555855 e!798687)))

(assert (=> d!354743 (= res!555855 ((_ is EmptyExpr!3471) lt!420317))))

(assert (=> d!354743 (= (nullableFct!249 lt!420317) e!798687)))

(declare-fun b!1254944 () Bool)

(declare-fun e!798689 () Bool)

(assert (=> b!1254944 (= e!798687 e!798689)))

(declare-fun res!555852 () Bool)

(assert (=> b!1254944 (=> (not res!555852) (not e!798689))))

(assert (=> b!1254944 (= res!555852 (and (not ((_ is EmptyLang!3471) lt!420317)) (not ((_ is ElementMatch!3471) lt!420317))))))

(declare-fun b!1254945 () Bool)

(assert (=> b!1254945 (= e!798688 e!798686)))

(declare-fun res!555854 () Bool)

(assert (=> b!1254945 (= res!555854 call!88003)))

(assert (=> b!1254945 (=> (not res!555854) (not e!798686))))

(declare-fun b!1254946 () Bool)

(assert (=> b!1254946 (= e!798689 e!798685)))

(declare-fun res!555856 () Bool)

(assert (=> b!1254946 (=> res!555856 e!798685)))

(assert (=> b!1254946 (= res!555856 ((_ is Star!3471) lt!420317))))

(declare-fun b!1254947 () Bool)

(assert (=> b!1254947 (= e!798688 e!798690)))

(declare-fun res!555853 () Bool)

(assert (=> b!1254947 (= res!555853 call!88003)))

(assert (=> b!1254947 (=> res!555853 e!798690)))

(assert (= (and d!354743 (not res!555855)) b!1254944))

(assert (= (and b!1254944 res!555852) b!1254946))

(assert (= (and b!1254946 (not res!555856)) b!1254942))

(assert (= (and b!1254942 c!208348) b!1254947))

(assert (= (and b!1254942 (not c!208348)) b!1254945))

(assert (= (and b!1254947 (not res!555853)) b!1254943))

(assert (= (and b!1254945 res!555854) b!1254941))

(assert (= (or b!1254947 b!1254945) bm!87997))

(assert (= (or b!1254943 b!1254941) bm!87998))

(declare-fun m!1413513 () Bool)

(assert (=> bm!87997 m!1413513))

(declare-fun m!1413515 () Bool)

(assert (=> bm!87998 m!1413515))

(assert (=> d!354725 d!354743))

(declare-fun b!1254948 () Bool)

(declare-fun e!798691 () Bool)

(declare-fun call!88006 () Bool)

(assert (=> b!1254948 (= e!798691 call!88006)))

(declare-fun bm!87999 () Bool)

(declare-fun call!88004 () Bool)

(declare-fun c!208349 () Bool)

(assert (=> bm!87999 (= call!88004 (validRegex!1507 (ite c!208349 (regOne!7455 (ite c!208326 (regOne!7455 r!15719) (regOne!7454 r!15719))) (regOne!7454 (ite c!208326 (regOne!7455 r!15719) (regOne!7454 r!15719))))))))

(declare-fun b!1254949 () Bool)

(declare-fun res!555861 () Bool)

(declare-fun e!798696 () Bool)

(assert (=> b!1254949 (=> res!555861 e!798696)))

(assert (=> b!1254949 (= res!555861 (not ((_ is Concat!5701) (ite c!208326 (regOne!7455 r!15719) (regOne!7454 r!15719)))))))

(declare-fun e!798693 () Bool)

(assert (=> b!1254949 (= e!798693 e!798696)))

(declare-fun b!1254950 () Bool)

(declare-fun e!798697 () Bool)

(declare-fun e!798692 () Bool)

(assert (=> b!1254950 (= e!798697 e!798692)))

(declare-fun c!208350 () Bool)

(assert (=> b!1254950 (= c!208350 ((_ is Star!3471) (ite c!208326 (regOne!7455 r!15719) (regOne!7454 r!15719))))))

(declare-fun bm!88000 () Bool)

(declare-fun call!88005 () Bool)

(assert (=> bm!88000 (= call!88006 call!88005)))

(declare-fun d!354745 () Bool)

(declare-fun res!555857 () Bool)

(assert (=> d!354745 (=> res!555857 e!798697)))

(assert (=> d!354745 (= res!555857 ((_ is ElementMatch!3471) (ite c!208326 (regOne!7455 r!15719) (regOne!7454 r!15719))))))

(assert (=> d!354745 (= (validRegex!1507 (ite c!208326 (regOne!7455 r!15719) (regOne!7454 r!15719))) e!798697)))

(declare-fun b!1254951 () Bool)

(declare-fun e!798695 () Bool)

(assert (=> b!1254951 (= e!798695 call!88006)))

(declare-fun b!1254952 () Bool)

(declare-fun res!555858 () Bool)

(assert (=> b!1254952 (=> (not res!555858) (not e!798691))))

(assert (=> b!1254952 (= res!555858 call!88004)))

(assert (=> b!1254952 (= e!798693 e!798691)))

(declare-fun b!1254953 () Bool)

(declare-fun e!798694 () Bool)

(assert (=> b!1254953 (= e!798694 call!88005)))

(declare-fun bm!88001 () Bool)

(assert (=> bm!88001 (= call!88005 (validRegex!1507 (ite c!208350 (reg!3800 (ite c!208326 (regOne!7455 r!15719) (regOne!7454 r!15719))) (ite c!208349 (regTwo!7455 (ite c!208326 (regOne!7455 r!15719) (regOne!7454 r!15719))) (regTwo!7454 (ite c!208326 (regOne!7455 r!15719) (regOne!7454 r!15719)))))))))

(declare-fun b!1254954 () Bool)

(assert (=> b!1254954 (= e!798696 e!798695)))

(declare-fun res!555860 () Bool)

(assert (=> b!1254954 (=> (not res!555860) (not e!798695))))

(assert (=> b!1254954 (= res!555860 call!88004)))

(declare-fun b!1254955 () Bool)

(assert (=> b!1254955 (= e!798692 e!798694)))

(declare-fun res!555859 () Bool)

(assert (=> b!1254955 (= res!555859 (not (nullable!1109 (reg!3800 (ite c!208326 (regOne!7455 r!15719) (regOne!7454 r!15719))))))))

(assert (=> b!1254955 (=> (not res!555859) (not e!798694))))

(declare-fun b!1254956 () Bool)

(assert (=> b!1254956 (= e!798692 e!798693)))

(assert (=> b!1254956 (= c!208349 ((_ is Union!3471) (ite c!208326 (regOne!7455 r!15719) (regOne!7454 r!15719))))))

(assert (= (and d!354745 (not res!555857)) b!1254950))

(assert (= (and b!1254950 c!208350) b!1254955))

(assert (= (and b!1254950 (not c!208350)) b!1254956))

(assert (= (and b!1254955 res!555859) b!1254953))

(assert (= (and b!1254956 c!208349) b!1254952))

(assert (= (and b!1254956 (not c!208349)) b!1254949))

(assert (= (and b!1254952 res!555858) b!1254948))

(assert (= (and b!1254949 (not res!555861)) b!1254954))

(assert (= (and b!1254954 res!555860) b!1254951))

(assert (= (or b!1254948 b!1254951) bm!88000))

(assert (= (or b!1254952 b!1254954) bm!87999))

(assert (= (or b!1254953 bm!88000) bm!88001))

(declare-fun m!1413517 () Bool)

(assert (=> bm!87999 m!1413517))

(declare-fun m!1413519 () Bool)

(assert (=> bm!88001 m!1413519))

(declare-fun m!1413521 () Bool)

(assert (=> b!1254955 m!1413521))

(assert (=> bm!87970 d!354745))

(declare-fun b!1254957 () Bool)

(declare-fun c!208354 () Bool)

(assert (=> b!1254957 (= c!208354 ((_ is Star!3471) (ite (or c!208323 c!208321) (regTwo!7454 (reg!3800 r!15719)) (ite c!208319 (regOne!7455 (reg!3800 r!15719)) (reg!3800 (reg!3800 r!15719))))))))

(declare-fun e!798702 () Regex!3471)

(declare-fun e!798698 () Regex!3471)

(assert (=> b!1254957 (= e!798702 e!798698)))

(declare-fun b!1254958 () Bool)

(declare-fun e!798701 () Regex!3471)

(declare-fun e!798700 () Regex!3471)

(assert (=> b!1254958 (= e!798701 e!798700)))

(declare-fun c!208352 () Bool)

(assert (=> b!1254958 (= c!208352 (and ((_ is Concat!5701) (ite (or c!208323 c!208321) (regTwo!7454 (reg!3800 r!15719)) (ite c!208319 (regOne!7455 (reg!3800 r!15719)) (reg!3800 (reg!3800 r!15719))))) ((_ is EmptyExpr!3471) (regTwo!7454 (ite (or c!208323 c!208321) (regTwo!7454 (reg!3800 r!15719)) (ite c!208319 (regOne!7455 (reg!3800 r!15719)) (reg!3800 (reg!3800 r!15719))))))))))

(declare-fun b!1254959 () Bool)

(declare-fun call!88007 () Regex!3471)

(assert (=> b!1254959 (= e!798698 (Star!3471 call!88007))))

(declare-fun b!1254960 () Bool)

(declare-fun e!798699 () Regex!3471)

(declare-fun call!88010 () Regex!3471)

(declare-fun call!88009 () Regex!3471)

(assert (=> b!1254960 (= e!798699 (Concat!5701 call!88010 call!88009))))

(declare-fun bm!88002 () Bool)

(declare-fun call!88011 () Regex!3471)

(assert (=> bm!88002 (= call!88009 call!88011)))

(declare-fun b!1254961 () Bool)

(assert (=> b!1254961 (= e!798698 (ite (or c!208323 c!208321) (regTwo!7454 (reg!3800 r!15719)) (ite c!208319 (regOne!7455 (reg!3800 r!15719)) (reg!3800 (reg!3800 r!15719)))))))

(declare-fun b!1254962 () Bool)

(assert (=> b!1254962 (= e!798701 call!88011)))

(declare-fun b!1254963 () Bool)

(declare-fun call!88008 () Regex!3471)

(assert (=> b!1254963 (= e!798700 call!88008)))

(declare-fun bm!88003 () Bool)

(declare-fun c!208351 () Bool)

(declare-fun c!208355 () Bool)

(declare-fun c!208353 () Bool)

(assert (=> bm!88003 (= call!88011 (removeUselessConcat!520 (ite (or c!208355 c!208353) (regTwo!7454 (ite (or c!208323 c!208321) (regTwo!7454 (reg!3800 r!15719)) (ite c!208319 (regOne!7455 (reg!3800 r!15719)) (reg!3800 (reg!3800 r!15719))))) (ite c!208351 (regOne!7455 (ite (or c!208323 c!208321) (regTwo!7454 (reg!3800 r!15719)) (ite c!208319 (regOne!7455 (reg!3800 r!15719)) (reg!3800 (reg!3800 r!15719))))) (reg!3800 (ite (or c!208323 c!208321) (regTwo!7454 (reg!3800 r!15719)) (ite c!208319 (regOne!7455 (reg!3800 r!15719)) (reg!3800 (reg!3800 r!15719)))))))))))

(declare-fun b!1254964 () Bool)

(assert (=> b!1254964 (= e!798699 e!798702)))

(assert (=> b!1254964 (= c!208351 ((_ is Union!3471) (ite (or c!208323 c!208321) (regTwo!7454 (reg!3800 r!15719)) (ite c!208319 (regOne!7455 (reg!3800 r!15719)) (reg!3800 (reg!3800 r!15719))))))))

(declare-fun bm!88004 () Bool)

(assert (=> bm!88004 (= call!88008 (removeUselessConcat!520 (ite (or c!208352 c!208353) (regOne!7454 (ite (or c!208323 c!208321) (regTwo!7454 (reg!3800 r!15719)) (ite c!208319 (regOne!7455 (reg!3800 r!15719)) (reg!3800 (reg!3800 r!15719))))) (regTwo!7455 (ite (or c!208323 c!208321) (regTwo!7454 (reg!3800 r!15719)) (ite c!208319 (regOne!7455 (reg!3800 r!15719)) (reg!3800 (reg!3800 r!15719))))))))))

(declare-fun d!354747 () Bool)

(declare-fun e!798703 () Bool)

(assert (=> d!354747 e!798703))

(declare-fun res!555862 () Bool)

(assert (=> d!354747 (=> (not res!555862) (not e!798703))))

(declare-fun lt!420324 () Regex!3471)

(assert (=> d!354747 (= res!555862 (validRegex!1507 lt!420324))))

(assert (=> d!354747 (= lt!420324 e!798701)))

(assert (=> d!354747 (= c!208355 (and ((_ is Concat!5701) (ite (or c!208323 c!208321) (regTwo!7454 (reg!3800 r!15719)) (ite c!208319 (regOne!7455 (reg!3800 r!15719)) (reg!3800 (reg!3800 r!15719))))) ((_ is EmptyExpr!3471) (regOne!7454 (ite (or c!208323 c!208321) (regTwo!7454 (reg!3800 r!15719)) (ite c!208319 (regOne!7455 (reg!3800 r!15719)) (reg!3800 (reg!3800 r!15719))))))))))

(assert (=> d!354747 (validRegex!1507 (ite (or c!208323 c!208321) (regTwo!7454 (reg!3800 r!15719)) (ite c!208319 (regOne!7455 (reg!3800 r!15719)) (reg!3800 (reg!3800 r!15719)))))))

(assert (=> d!354747 (= (removeUselessConcat!520 (ite (or c!208323 c!208321) (regTwo!7454 (reg!3800 r!15719)) (ite c!208319 (regOne!7455 (reg!3800 r!15719)) (reg!3800 (reg!3800 r!15719))))) lt!420324)))

(declare-fun b!1254965 () Bool)

(assert (=> b!1254965 (= e!798703 (= (nullable!1109 lt!420324) (nullable!1109 (ite (or c!208323 c!208321) (regTwo!7454 (reg!3800 r!15719)) (ite c!208319 (regOne!7455 (reg!3800 r!15719)) (reg!3800 (reg!3800 r!15719)))))))))

(declare-fun b!1254966 () Bool)

(assert (=> b!1254966 (= e!798702 (Union!3471 call!88007 call!88010))))

(declare-fun bm!88005 () Bool)

(assert (=> bm!88005 (= call!88010 call!88008)))

(declare-fun b!1254967 () Bool)

(assert (=> b!1254967 (= c!208353 ((_ is Concat!5701) (ite (or c!208323 c!208321) (regTwo!7454 (reg!3800 r!15719)) (ite c!208319 (regOne!7455 (reg!3800 r!15719)) (reg!3800 (reg!3800 r!15719))))))))

(assert (=> b!1254967 (= e!798700 e!798699)))

(declare-fun bm!88006 () Bool)

(assert (=> bm!88006 (= call!88007 call!88009)))

(assert (= (and d!354747 c!208355) b!1254962))

(assert (= (and d!354747 (not c!208355)) b!1254958))

(assert (= (and b!1254958 c!208352) b!1254963))

(assert (= (and b!1254958 (not c!208352)) b!1254967))

(assert (= (and b!1254967 c!208353) b!1254960))

(assert (= (and b!1254967 (not c!208353)) b!1254964))

(assert (= (and b!1254964 c!208351) b!1254966))

(assert (= (and b!1254964 (not c!208351)) b!1254957))

(assert (= (and b!1254957 c!208354) b!1254959))

(assert (= (and b!1254957 (not c!208354)) b!1254961))

(assert (= (or b!1254966 b!1254959) bm!88006))

(assert (= (or b!1254960 b!1254966) bm!88005))

(assert (= (or b!1254960 bm!88006) bm!88002))

(assert (= (or b!1254963 bm!88005) bm!88004))

(assert (= (or b!1254962 bm!88002) bm!88003))

(assert (= (and d!354747 res!555862) b!1254965))

(declare-fun m!1413523 () Bool)

(assert (=> bm!88003 m!1413523))

(declare-fun m!1413525 () Bool)

(assert (=> bm!88004 m!1413525))

(declare-fun m!1413527 () Bool)

(assert (=> d!354747 m!1413527))

(declare-fun m!1413529 () Bool)

(assert (=> d!354747 m!1413529))

(declare-fun m!1413531 () Bool)

(assert (=> b!1254965 m!1413531))

(declare-fun m!1413533 () Bool)

(assert (=> b!1254965 m!1413533))

(assert (=> bm!87963 d!354747))

(declare-fun b!1254968 () Bool)

(declare-fun e!798704 () Bool)

(declare-fun call!88014 () Bool)

(assert (=> b!1254968 (= e!798704 call!88014)))

(declare-fun bm!88007 () Bool)

(declare-fun call!88012 () Bool)

(declare-fun c!208356 () Bool)

(assert (=> bm!88007 (= call!88012 (validRegex!1507 (ite c!208356 (regOne!7455 (ite c!208304 (reg!3800 lt!420317) (ite c!208303 (regTwo!7455 lt!420317) (regTwo!7454 lt!420317)))) (regOne!7454 (ite c!208304 (reg!3800 lt!420317) (ite c!208303 (regTwo!7455 lt!420317) (regTwo!7454 lt!420317)))))))))

(declare-fun b!1254969 () Bool)

(declare-fun res!555867 () Bool)

(declare-fun e!798709 () Bool)

(assert (=> b!1254969 (=> res!555867 e!798709)))

(assert (=> b!1254969 (= res!555867 (not ((_ is Concat!5701) (ite c!208304 (reg!3800 lt!420317) (ite c!208303 (regTwo!7455 lt!420317) (regTwo!7454 lt!420317))))))))

(declare-fun e!798706 () Bool)

(assert (=> b!1254969 (= e!798706 e!798709)))

(declare-fun b!1254970 () Bool)

(declare-fun e!798710 () Bool)

(declare-fun e!798705 () Bool)

(assert (=> b!1254970 (= e!798710 e!798705)))

(declare-fun c!208357 () Bool)

(assert (=> b!1254970 (= c!208357 ((_ is Star!3471) (ite c!208304 (reg!3800 lt!420317) (ite c!208303 (regTwo!7455 lt!420317) (regTwo!7454 lt!420317)))))))

(declare-fun bm!88008 () Bool)

(declare-fun call!88013 () Bool)

(assert (=> bm!88008 (= call!88014 call!88013)))

(declare-fun d!354749 () Bool)

(declare-fun res!555863 () Bool)

(assert (=> d!354749 (=> res!555863 e!798710)))

(assert (=> d!354749 (= res!555863 ((_ is ElementMatch!3471) (ite c!208304 (reg!3800 lt!420317) (ite c!208303 (regTwo!7455 lt!420317) (regTwo!7454 lt!420317)))))))

(assert (=> d!354749 (= (validRegex!1507 (ite c!208304 (reg!3800 lt!420317) (ite c!208303 (regTwo!7455 lt!420317) (regTwo!7454 lt!420317)))) e!798710)))

(declare-fun b!1254971 () Bool)

(declare-fun e!798708 () Bool)

(assert (=> b!1254971 (= e!798708 call!88014)))

(declare-fun b!1254972 () Bool)

(declare-fun res!555864 () Bool)

(assert (=> b!1254972 (=> (not res!555864) (not e!798704))))

(assert (=> b!1254972 (= res!555864 call!88012)))

(assert (=> b!1254972 (= e!798706 e!798704)))

(declare-fun b!1254973 () Bool)

(declare-fun e!798707 () Bool)

(assert (=> b!1254973 (= e!798707 call!88013)))

(declare-fun bm!88009 () Bool)

(assert (=> bm!88009 (= call!88013 (validRegex!1507 (ite c!208357 (reg!3800 (ite c!208304 (reg!3800 lt!420317) (ite c!208303 (regTwo!7455 lt!420317) (regTwo!7454 lt!420317)))) (ite c!208356 (regTwo!7455 (ite c!208304 (reg!3800 lt!420317) (ite c!208303 (regTwo!7455 lt!420317) (regTwo!7454 lt!420317)))) (regTwo!7454 (ite c!208304 (reg!3800 lt!420317) (ite c!208303 (regTwo!7455 lt!420317) (regTwo!7454 lt!420317))))))))))

(declare-fun b!1254974 () Bool)

(assert (=> b!1254974 (= e!798709 e!798708)))

(declare-fun res!555866 () Bool)

(assert (=> b!1254974 (=> (not res!555866) (not e!798708))))

(assert (=> b!1254974 (= res!555866 call!88012)))

(declare-fun b!1254975 () Bool)

(assert (=> b!1254975 (= e!798705 e!798707)))

(declare-fun res!555865 () Bool)

(assert (=> b!1254975 (= res!555865 (not (nullable!1109 (reg!3800 (ite c!208304 (reg!3800 lt!420317) (ite c!208303 (regTwo!7455 lt!420317) (regTwo!7454 lt!420317)))))))))

(assert (=> b!1254975 (=> (not res!555865) (not e!798707))))

(declare-fun b!1254976 () Bool)

(assert (=> b!1254976 (= e!798705 e!798706)))

(assert (=> b!1254976 (= c!208356 ((_ is Union!3471) (ite c!208304 (reg!3800 lt!420317) (ite c!208303 (regTwo!7455 lt!420317) (regTwo!7454 lt!420317)))))))

(assert (= (and d!354749 (not res!555863)) b!1254970))

(assert (= (and b!1254970 c!208357) b!1254975))

(assert (= (and b!1254970 (not c!208357)) b!1254976))

(assert (= (and b!1254975 res!555865) b!1254973))

(assert (= (and b!1254976 c!208356) b!1254972))

(assert (= (and b!1254976 (not c!208356)) b!1254969))

(assert (= (and b!1254972 res!555864) b!1254968))

(assert (= (and b!1254969 (not res!555867)) b!1254974))

(assert (= (and b!1254974 res!555866) b!1254971))

(assert (= (or b!1254968 b!1254971) bm!88008))

(assert (= (or b!1254972 b!1254974) bm!88007))

(assert (= (or b!1254973 bm!88008) bm!88009))

(declare-fun m!1413535 () Bool)

(assert (=> bm!88007 m!1413535))

(declare-fun m!1413537 () Bool)

(assert (=> bm!88009 m!1413537))

(declare-fun m!1413539 () Bool)

(assert (=> b!1254975 m!1413539))

(assert (=> bm!87945 d!354749))

(declare-fun b!1254977 () Bool)

(declare-fun e!798711 () Bool)

(declare-fun call!88017 () Bool)

(assert (=> b!1254977 (= e!798711 call!88017)))

(declare-fun bm!88010 () Bool)

(declare-fun call!88015 () Bool)

(declare-fun c!208358 () Bool)

(assert (=> bm!88010 (= call!88015 (validRegex!1507 (ite c!208358 (regOne!7455 lt!420320) (regOne!7454 lt!420320))))))

(declare-fun b!1254978 () Bool)

(declare-fun res!555872 () Bool)

(declare-fun e!798716 () Bool)

(assert (=> b!1254978 (=> res!555872 e!798716)))

(assert (=> b!1254978 (= res!555872 (not ((_ is Concat!5701) lt!420320)))))

(declare-fun e!798713 () Bool)

(assert (=> b!1254978 (= e!798713 e!798716)))

(declare-fun b!1254979 () Bool)

(declare-fun e!798717 () Bool)

(declare-fun e!798712 () Bool)

(assert (=> b!1254979 (= e!798717 e!798712)))

(declare-fun c!208359 () Bool)

(assert (=> b!1254979 (= c!208359 ((_ is Star!3471) lt!420320))))

(declare-fun bm!88011 () Bool)

(declare-fun call!88016 () Bool)

(assert (=> bm!88011 (= call!88017 call!88016)))

(declare-fun d!354751 () Bool)

(declare-fun res!555868 () Bool)

(assert (=> d!354751 (=> res!555868 e!798717)))

(assert (=> d!354751 (= res!555868 ((_ is ElementMatch!3471) lt!420320))))

(assert (=> d!354751 (= (validRegex!1507 lt!420320) e!798717)))

(declare-fun b!1254980 () Bool)

(declare-fun e!798715 () Bool)

(assert (=> b!1254980 (= e!798715 call!88017)))

(declare-fun b!1254981 () Bool)

(declare-fun res!555869 () Bool)

(assert (=> b!1254981 (=> (not res!555869) (not e!798711))))

(assert (=> b!1254981 (= res!555869 call!88015)))

(assert (=> b!1254981 (= e!798713 e!798711)))

(declare-fun b!1254982 () Bool)

(declare-fun e!798714 () Bool)

(assert (=> b!1254982 (= e!798714 call!88016)))

(declare-fun bm!88012 () Bool)

(assert (=> bm!88012 (= call!88016 (validRegex!1507 (ite c!208359 (reg!3800 lt!420320) (ite c!208358 (regTwo!7455 lt!420320) (regTwo!7454 lt!420320)))))))

(declare-fun b!1254983 () Bool)

(assert (=> b!1254983 (= e!798716 e!798715)))

(declare-fun res!555871 () Bool)

(assert (=> b!1254983 (=> (not res!555871) (not e!798715))))

(assert (=> b!1254983 (= res!555871 call!88015)))

(declare-fun b!1254984 () Bool)

(assert (=> b!1254984 (= e!798712 e!798714)))

(declare-fun res!555870 () Bool)

(assert (=> b!1254984 (= res!555870 (not (nullable!1109 (reg!3800 lt!420320))))))

(assert (=> b!1254984 (=> (not res!555870) (not e!798714))))

(declare-fun b!1254985 () Bool)

(assert (=> b!1254985 (= e!798712 e!798713)))

(assert (=> b!1254985 (= c!208358 ((_ is Union!3471) lt!420320))))

(assert (= (and d!354751 (not res!555868)) b!1254979))

(assert (= (and b!1254979 c!208359) b!1254984))

(assert (= (and b!1254979 (not c!208359)) b!1254985))

(assert (= (and b!1254984 res!555870) b!1254982))

(assert (= (and b!1254985 c!208358) b!1254981))

(assert (= (and b!1254985 (not c!208358)) b!1254978))

(assert (= (and b!1254981 res!555869) b!1254977))

(assert (= (and b!1254978 (not res!555872)) b!1254983))

(assert (= (and b!1254983 res!555871) b!1254980))

(assert (= (or b!1254977 b!1254980) bm!88011))

(assert (= (or b!1254981 b!1254983) bm!88010))

(assert (= (or b!1254982 bm!88011) bm!88012))

(declare-fun m!1413541 () Bool)

(assert (=> bm!88010 m!1413541))

(declare-fun m!1413543 () Bool)

(assert (=> bm!88012 m!1413543))

(declare-fun m!1413545 () Bool)

(assert (=> b!1254984 m!1413545))

(assert (=> d!354723 d!354751))

(declare-fun b!1254986 () Bool)

(declare-fun e!798718 () Bool)

(declare-fun call!88020 () Bool)

(assert (=> b!1254986 (= e!798718 call!88020)))

(declare-fun bm!88013 () Bool)

(declare-fun call!88018 () Bool)

(declare-fun c!208360 () Bool)

(assert (=> bm!88013 (= call!88018 (validRegex!1507 (ite c!208360 (regOne!7455 (reg!3800 r!15719)) (regOne!7454 (reg!3800 r!15719)))))))

(declare-fun b!1254987 () Bool)

(declare-fun res!555877 () Bool)

(declare-fun e!798723 () Bool)

(assert (=> b!1254987 (=> res!555877 e!798723)))

(assert (=> b!1254987 (= res!555877 (not ((_ is Concat!5701) (reg!3800 r!15719))))))

(declare-fun e!798720 () Bool)

(assert (=> b!1254987 (= e!798720 e!798723)))

(declare-fun b!1254988 () Bool)

(declare-fun e!798724 () Bool)

(declare-fun e!798719 () Bool)

(assert (=> b!1254988 (= e!798724 e!798719)))

(declare-fun c!208361 () Bool)

(assert (=> b!1254988 (= c!208361 ((_ is Star!3471) (reg!3800 r!15719)))))

(declare-fun bm!88014 () Bool)

(declare-fun call!88019 () Bool)

(assert (=> bm!88014 (= call!88020 call!88019)))

(declare-fun d!354753 () Bool)

(declare-fun res!555873 () Bool)

(assert (=> d!354753 (=> res!555873 e!798724)))

(assert (=> d!354753 (= res!555873 ((_ is ElementMatch!3471) (reg!3800 r!15719)))))

(assert (=> d!354753 (= (validRegex!1507 (reg!3800 r!15719)) e!798724)))

(declare-fun b!1254989 () Bool)

(declare-fun e!798722 () Bool)

(assert (=> b!1254989 (= e!798722 call!88020)))

(declare-fun b!1254990 () Bool)

(declare-fun res!555874 () Bool)

(assert (=> b!1254990 (=> (not res!555874) (not e!798718))))

(assert (=> b!1254990 (= res!555874 call!88018)))

(assert (=> b!1254990 (= e!798720 e!798718)))

(declare-fun b!1254991 () Bool)

(declare-fun e!798721 () Bool)

(assert (=> b!1254991 (= e!798721 call!88019)))

(declare-fun bm!88015 () Bool)

(assert (=> bm!88015 (= call!88019 (validRegex!1507 (ite c!208361 (reg!3800 (reg!3800 r!15719)) (ite c!208360 (regTwo!7455 (reg!3800 r!15719)) (regTwo!7454 (reg!3800 r!15719))))))))

(declare-fun b!1254992 () Bool)

(assert (=> b!1254992 (= e!798723 e!798722)))

(declare-fun res!555876 () Bool)

(assert (=> b!1254992 (=> (not res!555876) (not e!798722))))

(assert (=> b!1254992 (= res!555876 call!88018)))

(declare-fun b!1254993 () Bool)

(assert (=> b!1254993 (= e!798719 e!798721)))

(declare-fun res!555875 () Bool)

(assert (=> b!1254993 (= res!555875 (not (nullable!1109 (reg!3800 (reg!3800 r!15719)))))))

(assert (=> b!1254993 (=> (not res!555875) (not e!798721))))

(declare-fun b!1254994 () Bool)

(assert (=> b!1254994 (= e!798719 e!798720)))

(assert (=> b!1254994 (= c!208360 ((_ is Union!3471) (reg!3800 r!15719)))))

(assert (= (and d!354753 (not res!555873)) b!1254988))

(assert (= (and b!1254988 c!208361) b!1254993))

(assert (= (and b!1254988 (not c!208361)) b!1254994))

(assert (= (and b!1254993 res!555875) b!1254991))

(assert (= (and b!1254994 c!208360) b!1254990))

(assert (= (and b!1254994 (not c!208360)) b!1254987))

(assert (= (and b!1254990 res!555874) b!1254986))

(assert (= (and b!1254987 (not res!555877)) b!1254992))

(assert (= (and b!1254992 res!555876) b!1254989))

(assert (= (or b!1254986 b!1254989) bm!88014))

(assert (= (or b!1254990 b!1254992) bm!88013))

(assert (= (or b!1254991 bm!88014) bm!88015))

(declare-fun m!1413547 () Bool)

(assert (=> bm!88013 m!1413547))

(declare-fun m!1413549 () Bool)

(assert (=> bm!88015 m!1413549))

(declare-fun m!1413551 () Bool)

(assert (=> b!1254993 m!1413551))

(assert (=> d!354723 d!354753))

(declare-fun c!208365 () Bool)

(declare-fun b!1254995 () Bool)

(assert (=> b!1254995 (= c!208365 ((_ is Star!3471) (ite (or c!208320 c!208321) (regOne!7454 (reg!3800 r!15719)) (regTwo!7455 (reg!3800 r!15719)))))))

(declare-fun e!798729 () Regex!3471)

(declare-fun e!798725 () Regex!3471)

(assert (=> b!1254995 (= e!798729 e!798725)))

(declare-fun b!1254996 () Bool)

(declare-fun e!798728 () Regex!3471)

(declare-fun e!798727 () Regex!3471)

(assert (=> b!1254996 (= e!798728 e!798727)))

(declare-fun c!208363 () Bool)

(assert (=> b!1254996 (= c!208363 (and ((_ is Concat!5701) (ite (or c!208320 c!208321) (regOne!7454 (reg!3800 r!15719)) (regTwo!7455 (reg!3800 r!15719)))) ((_ is EmptyExpr!3471) (regTwo!7454 (ite (or c!208320 c!208321) (regOne!7454 (reg!3800 r!15719)) (regTwo!7455 (reg!3800 r!15719)))))))))

(declare-fun b!1254997 () Bool)

(declare-fun call!88021 () Regex!3471)

(assert (=> b!1254997 (= e!798725 (Star!3471 call!88021))))

(declare-fun b!1254998 () Bool)

(declare-fun e!798726 () Regex!3471)

(declare-fun call!88024 () Regex!3471)

(declare-fun call!88023 () Regex!3471)

(assert (=> b!1254998 (= e!798726 (Concat!5701 call!88024 call!88023))))

(declare-fun bm!88016 () Bool)

(declare-fun call!88025 () Regex!3471)

(assert (=> bm!88016 (= call!88023 call!88025)))

(declare-fun b!1254999 () Bool)

(assert (=> b!1254999 (= e!798725 (ite (or c!208320 c!208321) (regOne!7454 (reg!3800 r!15719)) (regTwo!7455 (reg!3800 r!15719))))))

(declare-fun b!1255000 () Bool)

(assert (=> b!1255000 (= e!798728 call!88025)))

(declare-fun b!1255001 () Bool)

(declare-fun call!88022 () Regex!3471)

(assert (=> b!1255001 (= e!798727 call!88022)))

(declare-fun c!208366 () Bool)

(declare-fun c!208362 () Bool)

(declare-fun bm!88017 () Bool)

(declare-fun c!208364 () Bool)

(assert (=> bm!88017 (= call!88025 (removeUselessConcat!520 (ite (or c!208366 c!208364) (regTwo!7454 (ite (or c!208320 c!208321) (regOne!7454 (reg!3800 r!15719)) (regTwo!7455 (reg!3800 r!15719)))) (ite c!208362 (regOne!7455 (ite (or c!208320 c!208321) (regOne!7454 (reg!3800 r!15719)) (regTwo!7455 (reg!3800 r!15719)))) (reg!3800 (ite (or c!208320 c!208321) (regOne!7454 (reg!3800 r!15719)) (regTwo!7455 (reg!3800 r!15719))))))))))

(declare-fun b!1255002 () Bool)

(assert (=> b!1255002 (= e!798726 e!798729)))

(assert (=> b!1255002 (= c!208362 ((_ is Union!3471) (ite (or c!208320 c!208321) (regOne!7454 (reg!3800 r!15719)) (regTwo!7455 (reg!3800 r!15719)))))))

(declare-fun bm!88018 () Bool)

(assert (=> bm!88018 (= call!88022 (removeUselessConcat!520 (ite (or c!208363 c!208364) (regOne!7454 (ite (or c!208320 c!208321) (regOne!7454 (reg!3800 r!15719)) (regTwo!7455 (reg!3800 r!15719)))) (regTwo!7455 (ite (or c!208320 c!208321) (regOne!7454 (reg!3800 r!15719)) (regTwo!7455 (reg!3800 r!15719)))))))))

(declare-fun d!354755 () Bool)

(declare-fun e!798730 () Bool)

(assert (=> d!354755 e!798730))

(declare-fun res!555878 () Bool)

(assert (=> d!354755 (=> (not res!555878) (not e!798730))))

(declare-fun lt!420325 () Regex!3471)

(assert (=> d!354755 (= res!555878 (validRegex!1507 lt!420325))))

(assert (=> d!354755 (= lt!420325 e!798728)))

(assert (=> d!354755 (= c!208366 (and ((_ is Concat!5701) (ite (or c!208320 c!208321) (regOne!7454 (reg!3800 r!15719)) (regTwo!7455 (reg!3800 r!15719)))) ((_ is EmptyExpr!3471) (regOne!7454 (ite (or c!208320 c!208321) (regOne!7454 (reg!3800 r!15719)) (regTwo!7455 (reg!3800 r!15719)))))))))

(assert (=> d!354755 (validRegex!1507 (ite (or c!208320 c!208321) (regOne!7454 (reg!3800 r!15719)) (regTwo!7455 (reg!3800 r!15719))))))

(assert (=> d!354755 (= (removeUselessConcat!520 (ite (or c!208320 c!208321) (regOne!7454 (reg!3800 r!15719)) (regTwo!7455 (reg!3800 r!15719)))) lt!420325)))

(declare-fun b!1255003 () Bool)

(assert (=> b!1255003 (= e!798730 (= (nullable!1109 lt!420325) (nullable!1109 (ite (or c!208320 c!208321) (regOne!7454 (reg!3800 r!15719)) (regTwo!7455 (reg!3800 r!15719))))))))

(declare-fun b!1255004 () Bool)

(assert (=> b!1255004 (= e!798729 (Union!3471 call!88021 call!88024))))

(declare-fun bm!88019 () Bool)

(assert (=> bm!88019 (= call!88024 call!88022)))

(declare-fun b!1255005 () Bool)

(assert (=> b!1255005 (= c!208364 ((_ is Concat!5701) (ite (or c!208320 c!208321) (regOne!7454 (reg!3800 r!15719)) (regTwo!7455 (reg!3800 r!15719)))))))

(assert (=> b!1255005 (= e!798727 e!798726)))

(declare-fun bm!88020 () Bool)

(assert (=> bm!88020 (= call!88021 call!88023)))

(assert (= (and d!354755 c!208366) b!1255000))

(assert (= (and d!354755 (not c!208366)) b!1254996))

(assert (= (and b!1254996 c!208363) b!1255001))

(assert (= (and b!1254996 (not c!208363)) b!1255005))

(assert (= (and b!1255005 c!208364) b!1254998))

(assert (= (and b!1255005 (not c!208364)) b!1255002))

(assert (= (and b!1255002 c!208362) b!1255004))

(assert (= (and b!1255002 (not c!208362)) b!1254995))

(assert (= (and b!1254995 c!208365) b!1254997))

(assert (= (and b!1254995 (not c!208365)) b!1254999))

(assert (= (or b!1255004 b!1254997) bm!88020))

(assert (= (or b!1254998 b!1255004) bm!88019))

(assert (= (or b!1254998 bm!88020) bm!88016))

(assert (= (or b!1255001 bm!88019) bm!88018))

(assert (= (or b!1255000 bm!88016) bm!88017))

(assert (= (and d!354755 res!555878) b!1255003))

(declare-fun m!1413553 () Bool)

(assert (=> bm!88017 m!1413553))

(declare-fun m!1413555 () Bool)

(assert (=> bm!88018 m!1413555))

(declare-fun m!1413557 () Bool)

(assert (=> d!354755 m!1413557))

(declare-fun m!1413559 () Bool)

(assert (=> d!354755 m!1413559))

(declare-fun m!1413561 () Bool)

(assert (=> b!1255003 m!1413561))

(declare-fun m!1413563 () Bool)

(assert (=> b!1255003 m!1413563))

(assert (=> bm!87964 d!354755))

(declare-fun d!354757 () Bool)

(assert (=> d!354757 (= (nullable!1109 (reg!3800 lt!420317)) (nullableFct!249 (reg!3800 lt!420317)))))

(declare-fun bs!289940 () Bool)

(assert (= bs!289940 d!354757))

(declare-fun m!1413565 () Bool)

(assert (=> bs!289940 m!1413565))

(assert (=> b!1254747 d!354757))

(declare-fun d!354759 () Bool)

(assert (=> d!354759 (= (nullable!1109 lt!420320) (nullableFct!249 lt!420320))))

(declare-fun bs!289941 () Bool)

(assert (= bs!289941 d!354759))

(declare-fun m!1413567 () Bool)

(assert (=> bs!289941 m!1413567))

(assert (=> b!1254797 d!354759))

(assert (=> b!1254797 d!354741))

(declare-fun b!1255006 () Bool)

(declare-fun e!798731 () Bool)

(declare-fun call!88028 () Bool)

(assert (=> b!1255006 (= e!798731 call!88028)))

(declare-fun c!208367 () Bool)

(declare-fun bm!88021 () Bool)

(declare-fun call!88026 () Bool)

(assert (=> bm!88021 (= call!88026 (validRegex!1507 (ite c!208367 (regOne!7455 (ite c!208327 (reg!3800 r!15719) (ite c!208326 (regTwo!7455 r!15719) (regTwo!7454 r!15719)))) (regOne!7454 (ite c!208327 (reg!3800 r!15719) (ite c!208326 (regTwo!7455 r!15719) (regTwo!7454 r!15719)))))))))

(declare-fun b!1255007 () Bool)

(declare-fun res!555883 () Bool)

(declare-fun e!798736 () Bool)

(assert (=> b!1255007 (=> res!555883 e!798736)))

(assert (=> b!1255007 (= res!555883 (not ((_ is Concat!5701) (ite c!208327 (reg!3800 r!15719) (ite c!208326 (regTwo!7455 r!15719) (regTwo!7454 r!15719))))))))

(declare-fun e!798733 () Bool)

(assert (=> b!1255007 (= e!798733 e!798736)))

(declare-fun b!1255008 () Bool)

(declare-fun e!798737 () Bool)

(declare-fun e!798732 () Bool)

(assert (=> b!1255008 (= e!798737 e!798732)))

(declare-fun c!208368 () Bool)

(assert (=> b!1255008 (= c!208368 ((_ is Star!3471) (ite c!208327 (reg!3800 r!15719) (ite c!208326 (regTwo!7455 r!15719) (regTwo!7454 r!15719)))))))

(declare-fun bm!88022 () Bool)

(declare-fun call!88027 () Bool)

(assert (=> bm!88022 (= call!88028 call!88027)))

(declare-fun d!354761 () Bool)

(declare-fun res!555879 () Bool)

(assert (=> d!354761 (=> res!555879 e!798737)))

(assert (=> d!354761 (= res!555879 ((_ is ElementMatch!3471) (ite c!208327 (reg!3800 r!15719) (ite c!208326 (regTwo!7455 r!15719) (regTwo!7454 r!15719)))))))

(assert (=> d!354761 (= (validRegex!1507 (ite c!208327 (reg!3800 r!15719) (ite c!208326 (regTwo!7455 r!15719) (regTwo!7454 r!15719)))) e!798737)))

(declare-fun b!1255009 () Bool)

(declare-fun e!798735 () Bool)

(assert (=> b!1255009 (= e!798735 call!88028)))

(declare-fun b!1255010 () Bool)

(declare-fun res!555880 () Bool)

(assert (=> b!1255010 (=> (not res!555880) (not e!798731))))

(assert (=> b!1255010 (= res!555880 call!88026)))

(assert (=> b!1255010 (= e!798733 e!798731)))

(declare-fun b!1255011 () Bool)

(declare-fun e!798734 () Bool)

(assert (=> b!1255011 (= e!798734 call!88027)))

(declare-fun bm!88023 () Bool)

(assert (=> bm!88023 (= call!88027 (validRegex!1507 (ite c!208368 (reg!3800 (ite c!208327 (reg!3800 r!15719) (ite c!208326 (regTwo!7455 r!15719) (regTwo!7454 r!15719)))) (ite c!208367 (regTwo!7455 (ite c!208327 (reg!3800 r!15719) (ite c!208326 (regTwo!7455 r!15719) (regTwo!7454 r!15719)))) (regTwo!7454 (ite c!208327 (reg!3800 r!15719) (ite c!208326 (regTwo!7455 r!15719) (regTwo!7454 r!15719))))))))))

(declare-fun b!1255012 () Bool)

(assert (=> b!1255012 (= e!798736 e!798735)))

(declare-fun res!555882 () Bool)

(assert (=> b!1255012 (=> (not res!555882) (not e!798735))))

(assert (=> b!1255012 (= res!555882 call!88026)))

(declare-fun b!1255013 () Bool)

(assert (=> b!1255013 (= e!798732 e!798734)))

(declare-fun res!555881 () Bool)

(assert (=> b!1255013 (= res!555881 (not (nullable!1109 (reg!3800 (ite c!208327 (reg!3800 r!15719) (ite c!208326 (regTwo!7455 r!15719) (regTwo!7454 r!15719)))))))))

(assert (=> b!1255013 (=> (not res!555881) (not e!798734))))

(declare-fun b!1255014 () Bool)

(assert (=> b!1255014 (= e!798732 e!798733)))

(assert (=> b!1255014 (= c!208367 ((_ is Union!3471) (ite c!208327 (reg!3800 r!15719) (ite c!208326 (regTwo!7455 r!15719) (regTwo!7454 r!15719)))))))

(assert (= (and d!354761 (not res!555879)) b!1255008))

(assert (= (and b!1255008 c!208368) b!1255013))

(assert (= (and b!1255008 (not c!208368)) b!1255014))

(assert (= (and b!1255013 res!555881) b!1255011))

(assert (= (and b!1255014 c!208367) b!1255010))

(assert (= (and b!1255014 (not c!208367)) b!1255007))

(assert (= (and b!1255010 res!555880) b!1255006))

(assert (= (and b!1255007 (not res!555883)) b!1255012))

(assert (= (and b!1255012 res!555882) b!1255009))

(assert (= (or b!1255006 b!1255009) bm!88022))

(assert (= (or b!1255010 b!1255012) bm!88021))

(assert (= (or b!1255011 bm!88022) bm!88023))

(declare-fun m!1413569 () Bool)

(assert (=> bm!88021 m!1413569))

(declare-fun m!1413571 () Bool)

(assert (=> bm!88023 m!1413571))

(declare-fun m!1413573 () Bool)

(assert (=> b!1255013 m!1413573))

(assert (=> bm!87972 d!354761))

(declare-fun b!1255015 () Bool)

(declare-fun e!798738 () Bool)

(declare-fun call!88031 () Bool)

(assert (=> b!1255015 (= e!798738 call!88031)))

(declare-fun call!88029 () Bool)

(declare-fun c!208369 () Bool)

(declare-fun bm!88024 () Bool)

(assert (=> bm!88024 (= call!88029 (validRegex!1507 (ite c!208369 (regOne!7455 (ite c!208303 (regOne!7455 lt!420317) (regOne!7454 lt!420317))) (regOne!7454 (ite c!208303 (regOne!7455 lt!420317) (regOne!7454 lt!420317))))))))

(declare-fun b!1255016 () Bool)

(declare-fun res!555888 () Bool)

(declare-fun e!798743 () Bool)

(assert (=> b!1255016 (=> res!555888 e!798743)))

(assert (=> b!1255016 (= res!555888 (not ((_ is Concat!5701) (ite c!208303 (regOne!7455 lt!420317) (regOne!7454 lt!420317)))))))

(declare-fun e!798740 () Bool)

(assert (=> b!1255016 (= e!798740 e!798743)))

(declare-fun b!1255017 () Bool)

(declare-fun e!798744 () Bool)

(declare-fun e!798739 () Bool)

(assert (=> b!1255017 (= e!798744 e!798739)))

(declare-fun c!208370 () Bool)

(assert (=> b!1255017 (= c!208370 ((_ is Star!3471) (ite c!208303 (regOne!7455 lt!420317) (regOne!7454 lt!420317))))))

(declare-fun bm!88025 () Bool)

(declare-fun call!88030 () Bool)

(assert (=> bm!88025 (= call!88031 call!88030)))

(declare-fun d!354763 () Bool)

(declare-fun res!555884 () Bool)

(assert (=> d!354763 (=> res!555884 e!798744)))

(assert (=> d!354763 (= res!555884 ((_ is ElementMatch!3471) (ite c!208303 (regOne!7455 lt!420317) (regOne!7454 lt!420317))))))

(assert (=> d!354763 (= (validRegex!1507 (ite c!208303 (regOne!7455 lt!420317) (regOne!7454 lt!420317))) e!798744)))

(declare-fun b!1255018 () Bool)

(declare-fun e!798742 () Bool)

(assert (=> b!1255018 (= e!798742 call!88031)))

(declare-fun b!1255019 () Bool)

(declare-fun res!555885 () Bool)

(assert (=> b!1255019 (=> (not res!555885) (not e!798738))))

(assert (=> b!1255019 (= res!555885 call!88029)))

(assert (=> b!1255019 (= e!798740 e!798738)))

(declare-fun b!1255020 () Bool)

(declare-fun e!798741 () Bool)

(assert (=> b!1255020 (= e!798741 call!88030)))

(declare-fun bm!88026 () Bool)

(assert (=> bm!88026 (= call!88030 (validRegex!1507 (ite c!208370 (reg!3800 (ite c!208303 (regOne!7455 lt!420317) (regOne!7454 lt!420317))) (ite c!208369 (regTwo!7455 (ite c!208303 (regOne!7455 lt!420317) (regOne!7454 lt!420317))) (regTwo!7454 (ite c!208303 (regOne!7455 lt!420317) (regOne!7454 lt!420317)))))))))

(declare-fun b!1255021 () Bool)

(assert (=> b!1255021 (= e!798743 e!798742)))

(declare-fun res!555887 () Bool)

(assert (=> b!1255021 (=> (not res!555887) (not e!798742))))

(assert (=> b!1255021 (= res!555887 call!88029)))

(declare-fun b!1255022 () Bool)

(assert (=> b!1255022 (= e!798739 e!798741)))

(declare-fun res!555886 () Bool)

(assert (=> b!1255022 (= res!555886 (not (nullable!1109 (reg!3800 (ite c!208303 (regOne!7455 lt!420317) (regOne!7454 lt!420317))))))))

(assert (=> b!1255022 (=> (not res!555886) (not e!798741))))

(declare-fun b!1255023 () Bool)

(assert (=> b!1255023 (= e!798739 e!798740)))

(assert (=> b!1255023 (= c!208369 ((_ is Union!3471) (ite c!208303 (regOne!7455 lt!420317) (regOne!7454 lt!420317))))))

(assert (= (and d!354763 (not res!555884)) b!1255017))

(assert (= (and b!1255017 c!208370) b!1255022))

(assert (= (and b!1255017 (not c!208370)) b!1255023))

(assert (= (and b!1255022 res!555886) b!1255020))

(assert (= (and b!1255023 c!208369) b!1255019))

(assert (= (and b!1255023 (not c!208369)) b!1255016))

(assert (= (and b!1255019 res!555885) b!1255015))

(assert (= (and b!1255016 (not res!555888)) b!1255021))

(assert (= (and b!1255021 res!555887) b!1255018))

(assert (= (or b!1255015 b!1255018) bm!88025))

(assert (= (or b!1255019 b!1255021) bm!88024))

(assert (= (or b!1255020 bm!88025) bm!88026))

(declare-fun m!1413575 () Bool)

(assert (=> bm!88024 m!1413575))

(declare-fun m!1413577 () Bool)

(assert (=> bm!88026 m!1413577))

(declare-fun m!1413579 () Bool)

(assert (=> b!1255022 m!1413579))

(assert (=> bm!87943 d!354763))

(declare-fun b!1255024 () Bool)

(declare-fun e!798745 () Bool)

(assert (=> b!1255024 (= e!798745 tp_is_empty!6463)))

(declare-fun b!1255026 () Bool)

(declare-fun tp!369951 () Bool)

(assert (=> b!1255026 (= e!798745 tp!369951)))

(declare-fun b!1255025 () Bool)

(declare-fun tp!369950 () Bool)

(declare-fun tp!369954 () Bool)

(assert (=> b!1255025 (= e!798745 (and tp!369950 tp!369954))))

(declare-fun b!1255027 () Bool)

(declare-fun tp!369952 () Bool)

(declare-fun tp!369953 () Bool)

(assert (=> b!1255027 (= e!798745 (and tp!369952 tp!369953))))

(assert (=> b!1254845 (= tp!369910 e!798745)))

(assert (= (and b!1254845 ((_ is ElementMatch!3471) (regOne!7454 (regTwo!7455 r!15719)))) b!1255024))

(assert (= (and b!1254845 ((_ is Concat!5701) (regOne!7454 (regTwo!7455 r!15719)))) b!1255025))

(assert (= (and b!1254845 ((_ is Star!3471) (regOne!7454 (regTwo!7455 r!15719)))) b!1255026))

(assert (= (and b!1254845 ((_ is Union!3471) (regOne!7454 (regTwo!7455 r!15719)))) b!1255027))

(declare-fun b!1255028 () Bool)

(declare-fun e!798746 () Bool)

(assert (=> b!1255028 (= e!798746 tp_is_empty!6463)))

(declare-fun b!1255030 () Bool)

(declare-fun tp!369956 () Bool)

(assert (=> b!1255030 (= e!798746 tp!369956)))

(declare-fun b!1255029 () Bool)

(declare-fun tp!369955 () Bool)

(declare-fun tp!369959 () Bool)

(assert (=> b!1255029 (= e!798746 (and tp!369955 tp!369959))))

(declare-fun b!1255031 () Bool)

(declare-fun tp!369957 () Bool)

(declare-fun tp!369958 () Bool)

(assert (=> b!1255031 (= e!798746 (and tp!369957 tp!369958))))

(assert (=> b!1254845 (= tp!369914 e!798746)))

(assert (= (and b!1254845 ((_ is ElementMatch!3471) (regTwo!7454 (regTwo!7455 r!15719)))) b!1255028))

(assert (= (and b!1254845 ((_ is Concat!5701) (regTwo!7454 (regTwo!7455 r!15719)))) b!1255029))

(assert (= (and b!1254845 ((_ is Star!3471) (regTwo!7454 (regTwo!7455 r!15719)))) b!1255030))

(assert (= (and b!1254845 ((_ is Union!3471) (regTwo!7454 (regTwo!7455 r!15719)))) b!1255031))

(declare-fun b!1255032 () Bool)

(declare-fun e!798747 () Bool)

(assert (=> b!1255032 (= e!798747 tp_is_empty!6463)))

(declare-fun b!1255034 () Bool)

(declare-fun tp!369961 () Bool)

(assert (=> b!1255034 (= e!798747 tp!369961)))

(declare-fun b!1255033 () Bool)

(declare-fun tp!369960 () Bool)

(declare-fun tp!369964 () Bool)

(assert (=> b!1255033 (= e!798747 (and tp!369960 tp!369964))))

(declare-fun b!1255035 () Bool)

(declare-fun tp!369962 () Bool)

(declare-fun tp!369963 () Bool)

(assert (=> b!1255035 (= e!798747 (and tp!369962 tp!369963))))

(assert (=> b!1254841 (= tp!369905 e!798747)))

(assert (= (and b!1254841 ((_ is ElementMatch!3471) (regOne!7454 (regOne!7455 r!15719)))) b!1255032))

(assert (= (and b!1254841 ((_ is Concat!5701) (regOne!7454 (regOne!7455 r!15719)))) b!1255033))

(assert (= (and b!1254841 ((_ is Star!3471) (regOne!7454 (regOne!7455 r!15719)))) b!1255034))

(assert (= (and b!1254841 ((_ is Union!3471) (regOne!7454 (regOne!7455 r!15719)))) b!1255035))

(declare-fun b!1255036 () Bool)

(declare-fun e!798748 () Bool)

(assert (=> b!1255036 (= e!798748 tp_is_empty!6463)))

(declare-fun b!1255038 () Bool)

(declare-fun tp!369966 () Bool)

(assert (=> b!1255038 (= e!798748 tp!369966)))

(declare-fun b!1255037 () Bool)

(declare-fun tp!369965 () Bool)

(declare-fun tp!369969 () Bool)

(assert (=> b!1255037 (= e!798748 (and tp!369965 tp!369969))))

(declare-fun b!1255039 () Bool)

(declare-fun tp!369967 () Bool)

(declare-fun tp!369968 () Bool)

(assert (=> b!1255039 (= e!798748 (and tp!369967 tp!369968))))

(assert (=> b!1254841 (= tp!369909 e!798748)))

(assert (= (and b!1254841 ((_ is ElementMatch!3471) (regTwo!7454 (regOne!7455 r!15719)))) b!1255036))

(assert (= (and b!1254841 ((_ is Concat!5701) (regTwo!7454 (regOne!7455 r!15719)))) b!1255037))

(assert (= (and b!1254841 ((_ is Star!3471) (regTwo!7454 (regOne!7455 r!15719)))) b!1255038))

(assert (= (and b!1254841 ((_ is Union!3471) (regTwo!7454 (regOne!7455 r!15719)))) b!1255039))

(declare-fun b!1255040 () Bool)

(declare-fun e!798749 () Bool)

(assert (=> b!1255040 (= e!798749 tp_is_empty!6463)))

(declare-fun b!1255042 () Bool)

(declare-fun tp!369971 () Bool)

(assert (=> b!1255042 (= e!798749 tp!369971)))

(declare-fun b!1255041 () Bool)

(declare-fun tp!369970 () Bool)

(declare-fun tp!369974 () Bool)

(assert (=> b!1255041 (= e!798749 (and tp!369970 tp!369974))))

(declare-fun b!1255043 () Bool)

(declare-fun tp!369972 () Bool)

(declare-fun tp!369973 () Bool)

(assert (=> b!1255043 (= e!798749 (and tp!369972 tp!369973))))

(assert (=> b!1254846 (= tp!369911 e!798749)))

(assert (= (and b!1254846 ((_ is ElementMatch!3471) (reg!3800 (regTwo!7455 r!15719)))) b!1255040))

(assert (= (and b!1254846 ((_ is Concat!5701) (reg!3800 (regTwo!7455 r!15719)))) b!1255041))

(assert (= (and b!1254846 ((_ is Star!3471) (reg!3800 (regTwo!7455 r!15719)))) b!1255042))

(assert (= (and b!1254846 ((_ is Union!3471) (reg!3800 (regTwo!7455 r!15719)))) b!1255043))

(declare-fun b!1255044 () Bool)

(declare-fun e!798750 () Bool)

(assert (=> b!1255044 (= e!798750 tp_is_empty!6463)))

(declare-fun b!1255046 () Bool)

(declare-fun tp!369976 () Bool)

(assert (=> b!1255046 (= e!798750 tp!369976)))

(declare-fun b!1255045 () Bool)

(declare-fun tp!369975 () Bool)

(declare-fun tp!369979 () Bool)

(assert (=> b!1255045 (= e!798750 (and tp!369975 tp!369979))))

(declare-fun b!1255047 () Bool)

(declare-fun tp!369977 () Bool)

(declare-fun tp!369978 () Bool)

(assert (=> b!1255047 (= e!798750 (and tp!369977 tp!369978))))

(assert (=> b!1254837 (= tp!369900 e!798750)))

(assert (= (and b!1254837 ((_ is ElementMatch!3471) (regOne!7454 (reg!3800 r!15719)))) b!1255044))

(assert (= (and b!1254837 ((_ is Concat!5701) (regOne!7454 (reg!3800 r!15719)))) b!1255045))

(assert (= (and b!1254837 ((_ is Star!3471) (regOne!7454 (reg!3800 r!15719)))) b!1255046))

(assert (= (and b!1254837 ((_ is Union!3471) (regOne!7454 (reg!3800 r!15719)))) b!1255047))

(declare-fun b!1255048 () Bool)

(declare-fun e!798751 () Bool)

(assert (=> b!1255048 (= e!798751 tp_is_empty!6463)))

(declare-fun b!1255050 () Bool)

(declare-fun tp!369981 () Bool)

(assert (=> b!1255050 (= e!798751 tp!369981)))

(declare-fun b!1255049 () Bool)

(declare-fun tp!369980 () Bool)

(declare-fun tp!369984 () Bool)

(assert (=> b!1255049 (= e!798751 (and tp!369980 tp!369984))))

(declare-fun b!1255051 () Bool)

(declare-fun tp!369982 () Bool)

(declare-fun tp!369983 () Bool)

(assert (=> b!1255051 (= e!798751 (and tp!369982 tp!369983))))

(assert (=> b!1254837 (= tp!369904 e!798751)))

(assert (= (and b!1254837 ((_ is ElementMatch!3471) (regTwo!7454 (reg!3800 r!15719)))) b!1255048))

(assert (= (and b!1254837 ((_ is Concat!5701) (regTwo!7454 (reg!3800 r!15719)))) b!1255049))

(assert (= (and b!1254837 ((_ is Star!3471) (regTwo!7454 (reg!3800 r!15719)))) b!1255050))

(assert (= (and b!1254837 ((_ is Union!3471) (regTwo!7454 (reg!3800 r!15719)))) b!1255051))

(declare-fun b!1255052 () Bool)

(declare-fun e!798752 () Bool)

(assert (=> b!1255052 (= e!798752 tp_is_empty!6463)))

(declare-fun b!1255054 () Bool)

(declare-fun tp!369986 () Bool)

(assert (=> b!1255054 (= e!798752 tp!369986)))

(declare-fun b!1255053 () Bool)

(declare-fun tp!369985 () Bool)

(declare-fun tp!369989 () Bool)

(assert (=> b!1255053 (= e!798752 (and tp!369985 tp!369989))))

(declare-fun b!1255055 () Bool)

(declare-fun tp!369987 () Bool)

(declare-fun tp!369988 () Bool)

(assert (=> b!1255055 (= e!798752 (and tp!369987 tp!369988))))

(assert (=> b!1254842 (= tp!369906 e!798752)))

(assert (= (and b!1254842 ((_ is ElementMatch!3471) (reg!3800 (regOne!7455 r!15719)))) b!1255052))

(assert (= (and b!1254842 ((_ is Concat!5701) (reg!3800 (regOne!7455 r!15719)))) b!1255053))

(assert (= (and b!1254842 ((_ is Star!3471) (reg!3800 (regOne!7455 r!15719)))) b!1255054))

(assert (= (and b!1254842 ((_ is Union!3471) (reg!3800 (regOne!7455 r!15719)))) b!1255055))

(declare-fun b!1255056 () Bool)

(declare-fun e!798753 () Bool)

(assert (=> b!1255056 (= e!798753 tp_is_empty!6463)))

(declare-fun b!1255058 () Bool)

(declare-fun tp!369991 () Bool)

(assert (=> b!1255058 (= e!798753 tp!369991)))

(declare-fun b!1255057 () Bool)

(declare-fun tp!369990 () Bool)

(declare-fun tp!369994 () Bool)

(assert (=> b!1255057 (= e!798753 (and tp!369990 tp!369994))))

(declare-fun b!1255059 () Bool)

(declare-fun tp!369992 () Bool)

(declare-fun tp!369993 () Bool)

(assert (=> b!1255059 (= e!798753 (and tp!369992 tp!369993))))

(assert (=> b!1254847 (= tp!369912 e!798753)))

(assert (= (and b!1254847 ((_ is ElementMatch!3471) (regOne!7455 (regTwo!7455 r!15719)))) b!1255056))

(assert (= (and b!1254847 ((_ is Concat!5701) (regOne!7455 (regTwo!7455 r!15719)))) b!1255057))

(assert (= (and b!1254847 ((_ is Star!3471) (regOne!7455 (regTwo!7455 r!15719)))) b!1255058))

(assert (= (and b!1254847 ((_ is Union!3471) (regOne!7455 (regTwo!7455 r!15719)))) b!1255059))

(declare-fun b!1255060 () Bool)

(declare-fun e!798754 () Bool)

(assert (=> b!1255060 (= e!798754 tp_is_empty!6463)))

(declare-fun b!1255062 () Bool)

(declare-fun tp!369996 () Bool)

(assert (=> b!1255062 (= e!798754 tp!369996)))

(declare-fun b!1255061 () Bool)

(declare-fun tp!369995 () Bool)

(declare-fun tp!369999 () Bool)

(assert (=> b!1255061 (= e!798754 (and tp!369995 tp!369999))))

(declare-fun b!1255063 () Bool)

(declare-fun tp!369997 () Bool)

(declare-fun tp!369998 () Bool)

(assert (=> b!1255063 (= e!798754 (and tp!369997 tp!369998))))

(assert (=> b!1254847 (= tp!369913 e!798754)))

(assert (= (and b!1254847 ((_ is ElementMatch!3471) (regTwo!7455 (regTwo!7455 r!15719)))) b!1255060))

(assert (= (and b!1254847 ((_ is Concat!5701) (regTwo!7455 (regTwo!7455 r!15719)))) b!1255061))

(assert (= (and b!1254847 ((_ is Star!3471) (regTwo!7455 (regTwo!7455 r!15719)))) b!1255062))

(assert (= (and b!1254847 ((_ is Union!3471) (regTwo!7455 (regTwo!7455 r!15719)))) b!1255063))

(declare-fun b!1255064 () Bool)

(declare-fun e!798755 () Bool)

(assert (=> b!1255064 (= e!798755 tp_is_empty!6463)))

(declare-fun b!1255066 () Bool)

(declare-fun tp!370001 () Bool)

(assert (=> b!1255066 (= e!798755 tp!370001)))

(declare-fun b!1255065 () Bool)

(declare-fun tp!370000 () Bool)

(declare-fun tp!370004 () Bool)

(assert (=> b!1255065 (= e!798755 (and tp!370000 tp!370004))))

(declare-fun b!1255067 () Bool)

(declare-fun tp!370002 () Bool)

(declare-fun tp!370003 () Bool)

(assert (=> b!1255067 (= e!798755 (and tp!370002 tp!370003))))

(assert (=> b!1254833 (= tp!369895 e!798755)))

(assert (= (and b!1254833 ((_ is ElementMatch!3471) (regOne!7454 (regTwo!7454 r!15719)))) b!1255064))

(assert (= (and b!1254833 ((_ is Concat!5701) (regOne!7454 (regTwo!7454 r!15719)))) b!1255065))

(assert (= (and b!1254833 ((_ is Star!3471) (regOne!7454 (regTwo!7454 r!15719)))) b!1255066))

(assert (= (and b!1254833 ((_ is Union!3471) (regOne!7454 (regTwo!7454 r!15719)))) b!1255067))

(declare-fun b!1255068 () Bool)

(declare-fun e!798756 () Bool)

(assert (=> b!1255068 (= e!798756 tp_is_empty!6463)))

(declare-fun b!1255070 () Bool)

(declare-fun tp!370006 () Bool)

(assert (=> b!1255070 (= e!798756 tp!370006)))

(declare-fun b!1255069 () Bool)

(declare-fun tp!370005 () Bool)

(declare-fun tp!370009 () Bool)

(assert (=> b!1255069 (= e!798756 (and tp!370005 tp!370009))))

(declare-fun b!1255071 () Bool)

(declare-fun tp!370007 () Bool)

(declare-fun tp!370008 () Bool)

(assert (=> b!1255071 (= e!798756 (and tp!370007 tp!370008))))

(assert (=> b!1254833 (= tp!369899 e!798756)))

(assert (= (and b!1254833 ((_ is ElementMatch!3471) (regTwo!7454 (regTwo!7454 r!15719)))) b!1255068))

(assert (= (and b!1254833 ((_ is Concat!5701) (regTwo!7454 (regTwo!7454 r!15719)))) b!1255069))

(assert (= (and b!1254833 ((_ is Star!3471) (regTwo!7454 (regTwo!7454 r!15719)))) b!1255070))

(assert (= (and b!1254833 ((_ is Union!3471) (regTwo!7454 (regTwo!7454 r!15719)))) b!1255071))

(declare-fun b!1255072 () Bool)

(declare-fun e!798757 () Bool)

(assert (=> b!1255072 (= e!798757 tp_is_empty!6463)))

(declare-fun b!1255074 () Bool)

(declare-fun tp!370011 () Bool)

(assert (=> b!1255074 (= e!798757 tp!370011)))

(declare-fun b!1255073 () Bool)

(declare-fun tp!370010 () Bool)

(declare-fun tp!370014 () Bool)

(assert (=> b!1255073 (= e!798757 (and tp!370010 tp!370014))))

(declare-fun b!1255075 () Bool)

(declare-fun tp!370012 () Bool)

(declare-fun tp!370013 () Bool)

(assert (=> b!1255075 (= e!798757 (and tp!370012 tp!370013))))

(assert (=> b!1254838 (= tp!369901 e!798757)))

(assert (= (and b!1254838 ((_ is ElementMatch!3471) (reg!3800 (reg!3800 r!15719)))) b!1255072))

(assert (= (and b!1254838 ((_ is Concat!5701) (reg!3800 (reg!3800 r!15719)))) b!1255073))

(assert (= (and b!1254838 ((_ is Star!3471) (reg!3800 (reg!3800 r!15719)))) b!1255074))

(assert (= (and b!1254838 ((_ is Union!3471) (reg!3800 (reg!3800 r!15719)))) b!1255075))

(declare-fun b!1255076 () Bool)

(declare-fun e!798758 () Bool)

(assert (=> b!1255076 (= e!798758 tp_is_empty!6463)))

(declare-fun b!1255078 () Bool)

(declare-fun tp!370016 () Bool)

(assert (=> b!1255078 (= e!798758 tp!370016)))

(declare-fun b!1255077 () Bool)

(declare-fun tp!370015 () Bool)

(declare-fun tp!370019 () Bool)

(assert (=> b!1255077 (= e!798758 (and tp!370015 tp!370019))))

(declare-fun b!1255079 () Bool)

(declare-fun tp!370017 () Bool)

(declare-fun tp!370018 () Bool)

(assert (=> b!1255079 (= e!798758 (and tp!370017 tp!370018))))

(assert (=> b!1254843 (= tp!369907 e!798758)))

(assert (= (and b!1254843 ((_ is ElementMatch!3471) (regOne!7455 (regOne!7455 r!15719)))) b!1255076))

(assert (= (and b!1254843 ((_ is Concat!5701) (regOne!7455 (regOne!7455 r!15719)))) b!1255077))

(assert (= (and b!1254843 ((_ is Star!3471) (regOne!7455 (regOne!7455 r!15719)))) b!1255078))

(assert (= (and b!1254843 ((_ is Union!3471) (regOne!7455 (regOne!7455 r!15719)))) b!1255079))

(declare-fun b!1255080 () Bool)

(declare-fun e!798759 () Bool)

(assert (=> b!1255080 (= e!798759 tp_is_empty!6463)))

(declare-fun b!1255082 () Bool)

(declare-fun tp!370021 () Bool)

(assert (=> b!1255082 (= e!798759 tp!370021)))

(declare-fun b!1255081 () Bool)

(declare-fun tp!370020 () Bool)

(declare-fun tp!370024 () Bool)

(assert (=> b!1255081 (= e!798759 (and tp!370020 tp!370024))))

(declare-fun b!1255083 () Bool)

(declare-fun tp!370022 () Bool)

(declare-fun tp!370023 () Bool)

(assert (=> b!1255083 (= e!798759 (and tp!370022 tp!370023))))

(assert (=> b!1254843 (= tp!369908 e!798759)))

(assert (= (and b!1254843 ((_ is ElementMatch!3471) (regTwo!7455 (regOne!7455 r!15719)))) b!1255080))

(assert (= (and b!1254843 ((_ is Concat!5701) (regTwo!7455 (regOne!7455 r!15719)))) b!1255081))

(assert (= (and b!1254843 ((_ is Star!3471) (regTwo!7455 (regOne!7455 r!15719)))) b!1255082))

(assert (= (and b!1254843 ((_ is Union!3471) (regTwo!7455 (regOne!7455 r!15719)))) b!1255083))

(declare-fun b!1255084 () Bool)

(declare-fun e!798760 () Bool)

(assert (=> b!1255084 (= e!798760 tp_is_empty!6463)))

(declare-fun b!1255086 () Bool)

(declare-fun tp!370026 () Bool)

(assert (=> b!1255086 (= e!798760 tp!370026)))

(declare-fun b!1255085 () Bool)

(declare-fun tp!370025 () Bool)

(declare-fun tp!370029 () Bool)

(assert (=> b!1255085 (= e!798760 (and tp!370025 tp!370029))))

(declare-fun b!1255087 () Bool)

(declare-fun tp!370027 () Bool)

(declare-fun tp!370028 () Bool)

(assert (=> b!1255087 (= e!798760 (and tp!370027 tp!370028))))

(assert (=> b!1254829 (= tp!369890 e!798760)))

(assert (= (and b!1254829 ((_ is ElementMatch!3471) (regOne!7454 (regOne!7454 r!15719)))) b!1255084))

(assert (= (and b!1254829 ((_ is Concat!5701) (regOne!7454 (regOne!7454 r!15719)))) b!1255085))

(assert (= (and b!1254829 ((_ is Star!3471) (regOne!7454 (regOne!7454 r!15719)))) b!1255086))

(assert (= (and b!1254829 ((_ is Union!3471) (regOne!7454 (regOne!7454 r!15719)))) b!1255087))

(declare-fun b!1255088 () Bool)

(declare-fun e!798761 () Bool)

(assert (=> b!1255088 (= e!798761 tp_is_empty!6463)))

(declare-fun b!1255090 () Bool)

(declare-fun tp!370031 () Bool)

(assert (=> b!1255090 (= e!798761 tp!370031)))

(declare-fun b!1255089 () Bool)

(declare-fun tp!370030 () Bool)

(declare-fun tp!370034 () Bool)

(assert (=> b!1255089 (= e!798761 (and tp!370030 tp!370034))))

(declare-fun b!1255091 () Bool)

(declare-fun tp!370032 () Bool)

(declare-fun tp!370033 () Bool)

(assert (=> b!1255091 (= e!798761 (and tp!370032 tp!370033))))

(assert (=> b!1254829 (= tp!369894 e!798761)))

(assert (= (and b!1254829 ((_ is ElementMatch!3471) (regTwo!7454 (regOne!7454 r!15719)))) b!1255088))

(assert (= (and b!1254829 ((_ is Concat!5701) (regTwo!7454 (regOne!7454 r!15719)))) b!1255089))

(assert (= (and b!1254829 ((_ is Star!3471) (regTwo!7454 (regOne!7454 r!15719)))) b!1255090))

(assert (= (and b!1254829 ((_ is Union!3471) (regTwo!7454 (regOne!7454 r!15719)))) b!1255091))

(declare-fun b!1255092 () Bool)

(declare-fun e!798762 () Bool)

(assert (=> b!1255092 (= e!798762 tp_is_empty!6463)))

(declare-fun b!1255094 () Bool)

(declare-fun tp!370036 () Bool)

(assert (=> b!1255094 (= e!798762 tp!370036)))

(declare-fun b!1255093 () Bool)

(declare-fun tp!370035 () Bool)

(declare-fun tp!370039 () Bool)

(assert (=> b!1255093 (= e!798762 (and tp!370035 tp!370039))))

(declare-fun b!1255095 () Bool)

(declare-fun tp!370037 () Bool)

(declare-fun tp!370038 () Bool)

(assert (=> b!1255095 (= e!798762 (and tp!370037 tp!370038))))

(assert (=> b!1254834 (= tp!369896 e!798762)))

(assert (= (and b!1254834 ((_ is ElementMatch!3471) (reg!3800 (regTwo!7454 r!15719)))) b!1255092))

(assert (= (and b!1254834 ((_ is Concat!5701) (reg!3800 (regTwo!7454 r!15719)))) b!1255093))

(assert (= (and b!1254834 ((_ is Star!3471) (reg!3800 (regTwo!7454 r!15719)))) b!1255094))

(assert (= (and b!1254834 ((_ is Union!3471) (reg!3800 (regTwo!7454 r!15719)))) b!1255095))

(declare-fun b!1255096 () Bool)

(declare-fun e!798763 () Bool)

(assert (=> b!1255096 (= e!798763 tp_is_empty!6463)))

(declare-fun b!1255098 () Bool)

(declare-fun tp!370041 () Bool)

(assert (=> b!1255098 (= e!798763 tp!370041)))

(declare-fun b!1255097 () Bool)

(declare-fun tp!370040 () Bool)

(declare-fun tp!370044 () Bool)

(assert (=> b!1255097 (= e!798763 (and tp!370040 tp!370044))))

(declare-fun b!1255099 () Bool)

(declare-fun tp!370042 () Bool)

(declare-fun tp!370043 () Bool)

(assert (=> b!1255099 (= e!798763 (and tp!370042 tp!370043))))

(assert (=> b!1254839 (= tp!369902 e!798763)))

(assert (= (and b!1254839 ((_ is ElementMatch!3471) (regOne!7455 (reg!3800 r!15719)))) b!1255096))

(assert (= (and b!1254839 ((_ is Concat!5701) (regOne!7455 (reg!3800 r!15719)))) b!1255097))

(assert (= (and b!1254839 ((_ is Star!3471) (regOne!7455 (reg!3800 r!15719)))) b!1255098))

(assert (= (and b!1254839 ((_ is Union!3471) (regOne!7455 (reg!3800 r!15719)))) b!1255099))

(declare-fun b!1255100 () Bool)

(declare-fun e!798764 () Bool)

(assert (=> b!1255100 (= e!798764 tp_is_empty!6463)))

(declare-fun b!1255102 () Bool)

(declare-fun tp!370046 () Bool)

(assert (=> b!1255102 (= e!798764 tp!370046)))

(declare-fun b!1255101 () Bool)

(declare-fun tp!370045 () Bool)

(declare-fun tp!370049 () Bool)

(assert (=> b!1255101 (= e!798764 (and tp!370045 tp!370049))))

(declare-fun b!1255103 () Bool)

(declare-fun tp!370047 () Bool)

(declare-fun tp!370048 () Bool)

(assert (=> b!1255103 (= e!798764 (and tp!370047 tp!370048))))

(assert (=> b!1254839 (= tp!369903 e!798764)))

(assert (= (and b!1254839 ((_ is ElementMatch!3471) (regTwo!7455 (reg!3800 r!15719)))) b!1255100))

(assert (= (and b!1254839 ((_ is Concat!5701) (regTwo!7455 (reg!3800 r!15719)))) b!1255101))

(assert (= (and b!1254839 ((_ is Star!3471) (regTwo!7455 (reg!3800 r!15719)))) b!1255102))

(assert (= (and b!1254839 ((_ is Union!3471) (regTwo!7455 (reg!3800 r!15719)))) b!1255103))

(declare-fun b!1255104 () Bool)

(declare-fun e!798765 () Bool)

(assert (=> b!1255104 (= e!798765 tp_is_empty!6463)))

(declare-fun b!1255106 () Bool)

(declare-fun tp!370051 () Bool)

(assert (=> b!1255106 (= e!798765 tp!370051)))

(declare-fun b!1255105 () Bool)

(declare-fun tp!370050 () Bool)

(declare-fun tp!370054 () Bool)

(assert (=> b!1255105 (= e!798765 (and tp!370050 tp!370054))))

(declare-fun b!1255107 () Bool)

(declare-fun tp!370052 () Bool)

(declare-fun tp!370053 () Bool)

(assert (=> b!1255107 (= e!798765 (and tp!370052 tp!370053))))

(assert (=> b!1254830 (= tp!369891 e!798765)))

(assert (= (and b!1254830 ((_ is ElementMatch!3471) (reg!3800 (regOne!7454 r!15719)))) b!1255104))

(assert (= (and b!1254830 ((_ is Concat!5701) (reg!3800 (regOne!7454 r!15719)))) b!1255105))

(assert (= (and b!1254830 ((_ is Star!3471) (reg!3800 (regOne!7454 r!15719)))) b!1255106))

(assert (= (and b!1254830 ((_ is Union!3471) (reg!3800 (regOne!7454 r!15719)))) b!1255107))

(declare-fun b!1255108 () Bool)

(declare-fun e!798766 () Bool)

(assert (=> b!1255108 (= e!798766 tp_is_empty!6463)))

(declare-fun b!1255110 () Bool)

(declare-fun tp!370056 () Bool)

(assert (=> b!1255110 (= e!798766 tp!370056)))

(declare-fun b!1255109 () Bool)

(declare-fun tp!370055 () Bool)

(declare-fun tp!370059 () Bool)

(assert (=> b!1255109 (= e!798766 (and tp!370055 tp!370059))))

(declare-fun b!1255111 () Bool)

(declare-fun tp!370057 () Bool)

(declare-fun tp!370058 () Bool)

(assert (=> b!1255111 (= e!798766 (and tp!370057 tp!370058))))

(assert (=> b!1254835 (= tp!369897 e!798766)))

(assert (= (and b!1254835 ((_ is ElementMatch!3471) (regOne!7455 (regTwo!7454 r!15719)))) b!1255108))

(assert (= (and b!1254835 ((_ is Concat!5701) (regOne!7455 (regTwo!7454 r!15719)))) b!1255109))

(assert (= (and b!1254835 ((_ is Star!3471) (regOne!7455 (regTwo!7454 r!15719)))) b!1255110))

(assert (= (and b!1254835 ((_ is Union!3471) (regOne!7455 (regTwo!7454 r!15719)))) b!1255111))

(declare-fun b!1255112 () Bool)

(declare-fun e!798767 () Bool)

(assert (=> b!1255112 (= e!798767 tp_is_empty!6463)))

(declare-fun b!1255114 () Bool)

(declare-fun tp!370061 () Bool)

(assert (=> b!1255114 (= e!798767 tp!370061)))

(declare-fun b!1255113 () Bool)

(declare-fun tp!370060 () Bool)

(declare-fun tp!370064 () Bool)

(assert (=> b!1255113 (= e!798767 (and tp!370060 tp!370064))))

(declare-fun b!1255115 () Bool)

(declare-fun tp!370062 () Bool)

(declare-fun tp!370063 () Bool)

(assert (=> b!1255115 (= e!798767 (and tp!370062 tp!370063))))

(assert (=> b!1254835 (= tp!369898 e!798767)))

(assert (= (and b!1254835 ((_ is ElementMatch!3471) (regTwo!7455 (regTwo!7454 r!15719)))) b!1255112))

(assert (= (and b!1254835 ((_ is Concat!5701) (regTwo!7455 (regTwo!7454 r!15719)))) b!1255113))

(assert (= (and b!1254835 ((_ is Star!3471) (regTwo!7455 (regTwo!7454 r!15719)))) b!1255114))

(assert (= (and b!1254835 ((_ is Union!3471) (regTwo!7455 (regTwo!7454 r!15719)))) b!1255115))

(declare-fun b!1255116 () Bool)

(declare-fun e!798768 () Bool)

(assert (=> b!1255116 (= e!798768 tp_is_empty!6463)))

(declare-fun b!1255118 () Bool)

(declare-fun tp!370066 () Bool)

(assert (=> b!1255118 (= e!798768 tp!370066)))

(declare-fun b!1255117 () Bool)

(declare-fun tp!370065 () Bool)

(declare-fun tp!370069 () Bool)

(assert (=> b!1255117 (= e!798768 (and tp!370065 tp!370069))))

(declare-fun b!1255119 () Bool)

(declare-fun tp!370067 () Bool)

(declare-fun tp!370068 () Bool)

(assert (=> b!1255119 (= e!798768 (and tp!370067 tp!370068))))

(assert (=> b!1254831 (= tp!369892 e!798768)))

(assert (= (and b!1254831 ((_ is ElementMatch!3471) (regOne!7455 (regOne!7454 r!15719)))) b!1255116))

(assert (= (and b!1254831 ((_ is Concat!5701) (regOne!7455 (regOne!7454 r!15719)))) b!1255117))

(assert (= (and b!1254831 ((_ is Star!3471) (regOne!7455 (regOne!7454 r!15719)))) b!1255118))

(assert (= (and b!1254831 ((_ is Union!3471) (regOne!7455 (regOne!7454 r!15719)))) b!1255119))

(declare-fun b!1255120 () Bool)

(declare-fun e!798769 () Bool)

(assert (=> b!1255120 (= e!798769 tp_is_empty!6463)))

(declare-fun b!1255122 () Bool)

(declare-fun tp!370071 () Bool)

(assert (=> b!1255122 (= e!798769 tp!370071)))

(declare-fun b!1255121 () Bool)

(declare-fun tp!370070 () Bool)

(declare-fun tp!370074 () Bool)

(assert (=> b!1255121 (= e!798769 (and tp!370070 tp!370074))))

(declare-fun b!1255123 () Bool)

(declare-fun tp!370072 () Bool)

(declare-fun tp!370073 () Bool)

(assert (=> b!1255123 (= e!798769 (and tp!370072 tp!370073))))

(assert (=> b!1254831 (= tp!369893 e!798769)))

(assert (= (and b!1254831 ((_ is ElementMatch!3471) (regTwo!7455 (regOne!7454 r!15719)))) b!1255120))

(assert (= (and b!1254831 ((_ is Concat!5701) (regTwo!7455 (regOne!7454 r!15719)))) b!1255121))

(assert (= (and b!1254831 ((_ is Star!3471) (regTwo!7455 (regOne!7454 r!15719)))) b!1255122))

(assert (= (and b!1254831 ((_ is Union!3471) (regTwo!7455 (regOne!7454 r!15719)))) b!1255123))

(check-sat (not b!1255003) (not b!1255025) (not bm!88013) (not b!1255066) (not bm!87999) (not b!1255067) (not b!1255039) (not b!1255101) (not b!1255071) (not b!1255085) (not b!1255098) (not b!1255118) (not b!1255099) (not b!1255041) (not b!1255077) (not b!1255107) (not bm!88015) (not bm!87997) (not b!1255045) (not b!1255061) (not b!1254993) (not b!1255038) (not b!1255093) (not b!1255034) (not b!1254975) (not b!1255070) (not b!1255083) (not bm!88024) (not b!1255097) (not d!354759) (not b!1255030) (not b!1255078) (not b!1255082) (not b!1255121) (not bm!88004) (not b!1255079) (not b!1255087) (not b!1255037) (not d!354755) (not b!1255115) (not bm!88007) (not b!1255094) (not b!1255043) (not b!1255069) (not bm!88003) (not b!1255062) (not b!1255013) (not b!1255075) (not b!1255089) (not b!1255119) (not b!1255074) (not b!1255102) (not bm!88021) (not b!1255117) (not b!1255027) (not b!1254955) (not b!1255033) (not b!1255029) (not b!1255106) (not bm!88009) (not bm!88010) (not b!1255105) (not bm!88017) (not bm!88012) (not b!1255055) (not d!354757) (not b!1255050) (not b!1255057) (not b!1255035) (not b!1255086) (not b!1255049) (not b!1255111) (not b!1255031) (not b!1255047) (not b!1254984) (not b!1254965) (not b!1255090) (not bm!87995) (not b!1255058) (not bm!88001) (not bm!88018) (not b!1255113) (not b!1255123) (not bm!87996) (not b!1255053) (not b!1255109) (not b!1255059) (not b!1255051) (not b!1255065) (not bm!88026) (not b!1255081) (not d!354741) (not b!1255091) tp_is_empty!6463 (not d!354747) (not b!1255095) (not bm!87998) (not b!1255054) (not b!1255022) (not b!1255114) (not b!1255063) (not b!1255042) (not b!1255073) (not b!1255110) (not b!1255026) (not b!1255046) (not b!1255122) (not bm!88023) (not b!1255103))
(check-sat)
