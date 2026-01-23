; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!281950 () Bool)

(assert start!281950)

(declare-fun b!2891829 () Bool)

(declare-fun e!1827582 () Bool)

(declare-fun e!1827581 () Bool)

(assert (=> b!2891829 (= e!1827582 e!1827581)))

(declare-fun res!1196569 () Bool)

(assert (=> b!2891829 (=> (not res!1196569) (not e!1827581))))

(declare-datatypes ((C!17840 0))(
  ( (C!17841 (val!10954 Int)) )
))
(declare-datatypes ((List!34630 0))(
  ( (Nil!34506) (Cons!34506 (h!39926 C!17840) (t!233673 List!34630)) )
))
(declare-datatypes ((Option!6502 0))(
  ( (None!6501) (Some!6501 (v!34627 List!34630)) )
))
(declare-fun lt!1021067 () Option!6502)

(get-info :version)

(assert (=> b!2891829 (= res!1196569 ((_ is Some!6501) lt!1021067))))

(declare-datatypes ((Regex!8829 0))(
  ( (ElementMatch!8829 (c!470210 C!17840)) (Concat!14150 (regOne!18170 Regex!8829) (regTwo!18170 Regex!8829)) (EmptyExpr!8829) (Star!8829 (reg!9158 Regex!8829)) (EmptyLang!8829) (Union!8829 (regOne!18171 Regex!8829) (regTwo!18171 Regex!8829)) )
))
(declare-fun r!23079 () Regex!8829)

(declare-fun getLanguageWitness!536 (Regex!8829) Option!6502)

(assert (=> b!2891829 (= lt!1021067 (getLanguageWitness!536 (regOne!18171 r!23079)))))

(declare-fun b!2891830 () Bool)

(declare-fun e!1827583 () Bool)

(assert (=> b!2891830 (= e!1827581 (not e!1827583))))

(declare-fun res!1196566 () Bool)

(assert (=> b!2891830 (=> res!1196566 e!1827583)))

(declare-fun validRegex!3602 (Regex!8829) Bool)

(assert (=> b!2891830 (= res!1196566 (not (validRegex!3602 (regOne!18171 r!23079))))))

(declare-fun matchR!3799 (Regex!8829 List!34630) Bool)

(declare-fun get!10446 (Option!6502) List!34630)

(assert (=> b!2891830 (matchR!3799 (regOne!18171 r!23079) (get!10446 lt!1021067))))

(declare-datatypes ((Unit!48087 0))(
  ( (Unit!48088) )
))
(declare-fun lt!1021068 () Unit!48087)

(declare-fun lemmaGetWitnessMatches!98 (Regex!8829) Unit!48087)

(assert (=> b!2891830 (= lt!1021068 (lemmaGetWitnessMatches!98 (regOne!18171 r!23079)))))

(declare-fun b!2891831 () Bool)

(declare-fun e!1827580 () Bool)

(declare-fun tp!928547 () Bool)

(assert (=> b!2891831 (= e!1827580 tp!928547)))

(declare-fun b!2891832 () Bool)

(declare-fun res!1196568 () Bool)

(assert (=> b!2891832 (=> res!1196568 e!1827583)))

(assert (=> b!2891832 (= res!1196568 (not (validRegex!3602 (regTwo!18171 r!23079))))))

(declare-fun b!2891834 () Bool)

(declare-fun res!1196567 () Bool)

(assert (=> b!2891834 (=> (not res!1196567) (not e!1827582))))

(assert (=> b!2891834 (= res!1196567 (and (not ((_ is EmptyExpr!8829) r!23079)) (not ((_ is EmptyLang!8829) r!23079)) (not ((_ is ElementMatch!8829) r!23079)) (not ((_ is Star!8829) r!23079)) ((_ is Union!8829) r!23079)))))

(declare-fun b!2891835 () Bool)

(declare-fun tp_is_empty!15245 () Bool)

(assert (=> b!2891835 (= e!1827580 tp_is_empty!15245)))

(declare-fun b!2891836 () Bool)

(declare-fun tp!928548 () Bool)

(declare-fun tp!928549 () Bool)

(assert (=> b!2891836 (= e!1827580 (and tp!928548 tp!928549))))

(declare-fun b!2891837 () Bool)

(assert (=> b!2891837 (= e!1827583 (matchR!3799 (regOne!18171 r!23079) (v!34627 lt!1021067)))))

(declare-fun b!2891838 () Bool)

(declare-fun tp!928546 () Bool)

(declare-fun tp!928545 () Bool)

(assert (=> b!2891838 (= e!1827580 (and tp!928546 tp!928545))))

(declare-fun b!2891833 () Bool)

(declare-fun res!1196571 () Bool)

(assert (=> b!2891833 (=> (not res!1196571) (not e!1827582))))

(declare-fun isDefined!5066 (Option!6502) Bool)

(assert (=> b!2891833 (= res!1196571 (isDefined!5066 (getLanguageWitness!536 r!23079)))))

(declare-fun res!1196570 () Bool)

(assert (=> start!281950 (=> (not res!1196570) (not e!1827582))))

(assert (=> start!281950 (= res!1196570 (validRegex!3602 r!23079))))

(assert (=> start!281950 e!1827582))

(assert (=> start!281950 e!1827580))

(assert (= (and start!281950 res!1196570) b!2891833))

(assert (= (and b!2891833 res!1196571) b!2891834))

(assert (= (and b!2891834 res!1196567) b!2891829))

(assert (= (and b!2891829 res!1196569) b!2891830))

(assert (= (and b!2891830 (not res!1196566)) b!2891832))

(assert (= (and b!2891832 (not res!1196568)) b!2891837))

(assert (= (and start!281950 ((_ is ElementMatch!8829) r!23079)) b!2891835))

(assert (= (and start!281950 ((_ is Concat!14150) r!23079)) b!2891836))

(assert (= (and start!281950 ((_ is Star!8829) r!23079)) b!2891831))

(assert (= (and start!281950 ((_ is Union!8829) r!23079)) b!2891838))

(declare-fun m!3302711 () Bool)

(assert (=> start!281950 m!3302711))

(declare-fun m!3302713 () Bool)

(assert (=> b!2891829 m!3302713))

(declare-fun m!3302715 () Bool)

(assert (=> b!2891833 m!3302715))

(assert (=> b!2891833 m!3302715))

(declare-fun m!3302717 () Bool)

(assert (=> b!2891833 m!3302717))

(declare-fun m!3302719 () Bool)

(assert (=> b!2891830 m!3302719))

(declare-fun m!3302721 () Bool)

(assert (=> b!2891830 m!3302721))

(assert (=> b!2891830 m!3302721))

(declare-fun m!3302723 () Bool)

(assert (=> b!2891830 m!3302723))

(declare-fun m!3302725 () Bool)

(assert (=> b!2891830 m!3302725))

(declare-fun m!3302727 () Bool)

(assert (=> b!2891832 m!3302727))

(declare-fun m!3302729 () Bool)

(assert (=> b!2891837 m!3302729))

(check-sat (not b!2891833) (not b!2891836) (not b!2891830) (not b!2891837) (not b!2891838) (not b!2891829) (not b!2891832) (not start!281950) (not b!2891831) tp_is_empty!15245)
(check-sat)
(get-model)

(declare-fun b!2891875 () Bool)

(declare-fun e!1827614 () Bool)

(declare-fun e!1827613 () Bool)

(assert (=> b!2891875 (= e!1827614 e!1827613)))

(declare-fun res!1196595 () Bool)

(assert (=> b!2891875 (=> (not res!1196595) (not e!1827613))))

(declare-fun call!187849 () Bool)

(assert (=> b!2891875 (= res!1196595 call!187849)))

(declare-fun b!2891876 () Bool)

(declare-fun e!1827617 () Bool)

(declare-fun e!1827612 () Bool)

(assert (=> b!2891876 (= e!1827617 e!1827612)))

(declare-fun c!470220 () Bool)

(assert (=> b!2891876 (= c!470220 ((_ is Union!8829) (regOne!18171 r!23079)))))

(declare-fun bm!187844 () Bool)

(declare-fun call!187850 () Bool)

(assert (=> bm!187844 (= call!187850 (validRegex!3602 (ite c!470220 (regTwo!18171 (regOne!18171 r!23079)) (regTwo!18170 (regOne!18171 r!23079)))))))

(declare-fun b!2891877 () Bool)

(declare-fun res!1196594 () Bool)

(assert (=> b!2891877 (=> res!1196594 e!1827614)))

(assert (=> b!2891877 (= res!1196594 (not ((_ is Concat!14150) (regOne!18171 r!23079))))))

(assert (=> b!2891877 (= e!1827612 e!1827614)))

(declare-fun b!2891878 () Bool)

(declare-fun e!1827615 () Bool)

(assert (=> b!2891878 (= e!1827615 e!1827617)))

(declare-fun c!470219 () Bool)

(assert (=> b!2891878 (= c!470219 ((_ is Star!8829) (regOne!18171 r!23079)))))

(declare-fun call!187851 () Bool)

(declare-fun bm!187845 () Bool)

(assert (=> bm!187845 (= call!187851 (validRegex!3602 (ite c!470219 (reg!9158 (regOne!18171 r!23079)) (ite c!470220 (regOne!18171 (regOne!18171 r!23079)) (regOne!18170 (regOne!18171 r!23079))))))))

(declare-fun b!2891879 () Bool)

(assert (=> b!2891879 (= e!1827613 call!187850)))

(declare-fun b!2891880 () Bool)

(declare-fun res!1196592 () Bool)

(declare-fun e!1827616 () Bool)

(assert (=> b!2891880 (=> (not res!1196592) (not e!1827616))))

(assert (=> b!2891880 (= res!1196592 call!187849)))

(assert (=> b!2891880 (= e!1827612 e!1827616)))

(declare-fun d!834496 () Bool)

(declare-fun res!1196593 () Bool)

(assert (=> d!834496 (=> res!1196593 e!1827615)))

(assert (=> d!834496 (= res!1196593 ((_ is ElementMatch!8829) (regOne!18171 r!23079)))))

(assert (=> d!834496 (= (validRegex!3602 (regOne!18171 r!23079)) e!1827615)))

(declare-fun b!2891881 () Bool)

(declare-fun e!1827618 () Bool)

(assert (=> b!2891881 (= e!1827617 e!1827618)))

(declare-fun res!1196596 () Bool)

(declare-fun nullable!2731 (Regex!8829) Bool)

(assert (=> b!2891881 (= res!1196596 (not (nullable!2731 (reg!9158 (regOne!18171 r!23079)))))))

(assert (=> b!2891881 (=> (not res!1196596) (not e!1827618))))

(declare-fun bm!187846 () Bool)

(assert (=> bm!187846 (= call!187849 call!187851)))

(declare-fun b!2891882 () Bool)

(assert (=> b!2891882 (= e!1827618 call!187851)))

(declare-fun b!2891883 () Bool)

(assert (=> b!2891883 (= e!1827616 call!187850)))

(assert (= (and d!834496 (not res!1196593)) b!2891878))

(assert (= (and b!2891878 c!470219) b!2891881))

(assert (= (and b!2891878 (not c!470219)) b!2891876))

(assert (= (and b!2891881 res!1196596) b!2891882))

(assert (= (and b!2891876 c!470220) b!2891880))

(assert (= (and b!2891876 (not c!470220)) b!2891877))

(assert (= (and b!2891880 res!1196592) b!2891883))

(assert (= (and b!2891877 (not res!1196594)) b!2891875))

(assert (= (and b!2891875 res!1196595) b!2891879))

(assert (= (or b!2891883 b!2891879) bm!187844))

(assert (= (or b!2891880 b!2891875) bm!187846))

(assert (= (or b!2891882 bm!187846) bm!187845))

(declare-fun m!3302733 () Bool)

(assert (=> bm!187844 m!3302733))

(declare-fun m!3302737 () Bool)

(assert (=> bm!187845 m!3302737))

(declare-fun m!3302739 () Bool)

(assert (=> b!2891881 m!3302739))

(assert (=> b!2891830 d!834496))

(declare-fun b!2891962 () Bool)

(declare-fun e!1827664 () Bool)

(declare-fun lt!1021077 () Bool)

(declare-fun call!187864 () Bool)

(assert (=> b!2891962 (= e!1827664 (= lt!1021077 call!187864))))

(declare-fun b!2891963 () Bool)

(declare-fun res!1196629 () Bool)

(declare-fun e!1827668 () Bool)

(assert (=> b!2891963 (=> res!1196629 e!1827668)))

(declare-fun e!1827665 () Bool)

(assert (=> b!2891963 (= res!1196629 e!1827665)))

(declare-fun res!1196626 () Bool)

(assert (=> b!2891963 (=> (not res!1196626) (not e!1827665))))

(assert (=> b!2891963 (= res!1196626 lt!1021077)))

(declare-fun b!2891964 () Bool)

(declare-fun e!1827667 () Bool)

(assert (=> b!2891964 (= e!1827664 e!1827667)))

(declare-fun c!470248 () Bool)

(assert (=> b!2891964 (= c!470248 ((_ is EmptyLang!8829) (regOne!18171 r!23079)))))

(declare-fun b!2891965 () Bool)

(declare-fun e!1827663 () Bool)

(assert (=> b!2891965 (= e!1827663 (nullable!2731 (regOne!18171 r!23079)))))

(declare-fun b!2891966 () Bool)

(declare-fun e!1827669 () Bool)

(declare-fun e!1827666 () Bool)

(assert (=> b!2891966 (= e!1827669 e!1827666)))

(declare-fun res!1196628 () Bool)

(assert (=> b!2891966 (=> res!1196628 e!1827666)))

(assert (=> b!2891966 (= res!1196628 call!187864)))

(declare-fun d!834498 () Bool)

(assert (=> d!834498 e!1827664))

(declare-fun c!470247 () Bool)

(assert (=> d!834498 (= c!470247 ((_ is EmptyExpr!8829) (regOne!18171 r!23079)))))

(assert (=> d!834498 (= lt!1021077 e!1827663)))

(declare-fun c!470249 () Bool)

(declare-fun isEmpty!18806 (List!34630) Bool)

(assert (=> d!834498 (= c!470249 (isEmpty!18806 (get!10446 lt!1021067)))))

(assert (=> d!834498 (validRegex!3602 (regOne!18171 r!23079))))

(assert (=> d!834498 (= (matchR!3799 (regOne!18171 r!23079) (get!10446 lt!1021067)) lt!1021077)))

(declare-fun b!2891967 () Bool)

(declare-fun res!1196623 () Bool)

(assert (=> b!2891967 (=> res!1196623 e!1827668)))

(assert (=> b!2891967 (= res!1196623 (not ((_ is ElementMatch!8829) (regOne!18171 r!23079))))))

(assert (=> b!2891967 (= e!1827667 e!1827668)))

(declare-fun b!2891968 () Bool)

(assert (=> b!2891968 (= e!1827667 (not lt!1021077))))

(declare-fun b!2891969 () Bool)

(declare-fun res!1196630 () Bool)

(assert (=> b!2891969 (=> res!1196630 e!1827666)))

(declare-fun tail!4609 (List!34630) List!34630)

(assert (=> b!2891969 (= res!1196630 (not (isEmpty!18806 (tail!4609 (get!10446 lt!1021067)))))))

(declare-fun b!2891970 () Bool)

(declare-fun head!6384 (List!34630) C!17840)

(assert (=> b!2891970 (= e!1827666 (not (= (head!6384 (get!10446 lt!1021067)) (c!470210 (regOne!18171 r!23079)))))))

(declare-fun b!2891971 () Bool)

(assert (=> b!2891971 (= e!1827668 e!1827669)))

(declare-fun res!1196624 () Bool)

(assert (=> b!2891971 (=> (not res!1196624) (not e!1827669))))

(assert (=> b!2891971 (= res!1196624 (not lt!1021077))))

(declare-fun b!2891972 () Bool)

(assert (=> b!2891972 (= e!1827665 (= (head!6384 (get!10446 lt!1021067)) (c!470210 (regOne!18171 r!23079))))))

(declare-fun b!2891973 () Bool)

(declare-fun derivativeStep!2355 (Regex!8829 C!17840) Regex!8829)

(assert (=> b!2891973 (= e!1827663 (matchR!3799 (derivativeStep!2355 (regOne!18171 r!23079) (head!6384 (get!10446 lt!1021067))) (tail!4609 (get!10446 lt!1021067))))))

(declare-fun bm!187859 () Bool)

(assert (=> bm!187859 (= call!187864 (isEmpty!18806 (get!10446 lt!1021067)))))

(declare-fun b!2891974 () Bool)

(declare-fun res!1196627 () Bool)

(assert (=> b!2891974 (=> (not res!1196627) (not e!1827665))))

(assert (=> b!2891974 (= res!1196627 (not call!187864))))

(declare-fun b!2891975 () Bool)

(declare-fun res!1196625 () Bool)

(assert (=> b!2891975 (=> (not res!1196625) (not e!1827665))))

(assert (=> b!2891975 (= res!1196625 (isEmpty!18806 (tail!4609 (get!10446 lt!1021067))))))

(assert (= (and d!834498 c!470249) b!2891965))

(assert (= (and d!834498 (not c!470249)) b!2891973))

(assert (= (and d!834498 c!470247) b!2891962))

(assert (= (and d!834498 (not c!470247)) b!2891964))

(assert (= (and b!2891964 c!470248) b!2891968))

(assert (= (and b!2891964 (not c!470248)) b!2891967))

(assert (= (and b!2891967 (not res!1196623)) b!2891963))

(assert (= (and b!2891963 res!1196626) b!2891974))

(assert (= (and b!2891974 res!1196627) b!2891975))

(assert (= (and b!2891975 res!1196625) b!2891972))

(assert (= (and b!2891963 (not res!1196629)) b!2891971))

(assert (= (and b!2891971 res!1196624) b!2891966))

(assert (= (and b!2891966 (not res!1196628)) b!2891969))

(assert (= (and b!2891969 (not res!1196630)) b!2891970))

(assert (= (or b!2891962 b!2891966 b!2891974) bm!187859))

(assert (=> b!2891970 m!3302721))

(declare-fun m!3302749 () Bool)

(assert (=> b!2891970 m!3302749))

(assert (=> d!834498 m!3302721))

(declare-fun m!3302751 () Bool)

(assert (=> d!834498 m!3302751))

(assert (=> d!834498 m!3302719))

(assert (=> b!2891973 m!3302721))

(assert (=> b!2891973 m!3302749))

(assert (=> b!2891973 m!3302749))

(declare-fun m!3302753 () Bool)

(assert (=> b!2891973 m!3302753))

(assert (=> b!2891973 m!3302721))

(declare-fun m!3302755 () Bool)

(assert (=> b!2891973 m!3302755))

(assert (=> b!2891973 m!3302753))

(assert (=> b!2891973 m!3302755))

(declare-fun m!3302757 () Bool)

(assert (=> b!2891973 m!3302757))

(assert (=> b!2891972 m!3302721))

(assert (=> b!2891972 m!3302749))

(assert (=> b!2891975 m!3302721))

(assert (=> b!2891975 m!3302755))

(assert (=> b!2891975 m!3302755))

(declare-fun m!3302759 () Bool)

(assert (=> b!2891975 m!3302759))

(assert (=> bm!187859 m!3302721))

(assert (=> bm!187859 m!3302751))

(declare-fun m!3302763 () Bool)

(assert (=> b!2891965 m!3302763))

(assert (=> b!2891969 m!3302721))

(assert (=> b!2891969 m!3302755))

(assert (=> b!2891969 m!3302755))

(assert (=> b!2891969 m!3302759))

(assert (=> b!2891830 d!834498))

(declare-fun d!834504 () Bool)

(assert (=> d!834504 (= (get!10446 lt!1021067) (v!34627 lt!1021067))))

(assert (=> b!2891830 d!834504))

(declare-fun d!834508 () Bool)

(assert (=> d!834508 (matchR!3799 (regOne!18171 r!23079) (get!10446 (getLanguageWitness!536 (regOne!18171 r!23079))))))

(declare-fun lt!1021083 () Unit!48087)

(declare-fun choose!17060 (Regex!8829) Unit!48087)

(assert (=> d!834508 (= lt!1021083 (choose!17060 (regOne!18171 r!23079)))))

(assert (=> d!834508 (validRegex!3602 (regOne!18171 r!23079))))

(assert (=> d!834508 (= (lemmaGetWitnessMatches!98 (regOne!18171 r!23079)) lt!1021083)))

(declare-fun bs!523885 () Bool)

(assert (= bs!523885 d!834508))

(assert (=> bs!523885 m!3302713))

(declare-fun m!3302769 () Bool)

(assert (=> bs!523885 m!3302769))

(assert (=> bs!523885 m!3302769))

(declare-fun m!3302771 () Bool)

(assert (=> bs!523885 m!3302771))

(assert (=> bs!523885 m!3302719))

(declare-fun m!3302773 () Bool)

(assert (=> bs!523885 m!3302773))

(assert (=> bs!523885 m!3302713))

(assert (=> b!2891830 d!834508))

(declare-fun b!2891992 () Bool)

(declare-fun e!1827680 () Bool)

(declare-fun e!1827679 () Bool)

(assert (=> b!2891992 (= e!1827680 e!1827679)))

(declare-fun res!1196634 () Bool)

(assert (=> b!2891992 (=> (not res!1196634) (not e!1827679))))

(declare-fun call!187867 () Bool)

(assert (=> b!2891992 (= res!1196634 call!187867)))

(declare-fun b!2891993 () Bool)

(declare-fun e!1827683 () Bool)

(declare-fun e!1827678 () Bool)

(assert (=> b!2891993 (= e!1827683 e!1827678)))

(declare-fun c!470259 () Bool)

(assert (=> b!2891993 (= c!470259 ((_ is Union!8829) r!23079))))

(declare-fun bm!187862 () Bool)

(declare-fun call!187868 () Bool)

(assert (=> bm!187862 (= call!187868 (validRegex!3602 (ite c!470259 (regTwo!18171 r!23079) (regTwo!18170 r!23079))))))

(declare-fun b!2891994 () Bool)

(declare-fun res!1196633 () Bool)

(assert (=> b!2891994 (=> res!1196633 e!1827680)))

(assert (=> b!2891994 (= res!1196633 (not ((_ is Concat!14150) r!23079)))))

(assert (=> b!2891994 (= e!1827678 e!1827680)))

(declare-fun b!2891995 () Bool)

(declare-fun e!1827681 () Bool)

(assert (=> b!2891995 (= e!1827681 e!1827683)))

(declare-fun c!470258 () Bool)

(assert (=> b!2891995 (= c!470258 ((_ is Star!8829) r!23079))))

(declare-fun call!187869 () Bool)

(declare-fun bm!187863 () Bool)

(assert (=> bm!187863 (= call!187869 (validRegex!3602 (ite c!470258 (reg!9158 r!23079) (ite c!470259 (regOne!18171 r!23079) (regOne!18170 r!23079)))))))

(declare-fun b!2891996 () Bool)

(assert (=> b!2891996 (= e!1827679 call!187868)))

(declare-fun b!2891997 () Bool)

(declare-fun res!1196631 () Bool)

(declare-fun e!1827682 () Bool)

(assert (=> b!2891997 (=> (not res!1196631) (not e!1827682))))

(assert (=> b!2891997 (= res!1196631 call!187867)))

(assert (=> b!2891997 (= e!1827678 e!1827682)))

(declare-fun d!834510 () Bool)

(declare-fun res!1196632 () Bool)

(assert (=> d!834510 (=> res!1196632 e!1827681)))

(assert (=> d!834510 (= res!1196632 ((_ is ElementMatch!8829) r!23079))))

(assert (=> d!834510 (= (validRegex!3602 r!23079) e!1827681)))

(declare-fun b!2891998 () Bool)

(declare-fun e!1827684 () Bool)

(assert (=> b!2891998 (= e!1827683 e!1827684)))

(declare-fun res!1196635 () Bool)

(assert (=> b!2891998 (= res!1196635 (not (nullable!2731 (reg!9158 r!23079))))))

(assert (=> b!2891998 (=> (not res!1196635) (not e!1827684))))

(declare-fun bm!187864 () Bool)

(assert (=> bm!187864 (= call!187867 call!187869)))

(declare-fun b!2891999 () Bool)

(assert (=> b!2891999 (= e!1827684 call!187869)))

(declare-fun b!2892000 () Bool)

(assert (=> b!2892000 (= e!1827682 call!187868)))

(assert (= (and d!834510 (not res!1196632)) b!2891995))

(assert (= (and b!2891995 c!470258) b!2891998))

(assert (= (and b!2891995 (not c!470258)) b!2891993))

(assert (= (and b!2891998 res!1196635) b!2891999))

(assert (= (and b!2891993 c!470259) b!2891997))

(assert (= (and b!2891993 (not c!470259)) b!2891994))

(assert (= (and b!2891997 res!1196631) b!2892000))

(assert (= (and b!2891994 (not res!1196633)) b!2891992))

(assert (= (and b!2891992 res!1196634) b!2891996))

(assert (= (or b!2892000 b!2891996) bm!187862))

(assert (= (or b!2891997 b!2891992) bm!187864))

(assert (= (or b!2891999 bm!187864) bm!187863))

(declare-fun m!3302775 () Bool)

(assert (=> bm!187862 m!3302775))

(declare-fun m!3302777 () Bool)

(assert (=> bm!187863 m!3302777))

(declare-fun m!3302779 () Bool)

(assert (=> b!2891998 m!3302779))

(assert (=> start!281950 d!834510))

(declare-fun b!2892001 () Bool)

(declare-fun e!1827686 () Bool)

(declare-fun lt!1021084 () Bool)

(declare-fun call!187870 () Bool)

(assert (=> b!2892001 (= e!1827686 (= lt!1021084 call!187870))))

(declare-fun b!2892002 () Bool)

(declare-fun res!1196642 () Bool)

(declare-fun e!1827690 () Bool)

(assert (=> b!2892002 (=> res!1196642 e!1827690)))

(declare-fun e!1827687 () Bool)

(assert (=> b!2892002 (= res!1196642 e!1827687)))

(declare-fun res!1196639 () Bool)

(assert (=> b!2892002 (=> (not res!1196639) (not e!1827687))))

(assert (=> b!2892002 (= res!1196639 lt!1021084)))

(declare-fun b!2892003 () Bool)

(declare-fun e!1827689 () Bool)

(assert (=> b!2892003 (= e!1827686 e!1827689)))

(declare-fun c!470261 () Bool)

(assert (=> b!2892003 (= c!470261 ((_ is EmptyLang!8829) (regOne!18171 r!23079)))))

(declare-fun b!2892004 () Bool)

(declare-fun e!1827685 () Bool)

(assert (=> b!2892004 (= e!1827685 (nullable!2731 (regOne!18171 r!23079)))))

(declare-fun b!2892005 () Bool)

(declare-fun e!1827691 () Bool)

(declare-fun e!1827688 () Bool)

(assert (=> b!2892005 (= e!1827691 e!1827688)))

(declare-fun res!1196641 () Bool)

(assert (=> b!2892005 (=> res!1196641 e!1827688)))

(assert (=> b!2892005 (= res!1196641 call!187870)))

(declare-fun d!834512 () Bool)

(assert (=> d!834512 e!1827686))

(declare-fun c!470260 () Bool)

(assert (=> d!834512 (= c!470260 ((_ is EmptyExpr!8829) (regOne!18171 r!23079)))))

(assert (=> d!834512 (= lt!1021084 e!1827685)))

(declare-fun c!470262 () Bool)

(assert (=> d!834512 (= c!470262 (isEmpty!18806 (v!34627 lt!1021067)))))

(assert (=> d!834512 (validRegex!3602 (regOne!18171 r!23079))))

(assert (=> d!834512 (= (matchR!3799 (regOne!18171 r!23079) (v!34627 lt!1021067)) lt!1021084)))

(declare-fun b!2892006 () Bool)

(declare-fun res!1196636 () Bool)

(assert (=> b!2892006 (=> res!1196636 e!1827690)))

(assert (=> b!2892006 (= res!1196636 (not ((_ is ElementMatch!8829) (regOne!18171 r!23079))))))

(assert (=> b!2892006 (= e!1827689 e!1827690)))

(declare-fun b!2892007 () Bool)

(assert (=> b!2892007 (= e!1827689 (not lt!1021084))))

(declare-fun b!2892008 () Bool)

(declare-fun res!1196643 () Bool)

(assert (=> b!2892008 (=> res!1196643 e!1827688)))

(assert (=> b!2892008 (= res!1196643 (not (isEmpty!18806 (tail!4609 (v!34627 lt!1021067)))))))

(declare-fun b!2892009 () Bool)

(assert (=> b!2892009 (= e!1827688 (not (= (head!6384 (v!34627 lt!1021067)) (c!470210 (regOne!18171 r!23079)))))))

(declare-fun b!2892010 () Bool)

(assert (=> b!2892010 (= e!1827690 e!1827691)))

(declare-fun res!1196637 () Bool)

(assert (=> b!2892010 (=> (not res!1196637) (not e!1827691))))

(assert (=> b!2892010 (= res!1196637 (not lt!1021084))))

(declare-fun b!2892011 () Bool)

(assert (=> b!2892011 (= e!1827687 (= (head!6384 (v!34627 lt!1021067)) (c!470210 (regOne!18171 r!23079))))))

(declare-fun b!2892012 () Bool)

(assert (=> b!2892012 (= e!1827685 (matchR!3799 (derivativeStep!2355 (regOne!18171 r!23079) (head!6384 (v!34627 lt!1021067))) (tail!4609 (v!34627 lt!1021067))))))

(declare-fun bm!187865 () Bool)

(assert (=> bm!187865 (= call!187870 (isEmpty!18806 (v!34627 lt!1021067)))))

(declare-fun b!2892013 () Bool)

(declare-fun res!1196640 () Bool)

(assert (=> b!2892013 (=> (not res!1196640) (not e!1827687))))

(assert (=> b!2892013 (= res!1196640 (not call!187870))))

(declare-fun b!2892014 () Bool)

(declare-fun res!1196638 () Bool)

(assert (=> b!2892014 (=> (not res!1196638) (not e!1827687))))

(assert (=> b!2892014 (= res!1196638 (isEmpty!18806 (tail!4609 (v!34627 lt!1021067))))))

(assert (= (and d!834512 c!470262) b!2892004))

(assert (= (and d!834512 (not c!470262)) b!2892012))

(assert (= (and d!834512 c!470260) b!2892001))

(assert (= (and d!834512 (not c!470260)) b!2892003))

(assert (= (and b!2892003 c!470261) b!2892007))

(assert (= (and b!2892003 (not c!470261)) b!2892006))

(assert (= (and b!2892006 (not res!1196636)) b!2892002))

(assert (= (and b!2892002 res!1196639) b!2892013))

(assert (= (and b!2892013 res!1196640) b!2892014))

(assert (= (and b!2892014 res!1196638) b!2892011))

(assert (= (and b!2892002 (not res!1196642)) b!2892010))

(assert (= (and b!2892010 res!1196637) b!2892005))

(assert (= (and b!2892005 (not res!1196641)) b!2892008))

(assert (= (and b!2892008 (not res!1196643)) b!2892009))

(assert (= (or b!2892001 b!2892005 b!2892013) bm!187865))

(declare-fun m!3302781 () Bool)

(assert (=> b!2892009 m!3302781))

(declare-fun m!3302783 () Bool)

(assert (=> d!834512 m!3302783))

(assert (=> d!834512 m!3302719))

(assert (=> b!2892012 m!3302781))

(assert (=> b!2892012 m!3302781))

(declare-fun m!3302785 () Bool)

(assert (=> b!2892012 m!3302785))

(declare-fun m!3302787 () Bool)

(assert (=> b!2892012 m!3302787))

(assert (=> b!2892012 m!3302785))

(assert (=> b!2892012 m!3302787))

(declare-fun m!3302789 () Bool)

(assert (=> b!2892012 m!3302789))

(assert (=> b!2892011 m!3302781))

(assert (=> b!2892014 m!3302787))

(assert (=> b!2892014 m!3302787))

(declare-fun m!3302791 () Bool)

(assert (=> b!2892014 m!3302791))

(assert (=> bm!187865 m!3302783))

(assert (=> b!2892004 m!3302763))

(assert (=> b!2892008 m!3302787))

(assert (=> b!2892008 m!3302787))

(assert (=> b!2892008 m!3302791))

(assert (=> b!2891837 d!834512))

(declare-fun d!834514 () Bool)

(declare-fun isEmpty!18809 (Option!6502) Bool)

(assert (=> d!834514 (= (isDefined!5066 (getLanguageWitness!536 r!23079)) (not (isEmpty!18809 (getLanguageWitness!536 r!23079))))))

(declare-fun bs!523886 () Bool)

(assert (= bs!523886 d!834514))

(assert (=> bs!523886 m!3302715))

(declare-fun m!3302793 () Bool)

(assert (=> bs!523886 m!3302793))

(assert (=> b!2891833 d!834514))

(declare-fun b!2892128 () Bool)

(declare-fun e!1827752 () Option!6502)

(declare-fun e!1827753 () Option!6502)

(assert (=> b!2892128 (= e!1827752 e!1827753)))

(declare-fun c!470302 () Bool)

(assert (=> b!2892128 (= c!470302 ((_ is EmptyLang!8829) r!23079))))

(declare-fun b!2892129 () Bool)

(declare-fun e!1827757 () Option!6502)

(declare-fun e!1827758 () Option!6502)

(assert (=> b!2892129 (= e!1827757 e!1827758)))

(declare-fun lt!1021099 () Option!6502)

(declare-fun call!187884 () Option!6502)

(assert (=> b!2892129 (= lt!1021099 call!187884)))

(declare-fun c!470307 () Bool)

(assert (=> b!2892129 (= c!470307 ((_ is Some!6501) lt!1021099))))

(declare-fun b!2892130 () Bool)

(declare-fun e!1827751 () Option!6502)

(declare-fun lt!1021100 () Option!6502)

(declare-fun ++!8229 (List!34630 List!34630) List!34630)

(assert (=> b!2892130 (= e!1827751 (Some!6501 (++!8229 (v!34627 lt!1021099) (v!34627 lt!1021100))))))

(declare-fun b!2892131 () Bool)

(declare-fun e!1827756 () Option!6502)

(assert (=> b!2892131 (= e!1827756 call!187884)))

(declare-fun bm!187879 () Bool)

(declare-fun c!470308 () Bool)

(assert (=> bm!187879 (= call!187884 (getLanguageWitness!536 (ite c!470308 (regTwo!18171 r!23079) (regOne!18170 r!23079))))))

(declare-fun b!2892132 () Bool)

(declare-fun e!1827755 () Option!6502)

(assert (=> b!2892132 (= e!1827755 (Some!6501 Nil!34506))))

(declare-fun b!2892133 () Bool)

(assert (=> b!2892133 (= e!1827757 e!1827756)))

(declare-fun lt!1021098 () Option!6502)

(declare-fun call!187885 () Option!6502)

(assert (=> b!2892133 (= lt!1021098 call!187885)))

(declare-fun c!470304 () Bool)

(assert (=> b!2892133 (= c!470304 ((_ is Some!6501) lt!1021098))))

(declare-fun b!2892134 () Bool)

(assert (=> b!2892134 (= e!1827753 None!6501)))

(declare-fun b!2892135 () Bool)

(assert (=> b!2892135 (= e!1827752 (Some!6501 Nil!34506))))

(declare-fun b!2892136 () Bool)

(declare-fun c!470303 () Bool)

(assert (=> b!2892136 (= c!470303 ((_ is ElementMatch!8829) r!23079))))

(declare-fun e!1827754 () Option!6502)

(assert (=> b!2892136 (= e!1827753 e!1827754)))

(declare-fun b!2892137 () Bool)

(assert (=> b!2892137 (= c!470308 ((_ is Union!8829) r!23079))))

(assert (=> b!2892137 (= e!1827755 e!1827757)))

(declare-fun d!834516 () Bool)

(declare-fun c!470306 () Bool)

(assert (=> d!834516 (= c!470306 ((_ is EmptyExpr!8829) r!23079))))

(assert (=> d!834516 (= (getLanguageWitness!536 r!23079) e!1827752)))

(declare-fun bm!187880 () Bool)

(assert (=> bm!187880 (= call!187885 (getLanguageWitness!536 (ite c!470308 (regOne!18171 r!23079) (regTwo!18170 r!23079))))))

(declare-fun b!2892138 () Bool)

(assert (=> b!2892138 (= e!1827758 None!6501)))

(declare-fun b!2892139 () Bool)

(assert (=> b!2892139 (= e!1827754 (Some!6501 (Cons!34506 (c!470210 r!23079) Nil!34506)))))

(declare-fun b!2892140 () Bool)

(declare-fun c!470305 () Bool)

(assert (=> b!2892140 (= c!470305 ((_ is Some!6501) lt!1021100))))

(assert (=> b!2892140 (= lt!1021100 call!187885)))

(assert (=> b!2892140 (= e!1827758 e!1827751)))

(declare-fun b!2892141 () Bool)

(assert (=> b!2892141 (= e!1827751 None!6501)))

(declare-fun b!2892142 () Bool)

(assert (=> b!2892142 (= e!1827754 e!1827755)))

(declare-fun c!470301 () Bool)

(assert (=> b!2892142 (= c!470301 ((_ is Star!8829) r!23079))))

(declare-fun b!2892143 () Bool)

(assert (=> b!2892143 (= e!1827756 lt!1021098)))

(assert (= (and d!834516 c!470306) b!2892135))

(assert (= (and d!834516 (not c!470306)) b!2892128))

(assert (= (and b!2892128 c!470302) b!2892134))

(assert (= (and b!2892128 (not c!470302)) b!2892136))

(assert (= (and b!2892136 c!470303) b!2892139))

(assert (= (and b!2892136 (not c!470303)) b!2892142))

(assert (= (and b!2892142 c!470301) b!2892132))

(assert (= (and b!2892142 (not c!470301)) b!2892137))

(assert (= (and b!2892137 c!470308) b!2892133))

(assert (= (and b!2892137 (not c!470308)) b!2892129))

(assert (= (and b!2892133 c!470304) b!2892143))

(assert (= (and b!2892133 (not c!470304)) b!2892131))

(assert (= (and b!2892129 c!470307) b!2892140))

(assert (= (and b!2892129 (not c!470307)) b!2892138))

(assert (= (and b!2892140 c!470305) b!2892130))

(assert (= (and b!2892140 (not c!470305)) b!2892141))

(assert (= (or b!2892131 b!2892129) bm!187879))

(assert (= (or b!2892133 b!2892140) bm!187880))

(declare-fun m!3302835 () Bool)

(assert (=> b!2892130 m!3302835))

(declare-fun m!3302837 () Bool)

(assert (=> bm!187879 m!3302837))

(declare-fun m!3302839 () Bool)

(assert (=> bm!187880 m!3302839))

(assert (=> b!2891833 d!834516))

(declare-fun b!2892144 () Bool)

(declare-fun e!1827761 () Bool)

(declare-fun e!1827760 () Bool)

(assert (=> b!2892144 (= e!1827761 e!1827760)))

(declare-fun res!1196684 () Bool)

(assert (=> b!2892144 (=> (not res!1196684) (not e!1827760))))

(declare-fun call!187886 () Bool)

(assert (=> b!2892144 (= res!1196684 call!187886)))

(declare-fun b!2892145 () Bool)

(declare-fun e!1827764 () Bool)

(declare-fun e!1827759 () Bool)

(assert (=> b!2892145 (= e!1827764 e!1827759)))

(declare-fun c!470310 () Bool)

(assert (=> b!2892145 (= c!470310 ((_ is Union!8829) (regTwo!18171 r!23079)))))

(declare-fun bm!187881 () Bool)

(declare-fun call!187887 () Bool)

(assert (=> bm!187881 (= call!187887 (validRegex!3602 (ite c!470310 (regTwo!18171 (regTwo!18171 r!23079)) (regTwo!18170 (regTwo!18171 r!23079)))))))

(declare-fun b!2892146 () Bool)

(declare-fun res!1196683 () Bool)

(assert (=> b!2892146 (=> res!1196683 e!1827761)))

(assert (=> b!2892146 (= res!1196683 (not ((_ is Concat!14150) (regTwo!18171 r!23079))))))

(assert (=> b!2892146 (= e!1827759 e!1827761)))

(declare-fun b!2892147 () Bool)

(declare-fun e!1827762 () Bool)

(assert (=> b!2892147 (= e!1827762 e!1827764)))

(declare-fun c!470309 () Bool)

(assert (=> b!2892147 (= c!470309 ((_ is Star!8829) (regTwo!18171 r!23079)))))

(declare-fun call!187888 () Bool)

(declare-fun bm!187882 () Bool)

(assert (=> bm!187882 (= call!187888 (validRegex!3602 (ite c!470309 (reg!9158 (regTwo!18171 r!23079)) (ite c!470310 (regOne!18171 (regTwo!18171 r!23079)) (regOne!18170 (regTwo!18171 r!23079))))))))

(declare-fun b!2892148 () Bool)

(assert (=> b!2892148 (= e!1827760 call!187887)))

(declare-fun b!2892149 () Bool)

(declare-fun res!1196681 () Bool)

(declare-fun e!1827763 () Bool)

(assert (=> b!2892149 (=> (not res!1196681) (not e!1827763))))

(assert (=> b!2892149 (= res!1196681 call!187886)))

(assert (=> b!2892149 (= e!1827759 e!1827763)))

(declare-fun d!834530 () Bool)

(declare-fun res!1196682 () Bool)

(assert (=> d!834530 (=> res!1196682 e!1827762)))

(assert (=> d!834530 (= res!1196682 ((_ is ElementMatch!8829) (regTwo!18171 r!23079)))))

(assert (=> d!834530 (= (validRegex!3602 (regTwo!18171 r!23079)) e!1827762)))

(declare-fun b!2892150 () Bool)

(declare-fun e!1827765 () Bool)

(assert (=> b!2892150 (= e!1827764 e!1827765)))

(declare-fun res!1196685 () Bool)

(assert (=> b!2892150 (= res!1196685 (not (nullable!2731 (reg!9158 (regTwo!18171 r!23079)))))))

(assert (=> b!2892150 (=> (not res!1196685) (not e!1827765))))

(declare-fun bm!187883 () Bool)

(assert (=> bm!187883 (= call!187886 call!187888)))

(declare-fun b!2892151 () Bool)

(assert (=> b!2892151 (= e!1827765 call!187888)))

(declare-fun b!2892152 () Bool)

(assert (=> b!2892152 (= e!1827763 call!187887)))

(assert (= (and d!834530 (not res!1196682)) b!2892147))

(assert (= (and b!2892147 c!470309) b!2892150))

(assert (= (and b!2892147 (not c!470309)) b!2892145))

(assert (= (and b!2892150 res!1196685) b!2892151))

(assert (= (and b!2892145 c!470310) b!2892149))

(assert (= (and b!2892145 (not c!470310)) b!2892146))

(assert (= (and b!2892149 res!1196681) b!2892152))

(assert (= (and b!2892146 (not res!1196683)) b!2892144))

(assert (= (and b!2892144 res!1196684) b!2892148))

(assert (= (or b!2892152 b!2892148) bm!187881))

(assert (= (or b!2892149 b!2892144) bm!187883))

(assert (= (or b!2892151 bm!187883) bm!187882))

(declare-fun m!3302841 () Bool)

(assert (=> bm!187881 m!3302841))

(declare-fun m!3302843 () Bool)

(assert (=> bm!187882 m!3302843))

(declare-fun m!3302845 () Bool)

(assert (=> b!2892150 m!3302845))

(assert (=> b!2891832 d!834530))

(declare-fun b!2892153 () Bool)

(declare-fun e!1827767 () Option!6502)

(declare-fun e!1827768 () Option!6502)

(assert (=> b!2892153 (= e!1827767 e!1827768)))

(declare-fun c!470312 () Bool)

(assert (=> b!2892153 (= c!470312 ((_ is EmptyLang!8829) (regOne!18171 r!23079)))))

(declare-fun b!2892154 () Bool)

(declare-fun e!1827772 () Option!6502)

(declare-fun e!1827773 () Option!6502)

(assert (=> b!2892154 (= e!1827772 e!1827773)))

(declare-fun lt!1021104 () Option!6502)

(declare-fun call!187889 () Option!6502)

(assert (=> b!2892154 (= lt!1021104 call!187889)))

(declare-fun c!470317 () Bool)

(assert (=> b!2892154 (= c!470317 ((_ is Some!6501) lt!1021104))))

(declare-fun b!2892155 () Bool)

(declare-fun e!1827766 () Option!6502)

(declare-fun lt!1021105 () Option!6502)

(assert (=> b!2892155 (= e!1827766 (Some!6501 (++!8229 (v!34627 lt!1021104) (v!34627 lt!1021105))))))

(declare-fun b!2892156 () Bool)

(declare-fun e!1827771 () Option!6502)

(assert (=> b!2892156 (= e!1827771 call!187889)))

(declare-fun bm!187884 () Bool)

(declare-fun c!470318 () Bool)

(assert (=> bm!187884 (= call!187889 (getLanguageWitness!536 (ite c!470318 (regTwo!18171 (regOne!18171 r!23079)) (regOne!18170 (regOne!18171 r!23079)))))))

(declare-fun b!2892157 () Bool)

(declare-fun e!1827770 () Option!6502)

(assert (=> b!2892157 (= e!1827770 (Some!6501 Nil!34506))))

(declare-fun b!2892158 () Bool)

(assert (=> b!2892158 (= e!1827772 e!1827771)))

(declare-fun lt!1021103 () Option!6502)

(declare-fun call!187890 () Option!6502)

(assert (=> b!2892158 (= lt!1021103 call!187890)))

(declare-fun c!470314 () Bool)

(assert (=> b!2892158 (= c!470314 ((_ is Some!6501) lt!1021103))))

(declare-fun b!2892159 () Bool)

(assert (=> b!2892159 (= e!1827768 None!6501)))

(declare-fun b!2892160 () Bool)

(assert (=> b!2892160 (= e!1827767 (Some!6501 Nil!34506))))

(declare-fun b!2892161 () Bool)

(declare-fun c!470313 () Bool)

(assert (=> b!2892161 (= c!470313 ((_ is ElementMatch!8829) (regOne!18171 r!23079)))))

(declare-fun e!1827769 () Option!6502)

(assert (=> b!2892161 (= e!1827768 e!1827769)))

(declare-fun b!2892162 () Bool)

(assert (=> b!2892162 (= c!470318 ((_ is Union!8829) (regOne!18171 r!23079)))))

(assert (=> b!2892162 (= e!1827770 e!1827772)))

(declare-fun d!834532 () Bool)

(declare-fun c!470316 () Bool)

(assert (=> d!834532 (= c!470316 ((_ is EmptyExpr!8829) (regOne!18171 r!23079)))))

(assert (=> d!834532 (= (getLanguageWitness!536 (regOne!18171 r!23079)) e!1827767)))

(declare-fun bm!187885 () Bool)

(assert (=> bm!187885 (= call!187890 (getLanguageWitness!536 (ite c!470318 (regOne!18171 (regOne!18171 r!23079)) (regTwo!18170 (regOne!18171 r!23079)))))))

(declare-fun b!2892163 () Bool)

(assert (=> b!2892163 (= e!1827773 None!6501)))

(declare-fun b!2892164 () Bool)

(assert (=> b!2892164 (= e!1827769 (Some!6501 (Cons!34506 (c!470210 (regOne!18171 r!23079)) Nil!34506)))))

(declare-fun b!2892165 () Bool)

(declare-fun c!470315 () Bool)

(assert (=> b!2892165 (= c!470315 ((_ is Some!6501) lt!1021105))))

(assert (=> b!2892165 (= lt!1021105 call!187890)))

(assert (=> b!2892165 (= e!1827773 e!1827766)))

(declare-fun b!2892166 () Bool)

(assert (=> b!2892166 (= e!1827766 None!6501)))

(declare-fun b!2892167 () Bool)

(assert (=> b!2892167 (= e!1827769 e!1827770)))

(declare-fun c!470311 () Bool)

(assert (=> b!2892167 (= c!470311 ((_ is Star!8829) (regOne!18171 r!23079)))))

(declare-fun b!2892168 () Bool)

(assert (=> b!2892168 (= e!1827771 lt!1021103)))

(assert (= (and d!834532 c!470316) b!2892160))

(assert (= (and d!834532 (not c!470316)) b!2892153))

(assert (= (and b!2892153 c!470312) b!2892159))

(assert (= (and b!2892153 (not c!470312)) b!2892161))

(assert (= (and b!2892161 c!470313) b!2892164))

(assert (= (and b!2892161 (not c!470313)) b!2892167))

(assert (= (and b!2892167 c!470311) b!2892157))

(assert (= (and b!2892167 (not c!470311)) b!2892162))

(assert (= (and b!2892162 c!470318) b!2892158))

(assert (= (and b!2892162 (not c!470318)) b!2892154))

(assert (= (and b!2892158 c!470314) b!2892168))

(assert (= (and b!2892158 (not c!470314)) b!2892156))

(assert (= (and b!2892154 c!470317) b!2892165))

(assert (= (and b!2892154 (not c!470317)) b!2892163))

(assert (= (and b!2892165 c!470315) b!2892155))

(assert (= (and b!2892165 (not c!470315)) b!2892166))

(assert (= (or b!2892156 b!2892154) bm!187884))

(assert (= (or b!2892158 b!2892165) bm!187885))

(declare-fun m!3302853 () Bool)

(assert (=> b!2892155 m!3302853))

(declare-fun m!3302855 () Bool)

(assert (=> bm!187884 m!3302855))

(declare-fun m!3302857 () Bool)

(assert (=> bm!187885 m!3302857))

(assert (=> b!2891829 d!834532))

(declare-fun e!1827782 () Bool)

(assert (=> b!2891836 (= tp!928548 e!1827782)))

(declare-fun b!2892205 () Bool)

(assert (=> b!2892205 (= e!1827782 tp_is_empty!15245)))

(declare-fun b!2892208 () Bool)

(declare-fun tp!928590 () Bool)

(declare-fun tp!928594 () Bool)

(assert (=> b!2892208 (= e!1827782 (and tp!928590 tp!928594))))

(declare-fun b!2892207 () Bool)

(declare-fun tp!928591 () Bool)

(assert (=> b!2892207 (= e!1827782 tp!928591)))

(declare-fun b!2892206 () Bool)

(declare-fun tp!928593 () Bool)

(declare-fun tp!928592 () Bool)

(assert (=> b!2892206 (= e!1827782 (and tp!928593 tp!928592))))

(assert (= (and b!2891836 ((_ is ElementMatch!8829) (regOne!18170 r!23079))) b!2892205))

(assert (= (and b!2891836 ((_ is Concat!14150) (regOne!18170 r!23079))) b!2892206))

(assert (= (and b!2891836 ((_ is Star!8829) (regOne!18170 r!23079))) b!2892207))

(assert (= (and b!2891836 ((_ is Union!8829) (regOne!18170 r!23079))) b!2892208))

(declare-fun e!1827784 () Bool)

(assert (=> b!2891836 (= tp!928549 e!1827784)))

(declare-fun b!2892213 () Bool)

(assert (=> b!2892213 (= e!1827784 tp_is_empty!15245)))

(declare-fun b!2892216 () Bool)

(declare-fun tp!928600 () Bool)

(declare-fun tp!928604 () Bool)

(assert (=> b!2892216 (= e!1827784 (and tp!928600 tp!928604))))

(declare-fun b!2892215 () Bool)

(declare-fun tp!928601 () Bool)

(assert (=> b!2892215 (= e!1827784 tp!928601)))

(declare-fun b!2892214 () Bool)

(declare-fun tp!928603 () Bool)

(declare-fun tp!928602 () Bool)

(assert (=> b!2892214 (= e!1827784 (and tp!928603 tp!928602))))

(assert (= (and b!2891836 ((_ is ElementMatch!8829) (regTwo!18170 r!23079))) b!2892213))

(assert (= (and b!2891836 ((_ is Concat!14150) (regTwo!18170 r!23079))) b!2892214))

(assert (= (and b!2891836 ((_ is Star!8829) (regTwo!18170 r!23079))) b!2892215))

(assert (= (and b!2891836 ((_ is Union!8829) (regTwo!18170 r!23079))) b!2892216))

(declare-fun e!1827785 () Bool)

(assert (=> b!2891831 (= tp!928547 e!1827785)))

(declare-fun b!2892217 () Bool)

(assert (=> b!2892217 (= e!1827785 tp_is_empty!15245)))

(declare-fun b!2892220 () Bool)

(declare-fun tp!928605 () Bool)

(declare-fun tp!928609 () Bool)

(assert (=> b!2892220 (= e!1827785 (and tp!928605 tp!928609))))

(declare-fun b!2892219 () Bool)

(declare-fun tp!928606 () Bool)

(assert (=> b!2892219 (= e!1827785 tp!928606)))

(declare-fun b!2892218 () Bool)

(declare-fun tp!928608 () Bool)

(declare-fun tp!928607 () Bool)

(assert (=> b!2892218 (= e!1827785 (and tp!928608 tp!928607))))

(assert (= (and b!2891831 ((_ is ElementMatch!8829) (reg!9158 r!23079))) b!2892217))

(assert (= (and b!2891831 ((_ is Concat!14150) (reg!9158 r!23079))) b!2892218))

(assert (= (and b!2891831 ((_ is Star!8829) (reg!9158 r!23079))) b!2892219))

(assert (= (and b!2891831 ((_ is Union!8829) (reg!9158 r!23079))) b!2892220))

(declare-fun e!1827786 () Bool)

(assert (=> b!2891838 (= tp!928546 e!1827786)))

(declare-fun b!2892221 () Bool)

(assert (=> b!2892221 (= e!1827786 tp_is_empty!15245)))

(declare-fun b!2892224 () Bool)

(declare-fun tp!928610 () Bool)

(declare-fun tp!928614 () Bool)

(assert (=> b!2892224 (= e!1827786 (and tp!928610 tp!928614))))

(declare-fun b!2892223 () Bool)

(declare-fun tp!928611 () Bool)

(assert (=> b!2892223 (= e!1827786 tp!928611)))

(declare-fun b!2892222 () Bool)

(declare-fun tp!928613 () Bool)

(declare-fun tp!928612 () Bool)

(assert (=> b!2892222 (= e!1827786 (and tp!928613 tp!928612))))

(assert (= (and b!2891838 ((_ is ElementMatch!8829) (regOne!18171 r!23079))) b!2892221))

(assert (= (and b!2891838 ((_ is Concat!14150) (regOne!18171 r!23079))) b!2892222))

(assert (= (and b!2891838 ((_ is Star!8829) (regOne!18171 r!23079))) b!2892223))

(assert (= (and b!2891838 ((_ is Union!8829) (regOne!18171 r!23079))) b!2892224))

(declare-fun e!1827787 () Bool)

(assert (=> b!2891838 (= tp!928545 e!1827787)))

(declare-fun b!2892225 () Bool)

(assert (=> b!2892225 (= e!1827787 tp_is_empty!15245)))

(declare-fun b!2892228 () Bool)

(declare-fun tp!928615 () Bool)

(declare-fun tp!928619 () Bool)

(assert (=> b!2892228 (= e!1827787 (and tp!928615 tp!928619))))

(declare-fun b!2892227 () Bool)

(declare-fun tp!928616 () Bool)

(assert (=> b!2892227 (= e!1827787 tp!928616)))

(declare-fun b!2892226 () Bool)

(declare-fun tp!928618 () Bool)

(declare-fun tp!928617 () Bool)

(assert (=> b!2892226 (= e!1827787 (and tp!928618 tp!928617))))

(assert (= (and b!2891838 ((_ is ElementMatch!8829) (regTwo!18171 r!23079))) b!2892225))

(assert (= (and b!2891838 ((_ is Concat!14150) (regTwo!18171 r!23079))) b!2892226))

(assert (= (and b!2891838 ((_ is Star!8829) (regTwo!18171 r!23079))) b!2892227))

(assert (= (and b!2891838 ((_ is Union!8829) (regTwo!18171 r!23079))) b!2892228))

(check-sat (not d!834508) (not b!2892011) (not b!2892223) tp_is_empty!15245 (not bm!187865) (not bm!187884) (not b!2892216) (not b!2892218) (not bm!187882) (not b!2892222) (not b!2892226) (not b!2892150) (not bm!187881) (not b!2891972) (not b!2892155) (not b!2891998) (not d!834498) (not b!2892012) (not b!2892215) (not b!2892219) (not b!2891973) (not bm!187859) (not bm!187885) (not b!2892004) (not b!2892220) (not b!2892227) (not b!2892014) (not b!2892228) (not b!2891881) (not bm!187880) (not bm!187845) (not b!2892008) (not b!2891969) (not d!834514) (not b!2892224) (not bm!187863) (not b!2892206) (not bm!187844) (not bm!187879) (not b!2891975) (not b!2892009) (not b!2892207) (not b!2891970) (not d!834512) (not b!2892130) (not b!2891965) (not b!2892214) (not bm!187862) (not b!2892208))
(check-sat)
