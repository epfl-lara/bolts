; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!752916 () Bool)

(assert start!752916)

(declare-fun b!8002742 () Bool)

(declare-fun e!4714209 () Bool)

(declare-fun tp!2394042 () Bool)

(declare-fun tp!2394044 () Bool)

(assert (=> b!8002742 (= e!4714209 (and tp!2394042 tp!2394044))))

(declare-fun b!8002743 () Bool)

(declare-fun e!4714207 () Bool)

(declare-datatypes ((C!43536 0))(
  ( (C!43537 (val!32316 Int)) )
))
(declare-datatypes ((Regex!21599 0))(
  ( (ElementMatch!21599 (c!1469314 C!43536)) (Concat!30598 (regOne!43710 Regex!21599) (regTwo!43710 Regex!21599)) (EmptyExpr!21599) (Star!21599 (reg!21928 Regex!21599)) (EmptyLang!21599) (Union!21599 (regOne!43711 Regex!21599) (regTwo!43711 Regex!21599)) )
))
(declare-fun r!13189 () Regex!21599)

(declare-datatypes ((List!74828 0))(
  ( (Nil!74704) (Cons!74704 (h!81152 C!43536) (t!390571 List!74828)) )
))
(declare-fun input!5970 () List!74828)

(declare-fun validRegex!11903 (Regex!21599) Bool)

(declare-fun derivative!775 (Regex!21599 List!74828) Regex!21599)

(declare-fun derivativeStep!6612 (Regex!21599 C!43536) Regex!21599)

(assert (=> b!8002743 (= e!4714207 (not (validRegex!11903 (derivative!775 (derivativeStep!6612 r!13189 (h!81152 input!5970)) (t!390571 input!5970)))))))

(declare-fun res!3164554 () Bool)

(assert (=> start!752916 (=> (not res!3164554) (not e!4714207))))

(assert (=> start!752916 (= res!3164554 (validRegex!11903 r!13189))))

(assert (=> start!752916 e!4714207))

(assert (=> start!752916 e!4714209))

(declare-fun e!4714208 () Bool)

(assert (=> start!752916 e!4714208))

(declare-fun b!8002744 () Bool)

(declare-fun tp!2394041 () Bool)

(declare-fun tp!2394043 () Bool)

(assert (=> b!8002744 (= e!4714209 (and tp!2394041 tp!2394043))))

(declare-fun b!8002745 () Bool)

(declare-fun tp_is_empty!53741 () Bool)

(declare-fun tp!2394045 () Bool)

(assert (=> b!8002745 (= e!4714208 (and tp_is_empty!53741 tp!2394045))))

(declare-fun b!8002746 () Bool)

(declare-fun tp!2394046 () Bool)

(assert (=> b!8002746 (= e!4714209 tp!2394046)))

(declare-fun b!8002747 () Bool)

(declare-fun res!3164553 () Bool)

(assert (=> b!8002747 (=> (not res!3164553) (not e!4714207))))

(get-info :version)

(assert (=> b!8002747 (= res!3164553 ((_ is Cons!74704) input!5970))))

(declare-fun b!8002748 () Bool)

(assert (=> b!8002748 (= e!4714209 tp_is_empty!53741)))

(assert (= (and start!752916 res!3164554) b!8002747))

(assert (= (and b!8002747 res!3164553) b!8002743))

(assert (= (and start!752916 ((_ is ElementMatch!21599) r!13189)) b!8002748))

(assert (= (and start!752916 ((_ is Concat!30598) r!13189)) b!8002744))

(assert (= (and start!752916 ((_ is Star!21599) r!13189)) b!8002746))

(assert (= (and start!752916 ((_ is Union!21599) r!13189)) b!8002742))

(assert (= (and start!752916 ((_ is Cons!74704) input!5970)) b!8002745))

(declare-fun m!8369202 () Bool)

(assert (=> b!8002743 m!8369202))

(assert (=> b!8002743 m!8369202))

(declare-fun m!8369204 () Bool)

(assert (=> b!8002743 m!8369204))

(assert (=> b!8002743 m!8369204))

(declare-fun m!8369206 () Bool)

(assert (=> b!8002743 m!8369206))

(declare-fun m!8369208 () Bool)

(assert (=> start!752916 m!8369208))

(check-sat (not start!752916) (not b!8002745) (not b!8002744) (not b!8002743) (not b!8002742) tp_is_empty!53741 (not b!8002746))
(check-sat)
(get-model)

(declare-fun b!8002785 () Bool)

(declare-fun e!4714243 () Bool)

(declare-fun e!4714239 () Bool)

(assert (=> b!8002785 (= e!4714243 e!4714239)))

(declare-fun c!1469323 () Bool)

(assert (=> b!8002785 (= c!1469323 ((_ is Star!21599) r!13189))))

(declare-fun d!2386940 () Bool)

(declare-fun res!3164576 () Bool)

(assert (=> d!2386940 (=> res!3164576 e!4714243)))

(assert (=> d!2386940 (= res!3164576 ((_ is ElementMatch!21599) r!13189))))

(assert (=> d!2386940 (= (validRegex!11903 r!13189) e!4714243)))

(declare-fun b!8002786 () Bool)

(declare-fun e!4714241 () Bool)

(declare-fun call!743589 () Bool)

(assert (=> b!8002786 (= e!4714241 call!743589)))

(declare-fun bm!743582 () Bool)

(declare-fun call!743588 () Bool)

(declare-fun c!1469324 () Bool)

(assert (=> bm!743582 (= call!743588 (validRegex!11903 (ite c!1469324 (regOne!43711 r!13189) (regOne!43710 r!13189))))))

(declare-fun b!8002787 () Bool)

(declare-fun e!4714242 () Bool)

(declare-fun call!743587 () Bool)

(assert (=> b!8002787 (= e!4714242 call!743587)))

(declare-fun b!8002788 () Bool)

(declare-fun e!4714244 () Bool)

(declare-fun e!4714240 () Bool)

(assert (=> b!8002788 (= e!4714244 e!4714240)))

(declare-fun res!3164579 () Bool)

(assert (=> b!8002788 (=> (not res!3164579) (not e!4714240))))

(assert (=> b!8002788 (= res!3164579 call!743588)))

(declare-fun b!8002789 () Bool)

(assert (=> b!8002789 (= e!4714240 call!743587)))

(declare-fun b!8002790 () Bool)

(declare-fun res!3164575 () Bool)

(assert (=> b!8002790 (=> res!3164575 e!4714244)))

(assert (=> b!8002790 (= res!3164575 (not ((_ is Concat!30598) r!13189)))))

(declare-fun e!4714238 () Bool)

(assert (=> b!8002790 (= e!4714238 e!4714244)))

(declare-fun bm!743583 () Bool)

(assert (=> bm!743583 (= call!743587 call!743589)))

(declare-fun b!8002791 () Bool)

(declare-fun res!3164577 () Bool)

(assert (=> b!8002791 (=> (not res!3164577) (not e!4714242))))

(assert (=> b!8002791 (= res!3164577 call!743588)))

(assert (=> b!8002791 (= e!4714238 e!4714242)))

(declare-fun bm!743584 () Bool)

(assert (=> bm!743584 (= call!743589 (validRegex!11903 (ite c!1469323 (reg!21928 r!13189) (ite c!1469324 (regTwo!43711 r!13189) (regTwo!43710 r!13189)))))))

(declare-fun b!8002792 () Bool)

(assert (=> b!8002792 (= e!4714239 e!4714238)))

(assert (=> b!8002792 (= c!1469324 ((_ is Union!21599) r!13189))))

(declare-fun b!8002793 () Bool)

(assert (=> b!8002793 (= e!4714239 e!4714241)))

(declare-fun res!3164578 () Bool)

(declare-fun nullable!9679 (Regex!21599) Bool)

(assert (=> b!8002793 (= res!3164578 (not (nullable!9679 (reg!21928 r!13189))))))

(assert (=> b!8002793 (=> (not res!3164578) (not e!4714241))))

(assert (= (and d!2386940 (not res!3164576)) b!8002785))

(assert (= (and b!8002785 c!1469323) b!8002793))

(assert (= (and b!8002785 (not c!1469323)) b!8002792))

(assert (= (and b!8002793 res!3164578) b!8002786))

(assert (= (and b!8002792 c!1469324) b!8002791))

(assert (= (and b!8002792 (not c!1469324)) b!8002790))

(assert (= (and b!8002791 res!3164577) b!8002787))

(assert (= (and b!8002790 (not res!3164575)) b!8002788))

(assert (= (and b!8002788 res!3164579) b!8002789))

(assert (= (or b!8002791 b!8002788) bm!743582))

(assert (= (or b!8002787 b!8002789) bm!743583))

(assert (= (or b!8002786 bm!743583) bm!743584))

(declare-fun m!8369210 () Bool)

(assert (=> bm!743582 m!8369210))

(declare-fun m!8369212 () Bool)

(assert (=> bm!743584 m!8369212))

(declare-fun m!8369214 () Bool)

(assert (=> b!8002793 m!8369214))

(assert (=> start!752916 d!2386940))

(declare-fun b!8002794 () Bool)

(declare-fun e!4714250 () Bool)

(declare-fun e!4714246 () Bool)

(assert (=> b!8002794 (= e!4714250 e!4714246)))

(declare-fun c!1469325 () Bool)

(assert (=> b!8002794 (= c!1469325 ((_ is Star!21599) (derivative!775 (derivativeStep!6612 r!13189 (h!81152 input!5970)) (t!390571 input!5970))))))

(declare-fun d!2386944 () Bool)

(declare-fun res!3164581 () Bool)

(assert (=> d!2386944 (=> res!3164581 e!4714250)))

(assert (=> d!2386944 (= res!3164581 ((_ is ElementMatch!21599) (derivative!775 (derivativeStep!6612 r!13189 (h!81152 input!5970)) (t!390571 input!5970))))))

(assert (=> d!2386944 (= (validRegex!11903 (derivative!775 (derivativeStep!6612 r!13189 (h!81152 input!5970)) (t!390571 input!5970))) e!4714250)))

(declare-fun b!8002795 () Bool)

(declare-fun e!4714248 () Bool)

(declare-fun call!743592 () Bool)

(assert (=> b!8002795 (= e!4714248 call!743592)))

(declare-fun call!743591 () Bool)

(declare-fun bm!743585 () Bool)

(declare-fun c!1469326 () Bool)

(assert (=> bm!743585 (= call!743591 (validRegex!11903 (ite c!1469326 (regOne!43711 (derivative!775 (derivativeStep!6612 r!13189 (h!81152 input!5970)) (t!390571 input!5970))) (regOne!43710 (derivative!775 (derivativeStep!6612 r!13189 (h!81152 input!5970)) (t!390571 input!5970))))))))

(declare-fun b!8002796 () Bool)

(declare-fun e!4714249 () Bool)

(declare-fun call!743590 () Bool)

(assert (=> b!8002796 (= e!4714249 call!743590)))

(declare-fun b!8002797 () Bool)

(declare-fun e!4714251 () Bool)

(declare-fun e!4714247 () Bool)

(assert (=> b!8002797 (= e!4714251 e!4714247)))

(declare-fun res!3164584 () Bool)

(assert (=> b!8002797 (=> (not res!3164584) (not e!4714247))))

(assert (=> b!8002797 (= res!3164584 call!743591)))

(declare-fun b!8002798 () Bool)

(assert (=> b!8002798 (= e!4714247 call!743590)))

(declare-fun b!8002799 () Bool)

(declare-fun res!3164580 () Bool)

(assert (=> b!8002799 (=> res!3164580 e!4714251)))

(assert (=> b!8002799 (= res!3164580 (not ((_ is Concat!30598) (derivative!775 (derivativeStep!6612 r!13189 (h!81152 input!5970)) (t!390571 input!5970)))))))

(declare-fun e!4714245 () Bool)

(assert (=> b!8002799 (= e!4714245 e!4714251)))

(declare-fun bm!743586 () Bool)

(assert (=> bm!743586 (= call!743590 call!743592)))

(declare-fun b!8002800 () Bool)

(declare-fun res!3164582 () Bool)

(assert (=> b!8002800 (=> (not res!3164582) (not e!4714249))))

(assert (=> b!8002800 (= res!3164582 call!743591)))

(assert (=> b!8002800 (= e!4714245 e!4714249)))

(declare-fun bm!743587 () Bool)

(assert (=> bm!743587 (= call!743592 (validRegex!11903 (ite c!1469325 (reg!21928 (derivative!775 (derivativeStep!6612 r!13189 (h!81152 input!5970)) (t!390571 input!5970))) (ite c!1469326 (regTwo!43711 (derivative!775 (derivativeStep!6612 r!13189 (h!81152 input!5970)) (t!390571 input!5970))) (regTwo!43710 (derivative!775 (derivativeStep!6612 r!13189 (h!81152 input!5970)) (t!390571 input!5970)))))))))

(declare-fun b!8002801 () Bool)

(assert (=> b!8002801 (= e!4714246 e!4714245)))

(assert (=> b!8002801 (= c!1469326 ((_ is Union!21599) (derivative!775 (derivativeStep!6612 r!13189 (h!81152 input!5970)) (t!390571 input!5970))))))

(declare-fun b!8002802 () Bool)

(assert (=> b!8002802 (= e!4714246 e!4714248)))

(declare-fun res!3164583 () Bool)

(assert (=> b!8002802 (= res!3164583 (not (nullable!9679 (reg!21928 (derivative!775 (derivativeStep!6612 r!13189 (h!81152 input!5970)) (t!390571 input!5970))))))))

(assert (=> b!8002802 (=> (not res!3164583) (not e!4714248))))

(assert (= (and d!2386944 (not res!3164581)) b!8002794))

(assert (= (and b!8002794 c!1469325) b!8002802))

(assert (= (and b!8002794 (not c!1469325)) b!8002801))

(assert (= (and b!8002802 res!3164583) b!8002795))

(assert (= (and b!8002801 c!1469326) b!8002800))

(assert (= (and b!8002801 (not c!1469326)) b!8002799))

(assert (= (and b!8002800 res!3164582) b!8002796))

(assert (= (and b!8002799 (not res!3164580)) b!8002797))

(assert (= (and b!8002797 res!3164584) b!8002798))

(assert (= (or b!8002800 b!8002797) bm!743585))

(assert (= (or b!8002796 b!8002798) bm!743586))

(assert (= (or b!8002795 bm!743586) bm!743587))

(declare-fun m!8369216 () Bool)

(assert (=> bm!743585 m!8369216))

(declare-fun m!8369218 () Bool)

(assert (=> bm!743587 m!8369218))

(declare-fun m!8369220 () Bool)

(assert (=> b!8002802 m!8369220))

(assert (=> b!8002743 d!2386944))

(declare-fun d!2386946 () Bool)

(declare-fun lt!2713820 () Regex!21599)

(assert (=> d!2386946 (validRegex!11903 lt!2713820)))

(declare-fun e!4714263 () Regex!21599)

(assert (=> d!2386946 (= lt!2713820 e!4714263)))

(declare-fun c!1469333 () Bool)

(assert (=> d!2386946 (= c!1469333 ((_ is Cons!74704) (t!390571 input!5970)))))

(assert (=> d!2386946 (validRegex!11903 (derivativeStep!6612 r!13189 (h!81152 input!5970)))))

(assert (=> d!2386946 (= (derivative!775 (derivativeStep!6612 r!13189 (h!81152 input!5970)) (t!390571 input!5970)) lt!2713820)))

(declare-fun b!8002820 () Bool)

(assert (=> b!8002820 (= e!4714263 (derivative!775 (derivativeStep!6612 (derivativeStep!6612 r!13189 (h!81152 input!5970)) (h!81152 (t!390571 input!5970))) (t!390571 (t!390571 input!5970))))))

(declare-fun b!8002821 () Bool)

(assert (=> b!8002821 (= e!4714263 (derivativeStep!6612 r!13189 (h!81152 input!5970)))))

(assert (= (and d!2386946 c!1469333) b!8002820))

(assert (= (and d!2386946 (not c!1469333)) b!8002821))

(declare-fun m!8369228 () Bool)

(assert (=> d!2386946 m!8369228))

(assert (=> d!2386946 m!8369202))

(declare-fun m!8369230 () Bool)

(assert (=> d!2386946 m!8369230))

(assert (=> b!8002820 m!8369202))

(declare-fun m!8369232 () Bool)

(assert (=> b!8002820 m!8369232))

(assert (=> b!8002820 m!8369232))

(declare-fun m!8369234 () Bool)

(assert (=> b!8002820 m!8369234))

(assert (=> b!8002743 d!2386946))

(declare-fun call!743612 () Regex!21599)

(declare-fun c!1469355 () Bool)

(declare-fun bm!743607 () Bool)

(assert (=> bm!743607 (= call!743612 (derivativeStep!6612 (ite c!1469355 (regTwo!43711 r!13189) (regTwo!43710 r!13189)) (h!81152 input!5970)))))

(declare-fun call!743613 () Regex!21599)

(declare-fun e!4714286 () Regex!21599)

(declare-fun b!8002865 () Bool)

(assert (=> b!8002865 (= e!4714286 (Union!21599 (Concat!30598 call!743613 (regTwo!43710 r!13189)) call!743612))))

(declare-fun b!8002866 () Bool)

(declare-fun c!1469358 () Bool)

(assert (=> b!8002866 (= c!1469358 (nullable!9679 (regOne!43710 r!13189)))))

(declare-fun e!4714288 () Regex!21599)

(assert (=> b!8002866 (= e!4714288 e!4714286)))

(declare-fun b!8002867 () Bool)

(declare-fun e!4714287 () Regex!21599)

(declare-fun call!743614 () Regex!21599)

(assert (=> b!8002867 (= e!4714287 (Union!21599 call!743614 call!743612))))

(declare-fun b!8002868 () Bool)

(declare-fun e!4714289 () Regex!21599)

(declare-fun e!4714285 () Regex!21599)

(assert (=> b!8002868 (= e!4714289 e!4714285)))

(declare-fun c!1469356 () Bool)

(assert (=> b!8002868 (= c!1469356 ((_ is ElementMatch!21599) r!13189))))

(declare-fun bm!743608 () Bool)

(declare-fun c!1469359 () Bool)

(assert (=> bm!743608 (= call!743614 (derivativeStep!6612 (ite c!1469355 (regOne!43711 r!13189) (ite c!1469359 (reg!21928 r!13189) (regOne!43710 r!13189))) (h!81152 input!5970)))))

(declare-fun bm!743609 () Bool)

(declare-fun call!743615 () Regex!21599)

(assert (=> bm!743609 (= call!743615 call!743614)))

(declare-fun b!8002869 () Bool)

(assert (=> b!8002869 (= e!4714286 (Union!21599 (Concat!30598 call!743613 (regTwo!43710 r!13189)) EmptyLang!21599))))

(declare-fun b!8002870 () Bool)

(assert (=> b!8002870 (= e!4714288 (Concat!30598 call!743615 r!13189))))

(declare-fun d!2386950 () Bool)

(declare-fun lt!2713826 () Regex!21599)

(assert (=> d!2386950 (validRegex!11903 lt!2713826)))

(assert (=> d!2386950 (= lt!2713826 e!4714289)))

(declare-fun c!1469357 () Bool)

(assert (=> d!2386950 (= c!1469357 (or ((_ is EmptyExpr!21599) r!13189) ((_ is EmptyLang!21599) r!13189)))))

(assert (=> d!2386950 (validRegex!11903 r!13189)))

(assert (=> d!2386950 (= (derivativeStep!6612 r!13189 (h!81152 input!5970)) lt!2713826)))

(declare-fun b!8002864 () Bool)

(assert (=> b!8002864 (= e!4714287 e!4714288)))

(assert (=> b!8002864 (= c!1469359 ((_ is Star!21599) r!13189))))

(declare-fun bm!743610 () Bool)

(assert (=> bm!743610 (= call!743613 call!743615)))

(declare-fun b!8002871 () Bool)

(assert (=> b!8002871 (= c!1469355 ((_ is Union!21599) r!13189))))

(assert (=> b!8002871 (= e!4714285 e!4714287)))

(declare-fun b!8002872 () Bool)

(assert (=> b!8002872 (= e!4714285 (ite (= (h!81152 input!5970) (c!1469314 r!13189)) EmptyExpr!21599 EmptyLang!21599))))

(declare-fun b!8002873 () Bool)

(assert (=> b!8002873 (= e!4714289 EmptyLang!21599)))

(assert (= (and d!2386950 c!1469357) b!8002873))

(assert (= (and d!2386950 (not c!1469357)) b!8002868))

(assert (= (and b!8002868 c!1469356) b!8002872))

(assert (= (and b!8002868 (not c!1469356)) b!8002871))

(assert (= (and b!8002871 c!1469355) b!8002867))

(assert (= (and b!8002871 (not c!1469355)) b!8002864))

(assert (= (and b!8002864 c!1469359) b!8002870))

(assert (= (and b!8002864 (not c!1469359)) b!8002866))

(assert (= (and b!8002866 c!1469358) b!8002865))

(assert (= (and b!8002866 (not c!1469358)) b!8002869))

(assert (= (or b!8002865 b!8002869) bm!743610))

(assert (= (or b!8002870 bm!743610) bm!743609))

(assert (= (or b!8002867 b!8002865) bm!743607))

(assert (= (or b!8002867 bm!743609) bm!743608))

(declare-fun m!8369244 () Bool)

(assert (=> bm!743607 m!8369244))

(declare-fun m!8369246 () Bool)

(assert (=> b!8002866 m!8369246))

(declare-fun m!8369248 () Bool)

(assert (=> bm!743608 m!8369248))

(declare-fun m!8369250 () Bool)

(assert (=> d!2386950 m!8369250))

(assert (=> d!2386950 m!8369208))

(assert (=> b!8002743 d!2386950))

(declare-fun e!4714306 () Bool)

(assert (=> b!8002744 (= tp!2394041 e!4714306)))

(declare-fun b!8002909 () Bool)

(declare-fun tp!2394061 () Bool)

(assert (=> b!8002909 (= e!4714306 tp!2394061)))

(declare-fun b!8002908 () Bool)

(declare-fun tp!2394063 () Bool)

(declare-fun tp!2394060 () Bool)

(assert (=> b!8002908 (= e!4714306 (and tp!2394063 tp!2394060))))

(declare-fun b!8002907 () Bool)

(assert (=> b!8002907 (= e!4714306 tp_is_empty!53741)))

(declare-fun b!8002910 () Bool)

(declare-fun tp!2394059 () Bool)

(declare-fun tp!2394062 () Bool)

(assert (=> b!8002910 (= e!4714306 (and tp!2394059 tp!2394062))))

(assert (= (and b!8002744 ((_ is ElementMatch!21599) (regOne!43710 r!13189))) b!8002907))

(assert (= (and b!8002744 ((_ is Concat!30598) (regOne!43710 r!13189))) b!8002908))

(assert (= (and b!8002744 ((_ is Star!21599) (regOne!43710 r!13189))) b!8002909))

(assert (= (and b!8002744 ((_ is Union!21599) (regOne!43710 r!13189))) b!8002910))

(declare-fun e!4714308 () Bool)

(assert (=> b!8002744 (= tp!2394043 e!4714308)))

(declare-fun b!8002914 () Bool)

(declare-fun tp!2394067 () Bool)

(assert (=> b!8002914 (= e!4714308 tp!2394067)))

(declare-fun b!8002913 () Bool)

(declare-fun tp!2394069 () Bool)

(declare-fun tp!2394066 () Bool)

(assert (=> b!8002913 (= e!4714308 (and tp!2394069 tp!2394066))))

(declare-fun b!8002912 () Bool)

(assert (=> b!8002912 (= e!4714308 tp_is_empty!53741)))

(declare-fun b!8002915 () Bool)

(declare-fun tp!2394065 () Bool)

(declare-fun tp!2394068 () Bool)

(assert (=> b!8002915 (= e!4714308 (and tp!2394065 tp!2394068))))

(assert (= (and b!8002744 ((_ is ElementMatch!21599) (regTwo!43710 r!13189))) b!8002912))

(assert (= (and b!8002744 ((_ is Concat!30598) (regTwo!43710 r!13189))) b!8002913))

(assert (= (and b!8002744 ((_ is Star!21599) (regTwo!43710 r!13189))) b!8002914))

(assert (= (and b!8002744 ((_ is Union!21599) (regTwo!43710 r!13189))) b!8002915))

(declare-fun b!8002930 () Bool)

(declare-fun e!4714313 () Bool)

(declare-fun tp!2394082 () Bool)

(assert (=> b!8002930 (= e!4714313 (and tp_is_empty!53741 tp!2394082))))

(assert (=> b!8002745 (= tp!2394045 e!4714313)))

(assert (= (and b!8002745 ((_ is Cons!74704) (t!390571 input!5970))) b!8002930))

(declare-fun e!4714314 () Bool)

(assert (=> b!8002746 (= tp!2394046 e!4714314)))

(declare-fun b!8002933 () Bool)

(declare-fun tp!2394085 () Bool)

(assert (=> b!8002933 (= e!4714314 tp!2394085)))

(declare-fun b!8002932 () Bool)

(declare-fun tp!2394087 () Bool)

(declare-fun tp!2394084 () Bool)

(assert (=> b!8002932 (= e!4714314 (and tp!2394087 tp!2394084))))

(declare-fun b!8002931 () Bool)

(assert (=> b!8002931 (= e!4714314 tp_is_empty!53741)))

(declare-fun b!8002934 () Bool)

(declare-fun tp!2394083 () Bool)

(declare-fun tp!2394086 () Bool)

(assert (=> b!8002934 (= e!4714314 (and tp!2394083 tp!2394086))))

(assert (= (and b!8002746 ((_ is ElementMatch!21599) (reg!21928 r!13189))) b!8002931))

(assert (= (and b!8002746 ((_ is Concat!30598) (reg!21928 r!13189))) b!8002932))

(assert (= (and b!8002746 ((_ is Star!21599) (reg!21928 r!13189))) b!8002933))

(assert (= (and b!8002746 ((_ is Union!21599) (reg!21928 r!13189))) b!8002934))

(declare-fun e!4714315 () Bool)

(assert (=> b!8002742 (= tp!2394042 e!4714315)))

(declare-fun b!8002937 () Bool)

(declare-fun tp!2394090 () Bool)

(assert (=> b!8002937 (= e!4714315 tp!2394090)))

(declare-fun b!8002936 () Bool)

(declare-fun tp!2394092 () Bool)

(declare-fun tp!2394089 () Bool)

(assert (=> b!8002936 (= e!4714315 (and tp!2394092 tp!2394089))))

(declare-fun b!8002935 () Bool)

(assert (=> b!8002935 (= e!4714315 tp_is_empty!53741)))

(declare-fun b!8002938 () Bool)

(declare-fun tp!2394088 () Bool)

(declare-fun tp!2394091 () Bool)

(assert (=> b!8002938 (= e!4714315 (and tp!2394088 tp!2394091))))

(assert (= (and b!8002742 ((_ is ElementMatch!21599) (regOne!43711 r!13189))) b!8002935))

(assert (= (and b!8002742 ((_ is Concat!30598) (regOne!43711 r!13189))) b!8002936))

(assert (= (and b!8002742 ((_ is Star!21599) (regOne!43711 r!13189))) b!8002937))

(assert (= (and b!8002742 ((_ is Union!21599) (regOne!43711 r!13189))) b!8002938))

(declare-fun e!4714316 () Bool)

(assert (=> b!8002742 (= tp!2394044 e!4714316)))

(declare-fun b!8002941 () Bool)

(declare-fun tp!2394095 () Bool)

(assert (=> b!8002941 (= e!4714316 tp!2394095)))

(declare-fun b!8002940 () Bool)

(declare-fun tp!2394097 () Bool)

(declare-fun tp!2394094 () Bool)

(assert (=> b!8002940 (= e!4714316 (and tp!2394097 tp!2394094))))

(declare-fun b!8002939 () Bool)

(assert (=> b!8002939 (= e!4714316 tp_is_empty!53741)))

(declare-fun b!8002942 () Bool)

(declare-fun tp!2394093 () Bool)

(declare-fun tp!2394096 () Bool)

(assert (=> b!8002942 (= e!4714316 (and tp!2394093 tp!2394096))))

(assert (= (and b!8002742 ((_ is ElementMatch!21599) (regTwo!43711 r!13189))) b!8002939))

(assert (= (and b!8002742 ((_ is Concat!30598) (regTwo!43711 r!13189))) b!8002940))

(assert (= (and b!8002742 ((_ is Star!21599) (regTwo!43711 r!13189))) b!8002941))

(assert (= (and b!8002742 ((_ is Union!21599) (regTwo!43711 r!13189))) b!8002942))

(check-sat (not b!8002914) (not bm!743584) (not b!8002937) (not bm!743582) (not b!8002908) (not bm!743585) (not bm!743607) (not b!8002941) (not b!8002930) (not b!8002913) (not d!2386946) (not d!2386950) (not b!8002936) (not b!8002866) (not b!8002932) (not b!8002910) (not b!8002915) (not bm!743608) (not b!8002942) (not bm!743587) (not b!8002934) (not b!8002933) (not b!8002909) (not b!8002938) (not b!8002802) (not b!8002820) (not b!8002793) (not b!8002940) tp_is_empty!53741)
(check-sat)
