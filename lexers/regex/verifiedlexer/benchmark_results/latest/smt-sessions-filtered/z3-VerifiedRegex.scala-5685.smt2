; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!283170 () Bool)

(assert start!283170)

(declare-fun b!2908654 () Bool)

(declare-fun e!1836007 () Bool)

(declare-fun tp!934567 () Bool)

(assert (=> b!2908654 (= e!1836007 tp!934567)))

(declare-fun b!2908656 () Bool)

(declare-fun tp!934570 () Bool)

(declare-fun tp!934571 () Bool)

(assert (=> b!2908656 (= e!1836007 (and tp!934570 tp!934571))))

(declare-fun b!2908657 () Bool)

(declare-fun tp_is_empty!15437 () Bool)

(assert (=> b!2908657 (= e!1836007 tp_is_empty!15437)))

(declare-fun b!2908658 () Bool)

(declare-fun e!1836005 () Bool)

(declare-fun tp!934566 () Bool)

(assert (=> b!2908658 (= e!1836005 (and tp_is_empty!15437 tp!934566))))

(declare-fun res!1201019 () Bool)

(declare-fun e!1836006 () Bool)

(assert (=> start!283170 (=> (not res!1201019) (not e!1836006))))

(declare-datatypes ((C!18032 0))(
  ( (C!18033 (val!11050 Int)) )
))
(declare-datatypes ((Regex!8925 0))(
  ( (ElementMatch!8925 (c!474050 C!18032)) (Concat!14246 (regOne!18362 Regex!8925) (regTwo!18362 Regex!8925)) (EmptyExpr!8925) (Star!8925 (reg!9254 Regex!8925)) (EmptyLang!8925) (Union!8925 (regOne!18363 Regex!8925) (regTwo!18363 Regex!8925)) )
))
(declare-fun r!13239 () Regex!8925)

(declare-fun validRegex!3675 (Regex!8925) Bool)

(assert (=> start!283170 (= res!1201019 (validRegex!3675 r!13239))))

(assert (=> start!283170 e!1836006))

(assert (=> start!283170 e!1836007))

(assert (=> start!283170 e!1836005))

(declare-fun b!2908655 () Bool)

(declare-fun tp!934569 () Bool)

(declare-fun tp!934568 () Bool)

(assert (=> b!2908655 (= e!1836007 (and tp!934569 tp!934568))))

(declare-fun b!2908659 () Bool)

(declare-datatypes ((List!34762 0))(
  ( (Nil!34638) (Cons!34638 (h!40058 C!18032) (t!233805 List!34762)) )
))
(declare-fun prefix!1309 () List!34762)

(declare-fun derivativeStep!2402 (Regex!8925 C!18032) Regex!8925)

(declare-fun head!6443 (List!34762) C!18032)

(assert (=> b!2908659 (= e!1836006 (not (validRegex!3675 (derivativeStep!2402 r!13239 (head!6443 prefix!1309)))))))

(declare-fun b!2908660 () Bool)

(declare-fun res!1201018 () Bool)

(assert (=> b!2908660 (=> (not res!1201018) (not e!1836006))))

(declare-fun isEmpty!18909 (List!34762) Bool)

(assert (=> b!2908660 (= res!1201018 (not (isEmpty!18909 prefix!1309)))))

(assert (= (and start!283170 res!1201019) b!2908660))

(assert (= (and b!2908660 res!1201018) b!2908659))

(get-info :version)

(assert (= (and start!283170 ((_ is ElementMatch!8925) r!13239)) b!2908657))

(assert (= (and start!283170 ((_ is Concat!14246) r!13239)) b!2908655))

(assert (= (and start!283170 ((_ is Star!8925) r!13239)) b!2908654))

(assert (= (and start!283170 ((_ is Union!8925) r!13239)) b!2908656))

(assert (= (and start!283170 ((_ is Cons!34638) prefix!1309)) b!2908658))

(declare-fun m!3310181 () Bool)

(assert (=> start!283170 m!3310181))

(declare-fun m!3310183 () Bool)

(assert (=> b!2908659 m!3310183))

(assert (=> b!2908659 m!3310183))

(declare-fun m!3310185 () Bool)

(assert (=> b!2908659 m!3310185))

(assert (=> b!2908659 m!3310185))

(declare-fun m!3310187 () Bool)

(assert (=> b!2908659 m!3310187))

(declare-fun m!3310189 () Bool)

(assert (=> b!2908660 m!3310189))

(check-sat (not b!2908654) (not b!2908659) (not start!283170) (not b!2908658) (not b!2908655) tp_is_empty!15437 (not b!2908660) (not b!2908656))
(check-sat)
(get-model)

(declare-fun b!2908706 () Bool)

(declare-fun e!1836047 () Bool)

(declare-fun call!189842 () Bool)

(assert (=> b!2908706 (= e!1836047 call!189842)))

(declare-fun b!2908707 () Bool)

(declare-fun res!1201049 () Bool)

(declare-fun e!1836044 () Bool)

(assert (=> b!2908707 (=> res!1201049 e!1836044)))

(assert (=> b!2908707 (= res!1201049 (not ((_ is Concat!14246) r!13239)))))

(declare-fun e!1836048 () Bool)

(assert (=> b!2908707 (= e!1836048 e!1836044)))

(declare-fun b!2908708 () Bool)

(declare-fun e!1836046 () Bool)

(declare-fun e!1836043 () Bool)

(assert (=> b!2908708 (= e!1836046 e!1836043)))

(declare-fun res!1201048 () Bool)

(declare-fun nullable!2786 (Regex!8925) Bool)

(assert (=> b!2908708 (= res!1201048 (not (nullable!2786 (reg!9254 r!13239))))))

(assert (=> b!2908708 (=> (not res!1201048) (not e!1836043))))

(declare-fun bm!189837 () Bool)

(declare-fun call!189844 () Bool)

(assert (=> bm!189837 (= call!189842 call!189844)))

(declare-fun b!2908709 () Bool)

(declare-fun e!1836049 () Bool)

(assert (=> b!2908709 (= e!1836049 e!1836046)))

(declare-fun c!474062 () Bool)

(assert (=> b!2908709 (= c!474062 ((_ is Star!8925) r!13239))))

(declare-fun b!2908710 () Bool)

(declare-fun res!1201046 () Bool)

(declare-fun e!1836045 () Bool)

(assert (=> b!2908710 (=> (not res!1201046) (not e!1836045))))

(assert (=> b!2908710 (= res!1201046 call!189842)))

(assert (=> b!2908710 (= e!1836048 e!1836045)))

(declare-fun d!836858 () Bool)

(declare-fun res!1201047 () Bool)

(assert (=> d!836858 (=> res!1201047 e!1836049)))

(assert (=> d!836858 (= res!1201047 ((_ is ElementMatch!8925) r!13239))))

(assert (=> d!836858 (= (validRegex!3675 r!13239) e!1836049)))

(declare-fun b!2908711 () Bool)

(assert (=> b!2908711 (= e!1836044 e!1836047)))

(declare-fun res!1201045 () Bool)

(assert (=> b!2908711 (=> (not res!1201045) (not e!1836047))))

(declare-fun call!189843 () Bool)

(assert (=> b!2908711 (= res!1201045 call!189843)))

(declare-fun b!2908712 () Bool)

(assert (=> b!2908712 (= e!1836045 call!189843)))

(declare-fun b!2908713 () Bool)

(assert (=> b!2908713 (= e!1836046 e!1836048)))

(declare-fun c!474061 () Bool)

(assert (=> b!2908713 (= c!474061 ((_ is Union!8925) r!13239))))

(declare-fun bm!189838 () Bool)

(assert (=> bm!189838 (= call!189843 (validRegex!3675 (ite c!474061 (regTwo!18363 r!13239) (regOne!18362 r!13239))))))

(declare-fun b!2908714 () Bool)

(assert (=> b!2908714 (= e!1836043 call!189844)))

(declare-fun bm!189839 () Bool)

(assert (=> bm!189839 (= call!189844 (validRegex!3675 (ite c!474062 (reg!9254 r!13239) (ite c!474061 (regOne!18363 r!13239) (regTwo!18362 r!13239)))))))

(assert (= (and d!836858 (not res!1201047)) b!2908709))

(assert (= (and b!2908709 c!474062) b!2908708))

(assert (= (and b!2908709 (not c!474062)) b!2908713))

(assert (= (and b!2908708 res!1201048) b!2908714))

(assert (= (and b!2908713 c!474061) b!2908710))

(assert (= (and b!2908713 (not c!474061)) b!2908707))

(assert (= (and b!2908710 res!1201046) b!2908712))

(assert (= (and b!2908707 (not res!1201049)) b!2908711))

(assert (= (and b!2908711 res!1201045) b!2908706))

(assert (= (or b!2908712 b!2908711) bm!189838))

(assert (= (or b!2908710 b!2908706) bm!189837))

(assert (= (or b!2908714 bm!189837) bm!189839))

(declare-fun m!3310197 () Bool)

(assert (=> b!2908708 m!3310197))

(declare-fun m!3310199 () Bool)

(assert (=> bm!189838 m!3310199))

(declare-fun m!3310201 () Bool)

(assert (=> bm!189839 m!3310201))

(assert (=> start!283170 d!836858))

(declare-fun d!836862 () Bool)

(assert (=> d!836862 (= (isEmpty!18909 prefix!1309) ((_ is Nil!34638) prefix!1309))))

(assert (=> b!2908660 d!836862))

(declare-fun b!2908715 () Bool)

(declare-fun e!1836054 () Bool)

(declare-fun call!189845 () Bool)

(assert (=> b!2908715 (= e!1836054 call!189845)))

(declare-fun b!2908716 () Bool)

(declare-fun res!1201054 () Bool)

(declare-fun e!1836051 () Bool)

(assert (=> b!2908716 (=> res!1201054 e!1836051)))

(assert (=> b!2908716 (= res!1201054 (not ((_ is Concat!14246) (derivativeStep!2402 r!13239 (head!6443 prefix!1309)))))))

(declare-fun e!1836055 () Bool)

(assert (=> b!2908716 (= e!1836055 e!1836051)))

(declare-fun b!2908717 () Bool)

(declare-fun e!1836053 () Bool)

(declare-fun e!1836050 () Bool)

(assert (=> b!2908717 (= e!1836053 e!1836050)))

(declare-fun res!1201053 () Bool)

(assert (=> b!2908717 (= res!1201053 (not (nullable!2786 (reg!9254 (derivativeStep!2402 r!13239 (head!6443 prefix!1309))))))))

(assert (=> b!2908717 (=> (not res!1201053) (not e!1836050))))

(declare-fun bm!189840 () Bool)

(declare-fun call!189847 () Bool)

(assert (=> bm!189840 (= call!189845 call!189847)))

(declare-fun b!2908718 () Bool)

(declare-fun e!1836056 () Bool)

(assert (=> b!2908718 (= e!1836056 e!1836053)))

(declare-fun c!474064 () Bool)

(assert (=> b!2908718 (= c!474064 ((_ is Star!8925) (derivativeStep!2402 r!13239 (head!6443 prefix!1309))))))

(declare-fun b!2908719 () Bool)

(declare-fun res!1201051 () Bool)

(declare-fun e!1836052 () Bool)

(assert (=> b!2908719 (=> (not res!1201051) (not e!1836052))))

(assert (=> b!2908719 (= res!1201051 call!189845)))

(assert (=> b!2908719 (= e!1836055 e!1836052)))

(declare-fun d!836864 () Bool)

(declare-fun res!1201052 () Bool)

(assert (=> d!836864 (=> res!1201052 e!1836056)))

(assert (=> d!836864 (= res!1201052 ((_ is ElementMatch!8925) (derivativeStep!2402 r!13239 (head!6443 prefix!1309))))))

(assert (=> d!836864 (= (validRegex!3675 (derivativeStep!2402 r!13239 (head!6443 prefix!1309))) e!1836056)))

(declare-fun b!2908720 () Bool)

(assert (=> b!2908720 (= e!1836051 e!1836054)))

(declare-fun res!1201050 () Bool)

(assert (=> b!2908720 (=> (not res!1201050) (not e!1836054))))

(declare-fun call!189846 () Bool)

(assert (=> b!2908720 (= res!1201050 call!189846)))

(declare-fun b!2908721 () Bool)

(assert (=> b!2908721 (= e!1836052 call!189846)))

(declare-fun b!2908722 () Bool)

(assert (=> b!2908722 (= e!1836053 e!1836055)))

(declare-fun c!474063 () Bool)

(assert (=> b!2908722 (= c!474063 ((_ is Union!8925) (derivativeStep!2402 r!13239 (head!6443 prefix!1309))))))

(declare-fun bm!189841 () Bool)

(assert (=> bm!189841 (= call!189846 (validRegex!3675 (ite c!474063 (regTwo!18363 (derivativeStep!2402 r!13239 (head!6443 prefix!1309))) (regOne!18362 (derivativeStep!2402 r!13239 (head!6443 prefix!1309))))))))

(declare-fun b!2908723 () Bool)

(assert (=> b!2908723 (= e!1836050 call!189847)))

(declare-fun bm!189842 () Bool)

(assert (=> bm!189842 (= call!189847 (validRegex!3675 (ite c!474064 (reg!9254 (derivativeStep!2402 r!13239 (head!6443 prefix!1309))) (ite c!474063 (regOne!18363 (derivativeStep!2402 r!13239 (head!6443 prefix!1309))) (regTwo!18362 (derivativeStep!2402 r!13239 (head!6443 prefix!1309)))))))))

(assert (= (and d!836864 (not res!1201052)) b!2908718))

(assert (= (and b!2908718 c!474064) b!2908717))

(assert (= (and b!2908718 (not c!474064)) b!2908722))

(assert (= (and b!2908717 res!1201053) b!2908723))

(assert (= (and b!2908722 c!474063) b!2908719))

(assert (= (and b!2908722 (not c!474063)) b!2908716))

(assert (= (and b!2908719 res!1201051) b!2908721))

(assert (= (and b!2908716 (not res!1201054)) b!2908720))

(assert (= (and b!2908720 res!1201050) b!2908715))

(assert (= (or b!2908721 b!2908720) bm!189841))

(assert (= (or b!2908719 b!2908715) bm!189840))

(assert (= (or b!2908723 bm!189840) bm!189842))

(declare-fun m!3310203 () Bool)

(assert (=> b!2908717 m!3310203))

(declare-fun m!3310205 () Bool)

(assert (=> bm!189841 m!3310205))

(declare-fun m!3310207 () Bool)

(assert (=> bm!189842 m!3310207))

(assert (=> b!2908659 d!836864))

(declare-fun b!2908783 () Bool)

(declare-fun e!1836089 () Regex!8925)

(declare-fun e!1836093 () Regex!8925)

(assert (=> b!2908783 (= e!1836089 e!1836093)))

(declare-fun c!474095 () Bool)

(assert (=> b!2908783 (= c!474095 ((_ is ElementMatch!8925) r!13239))))

(declare-fun b!2908784 () Bool)

(declare-fun c!474094 () Bool)

(assert (=> b!2908784 (= c!474094 ((_ is Union!8925) r!13239))))

(declare-fun e!1836091 () Regex!8925)

(assert (=> b!2908784 (= e!1836093 e!1836091)))

(declare-fun b!2908785 () Bool)

(assert (=> b!2908785 (= e!1836093 (ite (= (head!6443 prefix!1309) (c!474050 r!13239)) EmptyExpr!8925 EmptyLang!8925))))

(declare-fun b!2908786 () Bool)

(declare-fun e!1836092 () Regex!8925)

(declare-fun call!189873 () Regex!8925)

(assert (=> b!2908786 (= e!1836092 (Concat!14246 call!189873 r!13239))))

(declare-fun e!1836090 () Regex!8925)

(declare-fun b!2908787 () Bool)

(declare-fun call!189872 () Regex!8925)

(declare-fun call!189871 () Regex!8925)

(assert (=> b!2908787 (= e!1836090 (Union!8925 (Concat!14246 call!189872 (regTwo!18362 r!13239)) call!189871))))

(declare-fun call!189874 () Regex!8925)

(declare-fun c!474096 () Bool)

(declare-fun bm!189867 () Bool)

(assert (=> bm!189867 (= call!189874 (derivativeStep!2402 (ite c!474094 (regTwo!18363 r!13239) (ite c!474096 (reg!9254 r!13239) (regOne!18362 r!13239))) (head!6443 prefix!1309)))))

(declare-fun b!2908788 () Bool)

(assert (=> b!2908788 (= e!1836090 (Union!8925 (Concat!14246 call!189872 (regTwo!18362 r!13239)) EmptyLang!8925))))

(declare-fun b!2908789 () Bool)

(assert (=> b!2908789 (= e!1836091 (Union!8925 call!189871 call!189874))))

(declare-fun bm!189868 () Bool)

(assert (=> bm!189868 (= call!189871 (derivativeStep!2402 (ite c!474094 (regOne!18363 r!13239) (regTwo!18362 r!13239)) (head!6443 prefix!1309)))))

(declare-fun bm!189869 () Bool)

(assert (=> bm!189869 (= call!189872 call!189873)))

(declare-fun b!2908790 () Bool)

(assert (=> b!2908790 (= e!1836089 EmptyLang!8925)))

(declare-fun bm!189866 () Bool)

(assert (=> bm!189866 (= call!189873 call!189874)))

(declare-fun d!836866 () Bool)

(declare-fun lt!1023039 () Regex!8925)

(assert (=> d!836866 (validRegex!3675 lt!1023039)))

(assert (=> d!836866 (= lt!1023039 e!1836089)))

(declare-fun c!474092 () Bool)

(assert (=> d!836866 (= c!474092 (or ((_ is EmptyExpr!8925) r!13239) ((_ is EmptyLang!8925) r!13239)))))

(assert (=> d!836866 (validRegex!3675 r!13239)))

(assert (=> d!836866 (= (derivativeStep!2402 r!13239 (head!6443 prefix!1309)) lt!1023039)))

(declare-fun b!2908791 () Bool)

(declare-fun c!474093 () Bool)

(assert (=> b!2908791 (= c!474093 (nullable!2786 (regOne!18362 r!13239)))))

(assert (=> b!2908791 (= e!1836092 e!1836090)))

(declare-fun b!2908792 () Bool)

(assert (=> b!2908792 (= e!1836091 e!1836092)))

(assert (=> b!2908792 (= c!474096 ((_ is Star!8925) r!13239))))

(assert (= (and d!836866 c!474092) b!2908790))

(assert (= (and d!836866 (not c!474092)) b!2908783))

(assert (= (and b!2908783 c!474095) b!2908785))

(assert (= (and b!2908783 (not c!474095)) b!2908784))

(assert (= (and b!2908784 c!474094) b!2908789))

(assert (= (and b!2908784 (not c!474094)) b!2908792))

(assert (= (and b!2908792 c!474096) b!2908786))

(assert (= (and b!2908792 (not c!474096)) b!2908791))

(assert (= (and b!2908791 c!474093) b!2908787))

(assert (= (and b!2908791 (not c!474093)) b!2908788))

(assert (= (or b!2908787 b!2908788) bm!189869))

(assert (= (or b!2908786 bm!189869) bm!189866))

(assert (= (or b!2908789 bm!189866) bm!189867))

(assert (= (or b!2908789 b!2908787) bm!189868))

(assert (=> bm!189867 m!3310183))

(declare-fun m!3310223 () Bool)

(assert (=> bm!189867 m!3310223))

(assert (=> bm!189868 m!3310183))

(declare-fun m!3310225 () Bool)

(assert (=> bm!189868 m!3310225))

(declare-fun m!3310227 () Bool)

(assert (=> d!836866 m!3310227))

(assert (=> d!836866 m!3310181))

(declare-fun m!3310229 () Bool)

(assert (=> b!2908791 m!3310229))

(assert (=> b!2908659 d!836866))

(declare-fun d!836874 () Bool)

(assert (=> d!836874 (= (head!6443 prefix!1309) (h!40058 prefix!1309))))

(assert (=> b!2908659 d!836874))

(declare-fun b!2908828 () Bool)

(declare-fun e!1836101 () Bool)

(declare-fun tp!934611 () Bool)

(declare-fun tp!934607 () Bool)

(assert (=> b!2908828 (= e!1836101 (and tp!934611 tp!934607))))

(declare-fun b!2908825 () Bool)

(assert (=> b!2908825 (= e!1836101 tp_is_empty!15437)))

(declare-fun b!2908826 () Bool)

(declare-fun tp!934610 () Bool)

(declare-fun tp!934608 () Bool)

(assert (=> b!2908826 (= e!1836101 (and tp!934610 tp!934608))))

(declare-fun b!2908827 () Bool)

(declare-fun tp!934609 () Bool)

(assert (=> b!2908827 (= e!1836101 tp!934609)))

(assert (=> b!2908656 (= tp!934570 e!1836101)))

(assert (= (and b!2908656 ((_ is ElementMatch!8925) (regOne!18363 r!13239))) b!2908825))

(assert (= (and b!2908656 ((_ is Concat!14246) (regOne!18363 r!13239))) b!2908826))

(assert (= (and b!2908656 ((_ is Star!8925) (regOne!18363 r!13239))) b!2908827))

(assert (= (and b!2908656 ((_ is Union!8925) (regOne!18363 r!13239))) b!2908828))

(declare-fun b!2908840 () Bool)

(declare-fun e!1836104 () Bool)

(declare-fun tp!934626 () Bool)

(declare-fun tp!934622 () Bool)

(assert (=> b!2908840 (= e!1836104 (and tp!934626 tp!934622))))

(declare-fun b!2908837 () Bool)

(assert (=> b!2908837 (= e!1836104 tp_is_empty!15437)))

(declare-fun b!2908838 () Bool)

(declare-fun tp!934625 () Bool)

(declare-fun tp!934623 () Bool)

(assert (=> b!2908838 (= e!1836104 (and tp!934625 tp!934623))))

(declare-fun b!2908839 () Bool)

(declare-fun tp!934624 () Bool)

(assert (=> b!2908839 (= e!1836104 tp!934624)))

(assert (=> b!2908656 (= tp!934571 e!1836104)))

(assert (= (and b!2908656 ((_ is ElementMatch!8925) (regTwo!18363 r!13239))) b!2908837))

(assert (= (and b!2908656 ((_ is Concat!14246) (regTwo!18363 r!13239))) b!2908838))

(assert (= (and b!2908656 ((_ is Star!8925) (regTwo!18363 r!13239))) b!2908839))

(assert (= (and b!2908656 ((_ is Union!8925) (regTwo!18363 r!13239))) b!2908840))

(declare-fun b!2908848 () Bool)

(declare-fun e!1836107 () Bool)

(declare-fun tp!934631 () Bool)

(declare-fun tp!934627 () Bool)

(assert (=> b!2908848 (= e!1836107 (and tp!934631 tp!934627))))

(declare-fun b!2908845 () Bool)

(assert (=> b!2908845 (= e!1836107 tp_is_empty!15437)))

(declare-fun b!2908846 () Bool)

(declare-fun tp!934630 () Bool)

(declare-fun tp!934628 () Bool)

(assert (=> b!2908846 (= e!1836107 (and tp!934630 tp!934628))))

(declare-fun b!2908847 () Bool)

(declare-fun tp!934629 () Bool)

(assert (=> b!2908847 (= e!1836107 tp!934629)))

(assert (=> b!2908654 (= tp!934567 e!1836107)))

(assert (= (and b!2908654 ((_ is ElementMatch!8925) (reg!9254 r!13239))) b!2908845))

(assert (= (and b!2908654 ((_ is Concat!14246) (reg!9254 r!13239))) b!2908846))

(assert (= (and b!2908654 ((_ is Star!8925) (reg!9254 r!13239))) b!2908847))

(assert (= (and b!2908654 ((_ is Union!8925) (reg!9254 r!13239))) b!2908848))

(declare-fun b!2908852 () Bool)

(declare-fun e!1836108 () Bool)

(declare-fun tp!934638 () Bool)

(declare-fun tp!934634 () Bool)

(assert (=> b!2908852 (= e!1836108 (and tp!934638 tp!934634))))

(declare-fun b!2908849 () Bool)

(assert (=> b!2908849 (= e!1836108 tp_is_empty!15437)))

(declare-fun b!2908850 () Bool)

(declare-fun tp!934637 () Bool)

(declare-fun tp!934635 () Bool)

(assert (=> b!2908850 (= e!1836108 (and tp!934637 tp!934635))))

(declare-fun b!2908851 () Bool)

(declare-fun tp!934636 () Bool)

(assert (=> b!2908851 (= e!1836108 tp!934636)))

(assert (=> b!2908655 (= tp!934569 e!1836108)))

(assert (= (and b!2908655 ((_ is ElementMatch!8925) (regOne!18362 r!13239))) b!2908849))

(assert (= (and b!2908655 ((_ is Concat!14246) (regOne!18362 r!13239))) b!2908850))

(assert (= (and b!2908655 ((_ is Star!8925) (regOne!18362 r!13239))) b!2908851))

(assert (= (and b!2908655 ((_ is Union!8925) (regOne!18362 r!13239))) b!2908852))

(declare-fun b!2908857 () Bool)

(declare-fun e!1836110 () Bool)

(declare-fun tp!934644 () Bool)

(declare-fun tp!934640 () Bool)

(assert (=> b!2908857 (= e!1836110 (and tp!934644 tp!934640))))

(declare-fun b!2908854 () Bool)

(assert (=> b!2908854 (= e!1836110 tp_is_empty!15437)))

(declare-fun b!2908855 () Bool)

(declare-fun tp!934643 () Bool)

(declare-fun tp!934641 () Bool)

(assert (=> b!2908855 (= e!1836110 (and tp!934643 tp!934641))))

(declare-fun b!2908856 () Bool)

(declare-fun tp!934642 () Bool)

(assert (=> b!2908856 (= e!1836110 tp!934642)))

(assert (=> b!2908655 (= tp!934568 e!1836110)))

(assert (= (and b!2908655 ((_ is ElementMatch!8925) (regTwo!18362 r!13239))) b!2908854))

(assert (= (and b!2908655 ((_ is Concat!14246) (regTwo!18362 r!13239))) b!2908855))

(assert (= (and b!2908655 ((_ is Star!8925) (regTwo!18362 r!13239))) b!2908856))

(assert (= (and b!2908655 ((_ is Union!8925) (regTwo!18362 r!13239))) b!2908857))

(declare-fun b!2908862 () Bool)

(declare-fun e!1836113 () Bool)

(declare-fun tp!934647 () Bool)

(assert (=> b!2908862 (= e!1836113 (and tp_is_empty!15437 tp!934647))))

(assert (=> b!2908658 (= tp!934566 e!1836113)))

(assert (= (and b!2908658 ((_ is Cons!34638) (t!233805 prefix!1309))) b!2908862))

(check-sat (not b!2908851) (not bm!189838) (not b!2908791) (not d!836866) (not b!2908855) (not b!2908847) (not b!2908827) tp_is_empty!15437 (not b!2908850) (not b!2908826) (not bm!189841) (not b!2908848) (not b!2908717) (not b!2908839) (not b!2908828) (not b!2908857) (not bm!189842) (not b!2908856) (not bm!189867) (not b!2908840) (not b!2908852) (not b!2908838) (not b!2908846) (not b!2908708) (not bm!189868) (not bm!189839) (not b!2908862))
(check-sat)
