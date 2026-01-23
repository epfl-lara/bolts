; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!80162 () Bool)

(assert start!80162)

(declare-fun b!887596 () Bool)

(declare-fun e!581863 () Bool)

(declare-fun tp!279675 () Bool)

(declare-fun tp!279671 () Bool)

(assert (=> b!887596 (= e!581863 (and tp!279675 tp!279671))))

(declare-fun b!887597 () Bool)

(declare-fun tp!279676 () Bool)

(declare-fun tp!279674 () Bool)

(assert (=> b!887597 (= e!581863 (and tp!279676 tp!279674))))

(declare-fun res!403718 () Bool)

(declare-fun e!581866 () Bool)

(assert (=> start!80162 (=> (not res!403718) (not e!581866))))

(declare-datatypes ((C!5152 0))(
  ( (C!5153 (val!2824 Int)) )
))
(declare-datatypes ((Regex!2291 0))(
  ( (ElementMatch!2291 (c!143538 C!5152)) (Concat!4124 (regOne!5094 Regex!2291) (regTwo!5094 Regex!2291)) (EmptyExpr!2291) (Star!2291 (reg!2620 Regex!2291)) (EmptyLang!2291) (Union!2291 (regOne!5095 Regex!2291) (regTwo!5095 Regex!2291)) )
))
(declare-fun r!15766 () Regex!2291)

(declare-fun validRegex!760 (Regex!2291) Bool)

(assert (=> start!80162 (= res!403718 (validRegex!760 r!15766))))

(assert (=> start!80162 e!581866))

(assert (=> start!80162 e!581863))

(declare-fun e!581865 () Bool)

(assert (=> start!80162 e!581865))

(declare-fun b!887598 () Bool)

(declare-fun tp!279673 () Bool)

(assert (=> b!887598 (= e!581863 tp!279673)))

(declare-fun b!887599 () Bool)

(declare-fun e!581867 () Bool)

(declare-datatypes ((List!9521 0))(
  ( (Nil!9505) (Cons!9505 (h!14906 C!5152) (t!100567 List!9521)) )
))
(declare-fun s!10566 () List!9521)

(declare-fun matchR!829 (Regex!2291 List!9521) Bool)

(assert (=> b!887599 (= e!581867 (matchR!829 (regTwo!5095 r!15766) s!10566))))

(declare-fun b!887600 () Bool)

(declare-fun e!581864 () Bool)

(assert (=> b!887600 (= e!581866 (not e!581864))))

(declare-fun res!403720 () Bool)

(assert (=> b!887600 (=> res!403720 e!581864)))

(declare-fun lt!331883 () Bool)

(get-info :version)

(assert (=> b!887600 (= res!403720 (or (not lt!331883) (and ((_ is Concat!4124) r!15766) ((_ is EmptyExpr!2291) (regOne!5094 r!15766))) (and ((_ is Concat!4124) r!15766) ((_ is EmptyExpr!2291) (regTwo!5094 r!15766))) ((_ is Concat!4124) r!15766) (not ((_ is Union!2291) r!15766))))))

(declare-fun matchRSpec!92 (Regex!2291 List!9521) Bool)

(assert (=> b!887600 (= lt!331883 (matchRSpec!92 r!15766 s!10566))))

(assert (=> b!887600 (= lt!331883 (matchR!829 r!15766 s!10566))))

(declare-datatypes ((Unit!14161 0))(
  ( (Unit!14162) )
))
(declare-fun lt!331885 () Unit!14161)

(declare-fun mainMatchTheorem!92 (Regex!2291 List!9521) Unit!14161)

(assert (=> b!887600 (= lt!331885 (mainMatchTheorem!92 r!15766 s!10566))))

(declare-fun b!887601 () Bool)

(declare-fun tp_is_empty!4225 () Bool)

(declare-fun tp!279672 () Bool)

(assert (=> b!887601 (= e!581865 (and tp_is_empty!4225 tp!279672))))

(declare-fun b!887602 () Bool)

(assert (=> b!887602 (= e!581864 (validRegex!760 (regOne!5095 r!15766)))))

(assert (=> b!887602 e!581867))

(declare-fun res!403719 () Bool)

(assert (=> b!887602 (=> res!403719 e!581867)))

(assert (=> b!887602 (= res!403719 (matchR!829 (regOne!5095 r!15766) s!10566))))

(declare-fun lt!331884 () Unit!14161)

(declare-fun lemmaRegexUnionAcceptsThenOneOfTheTwoAccepts!2 (Regex!2291 Regex!2291 List!9521) Unit!14161)

(assert (=> b!887602 (= lt!331884 (lemmaRegexUnionAcceptsThenOneOfTheTwoAccepts!2 (regOne!5095 r!15766) (regTwo!5095 r!15766) s!10566))))

(declare-fun b!887603 () Bool)

(assert (=> b!887603 (= e!581863 tp_is_empty!4225)))

(assert (= (and start!80162 res!403718) b!887600))

(assert (= (and b!887600 (not res!403720)) b!887602))

(assert (= (and b!887602 (not res!403719)) b!887599))

(assert (= (and start!80162 ((_ is ElementMatch!2291) r!15766)) b!887603))

(assert (= (and start!80162 ((_ is Concat!4124) r!15766)) b!887596))

(assert (= (and start!80162 ((_ is Star!2291) r!15766)) b!887598))

(assert (= (and start!80162 ((_ is Union!2291) r!15766)) b!887597))

(assert (= (and start!80162 ((_ is Cons!9505) s!10566)) b!887601))

(declare-fun m!1132709 () Bool)

(assert (=> start!80162 m!1132709))

(declare-fun m!1132711 () Bool)

(assert (=> b!887599 m!1132711))

(declare-fun m!1132713 () Bool)

(assert (=> b!887600 m!1132713))

(declare-fun m!1132715 () Bool)

(assert (=> b!887600 m!1132715))

(declare-fun m!1132717 () Bool)

(assert (=> b!887600 m!1132717))

(declare-fun m!1132719 () Bool)

(assert (=> b!887602 m!1132719))

(declare-fun m!1132721 () Bool)

(assert (=> b!887602 m!1132721))

(declare-fun m!1132723 () Bool)

(assert (=> b!887602 m!1132723))

(check-sat (not b!887598) (not b!887602) (not b!887600) (not b!887601) (not start!80162) tp_is_empty!4225 (not b!887599) (not b!887596) (not b!887597))
(check-sat)
(get-model)

(declare-fun c!143548 () Bool)

(declare-fun c!143547 () Bool)

(declare-fun bm!52141 () Bool)

(declare-fun call!52148 () Bool)

(assert (=> bm!52141 (= call!52148 (validRegex!760 (ite c!143548 (reg!2620 r!15766) (ite c!143547 (regTwo!5095 r!15766) (regTwo!5094 r!15766)))))))

(declare-fun b!887640 () Bool)

(declare-fun e!581900 () Bool)

(declare-fun e!581899 () Bool)

(assert (=> b!887640 (= e!581900 e!581899)))

(assert (=> b!887640 (= c!143548 ((_ is Star!2291) r!15766))))

(declare-fun b!887641 () Bool)

(declare-fun e!581902 () Bool)

(assert (=> b!887641 (= e!581899 e!581902)))

(assert (=> b!887641 (= c!143547 ((_ is Union!2291) r!15766))))

(declare-fun bm!52142 () Bool)

(declare-fun call!52146 () Bool)

(assert (=> bm!52142 (= call!52146 call!52148)))

(declare-fun b!887642 () Bool)

(declare-fun e!581897 () Bool)

(assert (=> b!887642 (= e!581897 call!52148)))

(declare-fun b!887643 () Bool)

(declare-fun e!581901 () Bool)

(assert (=> b!887643 (= e!581901 call!52146)))

(declare-fun bm!52143 () Bool)

(declare-fun call!52147 () Bool)

(assert (=> bm!52143 (= call!52147 (validRegex!760 (ite c!143547 (regOne!5095 r!15766) (regOne!5094 r!15766))))))

(declare-fun b!887644 () Bool)

(declare-fun e!581896 () Bool)

(assert (=> b!887644 (= e!581896 e!581901)))

(declare-fun res!403742 () Bool)

(assert (=> b!887644 (=> (not res!403742) (not e!581901))))

(assert (=> b!887644 (= res!403742 call!52147)))

(declare-fun b!887645 () Bool)

(declare-fun res!403741 () Bool)

(assert (=> b!887645 (=> res!403741 e!581896)))

(assert (=> b!887645 (= res!403741 (not ((_ is Concat!4124) r!15766)))))

(assert (=> b!887645 (= e!581902 e!581896)))

(declare-fun d!277077 () Bool)

(declare-fun res!403743 () Bool)

(assert (=> d!277077 (=> res!403743 e!581900)))

(assert (=> d!277077 (= res!403743 ((_ is ElementMatch!2291) r!15766))))

(assert (=> d!277077 (= (validRegex!760 r!15766) e!581900)))

(declare-fun b!887646 () Bool)

(declare-fun res!403745 () Bool)

(declare-fun e!581898 () Bool)

(assert (=> b!887646 (=> (not res!403745) (not e!581898))))

(assert (=> b!887646 (= res!403745 call!52147)))

(assert (=> b!887646 (= e!581902 e!581898)))

(declare-fun b!887647 () Bool)

(assert (=> b!887647 (= e!581899 e!581897)))

(declare-fun res!403744 () Bool)

(declare-fun nullable!591 (Regex!2291) Bool)

(assert (=> b!887647 (= res!403744 (not (nullable!591 (reg!2620 r!15766))))))

(assert (=> b!887647 (=> (not res!403744) (not e!581897))))

(declare-fun b!887648 () Bool)

(assert (=> b!887648 (= e!581898 call!52146)))

(assert (= (and d!277077 (not res!403743)) b!887640))

(assert (= (and b!887640 c!143548) b!887647))

(assert (= (and b!887640 (not c!143548)) b!887641))

(assert (= (and b!887647 res!403744) b!887642))

(assert (= (and b!887641 c!143547) b!887646))

(assert (= (and b!887641 (not c!143547)) b!887645))

(assert (= (and b!887646 res!403745) b!887648))

(assert (= (and b!887645 (not res!403741)) b!887644))

(assert (= (and b!887644 res!403742) b!887643))

(assert (= (or b!887648 b!887643) bm!52142))

(assert (= (or b!887646 b!887644) bm!52143))

(assert (= (or b!887642 bm!52142) bm!52141))

(declare-fun m!1132725 () Bool)

(assert (=> bm!52141 m!1132725))

(declare-fun m!1132727 () Bool)

(assert (=> bm!52143 m!1132727))

(declare-fun m!1132729 () Bool)

(assert (=> b!887647 m!1132729))

(assert (=> start!80162 d!277077))

(declare-fun b!887861 () Bool)

(assert (=> b!887861 true))

(assert (=> b!887861 true))

(declare-fun bs!234783 () Bool)

(declare-fun b!887862 () Bool)

(assert (= bs!234783 (and b!887862 b!887861)))

(declare-fun lambda!27490 () Int)

(declare-fun lambda!27489 () Int)

(assert (=> bs!234783 (not (= lambda!27490 lambda!27489))))

(assert (=> b!887862 true))

(assert (=> b!887862 true))

(declare-fun b!887857 () Bool)

(declare-fun c!143591 () Bool)

(assert (=> b!887857 (= c!143591 ((_ is ElementMatch!2291) r!15766))))

(declare-fun e!582013 () Bool)

(declare-fun e!582011 () Bool)

(assert (=> b!887857 (= e!582013 e!582011)))

(declare-fun c!143589 () Bool)

(declare-fun bm!52165 () Bool)

(declare-fun call!52170 () Bool)

(declare-fun Exists!84 (Int) Bool)

(assert (=> bm!52165 (= call!52170 (Exists!84 (ite c!143589 lambda!27489 lambda!27490)))))

(declare-fun b!887858 () Bool)

(declare-fun res!403838 () Bool)

(declare-fun e!582016 () Bool)

(assert (=> b!887858 (=> res!403838 e!582016)))

(declare-fun call!52171 () Bool)

(assert (=> b!887858 (= res!403838 call!52171)))

(declare-fun e!582015 () Bool)

(assert (=> b!887858 (= e!582015 e!582016)))

(declare-fun bm!52166 () Bool)

(declare-fun isEmpty!5713 (List!9521) Bool)

(assert (=> bm!52166 (= call!52171 (isEmpty!5713 s!10566))))

(declare-fun b!887859 () Bool)

(declare-fun e!582017 () Bool)

(assert (=> b!887859 (= e!582017 call!52171)))

(declare-fun d!277081 () Bool)

(declare-fun c!143588 () Bool)

(assert (=> d!277081 (= c!143588 ((_ is EmptyExpr!2291) r!15766))))

(assert (=> d!277081 (= (matchRSpec!92 r!15766 s!10566) e!582017)))

(declare-fun b!887860 () Bool)

(declare-fun e!582014 () Bool)

(assert (=> b!887860 (= e!582014 (matchRSpec!92 (regTwo!5095 r!15766) s!10566))))

(assert (=> b!887861 (= e!582016 call!52170)))

(assert (=> b!887862 (= e!582015 call!52170)))

(declare-fun b!887863 () Bool)

(declare-fun e!582012 () Bool)

(assert (=> b!887863 (= e!582012 e!582014)))

(declare-fun res!403839 () Bool)

(assert (=> b!887863 (= res!403839 (matchRSpec!92 (regOne!5095 r!15766) s!10566))))

(assert (=> b!887863 (=> res!403839 e!582014)))

(declare-fun b!887864 () Bool)

(assert (=> b!887864 (= e!582012 e!582015)))

(assert (=> b!887864 (= c!143589 ((_ is Star!2291) r!15766))))

(declare-fun b!887865 () Bool)

(declare-fun c!143590 () Bool)

(assert (=> b!887865 (= c!143590 ((_ is Union!2291) r!15766))))

(assert (=> b!887865 (= e!582011 e!582012)))

(declare-fun b!887866 () Bool)

(assert (=> b!887866 (= e!582011 (= s!10566 (Cons!9505 (c!143538 r!15766) Nil!9505)))))

(declare-fun b!887867 () Bool)

(assert (=> b!887867 (= e!582017 e!582013)))

(declare-fun res!403837 () Bool)

(assert (=> b!887867 (= res!403837 (not ((_ is EmptyLang!2291) r!15766)))))

(assert (=> b!887867 (=> (not res!403837) (not e!582013))))

(assert (= (and d!277081 c!143588) b!887859))

(assert (= (and d!277081 (not c!143588)) b!887867))

(assert (= (and b!887867 res!403837) b!887857))

(assert (= (and b!887857 c!143591) b!887866))

(assert (= (and b!887857 (not c!143591)) b!887865))

(assert (= (and b!887865 c!143590) b!887863))

(assert (= (and b!887865 (not c!143590)) b!887864))

(assert (= (and b!887863 (not res!403839)) b!887860))

(assert (= (and b!887864 c!143589) b!887858))

(assert (= (and b!887864 (not c!143589)) b!887862))

(assert (= (and b!887858 (not res!403838)) b!887861))

(assert (= (or b!887861 b!887862) bm!52165))

(assert (= (or b!887859 b!887858) bm!52166))

(declare-fun m!1132781 () Bool)

(assert (=> bm!52165 m!1132781))

(declare-fun m!1132783 () Bool)

(assert (=> bm!52166 m!1132783))

(declare-fun m!1132785 () Bool)

(assert (=> b!887860 m!1132785))

(declare-fun m!1132787 () Bool)

(assert (=> b!887863 m!1132787))

(assert (=> b!887600 d!277081))

(declare-fun b!887900 () Bool)

(declare-fun res!403857 () Bool)

(declare-fun e!582034 () Bool)

(assert (=> b!887900 (=> res!403857 e!582034)))

(assert (=> b!887900 (= res!403857 (not ((_ is ElementMatch!2291) r!15766)))))

(declare-fun e!582035 () Bool)

(assert (=> b!887900 (= e!582035 e!582034)))

(declare-fun b!887902 () Bool)

(declare-fun e!582036 () Bool)

(assert (=> b!887902 (= e!582036 e!582035)))

(declare-fun c!143599 () Bool)

(assert (=> b!887902 (= c!143599 ((_ is EmptyLang!2291) r!15766))))

(declare-fun b!887903 () Bool)

(declare-fun e!582033 () Bool)

(declare-fun head!1556 (List!9521) C!5152)

(assert (=> b!887903 (= e!582033 (not (= (head!1556 s!10566) (c!143538 r!15766))))))

(declare-fun bm!52169 () Bool)

(declare-fun call!52174 () Bool)

(assert (=> bm!52169 (= call!52174 (isEmpty!5713 s!10566))))

(declare-fun b!887904 () Bool)

(declare-fun lt!331899 () Bool)

(assert (=> b!887904 (= e!582036 (= lt!331899 call!52174))))

(declare-fun b!887905 () Bool)

(declare-fun e!582032 () Bool)

(assert (=> b!887905 (= e!582034 e!582032)))

(declare-fun res!403862 () Bool)

(assert (=> b!887905 (=> (not res!403862) (not e!582032))))

(assert (=> b!887905 (= res!403862 (not lt!331899))))

(declare-fun b!887906 () Bool)

(declare-fun e!582038 () Bool)

(declare-fun derivativeStep!403 (Regex!2291 C!5152) Regex!2291)

(declare-fun tail!1118 (List!9521) List!9521)

(assert (=> b!887906 (= e!582038 (matchR!829 (derivativeStep!403 r!15766 (head!1556 s!10566)) (tail!1118 s!10566)))))

(declare-fun d!277097 () Bool)

(assert (=> d!277097 e!582036))

(declare-fun c!143598 () Bool)

(assert (=> d!277097 (= c!143598 ((_ is EmptyExpr!2291) r!15766))))

(assert (=> d!277097 (= lt!331899 e!582038)))

(declare-fun c!143600 () Bool)

(assert (=> d!277097 (= c!143600 (isEmpty!5713 s!10566))))

(assert (=> d!277097 (validRegex!760 r!15766)))

(assert (=> d!277097 (= (matchR!829 r!15766 s!10566) lt!331899)))

(declare-fun b!887901 () Bool)

(declare-fun res!403859 () Bool)

(declare-fun e!582037 () Bool)

(assert (=> b!887901 (=> (not res!403859) (not e!582037))))

(assert (=> b!887901 (= res!403859 (not call!52174))))

(declare-fun b!887907 () Bool)

(declare-fun res!403863 () Bool)

(assert (=> b!887907 (=> res!403863 e!582033)))

(assert (=> b!887907 (= res!403863 (not (isEmpty!5713 (tail!1118 s!10566))))))

(declare-fun b!887908 () Bool)

(assert (=> b!887908 (= e!582038 (nullable!591 r!15766))))

(declare-fun b!887909 () Bool)

(assert (=> b!887909 (= e!582032 e!582033)))

(declare-fun res!403861 () Bool)

(assert (=> b!887909 (=> res!403861 e!582033)))

(assert (=> b!887909 (= res!403861 call!52174)))

(declare-fun b!887910 () Bool)

(assert (=> b!887910 (= e!582035 (not lt!331899))))

(declare-fun b!887911 () Bool)

(assert (=> b!887911 (= e!582037 (= (head!1556 s!10566) (c!143538 r!15766)))))

(declare-fun b!887912 () Bool)

(declare-fun res!403860 () Bool)

(assert (=> b!887912 (=> res!403860 e!582034)))

(assert (=> b!887912 (= res!403860 e!582037)))

(declare-fun res!403858 () Bool)

(assert (=> b!887912 (=> (not res!403858) (not e!582037))))

(assert (=> b!887912 (= res!403858 lt!331899)))

(declare-fun b!887913 () Bool)

(declare-fun res!403856 () Bool)

(assert (=> b!887913 (=> (not res!403856) (not e!582037))))

(assert (=> b!887913 (= res!403856 (isEmpty!5713 (tail!1118 s!10566)))))

(assert (= (and d!277097 c!143600) b!887908))

(assert (= (and d!277097 (not c!143600)) b!887906))

(assert (= (and d!277097 c!143598) b!887904))

(assert (= (and d!277097 (not c!143598)) b!887902))

(assert (= (and b!887902 c!143599) b!887910))

(assert (= (and b!887902 (not c!143599)) b!887900))

(assert (= (and b!887900 (not res!403857)) b!887912))

(assert (= (and b!887912 res!403858) b!887901))

(assert (= (and b!887901 res!403859) b!887913))

(assert (= (and b!887913 res!403856) b!887911))

(assert (= (and b!887912 (not res!403860)) b!887905))

(assert (= (and b!887905 res!403862) b!887909))

(assert (= (and b!887909 (not res!403861)) b!887907))

(assert (= (and b!887907 (not res!403863)) b!887903))

(assert (= (or b!887904 b!887901 b!887909) bm!52169))

(assert (=> bm!52169 m!1132783))

(declare-fun m!1132789 () Bool)

(assert (=> b!887906 m!1132789))

(assert (=> b!887906 m!1132789))

(declare-fun m!1132791 () Bool)

(assert (=> b!887906 m!1132791))

(declare-fun m!1132793 () Bool)

(assert (=> b!887906 m!1132793))

(assert (=> b!887906 m!1132791))

(assert (=> b!887906 m!1132793))

(declare-fun m!1132795 () Bool)

(assert (=> b!887906 m!1132795))

(assert (=> d!277097 m!1132783))

(assert (=> d!277097 m!1132709))

(assert (=> b!887903 m!1132789))

(assert (=> b!887913 m!1132793))

(assert (=> b!887913 m!1132793))

(declare-fun m!1132797 () Bool)

(assert (=> b!887913 m!1132797))

(assert (=> b!887911 m!1132789))

(declare-fun m!1132799 () Bool)

(assert (=> b!887908 m!1132799))

(assert (=> b!887907 m!1132793))

(assert (=> b!887907 m!1132793))

(assert (=> b!887907 m!1132797))

(assert (=> b!887600 d!277097))

(declare-fun d!277099 () Bool)

(assert (=> d!277099 (= (matchR!829 r!15766 s!10566) (matchRSpec!92 r!15766 s!10566))))

(declare-fun lt!331902 () Unit!14161)

(declare-fun choose!5292 (Regex!2291 List!9521) Unit!14161)

(assert (=> d!277099 (= lt!331902 (choose!5292 r!15766 s!10566))))

(assert (=> d!277099 (validRegex!760 r!15766)))

(assert (=> d!277099 (= (mainMatchTheorem!92 r!15766 s!10566) lt!331902)))

(declare-fun bs!234784 () Bool)

(assert (= bs!234784 d!277099))

(assert (=> bs!234784 m!1132715))

(assert (=> bs!234784 m!1132713))

(declare-fun m!1132801 () Bool)

(assert (=> bs!234784 m!1132801))

(assert (=> bs!234784 m!1132709))

(assert (=> b!887600 d!277099))

(declare-fun b!887914 () Bool)

(declare-fun res!403865 () Bool)

(declare-fun e!582041 () Bool)

(assert (=> b!887914 (=> res!403865 e!582041)))

(assert (=> b!887914 (= res!403865 (not ((_ is ElementMatch!2291) (regTwo!5095 r!15766))))))

(declare-fun e!582042 () Bool)

(assert (=> b!887914 (= e!582042 e!582041)))

(declare-fun b!887916 () Bool)

(declare-fun e!582043 () Bool)

(assert (=> b!887916 (= e!582043 e!582042)))

(declare-fun c!143602 () Bool)

(assert (=> b!887916 (= c!143602 ((_ is EmptyLang!2291) (regTwo!5095 r!15766)))))

(declare-fun b!887917 () Bool)

(declare-fun e!582040 () Bool)

(assert (=> b!887917 (= e!582040 (not (= (head!1556 s!10566) (c!143538 (regTwo!5095 r!15766)))))))

(declare-fun bm!52170 () Bool)

(declare-fun call!52175 () Bool)

(assert (=> bm!52170 (= call!52175 (isEmpty!5713 s!10566))))

(declare-fun b!887918 () Bool)

(declare-fun lt!331903 () Bool)

(assert (=> b!887918 (= e!582043 (= lt!331903 call!52175))))

(declare-fun b!887919 () Bool)

(declare-fun e!582039 () Bool)

(assert (=> b!887919 (= e!582041 e!582039)))

(declare-fun res!403870 () Bool)

(assert (=> b!887919 (=> (not res!403870) (not e!582039))))

(assert (=> b!887919 (= res!403870 (not lt!331903))))

(declare-fun b!887920 () Bool)

(declare-fun e!582045 () Bool)

(assert (=> b!887920 (= e!582045 (matchR!829 (derivativeStep!403 (regTwo!5095 r!15766) (head!1556 s!10566)) (tail!1118 s!10566)))))

(declare-fun d!277101 () Bool)

(assert (=> d!277101 e!582043))

(declare-fun c!143601 () Bool)

(assert (=> d!277101 (= c!143601 ((_ is EmptyExpr!2291) (regTwo!5095 r!15766)))))

(assert (=> d!277101 (= lt!331903 e!582045)))

(declare-fun c!143603 () Bool)

(assert (=> d!277101 (= c!143603 (isEmpty!5713 s!10566))))

(assert (=> d!277101 (validRegex!760 (regTwo!5095 r!15766))))

(assert (=> d!277101 (= (matchR!829 (regTwo!5095 r!15766) s!10566) lt!331903)))

(declare-fun b!887915 () Bool)

(declare-fun res!403867 () Bool)

(declare-fun e!582044 () Bool)

(assert (=> b!887915 (=> (not res!403867) (not e!582044))))

(assert (=> b!887915 (= res!403867 (not call!52175))))

(declare-fun b!887921 () Bool)

(declare-fun res!403871 () Bool)

(assert (=> b!887921 (=> res!403871 e!582040)))

(assert (=> b!887921 (= res!403871 (not (isEmpty!5713 (tail!1118 s!10566))))))

(declare-fun b!887922 () Bool)

(assert (=> b!887922 (= e!582045 (nullable!591 (regTwo!5095 r!15766)))))

(declare-fun b!887923 () Bool)

(assert (=> b!887923 (= e!582039 e!582040)))

(declare-fun res!403869 () Bool)

(assert (=> b!887923 (=> res!403869 e!582040)))

(assert (=> b!887923 (= res!403869 call!52175)))

(declare-fun b!887924 () Bool)

(assert (=> b!887924 (= e!582042 (not lt!331903))))

(declare-fun b!887925 () Bool)

(assert (=> b!887925 (= e!582044 (= (head!1556 s!10566) (c!143538 (regTwo!5095 r!15766))))))

(declare-fun b!887926 () Bool)

(declare-fun res!403868 () Bool)

(assert (=> b!887926 (=> res!403868 e!582041)))

(assert (=> b!887926 (= res!403868 e!582044)))

(declare-fun res!403866 () Bool)

(assert (=> b!887926 (=> (not res!403866) (not e!582044))))

(assert (=> b!887926 (= res!403866 lt!331903)))

(declare-fun b!887927 () Bool)

(declare-fun res!403864 () Bool)

(assert (=> b!887927 (=> (not res!403864) (not e!582044))))

(assert (=> b!887927 (= res!403864 (isEmpty!5713 (tail!1118 s!10566)))))

(assert (= (and d!277101 c!143603) b!887922))

(assert (= (and d!277101 (not c!143603)) b!887920))

(assert (= (and d!277101 c!143601) b!887918))

(assert (= (and d!277101 (not c!143601)) b!887916))

(assert (= (and b!887916 c!143602) b!887924))

(assert (= (and b!887916 (not c!143602)) b!887914))

(assert (= (and b!887914 (not res!403865)) b!887926))

(assert (= (and b!887926 res!403866) b!887915))

(assert (= (and b!887915 res!403867) b!887927))

(assert (= (and b!887927 res!403864) b!887925))

(assert (= (and b!887926 (not res!403868)) b!887919))

(assert (= (and b!887919 res!403870) b!887923))

(assert (= (and b!887923 (not res!403869)) b!887921))

(assert (= (and b!887921 (not res!403871)) b!887917))

(assert (= (or b!887918 b!887915 b!887923) bm!52170))

(assert (=> bm!52170 m!1132783))

(assert (=> b!887920 m!1132789))

(assert (=> b!887920 m!1132789))

(declare-fun m!1132803 () Bool)

(assert (=> b!887920 m!1132803))

(assert (=> b!887920 m!1132793))

(assert (=> b!887920 m!1132803))

(assert (=> b!887920 m!1132793))

(declare-fun m!1132805 () Bool)

(assert (=> b!887920 m!1132805))

(assert (=> d!277101 m!1132783))

(declare-fun m!1132807 () Bool)

(assert (=> d!277101 m!1132807))

(assert (=> b!887917 m!1132789))

(assert (=> b!887927 m!1132793))

(assert (=> b!887927 m!1132793))

(assert (=> b!887927 m!1132797))

(assert (=> b!887925 m!1132789))

(declare-fun m!1132809 () Bool)

(assert (=> b!887922 m!1132809))

(assert (=> b!887921 m!1132793))

(assert (=> b!887921 m!1132793))

(assert (=> b!887921 m!1132797))

(assert (=> b!887599 d!277101))

(declare-fun c!143605 () Bool)

(declare-fun call!52178 () Bool)

(declare-fun c!143604 () Bool)

(declare-fun bm!52171 () Bool)

(assert (=> bm!52171 (= call!52178 (validRegex!760 (ite c!143605 (reg!2620 (regOne!5095 r!15766)) (ite c!143604 (regTwo!5095 (regOne!5095 r!15766)) (regTwo!5094 (regOne!5095 r!15766))))))))

(declare-fun b!887928 () Bool)

(declare-fun e!582050 () Bool)

(declare-fun e!582049 () Bool)

(assert (=> b!887928 (= e!582050 e!582049)))

(assert (=> b!887928 (= c!143605 ((_ is Star!2291) (regOne!5095 r!15766)))))

(declare-fun b!887929 () Bool)

(declare-fun e!582052 () Bool)

(assert (=> b!887929 (= e!582049 e!582052)))

(assert (=> b!887929 (= c!143604 ((_ is Union!2291) (regOne!5095 r!15766)))))

(declare-fun bm!52172 () Bool)

(declare-fun call!52176 () Bool)

(assert (=> bm!52172 (= call!52176 call!52178)))

(declare-fun b!887930 () Bool)

(declare-fun e!582047 () Bool)

(assert (=> b!887930 (= e!582047 call!52178)))

(declare-fun b!887931 () Bool)

(declare-fun e!582051 () Bool)

(assert (=> b!887931 (= e!582051 call!52176)))

(declare-fun bm!52173 () Bool)

(declare-fun call!52177 () Bool)

(assert (=> bm!52173 (= call!52177 (validRegex!760 (ite c!143604 (regOne!5095 (regOne!5095 r!15766)) (regOne!5094 (regOne!5095 r!15766)))))))

(declare-fun b!887932 () Bool)

(declare-fun e!582046 () Bool)

(assert (=> b!887932 (= e!582046 e!582051)))

(declare-fun res!403873 () Bool)

(assert (=> b!887932 (=> (not res!403873) (not e!582051))))

(assert (=> b!887932 (= res!403873 call!52177)))

(declare-fun b!887933 () Bool)

(declare-fun res!403872 () Bool)

(assert (=> b!887933 (=> res!403872 e!582046)))

(assert (=> b!887933 (= res!403872 (not ((_ is Concat!4124) (regOne!5095 r!15766))))))

(assert (=> b!887933 (= e!582052 e!582046)))

(declare-fun d!277103 () Bool)

(declare-fun res!403874 () Bool)

(assert (=> d!277103 (=> res!403874 e!582050)))

(assert (=> d!277103 (= res!403874 ((_ is ElementMatch!2291) (regOne!5095 r!15766)))))

(assert (=> d!277103 (= (validRegex!760 (regOne!5095 r!15766)) e!582050)))

(declare-fun b!887934 () Bool)

(declare-fun res!403876 () Bool)

(declare-fun e!582048 () Bool)

(assert (=> b!887934 (=> (not res!403876) (not e!582048))))

(assert (=> b!887934 (= res!403876 call!52177)))

(assert (=> b!887934 (= e!582052 e!582048)))

(declare-fun b!887935 () Bool)

(assert (=> b!887935 (= e!582049 e!582047)))

(declare-fun res!403875 () Bool)

(assert (=> b!887935 (= res!403875 (not (nullable!591 (reg!2620 (regOne!5095 r!15766)))))))

(assert (=> b!887935 (=> (not res!403875) (not e!582047))))

(declare-fun b!887936 () Bool)

(assert (=> b!887936 (= e!582048 call!52176)))

(assert (= (and d!277103 (not res!403874)) b!887928))

(assert (= (and b!887928 c!143605) b!887935))

(assert (= (and b!887928 (not c!143605)) b!887929))

(assert (= (and b!887935 res!403875) b!887930))

(assert (= (and b!887929 c!143604) b!887934))

(assert (= (and b!887929 (not c!143604)) b!887933))

(assert (= (and b!887934 res!403876) b!887936))

(assert (= (and b!887933 (not res!403872)) b!887932))

(assert (= (and b!887932 res!403873) b!887931))

(assert (= (or b!887936 b!887931) bm!52172))

(assert (= (or b!887934 b!887932) bm!52173))

(assert (= (or b!887930 bm!52172) bm!52171))

(declare-fun m!1132811 () Bool)

(assert (=> bm!52171 m!1132811))

(declare-fun m!1132813 () Bool)

(assert (=> bm!52173 m!1132813))

(declare-fun m!1132815 () Bool)

(assert (=> b!887935 m!1132815))

(assert (=> b!887602 d!277103))

(declare-fun b!887937 () Bool)

(declare-fun res!403878 () Bool)

(declare-fun e!582055 () Bool)

(assert (=> b!887937 (=> res!403878 e!582055)))

(assert (=> b!887937 (= res!403878 (not ((_ is ElementMatch!2291) (regOne!5095 r!15766))))))

(declare-fun e!582056 () Bool)

(assert (=> b!887937 (= e!582056 e!582055)))

(declare-fun b!887939 () Bool)

(declare-fun e!582057 () Bool)

(assert (=> b!887939 (= e!582057 e!582056)))

(declare-fun c!143607 () Bool)

(assert (=> b!887939 (= c!143607 ((_ is EmptyLang!2291) (regOne!5095 r!15766)))))

(declare-fun b!887940 () Bool)

(declare-fun e!582054 () Bool)

(assert (=> b!887940 (= e!582054 (not (= (head!1556 s!10566) (c!143538 (regOne!5095 r!15766)))))))

(declare-fun bm!52174 () Bool)

(declare-fun call!52179 () Bool)

(assert (=> bm!52174 (= call!52179 (isEmpty!5713 s!10566))))

(declare-fun b!887941 () Bool)

(declare-fun lt!331904 () Bool)

(assert (=> b!887941 (= e!582057 (= lt!331904 call!52179))))

(declare-fun b!887942 () Bool)

(declare-fun e!582053 () Bool)

(assert (=> b!887942 (= e!582055 e!582053)))

(declare-fun res!403883 () Bool)

(assert (=> b!887942 (=> (not res!403883) (not e!582053))))

(assert (=> b!887942 (= res!403883 (not lt!331904))))

(declare-fun b!887943 () Bool)

(declare-fun e!582059 () Bool)

(assert (=> b!887943 (= e!582059 (matchR!829 (derivativeStep!403 (regOne!5095 r!15766) (head!1556 s!10566)) (tail!1118 s!10566)))))

(declare-fun d!277105 () Bool)

(assert (=> d!277105 e!582057))

(declare-fun c!143606 () Bool)

(assert (=> d!277105 (= c!143606 ((_ is EmptyExpr!2291) (regOne!5095 r!15766)))))

(assert (=> d!277105 (= lt!331904 e!582059)))

(declare-fun c!143608 () Bool)

(assert (=> d!277105 (= c!143608 (isEmpty!5713 s!10566))))

(assert (=> d!277105 (validRegex!760 (regOne!5095 r!15766))))

(assert (=> d!277105 (= (matchR!829 (regOne!5095 r!15766) s!10566) lt!331904)))

(declare-fun b!887938 () Bool)

(declare-fun res!403880 () Bool)

(declare-fun e!582058 () Bool)

(assert (=> b!887938 (=> (not res!403880) (not e!582058))))

(assert (=> b!887938 (= res!403880 (not call!52179))))

(declare-fun b!887944 () Bool)

(declare-fun res!403884 () Bool)

(assert (=> b!887944 (=> res!403884 e!582054)))

(assert (=> b!887944 (= res!403884 (not (isEmpty!5713 (tail!1118 s!10566))))))

(declare-fun b!887945 () Bool)

(assert (=> b!887945 (= e!582059 (nullable!591 (regOne!5095 r!15766)))))

(declare-fun b!887946 () Bool)

(assert (=> b!887946 (= e!582053 e!582054)))

(declare-fun res!403882 () Bool)

(assert (=> b!887946 (=> res!403882 e!582054)))

(assert (=> b!887946 (= res!403882 call!52179)))

(declare-fun b!887947 () Bool)

(assert (=> b!887947 (= e!582056 (not lt!331904))))

(declare-fun b!887948 () Bool)

(assert (=> b!887948 (= e!582058 (= (head!1556 s!10566) (c!143538 (regOne!5095 r!15766))))))

(declare-fun b!887949 () Bool)

(declare-fun res!403881 () Bool)

(assert (=> b!887949 (=> res!403881 e!582055)))

(assert (=> b!887949 (= res!403881 e!582058)))

(declare-fun res!403879 () Bool)

(assert (=> b!887949 (=> (not res!403879) (not e!582058))))

(assert (=> b!887949 (= res!403879 lt!331904)))

(declare-fun b!887950 () Bool)

(declare-fun res!403877 () Bool)

(assert (=> b!887950 (=> (not res!403877) (not e!582058))))

(assert (=> b!887950 (= res!403877 (isEmpty!5713 (tail!1118 s!10566)))))

(assert (= (and d!277105 c!143608) b!887945))

(assert (= (and d!277105 (not c!143608)) b!887943))

(assert (= (and d!277105 c!143606) b!887941))

(assert (= (and d!277105 (not c!143606)) b!887939))

(assert (= (and b!887939 c!143607) b!887947))

(assert (= (and b!887939 (not c!143607)) b!887937))

(assert (= (and b!887937 (not res!403878)) b!887949))

(assert (= (and b!887949 res!403879) b!887938))

(assert (= (and b!887938 res!403880) b!887950))

(assert (= (and b!887950 res!403877) b!887948))

(assert (= (and b!887949 (not res!403881)) b!887942))

(assert (= (and b!887942 res!403883) b!887946))

(assert (= (and b!887946 (not res!403882)) b!887944))

(assert (= (and b!887944 (not res!403884)) b!887940))

(assert (= (or b!887941 b!887938 b!887946) bm!52174))

(assert (=> bm!52174 m!1132783))

(assert (=> b!887943 m!1132789))

(assert (=> b!887943 m!1132789))

(declare-fun m!1132817 () Bool)

(assert (=> b!887943 m!1132817))

(assert (=> b!887943 m!1132793))

(assert (=> b!887943 m!1132817))

(assert (=> b!887943 m!1132793))

(declare-fun m!1132819 () Bool)

(assert (=> b!887943 m!1132819))

(assert (=> d!277105 m!1132783))

(assert (=> d!277105 m!1132719))

(assert (=> b!887940 m!1132789))

(assert (=> b!887950 m!1132793))

(assert (=> b!887950 m!1132793))

(assert (=> b!887950 m!1132797))

(assert (=> b!887948 m!1132789))

(declare-fun m!1132821 () Bool)

(assert (=> b!887945 m!1132821))

(assert (=> b!887944 m!1132793))

(assert (=> b!887944 m!1132793))

(assert (=> b!887944 m!1132797))

(assert (=> b!887602 d!277105))

(declare-fun d!277107 () Bool)

(declare-fun e!582065 () Bool)

(assert (=> d!277107 e!582065))

(declare-fun res!403890 () Bool)

(assert (=> d!277107 (=> res!403890 e!582065)))

(assert (=> d!277107 (= res!403890 (matchR!829 (regOne!5095 r!15766) s!10566))))

(declare-fun lt!331907 () Unit!14161)

(declare-fun choose!5294 (Regex!2291 Regex!2291 List!9521) Unit!14161)

(assert (=> d!277107 (= lt!331907 (choose!5294 (regOne!5095 r!15766) (regTwo!5095 r!15766) s!10566))))

(declare-fun e!582064 () Bool)

(assert (=> d!277107 e!582064))

(declare-fun res!403889 () Bool)

(assert (=> d!277107 (=> (not res!403889) (not e!582064))))

(assert (=> d!277107 (= res!403889 (validRegex!760 (regOne!5095 r!15766)))))

(assert (=> d!277107 (= (lemmaRegexUnionAcceptsThenOneOfTheTwoAccepts!2 (regOne!5095 r!15766) (regTwo!5095 r!15766) s!10566) lt!331907)))

(declare-fun b!887955 () Bool)

(assert (=> b!887955 (= e!582064 (validRegex!760 (regTwo!5095 r!15766)))))

(declare-fun b!887956 () Bool)

(assert (=> b!887956 (= e!582065 (matchR!829 (regTwo!5095 r!15766) s!10566))))

(assert (= (and d!277107 res!403889) b!887955))

(assert (= (and d!277107 (not res!403890)) b!887956))

(assert (=> d!277107 m!1132721))

(declare-fun m!1132823 () Bool)

(assert (=> d!277107 m!1132823))

(assert (=> d!277107 m!1132719))

(assert (=> b!887955 m!1132807))

(assert (=> b!887956 m!1132711))

(assert (=> b!887602 d!277107))

(declare-fun b!887968 () Bool)

(declare-fun e!582068 () Bool)

(declare-fun tp!279728 () Bool)

(declare-fun tp!279729 () Bool)

(assert (=> b!887968 (= e!582068 (and tp!279728 tp!279729))))

(declare-fun b!887969 () Bool)

(declare-fun tp!279725 () Bool)

(assert (=> b!887969 (= e!582068 tp!279725)))

(declare-fun b!887967 () Bool)

(assert (=> b!887967 (= e!582068 tp_is_empty!4225)))

(assert (=> b!887596 (= tp!279675 e!582068)))

(declare-fun b!887970 () Bool)

(declare-fun tp!279726 () Bool)

(declare-fun tp!279727 () Bool)

(assert (=> b!887970 (= e!582068 (and tp!279726 tp!279727))))

(assert (= (and b!887596 ((_ is ElementMatch!2291) (regOne!5094 r!15766))) b!887967))

(assert (= (and b!887596 ((_ is Concat!4124) (regOne!5094 r!15766))) b!887968))

(assert (= (and b!887596 ((_ is Star!2291) (regOne!5094 r!15766))) b!887969))

(assert (= (and b!887596 ((_ is Union!2291) (regOne!5094 r!15766))) b!887970))

(declare-fun b!887972 () Bool)

(declare-fun e!582069 () Bool)

(declare-fun tp!279733 () Bool)

(declare-fun tp!279734 () Bool)

(assert (=> b!887972 (= e!582069 (and tp!279733 tp!279734))))

(declare-fun b!887973 () Bool)

(declare-fun tp!279730 () Bool)

(assert (=> b!887973 (= e!582069 tp!279730)))

(declare-fun b!887971 () Bool)

(assert (=> b!887971 (= e!582069 tp_is_empty!4225)))

(assert (=> b!887596 (= tp!279671 e!582069)))

(declare-fun b!887974 () Bool)

(declare-fun tp!279731 () Bool)

(declare-fun tp!279732 () Bool)

(assert (=> b!887974 (= e!582069 (and tp!279731 tp!279732))))

(assert (= (and b!887596 ((_ is ElementMatch!2291) (regTwo!5094 r!15766))) b!887971))

(assert (= (and b!887596 ((_ is Concat!4124) (regTwo!5094 r!15766))) b!887972))

(assert (= (and b!887596 ((_ is Star!2291) (regTwo!5094 r!15766))) b!887973))

(assert (= (and b!887596 ((_ is Union!2291) (regTwo!5094 r!15766))) b!887974))

(declare-fun b!887979 () Bool)

(declare-fun e!582072 () Bool)

(declare-fun tp!279737 () Bool)

(assert (=> b!887979 (= e!582072 (and tp_is_empty!4225 tp!279737))))

(assert (=> b!887601 (= tp!279672 e!582072)))

(assert (= (and b!887601 ((_ is Cons!9505) (t!100567 s!10566))) b!887979))

(declare-fun b!887981 () Bool)

(declare-fun e!582073 () Bool)

(declare-fun tp!279741 () Bool)

(declare-fun tp!279742 () Bool)

(assert (=> b!887981 (= e!582073 (and tp!279741 tp!279742))))

(declare-fun b!887982 () Bool)

(declare-fun tp!279738 () Bool)

(assert (=> b!887982 (= e!582073 tp!279738)))

(declare-fun b!887980 () Bool)

(assert (=> b!887980 (= e!582073 tp_is_empty!4225)))

(assert (=> b!887598 (= tp!279673 e!582073)))

(declare-fun b!887983 () Bool)

(declare-fun tp!279739 () Bool)

(declare-fun tp!279740 () Bool)

(assert (=> b!887983 (= e!582073 (and tp!279739 tp!279740))))

(assert (= (and b!887598 ((_ is ElementMatch!2291) (reg!2620 r!15766))) b!887980))

(assert (= (and b!887598 ((_ is Concat!4124) (reg!2620 r!15766))) b!887981))

(assert (= (and b!887598 ((_ is Star!2291) (reg!2620 r!15766))) b!887982))

(assert (= (and b!887598 ((_ is Union!2291) (reg!2620 r!15766))) b!887983))

(declare-fun b!887985 () Bool)

(declare-fun e!582074 () Bool)

(declare-fun tp!279746 () Bool)

(declare-fun tp!279747 () Bool)

(assert (=> b!887985 (= e!582074 (and tp!279746 tp!279747))))

(declare-fun b!887986 () Bool)

(declare-fun tp!279743 () Bool)

(assert (=> b!887986 (= e!582074 tp!279743)))

(declare-fun b!887984 () Bool)

(assert (=> b!887984 (= e!582074 tp_is_empty!4225)))

(assert (=> b!887597 (= tp!279676 e!582074)))

(declare-fun b!887987 () Bool)

(declare-fun tp!279744 () Bool)

(declare-fun tp!279745 () Bool)

(assert (=> b!887987 (= e!582074 (and tp!279744 tp!279745))))

(assert (= (and b!887597 ((_ is ElementMatch!2291) (regOne!5095 r!15766))) b!887984))

(assert (= (and b!887597 ((_ is Concat!4124) (regOne!5095 r!15766))) b!887985))

(assert (= (and b!887597 ((_ is Star!2291) (regOne!5095 r!15766))) b!887986))

(assert (= (and b!887597 ((_ is Union!2291) (regOne!5095 r!15766))) b!887987))

(declare-fun b!887989 () Bool)

(declare-fun e!582075 () Bool)

(declare-fun tp!279751 () Bool)

(declare-fun tp!279752 () Bool)

(assert (=> b!887989 (= e!582075 (and tp!279751 tp!279752))))

(declare-fun b!887990 () Bool)

(declare-fun tp!279748 () Bool)

(assert (=> b!887990 (= e!582075 tp!279748)))

(declare-fun b!887988 () Bool)

(assert (=> b!887988 (= e!582075 tp_is_empty!4225)))

(assert (=> b!887597 (= tp!279674 e!582075)))

(declare-fun b!887991 () Bool)

(declare-fun tp!279749 () Bool)

(declare-fun tp!279750 () Bool)

(assert (=> b!887991 (= e!582075 (and tp!279749 tp!279750))))

(assert (= (and b!887597 ((_ is ElementMatch!2291) (regTwo!5095 r!15766))) b!887988))

(assert (= (and b!887597 ((_ is Concat!4124) (regTwo!5095 r!15766))) b!887989))

(assert (= (and b!887597 ((_ is Star!2291) (regTwo!5095 r!15766))) b!887990))

(assert (= (and b!887597 ((_ is Union!2291) (regTwo!5095 r!15766))) b!887991))

(check-sat (not b!887981) (not b!887991) (not b!887911) (not bm!52174) (not b!887983) (not b!887956) (not bm!52173) (not b!887927) (not bm!52165) (not b!887903) (not b!887979) (not b!887921) (not b!887935) (not b!887955) (not b!887943) (not b!887906) (not bm!52171) (not b!887917) (not b!887863) (not b!887982) (not b!887908) (not b!887989) (not d!277107) (not d!277105) (not b!887860) (not b!887968) (not b!887913) (not b!887974) (not b!887972) (not b!887940) (not b!887973) (not b!887990) (not d!277097) (not b!887948) (not b!887907) (not b!887922) tp_is_empty!4225 (not b!887969) (not bm!52143) (not b!887987) (not d!277099) (not b!887925) (not d!277101) (not bm!52166) (not b!887647) (not b!887986) (not bm!52141) (not b!887970) (not b!887920) (not b!887950) (not b!887944) (not b!887985) (not bm!52170) (not bm!52169) (not b!887945))
(check-sat)
