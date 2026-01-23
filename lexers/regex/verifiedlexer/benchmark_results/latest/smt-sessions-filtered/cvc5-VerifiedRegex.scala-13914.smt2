; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!738990 () Bool)

(assert start!738990)

(declare-fun res!3091210 () Bool)

(declare-fun e!4595797 () Bool)

(assert (=> start!738990 (=> (not res!3091210) (not e!4595797))))

(declare-datatypes ((C!41570 0))(
  ( (C!41571 (val!31225 Int)) )
))
(declare-datatypes ((Regex!20622 0))(
  ( (ElementMatch!20622 (c!1429881 C!41570)) (Concat!29467 (regOne!41756 Regex!20622) (regTwo!41756 Regex!20622)) (EmptyExpr!20622) (Star!20622 (reg!20951 Regex!20622)) (EmptyLang!20622) (Union!20622 (regOne!41757 Regex!20622) (regTwo!41757 Regex!20622)) )
))
(declare-fun lt!2669535 () Regex!20622)

(declare-fun validRegex!11040 (Regex!20622) Bool)

(assert (=> start!738990 (= res!3091210 (validRegex!11040 lt!2669535))))

(declare-fun r!25892 () Regex!20622)

(assert (=> start!738990 (= lt!2669535 (Star!20622 r!25892))))

(assert (=> start!738990 e!4595797))

(declare-fun e!4595798 () Bool)

(assert (=> start!738990 e!4595798))

(declare-fun e!4595800 () Bool)

(assert (=> start!738990 e!4595800))

(declare-fun e!4595799 () Bool)

(assert (=> start!738990 e!4595799))

(declare-fun b!7752752 () Bool)

(declare-fun tp_is_empty!51599 () Bool)

(declare-fun tp!2274734 () Bool)

(assert (=> b!7752752 (= e!4595800 (and tp_is_empty!51599 tp!2274734))))

(declare-fun b!7752753 () Bool)

(declare-fun e!4595796 () Bool)

(assert (=> b!7752753 (= e!4595797 e!4595796)))

(declare-fun res!3091209 () Bool)

(assert (=> b!7752753 (=> (not res!3091209) (not e!4595796))))

(declare-datatypes ((List!73467 0))(
  ( (Nil!73343) (Cons!73343 (h!79791 C!41570) (t!388202 List!73467)) )
))
(declare-fun s1!4391 () List!73467)

(declare-fun lt!2669538 () Regex!20622)

(declare-fun derivativeStep!6043 (Regex!20622 C!41570) Regex!20622)

(assert (=> b!7752753 (= res!3091209 (= (derivativeStep!6043 lt!2669535 (h!79791 s1!4391)) lt!2669538))))

(declare-fun lt!2669536 () Regex!20622)

(assert (=> b!7752753 (= lt!2669538 (Concat!29467 lt!2669536 lt!2669535))))

(assert (=> b!7752753 (= lt!2669536 (derivativeStep!6043 r!25892 (h!79791 s1!4391)))))

(declare-fun b!7752754 () Bool)

(declare-fun res!3091205 () Bool)

(assert (=> b!7752754 (=> (not res!3091205) (not e!4595796))))

(assert (=> b!7752754 (= res!3091205 (validRegex!11040 lt!2669536))))

(declare-fun b!7752755 () Bool)

(declare-fun res!3091211 () Bool)

(assert (=> b!7752755 (=> (not res!3091211) (not e!4595796))))

(declare-fun matchR!10112 (Regex!20622 List!73467) Bool)

(assert (=> b!7752755 (= res!3091211 (matchR!10112 lt!2669536 (t!388202 s1!4391)))))

(declare-fun b!7752756 () Bool)

(declare-fun tp!2274738 () Bool)

(assert (=> b!7752756 (= e!4595798 tp!2274738)))

(declare-fun b!7752757 () Bool)

(declare-fun tp!2274735 () Bool)

(declare-fun tp!2274740 () Bool)

(assert (=> b!7752757 (= e!4595798 (and tp!2274735 tp!2274740))))

(declare-fun b!7752758 () Bool)

(declare-fun tp!2274739 () Bool)

(assert (=> b!7752758 (= e!4595799 (and tp_is_empty!51599 tp!2274739))))

(declare-fun b!7752759 () Bool)

(declare-fun res!3091207 () Bool)

(assert (=> b!7752759 (=> (not res!3091207) (not e!4595797))))

(assert (=> b!7752759 (= res!3091207 (is-Cons!73343 s1!4391))))

(declare-fun b!7752760 () Bool)

(declare-fun res!3091208 () Bool)

(assert (=> b!7752760 (=> (not res!3091208) (not e!4595797))))

(assert (=> b!7752760 (= res!3091208 (matchR!10112 r!25892 s1!4391))))

(declare-fun s2!3963 () List!73467)

(declare-fun b!7752761 () Bool)

(declare-fun ++!17803 (List!73467 List!73467) List!73467)

(assert (=> b!7752761 (= e!4595796 (not (matchR!10112 lt!2669535 (++!17803 s1!4391 s2!3963))))))

(assert (=> b!7752761 (matchR!10112 lt!2669538 (++!17803 (t!388202 s1!4391) s2!3963))))

(declare-datatypes ((Unit!168328 0))(
  ( (Unit!168329) )
))
(declare-fun lt!2669537 () Unit!168328)

(declare-fun lemmaTwoRegexMatchThenConcatMatchesConcatString!413 (Regex!20622 Regex!20622 List!73467 List!73467) Unit!168328)

(assert (=> b!7752761 (= lt!2669537 (lemmaTwoRegexMatchThenConcatMatchesConcatString!413 lt!2669536 lt!2669535 (t!388202 s1!4391) s2!3963))))

(declare-fun b!7752762 () Bool)

(declare-fun res!3091206 () Bool)

(assert (=> b!7752762 (=> (not res!3091206) (not e!4595797))))

(assert (=> b!7752762 (= res!3091206 (matchR!10112 lt!2669535 s2!3963))))

(declare-fun b!7752763 () Bool)

(assert (=> b!7752763 (= e!4595798 tp_is_empty!51599)))

(declare-fun b!7752764 () Bool)

(declare-fun tp!2274737 () Bool)

(declare-fun tp!2274736 () Bool)

(assert (=> b!7752764 (= e!4595798 (and tp!2274737 tp!2274736))))

(assert (= (and start!738990 res!3091210) b!7752760))

(assert (= (and b!7752760 res!3091208) b!7752762))

(assert (= (and b!7752762 res!3091206) b!7752759))

(assert (= (and b!7752759 res!3091207) b!7752753))

(assert (= (and b!7752753 res!3091209) b!7752754))

(assert (= (and b!7752754 res!3091205) b!7752755))

(assert (= (and b!7752755 res!3091211) b!7752761))

(assert (= (and start!738990 (is-ElementMatch!20622 r!25892)) b!7752763))

(assert (= (and start!738990 (is-Concat!29467 r!25892)) b!7752757))

(assert (= (and start!738990 (is-Star!20622 r!25892)) b!7752756))

(assert (= (and start!738990 (is-Union!20622 r!25892)) b!7752764))

(assert (= (and start!738990 (is-Cons!73343 s1!4391)) b!7752752))

(assert (= (and start!738990 (is-Cons!73343 s2!3963)) b!7752758))

(declare-fun m!8217414 () Bool)

(assert (=> b!7752753 m!8217414))

(declare-fun m!8217416 () Bool)

(assert (=> b!7752753 m!8217416))

(declare-fun m!8217418 () Bool)

(assert (=> b!7752754 m!8217418))

(declare-fun m!8217420 () Bool)

(assert (=> start!738990 m!8217420))

(declare-fun m!8217422 () Bool)

(assert (=> b!7752761 m!8217422))

(declare-fun m!8217424 () Bool)

(assert (=> b!7752761 m!8217424))

(assert (=> b!7752761 m!8217422))

(declare-fun m!8217426 () Bool)

(assert (=> b!7752761 m!8217426))

(declare-fun m!8217428 () Bool)

(assert (=> b!7752761 m!8217428))

(assert (=> b!7752761 m!8217428))

(declare-fun m!8217430 () Bool)

(assert (=> b!7752761 m!8217430))

(declare-fun m!8217432 () Bool)

(assert (=> b!7752755 m!8217432))

(declare-fun m!8217434 () Bool)

(assert (=> b!7752760 m!8217434))

(declare-fun m!8217436 () Bool)

(assert (=> b!7752762 m!8217436))

(push 1)

(assert (not b!7752756))

(assert (not b!7752755))

(assert (not b!7752753))

(assert (not b!7752764))

(assert (not b!7752760))

(assert (not b!7752758))

(assert (not b!7752752))

(assert tp_is_empty!51599)

(assert (not b!7752762))

(assert (not b!7752754))

(assert (not b!7752757))

(assert (not b!7752761))

(assert (not start!738990))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun b!7752835 () Bool)

(declare-fun e!4595835 () Bool)

(declare-fun head!15839 (List!73467) C!41570)

(declare-fun tail!15379 (List!73467) List!73467)

(assert (=> b!7752835 (= e!4595835 (matchR!10112 (derivativeStep!6043 r!25892 (head!15839 s1!4391)) (tail!15379 s1!4391)))))

(declare-fun b!7752836 () Bool)

(declare-fun e!4595836 () Bool)

(assert (=> b!7752836 (= e!4595836 (not (= (head!15839 s1!4391) (c!1429881 r!25892))))))

(declare-fun b!7752837 () Bool)

(declare-fun nullable!9083 (Regex!20622) Bool)

(assert (=> b!7752837 (= e!4595835 (nullable!9083 r!25892))))

(declare-fun b!7752838 () Bool)

(declare-fun res!3091253 () Bool)

(assert (=> b!7752838 (=> res!3091253 e!4595836)))

(declare-fun isEmpty!42030 (List!73467) Bool)

(assert (=> b!7752838 (= res!3091253 (not (isEmpty!42030 (tail!15379 s1!4391))))))

(declare-fun b!7752839 () Bool)

(declare-fun e!4595839 () Bool)

(assert (=> b!7752839 (= e!4595839 e!4595836)))

(declare-fun res!3091255 () Bool)

(assert (=> b!7752839 (=> res!3091255 e!4595836)))

(declare-fun call!718623 () Bool)

(assert (=> b!7752839 (= res!3091255 call!718623)))

(declare-fun d!2342913 () Bool)

(declare-fun e!4595834 () Bool)

(assert (=> d!2342913 e!4595834))

(declare-fun c!1429891 () Bool)

(assert (=> d!2342913 (= c!1429891 (is-EmptyExpr!20622 r!25892))))

(declare-fun lt!2669556 () Bool)

(assert (=> d!2342913 (= lt!2669556 e!4595835)))

(declare-fun c!1429889 () Bool)

(assert (=> d!2342913 (= c!1429889 (isEmpty!42030 s1!4391))))

(assert (=> d!2342913 (validRegex!11040 r!25892)))

(assert (=> d!2342913 (= (matchR!10112 r!25892 s1!4391) lt!2669556)))

(declare-fun b!7752840 () Bool)

(declare-fun res!3091256 () Bool)

(declare-fun e!4595837 () Bool)

(assert (=> b!7752840 (=> res!3091256 e!4595837)))

(assert (=> b!7752840 (= res!3091256 (not (is-ElementMatch!20622 r!25892)))))

(declare-fun e!4595838 () Bool)

(assert (=> b!7752840 (= e!4595838 e!4595837)))

(declare-fun bm!718618 () Bool)

(assert (=> bm!718618 (= call!718623 (isEmpty!42030 s1!4391))))

(declare-fun b!7752841 () Bool)

(declare-fun res!3091254 () Bool)

(declare-fun e!4595833 () Bool)

(assert (=> b!7752841 (=> (not res!3091254) (not e!4595833))))

(assert (=> b!7752841 (= res!3091254 (isEmpty!42030 (tail!15379 s1!4391)))))

(declare-fun b!7752842 () Bool)

(declare-fun res!3091257 () Bool)

(assert (=> b!7752842 (=> (not res!3091257) (not e!4595833))))

(assert (=> b!7752842 (= res!3091257 (not call!718623))))

(declare-fun b!7752843 () Bool)

(assert (=> b!7752843 (= e!4595838 (not lt!2669556))))

(declare-fun b!7752844 () Bool)

(assert (=> b!7752844 (= e!4595837 e!4595839)))

(declare-fun res!3091259 () Bool)

(assert (=> b!7752844 (=> (not res!3091259) (not e!4595839))))

(assert (=> b!7752844 (= res!3091259 (not lt!2669556))))

(declare-fun b!7752845 () Bool)

(assert (=> b!7752845 (= e!4595834 e!4595838)))

(declare-fun c!1429890 () Bool)

(assert (=> b!7752845 (= c!1429890 (is-EmptyLang!20622 r!25892))))

(declare-fun b!7752846 () Bool)

(declare-fun res!3091252 () Bool)

(assert (=> b!7752846 (=> res!3091252 e!4595837)))

(assert (=> b!7752846 (= res!3091252 e!4595833)))

(declare-fun res!3091258 () Bool)

(assert (=> b!7752846 (=> (not res!3091258) (not e!4595833))))

(assert (=> b!7752846 (= res!3091258 lt!2669556)))

(declare-fun b!7752847 () Bool)

(assert (=> b!7752847 (= e!4595833 (= (head!15839 s1!4391) (c!1429881 r!25892)))))

(declare-fun b!7752848 () Bool)

(assert (=> b!7752848 (= e!4595834 (= lt!2669556 call!718623))))

(assert (= (and d!2342913 c!1429889) b!7752837))

(assert (= (and d!2342913 (not c!1429889)) b!7752835))

(assert (= (and d!2342913 c!1429891) b!7752848))

(assert (= (and d!2342913 (not c!1429891)) b!7752845))

(assert (= (and b!7752845 c!1429890) b!7752843))

(assert (= (and b!7752845 (not c!1429890)) b!7752840))

(assert (= (and b!7752840 (not res!3091256)) b!7752846))

(assert (= (and b!7752846 res!3091258) b!7752842))

(assert (= (and b!7752842 res!3091257) b!7752841))

(assert (= (and b!7752841 res!3091254) b!7752847))

(assert (= (and b!7752846 (not res!3091252)) b!7752844))

(assert (= (and b!7752844 res!3091259) b!7752839))

(assert (= (and b!7752839 (not res!3091255)) b!7752838))

(assert (= (and b!7752838 (not res!3091253)) b!7752836))

(assert (= (or b!7752848 b!7752839 b!7752842) bm!718618))

(declare-fun m!8217466 () Bool)

(assert (=> d!2342913 m!8217466))

(declare-fun m!8217468 () Bool)

(assert (=> d!2342913 m!8217468))

(assert (=> bm!718618 m!8217466))

(declare-fun m!8217470 () Bool)

(assert (=> b!7752841 m!8217470))

(assert (=> b!7752841 m!8217470))

(declare-fun m!8217472 () Bool)

(assert (=> b!7752841 m!8217472))

(declare-fun m!8217474 () Bool)

(assert (=> b!7752835 m!8217474))

(assert (=> b!7752835 m!8217474))

(declare-fun m!8217476 () Bool)

(assert (=> b!7752835 m!8217476))

(assert (=> b!7752835 m!8217470))

(assert (=> b!7752835 m!8217476))

(assert (=> b!7752835 m!8217470))

(declare-fun m!8217478 () Bool)

(assert (=> b!7752835 m!8217478))

(assert (=> b!7752836 m!8217474))

(declare-fun m!8217480 () Bool)

(assert (=> b!7752837 m!8217480))

(assert (=> b!7752838 m!8217470))

(assert (=> b!7752838 m!8217470))

(assert (=> b!7752838 m!8217472))

(assert (=> b!7752847 m!8217474))

(assert (=> b!7752760 d!2342913))

(declare-fun b!7752879 () Bool)

(declare-fun e!4595864 () Bool)

(declare-fun e!4595861 () Bool)

(assert (=> b!7752879 (= e!4595864 e!4595861)))

(declare-fun c!1429899 () Bool)

(assert (=> b!7752879 (= c!1429899 (is-Star!20622 lt!2669535))))

(declare-fun b!7752880 () Bool)

(declare-fun res!3091278 () Bool)

(declare-fun e!4595863 () Bool)

(assert (=> b!7752880 (=> res!3091278 e!4595863)))

(assert (=> b!7752880 (= res!3091278 (not (is-Concat!29467 lt!2669535)))))

(declare-fun e!4595866 () Bool)

(assert (=> b!7752880 (= e!4595866 e!4595863)))

(declare-fun bm!718625 () Bool)

(declare-fun c!1429900 () Bool)

(declare-fun call!718631 () Bool)

(assert (=> bm!718625 (= call!718631 (validRegex!11040 (ite c!1429899 (reg!20951 lt!2669535) (ite c!1429900 (regOne!41757 lt!2669535) (regOne!41756 lt!2669535)))))))

(declare-fun bm!718626 () Bool)

(declare-fun call!718632 () Bool)

(assert (=> bm!718626 (= call!718632 (validRegex!11040 (ite c!1429900 (regTwo!41757 lt!2669535) (regTwo!41756 lt!2669535))))))

(declare-fun d!2342917 () Bool)

(declare-fun res!3091280 () Bool)

(assert (=> d!2342917 (=> res!3091280 e!4595864)))

(assert (=> d!2342917 (= res!3091280 (is-ElementMatch!20622 lt!2669535))))

(assert (=> d!2342917 (= (validRegex!11040 lt!2669535) e!4595864)))

(declare-fun b!7752881 () Bool)

(declare-fun e!4595862 () Bool)

(assert (=> b!7752881 (= e!4595862 call!718631)))

(declare-fun b!7752882 () Bool)

(declare-fun e!4595865 () Bool)

(assert (=> b!7752882 (= e!4595865 call!718632)))

(declare-fun b!7752883 () Bool)

(assert (=> b!7752883 (= e!4595861 e!4595862)))

(declare-fun res!3091276 () Bool)

(assert (=> b!7752883 (= res!3091276 (not (nullable!9083 (reg!20951 lt!2669535))))))

(assert (=> b!7752883 (=> (not res!3091276) (not e!4595862))))

(declare-fun b!7752884 () Bool)

(declare-fun res!3091279 () Bool)

(declare-fun e!4595860 () Bool)

(assert (=> b!7752884 (=> (not res!3091279) (not e!4595860))))

(declare-fun call!718630 () Bool)

(assert (=> b!7752884 (= res!3091279 call!718630)))

(assert (=> b!7752884 (= e!4595866 e!4595860)))

(declare-fun b!7752885 () Bool)

(assert (=> b!7752885 (= e!4595861 e!4595866)))

(assert (=> b!7752885 (= c!1429900 (is-Union!20622 lt!2669535))))

(declare-fun b!7752886 () Bool)

(assert (=> b!7752886 (= e!4595863 e!4595865)))

(declare-fun res!3091277 () Bool)

(assert (=> b!7752886 (=> (not res!3091277) (not e!4595865))))

(assert (=> b!7752886 (= res!3091277 call!718630)))

(declare-fun bm!718627 () Bool)

(assert (=> bm!718627 (= call!718630 call!718631)))

(declare-fun b!7752887 () Bool)

(assert (=> b!7752887 (= e!4595860 call!718632)))

(assert (= (and d!2342917 (not res!3091280)) b!7752879))

(assert (= (and b!7752879 c!1429899) b!7752883))

(assert (= (and b!7752879 (not c!1429899)) b!7752885))

(assert (= (and b!7752883 res!3091276) b!7752881))

(assert (= (and b!7752885 c!1429900) b!7752884))

(assert (= (and b!7752885 (not c!1429900)) b!7752880))

(assert (= (and b!7752884 res!3091279) b!7752887))

(assert (= (and b!7752880 (not res!3091278)) b!7752886))

(assert (= (and b!7752886 res!3091277) b!7752882))

(assert (= (or b!7752884 b!7752886) bm!718627))

(assert (= (or b!7752887 b!7752882) bm!718626))

(assert (= (or b!7752881 bm!718627) bm!718625))

(declare-fun m!8217482 () Bool)

(assert (=> bm!718625 m!8217482))

(declare-fun m!8217486 () Bool)

(assert (=> bm!718626 m!8217486))

(declare-fun m!8217488 () Bool)

(assert (=> b!7752883 m!8217488))

(assert (=> start!738990 d!2342917))

(declare-fun b!7752888 () Bool)

(declare-fun e!4595869 () Bool)

(assert (=> b!7752888 (= e!4595869 (matchR!10112 (derivativeStep!6043 lt!2669536 (head!15839 (t!388202 s1!4391))) (tail!15379 (t!388202 s1!4391))))))

(declare-fun b!7752889 () Bool)

(declare-fun e!4595870 () Bool)

(assert (=> b!7752889 (= e!4595870 (not (= (head!15839 (t!388202 s1!4391)) (c!1429881 lt!2669536))))))

(declare-fun b!7752890 () Bool)

(assert (=> b!7752890 (= e!4595869 (nullable!9083 lt!2669536))))

(declare-fun b!7752891 () Bool)

(declare-fun res!3091282 () Bool)

(assert (=> b!7752891 (=> res!3091282 e!4595870)))

(assert (=> b!7752891 (= res!3091282 (not (isEmpty!42030 (tail!15379 (t!388202 s1!4391)))))))

(declare-fun b!7752892 () Bool)

(declare-fun e!4595873 () Bool)

(assert (=> b!7752892 (= e!4595873 e!4595870)))

(declare-fun res!3091284 () Bool)

(assert (=> b!7752892 (=> res!3091284 e!4595870)))

(declare-fun call!718633 () Bool)

(assert (=> b!7752892 (= res!3091284 call!718633)))

(declare-fun d!2342919 () Bool)

(declare-fun e!4595868 () Bool)

(assert (=> d!2342919 e!4595868))

(declare-fun c!1429903 () Bool)

(assert (=> d!2342919 (= c!1429903 (is-EmptyExpr!20622 lt!2669536))))

(declare-fun lt!2669560 () Bool)

(assert (=> d!2342919 (= lt!2669560 e!4595869)))

(declare-fun c!1429901 () Bool)

(assert (=> d!2342919 (= c!1429901 (isEmpty!42030 (t!388202 s1!4391)))))

(assert (=> d!2342919 (validRegex!11040 lt!2669536)))

(assert (=> d!2342919 (= (matchR!10112 lt!2669536 (t!388202 s1!4391)) lt!2669560)))

(declare-fun b!7752893 () Bool)

(declare-fun res!3091285 () Bool)

(declare-fun e!4595871 () Bool)

(assert (=> b!7752893 (=> res!3091285 e!4595871)))

(assert (=> b!7752893 (= res!3091285 (not (is-ElementMatch!20622 lt!2669536)))))

(declare-fun e!4595872 () Bool)

(assert (=> b!7752893 (= e!4595872 e!4595871)))

(declare-fun bm!718628 () Bool)

(assert (=> bm!718628 (= call!718633 (isEmpty!42030 (t!388202 s1!4391)))))

(declare-fun b!7752894 () Bool)

(declare-fun res!3091283 () Bool)

(declare-fun e!4595867 () Bool)

(assert (=> b!7752894 (=> (not res!3091283) (not e!4595867))))

(assert (=> b!7752894 (= res!3091283 (isEmpty!42030 (tail!15379 (t!388202 s1!4391))))))

(declare-fun b!7752895 () Bool)

(declare-fun res!3091286 () Bool)

(assert (=> b!7752895 (=> (not res!3091286) (not e!4595867))))

(assert (=> b!7752895 (= res!3091286 (not call!718633))))

(declare-fun b!7752896 () Bool)

(assert (=> b!7752896 (= e!4595872 (not lt!2669560))))

(declare-fun b!7752897 () Bool)

(assert (=> b!7752897 (= e!4595871 e!4595873)))

(declare-fun res!3091288 () Bool)

(assert (=> b!7752897 (=> (not res!3091288) (not e!4595873))))

(assert (=> b!7752897 (= res!3091288 (not lt!2669560))))

(declare-fun b!7752898 () Bool)

(assert (=> b!7752898 (= e!4595868 e!4595872)))

(declare-fun c!1429902 () Bool)

(assert (=> b!7752898 (= c!1429902 (is-EmptyLang!20622 lt!2669536))))

(declare-fun b!7752899 () Bool)

(declare-fun res!3091281 () Bool)

(assert (=> b!7752899 (=> res!3091281 e!4595871)))

(assert (=> b!7752899 (= res!3091281 e!4595867)))

(declare-fun res!3091287 () Bool)

(assert (=> b!7752899 (=> (not res!3091287) (not e!4595867))))

(assert (=> b!7752899 (= res!3091287 lt!2669560)))

(declare-fun b!7752900 () Bool)

(assert (=> b!7752900 (= e!4595867 (= (head!15839 (t!388202 s1!4391)) (c!1429881 lt!2669536)))))

(declare-fun b!7752901 () Bool)

(assert (=> b!7752901 (= e!4595868 (= lt!2669560 call!718633))))

(assert (= (and d!2342919 c!1429901) b!7752890))

(assert (= (and d!2342919 (not c!1429901)) b!7752888))

(assert (= (and d!2342919 c!1429903) b!7752901))

(assert (= (and d!2342919 (not c!1429903)) b!7752898))

(assert (= (and b!7752898 c!1429902) b!7752896))

(assert (= (and b!7752898 (not c!1429902)) b!7752893))

(assert (= (and b!7752893 (not res!3091285)) b!7752899))

(assert (= (and b!7752899 res!3091287) b!7752895))

(assert (= (and b!7752895 res!3091286) b!7752894))

(assert (= (and b!7752894 res!3091283) b!7752900))

(assert (= (and b!7752899 (not res!3091281)) b!7752897))

(assert (= (and b!7752897 res!3091288) b!7752892))

(assert (= (and b!7752892 (not res!3091284)) b!7752891))

(assert (= (and b!7752891 (not res!3091282)) b!7752889))

(assert (= (or b!7752901 b!7752892 b!7752895) bm!718628))

(declare-fun m!8217500 () Bool)

(assert (=> d!2342919 m!8217500))

(assert (=> d!2342919 m!8217418))

(assert (=> bm!718628 m!8217500))

(declare-fun m!8217502 () Bool)

(assert (=> b!7752894 m!8217502))

(assert (=> b!7752894 m!8217502))

(declare-fun m!8217504 () Bool)

(assert (=> b!7752894 m!8217504))

(declare-fun m!8217506 () Bool)

(assert (=> b!7752888 m!8217506))

(assert (=> b!7752888 m!8217506))

(declare-fun m!8217508 () Bool)

(assert (=> b!7752888 m!8217508))

(assert (=> b!7752888 m!8217502))

(assert (=> b!7752888 m!8217508))

(assert (=> b!7752888 m!8217502))

(declare-fun m!8217510 () Bool)

(assert (=> b!7752888 m!8217510))

(assert (=> b!7752889 m!8217506))

(declare-fun m!8217512 () Bool)

(assert (=> b!7752890 m!8217512))

(assert (=> b!7752891 m!8217502))

(assert (=> b!7752891 m!8217502))

(assert (=> b!7752891 m!8217504))

(assert (=> b!7752900 m!8217506))

(assert (=> b!7752755 d!2342919))

(declare-fun d!2342923 () Bool)

(assert (=> d!2342923 (matchR!10112 (Concat!29467 lt!2669536 lt!2669535) (++!17803 (t!388202 s1!4391) s2!3963))))

(declare-fun lt!2669563 () Unit!168328)

(declare-fun choose!59432 (Regex!20622 Regex!20622 List!73467 List!73467) Unit!168328)

(assert (=> d!2342923 (= lt!2669563 (choose!59432 lt!2669536 lt!2669535 (t!388202 s1!4391) s2!3963))))

(declare-fun e!4595876 () Bool)

(assert (=> d!2342923 e!4595876))

(declare-fun res!3091291 () Bool)

(assert (=> d!2342923 (=> (not res!3091291) (not e!4595876))))

(assert (=> d!2342923 (= res!3091291 (validRegex!11040 lt!2669536))))

(assert (=> d!2342923 (= (lemmaTwoRegexMatchThenConcatMatchesConcatString!413 lt!2669536 lt!2669535 (t!388202 s1!4391) s2!3963) lt!2669563)))

(declare-fun b!7752904 () Bool)

(assert (=> b!7752904 (= e!4595876 (validRegex!11040 lt!2669535))))

(assert (= (and d!2342923 res!3091291) b!7752904))

(assert (=> d!2342923 m!8217428))

(assert (=> d!2342923 m!8217428))

(declare-fun m!8217514 () Bool)

(assert (=> d!2342923 m!8217514))

(declare-fun m!8217516 () Bool)

(assert (=> d!2342923 m!8217516))

(assert (=> d!2342923 m!8217418))

(assert (=> b!7752904 m!8217420))

(assert (=> b!7752761 d!2342923))

(declare-fun d!2342925 () Bool)

(declare-fun e!4595881 () Bool)

(assert (=> d!2342925 e!4595881))

(declare-fun res!3091296 () Bool)

(assert (=> d!2342925 (=> (not res!3091296) (not e!4595881))))

(declare-fun lt!2669566 () List!73467)

(declare-fun content!15552 (List!73467) (Set C!41570))

(assert (=> d!2342925 (= res!3091296 (= (content!15552 lt!2669566) (set.union (content!15552 s1!4391) (content!15552 s2!3963))))))

(declare-fun e!4595882 () List!73467)

(assert (=> d!2342925 (= lt!2669566 e!4595882)))

(declare-fun c!1429906 () Bool)

(assert (=> d!2342925 (= c!1429906 (is-Nil!73343 s1!4391))))

(assert (=> d!2342925 (= (++!17803 s1!4391 s2!3963) lt!2669566)))

(declare-fun b!7752914 () Bool)

(assert (=> b!7752914 (= e!4595882 (Cons!73343 (h!79791 s1!4391) (++!17803 (t!388202 s1!4391) s2!3963)))))

(declare-fun b!7752916 () Bool)

(assert (=> b!7752916 (= e!4595881 (or (not (= s2!3963 Nil!73343)) (= lt!2669566 s1!4391)))))

(declare-fun b!7752913 () Bool)

(assert (=> b!7752913 (= e!4595882 s2!3963)))

(declare-fun b!7752915 () Bool)

(declare-fun res!3091297 () Bool)

(assert (=> b!7752915 (=> (not res!3091297) (not e!4595881))))

(declare-fun size!42655 (List!73467) Int)

(assert (=> b!7752915 (= res!3091297 (= (size!42655 lt!2669566) (+ (size!42655 s1!4391) (size!42655 s2!3963))))))

(assert (= (and d!2342925 c!1429906) b!7752913))

(assert (= (and d!2342925 (not c!1429906)) b!7752914))

(assert (= (and d!2342925 res!3091296) b!7752915))

(assert (= (and b!7752915 res!3091297) b!7752916))

(declare-fun m!8217518 () Bool)

(assert (=> d!2342925 m!8217518))

(declare-fun m!8217520 () Bool)

(assert (=> d!2342925 m!8217520))

(declare-fun m!8217522 () Bool)

(assert (=> d!2342925 m!8217522))

(assert (=> b!7752914 m!8217428))

(declare-fun m!8217524 () Bool)

(assert (=> b!7752915 m!8217524))

(declare-fun m!8217526 () Bool)

(assert (=> b!7752915 m!8217526))

(declare-fun m!8217528 () Bool)

(assert (=> b!7752915 m!8217528))

(assert (=> b!7752761 d!2342925))

(declare-fun e!4595885 () Bool)

(declare-fun b!7752917 () Bool)

(assert (=> b!7752917 (= e!4595885 (matchR!10112 (derivativeStep!6043 lt!2669535 (head!15839 (++!17803 s1!4391 s2!3963))) (tail!15379 (++!17803 s1!4391 s2!3963))))))

(declare-fun b!7752918 () Bool)

(declare-fun e!4595886 () Bool)

(assert (=> b!7752918 (= e!4595886 (not (= (head!15839 (++!17803 s1!4391 s2!3963)) (c!1429881 lt!2669535))))))

(declare-fun b!7752919 () Bool)

(assert (=> b!7752919 (= e!4595885 (nullable!9083 lt!2669535))))

(declare-fun b!7752920 () Bool)

(declare-fun res!3091299 () Bool)

(assert (=> b!7752920 (=> res!3091299 e!4595886)))

(assert (=> b!7752920 (= res!3091299 (not (isEmpty!42030 (tail!15379 (++!17803 s1!4391 s2!3963)))))))

(declare-fun b!7752921 () Bool)

(declare-fun e!4595889 () Bool)

(assert (=> b!7752921 (= e!4595889 e!4595886)))

(declare-fun res!3091301 () Bool)

(assert (=> b!7752921 (=> res!3091301 e!4595886)))

(declare-fun call!718634 () Bool)

(assert (=> b!7752921 (= res!3091301 call!718634)))

(declare-fun d!2342927 () Bool)

(declare-fun e!4595884 () Bool)

(assert (=> d!2342927 e!4595884))

(declare-fun c!1429909 () Bool)

(assert (=> d!2342927 (= c!1429909 (is-EmptyExpr!20622 lt!2669535))))

(declare-fun lt!2669567 () Bool)

(assert (=> d!2342927 (= lt!2669567 e!4595885)))

(declare-fun c!1429907 () Bool)

(assert (=> d!2342927 (= c!1429907 (isEmpty!42030 (++!17803 s1!4391 s2!3963)))))

(assert (=> d!2342927 (validRegex!11040 lt!2669535)))

(assert (=> d!2342927 (= (matchR!10112 lt!2669535 (++!17803 s1!4391 s2!3963)) lt!2669567)))

(declare-fun b!7752922 () Bool)

(declare-fun res!3091302 () Bool)

(declare-fun e!4595887 () Bool)

(assert (=> b!7752922 (=> res!3091302 e!4595887)))

(assert (=> b!7752922 (= res!3091302 (not (is-ElementMatch!20622 lt!2669535)))))

(declare-fun e!4595888 () Bool)

(assert (=> b!7752922 (= e!4595888 e!4595887)))

(declare-fun bm!718629 () Bool)

(assert (=> bm!718629 (= call!718634 (isEmpty!42030 (++!17803 s1!4391 s2!3963)))))

(declare-fun b!7752923 () Bool)

(declare-fun res!3091300 () Bool)

(declare-fun e!4595883 () Bool)

(assert (=> b!7752923 (=> (not res!3091300) (not e!4595883))))

(assert (=> b!7752923 (= res!3091300 (isEmpty!42030 (tail!15379 (++!17803 s1!4391 s2!3963))))))

(declare-fun b!7752924 () Bool)

(declare-fun res!3091303 () Bool)

(assert (=> b!7752924 (=> (not res!3091303) (not e!4595883))))

(assert (=> b!7752924 (= res!3091303 (not call!718634))))

(declare-fun b!7752925 () Bool)

(assert (=> b!7752925 (= e!4595888 (not lt!2669567))))

(declare-fun b!7752926 () Bool)

(assert (=> b!7752926 (= e!4595887 e!4595889)))

(declare-fun res!3091305 () Bool)

(assert (=> b!7752926 (=> (not res!3091305) (not e!4595889))))

(assert (=> b!7752926 (= res!3091305 (not lt!2669567))))

(declare-fun b!7752927 () Bool)

(assert (=> b!7752927 (= e!4595884 e!4595888)))

(declare-fun c!1429908 () Bool)

(assert (=> b!7752927 (= c!1429908 (is-EmptyLang!20622 lt!2669535))))

(declare-fun b!7752928 () Bool)

(declare-fun res!3091298 () Bool)

(assert (=> b!7752928 (=> res!3091298 e!4595887)))

(assert (=> b!7752928 (= res!3091298 e!4595883)))

(declare-fun res!3091304 () Bool)

(assert (=> b!7752928 (=> (not res!3091304) (not e!4595883))))

(assert (=> b!7752928 (= res!3091304 lt!2669567)))

(declare-fun b!7752929 () Bool)

(assert (=> b!7752929 (= e!4595883 (= (head!15839 (++!17803 s1!4391 s2!3963)) (c!1429881 lt!2669535)))))

(declare-fun b!7752930 () Bool)

(assert (=> b!7752930 (= e!4595884 (= lt!2669567 call!718634))))

(assert (= (and d!2342927 c!1429907) b!7752919))

(assert (= (and d!2342927 (not c!1429907)) b!7752917))

(assert (= (and d!2342927 c!1429909) b!7752930))

(assert (= (and d!2342927 (not c!1429909)) b!7752927))

(assert (= (and b!7752927 c!1429908) b!7752925))

(assert (= (and b!7752927 (not c!1429908)) b!7752922))

(assert (= (and b!7752922 (not res!3091302)) b!7752928))

(assert (= (and b!7752928 res!3091304) b!7752924))

(assert (= (and b!7752924 res!3091303) b!7752923))

(assert (= (and b!7752923 res!3091300) b!7752929))

(assert (= (and b!7752928 (not res!3091298)) b!7752926))

(assert (= (and b!7752926 res!3091305) b!7752921))

(assert (= (and b!7752921 (not res!3091301)) b!7752920))

(assert (= (and b!7752920 (not res!3091299)) b!7752918))

(assert (= (or b!7752930 b!7752921 b!7752924) bm!718629))

(assert (=> d!2342927 m!8217422))

(declare-fun m!8217530 () Bool)

(assert (=> d!2342927 m!8217530))

(assert (=> d!2342927 m!8217420))

(assert (=> bm!718629 m!8217422))

(assert (=> bm!718629 m!8217530))

(assert (=> b!7752923 m!8217422))

(declare-fun m!8217532 () Bool)

(assert (=> b!7752923 m!8217532))

(assert (=> b!7752923 m!8217532))

(declare-fun m!8217534 () Bool)

(assert (=> b!7752923 m!8217534))

(assert (=> b!7752917 m!8217422))

(declare-fun m!8217536 () Bool)

(assert (=> b!7752917 m!8217536))

(assert (=> b!7752917 m!8217536))

(declare-fun m!8217538 () Bool)

(assert (=> b!7752917 m!8217538))

(assert (=> b!7752917 m!8217422))

(assert (=> b!7752917 m!8217532))

(assert (=> b!7752917 m!8217538))

(assert (=> b!7752917 m!8217532))

(declare-fun m!8217540 () Bool)

(assert (=> b!7752917 m!8217540))

(assert (=> b!7752918 m!8217422))

(assert (=> b!7752918 m!8217536))

(declare-fun m!8217542 () Bool)

(assert (=> b!7752919 m!8217542))

(assert (=> b!7752920 m!8217422))

(assert (=> b!7752920 m!8217532))

(assert (=> b!7752920 m!8217532))

(assert (=> b!7752920 m!8217534))

(assert (=> b!7752929 m!8217422))

(assert (=> b!7752929 m!8217536))

(assert (=> b!7752761 d!2342927))

(declare-fun b!7752931 () Bool)

(declare-fun e!4595892 () Bool)

(assert (=> b!7752931 (= e!4595892 (matchR!10112 (derivativeStep!6043 lt!2669538 (head!15839 (++!17803 (t!388202 s1!4391) s2!3963))) (tail!15379 (++!17803 (t!388202 s1!4391) s2!3963))))))

(declare-fun b!7752932 () Bool)

(declare-fun e!4595893 () Bool)

(assert (=> b!7752932 (= e!4595893 (not (= (head!15839 (++!17803 (t!388202 s1!4391) s2!3963)) (c!1429881 lt!2669538))))))

(declare-fun b!7752933 () Bool)

(assert (=> b!7752933 (= e!4595892 (nullable!9083 lt!2669538))))

(declare-fun b!7752934 () Bool)

(declare-fun res!3091307 () Bool)

(assert (=> b!7752934 (=> res!3091307 e!4595893)))

(assert (=> b!7752934 (= res!3091307 (not (isEmpty!42030 (tail!15379 (++!17803 (t!388202 s1!4391) s2!3963)))))))

(declare-fun b!7752935 () Bool)

(declare-fun e!4595896 () Bool)

(assert (=> b!7752935 (= e!4595896 e!4595893)))

(declare-fun res!3091309 () Bool)

(assert (=> b!7752935 (=> res!3091309 e!4595893)))

(declare-fun call!718635 () Bool)

(assert (=> b!7752935 (= res!3091309 call!718635)))

(declare-fun d!2342929 () Bool)

(declare-fun e!4595891 () Bool)

(assert (=> d!2342929 e!4595891))

(declare-fun c!1429912 () Bool)

(assert (=> d!2342929 (= c!1429912 (is-EmptyExpr!20622 lt!2669538))))

(declare-fun lt!2669568 () Bool)

(assert (=> d!2342929 (= lt!2669568 e!4595892)))

(declare-fun c!1429910 () Bool)

(assert (=> d!2342929 (= c!1429910 (isEmpty!42030 (++!17803 (t!388202 s1!4391) s2!3963)))))

(assert (=> d!2342929 (validRegex!11040 lt!2669538)))

(assert (=> d!2342929 (= (matchR!10112 lt!2669538 (++!17803 (t!388202 s1!4391) s2!3963)) lt!2669568)))

(declare-fun b!7752936 () Bool)

(declare-fun res!3091310 () Bool)

(declare-fun e!4595894 () Bool)

(assert (=> b!7752936 (=> res!3091310 e!4595894)))

(assert (=> b!7752936 (= res!3091310 (not (is-ElementMatch!20622 lt!2669538)))))

(declare-fun e!4595895 () Bool)

(assert (=> b!7752936 (= e!4595895 e!4595894)))

(declare-fun bm!718630 () Bool)

(assert (=> bm!718630 (= call!718635 (isEmpty!42030 (++!17803 (t!388202 s1!4391) s2!3963)))))

(declare-fun b!7752937 () Bool)

(declare-fun res!3091308 () Bool)

(declare-fun e!4595890 () Bool)

(assert (=> b!7752937 (=> (not res!3091308) (not e!4595890))))

(assert (=> b!7752937 (= res!3091308 (isEmpty!42030 (tail!15379 (++!17803 (t!388202 s1!4391) s2!3963))))))

(declare-fun b!7752938 () Bool)

(declare-fun res!3091311 () Bool)

(assert (=> b!7752938 (=> (not res!3091311) (not e!4595890))))

(assert (=> b!7752938 (= res!3091311 (not call!718635))))

(declare-fun b!7752939 () Bool)

(assert (=> b!7752939 (= e!4595895 (not lt!2669568))))

(declare-fun b!7752940 () Bool)

(assert (=> b!7752940 (= e!4595894 e!4595896)))

(declare-fun res!3091313 () Bool)

(assert (=> b!7752940 (=> (not res!3091313) (not e!4595896))))

(assert (=> b!7752940 (= res!3091313 (not lt!2669568))))

(declare-fun b!7752941 () Bool)

(assert (=> b!7752941 (= e!4595891 e!4595895)))

(declare-fun c!1429911 () Bool)

(assert (=> b!7752941 (= c!1429911 (is-EmptyLang!20622 lt!2669538))))

(declare-fun b!7752942 () Bool)

(declare-fun res!3091306 () Bool)

(assert (=> b!7752942 (=> res!3091306 e!4595894)))

(assert (=> b!7752942 (= res!3091306 e!4595890)))

(declare-fun res!3091312 () Bool)

(assert (=> b!7752942 (=> (not res!3091312) (not e!4595890))))

(assert (=> b!7752942 (= res!3091312 lt!2669568)))

(declare-fun b!7752943 () Bool)

(assert (=> b!7752943 (= e!4595890 (= (head!15839 (++!17803 (t!388202 s1!4391) s2!3963)) (c!1429881 lt!2669538)))))

(declare-fun b!7752944 () Bool)

(assert (=> b!7752944 (= e!4595891 (= lt!2669568 call!718635))))

(assert (= (and d!2342929 c!1429910) b!7752933))

(assert (= (and d!2342929 (not c!1429910)) b!7752931))

(assert (= (and d!2342929 c!1429912) b!7752944))

(assert (= (and d!2342929 (not c!1429912)) b!7752941))

(assert (= (and b!7752941 c!1429911) b!7752939))

(assert (= (and b!7752941 (not c!1429911)) b!7752936))

(assert (= (and b!7752936 (not res!3091310)) b!7752942))

(assert (= (and b!7752942 res!3091312) b!7752938))

(assert (= (and b!7752938 res!3091311) b!7752937))

(assert (= (and b!7752937 res!3091308) b!7752943))

(assert (= (and b!7752942 (not res!3091306)) b!7752940))

(assert (= (and b!7752940 res!3091313) b!7752935))

(assert (= (and b!7752935 (not res!3091309)) b!7752934))

(assert (= (and b!7752934 (not res!3091307)) b!7752932))

(assert (= (or b!7752944 b!7752935 b!7752938) bm!718630))

(assert (=> d!2342929 m!8217428))

(declare-fun m!8217544 () Bool)

(assert (=> d!2342929 m!8217544))

(declare-fun m!8217546 () Bool)

(assert (=> d!2342929 m!8217546))

(assert (=> bm!718630 m!8217428))

(assert (=> bm!718630 m!8217544))

(assert (=> b!7752937 m!8217428))

(declare-fun m!8217548 () Bool)

(assert (=> b!7752937 m!8217548))

(assert (=> b!7752937 m!8217548))

(declare-fun m!8217550 () Bool)

(assert (=> b!7752937 m!8217550))

(assert (=> b!7752931 m!8217428))

(declare-fun m!8217552 () Bool)

(assert (=> b!7752931 m!8217552))

(assert (=> b!7752931 m!8217552))

(declare-fun m!8217554 () Bool)

(assert (=> b!7752931 m!8217554))

(assert (=> b!7752931 m!8217428))

(assert (=> b!7752931 m!8217548))

(assert (=> b!7752931 m!8217554))

(assert (=> b!7752931 m!8217548))

(declare-fun m!8217556 () Bool)

(assert (=> b!7752931 m!8217556))

(assert (=> b!7752932 m!8217428))

(assert (=> b!7752932 m!8217552))

(declare-fun m!8217558 () Bool)

(assert (=> b!7752933 m!8217558))

(assert (=> b!7752934 m!8217428))

(assert (=> b!7752934 m!8217548))

(assert (=> b!7752934 m!8217548))

(assert (=> b!7752934 m!8217550))

(assert (=> b!7752943 m!8217428))

(assert (=> b!7752943 m!8217552))

(assert (=> b!7752761 d!2342929))

(declare-fun d!2342931 () Bool)

(declare-fun e!4595899 () Bool)

(assert (=> d!2342931 e!4595899))

(declare-fun res!3091314 () Bool)

(assert (=> d!2342931 (=> (not res!3091314) (not e!4595899))))

(declare-fun lt!2669571 () List!73467)

(assert (=> d!2342931 (= res!3091314 (= (content!15552 lt!2669571) (set.union (content!15552 (t!388202 s1!4391)) (content!15552 s2!3963))))))

(declare-fun e!4595900 () List!73467)

(assert (=> d!2342931 (= lt!2669571 e!4595900)))

(declare-fun c!1429915 () Bool)

(assert (=> d!2342931 (= c!1429915 (is-Nil!73343 (t!388202 s1!4391)))))

(assert (=> d!2342931 (= (++!17803 (t!388202 s1!4391) s2!3963) lt!2669571)))

(declare-fun b!7752950 () Bool)

(assert (=> b!7752950 (= e!4595900 (Cons!73343 (h!79791 (t!388202 s1!4391)) (++!17803 (t!388202 (t!388202 s1!4391)) s2!3963)))))

(declare-fun b!7752952 () Bool)

(assert (=> b!7752952 (= e!4595899 (or (not (= s2!3963 Nil!73343)) (= lt!2669571 (t!388202 s1!4391))))))

(declare-fun b!7752949 () Bool)

(assert (=> b!7752949 (= e!4595900 s2!3963)))

(declare-fun b!7752951 () Bool)

(declare-fun res!3091315 () Bool)

(assert (=> b!7752951 (=> (not res!3091315) (not e!4595899))))

(assert (=> b!7752951 (= res!3091315 (= (size!42655 lt!2669571) (+ (size!42655 (t!388202 s1!4391)) (size!42655 s2!3963))))))

(assert (= (and d!2342931 c!1429915) b!7752949))

(assert (= (and d!2342931 (not c!1429915)) b!7752950))

(assert (= (and d!2342931 res!3091314) b!7752951))

(assert (= (and b!7752951 res!3091315) b!7752952))

(declare-fun m!8217560 () Bool)

(assert (=> d!2342931 m!8217560))

(declare-fun m!8217562 () Bool)

(assert (=> d!2342931 m!8217562))

(assert (=> d!2342931 m!8217522))

(declare-fun m!8217564 () Bool)

(assert (=> b!7752950 m!8217564))

(declare-fun m!8217566 () Bool)

(assert (=> b!7752951 m!8217566))

(declare-fun m!8217568 () Bool)

(assert (=> b!7752951 m!8217568))

(assert (=> b!7752951 m!8217528))

(assert (=> b!7752761 d!2342931))

(declare-fun b!7752961 () Bool)

(declare-fun e!4595907 () Bool)

(assert (=> b!7752961 (= e!4595907 (matchR!10112 (derivativeStep!6043 lt!2669535 (head!15839 s2!3963)) (tail!15379 s2!3963)))))

(declare-fun b!7752962 () Bool)

(declare-fun e!4595908 () Bool)

(assert (=> b!7752962 (= e!4595908 (not (= (head!15839 s2!3963) (c!1429881 lt!2669535))))))

(declare-fun b!7752963 () Bool)

(assert (=> b!7752963 (= e!4595907 (nullable!9083 lt!2669535))))

(declare-fun b!7752964 () Bool)

(declare-fun res!3091317 () Bool)

(assert (=> b!7752964 (=> res!3091317 e!4595908)))

(assert (=> b!7752964 (= res!3091317 (not (isEmpty!42030 (tail!15379 s2!3963))))))

(declare-fun b!7752965 () Bool)

(declare-fun e!4595911 () Bool)

(assert (=> b!7752965 (= e!4595911 e!4595908)))

(declare-fun res!3091319 () Bool)

(assert (=> b!7752965 (=> res!3091319 e!4595908)))

(declare-fun call!718636 () Bool)

(assert (=> b!7752965 (= res!3091319 call!718636)))

(declare-fun d!2342933 () Bool)

(declare-fun e!4595906 () Bool)

(assert (=> d!2342933 e!4595906))

(declare-fun c!1429922 () Bool)

(assert (=> d!2342933 (= c!1429922 (is-EmptyExpr!20622 lt!2669535))))

(declare-fun lt!2669572 () Bool)

(assert (=> d!2342933 (= lt!2669572 e!4595907)))

(declare-fun c!1429920 () Bool)

(assert (=> d!2342933 (= c!1429920 (isEmpty!42030 s2!3963))))

(assert (=> d!2342933 (validRegex!11040 lt!2669535)))

(assert (=> d!2342933 (= (matchR!10112 lt!2669535 s2!3963) lt!2669572)))

(declare-fun b!7752966 () Bool)

(declare-fun res!3091320 () Bool)

(declare-fun e!4595909 () Bool)

(assert (=> b!7752966 (=> res!3091320 e!4595909)))

(assert (=> b!7752966 (= res!3091320 (not (is-ElementMatch!20622 lt!2669535)))))

(declare-fun e!4595910 () Bool)

(assert (=> b!7752966 (= e!4595910 e!4595909)))

(declare-fun bm!718631 () Bool)

(assert (=> bm!718631 (= call!718636 (isEmpty!42030 s2!3963))))

(declare-fun b!7752967 () Bool)

(declare-fun res!3091318 () Bool)

(declare-fun e!4595905 () Bool)

(assert (=> b!7752967 (=> (not res!3091318) (not e!4595905))))

(assert (=> b!7752967 (= res!3091318 (isEmpty!42030 (tail!15379 s2!3963)))))

(declare-fun b!7752968 () Bool)

(declare-fun res!3091321 () Bool)

(assert (=> b!7752968 (=> (not res!3091321) (not e!4595905))))

(assert (=> b!7752968 (= res!3091321 (not call!718636))))

(declare-fun b!7752969 () Bool)

(assert (=> b!7752969 (= e!4595910 (not lt!2669572))))

(declare-fun b!7752970 () Bool)

(assert (=> b!7752970 (= e!4595909 e!4595911)))

(declare-fun res!3091323 () Bool)

(assert (=> b!7752970 (=> (not res!3091323) (not e!4595911))))

(assert (=> b!7752970 (= res!3091323 (not lt!2669572))))

(declare-fun b!7752971 () Bool)

(assert (=> b!7752971 (= e!4595906 e!4595910)))

(declare-fun c!1429921 () Bool)

(assert (=> b!7752971 (= c!1429921 (is-EmptyLang!20622 lt!2669535))))

(declare-fun b!7752972 () Bool)

(declare-fun res!3091316 () Bool)

(assert (=> b!7752972 (=> res!3091316 e!4595909)))

(assert (=> b!7752972 (= res!3091316 e!4595905)))

(declare-fun res!3091322 () Bool)

(assert (=> b!7752972 (=> (not res!3091322) (not e!4595905))))

(assert (=> b!7752972 (= res!3091322 lt!2669572)))

(declare-fun b!7752973 () Bool)

(assert (=> b!7752973 (= e!4595905 (= (head!15839 s2!3963) (c!1429881 lt!2669535)))))

(declare-fun b!7752974 () Bool)

(assert (=> b!7752974 (= e!4595906 (= lt!2669572 call!718636))))

(assert (= (and d!2342933 c!1429920) b!7752963))

(assert (= (and d!2342933 (not c!1429920)) b!7752961))

(assert (= (and d!2342933 c!1429922) b!7752974))

(assert (= (and d!2342933 (not c!1429922)) b!7752971))

(assert (= (and b!7752971 c!1429921) b!7752969))

(assert (= (and b!7752971 (not c!1429921)) b!7752966))

(assert (= (and b!7752966 (not res!3091320)) b!7752972))

(assert (= (and b!7752972 res!3091322) b!7752968))

(assert (= (and b!7752968 res!3091321) b!7752967))

(assert (= (and b!7752967 res!3091318) b!7752973))

(assert (= (and b!7752972 (not res!3091316)) b!7752970))

(assert (= (and b!7752970 res!3091323) b!7752965))

(assert (= (and b!7752965 (not res!3091319)) b!7752964))

(assert (= (and b!7752964 (not res!3091317)) b!7752962))

(assert (= (or b!7752974 b!7752965 b!7752968) bm!718631))

(declare-fun m!8217570 () Bool)

(assert (=> d!2342933 m!8217570))

(assert (=> d!2342933 m!8217420))

(assert (=> bm!718631 m!8217570))

(declare-fun m!8217572 () Bool)

(assert (=> b!7752967 m!8217572))

(assert (=> b!7752967 m!8217572))

(declare-fun m!8217574 () Bool)

(assert (=> b!7752967 m!8217574))

(declare-fun m!8217576 () Bool)

(assert (=> b!7752961 m!8217576))

(assert (=> b!7752961 m!8217576))

(declare-fun m!8217578 () Bool)

(assert (=> b!7752961 m!8217578))

(assert (=> b!7752961 m!8217572))

(assert (=> b!7752961 m!8217578))

(assert (=> b!7752961 m!8217572))

(declare-fun m!8217580 () Bool)

(assert (=> b!7752961 m!8217580))

(assert (=> b!7752962 m!8217576))

(assert (=> b!7752963 m!8217542))

(assert (=> b!7752964 m!8217572))

(assert (=> b!7752964 m!8217572))

(assert (=> b!7752964 m!8217574))

(assert (=> b!7752973 m!8217576))

(assert (=> b!7752762 d!2342933))

(declare-fun b!7753011 () Bool)

(declare-fun e!4595932 () Regex!20622)

(assert (=> b!7753011 (= e!4595932 (ite (= (h!79791 s1!4391) (c!1429881 lt!2669535)) EmptyExpr!20622 EmptyLang!20622))))

(declare-fun b!7753013 () Bool)

(declare-fun c!1429936 () Bool)

(assert (=> b!7753013 (= c!1429936 (is-Union!20622 lt!2669535))))

(declare-fun e!4595934 () Regex!20622)

(assert (=> b!7753013 (= e!4595932 e!4595934)))

(declare-fun b!7753014 () Bool)

(declare-fun e!4595930 () Regex!20622)

(assert (=> b!7753014 (= e!4595934 e!4595930)))

(declare-fun c!1429933 () Bool)

(assert (=> b!7753014 (= c!1429933 (is-Star!20622 lt!2669535))))

(declare-fun bm!718642 () Bool)

(declare-fun call!718650 () Regex!20622)

(declare-fun call!718647 () Regex!20622)

(assert (=> bm!718642 (= call!718650 call!718647)))

(declare-fun b!7753015 () Bool)

(declare-fun c!1429937 () Bool)

(assert (=> b!7753015 (= c!1429937 (nullable!9083 (regOne!41756 lt!2669535)))))

(declare-fun e!4595933 () Regex!20622)

(assert (=> b!7753015 (= e!4595930 e!4595933)))

(declare-fun b!7753016 () Bool)

(declare-fun e!4595931 () Regex!20622)

(assert (=> b!7753016 (= e!4595931 EmptyLang!20622)))

(declare-fun b!7753017 () Bool)

(assert (=> b!7753017 (= e!4595931 e!4595932)))

(declare-fun c!1429935 () Bool)

(assert (=> b!7753017 (= c!1429935 (is-ElementMatch!20622 lt!2669535))))

(declare-fun bm!718643 () Bool)

(assert (=> bm!718643 (= call!718647 (derivativeStep!6043 (ite c!1429936 (regTwo!41757 lt!2669535) (ite c!1429933 (reg!20951 lt!2669535) (regOne!41756 lt!2669535))) (h!79791 s1!4391)))))

(declare-fun b!7753018 () Bool)

(assert (=> b!7753018 (= e!4595930 (Concat!29467 call!718650 lt!2669535))))

(declare-fun b!7753012 () Bool)

(declare-fun call!718648 () Regex!20622)

(assert (=> b!7753012 (= e!4595934 (Union!20622 call!718648 call!718647))))

(declare-fun d!2342935 () Bool)

(declare-fun lt!2669575 () Regex!20622)

(assert (=> d!2342935 (validRegex!11040 lt!2669575)))

(assert (=> d!2342935 (= lt!2669575 e!4595931)))

(declare-fun c!1429934 () Bool)

(assert (=> d!2342935 (= c!1429934 (or (is-EmptyExpr!20622 lt!2669535) (is-EmptyLang!20622 lt!2669535)))))

(assert (=> d!2342935 (validRegex!11040 lt!2669535)))

(assert (=> d!2342935 (= (derivativeStep!6043 lt!2669535 (h!79791 s1!4391)) lt!2669575)))

(declare-fun b!7753019 () Bool)

(declare-fun call!718649 () Regex!20622)

(assert (=> b!7753019 (= e!4595933 (Union!20622 (Concat!29467 call!718649 (regTwo!41756 lt!2669535)) call!718648))))

(declare-fun bm!718644 () Bool)

(assert (=> bm!718644 (= call!718648 (derivativeStep!6043 (ite c!1429936 (regOne!41757 lt!2669535) (regTwo!41756 lt!2669535)) (h!79791 s1!4391)))))

(declare-fun b!7753020 () Bool)

(assert (=> b!7753020 (= e!4595933 (Union!20622 (Concat!29467 call!718649 (regTwo!41756 lt!2669535)) EmptyLang!20622))))

(declare-fun bm!718645 () Bool)

(assert (=> bm!718645 (= call!718649 call!718650)))

(assert (= (and d!2342935 c!1429934) b!7753016))

(assert (= (and d!2342935 (not c!1429934)) b!7753017))

(assert (= (and b!7753017 c!1429935) b!7753011))

(assert (= (and b!7753017 (not c!1429935)) b!7753013))

(assert (= (and b!7753013 c!1429936) b!7753012))

(assert (= (and b!7753013 (not c!1429936)) b!7753014))

(assert (= (and b!7753014 c!1429933) b!7753018))

(assert (= (and b!7753014 (not c!1429933)) b!7753015))

(assert (= (and b!7753015 c!1429937) b!7753019))

(assert (= (and b!7753015 (not c!1429937)) b!7753020))

(assert (= (or b!7753019 b!7753020) bm!718645))

(assert (= (or b!7753018 bm!718645) bm!718642))

(assert (= (or b!7753012 bm!718642) bm!718643))

(assert (= (or b!7753012 b!7753019) bm!718644))

(declare-fun m!8217582 () Bool)

(assert (=> b!7753015 m!8217582))

(declare-fun m!8217584 () Bool)

(assert (=> bm!718643 m!8217584))

(declare-fun m!8217586 () Bool)

(assert (=> d!2342935 m!8217586))

(assert (=> d!2342935 m!8217420))

(declare-fun m!8217588 () Bool)

(assert (=> bm!718644 m!8217588))

(assert (=> b!7752753 d!2342935))

(declare-fun b!7753035 () Bool)

(declare-fun e!4595944 () Regex!20622)

(assert (=> b!7753035 (= e!4595944 (ite (= (h!79791 s1!4391) (c!1429881 r!25892)) EmptyExpr!20622 EmptyLang!20622))))

(declare-fun b!7753037 () Bool)

(declare-fun c!1429944 () Bool)

(assert (=> b!7753037 (= c!1429944 (is-Union!20622 r!25892))))

(declare-fun e!4595946 () Regex!20622)

(assert (=> b!7753037 (= e!4595944 e!4595946)))

(declare-fun b!7753038 () Bool)

(declare-fun e!4595942 () Regex!20622)

(assert (=> b!7753038 (= e!4595946 e!4595942)))

(declare-fun c!1429941 () Bool)

(assert (=> b!7753038 (= c!1429941 (is-Star!20622 r!25892))))

(declare-fun bm!718647 () Bool)

(declare-fun call!718655 () Regex!20622)

(declare-fun call!718652 () Regex!20622)

(assert (=> bm!718647 (= call!718655 call!718652)))

(declare-fun b!7753039 () Bool)

(declare-fun c!1429945 () Bool)

(assert (=> b!7753039 (= c!1429945 (nullable!9083 (regOne!41756 r!25892)))))

(declare-fun e!4595945 () Regex!20622)

(assert (=> b!7753039 (= e!4595942 e!4595945)))

(declare-fun b!7753040 () Bool)

(declare-fun e!4595943 () Regex!20622)

(assert (=> b!7753040 (= e!4595943 EmptyLang!20622)))

(declare-fun b!7753041 () Bool)

(assert (=> b!7753041 (= e!4595943 e!4595944)))

(declare-fun c!1429943 () Bool)

(assert (=> b!7753041 (= c!1429943 (is-ElementMatch!20622 r!25892))))

(declare-fun bm!718648 () Bool)

(assert (=> bm!718648 (= call!718652 (derivativeStep!6043 (ite c!1429944 (regTwo!41757 r!25892) (ite c!1429941 (reg!20951 r!25892) (regOne!41756 r!25892))) (h!79791 s1!4391)))))

(declare-fun b!7753042 () Bool)

(assert (=> b!7753042 (= e!4595942 (Concat!29467 call!718655 r!25892))))

(declare-fun b!7753036 () Bool)

(declare-fun call!718653 () Regex!20622)

(assert (=> b!7753036 (= e!4595946 (Union!20622 call!718653 call!718652))))

(declare-fun d!2342937 () Bool)

(declare-fun lt!2669577 () Regex!20622)

(assert (=> d!2342937 (validRegex!11040 lt!2669577)))

(assert (=> d!2342937 (= lt!2669577 e!4595943)))

(declare-fun c!1429942 () Bool)

(assert (=> d!2342937 (= c!1429942 (or (is-EmptyExpr!20622 r!25892) (is-EmptyLang!20622 r!25892)))))

(assert (=> d!2342937 (validRegex!11040 r!25892)))

(assert (=> d!2342937 (= (derivativeStep!6043 r!25892 (h!79791 s1!4391)) lt!2669577)))

(declare-fun call!718654 () Regex!20622)

(declare-fun b!7753043 () Bool)

(assert (=> b!7753043 (= e!4595945 (Union!20622 (Concat!29467 call!718654 (regTwo!41756 r!25892)) call!718653))))

(declare-fun bm!718649 () Bool)

(assert (=> bm!718649 (= call!718653 (derivativeStep!6043 (ite c!1429944 (regOne!41757 r!25892) (regTwo!41756 r!25892)) (h!79791 s1!4391)))))

(declare-fun b!7753044 () Bool)

(assert (=> b!7753044 (= e!4595945 (Union!20622 (Concat!29467 call!718654 (regTwo!41756 r!25892)) EmptyLang!20622))))

(declare-fun bm!718650 () Bool)

(assert (=> bm!718650 (= call!718654 call!718655)))

(assert (= (and d!2342937 c!1429942) b!7753040))

(assert (= (and d!2342937 (not c!1429942)) b!7753041))

(assert (= (and b!7753041 c!1429943) b!7753035))

(assert (= (and b!7753041 (not c!1429943)) b!7753037))

(assert (= (and b!7753037 c!1429944) b!7753036))

(assert (= (and b!7753037 (not c!1429944)) b!7753038))

(assert (= (and b!7753038 c!1429941) b!7753042))

(assert (= (and b!7753038 (not c!1429941)) b!7753039))

(assert (= (and b!7753039 c!1429945) b!7753043))

(assert (= (and b!7753039 (not c!1429945)) b!7753044))

(assert (= (or b!7753043 b!7753044) bm!718650))

(assert (= (or b!7753042 bm!718650) bm!718647))

(assert (= (or b!7753036 bm!718647) bm!718648))

(assert (= (or b!7753036 b!7753043) bm!718649))

(declare-fun m!8217590 () Bool)

(assert (=> b!7753039 m!8217590))

(declare-fun m!8217592 () Bool)

(assert (=> bm!718648 m!8217592))

(declare-fun m!8217594 () Bool)

(assert (=> d!2342937 m!8217594))

(assert (=> d!2342937 m!8217468))

(declare-fun m!8217596 () Bool)

(assert (=> bm!718649 m!8217596))

(assert (=> b!7752753 d!2342937))

(declare-fun b!7753045 () Bool)

(declare-fun e!4595951 () Bool)

(declare-fun e!4595948 () Bool)

(assert (=> b!7753045 (= e!4595951 e!4595948)))

(declare-fun c!1429946 () Bool)

(assert (=> b!7753045 (= c!1429946 (is-Star!20622 lt!2669536))))

(declare-fun b!7753046 () Bool)

(declare-fun res!3091350 () Bool)

(declare-fun e!4595950 () Bool)

(assert (=> b!7753046 (=> res!3091350 e!4595950)))

(assert (=> b!7753046 (= res!3091350 (not (is-Concat!29467 lt!2669536)))))

(declare-fun e!4595953 () Bool)

(assert (=> b!7753046 (= e!4595953 e!4595950)))

(declare-fun bm!718651 () Bool)

(declare-fun call!718657 () Bool)

(declare-fun c!1429947 () Bool)

(assert (=> bm!718651 (= call!718657 (validRegex!11040 (ite c!1429946 (reg!20951 lt!2669536) (ite c!1429947 (regOne!41757 lt!2669536) (regOne!41756 lt!2669536)))))))

(declare-fun bm!718652 () Bool)

(declare-fun call!718658 () Bool)

(assert (=> bm!718652 (= call!718658 (validRegex!11040 (ite c!1429947 (regTwo!41757 lt!2669536) (regTwo!41756 lt!2669536))))))

(declare-fun d!2342939 () Bool)

(declare-fun res!3091352 () Bool)

(assert (=> d!2342939 (=> res!3091352 e!4595951)))

(assert (=> d!2342939 (= res!3091352 (is-ElementMatch!20622 lt!2669536))))

(assert (=> d!2342939 (= (validRegex!11040 lt!2669536) e!4595951)))

(declare-fun b!7753047 () Bool)

(declare-fun e!4595949 () Bool)

(assert (=> b!7753047 (= e!4595949 call!718657)))

(declare-fun b!7753048 () Bool)

(declare-fun e!4595952 () Bool)

(assert (=> b!7753048 (= e!4595952 call!718658)))

(declare-fun b!7753049 () Bool)

(assert (=> b!7753049 (= e!4595948 e!4595949)))

(declare-fun res!3091348 () Bool)

(assert (=> b!7753049 (= res!3091348 (not (nullable!9083 (reg!20951 lt!2669536))))))

(assert (=> b!7753049 (=> (not res!3091348) (not e!4595949))))

(declare-fun b!7753050 () Bool)

(declare-fun res!3091351 () Bool)

(declare-fun e!4595947 () Bool)

(assert (=> b!7753050 (=> (not res!3091351) (not e!4595947))))

(declare-fun call!718656 () Bool)

(assert (=> b!7753050 (= res!3091351 call!718656)))

(assert (=> b!7753050 (= e!4595953 e!4595947)))

(declare-fun b!7753051 () Bool)

(assert (=> b!7753051 (= e!4595948 e!4595953)))

(assert (=> b!7753051 (= c!1429947 (is-Union!20622 lt!2669536))))

(declare-fun b!7753052 () Bool)

(assert (=> b!7753052 (= e!4595950 e!4595952)))

(declare-fun res!3091349 () Bool)

(assert (=> b!7753052 (=> (not res!3091349) (not e!4595952))))

(assert (=> b!7753052 (= res!3091349 call!718656)))

(declare-fun bm!718653 () Bool)

(assert (=> bm!718653 (= call!718656 call!718657)))

(declare-fun b!7753053 () Bool)

(assert (=> b!7753053 (= e!4595947 call!718658)))

(assert (= (and d!2342939 (not res!3091352)) b!7753045))

(assert (= (and b!7753045 c!1429946) b!7753049))

(assert (= (and b!7753045 (not c!1429946)) b!7753051))

(assert (= (and b!7753049 res!3091348) b!7753047))

(assert (= (and b!7753051 c!1429947) b!7753050))

(assert (= (and b!7753051 (not c!1429947)) b!7753046))

(assert (= (and b!7753050 res!3091351) b!7753053))

(assert (= (and b!7753046 (not res!3091350)) b!7753052))

(assert (= (and b!7753052 res!3091349) b!7753048))

(assert (= (or b!7753050 b!7753052) bm!718653))

(assert (= (or b!7753053 b!7753048) bm!718652))

(assert (= (or b!7753047 bm!718653) bm!718651))

(declare-fun m!8217602 () Bool)

(assert (=> bm!718651 m!8217602))

(declare-fun m!8217604 () Bool)

(assert (=> bm!718652 m!8217604))

(declare-fun m!8217608 () Bool)

(assert (=> b!7753049 m!8217608))

(assert (=> b!7752754 d!2342939))

(declare-fun b!7753068 () Bool)

(declare-fun e!4595958 () Bool)

(assert (=> b!7753068 (= e!4595958 tp_is_empty!51599)))

(declare-fun b!7753070 () Bool)

(declare-fun tp!2274775 () Bool)

(assert (=> b!7753070 (= e!4595958 tp!2274775)))

(declare-fun b!7753071 () Bool)

(declare-fun tp!2274776 () Bool)

(declare-fun tp!2274773 () Bool)

(assert (=> b!7753071 (= e!4595958 (and tp!2274776 tp!2274773))))

(declare-fun b!7753069 () Bool)

(declare-fun tp!2274772 () Bool)

(declare-fun tp!2274774 () Bool)

(assert (=> b!7753069 (= e!4595958 (and tp!2274772 tp!2274774))))

(assert (=> b!7752756 (= tp!2274738 e!4595958)))

(assert (= (and b!7752756 (is-ElementMatch!20622 (reg!20951 r!25892))) b!7753068))

(assert (= (and b!7752756 (is-Concat!29467 (reg!20951 r!25892))) b!7753069))

(assert (= (and b!7752756 (is-Star!20622 (reg!20951 r!25892))) b!7753070))

(assert (= (and b!7752756 (is-Union!20622 (reg!20951 r!25892))) b!7753071))

(declare-fun b!7753076 () Bool)

(declare-fun e!4595961 () Bool)

(declare-fun tp!2274779 () Bool)

(assert (=> b!7753076 (= e!4595961 (and tp_is_empty!51599 tp!2274779))))

(assert (=> b!7752752 (= tp!2274734 e!4595961)))

(assert (= (and b!7752752 (is-Cons!73343 (t!388202 s1!4391))) b!7753076))

(declare-fun b!7753077 () Bool)

(declare-fun e!4595962 () Bool)

(assert (=> b!7753077 (= e!4595962 tp_is_empty!51599)))

(declare-fun b!7753079 () Bool)

(declare-fun tp!2274783 () Bool)

(assert (=> b!7753079 (= e!4595962 tp!2274783)))

(declare-fun b!7753080 () Bool)

(declare-fun tp!2274784 () Bool)

(declare-fun tp!2274781 () Bool)

(assert (=> b!7753080 (= e!4595962 (and tp!2274784 tp!2274781))))

(declare-fun b!7753078 () Bool)

(declare-fun tp!2274780 () Bool)

(declare-fun tp!2274782 () Bool)

(assert (=> b!7753078 (= e!4595962 (and tp!2274780 tp!2274782))))

(assert (=> b!7752757 (= tp!2274735 e!4595962)))

(assert (= (and b!7752757 (is-ElementMatch!20622 (regOne!41756 r!25892))) b!7753077))

(assert (= (and b!7752757 (is-Concat!29467 (regOne!41756 r!25892))) b!7753078))

(assert (= (and b!7752757 (is-Star!20622 (regOne!41756 r!25892))) b!7753079))

(assert (= (and b!7752757 (is-Union!20622 (regOne!41756 r!25892))) b!7753080))

(declare-fun b!7753081 () Bool)

(declare-fun e!4595963 () Bool)

(assert (=> b!7753081 (= e!4595963 tp_is_empty!51599)))

(declare-fun b!7753083 () Bool)

(declare-fun tp!2274788 () Bool)

(assert (=> b!7753083 (= e!4595963 tp!2274788)))

(declare-fun b!7753084 () Bool)

(declare-fun tp!2274789 () Bool)

(declare-fun tp!2274786 () Bool)

(assert (=> b!7753084 (= e!4595963 (and tp!2274789 tp!2274786))))

(declare-fun b!7753082 () Bool)

(declare-fun tp!2274785 () Bool)

(declare-fun tp!2274787 () Bool)

(assert (=> b!7753082 (= e!4595963 (and tp!2274785 tp!2274787))))

(assert (=> b!7752757 (= tp!2274740 e!4595963)))

(assert (= (and b!7752757 (is-ElementMatch!20622 (regTwo!41756 r!25892))) b!7753081))

(assert (= (and b!7752757 (is-Concat!29467 (regTwo!41756 r!25892))) b!7753082))

(assert (= (and b!7752757 (is-Star!20622 (regTwo!41756 r!25892))) b!7753083))

(assert (= (and b!7752757 (is-Union!20622 (regTwo!41756 r!25892))) b!7753084))

(declare-fun b!7753085 () Bool)

(declare-fun e!4595967 () Bool)

(declare-fun tp!2274790 () Bool)

(assert (=> b!7753085 (= e!4595967 (and tp_is_empty!51599 tp!2274790))))

(assert (=> b!7752758 (= tp!2274739 e!4595967)))

(assert (= (and b!7752758 (is-Cons!73343 (t!388202 s2!3963))) b!7753085))

(declare-fun b!7753100 () Bool)

(declare-fun e!4595972 () Bool)

(assert (=> b!7753100 (= e!4595972 tp_is_empty!51599)))

(declare-fun b!7753102 () Bool)

(declare-fun tp!2274794 () Bool)

(assert (=> b!7753102 (= e!4595972 tp!2274794)))

(declare-fun b!7753103 () Bool)

(declare-fun tp!2274795 () Bool)

(declare-fun tp!2274792 () Bool)

(assert (=> b!7753103 (= e!4595972 (and tp!2274795 tp!2274792))))

(declare-fun b!7753101 () Bool)

(declare-fun tp!2274791 () Bool)

(declare-fun tp!2274793 () Bool)

(assert (=> b!7753101 (= e!4595972 (and tp!2274791 tp!2274793))))

(assert (=> b!7752764 (= tp!2274737 e!4595972)))

(assert (= (and b!7752764 (is-ElementMatch!20622 (regOne!41757 r!25892))) b!7753100))

(assert (= (and b!7752764 (is-Concat!29467 (regOne!41757 r!25892))) b!7753101))

(assert (= (and b!7752764 (is-Star!20622 (regOne!41757 r!25892))) b!7753102))

(assert (= (and b!7752764 (is-Union!20622 (regOne!41757 r!25892))) b!7753103))

(declare-fun b!7753104 () Bool)

(declare-fun e!4595973 () Bool)

(assert (=> b!7753104 (= e!4595973 tp_is_empty!51599)))

(declare-fun b!7753106 () Bool)

(declare-fun tp!2274799 () Bool)

(assert (=> b!7753106 (= e!4595973 tp!2274799)))

(declare-fun b!7753107 () Bool)

(declare-fun tp!2274800 () Bool)

(declare-fun tp!2274797 () Bool)

(assert (=> b!7753107 (= e!4595973 (and tp!2274800 tp!2274797))))

(declare-fun b!7753105 () Bool)

(declare-fun tp!2274796 () Bool)

(declare-fun tp!2274798 () Bool)

(assert (=> b!7753105 (= e!4595973 (and tp!2274796 tp!2274798))))

(assert (=> b!7752764 (= tp!2274736 e!4595973)))

(assert (= (and b!7752764 (is-ElementMatch!20622 (regTwo!41757 r!25892))) b!7753104))

(assert (= (and b!7752764 (is-Concat!29467 (regTwo!41757 r!25892))) b!7753105))

(assert (= (and b!7752764 (is-Star!20622 (regTwo!41757 r!25892))) b!7753106))

(assert (= (and b!7752764 (is-Union!20622 (regTwo!41757 r!25892))) b!7753107))

(push 1)

(assert (not b!7752841))

(assert (not b!7753069))

(assert (not b!7753083))

(assert (not bm!718630))

(assert (not bm!718644))

(assert (not b!7753070))

(assert (not b!7752963))

(assert (not bm!718618))

(assert (not b!7752967))

(assert (not d!2342935))

(assert (not b!7752904))

(assert (not bm!718651))

(assert (not b!7753078))

(assert (not b!7753105))

(assert (not b!7752932))

(assert (not b!7753015))

(assert (not d!2342913))

(assert (not b!7753079))

(assert (not b!7752951))

(assert (not bm!718626))

(assert (not d!2342937))

(assert (not b!7752900))

(assert (not b!7752973))

(assert (not b!7752838))

(assert (not b!7752937))

(assert (not bm!718643))

(assert (not b!7752934))

(assert (not b!7752929))

(assert (not b!7752962))

(assert (not b!7753103))

(assert (not b!7753039))

(assert (not bm!718648))

(assert (not d!2342931))

(assert (not b!7752888))

(assert (not d!2342929))

(assert (not d!2342923))

(assert (not b!7752964))

(assert (not b!7752915))

(assert (not b!7752883))

(assert (not b!7752943))

(assert (not d!2342927))

(assert (not b!7752919))

(assert (not b!7752837))

(assert (not b!7753080))

(assert (not b!7752933))

(assert (not b!7752917))

(assert tp_is_empty!51599)

(assert (not b!7752918))

(assert (not bm!718652))

(assert (not b!7753071))

(assert (not bm!718631))

(assert (not b!7753076))

(assert (not b!7753106))

(assert (not b!7753101))

(assert (not b!7752920))

(assert (not b!7752923))

(assert (not b!7752950))

(assert (not b!7753102))

(assert (not b!7753084))

(assert (not b!7753082))

(assert (not d!2342933))

(assert (not bm!718628))

(assert (not bm!718629))

(assert (not b!7752890))

(assert (not b!7752931))

(assert (not b!7752836))

(assert (not b!7752847))

(assert (not b!7752914))

(assert (not b!7752961))

(assert (not bm!718649))

(assert (not b!7753085))

(assert (not b!7752894))

(assert (not d!2342925))

(assert (not d!2342919))

(assert (not b!7752889))

(assert (not b!7752835))

(assert (not b!7752891))

(assert (not bm!718625))

(assert (not b!7753049))

(assert (not b!7753107))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun b!7753262 () Bool)

(declare-fun e!4596056 () Bool)

(assert (=> b!7753262 (= e!4596056 (matchR!10112 (derivativeStep!6043 (derivativeStep!6043 lt!2669535 (head!15839 s2!3963)) (head!15839 (tail!15379 s2!3963))) (tail!15379 (tail!15379 s2!3963))))))

(declare-fun b!7753263 () Bool)

(declare-fun e!4596057 () Bool)

(assert (=> b!7753263 (= e!4596057 (not (= (head!15839 (tail!15379 s2!3963)) (c!1429881 (derivativeStep!6043 lt!2669535 (head!15839 s2!3963))))))))

(declare-fun b!7753264 () Bool)

(assert (=> b!7753264 (= e!4596056 (nullable!9083 (derivativeStep!6043 lt!2669535 (head!15839 s2!3963))))))

(declare-fun b!7753265 () Bool)

(declare-fun res!3091408 () Bool)

(assert (=> b!7753265 (=> res!3091408 e!4596057)))

(assert (=> b!7753265 (= res!3091408 (not (isEmpty!42030 (tail!15379 (tail!15379 s2!3963)))))))

(declare-fun b!7753266 () Bool)

(declare-fun e!4596060 () Bool)

(assert (=> b!7753266 (= e!4596060 e!4596057)))

(declare-fun res!3091410 () Bool)

(assert (=> b!7753266 (=> res!3091410 e!4596057)))

(declare-fun call!718691 () Bool)

(assert (=> b!7753266 (= res!3091410 call!718691)))

(declare-fun d!2342959 () Bool)

(declare-fun e!4596055 () Bool)

(assert (=> d!2342959 e!4596055))

(declare-fun c!1429991 () Bool)

(assert (=> d!2342959 (= c!1429991 (is-EmptyExpr!20622 (derivativeStep!6043 lt!2669535 (head!15839 s2!3963))))))

(declare-fun lt!2669587 () Bool)

(assert (=> d!2342959 (= lt!2669587 e!4596056)))

(declare-fun c!1429989 () Bool)

(assert (=> d!2342959 (= c!1429989 (isEmpty!42030 (tail!15379 s2!3963)))))

(assert (=> d!2342959 (validRegex!11040 (derivativeStep!6043 lt!2669535 (head!15839 s2!3963)))))

(assert (=> d!2342959 (= (matchR!10112 (derivativeStep!6043 lt!2669535 (head!15839 s2!3963)) (tail!15379 s2!3963)) lt!2669587)))

(declare-fun b!7753267 () Bool)

(declare-fun res!3091411 () Bool)

(declare-fun e!4596058 () Bool)

(assert (=> b!7753267 (=> res!3091411 e!4596058)))

(assert (=> b!7753267 (= res!3091411 (not (is-ElementMatch!20622 (derivativeStep!6043 lt!2669535 (head!15839 s2!3963)))))))

(declare-fun e!4596059 () Bool)

(assert (=> b!7753267 (= e!4596059 e!4596058)))

(declare-fun bm!718686 () Bool)

(assert (=> bm!718686 (= call!718691 (isEmpty!42030 (tail!15379 s2!3963)))))

(declare-fun b!7753268 () Bool)

(declare-fun res!3091409 () Bool)

(declare-fun e!4596054 () Bool)

(assert (=> b!7753268 (=> (not res!3091409) (not e!4596054))))

(assert (=> b!7753268 (= res!3091409 (isEmpty!42030 (tail!15379 (tail!15379 s2!3963))))))

(declare-fun b!7753269 () Bool)

(declare-fun res!3091412 () Bool)

(assert (=> b!7753269 (=> (not res!3091412) (not e!4596054))))

(assert (=> b!7753269 (= res!3091412 (not call!718691))))

(declare-fun b!7753270 () Bool)

(assert (=> b!7753270 (= e!4596059 (not lt!2669587))))

(declare-fun b!7753271 () Bool)

(assert (=> b!7753271 (= e!4596058 e!4596060)))

(declare-fun res!3091414 () Bool)

(assert (=> b!7753271 (=> (not res!3091414) (not e!4596060))))

(assert (=> b!7753271 (= res!3091414 (not lt!2669587))))

(declare-fun b!7753272 () Bool)

(assert (=> b!7753272 (= e!4596055 e!4596059)))

(declare-fun c!1429990 () Bool)

(assert (=> b!7753272 (= c!1429990 (is-EmptyLang!20622 (derivativeStep!6043 lt!2669535 (head!15839 s2!3963))))))

(declare-fun b!7753273 () Bool)

(declare-fun res!3091407 () Bool)

(assert (=> b!7753273 (=> res!3091407 e!4596058)))

(assert (=> b!7753273 (= res!3091407 e!4596054)))

(declare-fun res!3091413 () Bool)

(assert (=> b!7753273 (=> (not res!3091413) (not e!4596054))))

(assert (=> b!7753273 (= res!3091413 lt!2669587)))

(declare-fun b!7753274 () Bool)

(assert (=> b!7753274 (= e!4596054 (= (head!15839 (tail!15379 s2!3963)) (c!1429881 (derivativeStep!6043 lt!2669535 (head!15839 s2!3963)))))))

(declare-fun b!7753275 () Bool)

(assert (=> b!7753275 (= e!4596055 (= lt!2669587 call!718691))))

(assert (= (and d!2342959 c!1429989) b!7753264))

(assert (= (and d!2342959 (not c!1429989)) b!7753262))

(assert (= (and d!2342959 c!1429991) b!7753275))

(assert (= (and d!2342959 (not c!1429991)) b!7753272))

(assert (= (and b!7753272 c!1429990) b!7753270))

(assert (= (and b!7753272 (not c!1429990)) b!7753267))

(assert (= (and b!7753267 (not res!3091411)) b!7753273))

(assert (= (and b!7753273 res!3091413) b!7753269))

(assert (= (and b!7753269 res!3091412) b!7753268))

(assert (= (and b!7753268 res!3091409) b!7753274))

(assert (= (and b!7753273 (not res!3091407)) b!7753271))

(assert (= (and b!7753271 res!3091414) b!7753266))

(assert (= (and b!7753266 (not res!3091410)) b!7753265))

(assert (= (and b!7753265 (not res!3091408)) b!7753263))

(assert (= (or b!7753275 b!7753266 b!7753269) bm!718686))

(assert (=> d!2342959 m!8217572))

(assert (=> d!2342959 m!8217574))

(assert (=> d!2342959 m!8217578))

(declare-fun m!8217714 () Bool)

(assert (=> d!2342959 m!8217714))

(assert (=> bm!718686 m!8217572))

(assert (=> bm!718686 m!8217574))

(assert (=> b!7753268 m!8217572))

(declare-fun m!8217716 () Bool)

(assert (=> b!7753268 m!8217716))

(assert (=> b!7753268 m!8217716))

(declare-fun m!8217718 () Bool)

(assert (=> b!7753268 m!8217718))

(assert (=> b!7753262 m!8217572))

(declare-fun m!8217720 () Bool)

(assert (=> b!7753262 m!8217720))

(assert (=> b!7753262 m!8217578))

(assert (=> b!7753262 m!8217720))

(declare-fun m!8217722 () Bool)

(assert (=> b!7753262 m!8217722))

(assert (=> b!7753262 m!8217572))

(assert (=> b!7753262 m!8217716))

(assert (=> b!7753262 m!8217722))

(assert (=> b!7753262 m!8217716))

(declare-fun m!8217724 () Bool)

(assert (=> b!7753262 m!8217724))

(assert (=> b!7753263 m!8217572))

(assert (=> b!7753263 m!8217720))

(assert (=> b!7753264 m!8217578))

(declare-fun m!8217726 () Bool)

(assert (=> b!7753264 m!8217726))

(assert (=> b!7753265 m!8217572))

(assert (=> b!7753265 m!8217716))

(assert (=> b!7753265 m!8217716))

(assert (=> b!7753265 m!8217718))

(assert (=> b!7753274 m!8217572))

(assert (=> b!7753274 m!8217720))

(assert (=> b!7752961 d!2342959))

(declare-fun b!7753276 () Bool)

(declare-fun e!4596063 () Regex!20622)

(assert (=> b!7753276 (= e!4596063 (ite (= (head!15839 s2!3963) (c!1429881 lt!2669535)) EmptyExpr!20622 EmptyLang!20622))))

(declare-fun b!7753278 () Bool)

(declare-fun c!1429995 () Bool)

(assert (=> b!7753278 (= c!1429995 (is-Union!20622 lt!2669535))))

(declare-fun e!4596065 () Regex!20622)

(assert (=> b!7753278 (= e!4596063 e!4596065)))

(declare-fun b!7753279 () Bool)

(declare-fun e!4596061 () Regex!20622)

(assert (=> b!7753279 (= e!4596065 e!4596061)))

(declare-fun c!1429992 () Bool)

(assert (=> b!7753279 (= c!1429992 (is-Star!20622 lt!2669535))))

(declare-fun bm!718687 () Bool)

(declare-fun call!718695 () Regex!20622)

(declare-fun call!718692 () Regex!20622)

(assert (=> bm!718687 (= call!718695 call!718692)))

(declare-fun b!7753280 () Bool)

(declare-fun c!1429996 () Bool)

(assert (=> b!7753280 (= c!1429996 (nullable!9083 (regOne!41756 lt!2669535)))))

(declare-fun e!4596064 () Regex!20622)

(assert (=> b!7753280 (= e!4596061 e!4596064)))

(declare-fun b!7753281 () Bool)

(declare-fun e!4596062 () Regex!20622)

(assert (=> b!7753281 (= e!4596062 EmptyLang!20622)))

(declare-fun b!7753282 () Bool)

(assert (=> b!7753282 (= e!4596062 e!4596063)))

(declare-fun c!1429994 () Bool)

(assert (=> b!7753282 (= c!1429994 (is-ElementMatch!20622 lt!2669535))))

(declare-fun bm!718688 () Bool)

(assert (=> bm!718688 (= call!718692 (derivativeStep!6043 (ite c!1429995 (regTwo!41757 lt!2669535) (ite c!1429992 (reg!20951 lt!2669535) (regOne!41756 lt!2669535))) (head!15839 s2!3963)))))

(declare-fun b!7753283 () Bool)

(assert (=> b!7753283 (= e!4596061 (Concat!29467 call!718695 lt!2669535))))

(declare-fun b!7753277 () Bool)

(declare-fun call!718693 () Regex!20622)

(assert (=> b!7753277 (= e!4596065 (Union!20622 call!718693 call!718692))))

(declare-fun d!2342961 () Bool)

(declare-fun lt!2669588 () Regex!20622)

(assert (=> d!2342961 (validRegex!11040 lt!2669588)))

(assert (=> d!2342961 (= lt!2669588 e!4596062)))

(declare-fun c!1429993 () Bool)

(assert (=> d!2342961 (= c!1429993 (or (is-EmptyExpr!20622 lt!2669535) (is-EmptyLang!20622 lt!2669535)))))

(assert (=> d!2342961 (validRegex!11040 lt!2669535)))

(assert (=> d!2342961 (= (derivativeStep!6043 lt!2669535 (head!15839 s2!3963)) lt!2669588)))

(declare-fun b!7753284 () Bool)

(declare-fun call!718694 () Regex!20622)

(assert (=> b!7753284 (= e!4596064 (Union!20622 (Concat!29467 call!718694 (regTwo!41756 lt!2669535)) call!718693))))

(declare-fun bm!718689 () Bool)

(assert (=> bm!718689 (= call!718693 (derivativeStep!6043 (ite c!1429995 (regOne!41757 lt!2669535) (regTwo!41756 lt!2669535)) (head!15839 s2!3963)))))

(declare-fun b!7753285 () Bool)

(assert (=> b!7753285 (= e!4596064 (Union!20622 (Concat!29467 call!718694 (regTwo!41756 lt!2669535)) EmptyLang!20622))))

(declare-fun bm!718690 () Bool)

(assert (=> bm!718690 (= call!718694 call!718695)))

(assert (= (and d!2342961 c!1429993) b!7753281))

(assert (= (and d!2342961 (not c!1429993)) b!7753282))

(assert (= (and b!7753282 c!1429994) b!7753276))

(assert (= (and b!7753282 (not c!1429994)) b!7753278))

(assert (= (and b!7753278 c!1429995) b!7753277))

(assert (= (and b!7753278 (not c!1429995)) b!7753279))

(assert (= (and b!7753279 c!1429992) b!7753283))

(assert (= (and b!7753279 (not c!1429992)) b!7753280))

(assert (= (and b!7753280 c!1429996) b!7753284))

(assert (= (and b!7753280 (not c!1429996)) b!7753285))

(assert (= (or b!7753284 b!7753285) bm!718690))

(assert (= (or b!7753283 bm!718690) bm!718687))

(assert (= (or b!7753277 bm!718687) bm!718688))

(assert (= (or b!7753277 b!7753284) bm!718689))

(assert (=> b!7753280 m!8217582))

(assert (=> bm!718688 m!8217576))

(declare-fun m!8217728 () Bool)

(assert (=> bm!718688 m!8217728))

(declare-fun m!8217730 () Bool)

(assert (=> d!2342961 m!8217730))

(assert (=> d!2342961 m!8217420))

(assert (=> bm!718689 m!8217576))

(declare-fun m!8217732 () Bool)

(assert (=> bm!718689 m!8217732))

(assert (=> b!7752961 d!2342961))

(declare-fun d!2342963 () Bool)

(assert (=> d!2342963 (= (head!15839 s2!3963) (h!79791 s2!3963))))

(assert (=> b!7752961 d!2342963))

(declare-fun d!2342965 () Bool)

(assert (=> d!2342965 (= (tail!15379 s2!3963) (t!388202 s2!3963))))

(assert (=> b!7752961 d!2342965))

(declare-fun e!4596068 () Regex!20622)

(declare-fun b!7753286 () Bool)

(assert (=> b!7753286 (= e!4596068 (ite (= (h!79791 s1!4391) (c!1429881 (ite c!1429944 (regOne!41757 r!25892) (regTwo!41756 r!25892)))) EmptyExpr!20622 EmptyLang!20622))))

(declare-fun b!7753288 () Bool)

(declare-fun c!1430000 () Bool)

(assert (=> b!7753288 (= c!1430000 (is-Union!20622 (ite c!1429944 (regOne!41757 r!25892) (regTwo!41756 r!25892))))))

(declare-fun e!4596070 () Regex!20622)

(assert (=> b!7753288 (= e!4596068 e!4596070)))

(declare-fun b!7753289 () Bool)

(declare-fun e!4596066 () Regex!20622)

(assert (=> b!7753289 (= e!4596070 e!4596066)))

(declare-fun c!1429997 () Bool)

(assert (=> b!7753289 (= c!1429997 (is-Star!20622 (ite c!1429944 (regOne!41757 r!25892) (regTwo!41756 r!25892))))))

(declare-fun bm!718691 () Bool)

(declare-fun call!718699 () Regex!20622)

(declare-fun call!718696 () Regex!20622)

(assert (=> bm!718691 (= call!718699 call!718696)))

(declare-fun b!7753290 () Bool)

(declare-fun c!1430001 () Bool)

(assert (=> b!7753290 (= c!1430001 (nullable!9083 (regOne!41756 (ite c!1429944 (regOne!41757 r!25892) (regTwo!41756 r!25892)))))))

(declare-fun e!4596069 () Regex!20622)

(assert (=> b!7753290 (= e!4596066 e!4596069)))

(declare-fun b!7753291 () Bool)

(declare-fun e!4596067 () Regex!20622)

(assert (=> b!7753291 (= e!4596067 EmptyLang!20622)))

(declare-fun b!7753292 () Bool)

(assert (=> b!7753292 (= e!4596067 e!4596068)))

(declare-fun c!1429999 () Bool)

(assert (=> b!7753292 (= c!1429999 (is-ElementMatch!20622 (ite c!1429944 (regOne!41757 r!25892) (regTwo!41756 r!25892))))))

(declare-fun bm!718692 () Bool)

(assert (=> bm!718692 (= call!718696 (derivativeStep!6043 (ite c!1430000 (regTwo!41757 (ite c!1429944 (regOne!41757 r!25892) (regTwo!41756 r!25892))) (ite c!1429997 (reg!20951 (ite c!1429944 (regOne!41757 r!25892) (regTwo!41756 r!25892))) (regOne!41756 (ite c!1429944 (regOne!41757 r!25892) (regTwo!41756 r!25892))))) (h!79791 s1!4391)))))

(declare-fun b!7753293 () Bool)

(assert (=> b!7753293 (= e!4596066 (Concat!29467 call!718699 (ite c!1429944 (regOne!41757 r!25892) (regTwo!41756 r!25892))))))

(declare-fun b!7753287 () Bool)

(declare-fun call!718697 () Regex!20622)

(assert (=> b!7753287 (= e!4596070 (Union!20622 call!718697 call!718696))))

(declare-fun d!2342967 () Bool)

(declare-fun lt!2669589 () Regex!20622)

(assert (=> d!2342967 (validRegex!11040 lt!2669589)))

(assert (=> d!2342967 (= lt!2669589 e!4596067)))

(declare-fun c!1429998 () Bool)

(assert (=> d!2342967 (= c!1429998 (or (is-EmptyExpr!20622 (ite c!1429944 (regOne!41757 r!25892) (regTwo!41756 r!25892))) (is-EmptyLang!20622 (ite c!1429944 (regOne!41757 r!25892) (regTwo!41756 r!25892)))))))

(assert (=> d!2342967 (validRegex!11040 (ite c!1429944 (regOne!41757 r!25892) (regTwo!41756 r!25892)))))

(assert (=> d!2342967 (= (derivativeStep!6043 (ite c!1429944 (regOne!41757 r!25892) (regTwo!41756 r!25892)) (h!79791 s1!4391)) lt!2669589)))

(declare-fun b!7753294 () Bool)

(declare-fun call!718698 () Regex!20622)

(assert (=> b!7753294 (= e!4596069 (Union!20622 (Concat!29467 call!718698 (regTwo!41756 (ite c!1429944 (regOne!41757 r!25892) (regTwo!41756 r!25892)))) call!718697))))

(declare-fun bm!718693 () Bool)

(assert (=> bm!718693 (= call!718697 (derivativeStep!6043 (ite c!1430000 (regOne!41757 (ite c!1429944 (regOne!41757 r!25892) (regTwo!41756 r!25892))) (regTwo!41756 (ite c!1429944 (regOne!41757 r!25892) (regTwo!41756 r!25892)))) (h!79791 s1!4391)))))

(declare-fun b!7753295 () Bool)

(assert (=> b!7753295 (= e!4596069 (Union!20622 (Concat!29467 call!718698 (regTwo!41756 (ite c!1429944 (regOne!41757 r!25892) (regTwo!41756 r!25892)))) EmptyLang!20622))))

(declare-fun bm!718694 () Bool)

(assert (=> bm!718694 (= call!718698 call!718699)))

(assert (= (and d!2342967 c!1429998) b!7753291))

(assert (= (and d!2342967 (not c!1429998)) b!7753292))

(assert (= (and b!7753292 c!1429999) b!7753286))

(assert (= (and b!7753292 (not c!1429999)) b!7753288))

(assert (= (and b!7753288 c!1430000) b!7753287))

(assert (= (and b!7753288 (not c!1430000)) b!7753289))

(assert (= (and b!7753289 c!1429997) b!7753293))

(assert (= (and b!7753289 (not c!1429997)) b!7753290))

(assert (= (and b!7753290 c!1430001) b!7753294))

(assert (= (and b!7753290 (not c!1430001)) b!7753295))

(assert (= (or b!7753294 b!7753295) bm!718694))

(assert (= (or b!7753293 bm!718694) bm!718691))

(assert (= (or b!7753287 bm!718691) bm!718692))

(assert (= (or b!7753287 b!7753294) bm!718693))

(declare-fun m!8217734 () Bool)

(assert (=> b!7753290 m!8217734))

(declare-fun m!8217736 () Bool)

(assert (=> bm!718692 m!8217736))

(declare-fun m!8217738 () Bool)

(assert (=> d!2342967 m!8217738))

(declare-fun m!8217740 () Bool)

(assert (=> d!2342967 m!8217740))

(declare-fun m!8217742 () Bool)

(assert (=> bm!718693 m!8217742))

(assert (=> bm!718649 d!2342967))

(declare-fun d!2342969 () Bool)

(assert (=> d!2342969 (= (isEmpty!42030 (t!388202 s1!4391)) (is-Nil!73343 (t!388202 s1!4391)))))

(assert (=> bm!718628 d!2342969))

(declare-fun d!2342971 () Bool)

(assert (=> d!2342971 (= (isEmpty!42030 (tail!15379 (++!17803 s1!4391 s2!3963))) (is-Nil!73343 (tail!15379 (++!17803 s1!4391 s2!3963))))))

(assert (=> b!7752923 d!2342971))

(declare-fun d!2342973 () Bool)

(assert (=> d!2342973 (= (tail!15379 (++!17803 s1!4391 s2!3963)) (t!388202 (++!17803 s1!4391 s2!3963)))))

(assert (=> b!7752923 d!2342973))

(declare-fun e!4596073 () Bool)

(declare-fun b!7753296 () Bool)

(assert (=> b!7753296 (= e!4596073 (matchR!10112 (derivativeStep!6043 (derivativeStep!6043 lt!2669538 (head!15839 (++!17803 (t!388202 s1!4391) s2!3963))) (head!15839 (tail!15379 (++!17803 (t!388202 s1!4391) s2!3963)))) (tail!15379 (tail!15379 (++!17803 (t!388202 s1!4391) s2!3963)))))))

(declare-fun e!4596074 () Bool)

(declare-fun b!7753297 () Bool)

(assert (=> b!7753297 (= e!4596074 (not (= (head!15839 (tail!15379 (++!17803 (t!388202 s1!4391) s2!3963))) (c!1429881 (derivativeStep!6043 lt!2669538 (head!15839 (++!17803 (t!388202 s1!4391) s2!3963)))))))))

(declare-fun b!7753298 () Bool)

(assert (=> b!7753298 (= e!4596073 (nullable!9083 (derivativeStep!6043 lt!2669538 (head!15839 (++!17803 (t!388202 s1!4391) s2!3963)))))))

(declare-fun b!7753299 () Bool)

(declare-fun res!3091416 () Bool)

(assert (=> b!7753299 (=> res!3091416 e!4596074)))

(assert (=> b!7753299 (= res!3091416 (not (isEmpty!42030 (tail!15379 (tail!15379 (++!17803 (t!388202 s1!4391) s2!3963))))))))

(declare-fun b!7753300 () Bool)

(declare-fun e!4596077 () Bool)

(assert (=> b!7753300 (= e!4596077 e!4596074)))

(declare-fun res!3091418 () Bool)

(assert (=> b!7753300 (=> res!3091418 e!4596074)))

(declare-fun call!718700 () Bool)

(assert (=> b!7753300 (= res!3091418 call!718700)))

(declare-fun d!2342975 () Bool)

(declare-fun e!4596072 () Bool)

(assert (=> d!2342975 e!4596072))

(declare-fun c!1430004 () Bool)

(assert (=> d!2342975 (= c!1430004 (is-EmptyExpr!20622 (derivativeStep!6043 lt!2669538 (head!15839 (++!17803 (t!388202 s1!4391) s2!3963)))))))

(declare-fun lt!2669590 () Bool)

(assert (=> d!2342975 (= lt!2669590 e!4596073)))

(declare-fun c!1430002 () Bool)

(assert (=> d!2342975 (= c!1430002 (isEmpty!42030 (tail!15379 (++!17803 (t!388202 s1!4391) s2!3963))))))

(assert (=> d!2342975 (validRegex!11040 (derivativeStep!6043 lt!2669538 (head!15839 (++!17803 (t!388202 s1!4391) s2!3963))))))

(assert (=> d!2342975 (= (matchR!10112 (derivativeStep!6043 lt!2669538 (head!15839 (++!17803 (t!388202 s1!4391) s2!3963))) (tail!15379 (++!17803 (t!388202 s1!4391) s2!3963))) lt!2669590)))

(declare-fun b!7753301 () Bool)

(declare-fun res!3091419 () Bool)

(declare-fun e!4596075 () Bool)

(assert (=> b!7753301 (=> res!3091419 e!4596075)))

(assert (=> b!7753301 (= res!3091419 (not (is-ElementMatch!20622 (derivativeStep!6043 lt!2669538 (head!15839 (++!17803 (t!388202 s1!4391) s2!3963))))))))

(declare-fun e!4596076 () Bool)

(assert (=> b!7753301 (= e!4596076 e!4596075)))

(declare-fun bm!718695 () Bool)

(assert (=> bm!718695 (= call!718700 (isEmpty!42030 (tail!15379 (++!17803 (t!388202 s1!4391) s2!3963))))))

(declare-fun b!7753302 () Bool)

(declare-fun res!3091417 () Bool)

(declare-fun e!4596071 () Bool)

(assert (=> b!7753302 (=> (not res!3091417) (not e!4596071))))

(assert (=> b!7753302 (= res!3091417 (isEmpty!42030 (tail!15379 (tail!15379 (++!17803 (t!388202 s1!4391) s2!3963)))))))

(declare-fun b!7753303 () Bool)

(declare-fun res!3091420 () Bool)

(assert (=> b!7753303 (=> (not res!3091420) (not e!4596071))))

(assert (=> b!7753303 (= res!3091420 (not call!718700))))

(declare-fun b!7753304 () Bool)

(assert (=> b!7753304 (= e!4596076 (not lt!2669590))))

(declare-fun b!7753305 () Bool)

(assert (=> b!7753305 (= e!4596075 e!4596077)))

(declare-fun res!3091422 () Bool)

(assert (=> b!7753305 (=> (not res!3091422) (not e!4596077))))

(assert (=> b!7753305 (= res!3091422 (not lt!2669590))))

(declare-fun b!7753306 () Bool)

(assert (=> b!7753306 (= e!4596072 e!4596076)))

(declare-fun c!1430003 () Bool)

(assert (=> b!7753306 (= c!1430003 (is-EmptyLang!20622 (derivativeStep!6043 lt!2669538 (head!15839 (++!17803 (t!388202 s1!4391) s2!3963)))))))

(declare-fun b!7753307 () Bool)

(declare-fun res!3091415 () Bool)

(assert (=> b!7753307 (=> res!3091415 e!4596075)))

(assert (=> b!7753307 (= res!3091415 e!4596071)))

(declare-fun res!3091421 () Bool)

(assert (=> b!7753307 (=> (not res!3091421) (not e!4596071))))

(assert (=> b!7753307 (= res!3091421 lt!2669590)))

(declare-fun b!7753308 () Bool)

(assert (=> b!7753308 (= e!4596071 (= (head!15839 (tail!15379 (++!17803 (t!388202 s1!4391) s2!3963))) (c!1429881 (derivativeStep!6043 lt!2669538 (head!15839 (++!17803 (t!388202 s1!4391) s2!3963))))))))

(declare-fun b!7753309 () Bool)

(assert (=> b!7753309 (= e!4596072 (= lt!2669590 call!718700))))

(assert (= (and d!2342975 c!1430002) b!7753298))

(assert (= (and d!2342975 (not c!1430002)) b!7753296))

(assert (= (and d!2342975 c!1430004) b!7753309))

(assert (= (and d!2342975 (not c!1430004)) b!7753306))

(assert (= (and b!7753306 c!1430003) b!7753304))

(assert (= (and b!7753306 (not c!1430003)) b!7753301))

(assert (= (and b!7753301 (not res!3091419)) b!7753307))

(assert (= (and b!7753307 res!3091421) b!7753303))

(assert (= (and b!7753303 res!3091420) b!7753302))

(assert (= (and b!7753302 res!3091417) b!7753308))

(assert (= (and b!7753307 (not res!3091415)) b!7753305))

(assert (= (and b!7753305 res!3091422) b!7753300))

(assert (= (and b!7753300 (not res!3091418)) b!7753299))

(assert (= (and b!7753299 (not res!3091416)) b!7753297))

(assert (= (or b!7753309 b!7753300 b!7753303) bm!718695))

(assert (=> d!2342975 m!8217548))

(assert (=> d!2342975 m!8217550))

(assert (=> d!2342975 m!8217554))

(declare-fun m!8217744 () Bool)

(assert (=> d!2342975 m!8217744))

(assert (=> bm!718695 m!8217548))

(assert (=> bm!718695 m!8217550))

(assert (=> b!7753302 m!8217548))

(declare-fun m!8217746 () Bool)

(assert (=> b!7753302 m!8217746))

(assert (=> b!7753302 m!8217746))

(declare-fun m!8217748 () Bool)

(assert (=> b!7753302 m!8217748))

(assert (=> b!7753296 m!8217548))

(declare-fun m!8217750 () Bool)

(assert (=> b!7753296 m!8217750))

(assert (=> b!7753296 m!8217554))

(assert (=> b!7753296 m!8217750))

(declare-fun m!8217752 () Bool)

(assert (=> b!7753296 m!8217752))

(assert (=> b!7753296 m!8217548))

(assert (=> b!7753296 m!8217746))

(assert (=> b!7753296 m!8217752))

(assert (=> b!7753296 m!8217746))

(declare-fun m!8217754 () Bool)

(assert (=> b!7753296 m!8217754))

(assert (=> b!7753297 m!8217548))

(assert (=> b!7753297 m!8217750))

(assert (=> b!7753298 m!8217554))

(declare-fun m!8217756 () Bool)

(assert (=> b!7753298 m!8217756))

(assert (=> b!7753299 m!8217548))

(assert (=> b!7753299 m!8217746))

(assert (=> b!7753299 m!8217746))

(assert (=> b!7753299 m!8217748))

(assert (=> b!7753308 m!8217548))

(assert (=> b!7753308 m!8217750))

(assert (=> b!7752931 d!2342975))

(declare-fun b!7753310 () Bool)

(declare-fun e!4596080 () Regex!20622)

(assert (=> b!7753310 (= e!4596080 (ite (= (head!15839 (++!17803 (t!388202 s1!4391) s2!3963)) (c!1429881 lt!2669538)) EmptyExpr!20622 EmptyLang!20622))))

(declare-fun b!7753312 () Bool)

(declare-fun c!1430008 () Bool)

(assert (=> b!7753312 (= c!1430008 (is-Union!20622 lt!2669538))))

(declare-fun e!4596082 () Regex!20622)

(assert (=> b!7753312 (= e!4596080 e!4596082)))

(declare-fun b!7753313 () Bool)

(declare-fun e!4596078 () Regex!20622)

(assert (=> b!7753313 (= e!4596082 e!4596078)))

(declare-fun c!1430005 () Bool)

(assert (=> b!7753313 (= c!1430005 (is-Star!20622 lt!2669538))))

(declare-fun bm!718696 () Bool)

(declare-fun call!718704 () Regex!20622)

(declare-fun call!718701 () Regex!20622)

(assert (=> bm!718696 (= call!718704 call!718701)))

(declare-fun b!7753314 () Bool)

(declare-fun c!1430009 () Bool)

(assert (=> b!7753314 (= c!1430009 (nullable!9083 (regOne!41756 lt!2669538)))))

(declare-fun e!4596081 () Regex!20622)

(assert (=> b!7753314 (= e!4596078 e!4596081)))

(declare-fun b!7753315 () Bool)

(declare-fun e!4596079 () Regex!20622)

(assert (=> b!7753315 (= e!4596079 EmptyLang!20622)))

(declare-fun b!7753316 () Bool)

(assert (=> b!7753316 (= e!4596079 e!4596080)))

(declare-fun c!1430007 () Bool)

(assert (=> b!7753316 (= c!1430007 (is-ElementMatch!20622 lt!2669538))))

(declare-fun bm!718697 () Bool)

(assert (=> bm!718697 (= call!718701 (derivativeStep!6043 (ite c!1430008 (regTwo!41757 lt!2669538) (ite c!1430005 (reg!20951 lt!2669538) (regOne!41756 lt!2669538))) (head!15839 (++!17803 (t!388202 s1!4391) s2!3963))))))

(declare-fun b!7753317 () Bool)

(assert (=> b!7753317 (= e!4596078 (Concat!29467 call!718704 lt!2669538))))

(declare-fun b!7753311 () Bool)

(declare-fun call!718702 () Regex!20622)

(assert (=> b!7753311 (= e!4596082 (Union!20622 call!718702 call!718701))))

(declare-fun d!2342977 () Bool)

(declare-fun lt!2669591 () Regex!20622)

(assert (=> d!2342977 (validRegex!11040 lt!2669591)))

(assert (=> d!2342977 (= lt!2669591 e!4596079)))

(declare-fun c!1430006 () Bool)

(assert (=> d!2342977 (= c!1430006 (or (is-EmptyExpr!20622 lt!2669538) (is-EmptyLang!20622 lt!2669538)))))

(assert (=> d!2342977 (validRegex!11040 lt!2669538)))

(assert (=> d!2342977 (= (derivativeStep!6043 lt!2669538 (head!15839 (++!17803 (t!388202 s1!4391) s2!3963))) lt!2669591)))

(declare-fun call!718703 () Regex!20622)

(declare-fun b!7753318 () Bool)

(assert (=> b!7753318 (= e!4596081 (Union!20622 (Concat!29467 call!718703 (regTwo!41756 lt!2669538)) call!718702))))

(declare-fun bm!718698 () Bool)

(assert (=> bm!718698 (= call!718702 (derivativeStep!6043 (ite c!1430008 (regOne!41757 lt!2669538) (regTwo!41756 lt!2669538)) (head!15839 (++!17803 (t!388202 s1!4391) s2!3963))))))

(declare-fun b!7753319 () Bool)

(assert (=> b!7753319 (= e!4596081 (Union!20622 (Concat!29467 call!718703 (regTwo!41756 lt!2669538)) EmptyLang!20622))))

(declare-fun bm!718699 () Bool)

(assert (=> bm!718699 (= call!718703 call!718704)))

(assert (= (and d!2342977 c!1430006) b!7753315))

(assert (= (and d!2342977 (not c!1430006)) b!7753316))

(assert (= (and b!7753316 c!1430007) b!7753310))

(assert (= (and b!7753316 (not c!1430007)) b!7753312))

(assert (= (and b!7753312 c!1430008) b!7753311))

(assert (= (and b!7753312 (not c!1430008)) b!7753313))

(assert (= (and b!7753313 c!1430005) b!7753317))

(assert (= (and b!7753313 (not c!1430005)) b!7753314))

(assert (= (and b!7753314 c!1430009) b!7753318))

(assert (= (and b!7753314 (not c!1430009)) b!7753319))

(assert (= (or b!7753318 b!7753319) bm!718699))

(assert (= (or b!7753317 bm!718699) bm!718696))

(assert (= (or b!7753311 bm!718696) bm!718697))

(assert (= (or b!7753311 b!7753318) bm!718698))

(declare-fun m!8217758 () Bool)

(assert (=> b!7753314 m!8217758))

(assert (=> bm!718697 m!8217552))

(declare-fun m!8217760 () Bool)

(assert (=> bm!718697 m!8217760))

(declare-fun m!8217762 () Bool)

(assert (=> d!2342977 m!8217762))

(assert (=> d!2342977 m!8217546))

(assert (=> bm!718698 m!8217552))

(declare-fun m!8217764 () Bool)

(assert (=> bm!718698 m!8217764))

(assert (=> b!7752931 d!2342977))

(declare-fun d!2342979 () Bool)

(assert (=> d!2342979 (= (head!15839 (++!17803 (t!388202 s1!4391) s2!3963)) (h!79791 (++!17803 (t!388202 s1!4391) s2!3963)))))

(assert (=> b!7752931 d!2342979))

(declare-fun d!2342981 () Bool)

(assert (=> d!2342981 (= (tail!15379 (++!17803 (t!388202 s1!4391) s2!3963)) (t!388202 (++!17803 (t!388202 s1!4391) s2!3963)))))

(assert (=> b!7752931 d!2342981))

(declare-fun d!2342983 () Bool)

(declare-fun nullableFct!3582 (Regex!20622) Bool)

(assert (=> d!2342983 (= (nullable!9083 lt!2669535) (nullableFct!3582 lt!2669535))))

(declare-fun bs!1965837 () Bool)

(assert (= bs!1965837 d!2342983))

(declare-fun m!8217766 () Bool)

(assert (=> bs!1965837 m!8217766))

(assert (=> b!7752963 d!2342983))

(declare-fun d!2342985 () Bool)

(assert (=> d!2342985 (= (isEmpty!42030 (++!17803 (t!388202 s1!4391) s2!3963)) (is-Nil!73343 (++!17803 (t!388202 s1!4391) s2!3963)))))

(assert (=> d!2342929 d!2342985))

(declare-fun b!7753320 () Bool)

(declare-fun e!4596087 () Bool)

(declare-fun e!4596084 () Bool)

(assert (=> b!7753320 (= e!4596087 e!4596084)))

(declare-fun c!1430010 () Bool)

(assert (=> b!7753320 (= c!1430010 (is-Star!20622 lt!2669538))))

(declare-fun b!7753321 () Bool)

(declare-fun res!3091425 () Bool)

(declare-fun e!4596086 () Bool)

(assert (=> b!7753321 (=> res!3091425 e!4596086)))

(assert (=> b!7753321 (= res!3091425 (not (is-Concat!29467 lt!2669538)))))

(declare-fun e!4596089 () Bool)

(assert (=> b!7753321 (= e!4596089 e!4596086)))

(declare-fun bm!718700 () Bool)

(declare-fun call!718706 () Bool)

(declare-fun c!1430011 () Bool)

(assert (=> bm!718700 (= call!718706 (validRegex!11040 (ite c!1430010 (reg!20951 lt!2669538) (ite c!1430011 (regOne!41757 lt!2669538) (regOne!41756 lt!2669538)))))))

(declare-fun bm!718701 () Bool)

(declare-fun call!718707 () Bool)

(assert (=> bm!718701 (= call!718707 (validRegex!11040 (ite c!1430011 (regTwo!41757 lt!2669538) (regTwo!41756 lt!2669538))))))

(declare-fun d!2342987 () Bool)

(declare-fun res!3091427 () Bool)

(assert (=> d!2342987 (=> res!3091427 e!4596087)))

(assert (=> d!2342987 (= res!3091427 (is-ElementMatch!20622 lt!2669538))))

(assert (=> d!2342987 (= (validRegex!11040 lt!2669538) e!4596087)))

(declare-fun b!7753322 () Bool)

(declare-fun e!4596085 () Bool)

(assert (=> b!7753322 (= e!4596085 call!718706)))

(declare-fun b!7753323 () Bool)

(declare-fun e!4596088 () Bool)

(assert (=> b!7753323 (= e!4596088 call!718707)))

(declare-fun b!7753324 () Bool)

(assert (=> b!7753324 (= e!4596084 e!4596085)))

(declare-fun res!3091423 () Bool)

(assert (=> b!7753324 (= res!3091423 (not (nullable!9083 (reg!20951 lt!2669538))))))

(assert (=> b!7753324 (=> (not res!3091423) (not e!4596085))))

(declare-fun b!7753325 () Bool)

(declare-fun res!3091426 () Bool)

(declare-fun e!4596083 () Bool)

(assert (=> b!7753325 (=> (not res!3091426) (not e!4596083))))

(declare-fun call!718705 () Bool)

(assert (=> b!7753325 (= res!3091426 call!718705)))

(assert (=> b!7753325 (= e!4596089 e!4596083)))

(declare-fun b!7753326 () Bool)

(assert (=> b!7753326 (= e!4596084 e!4596089)))

(assert (=> b!7753326 (= c!1430011 (is-Union!20622 lt!2669538))))

(declare-fun b!7753327 () Bool)

(assert (=> b!7753327 (= e!4596086 e!4596088)))

(declare-fun res!3091424 () Bool)

(assert (=> b!7753327 (=> (not res!3091424) (not e!4596088))))

(assert (=> b!7753327 (= res!3091424 call!718705)))

(declare-fun bm!718702 () Bool)

(assert (=> bm!718702 (= call!718705 call!718706)))

(declare-fun b!7753328 () Bool)

(assert (=> b!7753328 (= e!4596083 call!718707)))

(assert (= (and d!2342987 (not res!3091427)) b!7753320))

(assert (= (and b!7753320 c!1430010) b!7753324))

(assert (= (and b!7753320 (not c!1430010)) b!7753326))

(assert (= (and b!7753324 res!3091423) b!7753322))

(assert (= (and b!7753326 c!1430011) b!7753325))

(assert (= (and b!7753326 (not c!1430011)) b!7753321))

(assert (= (and b!7753325 res!3091426) b!7753328))

(assert (= (and b!7753321 (not res!3091425)) b!7753327))

(assert (= (and b!7753327 res!3091424) b!7753323))

(assert (= (or b!7753325 b!7753327) bm!718702))

(assert (= (or b!7753328 b!7753323) bm!718701))

(assert (= (or b!7753322 bm!718702) bm!718700))

(declare-fun m!8217768 () Bool)

(assert (=> bm!718700 m!8217768))

(declare-fun m!8217770 () Bool)

(assert (=> bm!718701 m!8217770))

(declare-fun m!8217772 () Bool)

(assert (=> b!7753324 m!8217772))

(assert (=> d!2342929 d!2342987))

(declare-fun d!2342989 () Bool)

(assert (=> d!2342989 (= (isEmpty!42030 s1!4391) (is-Nil!73343 s1!4391))))

(assert (=> bm!718618 d!2342989))

(declare-fun d!2342991 () Bool)

(assert (=> d!2342991 (= (isEmpty!42030 s2!3963) (is-Nil!73343 s2!3963))))

(assert (=> d!2342933 d!2342991))

(assert (=> d!2342933 d!2342917))

(assert (=> b!7752914 d!2342931))

(declare-fun b!7753329 () Bool)

(declare-fun e!4596094 () Bool)

(declare-fun e!4596091 () Bool)

(assert (=> b!7753329 (= e!4596094 e!4596091)))

(declare-fun c!1430012 () Bool)

(assert (=> b!7753329 (= c!1430012 (is-Star!20622 lt!2669577))))

(declare-fun b!7753330 () Bool)

(declare-fun res!3091430 () Bool)

(declare-fun e!4596093 () Bool)

(assert (=> b!7753330 (=> res!3091430 e!4596093)))

(assert (=> b!7753330 (= res!3091430 (not (is-Concat!29467 lt!2669577)))))

(declare-fun e!4596096 () Bool)

(assert (=> b!7753330 (= e!4596096 e!4596093)))

(declare-fun c!1430013 () Bool)

(declare-fun bm!718703 () Bool)

(declare-fun call!718709 () Bool)

(assert (=> bm!718703 (= call!718709 (validRegex!11040 (ite c!1430012 (reg!20951 lt!2669577) (ite c!1430013 (regOne!41757 lt!2669577) (regOne!41756 lt!2669577)))))))

(declare-fun bm!718704 () Bool)

(declare-fun call!718710 () Bool)

(assert (=> bm!718704 (= call!718710 (validRegex!11040 (ite c!1430013 (regTwo!41757 lt!2669577) (regTwo!41756 lt!2669577))))))

(declare-fun d!2342993 () Bool)

(declare-fun res!3091432 () Bool)

(assert (=> d!2342993 (=> res!3091432 e!4596094)))

(assert (=> d!2342993 (= res!3091432 (is-ElementMatch!20622 lt!2669577))))

(assert (=> d!2342993 (= (validRegex!11040 lt!2669577) e!4596094)))

(declare-fun b!7753331 () Bool)

(declare-fun e!4596092 () Bool)

(assert (=> b!7753331 (= e!4596092 call!718709)))

(declare-fun b!7753332 () Bool)

(declare-fun e!4596095 () Bool)

(assert (=> b!7753332 (= e!4596095 call!718710)))

(declare-fun b!7753333 () Bool)

(assert (=> b!7753333 (= e!4596091 e!4596092)))

(declare-fun res!3091428 () Bool)

(assert (=> b!7753333 (= res!3091428 (not (nullable!9083 (reg!20951 lt!2669577))))))

(assert (=> b!7753333 (=> (not res!3091428) (not e!4596092))))

(declare-fun b!7753334 () Bool)

(declare-fun res!3091431 () Bool)

(declare-fun e!4596090 () Bool)

(assert (=> b!7753334 (=> (not res!3091431) (not e!4596090))))

(declare-fun call!718708 () Bool)

(assert (=> b!7753334 (= res!3091431 call!718708)))

(assert (=> b!7753334 (= e!4596096 e!4596090)))

(declare-fun b!7753335 () Bool)

(assert (=> b!7753335 (= e!4596091 e!4596096)))

(assert (=> b!7753335 (= c!1430013 (is-Union!20622 lt!2669577))))

(declare-fun b!7753336 () Bool)

(assert (=> b!7753336 (= e!4596093 e!4596095)))

(declare-fun res!3091429 () Bool)

(assert (=> b!7753336 (=> (not res!3091429) (not e!4596095))))

(assert (=> b!7753336 (= res!3091429 call!718708)))

(declare-fun bm!718705 () Bool)

(assert (=> bm!718705 (= call!718708 call!718709)))

(declare-fun b!7753337 () Bool)

(assert (=> b!7753337 (= e!4596090 call!718710)))

(assert (= (and d!2342993 (not res!3091432)) b!7753329))

(assert (= (and b!7753329 c!1430012) b!7753333))

(assert (= (and b!7753329 (not c!1430012)) b!7753335))

(assert (= (and b!7753333 res!3091428) b!7753331))

(assert (= (and b!7753335 c!1430013) b!7753334))

(assert (= (and b!7753335 (not c!1430013)) b!7753330))

(assert (= (and b!7753334 res!3091431) b!7753337))

(assert (= (and b!7753330 (not res!3091430)) b!7753336))

(assert (= (and b!7753336 res!3091429) b!7753332))

(assert (= (or b!7753334 b!7753336) bm!718705))

(assert (= (or b!7753337 b!7753332) bm!718704))

(assert (= (or b!7753331 bm!718705) bm!718703))

(declare-fun m!8217774 () Bool)

(assert (=> bm!718703 m!8217774))

(declare-fun m!8217776 () Bool)

(assert (=> bm!718704 m!8217776))

(declare-fun m!8217778 () Bool)

(assert (=> b!7753333 m!8217778))

(assert (=> d!2342937 d!2342993))

(declare-fun b!7753338 () Bool)

(declare-fun e!4596101 () Bool)

(declare-fun e!4596098 () Bool)

(assert (=> b!7753338 (= e!4596101 e!4596098)))

(declare-fun c!1430014 () Bool)

(assert (=> b!7753338 (= c!1430014 (is-Star!20622 r!25892))))

(declare-fun b!7753339 () Bool)

(declare-fun res!3091435 () Bool)

(declare-fun e!4596100 () Bool)

(assert (=> b!7753339 (=> res!3091435 e!4596100)))

(assert (=> b!7753339 (= res!3091435 (not (is-Concat!29467 r!25892)))))

(declare-fun e!4596103 () Bool)

(assert (=> b!7753339 (= e!4596103 e!4596100)))

(declare-fun bm!718706 () Bool)

(declare-fun call!718712 () Bool)

(declare-fun c!1430015 () Bool)

(assert (=> bm!718706 (= call!718712 (validRegex!11040 (ite c!1430014 (reg!20951 r!25892) (ite c!1430015 (regOne!41757 r!25892) (regOne!41756 r!25892)))))))

(declare-fun bm!718707 () Bool)

(declare-fun call!718713 () Bool)

(assert (=> bm!718707 (= call!718713 (validRegex!11040 (ite c!1430015 (regTwo!41757 r!25892) (regTwo!41756 r!25892))))))

(declare-fun d!2342995 () Bool)

(declare-fun res!3091437 () Bool)

(assert (=> d!2342995 (=> res!3091437 e!4596101)))

(assert (=> d!2342995 (= res!3091437 (is-ElementMatch!20622 r!25892))))

(assert (=> d!2342995 (= (validRegex!11040 r!25892) e!4596101)))

(declare-fun b!7753340 () Bool)

(declare-fun e!4596099 () Bool)

(assert (=> b!7753340 (= e!4596099 call!718712)))

(declare-fun b!7753341 () Bool)

(declare-fun e!4596102 () Bool)

(assert (=> b!7753341 (= e!4596102 call!718713)))

(declare-fun b!7753342 () Bool)

(assert (=> b!7753342 (= e!4596098 e!4596099)))

(declare-fun res!3091433 () Bool)

(assert (=> b!7753342 (= res!3091433 (not (nullable!9083 (reg!20951 r!25892))))))

(assert (=> b!7753342 (=> (not res!3091433) (not e!4596099))))

(declare-fun b!7753343 () Bool)

(declare-fun res!3091436 () Bool)

(declare-fun e!4596097 () Bool)

(assert (=> b!7753343 (=> (not res!3091436) (not e!4596097))))

(declare-fun call!718711 () Bool)

(assert (=> b!7753343 (= res!3091436 call!718711)))

(assert (=> b!7753343 (= e!4596103 e!4596097)))

(declare-fun b!7753344 () Bool)

(assert (=> b!7753344 (= e!4596098 e!4596103)))

(assert (=> b!7753344 (= c!1430015 (is-Union!20622 r!25892))))

(declare-fun b!7753345 () Bool)

(assert (=> b!7753345 (= e!4596100 e!4596102)))

(declare-fun res!3091434 () Bool)

(assert (=> b!7753345 (=> (not res!3091434) (not e!4596102))))

(assert (=> b!7753345 (= res!3091434 call!718711)))

(declare-fun bm!718708 () Bool)

(assert (=> bm!718708 (= call!718711 call!718712)))

(declare-fun b!7753346 () Bool)

(assert (=> b!7753346 (= e!4596097 call!718713)))

(assert (= (and d!2342995 (not res!3091437)) b!7753338))

(assert (= (and b!7753338 c!1430014) b!7753342))

(assert (= (and b!7753338 (not c!1430014)) b!7753344))

(assert (= (and b!7753342 res!3091433) b!7753340))

(assert (= (and b!7753344 c!1430015) b!7753343))

(assert (= (and b!7753344 (not c!1430015)) b!7753339))

(assert (= (and b!7753343 res!3091436) b!7753346))

(assert (= (and b!7753339 (not res!3091435)) b!7753345))

(assert (= (and b!7753345 res!3091434) b!7753341))

(assert (= (or b!7753343 b!7753345) bm!718708))

(assert (= (or b!7753346 b!7753341) bm!718707))

(assert (= (or b!7753340 bm!718708) bm!718706))

(declare-fun m!8217780 () Bool)

(assert (=> bm!718706 m!8217780))

(declare-fun m!8217782 () Bool)

(assert (=> bm!718707 m!8217782))

(declare-fun m!8217784 () Bool)

(assert (=> b!7753342 m!8217784))

(assert (=> d!2342937 d!2342995))

(assert (=> b!7752920 d!2342971))

(assert (=> b!7752920 d!2342973))

(declare-fun b!7753347 () Bool)

(declare-fun e!4596106 () Bool)

(assert (=> b!7753347 (= e!4596106 (matchR!10112 (derivativeStep!6043 (derivativeStep!6043 lt!2669536 (head!15839 (t!388202 s1!4391))) (head!15839 (tail!15379 (t!388202 s1!4391)))) (tail!15379 (tail!15379 (t!388202 s1!4391)))))))

(declare-fun b!7753348 () Bool)

(declare-fun e!4596107 () Bool)

(assert (=> b!7753348 (= e!4596107 (not (= (head!15839 (tail!15379 (t!388202 s1!4391))) (c!1429881 (derivativeStep!6043 lt!2669536 (head!15839 (t!388202 s1!4391)))))))))

(declare-fun b!7753349 () Bool)

(assert (=> b!7753349 (= e!4596106 (nullable!9083 (derivativeStep!6043 lt!2669536 (head!15839 (t!388202 s1!4391)))))))

(declare-fun b!7753350 () Bool)

(declare-fun res!3091439 () Bool)

(assert (=> b!7753350 (=> res!3091439 e!4596107)))

(assert (=> b!7753350 (= res!3091439 (not (isEmpty!42030 (tail!15379 (tail!15379 (t!388202 s1!4391))))))))

(declare-fun b!7753351 () Bool)

(declare-fun e!4596110 () Bool)

(assert (=> b!7753351 (= e!4596110 e!4596107)))

(declare-fun res!3091441 () Bool)

(assert (=> b!7753351 (=> res!3091441 e!4596107)))

(declare-fun call!718714 () Bool)

(assert (=> b!7753351 (= res!3091441 call!718714)))

(declare-fun d!2342997 () Bool)

(declare-fun e!4596105 () Bool)

(assert (=> d!2342997 e!4596105))

(declare-fun c!1430018 () Bool)

(assert (=> d!2342997 (= c!1430018 (is-EmptyExpr!20622 (derivativeStep!6043 lt!2669536 (head!15839 (t!388202 s1!4391)))))))

(declare-fun lt!2669592 () Bool)

(assert (=> d!2342997 (= lt!2669592 e!4596106)))

(declare-fun c!1430016 () Bool)

(assert (=> d!2342997 (= c!1430016 (isEmpty!42030 (tail!15379 (t!388202 s1!4391))))))

(assert (=> d!2342997 (validRegex!11040 (derivativeStep!6043 lt!2669536 (head!15839 (t!388202 s1!4391))))))

(assert (=> d!2342997 (= (matchR!10112 (derivativeStep!6043 lt!2669536 (head!15839 (t!388202 s1!4391))) (tail!15379 (t!388202 s1!4391))) lt!2669592)))

(declare-fun b!7753352 () Bool)

(declare-fun res!3091442 () Bool)

(declare-fun e!4596108 () Bool)

(assert (=> b!7753352 (=> res!3091442 e!4596108)))

(assert (=> b!7753352 (= res!3091442 (not (is-ElementMatch!20622 (derivativeStep!6043 lt!2669536 (head!15839 (t!388202 s1!4391))))))))

(declare-fun e!4596109 () Bool)

(assert (=> b!7753352 (= e!4596109 e!4596108)))

(declare-fun bm!718709 () Bool)

(assert (=> bm!718709 (= call!718714 (isEmpty!42030 (tail!15379 (t!388202 s1!4391))))))

(declare-fun b!7753353 () Bool)

(declare-fun res!3091440 () Bool)

(declare-fun e!4596104 () Bool)

(assert (=> b!7753353 (=> (not res!3091440) (not e!4596104))))

(assert (=> b!7753353 (= res!3091440 (isEmpty!42030 (tail!15379 (tail!15379 (t!388202 s1!4391)))))))

(declare-fun b!7753354 () Bool)

(declare-fun res!3091443 () Bool)

(assert (=> b!7753354 (=> (not res!3091443) (not e!4596104))))

(assert (=> b!7753354 (= res!3091443 (not call!718714))))

(declare-fun b!7753355 () Bool)

(assert (=> b!7753355 (= e!4596109 (not lt!2669592))))

(declare-fun b!7753356 () Bool)

(assert (=> b!7753356 (= e!4596108 e!4596110)))

(declare-fun res!3091445 () Bool)

(assert (=> b!7753356 (=> (not res!3091445) (not e!4596110))))

(assert (=> b!7753356 (= res!3091445 (not lt!2669592))))

(declare-fun b!7753357 () Bool)

(assert (=> b!7753357 (= e!4596105 e!4596109)))

(declare-fun c!1430017 () Bool)

(assert (=> b!7753357 (= c!1430017 (is-EmptyLang!20622 (derivativeStep!6043 lt!2669536 (head!15839 (t!388202 s1!4391)))))))

(declare-fun b!7753358 () Bool)

(declare-fun res!3091438 () Bool)

(assert (=> b!7753358 (=> res!3091438 e!4596108)))

(assert (=> b!7753358 (= res!3091438 e!4596104)))

(declare-fun res!3091444 () Bool)

(assert (=> b!7753358 (=> (not res!3091444) (not e!4596104))))

(assert (=> b!7753358 (= res!3091444 lt!2669592)))

(declare-fun b!7753359 () Bool)

(assert (=> b!7753359 (= e!4596104 (= (head!15839 (tail!15379 (t!388202 s1!4391))) (c!1429881 (derivativeStep!6043 lt!2669536 (head!15839 (t!388202 s1!4391))))))))

(declare-fun b!7753360 () Bool)

(assert (=> b!7753360 (= e!4596105 (= lt!2669592 call!718714))))

(assert (= (and d!2342997 c!1430016) b!7753349))

(assert (= (and d!2342997 (not c!1430016)) b!7753347))

(assert (= (and d!2342997 c!1430018) b!7753360))

(assert (= (and d!2342997 (not c!1430018)) b!7753357))

(assert (= (and b!7753357 c!1430017) b!7753355))

(assert (= (and b!7753357 (not c!1430017)) b!7753352))

(assert (= (and b!7753352 (not res!3091442)) b!7753358))

(assert (= (and b!7753358 res!3091444) b!7753354))

(assert (= (and b!7753354 res!3091443) b!7753353))

(assert (= (and b!7753353 res!3091440) b!7753359))

(assert (= (and b!7753358 (not res!3091438)) b!7753356))

(assert (= (and b!7753356 res!3091445) b!7753351))

(assert (= (and b!7753351 (not res!3091441)) b!7753350))

(assert (= (and b!7753350 (not res!3091439)) b!7753348))

(assert (= (or b!7753360 b!7753351 b!7753354) bm!718709))

(assert (=> d!2342997 m!8217502))

(assert (=> d!2342997 m!8217504))

(assert (=> d!2342997 m!8217508))

(declare-fun m!8217786 () Bool)

(assert (=> d!2342997 m!8217786))

(assert (=> bm!718709 m!8217502))

(assert (=> bm!718709 m!8217504))

(assert (=> b!7753353 m!8217502))

(declare-fun m!8217788 () Bool)

(assert (=> b!7753353 m!8217788))

(assert (=> b!7753353 m!8217788))

(declare-fun m!8217790 () Bool)

(assert (=> b!7753353 m!8217790))

(assert (=> b!7753347 m!8217502))

(declare-fun m!8217792 () Bool)

(assert (=> b!7753347 m!8217792))

(assert (=> b!7753347 m!8217508))

(assert (=> b!7753347 m!8217792))

(declare-fun m!8217794 () Bool)

(assert (=> b!7753347 m!8217794))

(assert (=> b!7753347 m!8217502))

(assert (=> b!7753347 m!8217788))

(assert (=> b!7753347 m!8217794))

(assert (=> b!7753347 m!8217788))

(declare-fun m!8217796 () Bool)

(assert (=> b!7753347 m!8217796))

(assert (=> b!7753348 m!8217502))

(assert (=> b!7753348 m!8217792))

(assert (=> b!7753349 m!8217508))

(declare-fun m!8217798 () Bool)

(assert (=> b!7753349 m!8217798))

(assert (=> b!7753350 m!8217502))

(assert (=> b!7753350 m!8217788))

(assert (=> b!7753350 m!8217788))

(assert (=> b!7753350 m!8217790))

(assert (=> b!7753359 m!8217502))

(assert (=> b!7753359 m!8217792))

(assert (=> b!7752888 d!2342997))

(declare-fun b!7753361 () Bool)

(declare-fun e!4596113 () Regex!20622)

(assert (=> b!7753361 (= e!4596113 (ite (= (head!15839 (t!388202 s1!4391)) (c!1429881 lt!2669536)) EmptyExpr!20622 EmptyLang!20622))))

(declare-fun b!7753363 () Bool)

(declare-fun c!1430022 () Bool)

(assert (=> b!7753363 (= c!1430022 (is-Union!20622 lt!2669536))))

(declare-fun e!4596115 () Regex!20622)

(assert (=> b!7753363 (= e!4596113 e!4596115)))

(declare-fun b!7753364 () Bool)

(declare-fun e!4596111 () Regex!20622)

(assert (=> b!7753364 (= e!4596115 e!4596111)))

(declare-fun c!1430019 () Bool)

(assert (=> b!7753364 (= c!1430019 (is-Star!20622 lt!2669536))))

(declare-fun bm!718710 () Bool)

(declare-fun call!718718 () Regex!20622)

(declare-fun call!718715 () Regex!20622)

(assert (=> bm!718710 (= call!718718 call!718715)))

(declare-fun b!7753365 () Bool)

(declare-fun c!1430023 () Bool)

(assert (=> b!7753365 (= c!1430023 (nullable!9083 (regOne!41756 lt!2669536)))))

(declare-fun e!4596114 () Regex!20622)

(assert (=> b!7753365 (= e!4596111 e!4596114)))

(declare-fun b!7753366 () Bool)

(declare-fun e!4596112 () Regex!20622)

(assert (=> b!7753366 (= e!4596112 EmptyLang!20622)))

(declare-fun b!7753367 () Bool)

(assert (=> b!7753367 (= e!4596112 e!4596113)))

(declare-fun c!1430021 () Bool)

(assert (=> b!7753367 (= c!1430021 (is-ElementMatch!20622 lt!2669536))))

(declare-fun bm!718711 () Bool)

(assert (=> bm!718711 (= call!718715 (derivativeStep!6043 (ite c!1430022 (regTwo!41757 lt!2669536) (ite c!1430019 (reg!20951 lt!2669536) (regOne!41756 lt!2669536))) (head!15839 (t!388202 s1!4391))))))

(declare-fun b!7753368 () Bool)

(assert (=> b!7753368 (= e!4596111 (Concat!29467 call!718718 lt!2669536))))

(declare-fun b!7753362 () Bool)

(declare-fun call!718716 () Regex!20622)

(assert (=> b!7753362 (= e!4596115 (Union!20622 call!718716 call!718715))))

(declare-fun d!2342999 () Bool)

(declare-fun lt!2669593 () Regex!20622)

(assert (=> d!2342999 (validRegex!11040 lt!2669593)))

(assert (=> d!2342999 (= lt!2669593 e!4596112)))

(declare-fun c!1430020 () Bool)

(assert (=> d!2342999 (= c!1430020 (or (is-EmptyExpr!20622 lt!2669536) (is-EmptyLang!20622 lt!2669536)))))

(assert (=> d!2342999 (validRegex!11040 lt!2669536)))

(assert (=> d!2342999 (= (derivativeStep!6043 lt!2669536 (head!15839 (t!388202 s1!4391))) lt!2669593)))

(declare-fun b!7753369 () Bool)

(declare-fun call!718717 () Regex!20622)

(assert (=> b!7753369 (= e!4596114 (Union!20622 (Concat!29467 call!718717 (regTwo!41756 lt!2669536)) call!718716))))

(declare-fun bm!718712 () Bool)

(assert (=> bm!718712 (= call!718716 (derivativeStep!6043 (ite c!1430022 (regOne!41757 lt!2669536) (regTwo!41756 lt!2669536)) (head!15839 (t!388202 s1!4391))))))

(declare-fun b!7753370 () Bool)

(assert (=> b!7753370 (= e!4596114 (Union!20622 (Concat!29467 call!718717 (regTwo!41756 lt!2669536)) EmptyLang!20622))))

(declare-fun bm!718713 () Bool)

(assert (=> bm!718713 (= call!718717 call!718718)))

(assert (= (and d!2342999 c!1430020) b!7753366))

(assert (= (and d!2342999 (not c!1430020)) b!7753367))

(assert (= (and b!7753367 c!1430021) b!7753361))

(assert (= (and b!7753367 (not c!1430021)) b!7753363))

(assert (= (and b!7753363 c!1430022) b!7753362))

(assert (= (and b!7753363 (not c!1430022)) b!7753364))

(assert (= (and b!7753364 c!1430019) b!7753368))

(assert (= (and b!7753364 (not c!1430019)) b!7753365))

(assert (= (and b!7753365 c!1430023) b!7753369))

(assert (= (and b!7753365 (not c!1430023)) b!7753370))

(assert (= (or b!7753369 b!7753370) bm!718713))

(assert (= (or b!7753368 bm!718713) bm!718710))

(assert (= (or b!7753362 bm!718710) bm!718711))

(assert (= (or b!7753362 b!7753369) bm!718712))

(declare-fun m!8217800 () Bool)

(assert (=> b!7753365 m!8217800))

(assert (=> bm!718711 m!8217506))

(declare-fun m!8217802 () Bool)

(assert (=> bm!718711 m!8217802))

(declare-fun m!8217804 () Bool)

(assert (=> d!2342999 m!8217804))

(assert (=> d!2342999 m!8217418))

(assert (=> bm!718712 m!8217506))

(declare-fun m!8217806 () Bool)

(assert (=> bm!718712 m!8217806))

(assert (=> b!7752888 d!2342999))

(declare-fun d!2343001 () Bool)

(assert (=> d!2343001 (= (head!15839 (t!388202 s1!4391)) (h!79791 (t!388202 s1!4391)))))

(assert (=> b!7752888 d!2343001))

(declare-fun d!2343003 () Bool)

(assert (=> d!2343003 (= (tail!15379 (t!388202 s1!4391)) (t!388202 (t!388202 s1!4391)))))

(assert (=> b!7752888 d!2343003))

(declare-fun d!2343005 () Bool)

(declare-fun lt!2669596 () Int)

(assert (=> d!2343005 (>= lt!2669596 0)))

(declare-fun e!4596118 () Int)

(assert (=> d!2343005 (= lt!2669596 e!4596118)))

(declare-fun c!1430026 () Bool)

(assert (=> d!2343005 (= c!1430026 (is-Nil!73343 lt!2669571))))

(assert (=> d!2343005 (= (size!42655 lt!2669571) lt!2669596)))

(declare-fun b!7753375 () Bool)

(assert (=> b!7753375 (= e!4596118 0)))

(declare-fun b!7753376 () Bool)

(assert (=> b!7753376 (= e!4596118 (+ 1 (size!42655 (t!388202 lt!2669571))))))

(assert (= (and d!2343005 c!1430026) b!7753375))

(assert (= (and d!2343005 (not c!1430026)) b!7753376))

(declare-fun m!8217808 () Bool)

(assert (=> b!7753376 m!8217808))

(assert (=> b!7752951 d!2343005))

(declare-fun d!2343007 () Bool)

(declare-fun lt!2669597 () Int)

(assert (=> d!2343007 (>= lt!2669597 0)))

(declare-fun e!4596119 () Int)

(assert (=> d!2343007 (= lt!2669597 e!4596119)))

(declare-fun c!1430027 () Bool)

(assert (=> d!2343007 (= c!1430027 (is-Nil!73343 (t!388202 s1!4391)))))

(assert (=> d!2343007 (= (size!42655 (t!388202 s1!4391)) lt!2669597)))

(declare-fun b!7753377 () Bool)

(assert (=> b!7753377 (= e!4596119 0)))

(declare-fun b!7753378 () Bool)

(assert (=> b!7753378 (= e!4596119 (+ 1 (size!42655 (t!388202 (t!388202 s1!4391)))))))

(assert (= (and d!2343007 c!1430027) b!7753377))

(assert (= (and d!2343007 (not c!1430027)) b!7753378))

(declare-fun m!8217810 () Bool)

(assert (=> b!7753378 m!8217810))

(assert (=> b!7752951 d!2343007))

(declare-fun d!2343009 () Bool)

(declare-fun lt!2669598 () Int)

(assert (=> d!2343009 (>= lt!2669598 0)))

(declare-fun e!4596120 () Int)

(assert (=> d!2343009 (= lt!2669598 e!4596120)))

(declare-fun c!1430028 () Bool)

(assert (=> d!2343009 (= c!1430028 (is-Nil!73343 s2!3963))))

(assert (=> d!2343009 (= (size!42655 s2!3963) lt!2669598)))

(declare-fun b!7753379 () Bool)

(assert (=> b!7753379 (= e!4596120 0)))

(declare-fun b!7753380 () Bool)

(assert (=> b!7753380 (= e!4596120 (+ 1 (size!42655 (t!388202 s2!3963))))))

(assert (= (and d!2343009 c!1430028) b!7753379))

(assert (= (and d!2343009 (not c!1430028)) b!7753380))

(declare-fun m!8217812 () Bool)

(assert (=> b!7753380 m!8217812))

(assert (=> b!7752951 d!2343009))

(declare-fun d!2343011 () Bool)

(assert (=> d!2343011 (= (nullable!9083 (reg!20951 lt!2669535)) (nullableFct!3582 (reg!20951 lt!2669535)))))

(declare-fun bs!1965838 () Bool)

(assert (= bs!1965838 d!2343011))

(declare-fun m!8217814 () Bool)

(assert (=> bs!1965838 m!8217814))

(assert (=> b!7752883 d!2343011))

(declare-fun d!2343013 () Bool)

(assert (=> d!2343013 (= (nullable!9083 r!25892) (nullableFct!3582 r!25892))))

(declare-fun bs!1965839 () Bool)

(assert (= bs!1965839 d!2343013))

(declare-fun m!8217816 () Bool)

(assert (=> bs!1965839 m!8217816))

(assert (=> b!7752837 d!2343013))

(assert (=> b!7752943 d!2342979))

(declare-fun d!2343015 () Bool)

(assert (=> d!2343015 (= (nullable!9083 (reg!20951 lt!2669536)) (nullableFct!3582 (reg!20951 lt!2669536)))))

(declare-fun bs!1965840 () Bool)

(assert (= bs!1965840 d!2343015))

(declare-fun m!8217818 () Bool)

(assert (=> bs!1965840 m!8217818))

(assert (=> b!7753049 d!2343015))

(declare-fun d!2343017 () Bool)

(assert (=> d!2343017 (= (nullable!9083 (regOne!41756 r!25892)) (nullableFct!3582 (regOne!41756 r!25892)))))

(declare-fun bs!1965841 () Bool)

(assert (= bs!1965841 d!2343017))

(declare-fun m!8217820 () Bool)

(assert (=> bs!1965841 m!8217820))

(assert (=> b!7753039 d!2343017))

(declare-fun d!2343019 () Bool)

(assert (=> d!2343019 (= (nullable!9083 lt!2669536) (nullableFct!3582 lt!2669536))))

(declare-fun bs!1965842 () Bool)

(assert (= bs!1965842 d!2343019))

(declare-fun m!8217822 () Bool)

(assert (=> bs!1965842 m!8217822))

(assert (=> b!7752890 d!2343019))

(declare-fun d!2343021 () Bool)

(assert (=> d!2343021 (= (head!15839 (++!17803 s1!4391 s2!3963)) (h!79791 (++!17803 s1!4391 s2!3963)))))

(assert (=> b!7752918 d!2343021))

(declare-fun b!7753381 () Bool)

(declare-fun e!4596125 () Bool)

(declare-fun e!4596122 () Bool)

(assert (=> b!7753381 (= e!4596125 e!4596122)))

(declare-fun c!1430029 () Bool)

(assert (=> b!7753381 (= c!1430029 (is-Star!20622 (ite c!1429946 (reg!20951 lt!2669536) (ite c!1429947 (regOne!41757 lt!2669536) (regOne!41756 lt!2669536)))))))

(declare-fun b!7753382 () Bool)

(declare-fun res!3091448 () Bool)

(declare-fun e!4596124 () Bool)

(assert (=> b!7753382 (=> res!3091448 e!4596124)))

(assert (=> b!7753382 (= res!3091448 (not (is-Concat!29467 (ite c!1429946 (reg!20951 lt!2669536) (ite c!1429947 (regOne!41757 lt!2669536) (regOne!41756 lt!2669536))))))))

(declare-fun e!4596127 () Bool)

(assert (=> b!7753382 (= e!4596127 e!4596124)))

(declare-fun c!1430030 () Bool)

(declare-fun bm!718714 () Bool)

(declare-fun call!718720 () Bool)

(assert (=> bm!718714 (= call!718720 (validRegex!11040 (ite c!1430029 (reg!20951 (ite c!1429946 (reg!20951 lt!2669536) (ite c!1429947 (regOne!41757 lt!2669536) (regOne!41756 lt!2669536)))) (ite c!1430030 (regOne!41757 (ite c!1429946 (reg!20951 lt!2669536) (ite c!1429947 (regOne!41757 lt!2669536) (regOne!41756 lt!2669536)))) (regOne!41756 (ite c!1429946 (reg!20951 lt!2669536) (ite c!1429947 (regOne!41757 lt!2669536) (regOne!41756 lt!2669536))))))))))

(declare-fun bm!718715 () Bool)

(declare-fun call!718721 () Bool)

(assert (=> bm!718715 (= call!718721 (validRegex!11040 (ite c!1430030 (regTwo!41757 (ite c!1429946 (reg!20951 lt!2669536) (ite c!1429947 (regOne!41757 lt!2669536) (regOne!41756 lt!2669536)))) (regTwo!41756 (ite c!1429946 (reg!20951 lt!2669536) (ite c!1429947 (regOne!41757 lt!2669536) (regOne!41756 lt!2669536)))))))))

(declare-fun d!2343023 () Bool)

(declare-fun res!3091450 () Bool)

(assert (=> d!2343023 (=> res!3091450 e!4596125)))

(assert (=> d!2343023 (= res!3091450 (is-ElementMatch!20622 (ite c!1429946 (reg!20951 lt!2669536) (ite c!1429947 (regOne!41757 lt!2669536) (regOne!41756 lt!2669536)))))))

(assert (=> d!2343023 (= (validRegex!11040 (ite c!1429946 (reg!20951 lt!2669536) (ite c!1429947 (regOne!41757 lt!2669536) (regOne!41756 lt!2669536)))) e!4596125)))

(declare-fun b!7753383 () Bool)

(declare-fun e!4596123 () Bool)

(assert (=> b!7753383 (= e!4596123 call!718720)))

(declare-fun b!7753384 () Bool)

(declare-fun e!4596126 () Bool)

(assert (=> b!7753384 (= e!4596126 call!718721)))

(declare-fun b!7753385 () Bool)

(assert (=> b!7753385 (= e!4596122 e!4596123)))

(declare-fun res!3091446 () Bool)

(assert (=> b!7753385 (= res!3091446 (not (nullable!9083 (reg!20951 (ite c!1429946 (reg!20951 lt!2669536) (ite c!1429947 (regOne!41757 lt!2669536) (regOne!41756 lt!2669536)))))))))

(assert (=> b!7753385 (=> (not res!3091446) (not e!4596123))))

(declare-fun b!7753386 () Bool)

(declare-fun res!3091449 () Bool)

(declare-fun e!4596121 () Bool)

(assert (=> b!7753386 (=> (not res!3091449) (not e!4596121))))

(declare-fun call!718719 () Bool)

(assert (=> b!7753386 (= res!3091449 call!718719)))

(assert (=> b!7753386 (= e!4596127 e!4596121)))

(declare-fun b!7753387 () Bool)

(assert (=> b!7753387 (= e!4596122 e!4596127)))

(assert (=> b!7753387 (= c!1430030 (is-Union!20622 (ite c!1429946 (reg!20951 lt!2669536) (ite c!1429947 (regOne!41757 lt!2669536) (regOne!41756 lt!2669536)))))))

(declare-fun b!7753388 () Bool)

(assert (=> b!7753388 (= e!4596124 e!4596126)))

(declare-fun res!3091447 () Bool)

(assert (=> b!7753388 (=> (not res!3091447) (not e!4596126))))

(assert (=> b!7753388 (= res!3091447 call!718719)))

(declare-fun bm!718716 () Bool)

(assert (=> bm!718716 (= call!718719 call!718720)))

(declare-fun b!7753389 () Bool)

(assert (=> b!7753389 (= e!4596121 call!718721)))

(assert (= (and d!2343023 (not res!3091450)) b!7753381))

(assert (= (and b!7753381 c!1430029) b!7753385))

(assert (= (and b!7753381 (not c!1430029)) b!7753387))

(assert (= (and b!7753385 res!3091446) b!7753383))

(assert (= (and b!7753387 c!1430030) b!7753386))

(assert (= (and b!7753387 (not c!1430030)) b!7753382))

(assert (= (and b!7753386 res!3091449) b!7753389))

(assert (= (and b!7753382 (not res!3091448)) b!7753388))

(assert (= (and b!7753388 res!3091447) b!7753384))

(assert (= (or b!7753386 b!7753388) bm!718716))

(assert (= (or b!7753389 b!7753384) bm!718715))

(assert (= (or b!7753383 bm!718716) bm!718714))

(declare-fun m!8217824 () Bool)

(assert (=> bm!718714 m!8217824))

(declare-fun m!8217826 () Bool)

(assert (=> bm!718715 m!8217826))

(declare-fun m!8217828 () Bool)

(assert (=> b!7753385 m!8217828))

(assert (=> bm!718651 d!2343023))

(declare-fun b!7753390 () Bool)

(declare-fun e!4596130 () Bool)

(assert (=> b!7753390 (= e!4596130 (matchR!10112 (derivativeStep!6043 (derivativeStep!6043 r!25892 (head!15839 s1!4391)) (head!15839 (tail!15379 s1!4391))) (tail!15379 (tail!15379 s1!4391))))))

(declare-fun b!7753391 () Bool)

(declare-fun e!4596131 () Bool)

(assert (=> b!7753391 (= e!4596131 (not (= (head!15839 (tail!15379 s1!4391)) (c!1429881 (derivativeStep!6043 r!25892 (head!15839 s1!4391))))))))

(declare-fun b!7753392 () Bool)

(assert (=> b!7753392 (= e!4596130 (nullable!9083 (derivativeStep!6043 r!25892 (head!15839 s1!4391))))))

(declare-fun b!7753393 () Bool)

(declare-fun res!3091452 () Bool)

(assert (=> b!7753393 (=> res!3091452 e!4596131)))

(assert (=> b!7753393 (= res!3091452 (not (isEmpty!42030 (tail!15379 (tail!15379 s1!4391)))))))

(declare-fun b!7753394 () Bool)

(declare-fun e!4596134 () Bool)

(assert (=> b!7753394 (= e!4596134 e!4596131)))

(declare-fun res!3091454 () Bool)

(assert (=> b!7753394 (=> res!3091454 e!4596131)))

(declare-fun call!718722 () Bool)

(assert (=> b!7753394 (= res!3091454 call!718722)))

(declare-fun d!2343025 () Bool)

(declare-fun e!4596129 () Bool)

(assert (=> d!2343025 e!4596129))

(declare-fun c!1430033 () Bool)

(assert (=> d!2343025 (= c!1430033 (is-EmptyExpr!20622 (derivativeStep!6043 r!25892 (head!15839 s1!4391))))))

(declare-fun lt!2669599 () Bool)

(assert (=> d!2343025 (= lt!2669599 e!4596130)))

(declare-fun c!1430031 () Bool)

(assert (=> d!2343025 (= c!1430031 (isEmpty!42030 (tail!15379 s1!4391)))))

(assert (=> d!2343025 (validRegex!11040 (derivativeStep!6043 r!25892 (head!15839 s1!4391)))))

(assert (=> d!2343025 (= (matchR!10112 (derivativeStep!6043 r!25892 (head!15839 s1!4391)) (tail!15379 s1!4391)) lt!2669599)))

(declare-fun b!7753395 () Bool)

(declare-fun res!3091455 () Bool)

(declare-fun e!4596132 () Bool)

(assert (=> b!7753395 (=> res!3091455 e!4596132)))

(assert (=> b!7753395 (= res!3091455 (not (is-ElementMatch!20622 (derivativeStep!6043 r!25892 (head!15839 s1!4391)))))))

(declare-fun e!4596133 () Bool)

(assert (=> b!7753395 (= e!4596133 e!4596132)))

(declare-fun bm!718717 () Bool)

(assert (=> bm!718717 (= call!718722 (isEmpty!42030 (tail!15379 s1!4391)))))

(declare-fun b!7753396 () Bool)

(declare-fun res!3091453 () Bool)

(declare-fun e!4596128 () Bool)

(assert (=> b!7753396 (=> (not res!3091453) (not e!4596128))))

(assert (=> b!7753396 (= res!3091453 (isEmpty!42030 (tail!15379 (tail!15379 s1!4391))))))

(declare-fun b!7753397 () Bool)

(declare-fun res!3091456 () Bool)

(assert (=> b!7753397 (=> (not res!3091456) (not e!4596128))))

(assert (=> b!7753397 (= res!3091456 (not call!718722))))

(declare-fun b!7753398 () Bool)

(assert (=> b!7753398 (= e!4596133 (not lt!2669599))))

(declare-fun b!7753399 () Bool)

(assert (=> b!7753399 (= e!4596132 e!4596134)))

(declare-fun res!3091458 () Bool)

(assert (=> b!7753399 (=> (not res!3091458) (not e!4596134))))

(assert (=> b!7753399 (= res!3091458 (not lt!2669599))))

(declare-fun b!7753400 () Bool)

(assert (=> b!7753400 (= e!4596129 e!4596133)))

(declare-fun c!1430032 () Bool)

(assert (=> b!7753400 (= c!1430032 (is-EmptyLang!20622 (derivativeStep!6043 r!25892 (head!15839 s1!4391))))))

(declare-fun b!7753401 () Bool)

(declare-fun res!3091451 () Bool)

(assert (=> b!7753401 (=> res!3091451 e!4596132)))

(assert (=> b!7753401 (= res!3091451 e!4596128)))

(declare-fun res!3091457 () Bool)

(assert (=> b!7753401 (=> (not res!3091457) (not e!4596128))))

(assert (=> b!7753401 (= res!3091457 lt!2669599)))

(declare-fun b!7753402 () Bool)

(assert (=> b!7753402 (= e!4596128 (= (head!15839 (tail!15379 s1!4391)) (c!1429881 (derivativeStep!6043 r!25892 (head!15839 s1!4391)))))))

(declare-fun b!7753403 () Bool)

(assert (=> b!7753403 (= e!4596129 (= lt!2669599 call!718722))))

(assert (= (and d!2343025 c!1430031) b!7753392))

(assert (= (and d!2343025 (not c!1430031)) b!7753390))

(assert (= (and d!2343025 c!1430033) b!7753403))

(assert (= (and d!2343025 (not c!1430033)) b!7753400))

(assert (= (and b!7753400 c!1430032) b!7753398))

(assert (= (and b!7753400 (not c!1430032)) b!7753395))

(assert (= (and b!7753395 (not res!3091455)) b!7753401))

(assert (= (and b!7753401 res!3091457) b!7753397))

(assert (= (and b!7753397 res!3091456) b!7753396))

(assert (= (and b!7753396 res!3091453) b!7753402))

(assert (= (and b!7753401 (not res!3091451)) b!7753399))

(assert (= (and b!7753399 res!3091458) b!7753394))

(assert (= (and b!7753394 (not res!3091454)) b!7753393))

(assert (= (and b!7753393 (not res!3091452)) b!7753391))

(assert (= (or b!7753403 b!7753394 b!7753397) bm!718717))

(assert (=> d!2343025 m!8217470))

(assert (=> d!2343025 m!8217472))

(assert (=> d!2343025 m!8217476))

(declare-fun m!8217830 () Bool)

(assert (=> d!2343025 m!8217830))

(assert (=> bm!718717 m!8217470))

(assert (=> bm!718717 m!8217472))

(assert (=> b!7753396 m!8217470))

(declare-fun m!8217832 () Bool)

(assert (=> b!7753396 m!8217832))

(assert (=> b!7753396 m!8217832))

(declare-fun m!8217834 () Bool)

(assert (=> b!7753396 m!8217834))

(assert (=> b!7753390 m!8217470))

(declare-fun m!8217836 () Bool)

(assert (=> b!7753390 m!8217836))

(assert (=> b!7753390 m!8217476))

(assert (=> b!7753390 m!8217836))

(declare-fun m!8217838 () Bool)

(assert (=> b!7753390 m!8217838))

(assert (=> b!7753390 m!8217470))

(assert (=> b!7753390 m!8217832))

(assert (=> b!7753390 m!8217838))

(assert (=> b!7753390 m!8217832))

(declare-fun m!8217840 () Bool)

(assert (=> b!7753390 m!8217840))

(assert (=> b!7753391 m!8217470))

(assert (=> b!7753391 m!8217836))

(assert (=> b!7753392 m!8217476))

(declare-fun m!8217842 () Bool)

(assert (=> b!7753392 m!8217842))

(assert (=> b!7753393 m!8217470))

(assert (=> b!7753393 m!8217832))

(assert (=> b!7753393 m!8217832))

(assert (=> b!7753393 m!8217834))

(assert (=> b!7753402 m!8217470))

(assert (=> b!7753402 m!8217836))

(assert (=> b!7752835 d!2343025))

(declare-fun b!7753404 () Bool)

(declare-fun e!4596137 () Regex!20622)

(assert (=> b!7753404 (= e!4596137 (ite (= (head!15839 s1!4391) (c!1429881 r!25892)) EmptyExpr!20622 EmptyLang!20622))))

(declare-fun b!7753406 () Bool)

(declare-fun c!1430037 () Bool)

(assert (=> b!7753406 (= c!1430037 (is-Union!20622 r!25892))))

(declare-fun e!4596139 () Regex!20622)

(assert (=> b!7753406 (= e!4596137 e!4596139)))

(declare-fun b!7753407 () Bool)

(declare-fun e!4596135 () Regex!20622)

(assert (=> b!7753407 (= e!4596139 e!4596135)))

(declare-fun c!1430034 () Bool)

(assert (=> b!7753407 (= c!1430034 (is-Star!20622 r!25892))))

(declare-fun bm!718718 () Bool)

(declare-fun call!718726 () Regex!20622)

(declare-fun call!718723 () Regex!20622)

(assert (=> bm!718718 (= call!718726 call!718723)))

(declare-fun b!7753408 () Bool)

(declare-fun c!1430038 () Bool)

(assert (=> b!7753408 (= c!1430038 (nullable!9083 (regOne!41756 r!25892)))))

(declare-fun e!4596138 () Regex!20622)

(assert (=> b!7753408 (= e!4596135 e!4596138)))

(declare-fun b!7753409 () Bool)

(declare-fun e!4596136 () Regex!20622)

(assert (=> b!7753409 (= e!4596136 EmptyLang!20622)))

(declare-fun b!7753410 () Bool)

(assert (=> b!7753410 (= e!4596136 e!4596137)))

(declare-fun c!1430036 () Bool)

(assert (=> b!7753410 (= c!1430036 (is-ElementMatch!20622 r!25892))))

(declare-fun bm!718719 () Bool)

(assert (=> bm!718719 (= call!718723 (derivativeStep!6043 (ite c!1430037 (regTwo!41757 r!25892) (ite c!1430034 (reg!20951 r!25892) (regOne!41756 r!25892))) (head!15839 s1!4391)))))

(declare-fun b!7753411 () Bool)

(assert (=> b!7753411 (= e!4596135 (Concat!29467 call!718726 r!25892))))

(declare-fun b!7753405 () Bool)

(declare-fun call!718724 () Regex!20622)

(assert (=> b!7753405 (= e!4596139 (Union!20622 call!718724 call!718723))))

(declare-fun d!2343027 () Bool)

(declare-fun lt!2669600 () Regex!20622)

(assert (=> d!2343027 (validRegex!11040 lt!2669600)))

(assert (=> d!2343027 (= lt!2669600 e!4596136)))

(declare-fun c!1430035 () Bool)

(assert (=> d!2343027 (= c!1430035 (or (is-EmptyExpr!20622 r!25892) (is-EmptyLang!20622 r!25892)))))

(assert (=> d!2343027 (validRegex!11040 r!25892)))

(assert (=> d!2343027 (= (derivativeStep!6043 r!25892 (head!15839 s1!4391)) lt!2669600)))

(declare-fun b!7753412 () Bool)

(declare-fun call!718725 () Regex!20622)

(assert (=> b!7753412 (= e!4596138 (Union!20622 (Concat!29467 call!718725 (regTwo!41756 r!25892)) call!718724))))

(declare-fun bm!718720 () Bool)

(assert (=> bm!718720 (= call!718724 (derivativeStep!6043 (ite c!1430037 (regOne!41757 r!25892) (regTwo!41756 r!25892)) (head!15839 s1!4391)))))

(declare-fun b!7753413 () Bool)

(assert (=> b!7753413 (= e!4596138 (Union!20622 (Concat!29467 call!718725 (regTwo!41756 r!25892)) EmptyLang!20622))))

(declare-fun bm!718721 () Bool)

(assert (=> bm!718721 (= call!718725 call!718726)))

(assert (= (and d!2343027 c!1430035) b!7753409))

(assert (= (and d!2343027 (not c!1430035)) b!7753410))

(assert (= (and b!7753410 c!1430036) b!7753404))

(assert (= (and b!7753410 (not c!1430036)) b!7753406))

(assert (= (and b!7753406 c!1430037) b!7753405))

(assert (= (and b!7753406 (not c!1430037)) b!7753407))

(assert (= (and b!7753407 c!1430034) b!7753411))

(assert (= (and b!7753407 (not c!1430034)) b!7753408))

(assert (= (and b!7753408 c!1430038) b!7753412))

(assert (= (and b!7753408 (not c!1430038)) b!7753413))

(assert (= (or b!7753412 b!7753413) bm!718721))

(assert (= (or b!7753411 bm!718721) bm!718718))

(assert (= (or b!7753405 bm!718718) bm!718719))

(assert (= (or b!7753405 b!7753412) bm!718720))

(assert (=> b!7753408 m!8217590))

(assert (=> bm!718719 m!8217474))

(declare-fun m!8217844 () Bool)

(assert (=> bm!718719 m!8217844))

(declare-fun m!8217846 () Bool)

(assert (=> d!2343027 m!8217846))

(assert (=> d!2343027 m!8217468))

(assert (=> bm!718720 m!8217474))

(declare-fun m!8217848 () Bool)

(assert (=> bm!718720 m!8217848))

(assert (=> b!7752835 d!2343027))

(declare-fun d!2343029 () Bool)

(assert (=> d!2343029 (= (head!15839 s1!4391) (h!79791 s1!4391))))

(assert (=> b!7752835 d!2343029))

(declare-fun d!2343031 () Bool)

(assert (=> d!2343031 (= (tail!15379 s1!4391) (t!388202 s1!4391))))

(assert (=> b!7752835 d!2343031))

(assert (=> b!7752973 d!2342963))

(declare-fun e!4596142 () Regex!20622)

(declare-fun b!7753414 () Bool)

(assert (=> b!7753414 (= e!4596142 (ite (= (h!79791 s1!4391) (c!1429881 (ite c!1429936 (regTwo!41757 lt!2669535) (ite c!1429933 (reg!20951 lt!2669535) (regOne!41756 lt!2669535))))) EmptyExpr!20622 EmptyLang!20622))))

(declare-fun b!7753416 () Bool)

(declare-fun c!1430042 () Bool)

(assert (=> b!7753416 (= c!1430042 (is-Union!20622 (ite c!1429936 (regTwo!41757 lt!2669535) (ite c!1429933 (reg!20951 lt!2669535) (regOne!41756 lt!2669535)))))))

(declare-fun e!4596144 () Regex!20622)

(assert (=> b!7753416 (= e!4596142 e!4596144)))

(declare-fun b!7753417 () Bool)

(declare-fun e!4596140 () Regex!20622)

(assert (=> b!7753417 (= e!4596144 e!4596140)))

(declare-fun c!1430039 () Bool)

(assert (=> b!7753417 (= c!1430039 (is-Star!20622 (ite c!1429936 (regTwo!41757 lt!2669535) (ite c!1429933 (reg!20951 lt!2669535) (regOne!41756 lt!2669535)))))))

(declare-fun bm!718722 () Bool)

(declare-fun call!718730 () Regex!20622)

(declare-fun call!718727 () Regex!20622)

(assert (=> bm!718722 (= call!718730 call!718727)))

(declare-fun b!7753418 () Bool)

(declare-fun c!1430043 () Bool)

(assert (=> b!7753418 (= c!1430043 (nullable!9083 (regOne!41756 (ite c!1429936 (regTwo!41757 lt!2669535) (ite c!1429933 (reg!20951 lt!2669535) (regOne!41756 lt!2669535))))))))

(declare-fun e!4596143 () Regex!20622)

(assert (=> b!7753418 (= e!4596140 e!4596143)))

(declare-fun b!7753419 () Bool)

(declare-fun e!4596141 () Regex!20622)

(assert (=> b!7753419 (= e!4596141 EmptyLang!20622)))

(declare-fun b!7753420 () Bool)

(assert (=> b!7753420 (= e!4596141 e!4596142)))

(declare-fun c!1430041 () Bool)

(assert (=> b!7753420 (= c!1430041 (is-ElementMatch!20622 (ite c!1429936 (regTwo!41757 lt!2669535) (ite c!1429933 (reg!20951 lt!2669535) (regOne!41756 lt!2669535)))))))

(declare-fun bm!718723 () Bool)

(assert (=> bm!718723 (= call!718727 (derivativeStep!6043 (ite c!1430042 (regTwo!41757 (ite c!1429936 (regTwo!41757 lt!2669535) (ite c!1429933 (reg!20951 lt!2669535) (regOne!41756 lt!2669535)))) (ite c!1430039 (reg!20951 (ite c!1429936 (regTwo!41757 lt!2669535) (ite c!1429933 (reg!20951 lt!2669535) (regOne!41756 lt!2669535)))) (regOne!41756 (ite c!1429936 (regTwo!41757 lt!2669535) (ite c!1429933 (reg!20951 lt!2669535) (regOne!41756 lt!2669535)))))) (h!79791 s1!4391)))))

(declare-fun b!7753421 () Bool)

(assert (=> b!7753421 (= e!4596140 (Concat!29467 call!718730 (ite c!1429936 (regTwo!41757 lt!2669535) (ite c!1429933 (reg!20951 lt!2669535) (regOne!41756 lt!2669535)))))))

(declare-fun b!7753415 () Bool)

(declare-fun call!718728 () Regex!20622)

(assert (=> b!7753415 (= e!4596144 (Union!20622 call!718728 call!718727))))

(declare-fun d!2343033 () Bool)

(declare-fun lt!2669601 () Regex!20622)

(assert (=> d!2343033 (validRegex!11040 lt!2669601)))

(assert (=> d!2343033 (= lt!2669601 e!4596141)))

(declare-fun c!1430040 () Bool)

(assert (=> d!2343033 (= c!1430040 (or (is-EmptyExpr!20622 (ite c!1429936 (regTwo!41757 lt!2669535) (ite c!1429933 (reg!20951 lt!2669535) (regOne!41756 lt!2669535)))) (is-EmptyLang!20622 (ite c!1429936 (regTwo!41757 lt!2669535) (ite c!1429933 (reg!20951 lt!2669535) (regOne!41756 lt!2669535))))))))

(assert (=> d!2343033 (validRegex!11040 (ite c!1429936 (regTwo!41757 lt!2669535) (ite c!1429933 (reg!20951 lt!2669535) (regOne!41756 lt!2669535))))))

(assert (=> d!2343033 (= (derivativeStep!6043 (ite c!1429936 (regTwo!41757 lt!2669535) (ite c!1429933 (reg!20951 lt!2669535) (regOne!41756 lt!2669535))) (h!79791 s1!4391)) lt!2669601)))

(declare-fun b!7753422 () Bool)

(declare-fun call!718729 () Regex!20622)

(assert (=> b!7753422 (= e!4596143 (Union!20622 (Concat!29467 call!718729 (regTwo!41756 (ite c!1429936 (regTwo!41757 lt!2669535) (ite c!1429933 (reg!20951 lt!2669535) (regOne!41756 lt!2669535))))) call!718728))))

(declare-fun bm!718724 () Bool)

(assert (=> bm!718724 (= call!718728 (derivativeStep!6043 (ite c!1430042 (regOne!41757 (ite c!1429936 (regTwo!41757 lt!2669535) (ite c!1429933 (reg!20951 lt!2669535) (regOne!41756 lt!2669535)))) (regTwo!41756 (ite c!1429936 (regTwo!41757 lt!2669535) (ite c!1429933 (reg!20951 lt!2669535) (regOne!41756 lt!2669535))))) (h!79791 s1!4391)))))

(declare-fun b!7753423 () Bool)

(assert (=> b!7753423 (= e!4596143 (Union!20622 (Concat!29467 call!718729 (regTwo!41756 (ite c!1429936 (regTwo!41757 lt!2669535) (ite c!1429933 (reg!20951 lt!2669535) (regOne!41756 lt!2669535))))) EmptyLang!20622))))

(declare-fun bm!718725 () Bool)

(assert (=> bm!718725 (= call!718729 call!718730)))

(assert (= (and d!2343033 c!1430040) b!7753419))

(assert (= (and d!2343033 (not c!1430040)) b!7753420))

(assert (= (and b!7753420 c!1430041) b!7753414))

(assert (= (and b!7753420 (not c!1430041)) b!7753416))

(assert (= (and b!7753416 c!1430042) b!7753415))

(assert (= (and b!7753416 (not c!1430042)) b!7753417))

(assert (= (and b!7753417 c!1430039) b!7753421))

(assert (= (and b!7753417 (not c!1430039)) b!7753418))

(assert (= (and b!7753418 c!1430043) b!7753422))

(assert (= (and b!7753418 (not c!1430043)) b!7753423))

(assert (= (or b!7753422 b!7753423) bm!718725))

(assert (= (or b!7753421 bm!718725) bm!718722))

(assert (= (or b!7753415 bm!718722) bm!718723))

(assert (= (or b!7753415 b!7753422) bm!718724))

(declare-fun m!8217850 () Bool)

(assert (=> b!7753418 m!8217850))

(declare-fun m!8217852 () Bool)

(assert (=> bm!718723 m!8217852))

(declare-fun m!8217854 () Bool)

(assert (=> d!2343033 m!8217854))

(declare-fun m!8217856 () Bool)

(assert (=> d!2343033 m!8217856))

(declare-fun m!8217858 () Bool)

(assert (=> bm!718724 m!8217858))

(assert (=> bm!718643 d!2343033))

(declare-fun d!2343035 () Bool)

(assert (=> d!2343035 (= (isEmpty!42030 (tail!15379 (++!17803 (t!388202 s1!4391) s2!3963))) (is-Nil!73343 (tail!15379 (++!17803 (t!388202 s1!4391) s2!3963))))))

(assert (=> b!7752937 d!2343035))

(assert (=> b!7752937 d!2342981))

(assert (=> d!2342919 d!2342969))

(assert (=> d!2342919 d!2342939))

(declare-fun b!7753424 () Bool)

(declare-fun e!4596149 () Bool)

(declare-fun e!4596146 () Bool)

(assert (=> b!7753424 (= e!4596149 e!4596146)))

(declare-fun c!1430044 () Bool)

(assert (=> b!7753424 (= c!1430044 (is-Star!20622 (ite c!1429899 (reg!20951 lt!2669535) (ite c!1429900 (regOne!41757 lt!2669535) (regOne!41756 lt!2669535)))))))

(declare-fun b!7753425 () Bool)

(declare-fun res!3091461 () Bool)

(declare-fun e!4596148 () Bool)

(assert (=> b!7753425 (=> res!3091461 e!4596148)))

(assert (=> b!7753425 (= res!3091461 (not (is-Concat!29467 (ite c!1429899 (reg!20951 lt!2669535) (ite c!1429900 (regOne!41757 lt!2669535) (regOne!41756 lt!2669535))))))))

(declare-fun e!4596151 () Bool)

(assert (=> b!7753425 (= e!4596151 e!4596148)))

(declare-fun call!718732 () Bool)

(declare-fun bm!718726 () Bool)

(declare-fun c!1430045 () Bool)

(assert (=> bm!718726 (= call!718732 (validRegex!11040 (ite c!1430044 (reg!20951 (ite c!1429899 (reg!20951 lt!2669535) (ite c!1429900 (regOne!41757 lt!2669535) (regOne!41756 lt!2669535)))) (ite c!1430045 (regOne!41757 (ite c!1429899 (reg!20951 lt!2669535) (ite c!1429900 (regOne!41757 lt!2669535) (regOne!41756 lt!2669535)))) (regOne!41756 (ite c!1429899 (reg!20951 lt!2669535) (ite c!1429900 (regOne!41757 lt!2669535) (regOne!41756 lt!2669535))))))))))

(declare-fun bm!718727 () Bool)

(declare-fun call!718733 () Bool)

(assert (=> bm!718727 (= call!718733 (validRegex!11040 (ite c!1430045 (regTwo!41757 (ite c!1429899 (reg!20951 lt!2669535) (ite c!1429900 (regOne!41757 lt!2669535) (regOne!41756 lt!2669535)))) (regTwo!41756 (ite c!1429899 (reg!20951 lt!2669535) (ite c!1429900 (regOne!41757 lt!2669535) (regOne!41756 lt!2669535)))))))))

(declare-fun d!2343037 () Bool)

(declare-fun res!3091463 () Bool)

(assert (=> d!2343037 (=> res!3091463 e!4596149)))

(assert (=> d!2343037 (= res!3091463 (is-ElementMatch!20622 (ite c!1429899 (reg!20951 lt!2669535) (ite c!1429900 (regOne!41757 lt!2669535) (regOne!41756 lt!2669535)))))))

(assert (=> d!2343037 (= (validRegex!11040 (ite c!1429899 (reg!20951 lt!2669535) (ite c!1429900 (regOne!41757 lt!2669535) (regOne!41756 lt!2669535)))) e!4596149)))

(declare-fun b!7753426 () Bool)

(declare-fun e!4596147 () Bool)

(assert (=> b!7753426 (= e!4596147 call!718732)))

(declare-fun b!7753427 () Bool)

(declare-fun e!4596150 () Bool)

(assert (=> b!7753427 (= e!4596150 call!718733)))

(declare-fun b!7753428 () Bool)

(assert (=> b!7753428 (= e!4596146 e!4596147)))

(declare-fun res!3091459 () Bool)

(assert (=> b!7753428 (= res!3091459 (not (nullable!9083 (reg!20951 (ite c!1429899 (reg!20951 lt!2669535) (ite c!1429900 (regOne!41757 lt!2669535) (regOne!41756 lt!2669535)))))))))

(assert (=> b!7753428 (=> (not res!3091459) (not e!4596147))))

(declare-fun b!7753429 () Bool)

(declare-fun res!3091462 () Bool)

(declare-fun e!4596145 () Bool)

(assert (=> b!7753429 (=> (not res!3091462) (not e!4596145))))

(declare-fun call!718731 () Bool)

(assert (=> b!7753429 (= res!3091462 call!718731)))

(assert (=> b!7753429 (= e!4596151 e!4596145)))

(declare-fun b!7753430 () Bool)

(assert (=> b!7753430 (= e!4596146 e!4596151)))

(assert (=> b!7753430 (= c!1430045 (is-Union!20622 (ite c!1429899 (reg!20951 lt!2669535) (ite c!1429900 (regOne!41757 lt!2669535) (regOne!41756 lt!2669535)))))))

(declare-fun b!7753431 () Bool)

(assert (=> b!7753431 (= e!4596148 e!4596150)))

(declare-fun res!3091460 () Bool)

(assert (=> b!7753431 (=> (not res!3091460) (not e!4596150))))

(assert (=> b!7753431 (= res!3091460 call!718731)))

(declare-fun bm!718728 () Bool)

(assert (=> bm!718728 (= call!718731 call!718732)))

(declare-fun b!7753432 () Bool)

(assert (=> b!7753432 (= e!4596145 call!718733)))

(assert (= (and d!2343037 (not res!3091463)) b!7753424))

(assert (= (and b!7753424 c!1430044) b!7753428))

(assert (= (and b!7753424 (not c!1430044)) b!7753430))

(assert (= (and b!7753428 res!3091459) b!7753426))

(assert (= (and b!7753430 c!1430045) b!7753429))

(assert (= (and b!7753430 (not c!1430045)) b!7753425))

(assert (= (and b!7753429 res!3091462) b!7753432))

(assert (= (and b!7753425 (not res!3091461)) b!7753431))

(assert (= (and b!7753431 res!3091460) b!7753427))

(assert (= (or b!7753429 b!7753431) bm!718728))

(assert (= (or b!7753432 b!7753427) bm!718727))

(assert (= (or b!7753426 bm!718728) bm!718726))

(declare-fun m!8217860 () Bool)

(assert (=> bm!718726 m!8217860))

(declare-fun m!8217862 () Bool)

(assert (=> bm!718727 m!8217862))

(declare-fun m!8217864 () Bool)

(assert (=> b!7753428 m!8217864))

(assert (=> bm!718625 d!2343037))

(declare-fun d!2343039 () Bool)

(assert (=> d!2343039 (= (isEmpty!42030 (tail!15379 s2!3963)) (is-Nil!73343 (tail!15379 s2!3963)))))

(assert (=> b!7752967 d!2343039))

(assert (=> b!7752967 d!2342965))

(declare-fun b!7753433 () Bool)

(declare-fun e!4596154 () Bool)

(assert (=> b!7753433 (= e!4596154 (matchR!10112 (derivativeStep!6043 (Concat!29467 lt!2669536 lt!2669535) (head!15839 (++!17803 (t!388202 s1!4391) s2!3963))) (tail!15379 (++!17803 (t!388202 s1!4391) s2!3963))))))

(declare-fun e!4596155 () Bool)

(declare-fun b!7753434 () Bool)

(assert (=> b!7753434 (= e!4596155 (not (= (head!15839 (++!17803 (t!388202 s1!4391) s2!3963)) (c!1429881 (Concat!29467 lt!2669536 lt!2669535)))))))

(declare-fun b!7753435 () Bool)

(assert (=> b!7753435 (= e!4596154 (nullable!9083 (Concat!29467 lt!2669536 lt!2669535)))))

(declare-fun b!7753436 () Bool)

(declare-fun res!3091465 () Bool)

(assert (=> b!7753436 (=> res!3091465 e!4596155)))

(assert (=> b!7753436 (= res!3091465 (not (isEmpty!42030 (tail!15379 (++!17803 (t!388202 s1!4391) s2!3963)))))))

(declare-fun b!7753437 () Bool)

(declare-fun e!4596158 () Bool)

(assert (=> b!7753437 (= e!4596158 e!4596155)))

(declare-fun res!3091467 () Bool)

(assert (=> b!7753437 (=> res!3091467 e!4596155)))

(declare-fun call!718734 () Bool)

(assert (=> b!7753437 (= res!3091467 call!718734)))

(declare-fun d!2343041 () Bool)

(declare-fun e!4596153 () Bool)

(assert (=> d!2343041 e!4596153))

(declare-fun c!1430048 () Bool)

(assert (=> d!2343041 (= c!1430048 (is-EmptyExpr!20622 (Concat!29467 lt!2669536 lt!2669535)))))

(declare-fun lt!2669602 () Bool)

(assert (=> d!2343041 (= lt!2669602 e!4596154)))

(declare-fun c!1430046 () Bool)

(assert (=> d!2343041 (= c!1430046 (isEmpty!42030 (++!17803 (t!388202 s1!4391) s2!3963)))))

(assert (=> d!2343041 (validRegex!11040 (Concat!29467 lt!2669536 lt!2669535))))

(assert (=> d!2343041 (= (matchR!10112 (Concat!29467 lt!2669536 lt!2669535) (++!17803 (t!388202 s1!4391) s2!3963)) lt!2669602)))

(declare-fun b!7753438 () Bool)

(declare-fun res!3091468 () Bool)

(declare-fun e!4596156 () Bool)

(assert (=> b!7753438 (=> res!3091468 e!4596156)))

(assert (=> b!7753438 (= res!3091468 (not (is-ElementMatch!20622 (Concat!29467 lt!2669536 lt!2669535))))))

(declare-fun e!4596157 () Bool)

(assert (=> b!7753438 (= e!4596157 e!4596156)))

(declare-fun bm!718729 () Bool)

(assert (=> bm!718729 (= call!718734 (isEmpty!42030 (++!17803 (t!388202 s1!4391) s2!3963)))))

(declare-fun b!7753439 () Bool)

(declare-fun res!3091466 () Bool)

(declare-fun e!4596152 () Bool)

(assert (=> b!7753439 (=> (not res!3091466) (not e!4596152))))

(assert (=> b!7753439 (= res!3091466 (isEmpty!42030 (tail!15379 (++!17803 (t!388202 s1!4391) s2!3963))))))

(declare-fun b!7753440 () Bool)

(declare-fun res!3091469 () Bool)

(assert (=> b!7753440 (=> (not res!3091469) (not e!4596152))))

(assert (=> b!7753440 (= res!3091469 (not call!718734))))

(declare-fun b!7753441 () Bool)

(assert (=> b!7753441 (= e!4596157 (not lt!2669602))))

(declare-fun b!7753442 () Bool)

(assert (=> b!7753442 (= e!4596156 e!4596158)))

(declare-fun res!3091471 () Bool)

(assert (=> b!7753442 (=> (not res!3091471) (not e!4596158))))

(assert (=> b!7753442 (= res!3091471 (not lt!2669602))))

(declare-fun b!7753443 () Bool)

(assert (=> b!7753443 (= e!4596153 e!4596157)))

(declare-fun c!1430047 () Bool)

(assert (=> b!7753443 (= c!1430047 (is-EmptyLang!20622 (Concat!29467 lt!2669536 lt!2669535)))))

(declare-fun b!7753444 () Bool)

(declare-fun res!3091464 () Bool)

(assert (=> b!7753444 (=> res!3091464 e!4596156)))

(assert (=> b!7753444 (= res!3091464 e!4596152)))

(declare-fun res!3091470 () Bool)

(assert (=> b!7753444 (=> (not res!3091470) (not e!4596152))))

(assert (=> b!7753444 (= res!3091470 lt!2669602)))

(declare-fun b!7753445 () Bool)

(assert (=> b!7753445 (= e!4596152 (= (head!15839 (++!17803 (t!388202 s1!4391) s2!3963)) (c!1429881 (Concat!29467 lt!2669536 lt!2669535))))))

(declare-fun b!7753446 () Bool)

(assert (=> b!7753446 (= e!4596153 (= lt!2669602 call!718734))))

(assert (= (and d!2343041 c!1430046) b!7753435))

(assert (= (and d!2343041 (not c!1430046)) b!7753433))

(assert (= (and d!2343041 c!1430048) b!7753446))

(assert (= (and d!2343041 (not c!1430048)) b!7753443))

(assert (= (and b!7753443 c!1430047) b!7753441))

(assert (= (and b!7753443 (not c!1430047)) b!7753438))

(assert (= (and b!7753438 (not res!3091468)) b!7753444))

(assert (= (and b!7753444 res!3091470) b!7753440))

(assert (= (and b!7753440 res!3091469) b!7753439))

(assert (= (and b!7753439 res!3091466) b!7753445))

(assert (= (and b!7753444 (not res!3091464)) b!7753442))

(assert (= (and b!7753442 res!3091471) b!7753437))

(assert (= (and b!7753437 (not res!3091467)) b!7753436))

(assert (= (and b!7753436 (not res!3091465)) b!7753434))

(assert (= (or b!7753446 b!7753437 b!7753440) bm!718729))

(assert (=> d!2343041 m!8217428))

(assert (=> d!2343041 m!8217544))

(declare-fun m!8217866 () Bool)

(assert (=> d!2343041 m!8217866))

(assert (=> bm!718729 m!8217428))

(assert (=> bm!718729 m!8217544))

(assert (=> b!7753439 m!8217428))

(assert (=> b!7753439 m!8217548))

(assert (=> b!7753439 m!8217548))

(assert (=> b!7753439 m!8217550))

(assert (=> b!7753433 m!8217428))

(assert (=> b!7753433 m!8217552))

(assert (=> b!7753433 m!8217552))

(declare-fun m!8217868 () Bool)

(assert (=> b!7753433 m!8217868))

(assert (=> b!7753433 m!8217428))

(assert (=> b!7753433 m!8217548))

(assert (=> b!7753433 m!8217868))

(assert (=> b!7753433 m!8217548))

(declare-fun m!8217870 () Bool)

(assert (=> b!7753433 m!8217870))

(assert (=> b!7753434 m!8217428))

(assert (=> b!7753434 m!8217552))

(declare-fun m!8217872 () Bool)

(assert (=> b!7753435 m!8217872))

(assert (=> b!7753436 m!8217428))

(assert (=> b!7753436 m!8217548))

(assert (=> b!7753436 m!8217548))

(assert (=> b!7753436 m!8217550))

(assert (=> b!7753445 m!8217428))

(assert (=> b!7753445 m!8217552))

(assert (=> d!2342923 d!2343041))

(assert (=> d!2342923 d!2342931))

(declare-fun d!2343043 () Bool)

(assert (=> d!2343043 (matchR!10112 (Concat!29467 lt!2669536 lt!2669535) (++!17803 (t!388202 s1!4391) s2!3963))))

(assert (=> d!2343043 true))

(declare-fun _$119!535 () Unit!168328)

(assert (=> d!2343043 (= (choose!59432 lt!2669536 lt!2669535 (t!388202 s1!4391) s2!3963) _$119!535)))

(declare-fun bs!1965843 () Bool)

(assert (= bs!1965843 d!2343043))

(assert (=> bs!1965843 m!8217428))

(assert (=> bs!1965843 m!8217428))

(assert (=> bs!1965843 m!8217514))

(assert (=> d!2342923 d!2343043))

(assert (=> d!2342923 d!2342939))

(assert (=> b!7752900 d!2343001))

(assert (=> b!7752932 d!2342979))

(assert (=> b!7752964 d!2343039))

(assert (=> b!7752964 d!2342965))

(declare-fun b!7753447 () Bool)

(declare-fun e!4596163 () Bool)

(declare-fun e!4596160 () Bool)

(assert (=> b!7753447 (= e!4596163 e!4596160)))

(declare-fun c!1430049 () Bool)

(assert (=> b!7753447 (= c!1430049 (is-Star!20622 lt!2669575))))

(declare-fun b!7753448 () Bool)

(declare-fun res!3091474 () Bool)

(declare-fun e!4596162 () Bool)

(assert (=> b!7753448 (=> res!3091474 e!4596162)))

(assert (=> b!7753448 (= res!3091474 (not (is-Concat!29467 lt!2669575)))))

(declare-fun e!4596165 () Bool)

(assert (=> b!7753448 (= e!4596165 e!4596162)))

(declare-fun call!718736 () Bool)

(declare-fun c!1430050 () Bool)

(declare-fun bm!718730 () Bool)

(assert (=> bm!718730 (= call!718736 (validRegex!11040 (ite c!1430049 (reg!20951 lt!2669575) (ite c!1430050 (regOne!41757 lt!2669575) (regOne!41756 lt!2669575)))))))

(declare-fun bm!718731 () Bool)

(declare-fun call!718737 () Bool)

(assert (=> bm!718731 (= call!718737 (validRegex!11040 (ite c!1430050 (regTwo!41757 lt!2669575) (regTwo!41756 lt!2669575))))))

(declare-fun d!2343045 () Bool)

(declare-fun res!3091476 () Bool)

(assert (=> d!2343045 (=> res!3091476 e!4596163)))

(assert (=> d!2343045 (= res!3091476 (is-ElementMatch!20622 lt!2669575))))

(assert (=> d!2343045 (= (validRegex!11040 lt!2669575) e!4596163)))

(declare-fun b!7753449 () Bool)

(declare-fun e!4596161 () Bool)

(assert (=> b!7753449 (= e!4596161 call!718736)))

(declare-fun b!7753450 () Bool)

(declare-fun e!4596164 () Bool)

(assert (=> b!7753450 (= e!4596164 call!718737)))

(declare-fun b!7753451 () Bool)

(assert (=> b!7753451 (= e!4596160 e!4596161)))

(declare-fun res!3091472 () Bool)

(assert (=> b!7753451 (= res!3091472 (not (nullable!9083 (reg!20951 lt!2669575))))))

(assert (=> b!7753451 (=> (not res!3091472) (not e!4596161))))

(declare-fun b!7753452 () Bool)

(declare-fun res!3091475 () Bool)

(declare-fun e!4596159 () Bool)

(assert (=> b!7753452 (=> (not res!3091475) (not e!4596159))))

(declare-fun call!718735 () Bool)

(assert (=> b!7753452 (= res!3091475 call!718735)))

(assert (=> b!7753452 (= e!4596165 e!4596159)))

(declare-fun b!7753453 () Bool)

(assert (=> b!7753453 (= e!4596160 e!4596165)))

(assert (=> b!7753453 (= c!1430050 (is-Union!20622 lt!2669575))))

(declare-fun b!7753454 () Bool)

(assert (=> b!7753454 (= e!4596162 e!4596164)))

(declare-fun res!3091473 () Bool)

(assert (=> b!7753454 (=> (not res!3091473) (not e!4596164))))

(assert (=> b!7753454 (= res!3091473 call!718735)))

(declare-fun bm!718732 () Bool)

(assert (=> bm!718732 (= call!718735 call!718736)))

(declare-fun b!7753455 () Bool)

(assert (=> b!7753455 (= e!4596159 call!718737)))

(assert (= (and d!2343045 (not res!3091476)) b!7753447))

(assert (= (and b!7753447 c!1430049) b!7753451))

(assert (= (and b!7753447 (not c!1430049)) b!7753453))

(assert (= (and b!7753451 res!3091472) b!7753449))

(assert (= (and b!7753453 c!1430050) b!7753452))

(assert (= (and b!7753453 (not c!1430050)) b!7753448))

(assert (= (and b!7753452 res!3091475) b!7753455))

(assert (= (and b!7753448 (not res!3091474)) b!7753454))

(assert (= (and b!7753454 res!3091473) b!7753450))

(assert (= (or b!7753452 b!7753454) bm!718732))

(assert (= (or b!7753455 b!7753450) bm!718731))

(assert (= (or b!7753449 bm!718732) bm!718730))

(declare-fun m!8217874 () Bool)

(assert (=> bm!718730 m!8217874))

(declare-fun m!8217876 () Bool)

(assert (=> bm!718731 m!8217876))

(declare-fun m!8217878 () Bool)

(assert (=> b!7753451 m!8217878))

(assert (=> d!2342935 d!2343045))

(assert (=> d!2342935 d!2342917))

(assert (=> b!7752847 d!2343029))

(assert (=> b!7752934 d!2343035))

(assert (=> b!7752934 d!2342981))

(assert (=> d!2342913 d!2342989))

(assert (=> d!2342913 d!2342995))

(declare-fun d!2343047 () Bool)

(declare-fun lt!2669603 () Int)

(assert (=> d!2343047 (>= lt!2669603 0)))

(declare-fun e!4596166 () Int)

(assert (=> d!2343047 (= lt!2669603 e!4596166)))

(declare-fun c!1430051 () Bool)

(assert (=> d!2343047 (= c!1430051 (is-Nil!73343 lt!2669566))))

(assert (=> d!2343047 (= (size!42655 lt!2669566) lt!2669603)))

(declare-fun b!7753456 () Bool)

(assert (=> b!7753456 (= e!4596166 0)))

(declare-fun b!7753457 () Bool)

(assert (=> b!7753457 (= e!4596166 (+ 1 (size!42655 (t!388202 lt!2669566))))))

(assert (= (and d!2343047 c!1430051) b!7753456))

(assert (= (and d!2343047 (not c!1430051)) b!7753457))

(declare-fun m!8217880 () Bool)

(assert (=> b!7753457 m!8217880))

(assert (=> b!7752915 d!2343047))

(declare-fun d!2343049 () Bool)

(declare-fun lt!2669604 () Int)

(assert (=> d!2343049 (>= lt!2669604 0)))

(declare-fun e!4596167 () Int)

(assert (=> d!2343049 (= lt!2669604 e!4596167)))

(declare-fun c!1430052 () Bool)

(assert (=> d!2343049 (= c!1430052 (is-Nil!73343 s1!4391))))

(assert (=> d!2343049 (= (size!42655 s1!4391) lt!2669604)))

(declare-fun b!7753458 () Bool)

(assert (=> b!7753458 (= e!4596167 0)))

(declare-fun b!7753459 () Bool)

(assert (=> b!7753459 (= e!4596167 (+ 1 (size!42655 (t!388202 s1!4391))))))

(assert (= (and d!2343049 c!1430052) b!7753458))

(assert (= (and d!2343049 (not c!1430052)) b!7753459))

(assert (=> b!7753459 m!8217568))

(assert (=> b!7752915 d!2343049))

(assert (=> b!7752915 d!2343009))

(assert (=> b!7752962 d!2342963))

(declare-fun d!2343051 () Bool)

(assert (=> d!2343051 (= (isEmpty!42030 (tail!15379 (t!388202 s1!4391))) (is-Nil!73343 (tail!15379 (t!388202 s1!4391))))))

(assert (=> b!7752894 d!2343051))

(assert (=> b!7752894 d!2343003))

(declare-fun b!7753460 () Bool)

(declare-fun e!4596170 () Regex!20622)

(assert (=> b!7753460 (= e!4596170 (ite (= (h!79791 s1!4391) (c!1429881 (ite c!1429944 (regTwo!41757 r!25892) (ite c!1429941 (reg!20951 r!25892) (regOne!41756 r!25892))))) EmptyExpr!20622 EmptyLang!20622))))

(declare-fun c!1430056 () Bool)

(declare-fun b!7753462 () Bool)

(assert (=> b!7753462 (= c!1430056 (is-Union!20622 (ite c!1429944 (regTwo!41757 r!25892) (ite c!1429941 (reg!20951 r!25892) (regOne!41756 r!25892)))))))

(declare-fun e!4596172 () Regex!20622)

(assert (=> b!7753462 (= e!4596170 e!4596172)))

(declare-fun b!7753463 () Bool)

(declare-fun e!4596168 () Regex!20622)

(assert (=> b!7753463 (= e!4596172 e!4596168)))

(declare-fun c!1430053 () Bool)

(assert (=> b!7753463 (= c!1430053 (is-Star!20622 (ite c!1429944 (regTwo!41757 r!25892) (ite c!1429941 (reg!20951 r!25892) (regOne!41756 r!25892)))))))

(declare-fun bm!718733 () Bool)

(declare-fun call!718741 () Regex!20622)

(declare-fun call!718738 () Regex!20622)

(assert (=> bm!718733 (= call!718741 call!718738)))

(declare-fun c!1430057 () Bool)

(declare-fun b!7753464 () Bool)

(assert (=> b!7753464 (= c!1430057 (nullable!9083 (regOne!41756 (ite c!1429944 (regTwo!41757 r!25892) (ite c!1429941 (reg!20951 r!25892) (regOne!41756 r!25892))))))))

(declare-fun e!4596171 () Regex!20622)

(assert (=> b!7753464 (= e!4596168 e!4596171)))

(declare-fun b!7753465 () Bool)

(declare-fun e!4596169 () Regex!20622)

(assert (=> b!7753465 (= e!4596169 EmptyLang!20622)))

(declare-fun b!7753466 () Bool)

(assert (=> b!7753466 (= e!4596169 e!4596170)))

(declare-fun c!1430055 () Bool)

(assert (=> b!7753466 (= c!1430055 (is-ElementMatch!20622 (ite c!1429944 (regTwo!41757 r!25892) (ite c!1429941 (reg!20951 r!25892) (regOne!41756 r!25892)))))))

(declare-fun bm!718734 () Bool)

(assert (=> bm!718734 (= call!718738 (derivativeStep!6043 (ite c!1430056 (regTwo!41757 (ite c!1429944 (regTwo!41757 r!25892) (ite c!1429941 (reg!20951 r!25892) (regOne!41756 r!25892)))) (ite c!1430053 (reg!20951 (ite c!1429944 (regTwo!41757 r!25892) (ite c!1429941 (reg!20951 r!25892) (regOne!41756 r!25892)))) (regOne!41756 (ite c!1429944 (regTwo!41757 r!25892) (ite c!1429941 (reg!20951 r!25892) (regOne!41756 r!25892)))))) (h!79791 s1!4391)))))

(declare-fun b!7753467 () Bool)

(assert (=> b!7753467 (= e!4596168 (Concat!29467 call!718741 (ite c!1429944 (regTwo!41757 r!25892) (ite c!1429941 (reg!20951 r!25892) (regOne!41756 r!25892)))))))

(declare-fun b!7753461 () Bool)

(declare-fun call!718739 () Regex!20622)

(assert (=> b!7753461 (= e!4596172 (Union!20622 call!718739 call!718738))))

(declare-fun d!2343053 () Bool)

(declare-fun lt!2669605 () Regex!20622)

(assert (=> d!2343053 (validRegex!11040 lt!2669605)))

(assert (=> d!2343053 (= lt!2669605 e!4596169)))

(declare-fun c!1430054 () Bool)

(assert (=> d!2343053 (= c!1430054 (or (is-EmptyExpr!20622 (ite c!1429944 (regTwo!41757 r!25892) (ite c!1429941 (reg!20951 r!25892) (regOne!41756 r!25892)))) (is-EmptyLang!20622 (ite c!1429944 (regTwo!41757 r!25892) (ite c!1429941 (reg!20951 r!25892) (regOne!41756 r!25892))))))))

(assert (=> d!2343053 (validRegex!11040 (ite c!1429944 (regTwo!41757 r!25892) (ite c!1429941 (reg!20951 r!25892) (regOne!41756 r!25892))))))

(assert (=> d!2343053 (= (derivativeStep!6043 (ite c!1429944 (regTwo!41757 r!25892) (ite c!1429941 (reg!20951 r!25892) (regOne!41756 r!25892))) (h!79791 s1!4391)) lt!2669605)))

(declare-fun b!7753468 () Bool)

(declare-fun call!718740 () Regex!20622)

(assert (=> b!7753468 (= e!4596171 (Union!20622 (Concat!29467 call!718740 (regTwo!41756 (ite c!1429944 (regTwo!41757 r!25892) (ite c!1429941 (reg!20951 r!25892) (regOne!41756 r!25892))))) call!718739))))

(declare-fun bm!718735 () Bool)

(assert (=> bm!718735 (= call!718739 (derivativeStep!6043 (ite c!1430056 (regOne!41757 (ite c!1429944 (regTwo!41757 r!25892) (ite c!1429941 (reg!20951 r!25892) (regOne!41756 r!25892)))) (regTwo!41756 (ite c!1429944 (regTwo!41757 r!25892) (ite c!1429941 (reg!20951 r!25892) (regOne!41756 r!25892))))) (h!79791 s1!4391)))))

(declare-fun b!7753469 () Bool)

(assert (=> b!7753469 (= e!4596171 (Union!20622 (Concat!29467 call!718740 (regTwo!41756 (ite c!1429944 (regTwo!41757 r!25892) (ite c!1429941 (reg!20951 r!25892) (regOne!41756 r!25892))))) EmptyLang!20622))))

(declare-fun bm!718736 () Bool)

(assert (=> bm!718736 (= call!718740 call!718741)))

(assert (= (and d!2343053 c!1430054) b!7753465))

(assert (= (and d!2343053 (not c!1430054)) b!7753466))

(assert (= (and b!7753466 c!1430055) b!7753460))

(assert (= (and b!7753466 (not c!1430055)) b!7753462))

(assert (= (and b!7753462 c!1430056) b!7753461))

(assert (= (and b!7753462 (not c!1430056)) b!7753463))

(assert (= (and b!7753463 c!1430053) b!7753467))

(assert (= (and b!7753463 (not c!1430053)) b!7753464))

(assert (= (and b!7753464 c!1430057) b!7753468))

(assert (= (and b!7753464 (not c!1430057)) b!7753469))

(assert (= (or b!7753468 b!7753469) bm!718736))

(assert (= (or b!7753467 bm!718736) bm!718733))

(assert (= (or b!7753461 bm!718733) bm!718734))

(assert (= (or b!7753461 b!7753468) bm!718735))

(declare-fun m!8217882 () Bool)

(assert (=> b!7753464 m!8217882))

(declare-fun m!8217884 () Bool)

(assert (=> bm!718734 m!8217884))

(declare-fun m!8217886 () Bool)

(assert (=> d!2343053 m!8217886))

(declare-fun m!8217888 () Bool)

(assert (=> d!2343053 m!8217888))

(declare-fun m!8217890 () Bool)

(assert (=> bm!718735 m!8217890))

(assert (=> bm!718648 d!2343053))

(declare-fun d!2343055 () Bool)

(assert (=> d!2343055 (= (isEmpty!42030 (tail!15379 s1!4391)) (is-Nil!73343 (tail!15379 s1!4391)))))

(assert (=> b!7752841 d!2343055))

(assert (=> b!7752841 d!2343031))

(declare-fun d!2343057 () Bool)

(assert (=> d!2343057 (= (isEmpty!42030 (++!17803 s1!4391 s2!3963)) (is-Nil!73343 (++!17803 s1!4391 s2!3963)))))

(assert (=> bm!718629 d!2343057))

(assert (=> b!7752891 d!2343051))

(assert (=> b!7752891 d!2343003))

(assert (=> b!7752919 d!2342983))

(assert (=> b!7752836 d!2343029))

(assert (=> b!7752889 d!2343001))

(declare-fun b!7753470 () Bool)

(declare-fun e!4596175 () Bool)

(assert (=> b!7753470 (= e!4596175 (matchR!10112 (derivativeStep!6043 (derivativeStep!6043 lt!2669535 (head!15839 (++!17803 s1!4391 s2!3963))) (head!15839 (tail!15379 (++!17803 s1!4391 s2!3963)))) (tail!15379 (tail!15379 (++!17803 s1!4391 s2!3963)))))))

(declare-fun b!7753471 () Bool)

(declare-fun e!4596176 () Bool)

(assert (=> b!7753471 (= e!4596176 (not (= (head!15839 (tail!15379 (++!17803 s1!4391 s2!3963))) (c!1429881 (derivativeStep!6043 lt!2669535 (head!15839 (++!17803 s1!4391 s2!3963)))))))))

(declare-fun b!7753472 () Bool)

(assert (=> b!7753472 (= e!4596175 (nullable!9083 (derivativeStep!6043 lt!2669535 (head!15839 (++!17803 s1!4391 s2!3963)))))))

(declare-fun b!7753473 () Bool)

(declare-fun res!3091478 () Bool)

(assert (=> b!7753473 (=> res!3091478 e!4596176)))

(assert (=> b!7753473 (= res!3091478 (not (isEmpty!42030 (tail!15379 (tail!15379 (++!17803 s1!4391 s2!3963))))))))

(declare-fun b!7753474 () Bool)

(declare-fun e!4596179 () Bool)

(assert (=> b!7753474 (= e!4596179 e!4596176)))

(declare-fun res!3091480 () Bool)

(assert (=> b!7753474 (=> res!3091480 e!4596176)))

(declare-fun call!718742 () Bool)

(assert (=> b!7753474 (= res!3091480 call!718742)))

(declare-fun d!2343059 () Bool)

(declare-fun e!4596174 () Bool)

(assert (=> d!2343059 e!4596174))

(declare-fun c!1430060 () Bool)

(assert (=> d!2343059 (= c!1430060 (is-EmptyExpr!20622 (derivativeStep!6043 lt!2669535 (head!15839 (++!17803 s1!4391 s2!3963)))))))

(declare-fun lt!2669606 () Bool)

(assert (=> d!2343059 (= lt!2669606 e!4596175)))

(declare-fun c!1430058 () Bool)

(assert (=> d!2343059 (= c!1430058 (isEmpty!42030 (tail!15379 (++!17803 s1!4391 s2!3963))))))

(assert (=> d!2343059 (validRegex!11040 (derivativeStep!6043 lt!2669535 (head!15839 (++!17803 s1!4391 s2!3963))))))

(assert (=> d!2343059 (= (matchR!10112 (derivativeStep!6043 lt!2669535 (head!15839 (++!17803 s1!4391 s2!3963))) (tail!15379 (++!17803 s1!4391 s2!3963))) lt!2669606)))

(declare-fun b!7753475 () Bool)

(declare-fun res!3091481 () Bool)

(declare-fun e!4596177 () Bool)

(assert (=> b!7753475 (=> res!3091481 e!4596177)))

(assert (=> b!7753475 (= res!3091481 (not (is-ElementMatch!20622 (derivativeStep!6043 lt!2669535 (head!15839 (++!17803 s1!4391 s2!3963))))))))

(declare-fun e!4596178 () Bool)

(assert (=> b!7753475 (= e!4596178 e!4596177)))

(declare-fun bm!718737 () Bool)

(assert (=> bm!718737 (= call!718742 (isEmpty!42030 (tail!15379 (++!17803 s1!4391 s2!3963))))))

(declare-fun b!7753476 () Bool)

(declare-fun res!3091479 () Bool)

(declare-fun e!4596173 () Bool)

(assert (=> b!7753476 (=> (not res!3091479) (not e!4596173))))

(assert (=> b!7753476 (= res!3091479 (isEmpty!42030 (tail!15379 (tail!15379 (++!17803 s1!4391 s2!3963)))))))

(declare-fun b!7753477 () Bool)

(declare-fun res!3091482 () Bool)

(assert (=> b!7753477 (=> (not res!3091482) (not e!4596173))))

(assert (=> b!7753477 (= res!3091482 (not call!718742))))

(declare-fun b!7753478 () Bool)

(assert (=> b!7753478 (= e!4596178 (not lt!2669606))))

(declare-fun b!7753479 () Bool)

(assert (=> b!7753479 (= e!4596177 e!4596179)))

(declare-fun res!3091484 () Bool)

(assert (=> b!7753479 (=> (not res!3091484) (not e!4596179))))

(assert (=> b!7753479 (= res!3091484 (not lt!2669606))))

(declare-fun b!7753480 () Bool)

(assert (=> b!7753480 (= e!4596174 e!4596178)))

(declare-fun c!1430059 () Bool)

(assert (=> b!7753480 (= c!1430059 (is-EmptyLang!20622 (derivativeStep!6043 lt!2669535 (head!15839 (++!17803 s1!4391 s2!3963)))))))

(declare-fun b!7753481 () Bool)

(declare-fun res!3091477 () Bool)

(assert (=> b!7753481 (=> res!3091477 e!4596177)))

(assert (=> b!7753481 (= res!3091477 e!4596173)))

(declare-fun res!3091483 () Bool)

(assert (=> b!7753481 (=> (not res!3091483) (not e!4596173))))

(assert (=> b!7753481 (= res!3091483 lt!2669606)))

(declare-fun b!7753482 () Bool)

(assert (=> b!7753482 (= e!4596173 (= (head!15839 (tail!15379 (++!17803 s1!4391 s2!3963))) (c!1429881 (derivativeStep!6043 lt!2669535 (head!15839 (++!17803 s1!4391 s2!3963))))))))

(declare-fun b!7753483 () Bool)

(assert (=> b!7753483 (= e!4596174 (= lt!2669606 call!718742))))

(assert (= (and d!2343059 c!1430058) b!7753472))

(assert (= (and d!2343059 (not c!1430058)) b!7753470))

(assert (= (and d!2343059 c!1430060) b!7753483))

(assert (= (and d!2343059 (not c!1430060)) b!7753480))

(assert (= (and b!7753480 c!1430059) b!7753478))

(assert (= (and b!7753480 (not c!1430059)) b!7753475))

(assert (= (and b!7753475 (not res!3091481)) b!7753481))

(assert (= (and b!7753481 res!3091483) b!7753477))

(assert (= (and b!7753477 res!3091482) b!7753476))

(assert (= (and b!7753476 res!3091479) b!7753482))

(assert (= (and b!7753481 (not res!3091477)) b!7753479))

(assert (= (and b!7753479 res!3091484) b!7753474))

(assert (= (and b!7753474 (not res!3091480)) b!7753473))

(assert (= (and b!7753473 (not res!3091478)) b!7753471))

(assert (= (or b!7753483 b!7753474 b!7753477) bm!718737))

(assert (=> d!2343059 m!8217532))

(assert (=> d!2343059 m!8217534))

(assert (=> d!2343059 m!8217538))

(declare-fun m!8217892 () Bool)

(assert (=> d!2343059 m!8217892))

(assert (=> bm!718737 m!8217532))

(assert (=> bm!718737 m!8217534))

(assert (=> b!7753476 m!8217532))

(declare-fun m!8217894 () Bool)

(assert (=> b!7753476 m!8217894))

(assert (=> b!7753476 m!8217894))

(declare-fun m!8217896 () Bool)

(assert (=> b!7753476 m!8217896))

(assert (=> b!7753470 m!8217532))

(declare-fun m!8217898 () Bool)

(assert (=> b!7753470 m!8217898))

(assert (=> b!7753470 m!8217538))

(assert (=> b!7753470 m!8217898))

(declare-fun m!8217900 () Bool)

(assert (=> b!7753470 m!8217900))

(assert (=> b!7753470 m!8217532))

(assert (=> b!7753470 m!8217894))

(assert (=> b!7753470 m!8217900))

(assert (=> b!7753470 m!8217894))

(declare-fun m!8217902 () Bool)

(assert (=> b!7753470 m!8217902))

(assert (=> b!7753471 m!8217532))

(assert (=> b!7753471 m!8217898))

(assert (=> b!7753472 m!8217538))

(declare-fun m!8217904 () Bool)

(assert (=> b!7753472 m!8217904))

(assert (=> b!7753473 m!8217532))

(assert (=> b!7753473 m!8217894))

(assert (=> b!7753473 m!8217894))

(assert (=> b!7753473 m!8217896))

(assert (=> b!7753482 m!8217532))

(assert (=> b!7753482 m!8217898))

(assert (=> b!7752917 d!2343059))

(declare-fun b!7753484 () Bool)

(declare-fun e!4596182 () Regex!20622)

(assert (=> b!7753484 (= e!4596182 (ite (= (head!15839 (++!17803 s1!4391 s2!3963)) (c!1429881 lt!2669535)) EmptyExpr!20622 EmptyLang!20622))))

(declare-fun b!7753486 () Bool)

(declare-fun c!1430064 () Bool)

(assert (=> b!7753486 (= c!1430064 (is-Union!20622 lt!2669535))))

(declare-fun e!4596184 () Regex!20622)

(assert (=> b!7753486 (= e!4596182 e!4596184)))

(declare-fun b!7753487 () Bool)

(declare-fun e!4596180 () Regex!20622)

(assert (=> b!7753487 (= e!4596184 e!4596180)))

(declare-fun c!1430061 () Bool)

(assert (=> b!7753487 (= c!1430061 (is-Star!20622 lt!2669535))))

(declare-fun bm!718738 () Bool)

(declare-fun call!718746 () Regex!20622)

(declare-fun call!718743 () Regex!20622)

(assert (=> bm!718738 (= call!718746 call!718743)))

(declare-fun b!7753488 () Bool)

(declare-fun c!1430065 () Bool)

(assert (=> b!7753488 (= c!1430065 (nullable!9083 (regOne!41756 lt!2669535)))))

(declare-fun e!4596183 () Regex!20622)

(assert (=> b!7753488 (= e!4596180 e!4596183)))

(declare-fun b!7753489 () Bool)

(declare-fun e!4596181 () Regex!20622)

(assert (=> b!7753489 (= e!4596181 EmptyLang!20622)))

(declare-fun b!7753490 () Bool)

(assert (=> b!7753490 (= e!4596181 e!4596182)))

(declare-fun c!1430063 () Bool)

(assert (=> b!7753490 (= c!1430063 (is-ElementMatch!20622 lt!2669535))))

(declare-fun bm!718739 () Bool)

(assert (=> bm!718739 (= call!718743 (derivativeStep!6043 (ite c!1430064 (regTwo!41757 lt!2669535) (ite c!1430061 (reg!20951 lt!2669535) (regOne!41756 lt!2669535))) (head!15839 (++!17803 s1!4391 s2!3963))))))

(declare-fun b!7753491 () Bool)

(assert (=> b!7753491 (= e!4596180 (Concat!29467 call!718746 lt!2669535))))

(declare-fun b!7753485 () Bool)

(declare-fun call!718744 () Regex!20622)

(assert (=> b!7753485 (= e!4596184 (Union!20622 call!718744 call!718743))))

(declare-fun d!2343061 () Bool)

(declare-fun lt!2669607 () Regex!20622)

(assert (=> d!2343061 (validRegex!11040 lt!2669607)))

(assert (=> d!2343061 (= lt!2669607 e!4596181)))

(declare-fun c!1430062 () Bool)

(assert (=> d!2343061 (= c!1430062 (or (is-EmptyExpr!20622 lt!2669535) (is-EmptyLang!20622 lt!2669535)))))

(assert (=> d!2343061 (validRegex!11040 lt!2669535)))

(assert (=> d!2343061 (= (derivativeStep!6043 lt!2669535 (head!15839 (++!17803 s1!4391 s2!3963))) lt!2669607)))

(declare-fun b!7753492 () Bool)

(declare-fun call!718745 () Regex!20622)

(assert (=> b!7753492 (= e!4596183 (Union!20622 (Concat!29467 call!718745 (regTwo!41756 lt!2669535)) call!718744))))

(declare-fun bm!718740 () Bool)

(assert (=> bm!718740 (= call!718744 (derivativeStep!6043 (ite c!1430064 (regOne!41757 lt!2669535) (regTwo!41756 lt!2669535)) (head!15839 (++!17803 s1!4391 s2!3963))))))

(declare-fun b!7753493 () Bool)

(assert (=> b!7753493 (= e!4596183 (Union!20622 (Concat!29467 call!718745 (regTwo!41756 lt!2669535)) EmptyLang!20622))))

(declare-fun bm!718741 () Bool)

(assert (=> bm!718741 (= call!718745 call!718746)))

(assert (= (and d!2343061 c!1430062) b!7753489))

(assert (= (and d!2343061 (not c!1430062)) b!7753490))

(assert (= (and b!7753490 c!1430063) b!7753484))

(assert (= (and b!7753490 (not c!1430063)) b!7753486))

(assert (= (and b!7753486 c!1430064) b!7753485))

(assert (= (and b!7753486 (not c!1430064)) b!7753487))

(assert (= (and b!7753487 c!1430061) b!7753491))

(assert (= (and b!7753487 (not c!1430061)) b!7753488))

(assert (= (and b!7753488 c!1430065) b!7753492))

(assert (= (and b!7753488 (not c!1430065)) b!7753493))

(assert (= (or b!7753492 b!7753493) bm!718741))

(assert (= (or b!7753491 bm!718741) bm!718738))

(assert (= (or b!7753485 bm!718738) bm!718739))

(assert (= (or b!7753485 b!7753492) bm!718740))

(assert (=> b!7753488 m!8217582))

(assert (=> bm!718739 m!8217536))

(declare-fun m!8217906 () Bool)

(assert (=> bm!718739 m!8217906))

(declare-fun m!8217908 () Bool)

(assert (=> d!2343061 m!8217908))

(assert (=> d!2343061 m!8217420))

(assert (=> bm!718740 m!8217536))

(declare-fun m!8217910 () Bool)

(assert (=> bm!718740 m!8217910))

(assert (=> b!7752917 d!2343061))

(assert (=> b!7752917 d!2343021))

(assert (=> b!7752917 d!2342973))

(assert (=> d!2342927 d!2343057))

(assert (=> d!2342927 d!2342917))

(assert (=> b!7752838 d!2343055))

(assert (=> b!7752838 d!2343031))

(declare-fun b!7753494 () Bool)

(declare-fun e!4596189 () Bool)

(declare-fun e!4596186 () Bool)

(assert (=> b!7753494 (= e!4596189 e!4596186)))

(declare-fun c!1430066 () Bool)

(assert (=> b!7753494 (= c!1430066 (is-Star!20622 (ite c!1429900 (regTwo!41757 lt!2669535) (regTwo!41756 lt!2669535))))))

(declare-fun b!7753495 () Bool)

(declare-fun res!3091487 () Bool)

(declare-fun e!4596188 () Bool)

(assert (=> b!7753495 (=> res!3091487 e!4596188)))

(assert (=> b!7753495 (= res!3091487 (not (is-Concat!29467 (ite c!1429900 (regTwo!41757 lt!2669535) (regTwo!41756 lt!2669535)))))))

(declare-fun e!4596191 () Bool)

(assert (=> b!7753495 (= e!4596191 e!4596188)))

(declare-fun c!1430067 () Bool)

(declare-fun bm!718742 () Bool)

(declare-fun call!718748 () Bool)

(assert (=> bm!718742 (= call!718748 (validRegex!11040 (ite c!1430066 (reg!20951 (ite c!1429900 (regTwo!41757 lt!2669535) (regTwo!41756 lt!2669535))) (ite c!1430067 (regOne!41757 (ite c!1429900 (regTwo!41757 lt!2669535) (regTwo!41756 lt!2669535))) (regOne!41756 (ite c!1429900 (regTwo!41757 lt!2669535) (regTwo!41756 lt!2669535)))))))))

(declare-fun call!718749 () Bool)

(declare-fun bm!718743 () Bool)

(assert (=> bm!718743 (= call!718749 (validRegex!11040 (ite c!1430067 (regTwo!41757 (ite c!1429900 (regTwo!41757 lt!2669535) (regTwo!41756 lt!2669535))) (regTwo!41756 (ite c!1429900 (regTwo!41757 lt!2669535) (regTwo!41756 lt!2669535))))))))

(declare-fun d!2343063 () Bool)

(declare-fun res!3091489 () Bool)

(assert (=> d!2343063 (=> res!3091489 e!4596189)))

(assert (=> d!2343063 (= res!3091489 (is-ElementMatch!20622 (ite c!1429900 (regTwo!41757 lt!2669535) (regTwo!41756 lt!2669535))))))

(assert (=> d!2343063 (= (validRegex!11040 (ite c!1429900 (regTwo!41757 lt!2669535) (regTwo!41756 lt!2669535))) e!4596189)))

(declare-fun b!7753496 () Bool)

(declare-fun e!4596187 () Bool)

(assert (=> b!7753496 (= e!4596187 call!718748)))

(declare-fun b!7753497 () Bool)

(declare-fun e!4596190 () Bool)

(assert (=> b!7753497 (= e!4596190 call!718749)))

(declare-fun b!7753498 () Bool)

(assert (=> b!7753498 (= e!4596186 e!4596187)))

(declare-fun res!3091485 () Bool)

(assert (=> b!7753498 (= res!3091485 (not (nullable!9083 (reg!20951 (ite c!1429900 (regTwo!41757 lt!2669535) (regTwo!41756 lt!2669535))))))))

(assert (=> b!7753498 (=> (not res!3091485) (not e!4596187))))

(declare-fun b!7753499 () Bool)

(declare-fun res!3091488 () Bool)

(declare-fun e!4596185 () Bool)

(assert (=> b!7753499 (=> (not res!3091488) (not e!4596185))))

(declare-fun call!718747 () Bool)

(assert (=> b!7753499 (= res!3091488 call!718747)))

(assert (=> b!7753499 (= e!4596191 e!4596185)))

(declare-fun b!7753500 () Bool)

(assert (=> b!7753500 (= e!4596186 e!4596191)))

(assert (=> b!7753500 (= c!1430067 (is-Union!20622 (ite c!1429900 (regTwo!41757 lt!2669535) (regTwo!41756 lt!2669535))))))

(declare-fun b!7753501 () Bool)

(assert (=> b!7753501 (= e!4596188 e!4596190)))

(declare-fun res!3091486 () Bool)

(assert (=> b!7753501 (=> (not res!3091486) (not e!4596190))))

(assert (=> b!7753501 (= res!3091486 call!718747)))

(declare-fun bm!718744 () Bool)

(assert (=> bm!718744 (= call!718747 call!718748)))

(declare-fun b!7753502 () Bool)

(assert (=> b!7753502 (= e!4596185 call!718749)))

(assert (= (and d!2343063 (not res!3091489)) b!7753494))

(assert (= (and b!7753494 c!1430066) b!7753498))

(assert (= (and b!7753494 (not c!1430066)) b!7753500))

(assert (= (and b!7753498 res!3091485) b!7753496))

(assert (= (and b!7753500 c!1430067) b!7753499))

(assert (= (and b!7753500 (not c!1430067)) b!7753495))

(assert (= (and b!7753499 res!3091488) b!7753502))

(assert (= (and b!7753495 (not res!3091487)) b!7753501))

(assert (= (and b!7753501 res!3091486) b!7753497))

(assert (= (or b!7753499 b!7753501) bm!718744))

(assert (= (or b!7753502 b!7753497) bm!718743))

(assert (= (or b!7753496 bm!718744) bm!718742))

(declare-fun m!8217912 () Bool)

(assert (=> bm!718742 m!8217912))

(declare-fun m!8217914 () Bool)

(assert (=> bm!718743 m!8217914))

(declare-fun m!8217916 () Bool)

(assert (=> b!7753498 m!8217916))

(assert (=> bm!718626 d!2343063))

(declare-fun e!4596194 () Regex!20622)

(declare-fun b!7753503 () Bool)

(assert (=> b!7753503 (= e!4596194 (ite (= (h!79791 s1!4391) (c!1429881 (ite c!1429936 (regOne!41757 lt!2669535) (regTwo!41756 lt!2669535)))) EmptyExpr!20622 EmptyLang!20622))))

(declare-fun b!7753505 () Bool)

(declare-fun c!1430071 () Bool)

(assert (=> b!7753505 (= c!1430071 (is-Union!20622 (ite c!1429936 (regOne!41757 lt!2669535) (regTwo!41756 lt!2669535))))))

(declare-fun e!4596196 () Regex!20622)

(assert (=> b!7753505 (= e!4596194 e!4596196)))

(declare-fun b!7753506 () Bool)

(declare-fun e!4596192 () Regex!20622)

(assert (=> b!7753506 (= e!4596196 e!4596192)))

(declare-fun c!1430068 () Bool)

(assert (=> b!7753506 (= c!1430068 (is-Star!20622 (ite c!1429936 (regOne!41757 lt!2669535) (regTwo!41756 lt!2669535))))))

(declare-fun bm!718745 () Bool)

(declare-fun call!718753 () Regex!20622)

(declare-fun call!718750 () Regex!20622)

(assert (=> bm!718745 (= call!718753 call!718750)))

(declare-fun b!7753507 () Bool)

(declare-fun c!1430072 () Bool)

(assert (=> b!7753507 (= c!1430072 (nullable!9083 (regOne!41756 (ite c!1429936 (regOne!41757 lt!2669535) (regTwo!41756 lt!2669535)))))))

(declare-fun e!4596195 () Regex!20622)

(assert (=> b!7753507 (= e!4596192 e!4596195)))

(declare-fun b!7753508 () Bool)

(declare-fun e!4596193 () Regex!20622)

(assert (=> b!7753508 (= e!4596193 EmptyLang!20622)))

(declare-fun b!7753509 () Bool)

(assert (=> b!7753509 (= e!4596193 e!4596194)))

(declare-fun c!1430070 () Bool)

(assert (=> b!7753509 (= c!1430070 (is-ElementMatch!20622 (ite c!1429936 (regOne!41757 lt!2669535) (regTwo!41756 lt!2669535))))))

(declare-fun bm!718746 () Bool)

(assert (=> bm!718746 (= call!718750 (derivativeStep!6043 (ite c!1430071 (regTwo!41757 (ite c!1429936 (regOne!41757 lt!2669535) (regTwo!41756 lt!2669535))) (ite c!1430068 (reg!20951 (ite c!1429936 (regOne!41757 lt!2669535) (regTwo!41756 lt!2669535))) (regOne!41756 (ite c!1429936 (regOne!41757 lt!2669535) (regTwo!41756 lt!2669535))))) (h!79791 s1!4391)))))

(declare-fun b!7753510 () Bool)

(assert (=> b!7753510 (= e!4596192 (Concat!29467 call!718753 (ite c!1429936 (regOne!41757 lt!2669535) (regTwo!41756 lt!2669535))))))

(declare-fun b!7753504 () Bool)

(declare-fun call!718751 () Regex!20622)

(assert (=> b!7753504 (= e!4596196 (Union!20622 call!718751 call!718750))))

(declare-fun d!2343065 () Bool)

(declare-fun lt!2669608 () Regex!20622)

(assert (=> d!2343065 (validRegex!11040 lt!2669608)))

(assert (=> d!2343065 (= lt!2669608 e!4596193)))

(declare-fun c!1430069 () Bool)

(assert (=> d!2343065 (= c!1430069 (or (is-EmptyExpr!20622 (ite c!1429936 (regOne!41757 lt!2669535) (regTwo!41756 lt!2669535))) (is-EmptyLang!20622 (ite c!1429936 (regOne!41757 lt!2669535) (regTwo!41756 lt!2669535)))))))

(assert (=> d!2343065 (validRegex!11040 (ite c!1429936 (regOne!41757 lt!2669535) (regTwo!41756 lt!2669535)))))

(assert (=> d!2343065 (= (derivativeStep!6043 (ite c!1429936 (regOne!41757 lt!2669535) (regTwo!41756 lt!2669535)) (h!79791 s1!4391)) lt!2669608)))

(declare-fun call!718752 () Regex!20622)

(declare-fun b!7753511 () Bool)

(assert (=> b!7753511 (= e!4596195 (Union!20622 (Concat!29467 call!718752 (regTwo!41756 (ite c!1429936 (regOne!41757 lt!2669535) (regTwo!41756 lt!2669535)))) call!718751))))

(declare-fun bm!718747 () Bool)

(assert (=> bm!718747 (= call!718751 (derivativeStep!6043 (ite c!1430071 (regOne!41757 (ite c!1429936 (regOne!41757 lt!2669535) (regTwo!41756 lt!2669535))) (regTwo!41756 (ite c!1429936 (regOne!41757 lt!2669535) (regTwo!41756 lt!2669535)))) (h!79791 s1!4391)))))

(declare-fun b!7753512 () Bool)

(assert (=> b!7753512 (= e!4596195 (Union!20622 (Concat!29467 call!718752 (regTwo!41756 (ite c!1429936 (regOne!41757 lt!2669535) (regTwo!41756 lt!2669535)))) EmptyLang!20622))))

(declare-fun bm!718748 () Bool)

(assert (=> bm!718748 (= call!718752 call!718753)))

(assert (= (and d!2343065 c!1430069) b!7753508))

(assert (= (and d!2343065 (not c!1430069)) b!7753509))

(assert (= (and b!7753509 c!1430070) b!7753503))

(assert (= (and b!7753509 (not c!1430070)) b!7753505))

(assert (= (and b!7753505 c!1430071) b!7753504))

(assert (= (and b!7753505 (not c!1430071)) b!7753506))

(assert (= (and b!7753506 c!1430068) b!7753510))

(assert (= (and b!7753506 (not c!1430068)) b!7753507))

(assert (= (and b!7753507 c!1430072) b!7753511))

(assert (= (and b!7753507 (not c!1430072)) b!7753512))

(assert (= (or b!7753511 b!7753512) bm!718748))

(assert (= (or b!7753510 bm!718748) bm!718745))

(assert (= (or b!7753504 bm!718745) bm!718746))

(assert (= (or b!7753504 b!7753511) bm!718747))

(declare-fun m!8217918 () Bool)

(assert (=> b!7753507 m!8217918))

(declare-fun m!8217920 () Bool)

(assert (=> bm!718746 m!8217920))

(declare-fun m!8217922 () Bool)

(assert (=> d!2343065 m!8217922))

(declare-fun m!8217924 () Bool)

(assert (=> d!2343065 m!8217924))

(declare-fun m!8217926 () Bool)

(assert (=> bm!718747 m!8217926))

(assert (=> bm!718644 d!2343065))

(declare-fun b!7753513 () Bool)

(declare-fun e!4596201 () Bool)

(declare-fun e!4596198 () Bool)

(assert (=> b!7753513 (= e!4596201 e!4596198)))

(declare-fun c!1430073 () Bool)

(assert (=> b!7753513 (= c!1430073 (is-Star!20622 (ite c!1429947 (regTwo!41757 lt!2669536) (regTwo!41756 lt!2669536))))))

(declare-fun b!7753514 () Bool)

(declare-fun res!3091492 () Bool)

(declare-fun e!4596200 () Bool)

(assert (=> b!7753514 (=> res!3091492 e!4596200)))

(assert (=> b!7753514 (= res!3091492 (not (is-Concat!29467 (ite c!1429947 (regTwo!41757 lt!2669536) (regTwo!41756 lt!2669536)))))))

(declare-fun e!4596203 () Bool)

(assert (=> b!7753514 (= e!4596203 e!4596200)))

(declare-fun c!1430074 () Bool)

(declare-fun call!718755 () Bool)

(declare-fun bm!718749 () Bool)

(assert (=> bm!718749 (= call!718755 (validRegex!11040 (ite c!1430073 (reg!20951 (ite c!1429947 (regTwo!41757 lt!2669536) (regTwo!41756 lt!2669536))) (ite c!1430074 (regOne!41757 (ite c!1429947 (regTwo!41757 lt!2669536) (regTwo!41756 lt!2669536))) (regOne!41756 (ite c!1429947 (regTwo!41757 lt!2669536) (regTwo!41756 lt!2669536)))))))))

(declare-fun bm!718750 () Bool)

(declare-fun call!718756 () Bool)

(assert (=> bm!718750 (= call!718756 (validRegex!11040 (ite c!1430074 (regTwo!41757 (ite c!1429947 (regTwo!41757 lt!2669536) (regTwo!41756 lt!2669536))) (regTwo!41756 (ite c!1429947 (regTwo!41757 lt!2669536) (regTwo!41756 lt!2669536))))))))

(declare-fun d!2343067 () Bool)

(declare-fun res!3091494 () Bool)

(assert (=> d!2343067 (=> res!3091494 e!4596201)))

(assert (=> d!2343067 (= res!3091494 (is-ElementMatch!20622 (ite c!1429947 (regTwo!41757 lt!2669536) (regTwo!41756 lt!2669536))))))

(assert (=> d!2343067 (= (validRegex!11040 (ite c!1429947 (regTwo!41757 lt!2669536) (regTwo!41756 lt!2669536))) e!4596201)))

(declare-fun b!7753515 () Bool)

(declare-fun e!4596199 () Bool)

(assert (=> b!7753515 (= e!4596199 call!718755)))

(declare-fun b!7753516 () Bool)

(declare-fun e!4596202 () Bool)

(assert (=> b!7753516 (= e!4596202 call!718756)))

(declare-fun b!7753517 () Bool)

(assert (=> b!7753517 (= e!4596198 e!4596199)))

(declare-fun res!3091490 () Bool)

(assert (=> b!7753517 (= res!3091490 (not (nullable!9083 (reg!20951 (ite c!1429947 (regTwo!41757 lt!2669536) (regTwo!41756 lt!2669536))))))))

(assert (=> b!7753517 (=> (not res!3091490) (not e!4596199))))

(declare-fun b!7753518 () Bool)

(declare-fun res!3091493 () Bool)

(declare-fun e!4596197 () Bool)

(assert (=> b!7753518 (=> (not res!3091493) (not e!4596197))))

(declare-fun call!718754 () Bool)

(assert (=> b!7753518 (= res!3091493 call!718754)))

(assert (=> b!7753518 (= e!4596203 e!4596197)))

(declare-fun b!7753519 () Bool)

(assert (=> b!7753519 (= e!4596198 e!4596203)))

(assert (=> b!7753519 (= c!1430074 (is-Union!20622 (ite c!1429947 (regTwo!41757 lt!2669536) (regTwo!41756 lt!2669536))))))

(declare-fun b!7753520 () Bool)

(assert (=> b!7753520 (= e!4596200 e!4596202)))

(declare-fun res!3091491 () Bool)

(assert (=> b!7753520 (=> (not res!3091491) (not e!4596202))))

(assert (=> b!7753520 (= res!3091491 call!718754)))

(declare-fun bm!718751 () Bool)

(assert (=> bm!718751 (= call!718754 call!718755)))

(declare-fun b!7753521 () Bool)

(assert (=> b!7753521 (= e!4596197 call!718756)))

(assert (= (and d!2343067 (not res!3091494)) b!7753513))

(assert (= (and b!7753513 c!1430073) b!7753517))

(assert (= (and b!7753513 (not c!1430073)) b!7753519))

(assert (= (and b!7753517 res!3091490) b!7753515))

(assert (= (and b!7753519 c!1430074) b!7753518))

(assert (= (and b!7753519 (not c!1430074)) b!7753514))

(assert (= (and b!7753518 res!3091493) b!7753521))

(assert (= (and b!7753514 (not res!3091492)) b!7753520))

(assert (= (and b!7753520 res!3091491) b!7753516))

(assert (= (or b!7753518 b!7753520) bm!718751))

(assert (= (or b!7753521 b!7753516) bm!718750))

(assert (= (or b!7753515 bm!718751) bm!718749))

(declare-fun m!8217928 () Bool)

(assert (=> bm!718749 m!8217928))

(declare-fun m!8217930 () Bool)

(assert (=> bm!718750 m!8217930))

(declare-fun m!8217932 () Bool)

(assert (=> b!7753517 m!8217932))

(assert (=> bm!718652 d!2343067))

(declare-fun d!2343069 () Bool)

(declare-fun e!4596204 () Bool)

(assert (=> d!2343069 e!4596204))

(declare-fun res!3091495 () Bool)

(assert (=> d!2343069 (=> (not res!3091495) (not e!4596204))))

(declare-fun lt!2669609 () List!73467)

(assert (=> d!2343069 (= res!3091495 (= (content!15552 lt!2669609) (set.union (content!15552 (t!388202 (t!388202 s1!4391))) (content!15552 s2!3963))))))

(declare-fun e!4596205 () List!73467)

(assert (=> d!2343069 (= lt!2669609 e!4596205)))

(declare-fun c!1430075 () Bool)

(assert (=> d!2343069 (= c!1430075 (is-Nil!73343 (t!388202 (t!388202 s1!4391))))))

(assert (=> d!2343069 (= (++!17803 (t!388202 (t!388202 s1!4391)) s2!3963) lt!2669609)))

(declare-fun b!7753523 () Bool)

(assert (=> b!7753523 (= e!4596205 (Cons!73343 (h!79791 (t!388202 (t!388202 s1!4391))) (++!17803 (t!388202 (t!388202 (t!388202 s1!4391))) s2!3963)))))

(declare-fun b!7753525 () Bool)

(assert (=> b!7753525 (= e!4596204 (or (not (= s2!3963 Nil!73343)) (= lt!2669609 (t!388202 (t!388202 s1!4391)))))))

(declare-fun b!7753522 () Bool)

(assert (=> b!7753522 (= e!4596205 s2!3963)))

(declare-fun b!7753524 () Bool)

(declare-fun res!3091496 () Bool)

(assert (=> b!7753524 (=> (not res!3091496) (not e!4596204))))

(assert (=> b!7753524 (= res!3091496 (= (size!42655 lt!2669609) (+ (size!42655 (t!388202 (t!388202 s1!4391))) (size!42655 s2!3963))))))

(assert (= (and d!2343069 c!1430075) b!7753522))

(assert (= (and d!2343069 (not c!1430075)) b!7753523))

(assert (= (and d!2343069 res!3091495) b!7753524))

(assert (= (and b!7753524 res!3091496) b!7753525))

(declare-fun m!8217934 () Bool)

(assert (=> d!2343069 m!8217934))

(declare-fun m!8217936 () Bool)

(assert (=> d!2343069 m!8217936))

(assert (=> d!2343069 m!8217522))

(declare-fun m!8217938 () Bool)

(assert (=> b!7753523 m!8217938))

(declare-fun m!8217940 () Bool)

(assert (=> b!7753524 m!8217940))

(assert (=> b!7753524 m!8217810))

(assert (=> b!7753524 m!8217528))

(assert (=> b!7752950 d!2343069))

(declare-fun d!2343071 () Bool)

(declare-fun c!1430078 () Bool)

(assert (=> d!2343071 (= c!1430078 (is-Nil!73343 lt!2669566))))

(declare-fun e!4596208 () (Set C!41570))

(assert (=> d!2343071 (= (content!15552 lt!2669566) e!4596208)))

(declare-fun b!7753530 () Bool)

(assert (=> b!7753530 (= e!4596208 (as set.empty (Set C!41570)))))

(declare-fun b!7753531 () Bool)

(assert (=> b!7753531 (= e!4596208 (set.union (set.insert (h!79791 lt!2669566) (as set.empty (Set C!41570))) (content!15552 (t!388202 lt!2669566))))))

(assert (= (and d!2343071 c!1430078) b!7753530))

(assert (= (and d!2343071 (not c!1430078)) b!7753531))

(declare-fun m!8217942 () Bool)

(assert (=> b!7753531 m!8217942))

(declare-fun m!8217944 () Bool)

(assert (=> b!7753531 m!8217944))

(assert (=> d!2342925 d!2343071))

(declare-fun d!2343073 () Bool)

(declare-fun c!1430079 () Bool)

(assert (=> d!2343073 (= c!1430079 (is-Nil!73343 s1!4391))))

(declare-fun e!4596209 () (Set C!41570))

(assert (=> d!2343073 (= (content!15552 s1!4391) e!4596209)))

(declare-fun b!7753532 () Bool)

(assert (=> b!7753532 (= e!4596209 (as set.empty (Set C!41570)))))

(declare-fun b!7753533 () Bool)

(assert (=> b!7753533 (= e!4596209 (set.union (set.insert (h!79791 s1!4391) (as set.empty (Set C!41570))) (content!15552 (t!388202 s1!4391))))))

(assert (= (and d!2343073 c!1430079) b!7753532))

(assert (= (and d!2343073 (not c!1430079)) b!7753533))

(declare-fun m!8217946 () Bool)

(assert (=> b!7753533 m!8217946))

(assert (=> b!7753533 m!8217562))

(assert (=> d!2342925 d!2343073))

(declare-fun d!2343075 () Bool)

(declare-fun c!1430080 () Bool)

(assert (=> d!2343075 (= c!1430080 (is-Nil!73343 s2!3963))))

(declare-fun e!4596210 () (Set C!41570))

(assert (=> d!2343075 (= (content!15552 s2!3963) e!4596210)))

(declare-fun b!7753534 () Bool)

(assert (=> b!7753534 (= e!4596210 (as set.empty (Set C!41570)))))

(declare-fun b!7753535 () Bool)

(assert (=> b!7753535 (= e!4596210 (set.union (set.insert (h!79791 s2!3963) (as set.empty (Set C!41570))) (content!15552 (t!388202 s2!3963))))))

(assert (= (and d!2343075 c!1430080) b!7753534))

(assert (= (and d!2343075 (not c!1430080)) b!7753535))

(declare-fun m!8217948 () Bool)

(assert (=> b!7753535 m!8217948))

(declare-fun m!8217950 () Bool)

(assert (=> b!7753535 m!8217950))

(assert (=> d!2342925 d!2343075))

(declare-fun d!2343077 () Bool)

(assert (=> d!2343077 (= (nullable!9083 (regOne!41756 lt!2669535)) (nullableFct!3582 (regOne!41756 lt!2669535)))))

(declare-fun bs!1965844 () Bool)

(assert (= bs!1965844 d!2343077))

(declare-fun m!8217952 () Bool)

(assert (=> bs!1965844 m!8217952))

(assert (=> b!7753015 d!2343077))

(assert (=> bm!718631 d!2342991))

(assert (=> b!7752929 d!2343021))

(assert (=> bm!718630 d!2342985))

(assert (=> b!7752904 d!2342917))

(declare-fun d!2343079 () Bool)

(assert (=> d!2343079 (= (nullable!9083 lt!2669538) (nullableFct!3582 lt!2669538))))

(declare-fun bs!1965845 () Bool)

(assert (= bs!1965845 d!2343079))

(declare-fun m!8217954 () Bool)

(assert (=> bs!1965845 m!8217954))

(assert (=> b!7752933 d!2343079))

(declare-fun d!2343081 () Bool)

(declare-fun c!1430081 () Bool)

(assert (=> d!2343081 (= c!1430081 (is-Nil!73343 lt!2669571))))

(declare-fun e!4596211 () (Set C!41570))

(assert (=> d!2343081 (= (content!15552 lt!2669571) e!4596211)))

(declare-fun b!7753536 () Bool)

(assert (=> b!7753536 (= e!4596211 (as set.empty (Set C!41570)))))

(declare-fun b!7753537 () Bool)

(assert (=> b!7753537 (= e!4596211 (set.union (set.insert (h!79791 lt!2669571) (as set.empty (Set C!41570))) (content!15552 (t!388202 lt!2669571))))))

(assert (= (and d!2343081 c!1430081) b!7753536))

(assert (= (and d!2343081 (not c!1430081)) b!7753537))

(declare-fun m!8217956 () Bool)

(assert (=> b!7753537 m!8217956))

(declare-fun m!8217958 () Bool)

(assert (=> b!7753537 m!8217958))

(assert (=> d!2342931 d!2343081))

(declare-fun d!2343083 () Bool)

(declare-fun c!1430082 () Bool)

(assert (=> d!2343083 (= c!1430082 (is-Nil!73343 (t!388202 s1!4391)))))

(declare-fun e!4596212 () (Set C!41570))

(assert (=> d!2343083 (= (content!15552 (t!388202 s1!4391)) e!4596212)))

(declare-fun b!7753538 () Bool)

(assert (=> b!7753538 (= e!4596212 (as set.empty (Set C!41570)))))

(declare-fun b!7753539 () Bool)

(assert (=> b!7753539 (= e!4596212 (set.union (set.insert (h!79791 (t!388202 s1!4391)) (as set.empty (Set C!41570))) (content!15552 (t!388202 (t!388202 s1!4391)))))))

(assert (= (and d!2343083 c!1430082) b!7753538))

(assert (= (and d!2343083 (not c!1430082)) b!7753539))

(declare-fun m!8217960 () Bool)

(assert (=> b!7753539 m!8217960))

(assert (=> b!7753539 m!8217936))

(assert (=> d!2342931 d!2343083))

(assert (=> d!2342931 d!2343075))

(declare-fun b!7753540 () Bool)

(declare-fun e!4596213 () Bool)

(assert (=> b!7753540 (= e!4596213 tp_is_empty!51599)))

(declare-fun b!7753542 () Bool)

(declare-fun tp!2274843 () Bool)

(assert (=> b!7753542 (= e!4596213 tp!2274843)))

(declare-fun b!7753543 () Bool)

(declare-fun tp!2274844 () Bool)

(declare-fun tp!2274841 () Bool)

(assert (=> b!7753543 (= e!4596213 (and tp!2274844 tp!2274841))))

(declare-fun b!7753541 () Bool)

(declare-fun tp!2274840 () Bool)

(declare-fun tp!2274842 () Bool)

(assert (=> b!7753541 (= e!4596213 (and tp!2274840 tp!2274842))))

(assert (=> b!7753105 (= tp!2274796 e!4596213)))

(assert (= (and b!7753105 (is-ElementMatch!20622 (regOne!41756 (regTwo!41757 r!25892)))) b!7753540))

(assert (= (and b!7753105 (is-Concat!29467 (regOne!41756 (regTwo!41757 r!25892)))) b!7753541))

(assert (= (and b!7753105 (is-Star!20622 (regOne!41756 (regTwo!41757 r!25892)))) b!7753542))

(assert (= (and b!7753105 (is-Union!20622 (regOne!41756 (regTwo!41757 r!25892)))) b!7753543))

(declare-fun b!7753544 () Bool)

(declare-fun e!4596214 () Bool)

(assert (=> b!7753544 (= e!4596214 tp_is_empty!51599)))

(declare-fun b!7753546 () Bool)

(declare-fun tp!2274848 () Bool)

(assert (=> b!7753546 (= e!4596214 tp!2274848)))

(declare-fun b!7753547 () Bool)

(declare-fun tp!2274849 () Bool)

(declare-fun tp!2274846 () Bool)

(assert (=> b!7753547 (= e!4596214 (and tp!2274849 tp!2274846))))

(declare-fun b!7753545 () Bool)

(declare-fun tp!2274845 () Bool)

(declare-fun tp!2274847 () Bool)

(assert (=> b!7753545 (= e!4596214 (and tp!2274845 tp!2274847))))

(assert (=> b!7753105 (= tp!2274798 e!4596214)))

(assert (= (and b!7753105 (is-ElementMatch!20622 (regTwo!41756 (regTwo!41757 r!25892)))) b!7753544))

(assert (= (and b!7753105 (is-Concat!29467 (regTwo!41756 (regTwo!41757 r!25892)))) b!7753545))

(assert (= (and b!7753105 (is-Star!20622 (regTwo!41756 (regTwo!41757 r!25892)))) b!7753546))

(assert (= (and b!7753105 (is-Union!20622 (regTwo!41756 (regTwo!41757 r!25892)))) b!7753547))

(declare-fun b!7753548 () Bool)

(declare-fun e!4596215 () Bool)

(assert (=> b!7753548 (= e!4596215 tp_is_empty!51599)))

(declare-fun b!7753550 () Bool)

(declare-fun tp!2274853 () Bool)

(assert (=> b!7753550 (= e!4596215 tp!2274853)))

(declare-fun b!7753551 () Bool)

(declare-fun tp!2274854 () Bool)

(declare-fun tp!2274851 () Bool)

(assert (=> b!7753551 (= e!4596215 (and tp!2274854 tp!2274851))))

(declare-fun b!7753549 () Bool)

(declare-fun tp!2274850 () Bool)

(declare-fun tp!2274852 () Bool)

(assert (=> b!7753549 (= e!4596215 (and tp!2274850 tp!2274852))))

(assert (=> b!7753101 (= tp!2274791 e!4596215)))

(assert (= (and b!7753101 (is-ElementMatch!20622 (regOne!41756 (regOne!41757 r!25892)))) b!7753548))

(assert (= (and b!7753101 (is-Concat!29467 (regOne!41756 (regOne!41757 r!25892)))) b!7753549))

(assert (= (and b!7753101 (is-Star!20622 (regOne!41756 (regOne!41757 r!25892)))) b!7753550))

(assert (= (and b!7753101 (is-Union!20622 (regOne!41756 (regOne!41757 r!25892)))) b!7753551))

(declare-fun b!7753552 () Bool)

(declare-fun e!4596216 () Bool)

(assert (=> b!7753552 (= e!4596216 tp_is_empty!51599)))

(declare-fun b!7753554 () Bool)

(declare-fun tp!2274858 () Bool)

(assert (=> b!7753554 (= e!4596216 tp!2274858)))

(declare-fun b!7753555 () Bool)

(declare-fun tp!2274859 () Bool)

(declare-fun tp!2274856 () Bool)

(assert (=> b!7753555 (= e!4596216 (and tp!2274859 tp!2274856))))

(declare-fun b!7753553 () Bool)

(declare-fun tp!2274855 () Bool)

(declare-fun tp!2274857 () Bool)

(assert (=> b!7753553 (= e!4596216 (and tp!2274855 tp!2274857))))

(assert (=> b!7753101 (= tp!2274793 e!4596216)))

(assert (= (and b!7753101 (is-ElementMatch!20622 (regTwo!41756 (regOne!41757 r!25892)))) b!7753552))

(assert (= (and b!7753101 (is-Concat!29467 (regTwo!41756 (regOne!41757 r!25892)))) b!7753553))

(assert (= (and b!7753101 (is-Star!20622 (regTwo!41756 (regOne!41757 r!25892)))) b!7753554))

(assert (= (and b!7753101 (is-Union!20622 (regTwo!41756 (regOne!41757 r!25892)))) b!7753555))

(declare-fun b!7753556 () Bool)

(declare-fun e!4596217 () Bool)

(assert (=> b!7753556 (= e!4596217 tp_is_empty!51599)))

(declare-fun b!7753558 () Bool)

(declare-fun tp!2274863 () Bool)

(assert (=> b!7753558 (= e!4596217 tp!2274863)))

(declare-fun b!7753559 () Bool)

(declare-fun tp!2274864 () Bool)

(declare-fun tp!2274861 () Bool)

(assert (=> b!7753559 (= e!4596217 (and tp!2274864 tp!2274861))))

(declare-fun b!7753557 () Bool)

(declare-fun tp!2274860 () Bool)

(declare-fun tp!2274862 () Bool)

(assert (=> b!7753557 (= e!4596217 (and tp!2274860 tp!2274862))))

(assert (=> b!7753106 (= tp!2274799 e!4596217)))

(assert (= (and b!7753106 (is-ElementMatch!20622 (reg!20951 (regTwo!41757 r!25892)))) b!7753556))

(assert (= (and b!7753106 (is-Concat!29467 (reg!20951 (regTwo!41757 r!25892)))) b!7753557))

(assert (= (and b!7753106 (is-Star!20622 (reg!20951 (regTwo!41757 r!25892)))) b!7753558))

(assert (= (and b!7753106 (is-Union!20622 (reg!20951 (regTwo!41757 r!25892)))) b!7753559))

(declare-fun b!7753560 () Bool)

(declare-fun e!4596218 () Bool)

(assert (=> b!7753560 (= e!4596218 tp_is_empty!51599)))

(declare-fun b!7753562 () Bool)

(declare-fun tp!2274868 () Bool)

(assert (=> b!7753562 (= e!4596218 tp!2274868)))

(declare-fun b!7753563 () Bool)

(declare-fun tp!2274869 () Bool)

(declare-fun tp!2274866 () Bool)

(assert (=> b!7753563 (= e!4596218 (and tp!2274869 tp!2274866))))

(declare-fun b!7753561 () Bool)

(declare-fun tp!2274865 () Bool)

(declare-fun tp!2274867 () Bool)

(assert (=> b!7753561 (= e!4596218 (and tp!2274865 tp!2274867))))

(assert (=> b!7753078 (= tp!2274780 e!4596218)))

(assert (= (and b!7753078 (is-ElementMatch!20622 (regOne!41756 (regOne!41756 r!25892)))) b!7753560))

(assert (= (and b!7753078 (is-Concat!29467 (regOne!41756 (regOne!41756 r!25892)))) b!7753561))

(assert (= (and b!7753078 (is-Star!20622 (regOne!41756 (regOne!41756 r!25892)))) b!7753562))

(assert (= (and b!7753078 (is-Union!20622 (regOne!41756 (regOne!41756 r!25892)))) b!7753563))

(declare-fun b!7753564 () Bool)

(declare-fun e!4596219 () Bool)

(assert (=> b!7753564 (= e!4596219 tp_is_empty!51599)))

(declare-fun b!7753566 () Bool)

(declare-fun tp!2274873 () Bool)

(assert (=> b!7753566 (= e!4596219 tp!2274873)))

(declare-fun b!7753567 () Bool)

(declare-fun tp!2274874 () Bool)

(declare-fun tp!2274871 () Bool)

(assert (=> b!7753567 (= e!4596219 (and tp!2274874 tp!2274871))))

(declare-fun b!7753565 () Bool)

(declare-fun tp!2274870 () Bool)

(declare-fun tp!2274872 () Bool)

(assert (=> b!7753565 (= e!4596219 (and tp!2274870 tp!2274872))))

(assert (=> b!7753078 (= tp!2274782 e!4596219)))

(assert (= (and b!7753078 (is-ElementMatch!20622 (regTwo!41756 (regOne!41756 r!25892)))) b!7753564))

(assert (= (and b!7753078 (is-Concat!29467 (regTwo!41756 (regOne!41756 r!25892)))) b!7753565))

(assert (= (and b!7753078 (is-Star!20622 (regTwo!41756 (regOne!41756 r!25892)))) b!7753566))

(assert (= (and b!7753078 (is-Union!20622 (regTwo!41756 (regOne!41756 r!25892)))) b!7753567))

(declare-fun b!7753568 () Bool)

(declare-fun e!4596220 () Bool)

(declare-fun tp!2274875 () Bool)

(assert (=> b!7753568 (= e!4596220 (and tp_is_empty!51599 tp!2274875))))

(assert (=> b!7753076 (= tp!2274779 e!4596220)))

(assert (= (and b!7753076 (is-Cons!73343 (t!388202 (t!388202 s1!4391)))) b!7753568))

(declare-fun b!7753569 () Bool)

(declare-fun e!4596221 () Bool)

(assert (=> b!7753569 (= e!4596221 tp_is_empty!51599)))

(declare-fun b!7753571 () Bool)

(declare-fun tp!2274879 () Bool)

(assert (=> b!7753571 (= e!4596221 tp!2274879)))

(declare-fun b!7753572 () Bool)

(declare-fun tp!2274880 () Bool)

(declare-fun tp!2274877 () Bool)

(assert (=> b!7753572 (= e!4596221 (and tp!2274880 tp!2274877))))

(declare-fun b!7753570 () Bool)

(declare-fun tp!2274876 () Bool)

(declare-fun tp!2274878 () Bool)

(assert (=> b!7753570 (= e!4596221 (and tp!2274876 tp!2274878))))

(assert (=> b!7753079 (= tp!2274783 e!4596221)))

(assert (= (and b!7753079 (is-ElementMatch!20622 (reg!20951 (regOne!41756 r!25892)))) b!7753569))

(assert (= (and b!7753079 (is-Concat!29467 (reg!20951 (regOne!41756 r!25892)))) b!7753570))

(assert (= (and b!7753079 (is-Star!20622 (reg!20951 (regOne!41756 r!25892)))) b!7753571))

(assert (= (and b!7753079 (is-Union!20622 (reg!20951 (regOne!41756 r!25892)))) b!7753572))

(declare-fun b!7753573 () Bool)

(declare-fun e!4596222 () Bool)

(assert (=> b!7753573 (= e!4596222 tp_is_empty!51599)))

(declare-fun b!7753575 () Bool)

(declare-fun tp!2274884 () Bool)

(assert (=> b!7753575 (= e!4596222 tp!2274884)))

(declare-fun b!7753576 () Bool)

(declare-fun tp!2274885 () Bool)

(declare-fun tp!2274882 () Bool)

(assert (=> b!7753576 (= e!4596222 (and tp!2274885 tp!2274882))))

(declare-fun b!7753574 () Bool)

(declare-fun tp!2274881 () Bool)

(declare-fun tp!2274883 () Bool)

(assert (=> b!7753574 (= e!4596222 (and tp!2274881 tp!2274883))))

(assert (=> b!7753080 (= tp!2274784 e!4596222)))

(assert (= (and b!7753080 (is-ElementMatch!20622 (regOne!41757 (regOne!41756 r!25892)))) b!7753573))

(assert (= (and b!7753080 (is-Concat!29467 (regOne!41757 (regOne!41756 r!25892)))) b!7753574))

(assert (= (and b!7753080 (is-Star!20622 (regOne!41757 (regOne!41756 r!25892)))) b!7753575))

(assert (= (and b!7753080 (is-Union!20622 (regOne!41757 (regOne!41756 r!25892)))) b!7753576))

(declare-fun b!7753577 () Bool)

(declare-fun e!4596223 () Bool)

(assert (=> b!7753577 (= e!4596223 tp_is_empty!51599)))

(declare-fun b!7753579 () Bool)

(declare-fun tp!2274889 () Bool)

(assert (=> b!7753579 (= e!4596223 tp!2274889)))

(declare-fun b!7753580 () Bool)

(declare-fun tp!2274890 () Bool)

(declare-fun tp!2274887 () Bool)

(assert (=> b!7753580 (= e!4596223 (and tp!2274890 tp!2274887))))

(declare-fun b!7753578 () Bool)

(declare-fun tp!2274886 () Bool)

(declare-fun tp!2274888 () Bool)

(assert (=> b!7753578 (= e!4596223 (and tp!2274886 tp!2274888))))

(assert (=> b!7753080 (= tp!2274781 e!4596223)))

(assert (= (and b!7753080 (is-ElementMatch!20622 (regTwo!41757 (regOne!41756 r!25892)))) b!7753577))

(assert (= (and b!7753080 (is-Concat!29467 (regTwo!41757 (regOne!41756 r!25892)))) b!7753578))

(assert (= (and b!7753080 (is-Star!20622 (regTwo!41757 (regOne!41756 r!25892)))) b!7753579))

(assert (= (and b!7753080 (is-Union!20622 (regTwo!41757 (regOne!41756 r!25892)))) b!7753580))

(declare-fun b!7753581 () Bool)

(declare-fun e!4596224 () Bool)

(declare-fun tp!2274891 () Bool)

(assert (=> b!7753581 (= e!4596224 (and tp_is_empty!51599 tp!2274891))))

(assert (=> b!7753085 (= tp!2274790 e!4596224)))

(assert (= (and b!7753085 (is-Cons!73343 (t!388202 (t!388202 s2!3963)))) b!7753581))

(declare-fun b!7753582 () Bool)

(declare-fun e!4596225 () Bool)

(assert (=> b!7753582 (= e!4596225 tp_is_empty!51599)))

(declare-fun b!7753584 () Bool)

(declare-fun tp!2274895 () Bool)

(assert (=> b!7753584 (= e!4596225 tp!2274895)))

(declare-fun b!7753585 () Bool)

(declare-fun tp!2274896 () Bool)

(declare-fun tp!2274893 () Bool)

(assert (=> b!7753585 (= e!4596225 (and tp!2274896 tp!2274893))))

(declare-fun b!7753583 () Bool)

(declare-fun tp!2274892 () Bool)

(declare-fun tp!2274894 () Bool)

(assert (=> b!7753583 (= e!4596225 (and tp!2274892 tp!2274894))))

(assert (=> b!7753083 (= tp!2274788 e!4596225)))

(assert (= (and b!7753083 (is-ElementMatch!20622 (reg!20951 (regTwo!41756 r!25892)))) b!7753582))

(assert (= (and b!7753083 (is-Concat!29467 (reg!20951 (regTwo!41756 r!25892)))) b!7753583))

(assert (= (and b!7753083 (is-Star!20622 (reg!20951 (regTwo!41756 r!25892)))) b!7753584))

(assert (= (and b!7753083 (is-Union!20622 (reg!20951 (regTwo!41756 r!25892)))) b!7753585))

(declare-fun b!7753586 () Bool)

(declare-fun e!4596226 () Bool)

(assert (=> b!7753586 (= e!4596226 tp_is_empty!51599)))

(declare-fun b!7753588 () Bool)

(declare-fun tp!2274900 () Bool)

(assert (=> b!7753588 (= e!4596226 tp!2274900)))

(declare-fun b!7753589 () Bool)

(declare-fun tp!2274901 () Bool)

(declare-fun tp!2274898 () Bool)

(assert (=> b!7753589 (= e!4596226 (and tp!2274901 tp!2274898))))

(declare-fun b!7753587 () Bool)

(declare-fun tp!2274897 () Bool)

(declare-fun tp!2274899 () Bool)

(assert (=> b!7753587 (= e!4596226 (and tp!2274897 tp!2274899))))

(assert (=> b!7753084 (= tp!2274789 e!4596226)))

(assert (= (and b!7753084 (is-ElementMatch!20622 (regOne!41757 (regTwo!41756 r!25892)))) b!7753586))

(assert (= (and b!7753084 (is-Concat!29467 (regOne!41757 (regTwo!41756 r!25892)))) b!7753587))

(assert (= (and b!7753084 (is-Star!20622 (regOne!41757 (regTwo!41756 r!25892)))) b!7753588))

(assert (= (and b!7753084 (is-Union!20622 (regOne!41757 (regTwo!41756 r!25892)))) b!7753589))

(declare-fun b!7753590 () Bool)

(declare-fun e!4596227 () Bool)

(assert (=> b!7753590 (= e!4596227 tp_is_empty!51599)))

(declare-fun b!7753592 () Bool)

(declare-fun tp!2274905 () Bool)

(assert (=> b!7753592 (= e!4596227 tp!2274905)))

(declare-fun b!7753593 () Bool)

(declare-fun tp!2274906 () Bool)

(declare-fun tp!2274903 () Bool)

(assert (=> b!7753593 (= e!4596227 (and tp!2274906 tp!2274903))))

(declare-fun b!7753591 () Bool)

(declare-fun tp!2274902 () Bool)

(declare-fun tp!2274904 () Bool)

(assert (=> b!7753591 (= e!4596227 (and tp!2274902 tp!2274904))))

(assert (=> b!7753084 (= tp!2274786 e!4596227)))

(assert (= (and b!7753084 (is-ElementMatch!20622 (regTwo!41757 (regTwo!41756 r!25892)))) b!7753590))

(assert (= (and b!7753084 (is-Concat!29467 (regTwo!41757 (regTwo!41756 r!25892)))) b!7753591))

(assert (= (and b!7753084 (is-Star!20622 (regTwo!41757 (regTwo!41756 r!25892)))) b!7753592))

(assert (= (and b!7753084 (is-Union!20622 (regTwo!41757 (regTwo!41756 r!25892)))) b!7753593))

(declare-fun b!7753594 () Bool)

(declare-fun e!4596228 () Bool)

(assert (=> b!7753594 (= e!4596228 tp_is_empty!51599)))

(declare-fun b!7753596 () Bool)

(declare-fun tp!2274910 () Bool)

(assert (=> b!7753596 (= e!4596228 tp!2274910)))

(declare-fun b!7753597 () Bool)

(declare-fun tp!2274911 () Bool)

(declare-fun tp!2274908 () Bool)

(assert (=> b!7753597 (= e!4596228 (and tp!2274911 tp!2274908))))

(declare-fun b!7753595 () Bool)

(declare-fun tp!2274907 () Bool)

(declare-fun tp!2274909 () Bool)

(assert (=> b!7753595 (= e!4596228 (and tp!2274907 tp!2274909))))

(assert (=> b!7753069 (= tp!2274772 e!4596228)))

(assert (= (and b!7753069 (is-ElementMatch!20622 (regOne!41756 (reg!20951 r!25892)))) b!7753594))

(assert (= (and b!7753069 (is-Concat!29467 (regOne!41756 (reg!20951 r!25892)))) b!7753595))

(assert (= (and b!7753069 (is-Star!20622 (regOne!41756 (reg!20951 r!25892)))) b!7753596))

(assert (= (and b!7753069 (is-Union!20622 (regOne!41756 (reg!20951 r!25892)))) b!7753597))

(declare-fun b!7753598 () Bool)

(declare-fun e!4596229 () Bool)

(assert (=> b!7753598 (= e!4596229 tp_is_empty!51599)))

(declare-fun b!7753600 () Bool)

(declare-fun tp!2274915 () Bool)

(assert (=> b!7753600 (= e!4596229 tp!2274915)))

(declare-fun b!7753601 () Bool)

(declare-fun tp!2274916 () Bool)

(declare-fun tp!2274913 () Bool)

(assert (=> b!7753601 (= e!4596229 (and tp!2274916 tp!2274913))))

(declare-fun b!7753599 () Bool)

(declare-fun tp!2274912 () Bool)

(declare-fun tp!2274914 () Bool)

(assert (=> b!7753599 (= e!4596229 (and tp!2274912 tp!2274914))))

(assert (=> b!7753069 (= tp!2274774 e!4596229)))

(assert (= (and b!7753069 (is-ElementMatch!20622 (regTwo!41756 (reg!20951 r!25892)))) b!7753598))

(assert (= (and b!7753069 (is-Concat!29467 (regTwo!41756 (reg!20951 r!25892)))) b!7753599))

(assert (= (and b!7753069 (is-Star!20622 (regTwo!41756 (reg!20951 r!25892)))) b!7753600))

(assert (= (and b!7753069 (is-Union!20622 (regTwo!41756 (reg!20951 r!25892)))) b!7753601))

(declare-fun b!7753602 () Bool)

(declare-fun e!4596230 () Bool)

(assert (=> b!7753602 (= e!4596230 tp_is_empty!51599)))

(declare-fun b!7753604 () Bool)

(declare-fun tp!2274920 () Bool)

(assert (=> b!7753604 (= e!4596230 tp!2274920)))

(declare-fun b!7753605 () Bool)

(declare-fun tp!2274921 () Bool)

(declare-fun tp!2274918 () Bool)

(assert (=> b!7753605 (= e!4596230 (and tp!2274921 tp!2274918))))

(declare-fun b!7753603 () Bool)

(declare-fun tp!2274917 () Bool)

(declare-fun tp!2274919 () Bool)

(assert (=> b!7753603 (= e!4596230 (and tp!2274917 tp!2274919))))

(assert (=> b!7753102 (= tp!2274794 e!4596230)))

(assert (= (and b!7753102 (is-ElementMatch!20622 (reg!20951 (regOne!41757 r!25892)))) b!7753602))

(assert (= (and b!7753102 (is-Concat!29467 (reg!20951 (regOne!41757 r!25892)))) b!7753603))

(assert (= (and b!7753102 (is-Star!20622 (reg!20951 (regOne!41757 r!25892)))) b!7753604))

(assert (= (and b!7753102 (is-Union!20622 (reg!20951 (regOne!41757 r!25892)))) b!7753605))

(declare-fun b!7753606 () Bool)

(declare-fun e!4596231 () Bool)

(assert (=> b!7753606 (= e!4596231 tp_is_empty!51599)))

(declare-fun b!7753608 () Bool)

(declare-fun tp!2274925 () Bool)

(assert (=> b!7753608 (= e!4596231 tp!2274925)))

(declare-fun b!7753609 () Bool)

(declare-fun tp!2274926 () Bool)

(declare-fun tp!2274923 () Bool)

(assert (=> b!7753609 (= e!4596231 (and tp!2274926 tp!2274923))))

(declare-fun b!7753607 () Bool)

(declare-fun tp!2274922 () Bool)

(declare-fun tp!2274924 () Bool)

(assert (=> b!7753607 (= e!4596231 (and tp!2274922 tp!2274924))))

(assert (=> b!7753107 (= tp!2274800 e!4596231)))

(assert (= (and b!7753107 (is-ElementMatch!20622 (regOne!41757 (regTwo!41757 r!25892)))) b!7753606))

(assert (= (and b!7753107 (is-Concat!29467 (regOne!41757 (regTwo!41757 r!25892)))) b!7753607))

(assert (= (and b!7753107 (is-Star!20622 (regOne!41757 (regTwo!41757 r!25892)))) b!7753608))

(assert (= (and b!7753107 (is-Union!20622 (regOne!41757 (regTwo!41757 r!25892)))) b!7753609))

(declare-fun b!7753610 () Bool)

(declare-fun e!4596232 () Bool)

(assert (=> b!7753610 (= e!4596232 tp_is_empty!51599)))

(declare-fun b!7753612 () Bool)

(declare-fun tp!2274930 () Bool)

(assert (=> b!7753612 (= e!4596232 tp!2274930)))

(declare-fun b!7753613 () Bool)

(declare-fun tp!2274931 () Bool)

(declare-fun tp!2274928 () Bool)

(assert (=> b!7753613 (= e!4596232 (and tp!2274931 tp!2274928))))

(declare-fun b!7753611 () Bool)

(declare-fun tp!2274927 () Bool)

(declare-fun tp!2274929 () Bool)

(assert (=> b!7753611 (= e!4596232 (and tp!2274927 tp!2274929))))

(assert (=> b!7753107 (= tp!2274797 e!4596232)))

(assert (= (and b!7753107 (is-ElementMatch!20622 (regTwo!41757 (regTwo!41757 r!25892)))) b!7753610))

(assert (= (and b!7753107 (is-Concat!29467 (regTwo!41757 (regTwo!41757 r!25892)))) b!7753611))

(assert (= (and b!7753107 (is-Star!20622 (regTwo!41757 (regTwo!41757 r!25892)))) b!7753612))

(assert (= (and b!7753107 (is-Union!20622 (regTwo!41757 (regTwo!41757 r!25892)))) b!7753613))

(declare-fun b!7753614 () Bool)

(declare-fun e!4596233 () Bool)

(assert (=> b!7753614 (= e!4596233 tp_is_empty!51599)))

(declare-fun b!7753616 () Bool)

(declare-fun tp!2274935 () Bool)

(assert (=> b!7753616 (= e!4596233 tp!2274935)))

(declare-fun b!7753617 () Bool)

(declare-fun tp!2274936 () Bool)

(declare-fun tp!2274933 () Bool)

(assert (=> b!7753617 (= e!4596233 (and tp!2274936 tp!2274933))))

(declare-fun b!7753615 () Bool)

(declare-fun tp!2274932 () Bool)

(declare-fun tp!2274934 () Bool)

(assert (=> b!7753615 (= e!4596233 (and tp!2274932 tp!2274934))))

(assert (=> b!7753070 (= tp!2274775 e!4596233)))

(assert (= (and b!7753070 (is-ElementMatch!20622 (reg!20951 (reg!20951 r!25892)))) b!7753614))

(assert (= (and b!7753070 (is-Concat!29467 (reg!20951 (reg!20951 r!25892)))) b!7753615))

(assert (= (and b!7753070 (is-Star!20622 (reg!20951 (reg!20951 r!25892)))) b!7753616))

(assert (= (and b!7753070 (is-Union!20622 (reg!20951 (reg!20951 r!25892)))) b!7753617))

(declare-fun b!7753618 () Bool)

(declare-fun e!4596234 () Bool)

(assert (=> b!7753618 (= e!4596234 tp_is_empty!51599)))

(declare-fun b!7753620 () Bool)

(declare-fun tp!2274940 () Bool)

(assert (=> b!7753620 (= e!4596234 tp!2274940)))

(declare-fun b!7753621 () Bool)

(declare-fun tp!2274941 () Bool)

(declare-fun tp!2274938 () Bool)

(assert (=> b!7753621 (= e!4596234 (and tp!2274941 tp!2274938))))

(declare-fun b!7753619 () Bool)

(declare-fun tp!2274937 () Bool)

(declare-fun tp!2274939 () Bool)

(assert (=> b!7753619 (= e!4596234 (and tp!2274937 tp!2274939))))

(assert (=> b!7753103 (= tp!2274795 e!4596234)))

(assert (= (and b!7753103 (is-ElementMatch!20622 (regOne!41757 (regOne!41757 r!25892)))) b!7753618))

(assert (= (and b!7753103 (is-Concat!29467 (regOne!41757 (regOne!41757 r!25892)))) b!7753619))

(assert (= (and b!7753103 (is-Star!20622 (regOne!41757 (regOne!41757 r!25892)))) b!7753620))

(assert (= (and b!7753103 (is-Union!20622 (regOne!41757 (regOne!41757 r!25892)))) b!7753621))

(declare-fun b!7753622 () Bool)

(declare-fun e!4596235 () Bool)

(assert (=> b!7753622 (= e!4596235 tp_is_empty!51599)))

(declare-fun b!7753624 () Bool)

(declare-fun tp!2274945 () Bool)

(assert (=> b!7753624 (= e!4596235 tp!2274945)))

(declare-fun b!7753625 () Bool)

(declare-fun tp!2274946 () Bool)

(declare-fun tp!2274943 () Bool)

(assert (=> b!7753625 (= e!4596235 (and tp!2274946 tp!2274943))))

(declare-fun b!7753623 () Bool)

(declare-fun tp!2274942 () Bool)

(declare-fun tp!2274944 () Bool)

(assert (=> b!7753623 (= e!4596235 (and tp!2274942 tp!2274944))))

(assert (=> b!7753103 (= tp!2274792 e!4596235)))

(assert (= (and b!7753103 (is-ElementMatch!20622 (regTwo!41757 (regOne!41757 r!25892)))) b!7753622))

(assert (= (and b!7753103 (is-Concat!29467 (regTwo!41757 (regOne!41757 r!25892)))) b!7753623))

(assert (= (and b!7753103 (is-Star!20622 (regTwo!41757 (regOne!41757 r!25892)))) b!7753624))

(assert (= (and b!7753103 (is-Union!20622 (regTwo!41757 (regOne!41757 r!25892)))) b!7753625))

(declare-fun b!7753626 () Bool)

(declare-fun e!4596236 () Bool)

(assert (=> b!7753626 (= e!4596236 tp_is_empty!51599)))

(declare-fun b!7753628 () Bool)

(declare-fun tp!2274950 () Bool)

(assert (=> b!7753628 (= e!4596236 tp!2274950)))

(declare-fun b!7753629 () Bool)

(declare-fun tp!2274951 () Bool)

(declare-fun tp!2274948 () Bool)

(assert (=> b!7753629 (= e!4596236 (and tp!2274951 tp!2274948))))

(declare-fun b!7753627 () Bool)

(declare-fun tp!2274947 () Bool)

(declare-fun tp!2274949 () Bool)

(assert (=> b!7753627 (= e!4596236 (and tp!2274947 tp!2274949))))

(assert (=> b!7753071 (= tp!2274776 e!4596236)))

(assert (= (and b!7753071 (is-ElementMatch!20622 (regOne!41757 (reg!20951 r!25892)))) b!7753626))

(assert (= (and b!7753071 (is-Concat!29467 (regOne!41757 (reg!20951 r!25892)))) b!7753627))

(assert (= (and b!7753071 (is-Star!20622 (regOne!41757 (reg!20951 r!25892)))) b!7753628))

(assert (= (and b!7753071 (is-Union!20622 (regOne!41757 (reg!20951 r!25892)))) b!7753629))

(declare-fun b!7753630 () Bool)

(declare-fun e!4596237 () Bool)

(assert (=> b!7753630 (= e!4596237 tp_is_empty!51599)))

(declare-fun b!7753632 () Bool)

(declare-fun tp!2274955 () Bool)

(assert (=> b!7753632 (= e!4596237 tp!2274955)))

(declare-fun b!7753633 () Bool)

(declare-fun tp!2274956 () Bool)

(declare-fun tp!2274953 () Bool)

(assert (=> b!7753633 (= e!4596237 (and tp!2274956 tp!2274953))))

(declare-fun b!7753631 () Bool)

(declare-fun tp!2274952 () Bool)

(declare-fun tp!2274954 () Bool)

(assert (=> b!7753631 (= e!4596237 (and tp!2274952 tp!2274954))))

(assert (=> b!7753071 (= tp!2274773 e!4596237)))

(assert (= (and b!7753071 (is-ElementMatch!20622 (regTwo!41757 (reg!20951 r!25892)))) b!7753630))

(assert (= (and b!7753071 (is-Concat!29467 (regTwo!41757 (reg!20951 r!25892)))) b!7753631))

(assert (= (and b!7753071 (is-Star!20622 (regTwo!41757 (reg!20951 r!25892)))) b!7753632))

(assert (= (and b!7753071 (is-Union!20622 (regTwo!41757 (reg!20951 r!25892)))) b!7753633))

(declare-fun b!7753634 () Bool)

(declare-fun e!4596238 () Bool)

(assert (=> b!7753634 (= e!4596238 tp_is_empty!51599)))

(declare-fun b!7753636 () Bool)

(declare-fun tp!2274960 () Bool)

(assert (=> b!7753636 (= e!4596238 tp!2274960)))

(declare-fun b!7753637 () Bool)

(declare-fun tp!2274961 () Bool)

(declare-fun tp!2274958 () Bool)

(assert (=> b!7753637 (= e!4596238 (and tp!2274961 tp!2274958))))

(declare-fun b!7753635 () Bool)

(declare-fun tp!2274957 () Bool)

(declare-fun tp!2274959 () Bool)

(assert (=> b!7753635 (= e!4596238 (and tp!2274957 tp!2274959))))

(assert (=> b!7753082 (= tp!2274785 e!4596238)))

(assert (= (and b!7753082 (is-ElementMatch!20622 (regOne!41756 (regTwo!41756 r!25892)))) b!7753634))

(assert (= (and b!7753082 (is-Concat!29467 (regOne!41756 (regTwo!41756 r!25892)))) b!7753635))

(assert (= (and b!7753082 (is-Star!20622 (regOne!41756 (regTwo!41756 r!25892)))) b!7753636))

(assert (= (and b!7753082 (is-Union!20622 (regOne!41756 (regTwo!41756 r!25892)))) b!7753637))

(declare-fun b!7753638 () Bool)

(declare-fun e!4596239 () Bool)

(assert (=> b!7753638 (= e!4596239 tp_is_empty!51599)))

(declare-fun b!7753640 () Bool)

(declare-fun tp!2274965 () Bool)

(assert (=> b!7753640 (= e!4596239 tp!2274965)))

(declare-fun b!7753641 () Bool)

(declare-fun tp!2274966 () Bool)

(declare-fun tp!2274963 () Bool)

(assert (=> b!7753641 (= e!4596239 (and tp!2274966 tp!2274963))))

(declare-fun b!7753639 () Bool)

(declare-fun tp!2274962 () Bool)

(declare-fun tp!2274964 () Bool)

(assert (=> b!7753639 (= e!4596239 (and tp!2274962 tp!2274964))))

(assert (=> b!7753082 (= tp!2274787 e!4596239)))

(assert (= (and b!7753082 (is-ElementMatch!20622 (regTwo!41756 (regTwo!41756 r!25892)))) b!7753638))

(assert (= (and b!7753082 (is-Concat!29467 (regTwo!41756 (regTwo!41756 r!25892)))) b!7753639))

(assert (= (and b!7753082 (is-Star!20622 (regTwo!41756 (regTwo!41756 r!25892)))) b!7753640))

(assert (= (and b!7753082 (is-Union!20622 (regTwo!41756 (regTwo!41756 r!25892)))) b!7753641))

(push 1)

(assert (not b!7753635))

(assert (not b!7753290))

(assert (not bm!718740))

(assert (not b!7753592))

(assert (not b!7753572))

(assert (not b!7753617))

(assert (not bm!718712))

(assert (not bm!718747))

(assert (not bm!718697))

(assert (not b!7753524))

(assert (not b!7753641))

(assert (not b!7753550))

(assert (not bm!718715))

(assert (not b!7753543))

(assert (not d!2343013))

(assert (not b!7753566))

(assert (not b!7753517))

(assert (not bm!718719))

(assert (not b!7753559))

(assert (not b!7753297))

(assert (not b!7753619))

(assert (not b!7753539))

(assert (not bm!718749))

(assert (not b!7753531))

(assert (not d!2343027))

(assert (not b!7753565))

(assert (not bm!718692))

(assert (not d!2342977))

(assert (not b!7753533))

(assert (not b!7753470))

(assert (not b!7753263))

(assert (not b!7753349))

(assert (not b!7753628))

(assert (not b!7753554))

(assert (not bm!718735))

(assert (not b!7753418))

(assert (not b!7753616))

(assert (not b!7753595))

(assert (not b!7753576))

(assert (not b!7753620))

(assert (not b!7753353))

(assert (not b!7753434))

(assert (not bm!718746))

(assert (not b!7753471))

(assert (not b!7753378))

(assert (not b!7753553))

(assert (not b!7753408))

(assert (not b!7753631))

(assert (not b!7753600))

(assert (not bm!718729))

(assert (not b!7753591))

(assert (not b!7753299))

(assert (not b!7753629))

(assert (not b!7753632))

(assert (not bm!718726))

(assert (not b!7753604))

(assert (not b!7753609))

(assert (not b!7753359))

(assert (not bm!718709))

(assert (not b!7753568))

(assert (not b!7753545))

(assert (not bm!718739))

(assert (not b!7753615))

(assert (not d!2343061))

(assert (not b!7753583))

(assert (not b!7753482))

(assert (not bm!718695))

(assert (not b!7753392))

(assert (not b!7753567))

(assert (not b!7753570))

(assert (not b!7753627))

(assert (not bm!718737))

(assert (not b!7753621))

(assert (not d!2342961))

(assert (not b!7753561))

(assert (not d!2343019))

(assert (not d!2343059))

(assert (not bm!718750))

(assert (not bm!718720))

(assert (not b!7753302))

(assert (not d!2343069))

(assert (not b!7753537))

(assert (not b!7753451))

(assert (not b!7753523))

(assert (not b!7753390))

(assert (not b!7753385))

(assert (not b!7753507))

(assert (not b!7753265))

(assert (not b!7753603))

(assert (not b!7753350))

(assert (not b!7753333))

(assert (not bm!718742))

(assert (not b!7753588))

(assert (not b!7753581))

(assert (not b!7753342))

(assert (not b!7753376))

(assert (not bm!718743))

(assert (not b!7753402))

(assert (not b!7753280))

(assert (not b!7753439))

(assert (not b!7753433))

(assert (not b!7753546))

(assert (not b!7753589))

(assert (not b!7753608))

(assert (not b!7753613))

(assert (not bm!718686))

(assert (not b!7753274))

(assert (not d!2343017))

(assert (not bm!718711))

(assert (not bm!718717))

(assert (not b!7753611))

(assert tp_is_empty!51599)

(assert (not b!7753579))

(assert (not bm!718703))

(assert (not b!7753605))

(assert (not d!2342975))

(assert (not b!7753585))

(assert (not b!7753580))

(assert (not b!7753555))

(assert (not d!2343079))

(assert (not b!7753584))

(assert (not d!2342983))

(assert (not b!7753347))

(assert (not b!7753562))

(assert (not b!7753498))

(assert (not b!7753476))

(assert (not b!7753636))

(assert (not b!7753637))

(assert (not d!2343033))

(assert (not b!7753535))

(assert (not b!7753391))

(assert (not b!7753445))

(assert (not bm!718689))

(assert (not b!7753428))

(assert (not b!7753599))

(assert (not bm!718727))

(assert (not b!7753298))

(assert (not d!2343015))

(assert (not d!2343065))

(assert (not b!7753541))

(assert (not b!7753633))

(assert (not b!7753551))

(assert (not bm!718706))

(assert (not b!7753324))

(assert (not d!2342959))

(assert (not d!2343041))

(assert (not b!7753557))

(assert (not bm!718698))

(assert (not b!7753624))

(assert (not b!7753571))

(assert (not b!7753380))

(assert (not b!7753612))

(assert (not b!7753488))

(assert (not b!7753593))

(assert (not bm!718730))

(assert (not b!7753547))

(assert (not d!2343053))

(assert (not b!7753587))

(assert (not b!7753457))

(assert (not d!2342999))

(assert (not b!7753575))

(assert (not b!7753314))

(assert (not b!7753639))

(assert (not b!7753558))

(assert (not b!7753542))

(assert (not b!7753473))

(assert (not d!2343043))

(assert (not b!7753574))

(assert (not bm!718731))

(assert (not d!2342997))

(assert (not b!7753625))

(assert (not b!7753549))

(assert (not b!7753308))

(assert (not d!2343025))

(assert (not d!2342967))

(assert (not b!7753436))

(assert (not b!7753563))

(assert (not bm!718693))

(assert (not b!7753262))

(assert (not b!7753459))

(assert (not b!7753264))

(assert (not b!7753623))

(assert (not b!7753472))

(assert (not b!7753396))

(assert (not bm!718701))

(assert (not bm!718734))

(assert (not d!2343011))

(assert (not bm!718714))

(assert (not b!7753640))

(assert (not bm!718723))

(assert (not bm!718700))

(assert (not b!7753435))

(assert (not b!7753597))

(assert (not bm!718688))

(assert (not bm!718724))

(assert (not b!7753268))

(assert (not d!2343077))

(assert (not bm!718704))

(assert (not b!7753601))

(assert (not b!7753348))

(assert (not b!7753596))

(assert (not b!7753365))

(assert (not b!7753578))

(assert (not b!7753393))

(assert (not b!7753464))

(assert (not bm!718707))

(assert (not b!7753607))

(assert (not b!7753296))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

