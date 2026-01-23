; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!230640 () Bool)

(assert start!230640)

(declare-fun b!2338689 () Bool)

(declare-fun res!996985 () Bool)

(declare-fun e!1497082 () Bool)

(assert (=> b!2338689 (=> (not res!996985) (not e!1497082))))

(declare-datatypes ((C!13884 0))(
  ( (C!13885 (val!8102 Int)) )
))
(declare-datatypes ((Regex!6863 0))(
  ( (ElementMatch!6863 (c!371867 C!13884)) (Concat!11485 (regOne!14238 Regex!6863) (regTwo!14238 Regex!6863)) (EmptyExpr!6863) (Star!6863 (reg!7192 Regex!6863)) (EmptyLang!6863) (Union!6863 (regOne!14239 Regex!6863) (regTwo!14239 Regex!6863)) )
))
(declare-fun r!26197 () Regex!6863)

(declare-fun c!13498 () C!13884)

(declare-fun nullable!1942 (Regex!6863) Bool)

(declare-fun derivativeStep!1602 (Regex!6863 C!13884) Regex!6863)

(assert (=> b!2338689 (= res!996985 (nullable!1942 (derivativeStep!1602 r!26197 c!13498)))))

(declare-fun b!2338690 () Bool)

(declare-fun res!996984 () Bool)

(assert (=> b!2338690 (=> (not res!996984) (not e!1497082))))

(get-info :version)

(assert (=> b!2338690 (= res!996984 (and (not ((_ is EmptyExpr!6863) r!26197)) (not ((_ is EmptyLang!6863) r!26197)) (not ((_ is ElementMatch!6863) r!26197)) ((_ is Union!6863) r!26197)))))

(declare-fun b!2338691 () Bool)

(declare-fun res!996983 () Bool)

(assert (=> b!2338691 (=> (not res!996983) (not e!1497082))))

(assert (=> b!2338691 (= res!996983 (not (nullable!1942 r!26197)))))

(declare-fun b!2338692 () Bool)

(declare-fun e!1497083 () Bool)

(declare-fun tp_is_empty!11037 () Bool)

(assert (=> b!2338692 (= e!1497083 tp_is_empty!11037)))

(declare-fun b!2338693 () Bool)

(declare-fun e!1497081 () Bool)

(declare-fun validRegex!2608 (Regex!6863) Bool)

(assert (=> b!2338693 (= e!1497081 (not (validRegex!2608 (regTwo!14239 r!26197))))))

(declare-fun b!2338694 () Bool)

(declare-fun tp!742087 () Bool)

(assert (=> b!2338694 (= e!1497083 tp!742087)))

(declare-fun b!2338695 () Bool)

(declare-fun tp!742088 () Bool)

(declare-fun tp!742090 () Bool)

(assert (=> b!2338695 (= e!1497083 (and tp!742088 tp!742090))))

(declare-fun b!2338696 () Bool)

(declare-datatypes ((Unit!40722 0))(
  ( (Unit!40723) )
))
(declare-fun e!1497084 () Unit!40722)

(declare-fun Unit!40724 () Unit!40722)

(assert (=> b!2338696 (= e!1497084 Unit!40724)))

(assert (=> b!2338696 false))

(declare-fun res!996986 () Bool)

(assert (=> start!230640 (=> (not res!996986) (not e!1497082))))

(assert (=> start!230640 (= res!996986 (validRegex!2608 r!26197))))

(assert (=> start!230640 e!1497082))

(assert (=> start!230640 e!1497083))

(assert (=> start!230640 tp_is_empty!11037))

(declare-fun b!2338697 () Bool)

(declare-fun res!996987 () Bool)

(assert (=> b!2338697 (=> (not res!996987) (not e!1497081))))

(assert (=> b!2338697 (= res!996987 (nullable!1942 (derivativeStep!1602 (regTwo!14239 r!26197) c!13498)))))

(declare-fun b!2338698 () Bool)

(declare-fun tp!742089 () Bool)

(declare-fun tp!742091 () Bool)

(assert (=> b!2338698 (= e!1497083 (and tp!742089 tp!742091))))

(declare-fun b!2338699 () Bool)

(declare-fun e!1497080 () Unit!40722)

(declare-fun Unit!40725 () Unit!40722)

(assert (=> b!2338699 (= e!1497080 Unit!40725)))

(declare-fun b!2338700 () Bool)

(assert (=> b!2338700 (= e!1497082 e!1497081)))

(declare-fun res!996982 () Bool)

(assert (=> b!2338700 (=> (not res!996982) (not e!1497081))))

(assert (=> b!2338700 (= res!996982 (not (nullable!1942 (derivativeStep!1602 (regOne!14239 r!26197) c!13498))))))

(declare-fun lt!862606 () Unit!40722)

(assert (=> b!2338700 (= lt!862606 e!1497080)))

(declare-fun c!371865 () Bool)

(assert (=> b!2338700 (= c!371865 (nullable!1942 (regTwo!14239 r!26197)))))

(declare-fun lt!862607 () Unit!40722)

(assert (=> b!2338700 (= lt!862607 e!1497084)))

(declare-fun c!371866 () Bool)

(assert (=> b!2338700 (= c!371866 (nullable!1942 (regOne!14239 r!26197)))))

(declare-fun b!2338701 () Bool)

(declare-fun Unit!40726 () Unit!40722)

(assert (=> b!2338701 (= e!1497080 Unit!40726)))

(assert (=> b!2338701 false))

(declare-fun b!2338702 () Bool)

(declare-fun Unit!40727 () Unit!40722)

(assert (=> b!2338702 (= e!1497084 Unit!40727)))

(assert (= (and start!230640 res!996986) b!2338691))

(assert (= (and b!2338691 res!996983) b!2338689))

(assert (= (and b!2338689 res!996985) b!2338690))

(assert (= (and b!2338690 res!996984) b!2338700))

(assert (= (and b!2338700 c!371866) b!2338696))

(assert (= (and b!2338700 (not c!371866)) b!2338702))

(assert (= (and b!2338700 c!371865) b!2338701))

(assert (= (and b!2338700 (not c!371865)) b!2338699))

(assert (= (and b!2338700 res!996982) b!2338697))

(assert (= (and b!2338697 res!996987) b!2338693))

(assert (= (and start!230640 ((_ is ElementMatch!6863) r!26197)) b!2338692))

(assert (= (and start!230640 ((_ is Concat!11485) r!26197)) b!2338698))

(assert (= (and start!230640 ((_ is Star!6863) r!26197)) b!2338694))

(assert (= (and start!230640 ((_ is Union!6863) r!26197)) b!2338695))

(declare-fun m!2763821 () Bool)

(assert (=> b!2338689 m!2763821))

(assert (=> b!2338689 m!2763821))

(declare-fun m!2763823 () Bool)

(assert (=> b!2338689 m!2763823))

(declare-fun m!2763825 () Bool)

(assert (=> b!2338700 m!2763825))

(assert (=> b!2338700 m!2763825))

(declare-fun m!2763827 () Bool)

(assert (=> b!2338700 m!2763827))

(declare-fun m!2763829 () Bool)

(assert (=> b!2338700 m!2763829))

(declare-fun m!2763831 () Bool)

(assert (=> b!2338700 m!2763831))

(declare-fun m!2763833 () Bool)

(assert (=> b!2338693 m!2763833))

(declare-fun m!2763835 () Bool)

(assert (=> start!230640 m!2763835))

(declare-fun m!2763837 () Bool)

(assert (=> b!2338697 m!2763837))

(assert (=> b!2338697 m!2763837))

(declare-fun m!2763839 () Bool)

(assert (=> b!2338697 m!2763839))

(declare-fun m!2763841 () Bool)

(assert (=> b!2338691 m!2763841))

(check-sat (not b!2338691) (not b!2338689) tp_is_empty!11037 (not b!2338695) (not start!230640) (not b!2338697) (not b!2338700) (not b!2338698) (not b!2338693) (not b!2338694))
(check-sat)
(get-model)

(declare-fun b!2338741 () Bool)

(declare-fun e!1497115 () Bool)

(declare-fun call!140583 () Bool)

(assert (=> b!2338741 (= e!1497115 call!140583)))

(declare-fun b!2338742 () Bool)

(declare-fun e!1497114 () Bool)

(declare-fun call!140582 () Bool)

(assert (=> b!2338742 (= e!1497114 call!140582)))

(declare-fun bm!140577 () Bool)

(assert (=> bm!140577 (= call!140582 call!140583)))

(declare-fun b!2338743 () Bool)

(declare-fun e!1497111 () Bool)

(declare-fun e!1497109 () Bool)

(assert (=> b!2338743 (= e!1497111 e!1497109)))

(declare-fun c!371883 () Bool)

(assert (=> b!2338743 (= c!371883 ((_ is Union!6863) r!26197))))

(declare-fun bm!140578 () Bool)

(declare-fun c!371882 () Bool)

(assert (=> bm!140578 (= call!140583 (validRegex!2608 (ite c!371882 (reg!7192 r!26197) (ite c!371883 (regTwo!14239 r!26197) (regTwo!14238 r!26197)))))))

(declare-fun b!2338744 () Bool)

(declare-fun e!1497110 () Bool)

(assert (=> b!2338744 (= e!1497110 e!1497114)))

(declare-fun res!997000 () Bool)

(assert (=> b!2338744 (=> (not res!997000) (not e!1497114))))

(declare-fun call!140581 () Bool)

(assert (=> b!2338744 (= res!997000 call!140581)))

(declare-fun b!2338745 () Bool)

(declare-fun res!997002 () Bool)

(declare-fun e!1497112 () Bool)

(assert (=> b!2338745 (=> (not res!997002) (not e!1497112))))

(assert (=> b!2338745 (= res!997002 call!140581)))

(assert (=> b!2338745 (= e!1497109 e!1497112)))

(declare-fun bm!140576 () Bool)

(assert (=> bm!140576 (= call!140581 (validRegex!2608 (ite c!371883 (regOne!14239 r!26197) (regOne!14238 r!26197))))))

(declare-fun d!690901 () Bool)

(declare-fun res!996998 () Bool)

(declare-fun e!1497113 () Bool)

(assert (=> d!690901 (=> res!996998 e!1497113)))

(assert (=> d!690901 (= res!996998 ((_ is ElementMatch!6863) r!26197))))

(assert (=> d!690901 (= (validRegex!2608 r!26197) e!1497113)))

(declare-fun b!2338746 () Bool)

(assert (=> b!2338746 (= e!1497113 e!1497111)))

(assert (=> b!2338746 (= c!371882 ((_ is Star!6863) r!26197))))

(declare-fun b!2338747 () Bool)

(declare-fun res!996999 () Bool)

(assert (=> b!2338747 (=> res!996999 e!1497110)))

(assert (=> b!2338747 (= res!996999 (not ((_ is Concat!11485) r!26197)))))

(assert (=> b!2338747 (= e!1497109 e!1497110)))

(declare-fun b!2338748 () Bool)

(assert (=> b!2338748 (= e!1497112 call!140582)))

(declare-fun b!2338749 () Bool)

(assert (=> b!2338749 (= e!1497111 e!1497115)))

(declare-fun res!997001 () Bool)

(assert (=> b!2338749 (= res!997001 (not (nullable!1942 (reg!7192 r!26197))))))

(assert (=> b!2338749 (=> (not res!997001) (not e!1497115))))

(assert (= (and d!690901 (not res!996998)) b!2338746))

(assert (= (and b!2338746 c!371882) b!2338749))

(assert (= (and b!2338746 (not c!371882)) b!2338743))

(assert (= (and b!2338749 res!997001) b!2338741))

(assert (= (and b!2338743 c!371883) b!2338745))

(assert (= (and b!2338743 (not c!371883)) b!2338747))

(assert (= (and b!2338745 res!997002) b!2338748))

(assert (= (and b!2338747 (not res!996999)) b!2338744))

(assert (= (and b!2338744 res!997000) b!2338742))

(assert (= (or b!2338748 b!2338742) bm!140577))

(assert (= (or b!2338745 b!2338744) bm!140576))

(assert (= (or b!2338741 bm!140577) bm!140578))

(declare-fun m!2763845 () Bool)

(assert (=> bm!140578 m!2763845))

(declare-fun m!2763847 () Bool)

(assert (=> bm!140576 m!2763847))

(declare-fun m!2763849 () Bool)

(assert (=> b!2338749 m!2763849))

(assert (=> start!230640 d!690901))

(declare-fun b!2338750 () Bool)

(declare-fun e!1497122 () Bool)

(declare-fun call!140590 () Bool)

(assert (=> b!2338750 (= e!1497122 call!140590)))

(declare-fun b!2338751 () Bool)

(declare-fun e!1497121 () Bool)

(declare-fun call!140589 () Bool)

(assert (=> b!2338751 (= e!1497121 call!140589)))

(declare-fun bm!140584 () Bool)

(assert (=> bm!140584 (= call!140589 call!140590)))

(declare-fun b!2338752 () Bool)

(declare-fun e!1497118 () Bool)

(declare-fun e!1497116 () Bool)

(assert (=> b!2338752 (= e!1497118 e!1497116)))

(declare-fun c!371885 () Bool)

(assert (=> b!2338752 (= c!371885 ((_ is Union!6863) (regTwo!14239 r!26197)))))

(declare-fun c!371884 () Bool)

(declare-fun bm!140585 () Bool)

(assert (=> bm!140585 (= call!140590 (validRegex!2608 (ite c!371884 (reg!7192 (regTwo!14239 r!26197)) (ite c!371885 (regTwo!14239 (regTwo!14239 r!26197)) (regTwo!14238 (regTwo!14239 r!26197))))))))

(declare-fun b!2338753 () Bool)

(declare-fun e!1497117 () Bool)

(assert (=> b!2338753 (= e!1497117 e!1497121)))

(declare-fun res!997005 () Bool)

(assert (=> b!2338753 (=> (not res!997005) (not e!1497121))))

(declare-fun call!140588 () Bool)

(assert (=> b!2338753 (= res!997005 call!140588)))

(declare-fun b!2338754 () Bool)

(declare-fun res!997007 () Bool)

(declare-fun e!1497119 () Bool)

(assert (=> b!2338754 (=> (not res!997007) (not e!1497119))))

(assert (=> b!2338754 (= res!997007 call!140588)))

(assert (=> b!2338754 (= e!1497116 e!1497119)))

(declare-fun bm!140583 () Bool)

(assert (=> bm!140583 (= call!140588 (validRegex!2608 (ite c!371885 (regOne!14239 (regTwo!14239 r!26197)) (regOne!14238 (regTwo!14239 r!26197)))))))

(declare-fun d!690905 () Bool)

(declare-fun res!997003 () Bool)

(declare-fun e!1497120 () Bool)

(assert (=> d!690905 (=> res!997003 e!1497120)))

(assert (=> d!690905 (= res!997003 ((_ is ElementMatch!6863) (regTwo!14239 r!26197)))))

(assert (=> d!690905 (= (validRegex!2608 (regTwo!14239 r!26197)) e!1497120)))

(declare-fun b!2338755 () Bool)

(assert (=> b!2338755 (= e!1497120 e!1497118)))

(assert (=> b!2338755 (= c!371884 ((_ is Star!6863) (regTwo!14239 r!26197)))))

(declare-fun b!2338756 () Bool)

(declare-fun res!997004 () Bool)

(assert (=> b!2338756 (=> res!997004 e!1497117)))

(assert (=> b!2338756 (= res!997004 (not ((_ is Concat!11485) (regTwo!14239 r!26197))))))

(assert (=> b!2338756 (= e!1497116 e!1497117)))

(declare-fun b!2338757 () Bool)

(assert (=> b!2338757 (= e!1497119 call!140589)))

(declare-fun b!2338758 () Bool)

(assert (=> b!2338758 (= e!1497118 e!1497122)))

(declare-fun res!997006 () Bool)

(assert (=> b!2338758 (= res!997006 (not (nullable!1942 (reg!7192 (regTwo!14239 r!26197)))))))

(assert (=> b!2338758 (=> (not res!997006) (not e!1497122))))

(assert (= (and d!690905 (not res!997003)) b!2338755))

(assert (= (and b!2338755 c!371884) b!2338758))

(assert (= (and b!2338755 (not c!371884)) b!2338752))

(assert (= (and b!2338758 res!997006) b!2338750))

(assert (= (and b!2338752 c!371885) b!2338754))

(assert (= (and b!2338752 (not c!371885)) b!2338756))

(assert (= (and b!2338754 res!997007) b!2338757))

(assert (= (and b!2338756 (not res!997004)) b!2338753))

(assert (= (and b!2338753 res!997005) b!2338751))

(assert (= (or b!2338757 b!2338751) bm!140584))

(assert (= (or b!2338754 b!2338753) bm!140583))

(assert (= (or b!2338750 bm!140584) bm!140585))

(declare-fun m!2763851 () Bool)

(assert (=> bm!140585 m!2763851))

(declare-fun m!2763853 () Bool)

(assert (=> bm!140583 m!2763853))

(declare-fun m!2763855 () Bool)

(assert (=> b!2338758 m!2763855))

(assert (=> b!2338693 d!690905))

(declare-fun d!690907 () Bool)

(declare-fun nullableFct!497 (Regex!6863) Bool)

(assert (=> d!690907 (= (nullable!1942 (derivativeStep!1602 (regOne!14239 r!26197) c!13498)) (nullableFct!497 (derivativeStep!1602 (regOne!14239 r!26197) c!13498)))))

(declare-fun bs!459986 () Bool)

(assert (= bs!459986 d!690907))

(assert (=> bs!459986 m!2763825))

(declare-fun m!2763857 () Bool)

(assert (=> bs!459986 m!2763857))

(assert (=> b!2338700 d!690907))

(declare-fun call!140621 () Regex!6863)

(declare-fun call!140622 () Regex!6863)

(declare-fun e!1497162 () Regex!6863)

(declare-fun b!2338827 () Bool)

(assert (=> b!2338827 (= e!1497162 (Union!6863 (Concat!11485 call!140622 (regTwo!14238 (regOne!14239 r!26197))) call!140621))))

(declare-fun bm!140616 () Bool)

(declare-fun call!140624 () Regex!6863)

(assert (=> bm!140616 (= call!140622 call!140624)))

(declare-fun b!2338828 () Bool)

(declare-fun e!1497166 () Regex!6863)

(assert (=> b!2338828 (= e!1497166 EmptyLang!6863)))

(declare-fun b!2338829 () Bool)

(declare-fun c!371915 () Bool)

(assert (=> b!2338829 (= c!371915 ((_ is Union!6863) (regOne!14239 r!26197)))))

(declare-fun e!1497163 () Regex!6863)

(declare-fun e!1497164 () Regex!6863)

(assert (=> b!2338829 (= e!1497163 e!1497164)))

(declare-fun b!2338831 () Bool)

(declare-fun c!371916 () Bool)

(assert (=> b!2338831 (= c!371916 (nullable!1942 (regOne!14238 (regOne!14239 r!26197))))))

(declare-fun e!1497165 () Regex!6863)

(assert (=> b!2338831 (= e!1497165 e!1497162)))

(declare-fun bm!140617 () Bool)

(declare-fun call!140623 () Regex!6863)

(assert (=> bm!140617 (= call!140624 call!140623)))

(declare-fun b!2338832 () Bool)

(assert (=> b!2338832 (= e!1497163 (ite (= c!13498 (c!371867 (regOne!14239 r!26197))) EmptyExpr!6863 EmptyLang!6863))))

(declare-fun b!2338833 () Bool)

(assert (=> b!2338833 (= e!1497162 (Union!6863 (Concat!11485 call!140622 (regTwo!14238 (regOne!14239 r!26197))) EmptyLang!6863))))

(declare-fun b!2338834 () Bool)

(assert (=> b!2338834 (= e!1497164 e!1497165)))

(declare-fun c!371919 () Bool)

(assert (=> b!2338834 (= c!371919 ((_ is Star!6863) (regOne!14239 r!26197)))))

(declare-fun b!2338835 () Bool)

(assert (=> b!2338835 (= e!1497165 (Concat!11485 call!140624 (regOne!14239 r!26197)))))

(declare-fun bm!140618 () Bool)

(assert (=> bm!140618 (= call!140621 (derivativeStep!1602 (ite c!371915 (regOne!14239 (regOne!14239 r!26197)) (regTwo!14238 (regOne!14239 r!26197))) c!13498))))

(declare-fun bm!140619 () Bool)

(assert (=> bm!140619 (= call!140623 (derivativeStep!1602 (ite c!371915 (regTwo!14239 (regOne!14239 r!26197)) (ite c!371919 (reg!7192 (regOne!14239 r!26197)) (regOne!14238 (regOne!14239 r!26197)))) c!13498))))

(declare-fun b!2338836 () Bool)

(assert (=> b!2338836 (= e!1497166 e!1497163)))

(declare-fun c!371918 () Bool)

(assert (=> b!2338836 (= c!371918 ((_ is ElementMatch!6863) (regOne!14239 r!26197)))))

(declare-fun d!690909 () Bool)

(declare-fun lt!862615 () Regex!6863)

(assert (=> d!690909 (validRegex!2608 lt!862615)))

(assert (=> d!690909 (= lt!862615 e!1497166)))

(declare-fun c!371917 () Bool)

(assert (=> d!690909 (= c!371917 (or ((_ is EmptyExpr!6863) (regOne!14239 r!26197)) ((_ is EmptyLang!6863) (regOne!14239 r!26197))))))

(assert (=> d!690909 (validRegex!2608 (regOne!14239 r!26197))))

(assert (=> d!690909 (= (derivativeStep!1602 (regOne!14239 r!26197) c!13498) lt!862615)))

(declare-fun b!2338830 () Bool)

(assert (=> b!2338830 (= e!1497164 (Union!6863 call!140621 call!140623))))

(assert (= (and d!690909 c!371917) b!2338828))

(assert (= (and d!690909 (not c!371917)) b!2338836))

(assert (= (and b!2338836 c!371918) b!2338832))

(assert (= (and b!2338836 (not c!371918)) b!2338829))

(assert (= (and b!2338829 c!371915) b!2338830))

(assert (= (and b!2338829 (not c!371915)) b!2338834))

(assert (= (and b!2338834 c!371919) b!2338835))

(assert (= (and b!2338834 (not c!371919)) b!2338831))

(assert (= (and b!2338831 c!371916) b!2338827))

(assert (= (and b!2338831 (not c!371916)) b!2338833))

(assert (= (or b!2338827 b!2338833) bm!140616))

(assert (= (or b!2338835 bm!140616) bm!140617))

(assert (= (or b!2338830 bm!140617) bm!140619))

(assert (= (or b!2338830 b!2338827) bm!140618))

(declare-fun m!2763893 () Bool)

(assert (=> b!2338831 m!2763893))

(declare-fun m!2763895 () Bool)

(assert (=> bm!140618 m!2763895))

(declare-fun m!2763897 () Bool)

(assert (=> bm!140619 m!2763897))

(declare-fun m!2763899 () Bool)

(assert (=> d!690909 m!2763899))

(declare-fun m!2763901 () Bool)

(assert (=> d!690909 m!2763901))

(assert (=> b!2338700 d!690909))

(declare-fun d!690925 () Bool)

(assert (=> d!690925 (= (nullable!1942 (regTwo!14239 r!26197)) (nullableFct!497 (regTwo!14239 r!26197)))))

(declare-fun bs!459991 () Bool)

(assert (= bs!459991 d!690925))

(declare-fun m!2763903 () Bool)

(assert (=> bs!459991 m!2763903))

(assert (=> b!2338700 d!690925))

(declare-fun d!690927 () Bool)

(assert (=> d!690927 (= (nullable!1942 (regOne!14239 r!26197)) (nullableFct!497 (regOne!14239 r!26197)))))

(declare-fun bs!459992 () Bool)

(assert (= bs!459992 d!690927))

(declare-fun m!2763905 () Bool)

(assert (=> bs!459992 m!2763905))

(assert (=> b!2338700 d!690927))

(declare-fun d!690929 () Bool)

(assert (=> d!690929 (= (nullable!1942 (derivativeStep!1602 r!26197 c!13498)) (nullableFct!497 (derivativeStep!1602 r!26197 c!13498)))))

(declare-fun bs!459993 () Bool)

(assert (= bs!459993 d!690929))

(assert (=> bs!459993 m!2763821))

(declare-fun m!2763907 () Bool)

(assert (=> bs!459993 m!2763907))

(assert (=> b!2338689 d!690929))

(declare-fun call!140626 () Regex!6863)

(declare-fun b!2338837 () Bool)

(declare-fun e!1497167 () Regex!6863)

(declare-fun call!140625 () Regex!6863)

(assert (=> b!2338837 (= e!1497167 (Union!6863 (Concat!11485 call!140626 (regTwo!14238 r!26197)) call!140625))))

(declare-fun bm!140620 () Bool)

(declare-fun call!140628 () Regex!6863)

(assert (=> bm!140620 (= call!140626 call!140628)))

(declare-fun b!2338838 () Bool)

(declare-fun e!1497171 () Regex!6863)

(assert (=> b!2338838 (= e!1497171 EmptyLang!6863)))

(declare-fun b!2338839 () Bool)

(declare-fun c!371920 () Bool)

(assert (=> b!2338839 (= c!371920 ((_ is Union!6863) r!26197))))

(declare-fun e!1497168 () Regex!6863)

(declare-fun e!1497169 () Regex!6863)

(assert (=> b!2338839 (= e!1497168 e!1497169)))

(declare-fun b!2338841 () Bool)

(declare-fun c!371921 () Bool)

(assert (=> b!2338841 (= c!371921 (nullable!1942 (regOne!14238 r!26197)))))

(declare-fun e!1497170 () Regex!6863)

(assert (=> b!2338841 (= e!1497170 e!1497167)))

(declare-fun bm!140621 () Bool)

(declare-fun call!140627 () Regex!6863)

(assert (=> bm!140621 (= call!140628 call!140627)))

(declare-fun b!2338842 () Bool)

(assert (=> b!2338842 (= e!1497168 (ite (= c!13498 (c!371867 r!26197)) EmptyExpr!6863 EmptyLang!6863))))

(declare-fun b!2338843 () Bool)

(assert (=> b!2338843 (= e!1497167 (Union!6863 (Concat!11485 call!140626 (regTwo!14238 r!26197)) EmptyLang!6863))))

(declare-fun b!2338844 () Bool)

(assert (=> b!2338844 (= e!1497169 e!1497170)))

(declare-fun c!371924 () Bool)

(assert (=> b!2338844 (= c!371924 ((_ is Star!6863) r!26197))))

(declare-fun b!2338845 () Bool)

(assert (=> b!2338845 (= e!1497170 (Concat!11485 call!140628 r!26197))))

(declare-fun bm!140622 () Bool)

(assert (=> bm!140622 (= call!140625 (derivativeStep!1602 (ite c!371920 (regOne!14239 r!26197) (regTwo!14238 r!26197)) c!13498))))

(declare-fun bm!140623 () Bool)

(assert (=> bm!140623 (= call!140627 (derivativeStep!1602 (ite c!371920 (regTwo!14239 r!26197) (ite c!371924 (reg!7192 r!26197) (regOne!14238 r!26197))) c!13498))))

(declare-fun b!2338846 () Bool)

(assert (=> b!2338846 (= e!1497171 e!1497168)))

(declare-fun c!371923 () Bool)

(assert (=> b!2338846 (= c!371923 ((_ is ElementMatch!6863) r!26197))))

(declare-fun d!690931 () Bool)

(declare-fun lt!862616 () Regex!6863)

(assert (=> d!690931 (validRegex!2608 lt!862616)))

(assert (=> d!690931 (= lt!862616 e!1497171)))

(declare-fun c!371922 () Bool)

(assert (=> d!690931 (= c!371922 (or ((_ is EmptyExpr!6863) r!26197) ((_ is EmptyLang!6863) r!26197)))))

(assert (=> d!690931 (validRegex!2608 r!26197)))

(assert (=> d!690931 (= (derivativeStep!1602 r!26197 c!13498) lt!862616)))

(declare-fun b!2338840 () Bool)

(assert (=> b!2338840 (= e!1497169 (Union!6863 call!140625 call!140627))))

(assert (= (and d!690931 c!371922) b!2338838))

(assert (= (and d!690931 (not c!371922)) b!2338846))

(assert (= (and b!2338846 c!371923) b!2338842))

(assert (= (and b!2338846 (not c!371923)) b!2338839))

(assert (= (and b!2338839 c!371920) b!2338840))

(assert (= (and b!2338839 (not c!371920)) b!2338844))

(assert (= (and b!2338844 c!371924) b!2338845))

(assert (= (and b!2338844 (not c!371924)) b!2338841))

(assert (= (and b!2338841 c!371921) b!2338837))

(assert (= (and b!2338841 (not c!371921)) b!2338843))

(assert (= (or b!2338837 b!2338843) bm!140620))

(assert (= (or b!2338845 bm!140620) bm!140621))

(assert (= (or b!2338840 bm!140621) bm!140623))

(assert (= (or b!2338840 b!2338837) bm!140622))

(declare-fun m!2763911 () Bool)

(assert (=> b!2338841 m!2763911))

(declare-fun m!2763913 () Bool)

(assert (=> bm!140622 m!2763913))

(declare-fun m!2763917 () Bool)

(assert (=> bm!140623 m!2763917))

(declare-fun m!2763921 () Bool)

(assert (=> d!690931 m!2763921))

(assert (=> d!690931 m!2763835))

(assert (=> b!2338689 d!690931))

(declare-fun d!690935 () Bool)

(assert (=> d!690935 (= (nullable!1942 r!26197) (nullableFct!497 r!26197))))

(declare-fun bs!459995 () Bool)

(assert (= bs!459995 d!690935))

(declare-fun m!2763925 () Bool)

(assert (=> bs!459995 m!2763925))

(assert (=> b!2338691 d!690935))

(declare-fun d!690939 () Bool)

(assert (=> d!690939 (= (nullable!1942 (derivativeStep!1602 (regTwo!14239 r!26197) c!13498)) (nullableFct!497 (derivativeStep!1602 (regTwo!14239 r!26197) c!13498)))))

(declare-fun bs!459996 () Bool)

(assert (= bs!459996 d!690939))

(assert (=> bs!459996 m!2763837))

(declare-fun m!2763927 () Bool)

(assert (=> bs!459996 m!2763927))

(assert (=> b!2338697 d!690939))

(declare-fun e!1497186 () Regex!6863)

(declare-fun call!140635 () Regex!6863)

(declare-fun b!2338865 () Bool)

(declare-fun call!140636 () Regex!6863)

(assert (=> b!2338865 (= e!1497186 (Union!6863 (Concat!11485 call!140636 (regTwo!14238 (regTwo!14239 r!26197))) call!140635))))

(declare-fun bm!140630 () Bool)

(declare-fun call!140638 () Regex!6863)

(assert (=> bm!140630 (= call!140636 call!140638)))

(declare-fun b!2338866 () Bool)

(declare-fun e!1497190 () Regex!6863)

(assert (=> b!2338866 (= e!1497190 EmptyLang!6863)))

(declare-fun b!2338867 () Bool)

(declare-fun c!371929 () Bool)

(assert (=> b!2338867 (= c!371929 ((_ is Union!6863) (regTwo!14239 r!26197)))))

(declare-fun e!1497187 () Regex!6863)

(declare-fun e!1497188 () Regex!6863)

(assert (=> b!2338867 (= e!1497187 e!1497188)))

(declare-fun b!2338869 () Bool)

(declare-fun c!371930 () Bool)

(assert (=> b!2338869 (= c!371930 (nullable!1942 (regOne!14238 (regTwo!14239 r!26197))))))

(declare-fun e!1497189 () Regex!6863)

(assert (=> b!2338869 (= e!1497189 e!1497186)))

(declare-fun bm!140631 () Bool)

(declare-fun call!140637 () Regex!6863)

(assert (=> bm!140631 (= call!140638 call!140637)))

(declare-fun b!2338870 () Bool)

(assert (=> b!2338870 (= e!1497187 (ite (= c!13498 (c!371867 (regTwo!14239 r!26197))) EmptyExpr!6863 EmptyLang!6863))))

(declare-fun b!2338871 () Bool)

(assert (=> b!2338871 (= e!1497186 (Union!6863 (Concat!11485 call!140636 (regTwo!14238 (regTwo!14239 r!26197))) EmptyLang!6863))))

(declare-fun b!2338872 () Bool)

(assert (=> b!2338872 (= e!1497188 e!1497189)))

(declare-fun c!371933 () Bool)

(assert (=> b!2338872 (= c!371933 ((_ is Star!6863) (regTwo!14239 r!26197)))))

(declare-fun b!2338873 () Bool)

(assert (=> b!2338873 (= e!1497189 (Concat!11485 call!140638 (regTwo!14239 r!26197)))))

(declare-fun bm!140632 () Bool)

(assert (=> bm!140632 (= call!140635 (derivativeStep!1602 (ite c!371929 (regOne!14239 (regTwo!14239 r!26197)) (regTwo!14238 (regTwo!14239 r!26197))) c!13498))))

(declare-fun bm!140633 () Bool)

(assert (=> bm!140633 (= call!140637 (derivativeStep!1602 (ite c!371929 (regTwo!14239 (regTwo!14239 r!26197)) (ite c!371933 (reg!7192 (regTwo!14239 r!26197)) (regOne!14238 (regTwo!14239 r!26197)))) c!13498))))

(declare-fun b!2338874 () Bool)

(assert (=> b!2338874 (= e!1497190 e!1497187)))

(declare-fun c!371932 () Bool)

(assert (=> b!2338874 (= c!371932 ((_ is ElementMatch!6863) (regTwo!14239 r!26197)))))

(declare-fun d!690941 () Bool)

(declare-fun lt!862617 () Regex!6863)

(assert (=> d!690941 (validRegex!2608 lt!862617)))

(assert (=> d!690941 (= lt!862617 e!1497190)))

(declare-fun c!371931 () Bool)

(assert (=> d!690941 (= c!371931 (or ((_ is EmptyExpr!6863) (regTwo!14239 r!26197)) ((_ is EmptyLang!6863) (regTwo!14239 r!26197))))))

(assert (=> d!690941 (validRegex!2608 (regTwo!14239 r!26197))))

(assert (=> d!690941 (= (derivativeStep!1602 (regTwo!14239 r!26197) c!13498) lt!862617)))

(declare-fun b!2338868 () Bool)

(assert (=> b!2338868 (= e!1497188 (Union!6863 call!140635 call!140637))))

(assert (= (and d!690941 c!371931) b!2338866))

(assert (= (and d!690941 (not c!371931)) b!2338874))

(assert (= (and b!2338874 c!371932) b!2338870))

(assert (= (and b!2338874 (not c!371932)) b!2338867))

(assert (= (and b!2338867 c!371929) b!2338868))

(assert (= (and b!2338867 (not c!371929)) b!2338872))

(assert (= (and b!2338872 c!371933) b!2338873))

(assert (= (and b!2338872 (not c!371933)) b!2338869))

(assert (= (and b!2338869 c!371930) b!2338865))

(assert (= (and b!2338869 (not c!371930)) b!2338871))

(assert (= (or b!2338865 b!2338871) bm!140630))

(assert (= (or b!2338873 bm!140630) bm!140631))

(assert (= (or b!2338868 bm!140631) bm!140633))

(assert (= (or b!2338868 b!2338865) bm!140632))

(declare-fun m!2763935 () Bool)

(assert (=> b!2338869 m!2763935))

(declare-fun m!2763937 () Bool)

(assert (=> bm!140632 m!2763937))

(declare-fun m!2763939 () Bool)

(assert (=> bm!140633 m!2763939))

(declare-fun m!2763941 () Bool)

(assert (=> d!690941 m!2763941))

(assert (=> d!690941 m!2763833))

(assert (=> b!2338697 d!690941))

(declare-fun e!1497196 () Bool)

(assert (=> b!2338698 (= tp!742089 e!1497196)))

(declare-fun b!2338905 () Bool)

(declare-fun tp!742126 () Bool)

(assert (=> b!2338905 (= e!1497196 tp!742126)))

(declare-fun b!2338901 () Bool)

(assert (=> b!2338901 (= e!1497196 tp_is_empty!11037)))

(declare-fun b!2338903 () Bool)

(declare-fun tp!742120 () Bool)

(declare-fun tp!742125 () Bool)

(assert (=> b!2338903 (= e!1497196 (and tp!742120 tp!742125))))

(declare-fun b!2338906 () Bool)

(declare-fun tp!742118 () Bool)

(declare-fun tp!742122 () Bool)

(assert (=> b!2338906 (= e!1497196 (and tp!742118 tp!742122))))

(assert (= (and b!2338698 ((_ is ElementMatch!6863) (regOne!14238 r!26197))) b!2338901))

(assert (= (and b!2338698 ((_ is Concat!11485) (regOne!14238 r!26197))) b!2338903))

(assert (= (and b!2338698 ((_ is Star!6863) (regOne!14238 r!26197))) b!2338905))

(assert (= (and b!2338698 ((_ is Union!6863) (regOne!14238 r!26197))) b!2338906))

(declare-fun e!1497199 () Bool)

(assert (=> b!2338698 (= tp!742091 e!1497199)))

(declare-fun b!2338913 () Bool)

(declare-fun tp!742136 () Bool)

(assert (=> b!2338913 (= e!1497199 tp!742136)))

(declare-fun b!2338911 () Bool)

(assert (=> b!2338911 (= e!1497199 tp_is_empty!11037)))

(declare-fun b!2338912 () Bool)

(declare-fun tp!742133 () Bool)

(declare-fun tp!742135 () Bool)

(assert (=> b!2338912 (= e!1497199 (and tp!742133 tp!742135))))

(declare-fun b!2338914 () Bool)

(declare-fun tp!742132 () Bool)

(declare-fun tp!742134 () Bool)

(assert (=> b!2338914 (= e!1497199 (and tp!742132 tp!742134))))

(assert (= (and b!2338698 ((_ is ElementMatch!6863) (regTwo!14238 r!26197))) b!2338911))

(assert (= (and b!2338698 ((_ is Concat!11485) (regTwo!14238 r!26197))) b!2338912))

(assert (= (and b!2338698 ((_ is Star!6863) (regTwo!14238 r!26197))) b!2338913))

(assert (= (and b!2338698 ((_ is Union!6863) (regTwo!14238 r!26197))) b!2338914))

(declare-fun e!1497201 () Bool)

(assert (=> b!2338695 (= tp!742088 e!1497201)))

(declare-fun b!2338921 () Bool)

(declare-fun tp!742146 () Bool)

(assert (=> b!2338921 (= e!1497201 tp!742146)))

(declare-fun b!2338919 () Bool)

(assert (=> b!2338919 (= e!1497201 tp_is_empty!11037)))

(declare-fun b!2338920 () Bool)

(declare-fun tp!742143 () Bool)

(declare-fun tp!742145 () Bool)

(assert (=> b!2338920 (= e!1497201 (and tp!742143 tp!742145))))

(declare-fun b!2338922 () Bool)

(declare-fun tp!742142 () Bool)

(declare-fun tp!742144 () Bool)

(assert (=> b!2338922 (= e!1497201 (and tp!742142 tp!742144))))

(assert (= (and b!2338695 ((_ is ElementMatch!6863) (regOne!14239 r!26197))) b!2338919))

(assert (= (and b!2338695 ((_ is Concat!11485) (regOne!14239 r!26197))) b!2338920))

(assert (= (and b!2338695 ((_ is Star!6863) (regOne!14239 r!26197))) b!2338921))

(assert (= (and b!2338695 ((_ is Union!6863) (regOne!14239 r!26197))) b!2338922))

(declare-fun e!1497203 () Bool)

(assert (=> b!2338695 (= tp!742090 e!1497203)))

(declare-fun b!2338929 () Bool)

(declare-fun tp!742156 () Bool)

(assert (=> b!2338929 (= e!1497203 tp!742156)))

(declare-fun b!2338927 () Bool)

(assert (=> b!2338927 (= e!1497203 tp_is_empty!11037)))

(declare-fun b!2338928 () Bool)

(declare-fun tp!742153 () Bool)

(declare-fun tp!742155 () Bool)

(assert (=> b!2338928 (= e!1497203 (and tp!742153 tp!742155))))

(declare-fun b!2338930 () Bool)

(declare-fun tp!742152 () Bool)

(declare-fun tp!742154 () Bool)

(assert (=> b!2338930 (= e!1497203 (and tp!742152 tp!742154))))

(assert (= (and b!2338695 ((_ is ElementMatch!6863) (regTwo!14239 r!26197))) b!2338927))

(assert (= (and b!2338695 ((_ is Concat!11485) (regTwo!14239 r!26197))) b!2338928))

(assert (= (and b!2338695 ((_ is Star!6863) (regTwo!14239 r!26197))) b!2338929))

(assert (= (and b!2338695 ((_ is Union!6863) (regTwo!14239 r!26197))) b!2338930))

(declare-fun e!1497204 () Bool)

(assert (=> b!2338694 (= tp!742087 e!1497204)))

(declare-fun b!2338933 () Bool)

(declare-fun tp!742161 () Bool)

(assert (=> b!2338933 (= e!1497204 tp!742161)))

(declare-fun b!2338931 () Bool)

(assert (=> b!2338931 (= e!1497204 tp_is_empty!11037)))

(declare-fun b!2338932 () Bool)

(declare-fun tp!742158 () Bool)

(declare-fun tp!742160 () Bool)

(assert (=> b!2338932 (= e!1497204 (and tp!742158 tp!742160))))

(declare-fun b!2338934 () Bool)

(declare-fun tp!742157 () Bool)

(declare-fun tp!742159 () Bool)

(assert (=> b!2338934 (= e!1497204 (and tp!742157 tp!742159))))

(assert (= (and b!2338694 ((_ is ElementMatch!6863) (reg!7192 r!26197))) b!2338931))

(assert (= (and b!2338694 ((_ is Concat!11485) (reg!7192 r!26197))) b!2338932))

(assert (= (and b!2338694 ((_ is Star!6863) (reg!7192 r!26197))) b!2338933))

(assert (= (and b!2338694 ((_ is Union!6863) (reg!7192 r!26197))) b!2338934))

(check-sat (not d!690931) (not b!2338841) (not bm!140623) (not b!2338932) (not d!690935) (not d!690929) tp_is_empty!11037 (not b!2338929) (not b!2338921) (not bm!140585) (not d!690907) (not b!2338905) (not b!2338920) (not b!2338906) (not bm!140576) (not bm!140583) (not bm!140622) (not d!690925) (not b!2338922) (not b!2338933) (not bm!140633) (not d!690939) (not d!690927) (not b!2338912) (not d!690941) (not b!2338758) (not bm!140618) (not b!2338903) (not b!2338934) (not b!2338928) (not b!2338914) (not b!2338749) (not d!690909) (not b!2338913) (not bm!140632) (not b!2338831) (not bm!140578) (not b!2338869) (not bm!140619) (not b!2338930))
(check-sat)
