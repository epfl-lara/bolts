; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!278386 () Bool)

(assert start!278386)

(declare-fun b!2860513 () Bool)

(declare-fun e!1811062 () Bool)

(declare-fun tp_is_empty!14951 () Bool)

(assert (=> b!2860513 (= e!1811062 tp_is_empty!14951)))

(declare-fun b!2860514 () Bool)

(declare-fun res!1187968 () Bool)

(declare-fun e!1811060 () Bool)

(assert (=> b!2860514 (=> (not res!1187968) (not e!1811060))))

(declare-datatypes ((C!17396 0))(
  ( (C!17397 (val!10732 Int)) )
))
(declare-datatypes ((List!34204 0))(
  ( (Nil!34080) (Cons!34080 (h!39500 C!17396) (t!233239 List!34204)) )
))
(declare-fun prefix!1470 () List!34204)

(get-info :version)

(assert (=> b!2860514 (= res!1187968 (not ((_ is Nil!34080) prefix!1470)))))

(declare-fun b!2860516 () Bool)

(declare-fun tp!920799 () Bool)

(declare-fun tp!920804 () Bool)

(assert (=> b!2860516 (= e!1811062 (and tp!920799 tp!920804))))

(declare-fun b!2860517 () Bool)

(declare-fun tp!920801 () Bool)

(assert (=> b!2860517 (= e!1811062 tp!920801)))

(declare-fun b!2860518 () Bool)

(declare-fun res!1187970 () Bool)

(assert (=> b!2860518 (=> (not res!1187970) (not e!1811060))))

(declare-datatypes ((Regex!8607 0))(
  ( (ElementMatch!8607 (c!461028 C!17396)) (Concat!13928 (regOne!17726 Regex!8607) (regTwo!17726 Regex!8607)) (EmptyExpr!8607) (Star!8607 (reg!8936 Regex!8607)) (EmptyLang!8607) (Union!8607 (regOne!17727 Regex!8607) (regTwo!17727 Regex!8607)) )
))
(declare-fun r!23423 () Regex!8607)

(declare-fun prefixMatch!915 (Regex!8607 List!34204) Bool)

(assert (=> b!2860518 (= res!1187970 (prefixMatch!915 r!23423 prefix!1470))))

(declare-fun b!2860519 () Bool)

(declare-fun validRegex!3477 (Regex!8607) Bool)

(declare-fun derivativeStep!2296 (Regex!8607 C!17396) Regex!8607)

(assert (=> b!2860519 (= e!1811060 (not (validRegex!3477 (derivativeStep!2296 r!23423 (h!39500 prefix!1470)))))))

(declare-fun b!2860520 () Bool)

(declare-fun e!1811061 () Bool)

(declare-fun tp!920800 () Bool)

(assert (=> b!2860520 (= e!1811061 (and tp_is_empty!14951 tp!920800))))

(declare-fun b!2860515 () Bool)

(declare-fun tp!920803 () Bool)

(declare-fun tp!920802 () Bool)

(assert (=> b!2860515 (= e!1811062 (and tp!920803 tp!920802))))

(declare-fun res!1187969 () Bool)

(assert (=> start!278386 (=> (not res!1187969) (not e!1811060))))

(assert (=> start!278386 (= res!1187969 (validRegex!3477 r!23423))))

(assert (=> start!278386 e!1811060))

(assert (=> start!278386 e!1811062))

(assert (=> start!278386 e!1811061))

(assert (= (and start!278386 res!1187969) b!2860518))

(assert (= (and b!2860518 res!1187970) b!2860514))

(assert (= (and b!2860514 res!1187968) b!2860519))

(assert (= (and start!278386 ((_ is ElementMatch!8607) r!23423)) b!2860513))

(assert (= (and start!278386 ((_ is Concat!13928) r!23423)) b!2860515))

(assert (= (and start!278386 ((_ is Star!8607) r!23423)) b!2860517))

(assert (= (and start!278386 ((_ is Union!8607) r!23423)) b!2860516))

(assert (= (and start!278386 ((_ is Cons!34080) prefix!1470)) b!2860520))

(declare-fun m!3280797 () Bool)

(assert (=> b!2860518 m!3280797))

(declare-fun m!3280799 () Bool)

(assert (=> b!2860519 m!3280799))

(assert (=> b!2860519 m!3280799))

(declare-fun m!3280801 () Bool)

(assert (=> b!2860519 m!3280801))

(declare-fun m!3280803 () Bool)

(assert (=> start!278386 m!3280803))

(check-sat (not b!2860515) (not b!2860519) (not b!2860516) (not b!2860517) (not b!2860520) (not start!278386) tp_is_empty!14951 (not b!2860518))
(check-sat)
(get-model)

(declare-fun call!184478 () Bool)

(declare-fun c!461042 () Bool)

(declare-fun c!461041 () Bool)

(declare-fun bm!184472 () Bool)

(assert (=> bm!184472 (= call!184478 (validRegex!3477 (ite c!461042 (reg!8936 (derivativeStep!2296 r!23423 (h!39500 prefix!1470))) (ite c!461041 (regTwo!17727 (derivativeStep!2296 r!23423 (h!39500 prefix!1470))) (regTwo!17726 (derivativeStep!2296 r!23423 (h!39500 prefix!1470)))))))))

(declare-fun bm!184473 () Bool)

(declare-fun call!184479 () Bool)

(assert (=> bm!184473 (= call!184479 call!184478)))

(declare-fun b!2860575 () Bool)

(declare-fun e!1811105 () Bool)

(declare-fun e!1811106 () Bool)

(assert (=> b!2860575 (= e!1811105 e!1811106)))

(declare-fun res!1188004 () Bool)

(assert (=> b!2860575 (=> (not res!1188004) (not e!1811106))))

(declare-fun call!184477 () Bool)

(assert (=> b!2860575 (= res!1188004 call!184477)))

(declare-fun b!2860576 () Bool)

(declare-fun res!1188005 () Bool)

(assert (=> b!2860576 (=> res!1188005 e!1811105)))

(assert (=> b!2860576 (= res!1188005 (not ((_ is Concat!13928) (derivativeStep!2296 r!23423 (h!39500 prefix!1470)))))))

(declare-fun e!1811111 () Bool)

(assert (=> b!2860576 (= e!1811111 e!1811105)))

(declare-fun bm!184474 () Bool)

(assert (=> bm!184474 (= call!184477 (validRegex!3477 (ite c!461041 (regOne!17727 (derivativeStep!2296 r!23423 (h!39500 prefix!1470))) (regOne!17726 (derivativeStep!2296 r!23423 (h!39500 prefix!1470))))))))

(declare-fun b!2860577 () Bool)

(declare-fun e!1811107 () Bool)

(declare-fun e!1811109 () Bool)

(assert (=> b!2860577 (= e!1811107 e!1811109)))

(assert (=> b!2860577 (= c!461042 ((_ is Star!8607) (derivativeStep!2296 r!23423 (h!39500 prefix!1470))))))

(declare-fun b!2860578 () Bool)

(declare-fun e!1811108 () Bool)

(assert (=> b!2860578 (= e!1811108 call!184478)))

(declare-fun b!2860579 () Bool)

(assert (=> b!2860579 (= e!1811109 e!1811111)))

(assert (=> b!2860579 (= c!461041 ((_ is Union!8607) (derivativeStep!2296 r!23423 (h!39500 prefix!1470))))))

(declare-fun b!2860580 () Bool)

(assert (=> b!2860580 (= e!1811109 e!1811108)))

(declare-fun res!1188002 () Bool)

(declare-fun nullable!2661 (Regex!8607) Bool)

(assert (=> b!2860580 (= res!1188002 (not (nullable!2661 (reg!8936 (derivativeStep!2296 r!23423 (h!39500 prefix!1470))))))))

(assert (=> b!2860580 (=> (not res!1188002) (not e!1811108))))

(declare-fun d!827093 () Bool)

(declare-fun res!1188003 () Bool)

(assert (=> d!827093 (=> res!1188003 e!1811107)))

(assert (=> d!827093 (= res!1188003 ((_ is ElementMatch!8607) (derivativeStep!2296 r!23423 (h!39500 prefix!1470))))))

(assert (=> d!827093 (= (validRegex!3477 (derivativeStep!2296 r!23423 (h!39500 prefix!1470))) e!1811107)))

(declare-fun b!2860581 () Bool)

(assert (=> b!2860581 (= e!1811106 call!184479)))

(declare-fun b!2860582 () Bool)

(declare-fun res!1188001 () Bool)

(declare-fun e!1811110 () Bool)

(assert (=> b!2860582 (=> (not res!1188001) (not e!1811110))))

(assert (=> b!2860582 (= res!1188001 call!184477)))

(assert (=> b!2860582 (= e!1811111 e!1811110)))

(declare-fun b!2860583 () Bool)

(assert (=> b!2860583 (= e!1811110 call!184479)))

(assert (= (and d!827093 (not res!1188003)) b!2860577))

(assert (= (and b!2860577 c!461042) b!2860580))

(assert (= (and b!2860577 (not c!461042)) b!2860579))

(assert (= (and b!2860580 res!1188002) b!2860578))

(assert (= (and b!2860579 c!461041) b!2860582))

(assert (= (and b!2860579 (not c!461041)) b!2860576))

(assert (= (and b!2860582 res!1188001) b!2860583))

(assert (= (and b!2860576 (not res!1188005)) b!2860575))

(assert (= (and b!2860575 res!1188004) b!2860581))

(assert (= (or b!2860583 b!2860581) bm!184473))

(assert (= (or b!2860582 b!2860575) bm!184474))

(assert (= (or b!2860578 bm!184473) bm!184472))

(declare-fun m!3280817 () Bool)

(assert (=> bm!184472 m!3280817))

(declare-fun m!3280819 () Bool)

(assert (=> bm!184474 m!3280819))

(declare-fun m!3280821 () Bool)

(assert (=> b!2860580 m!3280821))

(assert (=> b!2860519 d!827093))

(declare-fun bm!184495 () Bool)

(declare-fun call!184501 () Regex!8607)

(declare-fun call!184502 () Regex!8607)

(assert (=> bm!184495 (= call!184501 call!184502)))

(declare-fun b!2860635 () Bool)

(declare-fun e!1811140 () Regex!8607)

(assert (=> b!2860635 (= e!1811140 EmptyLang!8607)))

(declare-fun call!184500 () Regex!8607)

(declare-fun c!461069 () Bool)

(declare-fun bm!184496 () Bool)

(assert (=> bm!184496 (= call!184500 (derivativeStep!2296 (ite c!461069 (regTwo!17727 r!23423) (regOne!17726 r!23423)) (h!39500 prefix!1470)))))

(declare-fun bm!184497 () Bool)

(declare-fun call!184503 () Regex!8607)

(declare-fun c!461071 () Bool)

(declare-fun c!461072 () Bool)

(assert (=> bm!184497 (= call!184503 (derivativeStep!2296 (ite c!461069 (regOne!17727 r!23423) (ite c!461072 (reg!8936 r!23423) (ite c!461071 (regTwo!17726 r!23423) (regOne!17726 r!23423)))) (h!39500 prefix!1470)))))

(declare-fun b!2860636 () Bool)

(declare-fun e!1811138 () Regex!8607)

(assert (=> b!2860636 (= e!1811138 (ite (= (h!39500 prefix!1470) (c!461028 r!23423)) EmptyExpr!8607 EmptyLang!8607))))

(declare-fun e!1811141 () Regex!8607)

(declare-fun b!2860637 () Bool)

(assert (=> b!2860637 (= e!1811141 (Union!8607 (Concat!13928 call!184500 (regTwo!17726 r!23423)) call!184501))))

(declare-fun b!2860638 () Bool)

(assert (=> b!2860638 (= c!461069 ((_ is Union!8607) r!23423))))

(declare-fun e!1811137 () Regex!8607)

(assert (=> b!2860638 (= e!1811138 e!1811137)))

(declare-fun b!2860639 () Bool)

(declare-fun e!1811139 () Regex!8607)

(assert (=> b!2860639 (= e!1811137 e!1811139)))

(assert (=> b!2860639 (= c!461072 ((_ is Star!8607) r!23423))))

(declare-fun b!2860640 () Bool)

(assert (=> b!2860640 (= e!1811139 (Concat!13928 call!184502 r!23423))))

(declare-fun b!2860641 () Bool)

(assert (=> b!2860641 (= c!461071 (nullable!2661 (regOne!17726 r!23423)))))

(assert (=> b!2860641 (= e!1811139 e!1811141)))

(declare-fun b!2860642 () Bool)

(assert (=> b!2860642 (= e!1811137 (Union!8607 call!184503 call!184500))))

(declare-fun bm!184498 () Bool)

(assert (=> bm!184498 (= call!184502 call!184503)))

(declare-fun b!2860643 () Bool)

(assert (=> b!2860643 (= e!1811141 (Union!8607 (Concat!13928 call!184501 (regTwo!17726 r!23423)) EmptyLang!8607))))

(declare-fun b!2860634 () Bool)

(assert (=> b!2860634 (= e!1811140 e!1811138)))

(declare-fun c!461070 () Bool)

(assert (=> b!2860634 (= c!461070 ((_ is ElementMatch!8607) r!23423))))

(declare-fun d!827099 () Bool)

(declare-fun lt!1014493 () Regex!8607)

(assert (=> d!827099 (validRegex!3477 lt!1014493)))

(assert (=> d!827099 (= lt!1014493 e!1811140)))

(declare-fun c!461068 () Bool)

(assert (=> d!827099 (= c!461068 (or ((_ is EmptyExpr!8607) r!23423) ((_ is EmptyLang!8607) r!23423)))))

(assert (=> d!827099 (validRegex!3477 r!23423)))

(assert (=> d!827099 (= (derivativeStep!2296 r!23423 (h!39500 prefix!1470)) lt!1014493)))

(assert (= (and d!827099 c!461068) b!2860635))

(assert (= (and d!827099 (not c!461068)) b!2860634))

(assert (= (and b!2860634 c!461070) b!2860636))

(assert (= (and b!2860634 (not c!461070)) b!2860638))

(assert (= (and b!2860638 c!461069) b!2860642))

(assert (= (and b!2860638 (not c!461069)) b!2860639))

(assert (= (and b!2860639 c!461072) b!2860640))

(assert (= (and b!2860639 (not c!461072)) b!2860641))

(assert (= (and b!2860641 c!461071) b!2860637))

(assert (= (and b!2860641 (not c!461071)) b!2860643))

(assert (= (or b!2860637 b!2860643) bm!184495))

(assert (= (or b!2860640 bm!184495) bm!184498))

(assert (= (or b!2860642 b!2860637) bm!184496))

(assert (= (or b!2860642 bm!184498) bm!184497))

(declare-fun m!3280831 () Bool)

(assert (=> bm!184496 m!3280831))

(declare-fun m!3280833 () Bool)

(assert (=> bm!184497 m!3280833))

(declare-fun m!3280835 () Bool)

(assert (=> b!2860641 m!3280835))

(declare-fun m!3280837 () Bool)

(assert (=> d!827099 m!3280837))

(assert (=> d!827099 m!3280803))

(assert (=> b!2860519 d!827099))

(declare-fun c!461074 () Bool)

(declare-fun call!184505 () Bool)

(declare-fun c!461073 () Bool)

(declare-fun bm!184499 () Bool)

(assert (=> bm!184499 (= call!184505 (validRegex!3477 (ite c!461074 (reg!8936 r!23423) (ite c!461073 (regTwo!17727 r!23423) (regTwo!17726 r!23423)))))))

(declare-fun bm!184500 () Bool)

(declare-fun call!184506 () Bool)

(assert (=> bm!184500 (= call!184506 call!184505)))

(declare-fun b!2860644 () Bool)

(declare-fun e!1811142 () Bool)

(declare-fun e!1811143 () Bool)

(assert (=> b!2860644 (= e!1811142 e!1811143)))

(declare-fun res!1188009 () Bool)

(assert (=> b!2860644 (=> (not res!1188009) (not e!1811143))))

(declare-fun call!184504 () Bool)

(assert (=> b!2860644 (= res!1188009 call!184504)))

(declare-fun b!2860645 () Bool)

(declare-fun res!1188010 () Bool)

(assert (=> b!2860645 (=> res!1188010 e!1811142)))

(assert (=> b!2860645 (= res!1188010 (not ((_ is Concat!13928) r!23423)))))

(declare-fun e!1811148 () Bool)

(assert (=> b!2860645 (= e!1811148 e!1811142)))

(declare-fun bm!184501 () Bool)

(assert (=> bm!184501 (= call!184504 (validRegex!3477 (ite c!461073 (regOne!17727 r!23423) (regOne!17726 r!23423))))))

(declare-fun b!2860646 () Bool)

(declare-fun e!1811144 () Bool)

(declare-fun e!1811146 () Bool)

(assert (=> b!2860646 (= e!1811144 e!1811146)))

(assert (=> b!2860646 (= c!461074 ((_ is Star!8607) r!23423))))

(declare-fun b!2860647 () Bool)

(declare-fun e!1811145 () Bool)

(assert (=> b!2860647 (= e!1811145 call!184505)))

(declare-fun b!2860648 () Bool)

(assert (=> b!2860648 (= e!1811146 e!1811148)))

(assert (=> b!2860648 (= c!461073 ((_ is Union!8607) r!23423))))

(declare-fun b!2860649 () Bool)

(assert (=> b!2860649 (= e!1811146 e!1811145)))

(declare-fun res!1188007 () Bool)

(assert (=> b!2860649 (= res!1188007 (not (nullable!2661 (reg!8936 r!23423))))))

(assert (=> b!2860649 (=> (not res!1188007) (not e!1811145))))

(declare-fun d!827103 () Bool)

(declare-fun res!1188008 () Bool)

(assert (=> d!827103 (=> res!1188008 e!1811144)))

(assert (=> d!827103 (= res!1188008 ((_ is ElementMatch!8607) r!23423))))

(assert (=> d!827103 (= (validRegex!3477 r!23423) e!1811144)))

(declare-fun b!2860650 () Bool)

(assert (=> b!2860650 (= e!1811143 call!184506)))

(declare-fun b!2860651 () Bool)

(declare-fun res!1188006 () Bool)

(declare-fun e!1811147 () Bool)

(assert (=> b!2860651 (=> (not res!1188006) (not e!1811147))))

(assert (=> b!2860651 (= res!1188006 call!184504)))

(assert (=> b!2860651 (= e!1811148 e!1811147)))

(declare-fun b!2860652 () Bool)

(assert (=> b!2860652 (= e!1811147 call!184506)))

(assert (= (and d!827103 (not res!1188008)) b!2860646))

(assert (= (and b!2860646 c!461074) b!2860649))

(assert (= (and b!2860646 (not c!461074)) b!2860648))

(assert (= (and b!2860649 res!1188007) b!2860647))

(assert (= (and b!2860648 c!461073) b!2860651))

(assert (= (and b!2860648 (not c!461073)) b!2860645))

(assert (= (and b!2860651 res!1188006) b!2860652))

(assert (= (and b!2860645 (not res!1188010)) b!2860644))

(assert (= (and b!2860644 res!1188009) b!2860650))

(assert (= (or b!2860652 b!2860650) bm!184500))

(assert (= (or b!2860651 b!2860644) bm!184501))

(assert (= (or b!2860647 bm!184500) bm!184499))

(declare-fun m!3280839 () Bool)

(assert (=> bm!184499 m!3280839))

(declare-fun m!3280841 () Bool)

(assert (=> bm!184501 m!3280841))

(declare-fun m!3280843 () Bool)

(assert (=> b!2860649 m!3280843))

(assert (=> start!278386 d!827103))

(declare-fun d!827105 () Bool)

(declare-fun c!461080 () Bool)

(declare-fun isEmpty!18614 (List!34204) Bool)

(assert (=> d!827105 (= c!461080 (isEmpty!18614 prefix!1470))))

(declare-fun e!1811156 () Bool)

(assert (=> d!827105 (= (prefixMatch!915 r!23423 prefix!1470) e!1811156)))

(declare-fun b!2860673 () Bool)

(declare-fun lostCause!759 (Regex!8607) Bool)

(assert (=> b!2860673 (= e!1811156 (not (lostCause!759 r!23423)))))

(declare-fun b!2860674 () Bool)

(declare-fun head!6289 (List!34204) C!17396)

(declare-fun tail!4514 (List!34204) List!34204)

(assert (=> b!2860674 (= e!1811156 (prefixMatch!915 (derivativeStep!2296 r!23423 (head!6289 prefix!1470)) (tail!4514 prefix!1470)))))

(assert (= (and d!827105 c!461080) b!2860673))

(assert (= (and d!827105 (not c!461080)) b!2860674))

(declare-fun m!3280857 () Bool)

(assert (=> d!827105 m!3280857))

(declare-fun m!3280859 () Bool)

(assert (=> b!2860673 m!3280859))

(declare-fun m!3280861 () Bool)

(assert (=> b!2860674 m!3280861))

(assert (=> b!2860674 m!3280861))

(declare-fun m!3280863 () Bool)

(assert (=> b!2860674 m!3280863))

(declare-fun m!3280865 () Bool)

(assert (=> b!2860674 m!3280865))

(assert (=> b!2860674 m!3280863))

(assert (=> b!2860674 m!3280865))

(declare-fun m!3280867 () Bool)

(assert (=> b!2860674 m!3280867))

(assert (=> b!2860518 d!827105))

(declare-fun b!2860687 () Bool)

(declare-fun e!1811162 () Bool)

(declare-fun tp!920824 () Bool)

(assert (=> b!2860687 (= e!1811162 (and tp_is_empty!14951 tp!920824))))

(assert (=> b!2860520 (= tp!920800 e!1811162)))

(assert (= (and b!2860520 ((_ is Cons!34080) (t!233239 prefix!1470))) b!2860687))

(declare-fun b!2860717 () Bool)

(declare-fun e!1811170 () Bool)

(declare-fun tp!920859 () Bool)

(assert (=> b!2860717 (= e!1811170 tp!920859)))

(declare-fun b!2860718 () Bool)

(declare-fun tp!920857 () Bool)

(declare-fun tp!920858 () Bool)

(assert (=> b!2860718 (= e!1811170 (and tp!920857 tp!920858))))

(declare-fun b!2860715 () Bool)

(assert (=> b!2860715 (= e!1811170 tp_is_empty!14951)))

(assert (=> b!2860515 (= tp!920803 e!1811170)))

(declare-fun b!2860716 () Bool)

(declare-fun tp!920856 () Bool)

(declare-fun tp!920860 () Bool)

(assert (=> b!2860716 (= e!1811170 (and tp!920856 tp!920860))))

(assert (= (and b!2860515 ((_ is ElementMatch!8607) (regOne!17726 r!23423))) b!2860715))

(assert (= (and b!2860515 ((_ is Concat!13928) (regOne!17726 r!23423))) b!2860716))

(assert (= (and b!2860515 ((_ is Star!8607) (regOne!17726 r!23423))) b!2860717))

(assert (= (and b!2860515 ((_ is Union!8607) (regOne!17726 r!23423))) b!2860718))

(declare-fun b!2860721 () Bool)

(declare-fun e!1811171 () Bool)

(declare-fun tp!920864 () Bool)

(assert (=> b!2860721 (= e!1811171 tp!920864)))

(declare-fun b!2860722 () Bool)

(declare-fun tp!920862 () Bool)

(declare-fun tp!920863 () Bool)

(assert (=> b!2860722 (= e!1811171 (and tp!920862 tp!920863))))

(declare-fun b!2860719 () Bool)

(assert (=> b!2860719 (= e!1811171 tp_is_empty!14951)))

(assert (=> b!2860515 (= tp!920802 e!1811171)))

(declare-fun b!2860720 () Bool)

(declare-fun tp!920861 () Bool)

(declare-fun tp!920865 () Bool)

(assert (=> b!2860720 (= e!1811171 (and tp!920861 tp!920865))))

(assert (= (and b!2860515 ((_ is ElementMatch!8607) (regTwo!17726 r!23423))) b!2860719))

(assert (= (and b!2860515 ((_ is Concat!13928) (regTwo!17726 r!23423))) b!2860720))

(assert (= (and b!2860515 ((_ is Star!8607) (regTwo!17726 r!23423))) b!2860721))

(assert (= (and b!2860515 ((_ is Union!8607) (regTwo!17726 r!23423))) b!2860722))

(declare-fun b!2860725 () Bool)

(declare-fun e!1811172 () Bool)

(declare-fun tp!920869 () Bool)

(assert (=> b!2860725 (= e!1811172 tp!920869)))

(declare-fun b!2860726 () Bool)

(declare-fun tp!920867 () Bool)

(declare-fun tp!920868 () Bool)

(assert (=> b!2860726 (= e!1811172 (and tp!920867 tp!920868))))

(declare-fun b!2860723 () Bool)

(assert (=> b!2860723 (= e!1811172 tp_is_empty!14951)))

(assert (=> b!2860517 (= tp!920801 e!1811172)))

(declare-fun b!2860724 () Bool)

(declare-fun tp!920866 () Bool)

(declare-fun tp!920870 () Bool)

(assert (=> b!2860724 (= e!1811172 (and tp!920866 tp!920870))))

(assert (= (and b!2860517 ((_ is ElementMatch!8607) (reg!8936 r!23423))) b!2860723))

(assert (= (and b!2860517 ((_ is Concat!13928) (reg!8936 r!23423))) b!2860724))

(assert (= (and b!2860517 ((_ is Star!8607) (reg!8936 r!23423))) b!2860725))

(assert (= (and b!2860517 ((_ is Union!8607) (reg!8936 r!23423))) b!2860726))

(declare-fun b!2860729 () Bool)

(declare-fun e!1811173 () Bool)

(declare-fun tp!920874 () Bool)

(assert (=> b!2860729 (= e!1811173 tp!920874)))

(declare-fun b!2860730 () Bool)

(declare-fun tp!920872 () Bool)

(declare-fun tp!920873 () Bool)

(assert (=> b!2860730 (= e!1811173 (and tp!920872 tp!920873))))

(declare-fun b!2860727 () Bool)

(assert (=> b!2860727 (= e!1811173 tp_is_empty!14951)))

(assert (=> b!2860516 (= tp!920799 e!1811173)))

(declare-fun b!2860728 () Bool)

(declare-fun tp!920871 () Bool)

(declare-fun tp!920875 () Bool)

(assert (=> b!2860728 (= e!1811173 (and tp!920871 tp!920875))))

(assert (= (and b!2860516 ((_ is ElementMatch!8607) (regOne!17727 r!23423))) b!2860727))

(assert (= (and b!2860516 ((_ is Concat!13928) (regOne!17727 r!23423))) b!2860728))

(assert (= (and b!2860516 ((_ is Star!8607) (regOne!17727 r!23423))) b!2860729))

(assert (= (and b!2860516 ((_ is Union!8607) (regOne!17727 r!23423))) b!2860730))

(declare-fun b!2860733 () Bool)

(declare-fun e!1811174 () Bool)

(declare-fun tp!920879 () Bool)

(assert (=> b!2860733 (= e!1811174 tp!920879)))

(declare-fun b!2860734 () Bool)

(declare-fun tp!920877 () Bool)

(declare-fun tp!920878 () Bool)

(assert (=> b!2860734 (= e!1811174 (and tp!920877 tp!920878))))

(declare-fun b!2860731 () Bool)

(assert (=> b!2860731 (= e!1811174 tp_is_empty!14951)))

(assert (=> b!2860516 (= tp!920804 e!1811174)))

(declare-fun b!2860732 () Bool)

(declare-fun tp!920876 () Bool)

(declare-fun tp!920880 () Bool)

(assert (=> b!2860732 (= e!1811174 (and tp!920876 tp!920880))))

(assert (= (and b!2860516 ((_ is ElementMatch!8607) (regTwo!17727 r!23423))) b!2860731))

(assert (= (and b!2860516 ((_ is Concat!13928) (regTwo!17727 r!23423))) b!2860732))

(assert (= (and b!2860516 ((_ is Star!8607) (regTwo!17727 r!23423))) b!2860733))

(assert (= (and b!2860516 ((_ is Union!8607) (regTwo!17727 r!23423))) b!2860734))

(check-sat (not b!2860649) (not b!2860718) (not b!2860724) (not b!2860717) (not d!827099) (not b!2860721) (not b!2860716) (not bm!184472) (not b!2860733) (not bm!184497) (not b!2860730) (not b!2860728) (not d!827105) (not b!2860673) (not b!2860641) (not bm!184496) (not b!2860732) (not b!2860726) (not bm!184501) (not bm!184499) (not b!2860674) (not b!2860722) (not b!2860729) (not b!2860734) (not b!2860720) (not b!2860580) tp_is_empty!14951 (not b!2860725) (not bm!184474) (not b!2860687))
(check-sat)
