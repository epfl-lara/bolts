; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!73698 () Bool)

(assert start!73698)

(declare-fun b!823730 () Bool)

(declare-fun e!543928 () Bool)

(declare-datatypes ((C!4672 0))(
  ( (C!4673 (val!2584 Int)) )
))
(declare-datatypes ((Regex!2051 0))(
  ( (ElementMatch!2051 (c!133598 C!4672)) (Concat!3782 (regOne!4614 Regex!2051) (regTwo!4614 Regex!2051)) (EmptyExpr!2051) (Star!2051 (reg!2380 Regex!2051)) (EmptyLang!2051) (Union!2051 (regOne!4615 Regex!2051) (regTwo!4615 Regex!2051)) )
))
(declare-fun r!27177 () Regex!2051)

(declare-fun validRegex!604 (Regex!2051) Bool)

(assert (=> b!823730 (= e!543928 (not (validRegex!604 (reg!2380 r!27177))))))

(declare-fun b!823731 () Bool)

(declare-fun res!379826 () Bool)

(assert (=> b!823731 (=> (not res!379826) (not e!543928))))

(get-info :version)

(assert (=> b!823731 (= res!379826 (and (not ((_ is EmptyExpr!2051) r!27177)) (not ((_ is EmptyLang!2051) r!27177)) (not ((_ is ElementMatch!2051) r!27177)) ((_ is Star!2051) r!27177)))))

(declare-fun b!823732 () Bool)

(declare-fun res!379825 () Bool)

(assert (=> b!823732 (=> (not res!379825) (not e!543928))))

(declare-fun c!13916 () C!4672)

(declare-datatypes ((List!8877 0))(
  ( (Nil!8861) (Cons!8861 (h!14262 C!4672) (t!93169 List!8877)) )
))
(declare-fun contains!1642 (List!8877 C!4672) Bool)

(declare-fun firstChars!22 (Regex!2051) List!8877)

(assert (=> b!823732 (= res!379825 (contains!1642 (firstChars!22 r!27177) c!13916))))

(declare-fun b!823733 () Bool)

(declare-fun e!543929 () Bool)

(declare-fun tp!257463 () Bool)

(declare-fun tp!257464 () Bool)

(assert (=> b!823733 (= e!543929 (and tp!257463 tp!257464))))

(declare-fun b!823729 () Bool)

(declare-fun tp!257461 () Bool)

(assert (=> b!823729 (= e!543929 tp!257461)))

(declare-fun res!379827 () Bool)

(assert (=> start!73698 (=> (not res!379827) (not e!543928))))

(assert (=> start!73698 (= res!379827 (validRegex!604 r!27177))))

(assert (=> start!73698 e!543928))

(assert (=> start!73698 e!543929))

(declare-fun tp_is_empty!3825 () Bool)

(assert (=> start!73698 tp_is_empty!3825))

(declare-fun b!823734 () Bool)

(assert (=> b!823734 (= e!543929 tp_is_empty!3825)))

(declare-fun b!823735 () Bool)

(declare-fun tp!257460 () Bool)

(declare-fun tp!257462 () Bool)

(assert (=> b!823735 (= e!543929 (and tp!257460 tp!257462))))

(assert (= (and start!73698 res!379827) b!823732))

(assert (= (and b!823732 res!379825) b!823731))

(assert (= (and b!823731 res!379826) b!823730))

(assert (= (and start!73698 ((_ is ElementMatch!2051) r!27177)) b!823734))

(assert (= (and start!73698 ((_ is Concat!3782) r!27177)) b!823735))

(assert (= (and start!73698 ((_ is Star!2051) r!27177)) b!823729))

(assert (= (and start!73698 ((_ is Union!2051) r!27177)) b!823733))

(declare-fun m!1064017 () Bool)

(assert (=> b!823730 m!1064017))

(declare-fun m!1064019 () Bool)

(assert (=> b!823732 m!1064019))

(assert (=> b!823732 m!1064019))

(declare-fun m!1064021 () Bool)

(assert (=> b!823732 m!1064021))

(declare-fun m!1064023 () Bool)

(assert (=> start!73698 m!1064023))

(check-sat (not b!823732) (not b!823733) tp_is_empty!3825 (not b!823735) (not b!823729) (not start!73698) (not b!823730))
(check-sat)
(get-model)

(declare-fun d!259091 () Bool)

(declare-fun lt!317414 () Bool)

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!1289 (List!8877) (InoxSet C!4672))

(assert (=> d!259091 (= lt!317414 (select (content!1289 (firstChars!22 r!27177)) c!13916))))

(declare-fun e!543948 () Bool)

(assert (=> d!259091 (= lt!317414 e!543948)))

(declare-fun res!379843 () Bool)

(assert (=> d!259091 (=> (not res!379843) (not e!543948))))

(assert (=> d!259091 (= res!379843 ((_ is Cons!8861) (firstChars!22 r!27177)))))

(assert (=> d!259091 (= (contains!1642 (firstChars!22 r!27177) c!13916) lt!317414)))

(declare-fun b!823758 () Bool)

(declare-fun e!543949 () Bool)

(assert (=> b!823758 (= e!543948 e!543949)))

(declare-fun res!379842 () Bool)

(assert (=> b!823758 (=> res!379842 e!543949)))

(assert (=> b!823758 (= res!379842 (= (h!14262 (firstChars!22 r!27177)) c!13916))))

(declare-fun b!823759 () Bool)

(assert (=> b!823759 (= e!543949 (contains!1642 (t!93169 (firstChars!22 r!27177)) c!13916))))

(assert (= (and d!259091 res!379843) b!823758))

(assert (= (and b!823758 (not res!379842)) b!823759))

(assert (=> d!259091 m!1064019))

(declare-fun m!1064025 () Bool)

(assert (=> d!259091 m!1064025))

(declare-fun m!1064027 () Bool)

(assert (=> d!259091 m!1064027))

(declare-fun m!1064029 () Bool)

(assert (=> b!823759 m!1064029))

(assert (=> b!823732 d!259091))

(declare-fun b!823795 () Bool)

(declare-fun c!133616 () Bool)

(assert (=> b!823795 (= c!133616 ((_ is Star!2051) r!27177))))

(declare-fun e!543973 () List!8877)

(declare-fun e!543974 () List!8877)

(assert (=> b!823795 (= e!543973 e!543974)))

(declare-fun b!823796 () Bool)

(declare-fun c!133618 () Bool)

(declare-fun nullable!502 (Regex!2051) Bool)

(assert (=> b!823796 (= c!133618 (nullable!502 (regOne!4614 r!27177)))))

(declare-fun e!543977 () List!8877)

(declare-fun e!543975 () List!8877)

(assert (=> b!823796 (= e!543977 e!543975)))

(declare-fun d!259093 () Bool)

(declare-fun c!133619 () Bool)

(assert (=> d!259093 (= c!133619 (or ((_ is EmptyExpr!2051) r!27177) ((_ is EmptyLang!2051) r!27177)))))

(declare-fun e!543976 () List!8877)

(assert (=> d!259093 (= (firstChars!22 r!27177) e!543976)))

(declare-fun b!823797 () Bool)

(assert (=> b!823797 (= e!543973 (Cons!8861 (c!133598 r!27177) Nil!8861))))

(declare-fun b!823798 () Bool)

(declare-fun call!47394 () List!8877)

(assert (=> b!823798 (= e!543977 call!47394)))

(declare-fun c!133615 () Bool)

(declare-fun call!47395 () List!8877)

(declare-fun bm!47388 () Bool)

(assert (=> bm!47388 (= call!47395 (firstChars!22 (ite c!133616 (reg!2380 r!27177) (ite c!133615 (regTwo!4615 r!27177) (regOne!4614 r!27177)))))))

(declare-fun b!823799 () Bool)

(assert (=> b!823799 (= e!543974 e!543977)))

(assert (=> b!823799 (= c!133615 ((_ is Union!2051) r!27177))))

(declare-fun bm!47389 () Bool)

(declare-fun call!47393 () List!8877)

(declare-fun call!47396 () List!8877)

(assert (=> bm!47389 (= call!47393 call!47396)))

(declare-fun bm!47390 () Bool)

(declare-fun call!47397 () List!8877)

(assert (=> bm!47390 (= call!47397 (firstChars!22 (ite c!133615 (regOne!4615 r!27177) (regTwo!4614 r!27177))))))

(declare-fun b!823800 () Bool)

(assert (=> b!823800 (= e!543976 e!543973)))

(declare-fun c!133617 () Bool)

(assert (=> b!823800 (= c!133617 ((_ is ElementMatch!2051) r!27177))))

(declare-fun bm!47391 () Bool)

(assert (=> bm!47391 (= call!47396 call!47395)))

(declare-fun bm!47392 () Bool)

(declare-fun ++!2277 (List!8877 List!8877) List!8877)

(assert (=> bm!47392 (= call!47394 (++!2277 (ite c!133615 call!47397 call!47393) (ite c!133615 call!47396 call!47397)))))

(declare-fun b!823801 () Bool)

(assert (=> b!823801 (= e!543976 Nil!8861)))

(declare-fun b!823802 () Bool)

(assert (=> b!823802 (= e!543975 call!47393)))

(declare-fun b!823803 () Bool)

(assert (=> b!823803 (= e!543975 call!47394)))

(declare-fun b!823804 () Bool)

(assert (=> b!823804 (= e!543974 call!47395)))

(assert (= (and d!259093 c!133619) b!823801))

(assert (= (and d!259093 (not c!133619)) b!823800))

(assert (= (and b!823800 c!133617) b!823797))

(assert (= (and b!823800 (not c!133617)) b!823795))

(assert (= (and b!823795 c!133616) b!823804))

(assert (= (and b!823795 (not c!133616)) b!823799))

(assert (= (and b!823799 c!133615) b!823798))

(assert (= (and b!823799 (not c!133615)) b!823796))

(assert (= (and b!823796 c!133618) b!823803))

(assert (= (and b!823796 (not c!133618)) b!823802))

(assert (= (or b!823803 b!823802) bm!47389))

(assert (= (or b!823798 bm!47389) bm!47391))

(assert (= (or b!823798 b!823803) bm!47390))

(assert (= (or b!823798 b!823803) bm!47392))

(assert (= (or b!823804 bm!47391) bm!47388))

(declare-fun m!1064043 () Bool)

(assert (=> b!823796 m!1064043))

(declare-fun m!1064045 () Bool)

(assert (=> bm!47388 m!1064045))

(declare-fun m!1064047 () Bool)

(assert (=> bm!47390 m!1064047))

(declare-fun m!1064049 () Bool)

(assert (=> bm!47392 m!1064049))

(assert (=> b!823732 d!259093))

(declare-fun bm!47414 () Bool)

(declare-fun call!47420 () Bool)

(declare-fun call!47419 () Bool)

(assert (=> bm!47414 (= call!47420 call!47419)))

(declare-fun b!823853 () Bool)

(declare-fun e!544013 () Bool)

(declare-fun e!544011 () Bool)

(assert (=> b!823853 (= e!544013 e!544011)))

(declare-fun res!379867 () Bool)

(assert (=> b!823853 (= res!379867 (not (nullable!502 (reg!2380 (reg!2380 r!27177)))))))

(assert (=> b!823853 (=> (not res!379867) (not e!544011))))

(declare-fun b!823854 () Bool)

(declare-fun e!544007 () Bool)

(assert (=> b!823854 (= e!544007 call!47420)))

(declare-fun b!823855 () Bool)

(declare-fun e!544010 () Bool)

(declare-fun e!544009 () Bool)

(assert (=> b!823855 (= e!544010 e!544009)))

(declare-fun res!379868 () Bool)

(assert (=> b!823855 (=> (not res!379868) (not e!544009))))

(assert (=> b!823855 (= res!379868 call!47420)))

(declare-fun b!823856 () Bool)

(declare-fun e!544012 () Bool)

(assert (=> b!823856 (= e!544013 e!544012)))

(declare-fun c!133639 () Bool)

(assert (=> b!823856 (= c!133639 ((_ is Union!2051) (reg!2380 r!27177)))))

(declare-fun d!259099 () Bool)

(declare-fun res!379866 () Bool)

(declare-fun e!544008 () Bool)

(assert (=> d!259099 (=> res!379866 e!544008)))

(assert (=> d!259099 (= res!379866 ((_ is ElementMatch!2051) (reg!2380 r!27177)))))

(assert (=> d!259099 (= (validRegex!604 (reg!2380 r!27177)) e!544008)))

(declare-fun bm!47415 () Bool)

(declare-fun call!47421 () Bool)

(assert (=> bm!47415 (= call!47421 (validRegex!604 (ite c!133639 (regOne!4615 (reg!2380 r!27177)) (regTwo!4614 (reg!2380 r!27177)))))))

(declare-fun b!823857 () Bool)

(declare-fun res!379865 () Bool)

(assert (=> b!823857 (=> (not res!379865) (not e!544007))))

(assert (=> b!823857 (= res!379865 call!47421)))

(assert (=> b!823857 (= e!544012 e!544007)))

(declare-fun b!823858 () Bool)

(declare-fun res!379869 () Bool)

(assert (=> b!823858 (=> res!379869 e!544010)))

(assert (=> b!823858 (= res!379869 (not ((_ is Concat!3782) (reg!2380 r!27177))))))

(assert (=> b!823858 (= e!544012 e!544010)))

(declare-fun b!823859 () Bool)

(assert (=> b!823859 (= e!544011 call!47419)))

(declare-fun b!823860 () Bool)

(assert (=> b!823860 (= e!544009 call!47421)))

(declare-fun b!823861 () Bool)

(assert (=> b!823861 (= e!544008 e!544013)))

(declare-fun c!133640 () Bool)

(assert (=> b!823861 (= c!133640 ((_ is Star!2051) (reg!2380 r!27177)))))

(declare-fun bm!47416 () Bool)

(assert (=> bm!47416 (= call!47419 (validRegex!604 (ite c!133640 (reg!2380 (reg!2380 r!27177)) (ite c!133639 (regTwo!4615 (reg!2380 r!27177)) (regOne!4614 (reg!2380 r!27177))))))))

(assert (= (and d!259099 (not res!379866)) b!823861))

(assert (= (and b!823861 c!133640) b!823853))

(assert (= (and b!823861 (not c!133640)) b!823856))

(assert (= (and b!823853 res!379867) b!823859))

(assert (= (and b!823856 c!133639) b!823857))

(assert (= (and b!823856 (not c!133639)) b!823858))

(assert (= (and b!823857 res!379865) b!823854))

(assert (= (and b!823858 (not res!379869)) b!823855))

(assert (= (and b!823855 res!379868) b!823860))

(assert (= (or b!823857 b!823860) bm!47415))

(assert (= (or b!823854 b!823855) bm!47414))

(assert (= (or b!823859 bm!47414) bm!47416))

(declare-fun m!1064059 () Bool)

(assert (=> b!823853 m!1064059))

(declare-fun m!1064065 () Bool)

(assert (=> bm!47415 m!1064065))

(declare-fun m!1064069 () Bool)

(assert (=> bm!47416 m!1064069))

(assert (=> b!823730 d!259099))

(declare-fun bm!47420 () Bool)

(declare-fun call!47426 () Bool)

(declare-fun call!47425 () Bool)

(assert (=> bm!47420 (= call!47426 call!47425)))

(declare-fun b!823873 () Bool)

(declare-fun e!544027 () Bool)

(declare-fun e!544025 () Bool)

(assert (=> b!823873 (= e!544027 e!544025)))

(declare-fun res!379877 () Bool)

(assert (=> b!823873 (= res!379877 (not (nullable!502 (reg!2380 r!27177))))))

(assert (=> b!823873 (=> (not res!379877) (not e!544025))))

(declare-fun b!823874 () Bool)

(declare-fun e!544021 () Bool)

(assert (=> b!823874 (= e!544021 call!47426)))

(declare-fun b!823875 () Bool)

(declare-fun e!544024 () Bool)

(declare-fun e!544023 () Bool)

(assert (=> b!823875 (= e!544024 e!544023)))

(declare-fun res!379878 () Bool)

(assert (=> b!823875 (=> (not res!379878) (not e!544023))))

(assert (=> b!823875 (= res!379878 call!47426)))

(declare-fun b!823876 () Bool)

(declare-fun e!544026 () Bool)

(assert (=> b!823876 (= e!544027 e!544026)))

(declare-fun c!133643 () Bool)

(assert (=> b!823876 (= c!133643 ((_ is Union!2051) r!27177))))

(declare-fun d!259103 () Bool)

(declare-fun res!379876 () Bool)

(declare-fun e!544022 () Bool)

(assert (=> d!259103 (=> res!379876 e!544022)))

(assert (=> d!259103 (= res!379876 ((_ is ElementMatch!2051) r!27177))))

(assert (=> d!259103 (= (validRegex!604 r!27177) e!544022)))

(declare-fun bm!47421 () Bool)

(declare-fun call!47427 () Bool)

(assert (=> bm!47421 (= call!47427 (validRegex!604 (ite c!133643 (regOne!4615 r!27177) (regTwo!4614 r!27177))))))

(declare-fun b!823877 () Bool)

(declare-fun res!379875 () Bool)

(assert (=> b!823877 (=> (not res!379875) (not e!544021))))

(assert (=> b!823877 (= res!379875 call!47427)))

(assert (=> b!823877 (= e!544026 e!544021)))

(declare-fun b!823878 () Bool)

(declare-fun res!379879 () Bool)

(assert (=> b!823878 (=> res!379879 e!544024)))

(assert (=> b!823878 (= res!379879 (not ((_ is Concat!3782) r!27177)))))

(assert (=> b!823878 (= e!544026 e!544024)))

(declare-fun b!823879 () Bool)

(assert (=> b!823879 (= e!544025 call!47425)))

(declare-fun b!823880 () Bool)

(assert (=> b!823880 (= e!544023 call!47427)))

(declare-fun b!823881 () Bool)

(assert (=> b!823881 (= e!544022 e!544027)))

(declare-fun c!133644 () Bool)

(assert (=> b!823881 (= c!133644 ((_ is Star!2051) r!27177))))

(declare-fun bm!47422 () Bool)

(assert (=> bm!47422 (= call!47425 (validRegex!604 (ite c!133644 (reg!2380 r!27177) (ite c!133643 (regTwo!4615 r!27177) (regOne!4614 r!27177)))))))

(assert (= (and d!259103 (not res!379876)) b!823881))

(assert (= (and b!823881 c!133644) b!823873))

(assert (= (and b!823881 (not c!133644)) b!823876))

(assert (= (and b!823873 res!379877) b!823879))

(assert (= (and b!823876 c!133643) b!823877))

(assert (= (and b!823876 (not c!133643)) b!823878))

(assert (= (and b!823877 res!379875) b!823874))

(assert (= (and b!823878 (not res!379879)) b!823875))

(assert (= (and b!823875 res!379878) b!823880))

(assert (= (or b!823877 b!823880) bm!47421))

(assert (= (or b!823874 b!823875) bm!47420))

(assert (= (or b!823879 bm!47420) bm!47422))

(declare-fun m!1064071 () Bool)

(assert (=> b!823873 m!1064071))

(declare-fun m!1064073 () Bool)

(assert (=> bm!47421 m!1064073))

(declare-fun m!1064075 () Bool)

(assert (=> bm!47422 m!1064075))

(assert (=> start!73698 d!259103))

(declare-fun b!823918 () Bool)

(declare-fun e!544036 () Bool)

(declare-fun tp!257509 () Bool)

(assert (=> b!823918 (= e!544036 tp!257509)))

(declare-fun b!823916 () Bool)

(assert (=> b!823916 (= e!544036 tp_is_empty!3825)))

(assert (=> b!823733 (= tp!257463 e!544036)))

(declare-fun b!823919 () Bool)

(declare-fun tp!257505 () Bool)

(declare-fun tp!257508 () Bool)

(assert (=> b!823919 (= e!544036 (and tp!257505 tp!257508))))

(declare-fun b!823917 () Bool)

(declare-fun tp!257506 () Bool)

(declare-fun tp!257507 () Bool)

(assert (=> b!823917 (= e!544036 (and tp!257506 tp!257507))))

(assert (= (and b!823733 ((_ is ElementMatch!2051) (regOne!4615 r!27177))) b!823916))

(assert (= (and b!823733 ((_ is Concat!3782) (regOne!4615 r!27177))) b!823917))

(assert (= (and b!823733 ((_ is Star!2051) (regOne!4615 r!27177))) b!823918))

(assert (= (and b!823733 ((_ is Union!2051) (regOne!4615 r!27177))) b!823919))

(declare-fun b!823926 () Bool)

(declare-fun e!544038 () Bool)

(declare-fun tp!257519 () Bool)

(assert (=> b!823926 (= e!544038 tp!257519)))

(declare-fun b!823924 () Bool)

(assert (=> b!823924 (= e!544038 tp_is_empty!3825)))

(assert (=> b!823733 (= tp!257464 e!544038)))

(declare-fun b!823927 () Bool)

(declare-fun tp!257515 () Bool)

(declare-fun tp!257518 () Bool)

(assert (=> b!823927 (= e!544038 (and tp!257515 tp!257518))))

(declare-fun b!823925 () Bool)

(declare-fun tp!257516 () Bool)

(declare-fun tp!257517 () Bool)

(assert (=> b!823925 (= e!544038 (and tp!257516 tp!257517))))

(assert (= (and b!823733 ((_ is ElementMatch!2051) (regTwo!4615 r!27177))) b!823924))

(assert (= (and b!823733 ((_ is Concat!3782) (regTwo!4615 r!27177))) b!823925))

(assert (= (and b!823733 ((_ is Star!2051) (regTwo!4615 r!27177))) b!823926))

(assert (= (and b!823733 ((_ is Union!2051) (regTwo!4615 r!27177))) b!823927))

(declare-fun b!823930 () Bool)

(declare-fun e!544039 () Bool)

(declare-fun tp!257524 () Bool)

(assert (=> b!823930 (= e!544039 tp!257524)))

(declare-fun b!823928 () Bool)

(assert (=> b!823928 (= e!544039 tp_is_empty!3825)))

(assert (=> b!823729 (= tp!257461 e!544039)))

(declare-fun b!823931 () Bool)

(declare-fun tp!257520 () Bool)

(declare-fun tp!257523 () Bool)

(assert (=> b!823931 (= e!544039 (and tp!257520 tp!257523))))

(declare-fun b!823929 () Bool)

(declare-fun tp!257521 () Bool)

(declare-fun tp!257522 () Bool)

(assert (=> b!823929 (= e!544039 (and tp!257521 tp!257522))))

(assert (= (and b!823729 ((_ is ElementMatch!2051) (reg!2380 r!27177))) b!823928))

(assert (= (and b!823729 ((_ is Concat!3782) (reg!2380 r!27177))) b!823929))

(assert (= (and b!823729 ((_ is Star!2051) (reg!2380 r!27177))) b!823930))

(assert (= (and b!823729 ((_ is Union!2051) (reg!2380 r!27177))) b!823931))

(declare-fun b!823934 () Bool)

(declare-fun e!544040 () Bool)

(declare-fun tp!257529 () Bool)

(assert (=> b!823934 (= e!544040 tp!257529)))

(declare-fun b!823932 () Bool)

(assert (=> b!823932 (= e!544040 tp_is_empty!3825)))

(assert (=> b!823735 (= tp!257460 e!544040)))

(declare-fun b!823935 () Bool)

(declare-fun tp!257525 () Bool)

(declare-fun tp!257528 () Bool)

(assert (=> b!823935 (= e!544040 (and tp!257525 tp!257528))))

(declare-fun b!823933 () Bool)

(declare-fun tp!257526 () Bool)

(declare-fun tp!257527 () Bool)

(assert (=> b!823933 (= e!544040 (and tp!257526 tp!257527))))

(assert (= (and b!823735 ((_ is ElementMatch!2051) (regOne!4614 r!27177))) b!823932))

(assert (= (and b!823735 ((_ is Concat!3782) (regOne!4614 r!27177))) b!823933))

(assert (= (and b!823735 ((_ is Star!2051) (regOne!4614 r!27177))) b!823934))

(assert (= (and b!823735 ((_ is Union!2051) (regOne!4614 r!27177))) b!823935))

(declare-fun b!823938 () Bool)

(declare-fun e!544041 () Bool)

(declare-fun tp!257534 () Bool)

(assert (=> b!823938 (= e!544041 tp!257534)))

(declare-fun b!823936 () Bool)

(assert (=> b!823936 (= e!544041 tp_is_empty!3825)))

(assert (=> b!823735 (= tp!257462 e!544041)))

(declare-fun b!823939 () Bool)

(declare-fun tp!257530 () Bool)

(declare-fun tp!257533 () Bool)

(assert (=> b!823939 (= e!544041 (and tp!257530 tp!257533))))

(declare-fun b!823937 () Bool)

(declare-fun tp!257531 () Bool)

(declare-fun tp!257532 () Bool)

(assert (=> b!823937 (= e!544041 (and tp!257531 tp!257532))))

(assert (= (and b!823735 ((_ is ElementMatch!2051) (regTwo!4614 r!27177))) b!823936))

(assert (= (and b!823735 ((_ is Concat!3782) (regTwo!4614 r!27177))) b!823937))

(assert (= (and b!823735 ((_ is Star!2051) (regTwo!4614 r!27177))) b!823938))

(assert (= (and b!823735 ((_ is Union!2051) (regTwo!4614 r!27177))) b!823939))

(check-sat (not b!823927) (not b!823759) tp_is_empty!3825 (not b!823935) (not b!823939) (not bm!47422) (not b!823933) (not b!823873) (not b!823934) (not b!823919) (not bm!47390) (not b!823931) (not d!259091) (not b!823930) (not b!823938) (not bm!47421) (not b!823917) (not bm!47415) (not b!823929) (not b!823796) (not b!823926) (not bm!47388) (not bm!47392) (not b!823918) (not bm!47416) (not b!823937) (not b!823925) (not b!823853))
(check-sat)
