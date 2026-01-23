; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!743298 () Bool)

(assert start!743298)

(declare-fun b!7852831 () Bool)

(declare-fun e!4641756 () Bool)

(declare-fun tp!2325860 () Bool)

(assert (=> b!7852831 (= e!4641756 tp!2325860)))

(declare-fun b!7852832 () Bool)

(declare-fun res!3122564 () Bool)

(declare-fun e!4641757 () Bool)

(assert (=> b!7852832 (=> (not res!3122564) (not e!4641757))))

(declare-datatypes ((C!42508 0))(
  ( (C!42509 (val!31716 Int)) )
))
(declare-datatypes ((List!73950 0))(
  ( (Nil!73826) (Cons!73826 (h!80274 C!42508) (t!388685 List!73950)) )
))
(declare-fun s1!4084 () List!73950)

(get-info :version)

(assert (=> b!7852832 (= res!3122564 ((_ is Cons!73826) s1!4084))))

(declare-fun b!7852833 () Bool)

(declare-fun e!4641754 () Bool)

(declare-datatypes ((Regex!21091 0))(
  ( (ElementMatch!21091 (c!1443291 C!42508)) (Concat!29936 (regOne!42694 Regex!21091) (regTwo!42694 Regex!21091)) (EmptyExpr!21091) (Star!21091 (reg!21420 Regex!21091)) (EmptyLang!21091) (Union!21091 (regOne!42695 Regex!21091) (regTwo!42695 Regex!21091)) )
))
(declare-fun lt!2679791 () Regex!21091)

(declare-fun matchR!10527 (Regex!21091 List!73950) Bool)

(assert (=> b!7852833 (= e!4641754 (not (matchR!10527 lt!2679791 (t!388685 s1!4084))))))

(declare-fun b!7852834 () Bool)

(declare-fun tp!2325862 () Bool)

(declare-fun tp!2325866 () Bool)

(assert (=> b!7852834 (= e!4641756 (and tp!2325862 tp!2325866))))

(declare-fun b!7852835 () Bool)

(declare-fun tp_is_empty!52581 () Bool)

(assert (=> b!7852835 (= e!4641756 tp_is_empty!52581)))

(declare-fun b!7852836 () Bool)

(declare-fun e!4641759 () Bool)

(declare-fun tp!2325864 () Bool)

(assert (=> b!7852836 (= e!4641759 (and tp_is_empty!52581 tp!2325864))))

(declare-fun b!7852838 () Bool)

(declare-fun e!4641758 () Bool)

(declare-fun tp!2325857 () Bool)

(declare-fun tp!2325858 () Bool)

(assert (=> b!7852838 (= e!4641758 (and tp!2325857 tp!2325858))))

(declare-fun b!7852839 () Bool)

(declare-fun tp!2325863 () Bool)

(assert (=> b!7852839 (= e!4641758 tp!2325863)))

(declare-fun b!7852840 () Bool)

(declare-fun res!3122561 () Bool)

(assert (=> b!7852840 (=> (not res!3122561) (not e!4641757))))

(declare-fun r1!6227 () Regex!21091)

(assert (=> b!7852840 (= res!3122561 (matchR!10527 r1!6227 s1!4084))))

(declare-fun b!7852841 () Bool)

(declare-fun res!3122563 () Bool)

(assert (=> b!7852841 (=> (not res!3122563) (not e!4641757))))

(declare-fun r2!6165 () Regex!21091)

(declare-fun validRegex!11501 (Regex!21091) Bool)

(assert (=> b!7852841 (= res!3122563 (validRegex!11501 r2!6165))))

(declare-fun b!7852842 () Bool)

(declare-fun tp!2325861 () Bool)

(declare-fun tp!2325859 () Bool)

(assert (=> b!7852842 (= e!4641758 (and tp!2325861 tp!2325859))))

(declare-fun b!7852843 () Bool)

(assert (=> b!7852843 (= e!4641757 e!4641754)))

(declare-fun res!3122559 () Bool)

(assert (=> b!7852843 (=> (not res!3122559) (not e!4641754))))

(assert (=> b!7852843 (= res!3122559 (validRegex!11501 lt!2679791))))

(declare-fun derivativeStep!6326 (Regex!21091 C!42508) Regex!21091)

(assert (=> b!7852843 (= lt!2679791 (derivativeStep!6326 r1!6227 (h!80274 s1!4084)))))

(declare-fun b!7852844 () Bool)

(declare-fun e!4641755 () Bool)

(declare-fun tp!2325868 () Bool)

(assert (=> b!7852844 (= e!4641755 (and tp_is_empty!52581 tp!2325868))))

(declare-fun b!7852845 () Bool)

(assert (=> b!7852845 (= e!4641758 tp_is_empty!52581)))

(declare-fun b!7852846 () Bool)

(declare-fun tp!2325865 () Bool)

(declare-fun tp!2325867 () Bool)

(assert (=> b!7852846 (= e!4641756 (and tp!2325865 tp!2325867))))

(declare-fun b!7852837 () Bool)

(declare-fun res!3122562 () Bool)

(assert (=> b!7852837 (=> (not res!3122562) (not e!4641757))))

(declare-fun s2!3706 () List!73950)

(assert (=> b!7852837 (= res!3122562 (matchR!10527 r2!6165 s2!3706))))

(declare-fun res!3122560 () Bool)

(assert (=> start!743298 (=> (not res!3122560) (not e!4641757))))

(assert (=> start!743298 (= res!3122560 (validRegex!11501 r1!6227))))

(assert (=> start!743298 e!4641757))

(assert (=> start!743298 e!4641756))

(assert (=> start!743298 e!4641758))

(assert (=> start!743298 e!4641755))

(assert (=> start!743298 e!4641759))

(assert (= (and start!743298 res!3122560) b!7852841))

(assert (= (and b!7852841 res!3122563) b!7852840))

(assert (= (and b!7852840 res!3122561) b!7852837))

(assert (= (and b!7852837 res!3122562) b!7852832))

(assert (= (and b!7852832 res!3122564) b!7852843))

(assert (= (and b!7852843 res!3122559) b!7852833))

(assert (= (and start!743298 ((_ is ElementMatch!21091) r1!6227)) b!7852835))

(assert (= (and start!743298 ((_ is Concat!29936) r1!6227)) b!7852846))

(assert (= (and start!743298 ((_ is Star!21091) r1!6227)) b!7852831))

(assert (= (and start!743298 ((_ is Union!21091) r1!6227)) b!7852834))

(assert (= (and start!743298 ((_ is ElementMatch!21091) r2!6165)) b!7852845))

(assert (= (and start!743298 ((_ is Concat!29936) r2!6165)) b!7852838))

(assert (= (and start!743298 ((_ is Star!21091) r2!6165)) b!7852839))

(assert (= (and start!743298 ((_ is Union!21091) r2!6165)) b!7852842))

(assert (= (and start!743298 ((_ is Cons!73826) s1!4084)) b!7852844))

(assert (= (and start!743298 ((_ is Cons!73826) s2!3706)) b!7852836))

(declare-fun m!8258974 () Bool)

(assert (=> b!7852833 m!8258974))

(declare-fun m!8258976 () Bool)

(assert (=> b!7852841 m!8258976))

(declare-fun m!8258978 () Bool)

(assert (=> start!743298 m!8258978))

(declare-fun m!8258980 () Bool)

(assert (=> b!7852840 m!8258980))

(declare-fun m!8258982 () Bool)

(assert (=> b!7852837 m!8258982))

(declare-fun m!8258984 () Bool)

(assert (=> b!7852843 m!8258984))

(declare-fun m!8258986 () Bool)

(assert (=> b!7852843 m!8258986))

(check-sat (not b!7852833) (not b!7852838) (not b!7852839) tp_is_empty!52581 (not b!7852834) (not start!743298) (not b!7852842) (not b!7852831) (not b!7852837) (not b!7852843) (not b!7852836) (not b!7852841) (not b!7852844) (not b!7852846) (not b!7852840))
(check-sat)
(get-model)

(declare-fun b!7852902 () Bool)

(declare-fun e!4641799 () Bool)

(declare-fun head!16047 (List!73950) C!42508)

(declare-fun tail!15590 (List!73950) List!73950)

(assert (=> b!7852902 (= e!4641799 (matchR!10527 (derivativeStep!6326 r1!6227 (head!16047 s1!4084)) (tail!15590 s1!4084)))))

(declare-fun bm!727829 () Bool)

(declare-fun call!727834 () Bool)

(declare-fun isEmpty!42336 (List!73950) Bool)

(assert (=> bm!727829 (= call!727834 (isEmpty!42336 s1!4084))))

(declare-fun b!7852903 () Bool)

(declare-fun res!3122599 () Bool)

(declare-fun e!4641795 () Bool)

(assert (=> b!7852903 (=> res!3122599 e!4641795)))

(assert (=> b!7852903 (= res!3122599 (not (isEmpty!42336 (tail!15590 s1!4084))))))

(declare-fun d!2353504 () Bool)

(declare-fun e!4641801 () Bool)

(assert (=> d!2353504 e!4641801))

(declare-fun c!1443305 () Bool)

(assert (=> d!2353504 (= c!1443305 ((_ is EmptyExpr!21091) r1!6227))))

(declare-fun lt!2679794 () Bool)

(assert (=> d!2353504 (= lt!2679794 e!4641799)))

(declare-fun c!1443306 () Bool)

(assert (=> d!2353504 (= c!1443306 (isEmpty!42336 s1!4084))))

(assert (=> d!2353504 (validRegex!11501 r1!6227)))

(assert (=> d!2353504 (= (matchR!10527 r1!6227 s1!4084) lt!2679794)))

(declare-fun b!7852904 () Bool)

(declare-fun e!4641798 () Bool)

(assert (=> b!7852904 (= e!4641798 (not lt!2679794))))

(declare-fun b!7852905 () Bool)

(assert (=> b!7852905 (= e!4641801 (= lt!2679794 call!727834))))

(declare-fun b!7852906 () Bool)

(declare-fun e!4641797 () Bool)

(assert (=> b!7852906 (= e!4641797 e!4641795)))

(declare-fun res!3122601 () Bool)

(assert (=> b!7852906 (=> res!3122601 e!4641795)))

(assert (=> b!7852906 (= res!3122601 call!727834)))

(declare-fun b!7852907 () Bool)

(assert (=> b!7852907 (= e!4641801 e!4641798)))

(declare-fun c!1443304 () Bool)

(assert (=> b!7852907 (= c!1443304 ((_ is EmptyLang!21091) r1!6227))))

(declare-fun b!7852908 () Bool)

(declare-fun res!3122600 () Bool)

(declare-fun e!4641796 () Bool)

(assert (=> b!7852908 (=> res!3122600 e!4641796)))

(declare-fun e!4641800 () Bool)

(assert (=> b!7852908 (= res!3122600 e!4641800)))

(declare-fun res!3122602 () Bool)

(assert (=> b!7852908 (=> (not res!3122602) (not e!4641800))))

(assert (=> b!7852908 (= res!3122602 lt!2679794)))

(declare-fun b!7852909 () Bool)

(declare-fun nullable!9363 (Regex!21091) Bool)

(assert (=> b!7852909 (= e!4641799 (nullable!9363 r1!6227))))

(declare-fun b!7852910 () Bool)

(assert (=> b!7852910 (= e!4641800 (= (head!16047 s1!4084) (c!1443291 r1!6227)))))

(declare-fun b!7852911 () Bool)

(declare-fun res!3122596 () Bool)

(assert (=> b!7852911 (=> res!3122596 e!4641796)))

(assert (=> b!7852911 (= res!3122596 (not ((_ is ElementMatch!21091) r1!6227)))))

(assert (=> b!7852911 (= e!4641798 e!4641796)))

(declare-fun b!7852912 () Bool)

(declare-fun res!3122597 () Bool)

(assert (=> b!7852912 (=> (not res!3122597) (not e!4641800))))

(assert (=> b!7852912 (= res!3122597 (not call!727834))))

(declare-fun b!7852913 () Bool)

(declare-fun res!3122598 () Bool)

(assert (=> b!7852913 (=> (not res!3122598) (not e!4641800))))

(assert (=> b!7852913 (= res!3122598 (isEmpty!42336 (tail!15590 s1!4084)))))

(declare-fun b!7852914 () Bool)

(assert (=> b!7852914 (= e!4641795 (not (= (head!16047 s1!4084) (c!1443291 r1!6227))))))

(declare-fun b!7852915 () Bool)

(assert (=> b!7852915 (= e!4641796 e!4641797)))

(declare-fun res!3122603 () Bool)

(assert (=> b!7852915 (=> (not res!3122603) (not e!4641797))))

(assert (=> b!7852915 (= res!3122603 (not lt!2679794))))

(assert (= (and d!2353504 c!1443306) b!7852909))

(assert (= (and d!2353504 (not c!1443306)) b!7852902))

(assert (= (and d!2353504 c!1443305) b!7852905))

(assert (= (and d!2353504 (not c!1443305)) b!7852907))

(assert (= (and b!7852907 c!1443304) b!7852904))

(assert (= (and b!7852907 (not c!1443304)) b!7852911))

(assert (= (and b!7852911 (not res!3122596)) b!7852908))

(assert (= (and b!7852908 res!3122602) b!7852912))

(assert (= (and b!7852912 res!3122597) b!7852913))

(assert (= (and b!7852913 res!3122598) b!7852910))

(assert (= (and b!7852908 (not res!3122600)) b!7852915))

(assert (= (and b!7852915 res!3122603) b!7852906))

(assert (= (and b!7852906 (not res!3122601)) b!7852903))

(assert (= (and b!7852903 (not res!3122599)) b!7852914))

(assert (= (or b!7852905 b!7852906 b!7852912) bm!727829))

(declare-fun m!8258994 () Bool)

(assert (=> d!2353504 m!8258994))

(assert (=> d!2353504 m!8258978))

(declare-fun m!8258996 () Bool)

(assert (=> b!7852903 m!8258996))

(assert (=> b!7852903 m!8258996))

(declare-fun m!8258998 () Bool)

(assert (=> b!7852903 m!8258998))

(declare-fun m!8259000 () Bool)

(assert (=> b!7852902 m!8259000))

(assert (=> b!7852902 m!8259000))

(declare-fun m!8259002 () Bool)

(assert (=> b!7852902 m!8259002))

(assert (=> b!7852902 m!8258996))

(assert (=> b!7852902 m!8259002))

(assert (=> b!7852902 m!8258996))

(declare-fun m!8259004 () Bool)

(assert (=> b!7852902 m!8259004))

(assert (=> bm!727829 m!8258994))

(assert (=> b!7852913 m!8258996))

(assert (=> b!7852913 m!8258996))

(assert (=> b!7852913 m!8258998))

(declare-fun m!8259006 () Bool)

(assert (=> b!7852909 m!8259006))

(assert (=> b!7852914 m!8259000))

(assert (=> b!7852910 m!8259000))

(assert (=> b!7852840 d!2353504))

(declare-fun b!7852962 () Bool)

(declare-fun e!4641834 () Bool)

(declare-fun e!4641833 () Bool)

(assert (=> b!7852962 (= e!4641834 e!4641833)))

(declare-fun res!3122633 () Bool)

(assert (=> b!7852962 (= res!3122633 (not (nullable!9363 (reg!21420 r2!6165))))))

(assert (=> b!7852962 (=> (not res!3122633) (not e!4641833))))

(declare-fun b!7852963 () Bool)

(declare-fun call!727845 () Bool)

(assert (=> b!7852963 (= e!4641833 call!727845)))

(declare-fun b!7852964 () Bool)

(declare-fun e!4641832 () Bool)

(assert (=> b!7852964 (= e!4641834 e!4641832)))

(declare-fun c!1443318 () Bool)

(assert (=> b!7852964 (= c!1443318 ((_ is Union!21091) r2!6165))))

(declare-fun b!7852965 () Bool)

(declare-fun e!4641835 () Bool)

(declare-fun call!727843 () Bool)

(assert (=> b!7852965 (= e!4641835 call!727843)))

(declare-fun bm!727838 () Bool)

(declare-fun call!727844 () Bool)

(assert (=> bm!727838 (= call!727844 call!727845)))

(declare-fun b!7852966 () Bool)

(declare-fun res!3122632 () Bool)

(declare-fun e!4641831 () Bool)

(assert (=> b!7852966 (=> res!3122632 e!4641831)))

(assert (=> b!7852966 (= res!3122632 (not ((_ is Concat!29936) r2!6165)))))

(assert (=> b!7852966 (= e!4641832 e!4641831)))

(declare-fun b!7852968 () Bool)

(declare-fun e!4641830 () Bool)

(assert (=> b!7852968 (= e!4641830 call!727844)))

(declare-fun b!7852969 () Bool)

(declare-fun e!4641836 () Bool)

(assert (=> b!7852969 (= e!4641836 e!4641834)))

(declare-fun c!1443317 () Bool)

(assert (=> b!7852969 (= c!1443317 ((_ is Star!21091) r2!6165))))

(declare-fun bm!727839 () Bool)

(assert (=> bm!727839 (= call!727843 (validRegex!11501 (ite c!1443318 (regOne!42695 r2!6165) (regTwo!42694 r2!6165))))))

(declare-fun b!7852970 () Bool)

(assert (=> b!7852970 (= e!4641831 e!4641835)))

(declare-fun res!3122630 () Bool)

(assert (=> b!7852970 (=> (not res!3122630) (not e!4641835))))

(assert (=> b!7852970 (= res!3122630 call!727844)))

(declare-fun bm!727840 () Bool)

(assert (=> bm!727840 (= call!727845 (validRegex!11501 (ite c!1443317 (reg!21420 r2!6165) (ite c!1443318 (regTwo!42695 r2!6165) (regOne!42694 r2!6165)))))))

(declare-fun b!7852967 () Bool)

(declare-fun res!3122631 () Bool)

(assert (=> b!7852967 (=> (not res!3122631) (not e!4641830))))

(assert (=> b!7852967 (= res!3122631 call!727843)))

(assert (=> b!7852967 (= e!4641832 e!4641830)))

(declare-fun d!2353510 () Bool)

(declare-fun res!3122634 () Bool)

(assert (=> d!2353510 (=> res!3122634 e!4641836)))

(assert (=> d!2353510 (= res!3122634 ((_ is ElementMatch!21091) r2!6165))))

(assert (=> d!2353510 (= (validRegex!11501 r2!6165) e!4641836)))

(assert (= (and d!2353510 (not res!3122634)) b!7852969))

(assert (= (and b!7852969 c!1443317) b!7852962))

(assert (= (and b!7852969 (not c!1443317)) b!7852964))

(assert (= (and b!7852962 res!3122633) b!7852963))

(assert (= (and b!7852964 c!1443318) b!7852967))

(assert (= (and b!7852964 (not c!1443318)) b!7852966))

(assert (= (and b!7852967 res!3122631) b!7852968))

(assert (= (and b!7852966 (not res!3122632)) b!7852970))

(assert (= (and b!7852970 res!3122630) b!7852965))

(assert (= (or b!7852967 b!7852965) bm!727839))

(assert (= (or b!7852968 b!7852970) bm!727838))

(assert (= (or b!7852963 bm!727838) bm!727840))

(declare-fun m!8259008 () Bool)

(assert (=> b!7852962 m!8259008))

(declare-fun m!8259010 () Bool)

(assert (=> bm!727839 m!8259010))

(declare-fun m!8259012 () Bool)

(assert (=> bm!727840 m!8259012))

(assert (=> b!7852841 d!2353510))

(declare-fun b!7852971 () Bool)

(declare-fun e!4641841 () Bool)

(assert (=> b!7852971 (= e!4641841 (matchR!10527 (derivativeStep!6326 r2!6165 (head!16047 s2!3706)) (tail!15590 s2!3706)))))

(declare-fun bm!727841 () Bool)

(declare-fun call!727846 () Bool)

(assert (=> bm!727841 (= call!727846 (isEmpty!42336 s2!3706))))

(declare-fun b!7852972 () Bool)

(declare-fun res!3122638 () Bool)

(declare-fun e!4641837 () Bool)

(assert (=> b!7852972 (=> res!3122638 e!4641837)))

(assert (=> b!7852972 (= res!3122638 (not (isEmpty!42336 (tail!15590 s2!3706))))))

(declare-fun d!2353512 () Bool)

(declare-fun e!4641843 () Bool)

(assert (=> d!2353512 e!4641843))

(declare-fun c!1443320 () Bool)

(assert (=> d!2353512 (= c!1443320 ((_ is EmptyExpr!21091) r2!6165))))

(declare-fun lt!2679797 () Bool)

(assert (=> d!2353512 (= lt!2679797 e!4641841)))

(declare-fun c!1443321 () Bool)

(assert (=> d!2353512 (= c!1443321 (isEmpty!42336 s2!3706))))

(assert (=> d!2353512 (validRegex!11501 r2!6165)))

(assert (=> d!2353512 (= (matchR!10527 r2!6165 s2!3706) lt!2679797)))

(declare-fun b!7852973 () Bool)

(declare-fun e!4641840 () Bool)

(assert (=> b!7852973 (= e!4641840 (not lt!2679797))))

(declare-fun b!7852974 () Bool)

(assert (=> b!7852974 (= e!4641843 (= lt!2679797 call!727846))))

(declare-fun b!7852975 () Bool)

(declare-fun e!4641839 () Bool)

(assert (=> b!7852975 (= e!4641839 e!4641837)))

(declare-fun res!3122640 () Bool)

(assert (=> b!7852975 (=> res!3122640 e!4641837)))

(assert (=> b!7852975 (= res!3122640 call!727846)))

(declare-fun b!7852976 () Bool)

(assert (=> b!7852976 (= e!4641843 e!4641840)))

(declare-fun c!1443319 () Bool)

(assert (=> b!7852976 (= c!1443319 ((_ is EmptyLang!21091) r2!6165))))

(declare-fun b!7852977 () Bool)

(declare-fun res!3122639 () Bool)

(declare-fun e!4641838 () Bool)

(assert (=> b!7852977 (=> res!3122639 e!4641838)))

(declare-fun e!4641842 () Bool)

(assert (=> b!7852977 (= res!3122639 e!4641842)))

(declare-fun res!3122641 () Bool)

(assert (=> b!7852977 (=> (not res!3122641) (not e!4641842))))

(assert (=> b!7852977 (= res!3122641 lt!2679797)))

(declare-fun b!7852978 () Bool)

(assert (=> b!7852978 (= e!4641841 (nullable!9363 r2!6165))))

(declare-fun b!7852979 () Bool)

(assert (=> b!7852979 (= e!4641842 (= (head!16047 s2!3706) (c!1443291 r2!6165)))))

(declare-fun b!7852980 () Bool)

(declare-fun res!3122635 () Bool)

(assert (=> b!7852980 (=> res!3122635 e!4641838)))

(assert (=> b!7852980 (= res!3122635 (not ((_ is ElementMatch!21091) r2!6165)))))

(assert (=> b!7852980 (= e!4641840 e!4641838)))

(declare-fun b!7852981 () Bool)

(declare-fun res!3122636 () Bool)

(assert (=> b!7852981 (=> (not res!3122636) (not e!4641842))))

(assert (=> b!7852981 (= res!3122636 (not call!727846))))

(declare-fun b!7852982 () Bool)

(declare-fun res!3122637 () Bool)

(assert (=> b!7852982 (=> (not res!3122637) (not e!4641842))))

(assert (=> b!7852982 (= res!3122637 (isEmpty!42336 (tail!15590 s2!3706)))))

(declare-fun b!7852983 () Bool)

(assert (=> b!7852983 (= e!4641837 (not (= (head!16047 s2!3706) (c!1443291 r2!6165))))))

(declare-fun b!7852984 () Bool)

(assert (=> b!7852984 (= e!4641838 e!4641839)))

(declare-fun res!3122642 () Bool)

(assert (=> b!7852984 (=> (not res!3122642) (not e!4641839))))

(assert (=> b!7852984 (= res!3122642 (not lt!2679797))))

(assert (= (and d!2353512 c!1443321) b!7852978))

(assert (= (and d!2353512 (not c!1443321)) b!7852971))

(assert (= (and d!2353512 c!1443320) b!7852974))

(assert (= (and d!2353512 (not c!1443320)) b!7852976))

(assert (= (and b!7852976 c!1443319) b!7852973))

(assert (= (and b!7852976 (not c!1443319)) b!7852980))

(assert (= (and b!7852980 (not res!3122635)) b!7852977))

(assert (= (and b!7852977 res!3122641) b!7852981))

(assert (= (and b!7852981 res!3122636) b!7852982))

(assert (= (and b!7852982 res!3122637) b!7852979))

(assert (= (and b!7852977 (not res!3122639)) b!7852984))

(assert (= (and b!7852984 res!3122642) b!7852975))

(assert (= (and b!7852975 (not res!3122640)) b!7852972))

(assert (= (and b!7852972 (not res!3122638)) b!7852983))

(assert (= (or b!7852974 b!7852975 b!7852981) bm!727841))

(declare-fun m!8259014 () Bool)

(assert (=> d!2353512 m!8259014))

(assert (=> d!2353512 m!8258976))

(declare-fun m!8259016 () Bool)

(assert (=> b!7852972 m!8259016))

(assert (=> b!7852972 m!8259016))

(declare-fun m!8259018 () Bool)

(assert (=> b!7852972 m!8259018))

(declare-fun m!8259020 () Bool)

(assert (=> b!7852971 m!8259020))

(assert (=> b!7852971 m!8259020))

(declare-fun m!8259022 () Bool)

(assert (=> b!7852971 m!8259022))

(assert (=> b!7852971 m!8259016))

(assert (=> b!7852971 m!8259022))

(assert (=> b!7852971 m!8259016))

(declare-fun m!8259024 () Bool)

(assert (=> b!7852971 m!8259024))

(assert (=> bm!727841 m!8259014))

(assert (=> b!7852982 m!8259016))

(assert (=> b!7852982 m!8259016))

(assert (=> b!7852982 m!8259018))

(declare-fun m!8259026 () Bool)

(assert (=> b!7852978 m!8259026))

(assert (=> b!7852983 m!8259020))

(assert (=> b!7852979 m!8259020))

(assert (=> b!7852837 d!2353512))

(declare-fun b!7852999 () Bool)

(declare-fun e!4641855 () Bool)

(declare-fun e!4641854 () Bool)

(assert (=> b!7852999 (= e!4641855 e!4641854)))

(declare-fun res!3122654 () Bool)

(assert (=> b!7852999 (= res!3122654 (not (nullable!9363 (reg!21420 lt!2679791))))))

(assert (=> b!7852999 (=> (not res!3122654) (not e!4641854))))

(declare-fun b!7853000 () Bool)

(declare-fun call!727850 () Bool)

(assert (=> b!7853000 (= e!4641854 call!727850)))

(declare-fun b!7853001 () Bool)

(declare-fun e!4641853 () Bool)

(assert (=> b!7853001 (= e!4641855 e!4641853)))

(declare-fun c!1443326 () Bool)

(assert (=> b!7853001 (= c!1443326 ((_ is Union!21091) lt!2679791))))

(declare-fun b!7853002 () Bool)

(declare-fun e!4641856 () Bool)

(declare-fun call!727848 () Bool)

(assert (=> b!7853002 (= e!4641856 call!727848)))

(declare-fun bm!727843 () Bool)

(declare-fun call!727849 () Bool)

(assert (=> bm!727843 (= call!727849 call!727850)))

(declare-fun b!7853003 () Bool)

(declare-fun res!3122653 () Bool)

(declare-fun e!4641852 () Bool)

(assert (=> b!7853003 (=> res!3122653 e!4641852)))

(assert (=> b!7853003 (= res!3122653 (not ((_ is Concat!29936) lt!2679791)))))

(assert (=> b!7853003 (= e!4641853 e!4641852)))

(declare-fun b!7853005 () Bool)

(declare-fun e!4641851 () Bool)

(assert (=> b!7853005 (= e!4641851 call!727849)))

(declare-fun b!7853006 () Bool)

(declare-fun e!4641857 () Bool)

(assert (=> b!7853006 (= e!4641857 e!4641855)))

(declare-fun c!1443325 () Bool)

(assert (=> b!7853006 (= c!1443325 ((_ is Star!21091) lt!2679791))))

(declare-fun bm!727844 () Bool)

(assert (=> bm!727844 (= call!727848 (validRegex!11501 (ite c!1443326 (regOne!42695 lt!2679791) (regTwo!42694 lt!2679791))))))

(declare-fun b!7853007 () Bool)

(assert (=> b!7853007 (= e!4641852 e!4641856)))

(declare-fun res!3122651 () Bool)

(assert (=> b!7853007 (=> (not res!3122651) (not e!4641856))))

(assert (=> b!7853007 (= res!3122651 call!727849)))

(declare-fun bm!727845 () Bool)

(assert (=> bm!727845 (= call!727850 (validRegex!11501 (ite c!1443325 (reg!21420 lt!2679791) (ite c!1443326 (regTwo!42695 lt!2679791) (regOne!42694 lt!2679791)))))))

(declare-fun b!7853004 () Bool)

(declare-fun res!3122652 () Bool)

(assert (=> b!7853004 (=> (not res!3122652) (not e!4641851))))

(assert (=> b!7853004 (= res!3122652 call!727848)))

(assert (=> b!7853004 (= e!4641853 e!4641851)))

(declare-fun d!2353514 () Bool)

(declare-fun res!3122655 () Bool)

(assert (=> d!2353514 (=> res!3122655 e!4641857)))

(assert (=> d!2353514 (= res!3122655 ((_ is ElementMatch!21091) lt!2679791))))

(assert (=> d!2353514 (= (validRegex!11501 lt!2679791) e!4641857)))

(assert (= (and d!2353514 (not res!3122655)) b!7853006))

(assert (= (and b!7853006 c!1443325) b!7852999))

(assert (= (and b!7853006 (not c!1443325)) b!7853001))

(assert (= (and b!7852999 res!3122654) b!7853000))

(assert (= (and b!7853001 c!1443326) b!7853004))

(assert (= (and b!7853001 (not c!1443326)) b!7853003))

(assert (= (and b!7853004 res!3122652) b!7853005))

(assert (= (and b!7853003 (not res!3122653)) b!7853007))

(assert (= (and b!7853007 res!3122651) b!7853002))

(assert (= (or b!7853004 b!7853002) bm!727844))

(assert (= (or b!7853005 b!7853007) bm!727843))

(assert (= (or b!7853000 bm!727843) bm!727845))

(declare-fun m!8259042 () Bool)

(assert (=> b!7852999 m!8259042))

(declare-fun m!8259044 () Bool)

(assert (=> bm!727844 m!8259044))

(declare-fun m!8259046 () Bool)

(assert (=> bm!727845 m!8259046))

(assert (=> b!7852843 d!2353514))

(declare-fun b!7853071 () Bool)

(declare-fun e!4641893 () Regex!21091)

(declare-fun e!4641895 () Regex!21091)

(assert (=> b!7853071 (= e!4641893 e!4641895)))

(declare-fun c!1443352 () Bool)

(assert (=> b!7853071 (= c!1443352 ((_ is ElementMatch!21091) r1!6227))))

(declare-fun b!7853072 () Bool)

(declare-fun e!4641894 () Regex!21091)

(declare-fun call!727874 () Regex!21091)

(assert (=> b!7853072 (= e!4641894 (Concat!29936 call!727874 r1!6227))))

(declare-fun b!7853073 () Bool)

(declare-fun c!1443354 () Bool)

(assert (=> b!7853073 (= c!1443354 (nullable!9363 (regOne!42694 r1!6227)))))

(declare-fun e!4641896 () Regex!21091)

(assert (=> b!7853073 (= e!4641894 e!4641896)))

(declare-fun b!7853074 () Bool)

(assert (=> b!7853074 (= e!4641895 (ite (= (h!80274 s1!4084) (c!1443291 r1!6227)) EmptyExpr!21091 EmptyLang!21091))))

(declare-fun call!727872 () Regex!21091)

(declare-fun bm!727866 () Bool)

(declare-fun c!1443355 () Bool)

(declare-fun c!1443353 () Bool)

(assert (=> bm!727866 (= call!727872 (derivativeStep!6326 (ite c!1443353 (regOne!42695 r1!6227) (ite c!1443355 (reg!21420 r1!6227) (regOne!42694 r1!6227))) (h!80274 s1!4084)))))

(declare-fun b!7853075 () Bool)

(declare-fun e!4641892 () Regex!21091)

(declare-fun call!727873 () Regex!21091)

(assert (=> b!7853075 (= e!4641892 (Union!21091 call!727872 call!727873))))

(declare-fun call!727871 () Regex!21091)

(declare-fun b!7853076 () Bool)

(assert (=> b!7853076 (= e!4641896 (Union!21091 (Concat!29936 call!727874 (regTwo!42694 r1!6227)) call!727871))))

(declare-fun bm!727867 () Bool)

(assert (=> bm!727867 (= call!727871 call!727873)))

(declare-fun d!2353518 () Bool)

(declare-fun lt!2679804 () Regex!21091)

(assert (=> d!2353518 (validRegex!11501 lt!2679804)))

(assert (=> d!2353518 (= lt!2679804 e!4641893)))

(declare-fun c!1443356 () Bool)

(assert (=> d!2353518 (= c!1443356 (or ((_ is EmptyExpr!21091) r1!6227) ((_ is EmptyLang!21091) r1!6227)))))

(assert (=> d!2353518 (validRegex!11501 r1!6227)))

(assert (=> d!2353518 (= (derivativeStep!6326 r1!6227 (h!80274 s1!4084)) lt!2679804)))

(declare-fun bm!727868 () Bool)

(assert (=> bm!727868 (= call!727873 (derivativeStep!6326 (ite c!1443353 (regTwo!42695 r1!6227) (ite c!1443354 (regTwo!42694 r1!6227) (regOne!42694 r1!6227))) (h!80274 s1!4084)))))

(declare-fun b!7853077 () Bool)

(assert (=> b!7853077 (= e!4641893 EmptyLang!21091)))

(declare-fun b!7853078 () Bool)

(assert (=> b!7853078 (= c!1443353 ((_ is Union!21091) r1!6227))))

(assert (=> b!7853078 (= e!4641895 e!4641892)))

(declare-fun b!7853079 () Bool)

(assert (=> b!7853079 (= e!4641892 e!4641894)))

(assert (=> b!7853079 (= c!1443355 ((_ is Star!21091) r1!6227))))

(declare-fun bm!727869 () Bool)

(assert (=> bm!727869 (= call!727874 call!727872)))

(declare-fun b!7853080 () Bool)

(assert (=> b!7853080 (= e!4641896 (Union!21091 (Concat!29936 call!727871 (regTwo!42694 r1!6227)) EmptyLang!21091))))

(assert (= (and d!2353518 c!1443356) b!7853077))

(assert (= (and d!2353518 (not c!1443356)) b!7853071))

(assert (= (and b!7853071 c!1443352) b!7853074))

(assert (= (and b!7853071 (not c!1443352)) b!7853078))

(assert (= (and b!7853078 c!1443353) b!7853075))

(assert (= (and b!7853078 (not c!1443353)) b!7853079))

(assert (= (and b!7853079 c!1443355) b!7853072))

(assert (= (and b!7853079 (not c!1443355)) b!7853073))

(assert (= (and b!7853073 c!1443354) b!7853076))

(assert (= (and b!7853073 (not c!1443354)) b!7853080))

(assert (= (or b!7853076 b!7853080) bm!727867))

(assert (= (or b!7853072 b!7853076) bm!727869))

(assert (= (or b!7853075 bm!727867) bm!727868))

(assert (= (or b!7853075 bm!727869) bm!727866))

(declare-fun m!8259070 () Bool)

(assert (=> b!7853073 m!8259070))

(declare-fun m!8259076 () Bool)

(assert (=> bm!727866 m!8259076))

(declare-fun m!8259080 () Bool)

(assert (=> d!2353518 m!8259080))

(assert (=> d!2353518 m!8258978))

(declare-fun m!8259082 () Bool)

(assert (=> bm!727868 m!8259082))

(assert (=> b!7852843 d!2353518))

(declare-fun b!7853105 () Bool)

(declare-fun e!4641913 () Bool)

(assert (=> b!7853105 (= e!4641913 (matchR!10527 (derivativeStep!6326 lt!2679791 (head!16047 (t!388685 s1!4084))) (tail!15590 (t!388685 s1!4084))))))

(declare-fun bm!727875 () Bool)

(declare-fun call!727880 () Bool)

(assert (=> bm!727875 (= call!727880 (isEmpty!42336 (t!388685 s1!4084)))))

(declare-fun b!7853106 () Bool)

(declare-fun res!3122680 () Bool)

(declare-fun e!4641909 () Bool)

(assert (=> b!7853106 (=> res!3122680 e!4641909)))

(assert (=> b!7853106 (= res!3122680 (not (isEmpty!42336 (tail!15590 (t!388685 s1!4084)))))))

(declare-fun d!2353526 () Bool)

(declare-fun e!4641915 () Bool)

(assert (=> d!2353526 e!4641915))

(declare-fun c!1443366 () Bool)

(assert (=> d!2353526 (= c!1443366 ((_ is EmptyExpr!21091) lt!2679791))))

(declare-fun lt!2679807 () Bool)

(assert (=> d!2353526 (= lt!2679807 e!4641913)))

(declare-fun c!1443367 () Bool)

(assert (=> d!2353526 (= c!1443367 (isEmpty!42336 (t!388685 s1!4084)))))

(assert (=> d!2353526 (validRegex!11501 lt!2679791)))

(assert (=> d!2353526 (= (matchR!10527 lt!2679791 (t!388685 s1!4084)) lt!2679807)))

(declare-fun b!7853107 () Bool)

(declare-fun e!4641912 () Bool)

(assert (=> b!7853107 (= e!4641912 (not lt!2679807))))

(declare-fun b!7853108 () Bool)

(assert (=> b!7853108 (= e!4641915 (= lt!2679807 call!727880))))

(declare-fun b!7853109 () Bool)

(declare-fun e!4641911 () Bool)

(assert (=> b!7853109 (= e!4641911 e!4641909)))

(declare-fun res!3122682 () Bool)

(assert (=> b!7853109 (=> res!3122682 e!4641909)))

(assert (=> b!7853109 (= res!3122682 call!727880)))

(declare-fun b!7853110 () Bool)

(assert (=> b!7853110 (= e!4641915 e!4641912)))

(declare-fun c!1443365 () Bool)

(assert (=> b!7853110 (= c!1443365 ((_ is EmptyLang!21091) lt!2679791))))

(declare-fun b!7853111 () Bool)

(declare-fun res!3122681 () Bool)

(declare-fun e!4641910 () Bool)

(assert (=> b!7853111 (=> res!3122681 e!4641910)))

(declare-fun e!4641914 () Bool)

(assert (=> b!7853111 (= res!3122681 e!4641914)))

(declare-fun res!3122683 () Bool)

(assert (=> b!7853111 (=> (not res!3122683) (not e!4641914))))

(assert (=> b!7853111 (= res!3122683 lt!2679807)))

(declare-fun b!7853112 () Bool)

(assert (=> b!7853112 (= e!4641913 (nullable!9363 lt!2679791))))

(declare-fun b!7853113 () Bool)

(assert (=> b!7853113 (= e!4641914 (= (head!16047 (t!388685 s1!4084)) (c!1443291 lt!2679791)))))

(declare-fun b!7853114 () Bool)

(declare-fun res!3122677 () Bool)

(assert (=> b!7853114 (=> res!3122677 e!4641910)))

(assert (=> b!7853114 (= res!3122677 (not ((_ is ElementMatch!21091) lt!2679791)))))

(assert (=> b!7853114 (= e!4641912 e!4641910)))

(declare-fun b!7853115 () Bool)

(declare-fun res!3122678 () Bool)

(assert (=> b!7853115 (=> (not res!3122678) (not e!4641914))))

(assert (=> b!7853115 (= res!3122678 (not call!727880))))

(declare-fun b!7853116 () Bool)

(declare-fun res!3122679 () Bool)

(assert (=> b!7853116 (=> (not res!3122679) (not e!4641914))))

(assert (=> b!7853116 (= res!3122679 (isEmpty!42336 (tail!15590 (t!388685 s1!4084))))))

(declare-fun b!7853117 () Bool)

(assert (=> b!7853117 (= e!4641909 (not (= (head!16047 (t!388685 s1!4084)) (c!1443291 lt!2679791))))))

(declare-fun b!7853118 () Bool)

(assert (=> b!7853118 (= e!4641910 e!4641911)))

(declare-fun res!3122684 () Bool)

(assert (=> b!7853118 (=> (not res!3122684) (not e!4641911))))

(assert (=> b!7853118 (= res!3122684 (not lt!2679807))))

(assert (= (and d!2353526 c!1443367) b!7853112))

(assert (= (and d!2353526 (not c!1443367)) b!7853105))

(assert (= (and d!2353526 c!1443366) b!7853108))

(assert (= (and d!2353526 (not c!1443366)) b!7853110))

(assert (= (and b!7853110 c!1443365) b!7853107))

(assert (= (and b!7853110 (not c!1443365)) b!7853114))

(assert (= (and b!7853114 (not res!3122677)) b!7853111))

(assert (= (and b!7853111 res!3122683) b!7853115))

(assert (= (and b!7853115 res!3122678) b!7853116))

(assert (= (and b!7853116 res!3122679) b!7853113))

(assert (= (and b!7853111 (not res!3122681)) b!7853118))

(assert (= (and b!7853118 res!3122684) b!7853109))

(assert (= (and b!7853109 (not res!3122682)) b!7853106))

(assert (= (and b!7853106 (not res!3122680)) b!7853117))

(assert (= (or b!7853108 b!7853109 b!7853115) bm!727875))

(declare-fun m!8259098 () Bool)

(assert (=> d!2353526 m!8259098))

(assert (=> d!2353526 m!8258984))

(declare-fun m!8259100 () Bool)

(assert (=> b!7853106 m!8259100))

(assert (=> b!7853106 m!8259100))

(declare-fun m!8259102 () Bool)

(assert (=> b!7853106 m!8259102))

(declare-fun m!8259104 () Bool)

(assert (=> b!7853105 m!8259104))

(assert (=> b!7853105 m!8259104))

(declare-fun m!8259106 () Bool)

(assert (=> b!7853105 m!8259106))

(assert (=> b!7853105 m!8259100))

(assert (=> b!7853105 m!8259106))

(assert (=> b!7853105 m!8259100))

(declare-fun m!8259108 () Bool)

(assert (=> b!7853105 m!8259108))

(assert (=> bm!727875 m!8259098))

(assert (=> b!7853116 m!8259100))

(assert (=> b!7853116 m!8259100))

(assert (=> b!7853116 m!8259102))

(declare-fun m!8259110 () Bool)

(assert (=> b!7853112 m!8259110))

(assert (=> b!7853117 m!8259104))

(assert (=> b!7853113 m!8259104))

(assert (=> b!7852833 d!2353526))

(declare-fun b!7853128 () Bool)

(declare-fun e!4641927 () Bool)

(declare-fun e!4641926 () Bool)

(assert (=> b!7853128 (= e!4641927 e!4641926)))

(declare-fun res!3122693 () Bool)

(assert (=> b!7853128 (= res!3122693 (not (nullable!9363 (reg!21420 r1!6227))))))

(assert (=> b!7853128 (=> (not res!3122693) (not e!4641926))))

(declare-fun b!7853129 () Bool)

(declare-fun call!727886 () Bool)

(assert (=> b!7853129 (= e!4641926 call!727886)))

(declare-fun b!7853130 () Bool)

(declare-fun e!4641925 () Bool)

(assert (=> b!7853130 (= e!4641927 e!4641925)))

(declare-fun c!1443371 () Bool)

(assert (=> b!7853130 (= c!1443371 ((_ is Union!21091) r1!6227))))

(declare-fun b!7853131 () Bool)

(declare-fun e!4641928 () Bool)

(declare-fun call!727884 () Bool)

(assert (=> b!7853131 (= e!4641928 call!727884)))

(declare-fun bm!727879 () Bool)

(declare-fun call!727885 () Bool)

(assert (=> bm!727879 (= call!727885 call!727886)))

(declare-fun b!7853132 () Bool)

(declare-fun res!3122692 () Bool)

(declare-fun e!4641924 () Bool)

(assert (=> b!7853132 (=> res!3122692 e!4641924)))

(assert (=> b!7853132 (= res!3122692 (not ((_ is Concat!29936) r1!6227)))))

(assert (=> b!7853132 (= e!4641925 e!4641924)))

(declare-fun b!7853134 () Bool)

(declare-fun e!4641923 () Bool)

(assert (=> b!7853134 (= e!4641923 call!727885)))

(declare-fun b!7853135 () Bool)

(declare-fun e!4641929 () Bool)

(assert (=> b!7853135 (= e!4641929 e!4641927)))

(declare-fun c!1443370 () Bool)

(assert (=> b!7853135 (= c!1443370 ((_ is Star!21091) r1!6227))))

(declare-fun bm!727880 () Bool)

(assert (=> bm!727880 (= call!727884 (validRegex!11501 (ite c!1443371 (regOne!42695 r1!6227) (regTwo!42694 r1!6227))))))

(declare-fun b!7853136 () Bool)

(assert (=> b!7853136 (= e!4641924 e!4641928)))

(declare-fun res!3122690 () Bool)

(assert (=> b!7853136 (=> (not res!3122690) (not e!4641928))))

(assert (=> b!7853136 (= res!3122690 call!727885)))

(declare-fun bm!727881 () Bool)

(assert (=> bm!727881 (= call!727886 (validRegex!11501 (ite c!1443370 (reg!21420 r1!6227) (ite c!1443371 (regTwo!42695 r1!6227) (regOne!42694 r1!6227)))))))

(declare-fun b!7853133 () Bool)

(declare-fun res!3122691 () Bool)

(assert (=> b!7853133 (=> (not res!3122691) (not e!4641923))))

(assert (=> b!7853133 (= res!3122691 call!727884)))

(assert (=> b!7853133 (= e!4641925 e!4641923)))

(declare-fun d!2353530 () Bool)

(declare-fun res!3122694 () Bool)

(assert (=> d!2353530 (=> res!3122694 e!4641929)))

(assert (=> d!2353530 (= res!3122694 ((_ is ElementMatch!21091) r1!6227))))

(assert (=> d!2353530 (= (validRegex!11501 r1!6227) e!4641929)))

(assert (= (and d!2353530 (not res!3122694)) b!7853135))

(assert (= (and b!7853135 c!1443370) b!7853128))

(assert (= (and b!7853135 (not c!1443370)) b!7853130))

(assert (= (and b!7853128 res!3122693) b!7853129))

(assert (= (and b!7853130 c!1443371) b!7853133))

(assert (= (and b!7853130 (not c!1443371)) b!7853132))

(assert (= (and b!7853133 res!3122691) b!7853134))

(assert (= (and b!7853132 (not res!3122692)) b!7853136))

(assert (= (and b!7853136 res!3122690) b!7853131))

(assert (= (or b!7853133 b!7853131) bm!727880))

(assert (= (or b!7853134 b!7853136) bm!727879))

(assert (= (or b!7853129 bm!727879) bm!727881))

(declare-fun m!8259118 () Bool)

(assert (=> b!7853128 m!8259118))

(declare-fun m!8259120 () Bool)

(assert (=> bm!727880 m!8259120))

(declare-fun m!8259122 () Bool)

(assert (=> bm!727881 m!8259122))

(assert (=> start!743298 d!2353530))

(declare-fun b!7853175 () Bool)

(declare-fun e!4641938 () Bool)

(declare-fun tp!2325909 () Bool)

(assert (=> b!7853175 (= e!4641938 tp!2325909)))

(assert (=> b!7852846 (= tp!2325865 e!4641938)))

(declare-fun b!7853173 () Bool)

(assert (=> b!7853173 (= e!4641938 tp_is_empty!52581)))

(declare-fun b!7853174 () Bool)

(declare-fun tp!2325912 () Bool)

(declare-fun tp!2325911 () Bool)

(assert (=> b!7853174 (= e!4641938 (and tp!2325912 tp!2325911))))

(declare-fun b!7853176 () Bool)

(declare-fun tp!2325913 () Bool)

(declare-fun tp!2325910 () Bool)

(assert (=> b!7853176 (= e!4641938 (and tp!2325913 tp!2325910))))

(assert (= (and b!7852846 ((_ is ElementMatch!21091) (regOne!42694 r1!6227))) b!7853173))

(assert (= (and b!7852846 ((_ is Concat!29936) (regOne!42694 r1!6227))) b!7853174))

(assert (= (and b!7852846 ((_ is Star!21091) (regOne!42694 r1!6227))) b!7853175))

(assert (= (and b!7852846 ((_ is Union!21091) (regOne!42694 r1!6227))) b!7853176))

(declare-fun b!7853187 () Bool)

(declare-fun e!4641941 () Bool)

(declare-fun tp!2325920 () Bool)

(assert (=> b!7853187 (= e!4641941 tp!2325920)))

(assert (=> b!7852846 (= tp!2325867 e!4641941)))

(declare-fun b!7853185 () Bool)

(assert (=> b!7853185 (= e!4641941 tp_is_empty!52581)))

(declare-fun b!7853186 () Bool)

(declare-fun tp!2325927 () Bool)

(declare-fun tp!2325926 () Bool)

(assert (=> b!7853186 (= e!4641941 (and tp!2325927 tp!2325926))))

(declare-fun b!7853188 () Bool)

(declare-fun tp!2325928 () Bool)

(declare-fun tp!2325925 () Bool)

(assert (=> b!7853188 (= e!4641941 (and tp!2325928 tp!2325925))))

(assert (= (and b!7852846 ((_ is ElementMatch!21091) (regTwo!42694 r1!6227))) b!7853185))

(assert (= (and b!7852846 ((_ is Concat!29936) (regTwo!42694 r1!6227))) b!7853186))

(assert (= (and b!7852846 ((_ is Star!21091) (regTwo!42694 r1!6227))) b!7853187))

(assert (= (and b!7852846 ((_ is Union!21091) (regTwo!42694 r1!6227))) b!7853188))

(declare-fun b!7853205 () Bool)

(declare-fun e!4641948 () Bool)

(declare-fun tp!2325943 () Bool)

(assert (=> b!7853205 (= e!4641948 (and tp_is_empty!52581 tp!2325943))))

(assert (=> b!7852836 (= tp!2325864 e!4641948)))

(assert (= (and b!7852836 ((_ is Cons!73826) (t!388685 s2!3706))) b!7853205))

(declare-fun b!7853208 () Bool)

(declare-fun e!4641949 () Bool)

(declare-fun tp!2325944 () Bool)

(assert (=> b!7853208 (= e!4641949 tp!2325944)))

(assert (=> b!7852831 (= tp!2325860 e!4641949)))

(declare-fun b!7853206 () Bool)

(assert (=> b!7853206 (= e!4641949 tp_is_empty!52581)))

(declare-fun b!7853207 () Bool)

(declare-fun tp!2325947 () Bool)

(declare-fun tp!2325946 () Bool)

(assert (=> b!7853207 (= e!4641949 (and tp!2325947 tp!2325946))))

(declare-fun b!7853209 () Bool)

(declare-fun tp!2325948 () Bool)

(declare-fun tp!2325945 () Bool)

(assert (=> b!7853209 (= e!4641949 (and tp!2325948 tp!2325945))))

(assert (= (and b!7852831 ((_ is ElementMatch!21091) (reg!21420 r1!6227))) b!7853206))

(assert (= (and b!7852831 ((_ is Concat!29936) (reg!21420 r1!6227))) b!7853207))

(assert (= (and b!7852831 ((_ is Star!21091) (reg!21420 r1!6227))) b!7853208))

(assert (= (and b!7852831 ((_ is Union!21091) (reg!21420 r1!6227))) b!7853209))

(declare-fun b!7853214 () Bool)

(declare-fun e!4641952 () Bool)

(declare-fun tp!2325951 () Bool)

(assert (=> b!7853214 (= e!4641952 tp!2325951)))

(assert (=> b!7852842 (= tp!2325861 e!4641952)))

(declare-fun b!7853212 () Bool)

(assert (=> b!7853212 (= e!4641952 tp_is_empty!52581)))

(declare-fun b!7853213 () Bool)

(declare-fun tp!2325954 () Bool)

(declare-fun tp!2325953 () Bool)

(assert (=> b!7853213 (= e!4641952 (and tp!2325954 tp!2325953))))

(declare-fun b!7853215 () Bool)

(declare-fun tp!2325955 () Bool)

(declare-fun tp!2325952 () Bool)

(assert (=> b!7853215 (= e!4641952 (and tp!2325955 tp!2325952))))

(assert (= (and b!7852842 ((_ is ElementMatch!21091) (regOne!42695 r2!6165))) b!7853212))

(assert (= (and b!7852842 ((_ is Concat!29936) (regOne!42695 r2!6165))) b!7853213))

(assert (= (and b!7852842 ((_ is Star!21091) (regOne!42695 r2!6165))) b!7853214))

(assert (= (and b!7852842 ((_ is Union!21091) (regOne!42695 r2!6165))) b!7853215))

(declare-fun b!7853226 () Bool)

(declare-fun e!4641955 () Bool)

(declare-fun tp!2325961 () Bool)

(assert (=> b!7853226 (= e!4641955 tp!2325961)))

(assert (=> b!7852842 (= tp!2325859 e!4641955)))

(declare-fun b!7853223 () Bool)

(assert (=> b!7853223 (= e!4641955 tp_is_empty!52581)))

(declare-fun b!7853225 () Bool)

(declare-fun tp!2325969 () Bool)

(declare-fun tp!2325968 () Bool)

(assert (=> b!7853225 (= e!4641955 (and tp!2325969 tp!2325968))))

(declare-fun b!7853227 () Bool)

(declare-fun tp!2325970 () Bool)

(declare-fun tp!2325967 () Bool)

(assert (=> b!7853227 (= e!4641955 (and tp!2325970 tp!2325967))))

(assert (= (and b!7852842 ((_ is ElementMatch!21091) (regTwo!42695 r2!6165))) b!7853223))

(assert (= (and b!7852842 ((_ is Concat!29936) (regTwo!42695 r2!6165))) b!7853225))

(assert (= (and b!7852842 ((_ is Star!21091) (regTwo!42695 r2!6165))) b!7853226))

(assert (= (and b!7852842 ((_ is Union!21091) (regTwo!42695 r2!6165))) b!7853227))

(declare-fun b!7853230 () Bool)

(declare-fun e!4641956 () Bool)

(declare-fun tp!2325971 () Bool)

(assert (=> b!7853230 (= e!4641956 tp!2325971)))

(assert (=> b!7852838 (= tp!2325857 e!4641956)))

(declare-fun b!7853228 () Bool)

(assert (=> b!7853228 (= e!4641956 tp_is_empty!52581)))

(declare-fun b!7853229 () Bool)

(declare-fun tp!2325974 () Bool)

(declare-fun tp!2325973 () Bool)

(assert (=> b!7853229 (= e!4641956 (and tp!2325974 tp!2325973))))

(declare-fun b!7853231 () Bool)

(declare-fun tp!2325975 () Bool)

(declare-fun tp!2325972 () Bool)

(assert (=> b!7853231 (= e!4641956 (and tp!2325975 tp!2325972))))

(assert (= (and b!7852838 ((_ is ElementMatch!21091) (regOne!42694 r2!6165))) b!7853228))

(assert (= (and b!7852838 ((_ is Concat!29936) (regOne!42694 r2!6165))) b!7853229))

(assert (= (and b!7852838 ((_ is Star!21091) (regOne!42694 r2!6165))) b!7853230))

(assert (= (and b!7852838 ((_ is Union!21091) (regOne!42694 r2!6165))) b!7853231))

(declare-fun b!7853234 () Bool)

(declare-fun e!4641957 () Bool)

(declare-fun tp!2325976 () Bool)

(assert (=> b!7853234 (= e!4641957 tp!2325976)))

(assert (=> b!7852838 (= tp!2325858 e!4641957)))

(declare-fun b!7853232 () Bool)

(assert (=> b!7853232 (= e!4641957 tp_is_empty!52581)))

(declare-fun b!7853233 () Bool)

(declare-fun tp!2325979 () Bool)

(declare-fun tp!2325978 () Bool)

(assert (=> b!7853233 (= e!4641957 (and tp!2325979 tp!2325978))))

(declare-fun b!7853235 () Bool)

(declare-fun tp!2325980 () Bool)

(declare-fun tp!2325977 () Bool)

(assert (=> b!7853235 (= e!4641957 (and tp!2325980 tp!2325977))))

(assert (= (and b!7852838 ((_ is ElementMatch!21091) (regTwo!42694 r2!6165))) b!7853232))

(assert (= (and b!7852838 ((_ is Concat!29936) (regTwo!42694 r2!6165))) b!7853233))

(assert (= (and b!7852838 ((_ is Star!21091) (regTwo!42694 r2!6165))) b!7853234))

(assert (= (and b!7852838 ((_ is Union!21091) (regTwo!42694 r2!6165))) b!7853235))

(declare-fun b!7853236 () Bool)

(declare-fun e!4641958 () Bool)

(declare-fun tp!2325981 () Bool)

(assert (=> b!7853236 (= e!4641958 (and tp_is_empty!52581 tp!2325981))))

(assert (=> b!7852844 (= tp!2325868 e!4641958)))

(assert (= (and b!7852844 ((_ is Cons!73826) (t!388685 s1!4084))) b!7853236))

(declare-fun b!7853239 () Bool)

(declare-fun e!4641959 () Bool)

(declare-fun tp!2325982 () Bool)

(assert (=> b!7853239 (= e!4641959 tp!2325982)))

(assert (=> b!7852839 (= tp!2325863 e!4641959)))

(declare-fun b!7853237 () Bool)

(assert (=> b!7853237 (= e!4641959 tp_is_empty!52581)))

(declare-fun b!7853238 () Bool)

(declare-fun tp!2325985 () Bool)

(declare-fun tp!2325984 () Bool)

(assert (=> b!7853238 (= e!4641959 (and tp!2325985 tp!2325984))))

(declare-fun b!7853240 () Bool)

(declare-fun tp!2325986 () Bool)

(declare-fun tp!2325983 () Bool)

(assert (=> b!7853240 (= e!4641959 (and tp!2325986 tp!2325983))))

(assert (= (and b!7852839 ((_ is ElementMatch!21091) (reg!21420 r2!6165))) b!7853237))

(assert (= (and b!7852839 ((_ is Concat!29936) (reg!21420 r2!6165))) b!7853238))

(assert (= (and b!7852839 ((_ is Star!21091) (reg!21420 r2!6165))) b!7853239))

(assert (= (and b!7852839 ((_ is Union!21091) (reg!21420 r2!6165))) b!7853240))

(declare-fun b!7853243 () Bool)

(declare-fun e!4641960 () Bool)

(declare-fun tp!2325987 () Bool)

(assert (=> b!7853243 (= e!4641960 tp!2325987)))

(assert (=> b!7852834 (= tp!2325862 e!4641960)))

(declare-fun b!7853241 () Bool)

(assert (=> b!7853241 (= e!4641960 tp_is_empty!52581)))

(declare-fun b!7853242 () Bool)

(declare-fun tp!2325990 () Bool)

(declare-fun tp!2325989 () Bool)

(assert (=> b!7853242 (= e!4641960 (and tp!2325990 tp!2325989))))

(declare-fun b!7853244 () Bool)

(declare-fun tp!2325991 () Bool)

(declare-fun tp!2325988 () Bool)

(assert (=> b!7853244 (= e!4641960 (and tp!2325991 tp!2325988))))

(assert (= (and b!7852834 ((_ is ElementMatch!21091) (regOne!42695 r1!6227))) b!7853241))

(assert (= (and b!7852834 ((_ is Concat!29936) (regOne!42695 r1!6227))) b!7853242))

(assert (= (and b!7852834 ((_ is Star!21091) (regOne!42695 r1!6227))) b!7853243))

(assert (= (and b!7852834 ((_ is Union!21091) (regOne!42695 r1!6227))) b!7853244))

(declare-fun b!7853247 () Bool)

(declare-fun e!4641961 () Bool)

(declare-fun tp!2325992 () Bool)

(assert (=> b!7853247 (= e!4641961 tp!2325992)))

(assert (=> b!7852834 (= tp!2325866 e!4641961)))

(declare-fun b!7853245 () Bool)

(assert (=> b!7853245 (= e!4641961 tp_is_empty!52581)))

(declare-fun b!7853246 () Bool)

(declare-fun tp!2325995 () Bool)

(declare-fun tp!2325994 () Bool)

(assert (=> b!7853246 (= e!4641961 (and tp!2325995 tp!2325994))))

(declare-fun b!7853248 () Bool)

(declare-fun tp!2325996 () Bool)

(declare-fun tp!2325993 () Bool)

(assert (=> b!7853248 (= e!4641961 (and tp!2325996 tp!2325993))))

(assert (= (and b!7852834 ((_ is ElementMatch!21091) (regTwo!42695 r1!6227))) b!7853245))

(assert (= (and b!7852834 ((_ is Concat!29936) (regTwo!42695 r1!6227))) b!7853246))

(assert (= (and b!7852834 ((_ is Star!21091) (regTwo!42695 r1!6227))) b!7853247))

(assert (= (and b!7852834 ((_ is Union!21091) (regTwo!42695 r1!6227))) b!7853248))

(check-sat (not b!7853175) (not b!7853240) (not b!7853230) (not b!7853116) (not b!7853187) (not bm!727844) (not b!7852979) (not b!7853205) (not b!7853247) (not b!7852971) (not bm!727845) (not b!7852903) (not b!7853128) (not d!2353504) (not b!7853112) (not b!7852910) (not b!7853243) (not b!7853231) (not b!7853208) (not bm!727880) (not b!7853239) (not b!7853117) (not bm!727866) (not b!7853176) (not b!7853207) (not b!7853105) (not b!7852914) (not b!7853215) (not b!7853242) (not b!7853188) (not d!2353512) (not b!7853229) (not d!2353526) (not b!7852909) (not bm!727841) (not b!7853186) tp_is_empty!52581 (not bm!727839) (not b!7853214) (not b!7853113) (not b!7852913) (not b!7853248) (not b!7853234) (not b!7853236) (not bm!727881) (not b!7852962) (not bm!727875) (not b!7853238) (not b!7853073) (not b!7852902) (not b!7853235) (not b!7852972) (not b!7853226) (not b!7852978) (not b!7853106) (not bm!727840) (not b!7853225) (not b!7853213) (not b!7852982) (not d!2353518) (not b!7852983) (not b!7853244) (not b!7853246) (not b!7852999) (not b!7853209) (not b!7853227) (not b!7853174) (not bm!727829) (not bm!727868) (not b!7853233))
(check-sat)
(get-model)

(declare-fun d!2353532 () Bool)

(assert (=> d!2353532 (= (head!16047 s2!3706) (h!80274 s2!3706))))

(assert (=> b!7852979 d!2353532))

(declare-fun b!7853249 () Bool)

(declare-fun e!4641966 () Bool)

(assert (=> b!7853249 (= e!4641966 (matchR!10527 (derivativeStep!6326 (derivativeStep!6326 r1!6227 (head!16047 s1!4084)) (head!16047 (tail!15590 s1!4084))) (tail!15590 (tail!15590 s1!4084))))))

(declare-fun bm!727882 () Bool)

(declare-fun call!727887 () Bool)

(assert (=> bm!727882 (= call!727887 (isEmpty!42336 (tail!15590 s1!4084)))))

(declare-fun b!7853250 () Bool)

(declare-fun res!3122698 () Bool)

(declare-fun e!4641962 () Bool)

(assert (=> b!7853250 (=> res!3122698 e!4641962)))

(assert (=> b!7853250 (= res!3122698 (not (isEmpty!42336 (tail!15590 (tail!15590 s1!4084)))))))

(declare-fun d!2353534 () Bool)

(declare-fun e!4641968 () Bool)

(assert (=> d!2353534 e!4641968))

(declare-fun c!1443373 () Bool)

(assert (=> d!2353534 (= c!1443373 ((_ is EmptyExpr!21091) (derivativeStep!6326 r1!6227 (head!16047 s1!4084))))))

(declare-fun lt!2679808 () Bool)

(assert (=> d!2353534 (= lt!2679808 e!4641966)))

(declare-fun c!1443374 () Bool)

(assert (=> d!2353534 (= c!1443374 (isEmpty!42336 (tail!15590 s1!4084)))))

(assert (=> d!2353534 (validRegex!11501 (derivativeStep!6326 r1!6227 (head!16047 s1!4084)))))

(assert (=> d!2353534 (= (matchR!10527 (derivativeStep!6326 r1!6227 (head!16047 s1!4084)) (tail!15590 s1!4084)) lt!2679808)))

(declare-fun b!7853251 () Bool)

(declare-fun e!4641965 () Bool)

(assert (=> b!7853251 (= e!4641965 (not lt!2679808))))

(declare-fun b!7853252 () Bool)

(assert (=> b!7853252 (= e!4641968 (= lt!2679808 call!727887))))

(declare-fun b!7853253 () Bool)

(declare-fun e!4641964 () Bool)

(assert (=> b!7853253 (= e!4641964 e!4641962)))

(declare-fun res!3122700 () Bool)

(assert (=> b!7853253 (=> res!3122700 e!4641962)))

(assert (=> b!7853253 (= res!3122700 call!727887)))

(declare-fun b!7853254 () Bool)

(assert (=> b!7853254 (= e!4641968 e!4641965)))

(declare-fun c!1443372 () Bool)

(assert (=> b!7853254 (= c!1443372 ((_ is EmptyLang!21091) (derivativeStep!6326 r1!6227 (head!16047 s1!4084))))))

(declare-fun b!7853255 () Bool)

(declare-fun res!3122699 () Bool)

(declare-fun e!4641963 () Bool)

(assert (=> b!7853255 (=> res!3122699 e!4641963)))

(declare-fun e!4641967 () Bool)

(assert (=> b!7853255 (= res!3122699 e!4641967)))

(declare-fun res!3122701 () Bool)

(assert (=> b!7853255 (=> (not res!3122701) (not e!4641967))))

(assert (=> b!7853255 (= res!3122701 lt!2679808)))

(declare-fun b!7853256 () Bool)

(assert (=> b!7853256 (= e!4641966 (nullable!9363 (derivativeStep!6326 r1!6227 (head!16047 s1!4084))))))

(declare-fun b!7853257 () Bool)

(assert (=> b!7853257 (= e!4641967 (= (head!16047 (tail!15590 s1!4084)) (c!1443291 (derivativeStep!6326 r1!6227 (head!16047 s1!4084)))))))

(declare-fun b!7853258 () Bool)

(declare-fun res!3122695 () Bool)

(assert (=> b!7853258 (=> res!3122695 e!4641963)))

(assert (=> b!7853258 (= res!3122695 (not ((_ is ElementMatch!21091) (derivativeStep!6326 r1!6227 (head!16047 s1!4084)))))))

(assert (=> b!7853258 (= e!4641965 e!4641963)))

(declare-fun b!7853259 () Bool)

(declare-fun res!3122696 () Bool)

(assert (=> b!7853259 (=> (not res!3122696) (not e!4641967))))

(assert (=> b!7853259 (= res!3122696 (not call!727887))))

(declare-fun b!7853260 () Bool)

(declare-fun res!3122697 () Bool)

(assert (=> b!7853260 (=> (not res!3122697) (not e!4641967))))

(assert (=> b!7853260 (= res!3122697 (isEmpty!42336 (tail!15590 (tail!15590 s1!4084))))))

(declare-fun b!7853261 () Bool)

(assert (=> b!7853261 (= e!4641962 (not (= (head!16047 (tail!15590 s1!4084)) (c!1443291 (derivativeStep!6326 r1!6227 (head!16047 s1!4084))))))))

(declare-fun b!7853262 () Bool)

(assert (=> b!7853262 (= e!4641963 e!4641964)))

(declare-fun res!3122702 () Bool)

(assert (=> b!7853262 (=> (not res!3122702) (not e!4641964))))

(assert (=> b!7853262 (= res!3122702 (not lt!2679808))))

(assert (= (and d!2353534 c!1443374) b!7853256))

(assert (= (and d!2353534 (not c!1443374)) b!7853249))

(assert (= (and d!2353534 c!1443373) b!7853252))

(assert (= (and d!2353534 (not c!1443373)) b!7853254))

(assert (= (and b!7853254 c!1443372) b!7853251))

(assert (= (and b!7853254 (not c!1443372)) b!7853258))

(assert (= (and b!7853258 (not res!3122695)) b!7853255))

(assert (= (and b!7853255 res!3122701) b!7853259))

(assert (= (and b!7853259 res!3122696) b!7853260))

(assert (= (and b!7853260 res!3122697) b!7853257))

(assert (= (and b!7853255 (not res!3122699)) b!7853262))

(assert (= (and b!7853262 res!3122702) b!7853253))

(assert (= (and b!7853253 (not res!3122700)) b!7853250))

(assert (= (and b!7853250 (not res!3122698)) b!7853261))

(assert (= (or b!7853252 b!7853253 b!7853259) bm!727882))

(assert (=> d!2353534 m!8258996))

(assert (=> d!2353534 m!8258998))

(assert (=> d!2353534 m!8259002))

(declare-fun m!8259124 () Bool)

(assert (=> d!2353534 m!8259124))

(assert (=> b!7853250 m!8258996))

(declare-fun m!8259126 () Bool)

(assert (=> b!7853250 m!8259126))

(assert (=> b!7853250 m!8259126))

(declare-fun m!8259128 () Bool)

(assert (=> b!7853250 m!8259128))

(assert (=> b!7853249 m!8258996))

(declare-fun m!8259130 () Bool)

(assert (=> b!7853249 m!8259130))

(assert (=> b!7853249 m!8259002))

(assert (=> b!7853249 m!8259130))

(declare-fun m!8259132 () Bool)

(assert (=> b!7853249 m!8259132))

(assert (=> b!7853249 m!8258996))

(assert (=> b!7853249 m!8259126))

(assert (=> b!7853249 m!8259132))

(assert (=> b!7853249 m!8259126))

(declare-fun m!8259134 () Bool)

(assert (=> b!7853249 m!8259134))

(assert (=> bm!727882 m!8258996))

(assert (=> bm!727882 m!8258998))

(assert (=> b!7853260 m!8258996))

(assert (=> b!7853260 m!8259126))

(assert (=> b!7853260 m!8259126))

(assert (=> b!7853260 m!8259128))

(assert (=> b!7853256 m!8259002))

(declare-fun m!8259136 () Bool)

(assert (=> b!7853256 m!8259136))

(assert (=> b!7853261 m!8258996))

(assert (=> b!7853261 m!8259130))

(assert (=> b!7853257 m!8258996))

(assert (=> b!7853257 m!8259130))

(assert (=> b!7852902 d!2353534))

(declare-fun b!7853263 () Bool)

(declare-fun e!4641970 () Regex!21091)

(declare-fun e!4641972 () Regex!21091)

(assert (=> b!7853263 (= e!4641970 e!4641972)))

(declare-fun c!1443375 () Bool)

(assert (=> b!7853263 (= c!1443375 ((_ is ElementMatch!21091) r1!6227))))

(declare-fun b!7853264 () Bool)

(declare-fun e!4641971 () Regex!21091)

(declare-fun call!727891 () Regex!21091)

(assert (=> b!7853264 (= e!4641971 (Concat!29936 call!727891 r1!6227))))

(declare-fun b!7853265 () Bool)

(declare-fun c!1443377 () Bool)

(assert (=> b!7853265 (= c!1443377 (nullable!9363 (regOne!42694 r1!6227)))))

(declare-fun e!4641973 () Regex!21091)

(assert (=> b!7853265 (= e!4641971 e!4641973)))

(declare-fun b!7853266 () Bool)

(assert (=> b!7853266 (= e!4641972 (ite (= (head!16047 s1!4084) (c!1443291 r1!6227)) EmptyExpr!21091 EmptyLang!21091))))

(declare-fun bm!727883 () Bool)

(declare-fun call!727889 () Regex!21091)

(declare-fun c!1443378 () Bool)

(declare-fun c!1443376 () Bool)

(assert (=> bm!727883 (= call!727889 (derivativeStep!6326 (ite c!1443376 (regOne!42695 r1!6227) (ite c!1443378 (reg!21420 r1!6227) (regOne!42694 r1!6227))) (head!16047 s1!4084)))))

(declare-fun b!7853267 () Bool)

(declare-fun e!4641969 () Regex!21091)

(declare-fun call!727890 () Regex!21091)

(assert (=> b!7853267 (= e!4641969 (Union!21091 call!727889 call!727890))))

(declare-fun call!727888 () Regex!21091)

(declare-fun b!7853268 () Bool)

(assert (=> b!7853268 (= e!4641973 (Union!21091 (Concat!29936 call!727891 (regTwo!42694 r1!6227)) call!727888))))

(declare-fun bm!727884 () Bool)

(assert (=> bm!727884 (= call!727888 call!727890)))

(declare-fun d!2353536 () Bool)

(declare-fun lt!2679809 () Regex!21091)

(assert (=> d!2353536 (validRegex!11501 lt!2679809)))

(assert (=> d!2353536 (= lt!2679809 e!4641970)))

(declare-fun c!1443379 () Bool)

(assert (=> d!2353536 (= c!1443379 (or ((_ is EmptyExpr!21091) r1!6227) ((_ is EmptyLang!21091) r1!6227)))))

(assert (=> d!2353536 (validRegex!11501 r1!6227)))

(assert (=> d!2353536 (= (derivativeStep!6326 r1!6227 (head!16047 s1!4084)) lt!2679809)))

(declare-fun bm!727885 () Bool)

(assert (=> bm!727885 (= call!727890 (derivativeStep!6326 (ite c!1443376 (regTwo!42695 r1!6227) (ite c!1443377 (regTwo!42694 r1!6227) (regOne!42694 r1!6227))) (head!16047 s1!4084)))))

(declare-fun b!7853269 () Bool)

(assert (=> b!7853269 (= e!4641970 EmptyLang!21091)))

(declare-fun b!7853270 () Bool)

(assert (=> b!7853270 (= c!1443376 ((_ is Union!21091) r1!6227))))

(assert (=> b!7853270 (= e!4641972 e!4641969)))

(declare-fun b!7853271 () Bool)

(assert (=> b!7853271 (= e!4641969 e!4641971)))

(assert (=> b!7853271 (= c!1443378 ((_ is Star!21091) r1!6227))))

(declare-fun bm!727886 () Bool)

(assert (=> bm!727886 (= call!727891 call!727889)))

(declare-fun b!7853272 () Bool)

(assert (=> b!7853272 (= e!4641973 (Union!21091 (Concat!29936 call!727888 (regTwo!42694 r1!6227)) EmptyLang!21091))))

(assert (= (and d!2353536 c!1443379) b!7853269))

(assert (= (and d!2353536 (not c!1443379)) b!7853263))

(assert (= (and b!7853263 c!1443375) b!7853266))

(assert (= (and b!7853263 (not c!1443375)) b!7853270))

(assert (= (and b!7853270 c!1443376) b!7853267))

(assert (= (and b!7853270 (not c!1443376)) b!7853271))

(assert (= (and b!7853271 c!1443378) b!7853264))

(assert (= (and b!7853271 (not c!1443378)) b!7853265))

(assert (= (and b!7853265 c!1443377) b!7853268))

(assert (= (and b!7853265 (not c!1443377)) b!7853272))

(assert (= (or b!7853268 b!7853272) bm!727884))

(assert (= (or b!7853264 b!7853268) bm!727886))

(assert (= (or b!7853267 bm!727884) bm!727885))

(assert (= (or b!7853267 bm!727886) bm!727883))

(assert (=> b!7853265 m!8259070))

(assert (=> bm!727883 m!8259000))

(declare-fun m!8259138 () Bool)

(assert (=> bm!727883 m!8259138))

(declare-fun m!8259140 () Bool)

(assert (=> d!2353536 m!8259140))

(assert (=> d!2353536 m!8258978))

(assert (=> bm!727885 m!8259000))

(declare-fun m!8259142 () Bool)

(assert (=> bm!727885 m!8259142))

(assert (=> b!7852902 d!2353536))

(declare-fun d!2353538 () Bool)

(assert (=> d!2353538 (= (head!16047 s1!4084) (h!80274 s1!4084))))

(assert (=> b!7852902 d!2353538))

(declare-fun d!2353540 () Bool)

(assert (=> d!2353540 (= (tail!15590 s1!4084) (t!388685 s1!4084))))

(assert (=> b!7852902 d!2353540))

(declare-fun b!7853273 () Bool)

(declare-fun e!4641978 () Bool)

(declare-fun e!4641977 () Bool)

(assert (=> b!7853273 (= e!4641978 e!4641977)))

(declare-fun res!3122706 () Bool)

(assert (=> b!7853273 (= res!3122706 (not (nullable!9363 (reg!21420 (ite c!1443318 (regOne!42695 r2!6165) (regTwo!42694 r2!6165))))))))

(assert (=> b!7853273 (=> (not res!3122706) (not e!4641977))))

(declare-fun b!7853274 () Bool)

(declare-fun call!727894 () Bool)

(assert (=> b!7853274 (= e!4641977 call!727894)))

(declare-fun b!7853275 () Bool)

(declare-fun e!4641976 () Bool)

(assert (=> b!7853275 (= e!4641978 e!4641976)))

(declare-fun c!1443381 () Bool)

(assert (=> b!7853275 (= c!1443381 ((_ is Union!21091) (ite c!1443318 (regOne!42695 r2!6165) (regTwo!42694 r2!6165))))))

(declare-fun b!7853276 () Bool)

(declare-fun e!4641979 () Bool)

(declare-fun call!727892 () Bool)

(assert (=> b!7853276 (= e!4641979 call!727892)))

(declare-fun bm!727887 () Bool)

(declare-fun call!727893 () Bool)

(assert (=> bm!727887 (= call!727893 call!727894)))

(declare-fun b!7853277 () Bool)

(declare-fun res!3122705 () Bool)

(declare-fun e!4641975 () Bool)

(assert (=> b!7853277 (=> res!3122705 e!4641975)))

(assert (=> b!7853277 (= res!3122705 (not ((_ is Concat!29936) (ite c!1443318 (regOne!42695 r2!6165) (regTwo!42694 r2!6165)))))))

(assert (=> b!7853277 (= e!4641976 e!4641975)))

(declare-fun b!7853279 () Bool)

(declare-fun e!4641974 () Bool)

(assert (=> b!7853279 (= e!4641974 call!727893)))

(declare-fun b!7853280 () Bool)

(declare-fun e!4641980 () Bool)

(assert (=> b!7853280 (= e!4641980 e!4641978)))

(declare-fun c!1443380 () Bool)

(assert (=> b!7853280 (= c!1443380 ((_ is Star!21091) (ite c!1443318 (regOne!42695 r2!6165) (regTwo!42694 r2!6165))))))

(declare-fun bm!727888 () Bool)

(assert (=> bm!727888 (= call!727892 (validRegex!11501 (ite c!1443381 (regOne!42695 (ite c!1443318 (regOne!42695 r2!6165) (regTwo!42694 r2!6165))) (regTwo!42694 (ite c!1443318 (regOne!42695 r2!6165) (regTwo!42694 r2!6165))))))))

(declare-fun b!7853281 () Bool)

(assert (=> b!7853281 (= e!4641975 e!4641979)))

(declare-fun res!3122703 () Bool)

(assert (=> b!7853281 (=> (not res!3122703) (not e!4641979))))

(assert (=> b!7853281 (= res!3122703 call!727893)))

(declare-fun bm!727889 () Bool)

(assert (=> bm!727889 (= call!727894 (validRegex!11501 (ite c!1443380 (reg!21420 (ite c!1443318 (regOne!42695 r2!6165) (regTwo!42694 r2!6165))) (ite c!1443381 (regTwo!42695 (ite c!1443318 (regOne!42695 r2!6165) (regTwo!42694 r2!6165))) (regOne!42694 (ite c!1443318 (regOne!42695 r2!6165) (regTwo!42694 r2!6165)))))))))

(declare-fun b!7853278 () Bool)

(declare-fun res!3122704 () Bool)

(assert (=> b!7853278 (=> (not res!3122704) (not e!4641974))))

(assert (=> b!7853278 (= res!3122704 call!727892)))

(assert (=> b!7853278 (= e!4641976 e!4641974)))

(declare-fun d!2353542 () Bool)

(declare-fun res!3122707 () Bool)

(assert (=> d!2353542 (=> res!3122707 e!4641980)))

(assert (=> d!2353542 (= res!3122707 ((_ is ElementMatch!21091) (ite c!1443318 (regOne!42695 r2!6165) (regTwo!42694 r2!6165))))))

(assert (=> d!2353542 (= (validRegex!11501 (ite c!1443318 (regOne!42695 r2!6165) (regTwo!42694 r2!6165))) e!4641980)))

(assert (= (and d!2353542 (not res!3122707)) b!7853280))

(assert (= (and b!7853280 c!1443380) b!7853273))

(assert (= (and b!7853280 (not c!1443380)) b!7853275))

(assert (= (and b!7853273 res!3122706) b!7853274))

(assert (= (and b!7853275 c!1443381) b!7853278))

(assert (= (and b!7853275 (not c!1443381)) b!7853277))

(assert (= (and b!7853278 res!3122704) b!7853279))

(assert (= (and b!7853277 (not res!3122705)) b!7853281))

(assert (= (and b!7853281 res!3122703) b!7853276))

(assert (= (or b!7853278 b!7853276) bm!727888))

(assert (= (or b!7853279 b!7853281) bm!727887))

(assert (= (or b!7853274 bm!727887) bm!727889))

(declare-fun m!8259144 () Bool)

(assert (=> b!7853273 m!8259144))

(declare-fun m!8259146 () Bool)

(assert (=> bm!727888 m!8259146))

(declare-fun m!8259148 () Bool)

(assert (=> bm!727889 m!8259148))

(assert (=> bm!727839 d!2353542))

(declare-fun b!7853282 () Bool)

(declare-fun e!4641982 () Regex!21091)

(declare-fun e!4641984 () Regex!21091)

(assert (=> b!7853282 (= e!4641982 e!4641984)))

(declare-fun c!1443382 () Bool)

(assert (=> b!7853282 (= c!1443382 ((_ is ElementMatch!21091) (ite c!1443353 (regOne!42695 r1!6227) (ite c!1443355 (reg!21420 r1!6227) (regOne!42694 r1!6227)))))))

(declare-fun b!7853283 () Bool)

(declare-fun call!727898 () Regex!21091)

(declare-fun e!4641983 () Regex!21091)

(assert (=> b!7853283 (= e!4641983 (Concat!29936 call!727898 (ite c!1443353 (regOne!42695 r1!6227) (ite c!1443355 (reg!21420 r1!6227) (regOne!42694 r1!6227)))))))

(declare-fun b!7853284 () Bool)

(declare-fun c!1443384 () Bool)

(assert (=> b!7853284 (= c!1443384 (nullable!9363 (regOne!42694 (ite c!1443353 (regOne!42695 r1!6227) (ite c!1443355 (reg!21420 r1!6227) (regOne!42694 r1!6227))))))))

(declare-fun e!4641985 () Regex!21091)

(assert (=> b!7853284 (= e!4641983 e!4641985)))

(declare-fun b!7853285 () Bool)

(assert (=> b!7853285 (= e!4641984 (ite (= (h!80274 s1!4084) (c!1443291 (ite c!1443353 (regOne!42695 r1!6227) (ite c!1443355 (reg!21420 r1!6227) (regOne!42694 r1!6227))))) EmptyExpr!21091 EmptyLang!21091))))

(declare-fun c!1443385 () Bool)

(declare-fun call!727896 () Regex!21091)

(declare-fun c!1443383 () Bool)

(declare-fun bm!727890 () Bool)

(assert (=> bm!727890 (= call!727896 (derivativeStep!6326 (ite c!1443383 (regOne!42695 (ite c!1443353 (regOne!42695 r1!6227) (ite c!1443355 (reg!21420 r1!6227) (regOne!42694 r1!6227)))) (ite c!1443385 (reg!21420 (ite c!1443353 (regOne!42695 r1!6227) (ite c!1443355 (reg!21420 r1!6227) (regOne!42694 r1!6227)))) (regOne!42694 (ite c!1443353 (regOne!42695 r1!6227) (ite c!1443355 (reg!21420 r1!6227) (regOne!42694 r1!6227)))))) (h!80274 s1!4084)))))

(declare-fun b!7853286 () Bool)

(declare-fun e!4641981 () Regex!21091)

(declare-fun call!727897 () Regex!21091)

(assert (=> b!7853286 (= e!4641981 (Union!21091 call!727896 call!727897))))

(declare-fun b!7853287 () Bool)

(declare-fun call!727895 () Regex!21091)

(assert (=> b!7853287 (= e!4641985 (Union!21091 (Concat!29936 call!727898 (regTwo!42694 (ite c!1443353 (regOne!42695 r1!6227) (ite c!1443355 (reg!21420 r1!6227) (regOne!42694 r1!6227))))) call!727895))))

(declare-fun bm!727891 () Bool)

(assert (=> bm!727891 (= call!727895 call!727897)))

(declare-fun d!2353544 () Bool)

(declare-fun lt!2679810 () Regex!21091)

(assert (=> d!2353544 (validRegex!11501 lt!2679810)))

(assert (=> d!2353544 (= lt!2679810 e!4641982)))

(declare-fun c!1443386 () Bool)

(assert (=> d!2353544 (= c!1443386 (or ((_ is EmptyExpr!21091) (ite c!1443353 (regOne!42695 r1!6227) (ite c!1443355 (reg!21420 r1!6227) (regOne!42694 r1!6227)))) ((_ is EmptyLang!21091) (ite c!1443353 (regOne!42695 r1!6227) (ite c!1443355 (reg!21420 r1!6227) (regOne!42694 r1!6227))))))))

(assert (=> d!2353544 (validRegex!11501 (ite c!1443353 (regOne!42695 r1!6227) (ite c!1443355 (reg!21420 r1!6227) (regOne!42694 r1!6227))))))

(assert (=> d!2353544 (= (derivativeStep!6326 (ite c!1443353 (regOne!42695 r1!6227) (ite c!1443355 (reg!21420 r1!6227) (regOne!42694 r1!6227))) (h!80274 s1!4084)) lt!2679810)))

(declare-fun bm!727892 () Bool)

(assert (=> bm!727892 (= call!727897 (derivativeStep!6326 (ite c!1443383 (regTwo!42695 (ite c!1443353 (regOne!42695 r1!6227) (ite c!1443355 (reg!21420 r1!6227) (regOne!42694 r1!6227)))) (ite c!1443384 (regTwo!42694 (ite c!1443353 (regOne!42695 r1!6227) (ite c!1443355 (reg!21420 r1!6227) (regOne!42694 r1!6227)))) (regOne!42694 (ite c!1443353 (regOne!42695 r1!6227) (ite c!1443355 (reg!21420 r1!6227) (regOne!42694 r1!6227)))))) (h!80274 s1!4084)))))

(declare-fun b!7853288 () Bool)

(assert (=> b!7853288 (= e!4641982 EmptyLang!21091)))

(declare-fun b!7853289 () Bool)

(assert (=> b!7853289 (= c!1443383 ((_ is Union!21091) (ite c!1443353 (regOne!42695 r1!6227) (ite c!1443355 (reg!21420 r1!6227) (regOne!42694 r1!6227)))))))

(assert (=> b!7853289 (= e!4641984 e!4641981)))

(declare-fun b!7853290 () Bool)

(assert (=> b!7853290 (= e!4641981 e!4641983)))

(assert (=> b!7853290 (= c!1443385 ((_ is Star!21091) (ite c!1443353 (regOne!42695 r1!6227) (ite c!1443355 (reg!21420 r1!6227) (regOne!42694 r1!6227)))))))

(declare-fun bm!727893 () Bool)

(assert (=> bm!727893 (= call!727898 call!727896)))

(declare-fun b!7853291 () Bool)

(assert (=> b!7853291 (= e!4641985 (Union!21091 (Concat!29936 call!727895 (regTwo!42694 (ite c!1443353 (regOne!42695 r1!6227) (ite c!1443355 (reg!21420 r1!6227) (regOne!42694 r1!6227))))) EmptyLang!21091))))

(assert (= (and d!2353544 c!1443386) b!7853288))

(assert (= (and d!2353544 (not c!1443386)) b!7853282))

(assert (= (and b!7853282 c!1443382) b!7853285))

(assert (= (and b!7853282 (not c!1443382)) b!7853289))

(assert (= (and b!7853289 c!1443383) b!7853286))

(assert (= (and b!7853289 (not c!1443383)) b!7853290))

(assert (= (and b!7853290 c!1443385) b!7853283))

(assert (= (and b!7853290 (not c!1443385)) b!7853284))

(assert (= (and b!7853284 c!1443384) b!7853287))

(assert (= (and b!7853284 (not c!1443384)) b!7853291))

(assert (= (or b!7853287 b!7853291) bm!727891))

(assert (= (or b!7853283 b!7853287) bm!727893))

(assert (= (or b!7853286 bm!727891) bm!727892))

(assert (= (or b!7853286 bm!727893) bm!727890))

(declare-fun m!8259150 () Bool)

(assert (=> b!7853284 m!8259150))

(declare-fun m!8259152 () Bool)

(assert (=> bm!727890 m!8259152))

(declare-fun m!8259154 () Bool)

(assert (=> d!2353544 m!8259154))

(declare-fun m!8259156 () Bool)

(assert (=> d!2353544 m!8259156))

(declare-fun m!8259158 () Bool)

(assert (=> bm!727892 m!8259158))

(assert (=> bm!727866 d!2353544))

(declare-fun d!2353546 () Bool)

(declare-fun nullableFct!3690 (Regex!21091) Bool)

(assert (=> d!2353546 (= (nullable!9363 r2!6165) (nullableFct!3690 r2!6165))))

(declare-fun bs!1967099 () Bool)

(assert (= bs!1967099 d!2353546))

(declare-fun m!8259160 () Bool)

(assert (=> bs!1967099 m!8259160))

(assert (=> b!7852978 d!2353546))

(declare-fun d!2353548 () Bool)

(assert (=> d!2353548 (= (isEmpty!42336 s1!4084) ((_ is Nil!73826) s1!4084))))

(assert (=> bm!727829 d!2353548))

(declare-fun d!2353550 () Bool)

(assert (=> d!2353550 (= (head!16047 (t!388685 s1!4084)) (h!80274 (t!388685 s1!4084)))))

(assert (=> b!7853117 d!2353550))

(declare-fun d!2353552 () Bool)

(assert (=> d!2353552 (= (isEmpty!42336 (tail!15590 s1!4084)) ((_ is Nil!73826) (tail!15590 s1!4084)))))

(assert (=> b!7852903 d!2353552))

(assert (=> b!7852903 d!2353540))

(declare-fun b!7853292 () Bool)

(declare-fun e!4641990 () Bool)

(declare-fun e!4641989 () Bool)

(assert (=> b!7853292 (= e!4641990 e!4641989)))

(declare-fun res!3122711 () Bool)

(assert (=> b!7853292 (= res!3122711 (not (nullable!9363 (reg!21420 (ite c!1443317 (reg!21420 r2!6165) (ite c!1443318 (regTwo!42695 r2!6165) (regOne!42694 r2!6165)))))))))

(assert (=> b!7853292 (=> (not res!3122711) (not e!4641989))))

(declare-fun b!7853293 () Bool)

(declare-fun call!727901 () Bool)

(assert (=> b!7853293 (= e!4641989 call!727901)))

(declare-fun b!7853294 () Bool)

(declare-fun e!4641988 () Bool)

(assert (=> b!7853294 (= e!4641990 e!4641988)))

(declare-fun c!1443388 () Bool)

(assert (=> b!7853294 (= c!1443388 ((_ is Union!21091) (ite c!1443317 (reg!21420 r2!6165) (ite c!1443318 (regTwo!42695 r2!6165) (regOne!42694 r2!6165)))))))

(declare-fun b!7853295 () Bool)

(declare-fun e!4641991 () Bool)

(declare-fun call!727899 () Bool)

(assert (=> b!7853295 (= e!4641991 call!727899)))

(declare-fun bm!727894 () Bool)

(declare-fun call!727900 () Bool)

(assert (=> bm!727894 (= call!727900 call!727901)))

(declare-fun b!7853296 () Bool)

(declare-fun res!3122710 () Bool)

(declare-fun e!4641987 () Bool)

(assert (=> b!7853296 (=> res!3122710 e!4641987)))

(assert (=> b!7853296 (= res!3122710 (not ((_ is Concat!29936) (ite c!1443317 (reg!21420 r2!6165) (ite c!1443318 (regTwo!42695 r2!6165) (regOne!42694 r2!6165))))))))

(assert (=> b!7853296 (= e!4641988 e!4641987)))

(declare-fun b!7853298 () Bool)

(declare-fun e!4641986 () Bool)

(assert (=> b!7853298 (= e!4641986 call!727900)))

(declare-fun b!7853299 () Bool)

(declare-fun e!4641992 () Bool)

(assert (=> b!7853299 (= e!4641992 e!4641990)))

(declare-fun c!1443387 () Bool)

(assert (=> b!7853299 (= c!1443387 ((_ is Star!21091) (ite c!1443317 (reg!21420 r2!6165) (ite c!1443318 (regTwo!42695 r2!6165) (regOne!42694 r2!6165)))))))

(declare-fun bm!727895 () Bool)

(assert (=> bm!727895 (= call!727899 (validRegex!11501 (ite c!1443388 (regOne!42695 (ite c!1443317 (reg!21420 r2!6165) (ite c!1443318 (regTwo!42695 r2!6165) (regOne!42694 r2!6165)))) (regTwo!42694 (ite c!1443317 (reg!21420 r2!6165) (ite c!1443318 (regTwo!42695 r2!6165) (regOne!42694 r2!6165)))))))))

(declare-fun b!7853300 () Bool)

(assert (=> b!7853300 (= e!4641987 e!4641991)))

(declare-fun res!3122708 () Bool)

(assert (=> b!7853300 (=> (not res!3122708) (not e!4641991))))

(assert (=> b!7853300 (= res!3122708 call!727900)))

(declare-fun bm!727896 () Bool)

(assert (=> bm!727896 (= call!727901 (validRegex!11501 (ite c!1443387 (reg!21420 (ite c!1443317 (reg!21420 r2!6165) (ite c!1443318 (regTwo!42695 r2!6165) (regOne!42694 r2!6165)))) (ite c!1443388 (regTwo!42695 (ite c!1443317 (reg!21420 r2!6165) (ite c!1443318 (regTwo!42695 r2!6165) (regOne!42694 r2!6165)))) (regOne!42694 (ite c!1443317 (reg!21420 r2!6165) (ite c!1443318 (regTwo!42695 r2!6165) (regOne!42694 r2!6165))))))))))

(declare-fun b!7853297 () Bool)

(declare-fun res!3122709 () Bool)

(assert (=> b!7853297 (=> (not res!3122709) (not e!4641986))))

(assert (=> b!7853297 (= res!3122709 call!727899)))

(assert (=> b!7853297 (= e!4641988 e!4641986)))

(declare-fun d!2353554 () Bool)

(declare-fun res!3122712 () Bool)

(assert (=> d!2353554 (=> res!3122712 e!4641992)))

(assert (=> d!2353554 (= res!3122712 ((_ is ElementMatch!21091) (ite c!1443317 (reg!21420 r2!6165) (ite c!1443318 (regTwo!42695 r2!6165) (regOne!42694 r2!6165)))))))

(assert (=> d!2353554 (= (validRegex!11501 (ite c!1443317 (reg!21420 r2!6165) (ite c!1443318 (regTwo!42695 r2!6165) (regOne!42694 r2!6165)))) e!4641992)))

(assert (= (and d!2353554 (not res!3122712)) b!7853299))

(assert (= (and b!7853299 c!1443387) b!7853292))

(assert (= (and b!7853299 (not c!1443387)) b!7853294))

(assert (= (and b!7853292 res!3122711) b!7853293))

(assert (= (and b!7853294 c!1443388) b!7853297))

(assert (= (and b!7853294 (not c!1443388)) b!7853296))

(assert (= (and b!7853297 res!3122709) b!7853298))

(assert (= (and b!7853296 (not res!3122710)) b!7853300))

(assert (= (and b!7853300 res!3122708) b!7853295))

(assert (= (or b!7853297 b!7853295) bm!727895))

(assert (= (or b!7853298 b!7853300) bm!727894))

(assert (= (or b!7853293 bm!727894) bm!727896))

(declare-fun m!8259162 () Bool)

(assert (=> b!7853292 m!8259162))

(declare-fun m!8259164 () Bool)

(assert (=> bm!727895 m!8259164))

(declare-fun m!8259166 () Bool)

(assert (=> bm!727896 m!8259166))

(assert (=> bm!727840 d!2353554))

(declare-fun d!2353556 () Bool)

(assert (=> d!2353556 (= (nullable!9363 (regOne!42694 r1!6227)) (nullableFct!3690 (regOne!42694 r1!6227)))))

(declare-fun bs!1967100 () Bool)

(assert (= bs!1967100 d!2353556))

(declare-fun m!8259168 () Bool)

(assert (=> bs!1967100 m!8259168))

(assert (=> b!7853073 d!2353556))

(declare-fun d!2353558 () Bool)

(assert (=> d!2353558 (= (isEmpty!42336 (tail!15590 (t!388685 s1!4084))) ((_ is Nil!73826) (tail!15590 (t!388685 s1!4084))))))

(assert (=> b!7853116 d!2353558))

(declare-fun d!2353560 () Bool)

(assert (=> d!2353560 (= (tail!15590 (t!388685 s1!4084)) (t!388685 (t!388685 s1!4084)))))

(assert (=> b!7853116 d!2353560))

(declare-fun d!2353562 () Bool)

(assert (=> d!2353562 (= (nullable!9363 (reg!21420 lt!2679791)) (nullableFct!3690 (reg!21420 lt!2679791)))))

(declare-fun bs!1967101 () Bool)

(assert (= bs!1967101 d!2353562))

(declare-fun m!8259170 () Bool)

(assert (=> bs!1967101 m!8259170))

(assert (=> b!7852999 d!2353562))

(declare-fun b!7853301 () Bool)

(declare-fun e!4641997 () Bool)

(declare-fun e!4641996 () Bool)

(assert (=> b!7853301 (= e!4641997 e!4641996)))

(declare-fun res!3122716 () Bool)

(assert (=> b!7853301 (= res!3122716 (not (nullable!9363 (reg!21420 lt!2679804))))))

(assert (=> b!7853301 (=> (not res!3122716) (not e!4641996))))

(declare-fun b!7853302 () Bool)

(declare-fun call!727904 () Bool)

(assert (=> b!7853302 (= e!4641996 call!727904)))

(declare-fun b!7853303 () Bool)

(declare-fun e!4641995 () Bool)

(assert (=> b!7853303 (= e!4641997 e!4641995)))

(declare-fun c!1443390 () Bool)

(assert (=> b!7853303 (= c!1443390 ((_ is Union!21091) lt!2679804))))

(declare-fun b!7853304 () Bool)

(declare-fun e!4641998 () Bool)

(declare-fun call!727902 () Bool)

(assert (=> b!7853304 (= e!4641998 call!727902)))

(declare-fun bm!727897 () Bool)

(declare-fun call!727903 () Bool)

(assert (=> bm!727897 (= call!727903 call!727904)))

(declare-fun b!7853305 () Bool)

(declare-fun res!3122715 () Bool)

(declare-fun e!4641994 () Bool)

(assert (=> b!7853305 (=> res!3122715 e!4641994)))

(assert (=> b!7853305 (= res!3122715 (not ((_ is Concat!29936) lt!2679804)))))

(assert (=> b!7853305 (= e!4641995 e!4641994)))

(declare-fun b!7853307 () Bool)

(declare-fun e!4641993 () Bool)

(assert (=> b!7853307 (= e!4641993 call!727903)))

(declare-fun b!7853308 () Bool)

(declare-fun e!4641999 () Bool)

(assert (=> b!7853308 (= e!4641999 e!4641997)))

(declare-fun c!1443389 () Bool)

(assert (=> b!7853308 (= c!1443389 ((_ is Star!21091) lt!2679804))))

(declare-fun bm!727898 () Bool)

(assert (=> bm!727898 (= call!727902 (validRegex!11501 (ite c!1443390 (regOne!42695 lt!2679804) (regTwo!42694 lt!2679804))))))

(declare-fun b!7853309 () Bool)

(assert (=> b!7853309 (= e!4641994 e!4641998)))

(declare-fun res!3122713 () Bool)

(assert (=> b!7853309 (=> (not res!3122713) (not e!4641998))))

(assert (=> b!7853309 (= res!3122713 call!727903)))

(declare-fun bm!727899 () Bool)

(assert (=> bm!727899 (= call!727904 (validRegex!11501 (ite c!1443389 (reg!21420 lt!2679804) (ite c!1443390 (regTwo!42695 lt!2679804) (regOne!42694 lt!2679804)))))))

(declare-fun b!7853306 () Bool)

(declare-fun res!3122714 () Bool)

(assert (=> b!7853306 (=> (not res!3122714) (not e!4641993))))

(assert (=> b!7853306 (= res!3122714 call!727902)))

(assert (=> b!7853306 (= e!4641995 e!4641993)))

(declare-fun d!2353564 () Bool)

(declare-fun res!3122717 () Bool)

(assert (=> d!2353564 (=> res!3122717 e!4641999)))

(assert (=> d!2353564 (= res!3122717 ((_ is ElementMatch!21091) lt!2679804))))

(assert (=> d!2353564 (= (validRegex!11501 lt!2679804) e!4641999)))

(assert (= (and d!2353564 (not res!3122717)) b!7853308))

(assert (= (and b!7853308 c!1443389) b!7853301))

(assert (= (and b!7853308 (not c!1443389)) b!7853303))

(assert (= (and b!7853301 res!3122716) b!7853302))

(assert (= (and b!7853303 c!1443390) b!7853306))

(assert (= (and b!7853303 (not c!1443390)) b!7853305))

(assert (= (and b!7853306 res!3122714) b!7853307))

(assert (= (and b!7853305 (not res!3122715)) b!7853309))

(assert (= (and b!7853309 res!3122713) b!7853304))

(assert (= (or b!7853306 b!7853304) bm!727898))

(assert (= (or b!7853307 b!7853309) bm!727897))

(assert (= (or b!7853302 bm!727897) bm!727899))

(declare-fun m!8259172 () Bool)

(assert (=> b!7853301 m!8259172))

(declare-fun m!8259174 () Bool)

(assert (=> bm!727898 m!8259174))

(declare-fun m!8259176 () Bool)

(assert (=> bm!727899 m!8259176))

(assert (=> d!2353518 d!2353564))

(assert (=> d!2353518 d!2353530))

(assert (=> b!7853113 d!2353550))

(declare-fun d!2353566 () Bool)

(assert (=> d!2353566 (= (nullable!9363 lt!2679791) (nullableFct!3690 lt!2679791))))

(declare-fun bs!1967102 () Bool)

(assert (= bs!1967102 d!2353566))

(declare-fun m!8259178 () Bool)

(assert (=> bs!1967102 m!8259178))

(assert (=> b!7853112 d!2353566))

(declare-fun d!2353568 () Bool)

(assert (=> d!2353568 (= (nullable!9363 (reg!21420 r1!6227)) (nullableFct!3690 (reg!21420 r1!6227)))))

(declare-fun bs!1967103 () Bool)

(assert (= bs!1967103 d!2353568))

(declare-fun m!8259180 () Bool)

(assert (=> bs!1967103 m!8259180))

(assert (=> b!7853128 d!2353568))

(declare-fun d!2353570 () Bool)

(assert (=> d!2353570 (= (nullable!9363 r1!6227) (nullableFct!3690 r1!6227))))

(declare-fun bs!1967104 () Bool)

(assert (= bs!1967104 d!2353570))

(declare-fun m!8259182 () Bool)

(assert (=> bs!1967104 m!8259182))

(assert (=> b!7852909 d!2353570))

(declare-fun d!2353572 () Bool)

(assert (=> d!2353572 (= (isEmpty!42336 (t!388685 s1!4084)) ((_ is Nil!73826) (t!388685 s1!4084)))))

(assert (=> d!2353526 d!2353572))

(assert (=> d!2353526 d!2353514))

(assert (=> b!7852910 d!2353538))

(declare-fun b!7853310 () Bool)

(declare-fun e!4642004 () Bool)

(assert (=> b!7853310 (= e!4642004 (matchR!10527 (derivativeStep!6326 (derivativeStep!6326 r2!6165 (head!16047 s2!3706)) (head!16047 (tail!15590 s2!3706))) (tail!15590 (tail!15590 s2!3706))))))

(declare-fun bm!727900 () Bool)

(declare-fun call!727905 () Bool)

(assert (=> bm!727900 (= call!727905 (isEmpty!42336 (tail!15590 s2!3706)))))

(declare-fun b!7853311 () Bool)

(declare-fun res!3122721 () Bool)

(declare-fun e!4642000 () Bool)

(assert (=> b!7853311 (=> res!3122721 e!4642000)))

(assert (=> b!7853311 (= res!3122721 (not (isEmpty!42336 (tail!15590 (tail!15590 s2!3706)))))))

(declare-fun d!2353574 () Bool)

(declare-fun e!4642006 () Bool)

(assert (=> d!2353574 e!4642006))

(declare-fun c!1443392 () Bool)

(assert (=> d!2353574 (= c!1443392 ((_ is EmptyExpr!21091) (derivativeStep!6326 r2!6165 (head!16047 s2!3706))))))

(declare-fun lt!2679811 () Bool)

(assert (=> d!2353574 (= lt!2679811 e!4642004)))

(declare-fun c!1443393 () Bool)

(assert (=> d!2353574 (= c!1443393 (isEmpty!42336 (tail!15590 s2!3706)))))

(assert (=> d!2353574 (validRegex!11501 (derivativeStep!6326 r2!6165 (head!16047 s2!3706)))))

(assert (=> d!2353574 (= (matchR!10527 (derivativeStep!6326 r2!6165 (head!16047 s2!3706)) (tail!15590 s2!3706)) lt!2679811)))

(declare-fun b!7853312 () Bool)

(declare-fun e!4642003 () Bool)

(assert (=> b!7853312 (= e!4642003 (not lt!2679811))))

(declare-fun b!7853313 () Bool)

(assert (=> b!7853313 (= e!4642006 (= lt!2679811 call!727905))))

(declare-fun b!7853314 () Bool)

(declare-fun e!4642002 () Bool)

(assert (=> b!7853314 (= e!4642002 e!4642000)))

(declare-fun res!3122723 () Bool)

(assert (=> b!7853314 (=> res!3122723 e!4642000)))

(assert (=> b!7853314 (= res!3122723 call!727905)))

(declare-fun b!7853315 () Bool)

(assert (=> b!7853315 (= e!4642006 e!4642003)))

(declare-fun c!1443391 () Bool)

(assert (=> b!7853315 (= c!1443391 ((_ is EmptyLang!21091) (derivativeStep!6326 r2!6165 (head!16047 s2!3706))))))

(declare-fun b!7853316 () Bool)

(declare-fun res!3122722 () Bool)

(declare-fun e!4642001 () Bool)

(assert (=> b!7853316 (=> res!3122722 e!4642001)))

(declare-fun e!4642005 () Bool)

(assert (=> b!7853316 (= res!3122722 e!4642005)))

(declare-fun res!3122724 () Bool)

(assert (=> b!7853316 (=> (not res!3122724) (not e!4642005))))

(assert (=> b!7853316 (= res!3122724 lt!2679811)))

(declare-fun b!7853317 () Bool)

(assert (=> b!7853317 (= e!4642004 (nullable!9363 (derivativeStep!6326 r2!6165 (head!16047 s2!3706))))))

(declare-fun b!7853318 () Bool)

(assert (=> b!7853318 (= e!4642005 (= (head!16047 (tail!15590 s2!3706)) (c!1443291 (derivativeStep!6326 r2!6165 (head!16047 s2!3706)))))))

(declare-fun b!7853319 () Bool)

(declare-fun res!3122718 () Bool)

(assert (=> b!7853319 (=> res!3122718 e!4642001)))

(assert (=> b!7853319 (= res!3122718 (not ((_ is ElementMatch!21091) (derivativeStep!6326 r2!6165 (head!16047 s2!3706)))))))

(assert (=> b!7853319 (= e!4642003 e!4642001)))

(declare-fun b!7853320 () Bool)

(declare-fun res!3122719 () Bool)

(assert (=> b!7853320 (=> (not res!3122719) (not e!4642005))))

(assert (=> b!7853320 (= res!3122719 (not call!727905))))

(declare-fun b!7853321 () Bool)

(declare-fun res!3122720 () Bool)

(assert (=> b!7853321 (=> (not res!3122720) (not e!4642005))))

(assert (=> b!7853321 (= res!3122720 (isEmpty!42336 (tail!15590 (tail!15590 s2!3706))))))

(declare-fun b!7853322 () Bool)

(assert (=> b!7853322 (= e!4642000 (not (= (head!16047 (tail!15590 s2!3706)) (c!1443291 (derivativeStep!6326 r2!6165 (head!16047 s2!3706))))))))

(declare-fun b!7853323 () Bool)

(assert (=> b!7853323 (= e!4642001 e!4642002)))

(declare-fun res!3122725 () Bool)

(assert (=> b!7853323 (=> (not res!3122725) (not e!4642002))))

(assert (=> b!7853323 (= res!3122725 (not lt!2679811))))

(assert (= (and d!2353574 c!1443393) b!7853317))

(assert (= (and d!2353574 (not c!1443393)) b!7853310))

(assert (= (and d!2353574 c!1443392) b!7853313))

(assert (= (and d!2353574 (not c!1443392)) b!7853315))

(assert (= (and b!7853315 c!1443391) b!7853312))

(assert (= (and b!7853315 (not c!1443391)) b!7853319))

(assert (= (and b!7853319 (not res!3122718)) b!7853316))

(assert (= (and b!7853316 res!3122724) b!7853320))

(assert (= (and b!7853320 res!3122719) b!7853321))

(assert (= (and b!7853321 res!3122720) b!7853318))

(assert (= (and b!7853316 (not res!3122722)) b!7853323))

(assert (= (and b!7853323 res!3122725) b!7853314))

(assert (= (and b!7853314 (not res!3122723)) b!7853311))

(assert (= (and b!7853311 (not res!3122721)) b!7853322))

(assert (= (or b!7853313 b!7853314 b!7853320) bm!727900))

(assert (=> d!2353574 m!8259016))

(assert (=> d!2353574 m!8259018))

(assert (=> d!2353574 m!8259022))

(declare-fun m!8259184 () Bool)

(assert (=> d!2353574 m!8259184))

(assert (=> b!7853311 m!8259016))

(declare-fun m!8259186 () Bool)

(assert (=> b!7853311 m!8259186))

(assert (=> b!7853311 m!8259186))

(declare-fun m!8259188 () Bool)

(assert (=> b!7853311 m!8259188))

(assert (=> b!7853310 m!8259016))

(declare-fun m!8259190 () Bool)

(assert (=> b!7853310 m!8259190))

(assert (=> b!7853310 m!8259022))

(assert (=> b!7853310 m!8259190))

(declare-fun m!8259192 () Bool)

(assert (=> b!7853310 m!8259192))

(assert (=> b!7853310 m!8259016))

(assert (=> b!7853310 m!8259186))

(assert (=> b!7853310 m!8259192))

(assert (=> b!7853310 m!8259186))

(declare-fun m!8259194 () Bool)

(assert (=> b!7853310 m!8259194))

(assert (=> bm!727900 m!8259016))

(assert (=> bm!727900 m!8259018))

(assert (=> b!7853321 m!8259016))

(assert (=> b!7853321 m!8259186))

(assert (=> b!7853321 m!8259186))

(assert (=> b!7853321 m!8259188))

(assert (=> b!7853317 m!8259022))

(declare-fun m!8259196 () Bool)

(assert (=> b!7853317 m!8259196))

(assert (=> b!7853322 m!8259016))

(assert (=> b!7853322 m!8259190))

(assert (=> b!7853318 m!8259016))

(assert (=> b!7853318 m!8259190))

(assert (=> b!7852971 d!2353574))

(declare-fun b!7853324 () Bool)

(declare-fun e!4642008 () Regex!21091)

(declare-fun e!4642010 () Regex!21091)

(assert (=> b!7853324 (= e!4642008 e!4642010)))

(declare-fun c!1443394 () Bool)

(assert (=> b!7853324 (= c!1443394 ((_ is ElementMatch!21091) r2!6165))))

(declare-fun b!7853325 () Bool)

(declare-fun e!4642009 () Regex!21091)

(declare-fun call!727909 () Regex!21091)

(assert (=> b!7853325 (= e!4642009 (Concat!29936 call!727909 r2!6165))))

(declare-fun b!7853326 () Bool)

(declare-fun c!1443396 () Bool)

(assert (=> b!7853326 (= c!1443396 (nullable!9363 (regOne!42694 r2!6165)))))

(declare-fun e!4642011 () Regex!21091)

(assert (=> b!7853326 (= e!4642009 e!4642011)))

(declare-fun b!7853327 () Bool)

(assert (=> b!7853327 (= e!4642010 (ite (= (head!16047 s2!3706) (c!1443291 r2!6165)) EmptyExpr!21091 EmptyLang!21091))))

(declare-fun call!727907 () Regex!21091)

(declare-fun c!1443397 () Bool)

(declare-fun bm!727901 () Bool)

(declare-fun c!1443395 () Bool)

(assert (=> bm!727901 (= call!727907 (derivativeStep!6326 (ite c!1443395 (regOne!42695 r2!6165) (ite c!1443397 (reg!21420 r2!6165) (regOne!42694 r2!6165))) (head!16047 s2!3706)))))

(declare-fun b!7853328 () Bool)

(declare-fun e!4642007 () Regex!21091)

(declare-fun call!727908 () Regex!21091)

(assert (=> b!7853328 (= e!4642007 (Union!21091 call!727907 call!727908))))

(declare-fun call!727906 () Regex!21091)

(declare-fun b!7853329 () Bool)

(assert (=> b!7853329 (= e!4642011 (Union!21091 (Concat!29936 call!727909 (regTwo!42694 r2!6165)) call!727906))))

(declare-fun bm!727902 () Bool)

(assert (=> bm!727902 (= call!727906 call!727908)))

(declare-fun d!2353576 () Bool)

(declare-fun lt!2679812 () Regex!21091)

(assert (=> d!2353576 (validRegex!11501 lt!2679812)))

(assert (=> d!2353576 (= lt!2679812 e!4642008)))

(declare-fun c!1443398 () Bool)

(assert (=> d!2353576 (= c!1443398 (or ((_ is EmptyExpr!21091) r2!6165) ((_ is EmptyLang!21091) r2!6165)))))

(assert (=> d!2353576 (validRegex!11501 r2!6165)))

(assert (=> d!2353576 (= (derivativeStep!6326 r2!6165 (head!16047 s2!3706)) lt!2679812)))

(declare-fun bm!727903 () Bool)

(assert (=> bm!727903 (= call!727908 (derivativeStep!6326 (ite c!1443395 (regTwo!42695 r2!6165) (ite c!1443396 (regTwo!42694 r2!6165) (regOne!42694 r2!6165))) (head!16047 s2!3706)))))

(declare-fun b!7853330 () Bool)

(assert (=> b!7853330 (= e!4642008 EmptyLang!21091)))

(declare-fun b!7853331 () Bool)

(assert (=> b!7853331 (= c!1443395 ((_ is Union!21091) r2!6165))))

(assert (=> b!7853331 (= e!4642010 e!4642007)))

(declare-fun b!7853332 () Bool)

(assert (=> b!7853332 (= e!4642007 e!4642009)))

(assert (=> b!7853332 (= c!1443397 ((_ is Star!21091) r2!6165))))

(declare-fun bm!727904 () Bool)

(assert (=> bm!727904 (= call!727909 call!727907)))

(declare-fun b!7853333 () Bool)

(assert (=> b!7853333 (= e!4642011 (Union!21091 (Concat!29936 call!727906 (regTwo!42694 r2!6165)) EmptyLang!21091))))

(assert (= (and d!2353576 c!1443398) b!7853330))

(assert (= (and d!2353576 (not c!1443398)) b!7853324))

(assert (= (and b!7853324 c!1443394) b!7853327))

(assert (= (and b!7853324 (not c!1443394)) b!7853331))

(assert (= (and b!7853331 c!1443395) b!7853328))

(assert (= (and b!7853331 (not c!1443395)) b!7853332))

(assert (= (and b!7853332 c!1443397) b!7853325))

(assert (= (and b!7853332 (not c!1443397)) b!7853326))

(assert (= (and b!7853326 c!1443396) b!7853329))

(assert (= (and b!7853326 (not c!1443396)) b!7853333))

(assert (= (or b!7853329 b!7853333) bm!727902))

(assert (= (or b!7853325 b!7853329) bm!727904))

(assert (= (or b!7853328 bm!727902) bm!727903))

(assert (= (or b!7853328 bm!727904) bm!727901))

(declare-fun m!8259198 () Bool)

(assert (=> b!7853326 m!8259198))

(assert (=> bm!727901 m!8259020))

(declare-fun m!8259200 () Bool)

(assert (=> bm!727901 m!8259200))

(declare-fun m!8259202 () Bool)

(assert (=> d!2353576 m!8259202))

(assert (=> d!2353576 m!8258976))

(assert (=> bm!727903 m!8259020))

(declare-fun m!8259204 () Bool)

(assert (=> bm!727903 m!8259204))

(assert (=> b!7852971 d!2353576))

(assert (=> b!7852971 d!2353532))

(declare-fun d!2353578 () Bool)

(assert (=> d!2353578 (= (tail!15590 s2!3706) (t!388685 s2!3706))))

(assert (=> b!7852971 d!2353578))

(declare-fun d!2353580 () Bool)

(assert (=> d!2353580 (= (isEmpty!42336 s2!3706) ((_ is Nil!73826) s2!3706))))

(assert (=> d!2353512 d!2353580))

(assert (=> d!2353512 d!2353510))

(assert (=> bm!727841 d!2353580))

(declare-fun d!2353582 () Bool)

(assert (=> d!2353582 (= (isEmpty!42336 (tail!15590 s2!3706)) ((_ is Nil!73826) (tail!15590 s2!3706)))))

(assert (=> b!7852972 d!2353582))

(assert (=> b!7852972 d!2353578))

(assert (=> b!7852913 d!2353552))

(assert (=> b!7852913 d!2353540))

(assert (=> b!7853106 d!2353558))

(assert (=> b!7853106 d!2353560))

(declare-fun d!2353584 () Bool)

(assert (=> d!2353584 (= (nullable!9363 (reg!21420 r2!6165)) (nullableFct!3690 (reg!21420 r2!6165)))))

(declare-fun bs!1967105 () Bool)

(assert (= bs!1967105 d!2353584))

(declare-fun m!8259206 () Bool)

(assert (=> bs!1967105 m!8259206))

(assert (=> b!7852962 d!2353584))

(assert (=> b!7852914 d!2353538))

(assert (=> bm!727875 d!2353572))

(declare-fun b!7853334 () Bool)

(declare-fun e!4642016 () Bool)

(assert (=> b!7853334 (= e!4642016 (matchR!10527 (derivativeStep!6326 (derivativeStep!6326 lt!2679791 (head!16047 (t!388685 s1!4084))) (head!16047 (tail!15590 (t!388685 s1!4084)))) (tail!15590 (tail!15590 (t!388685 s1!4084)))))))

(declare-fun bm!727905 () Bool)

(declare-fun call!727910 () Bool)

(assert (=> bm!727905 (= call!727910 (isEmpty!42336 (tail!15590 (t!388685 s1!4084))))))

(declare-fun b!7853335 () Bool)

(declare-fun res!3122729 () Bool)

(declare-fun e!4642012 () Bool)

(assert (=> b!7853335 (=> res!3122729 e!4642012)))

(assert (=> b!7853335 (= res!3122729 (not (isEmpty!42336 (tail!15590 (tail!15590 (t!388685 s1!4084))))))))

(declare-fun d!2353586 () Bool)

(declare-fun e!4642018 () Bool)

(assert (=> d!2353586 e!4642018))

(declare-fun c!1443400 () Bool)

(assert (=> d!2353586 (= c!1443400 ((_ is EmptyExpr!21091) (derivativeStep!6326 lt!2679791 (head!16047 (t!388685 s1!4084)))))))

(declare-fun lt!2679813 () Bool)

(assert (=> d!2353586 (= lt!2679813 e!4642016)))

(declare-fun c!1443401 () Bool)

(assert (=> d!2353586 (= c!1443401 (isEmpty!42336 (tail!15590 (t!388685 s1!4084))))))

(assert (=> d!2353586 (validRegex!11501 (derivativeStep!6326 lt!2679791 (head!16047 (t!388685 s1!4084))))))

(assert (=> d!2353586 (= (matchR!10527 (derivativeStep!6326 lt!2679791 (head!16047 (t!388685 s1!4084))) (tail!15590 (t!388685 s1!4084))) lt!2679813)))

(declare-fun b!7853336 () Bool)

(declare-fun e!4642015 () Bool)

(assert (=> b!7853336 (= e!4642015 (not lt!2679813))))

(declare-fun b!7853337 () Bool)

(assert (=> b!7853337 (= e!4642018 (= lt!2679813 call!727910))))

(declare-fun b!7853338 () Bool)

(declare-fun e!4642014 () Bool)

(assert (=> b!7853338 (= e!4642014 e!4642012)))

(declare-fun res!3122731 () Bool)

(assert (=> b!7853338 (=> res!3122731 e!4642012)))

(assert (=> b!7853338 (= res!3122731 call!727910)))

(declare-fun b!7853339 () Bool)

(assert (=> b!7853339 (= e!4642018 e!4642015)))

(declare-fun c!1443399 () Bool)

(assert (=> b!7853339 (= c!1443399 ((_ is EmptyLang!21091) (derivativeStep!6326 lt!2679791 (head!16047 (t!388685 s1!4084)))))))

(declare-fun b!7853340 () Bool)

(declare-fun res!3122730 () Bool)

(declare-fun e!4642013 () Bool)

(assert (=> b!7853340 (=> res!3122730 e!4642013)))

(declare-fun e!4642017 () Bool)

(assert (=> b!7853340 (= res!3122730 e!4642017)))

(declare-fun res!3122732 () Bool)

(assert (=> b!7853340 (=> (not res!3122732) (not e!4642017))))

(assert (=> b!7853340 (= res!3122732 lt!2679813)))

(declare-fun b!7853341 () Bool)

(assert (=> b!7853341 (= e!4642016 (nullable!9363 (derivativeStep!6326 lt!2679791 (head!16047 (t!388685 s1!4084)))))))

(declare-fun b!7853342 () Bool)

(assert (=> b!7853342 (= e!4642017 (= (head!16047 (tail!15590 (t!388685 s1!4084))) (c!1443291 (derivativeStep!6326 lt!2679791 (head!16047 (t!388685 s1!4084))))))))

(declare-fun b!7853343 () Bool)

(declare-fun res!3122726 () Bool)

(assert (=> b!7853343 (=> res!3122726 e!4642013)))

(assert (=> b!7853343 (= res!3122726 (not ((_ is ElementMatch!21091) (derivativeStep!6326 lt!2679791 (head!16047 (t!388685 s1!4084))))))))

(assert (=> b!7853343 (= e!4642015 e!4642013)))

(declare-fun b!7853344 () Bool)

(declare-fun res!3122727 () Bool)

(assert (=> b!7853344 (=> (not res!3122727) (not e!4642017))))

(assert (=> b!7853344 (= res!3122727 (not call!727910))))

(declare-fun b!7853345 () Bool)

(declare-fun res!3122728 () Bool)

(assert (=> b!7853345 (=> (not res!3122728) (not e!4642017))))

(assert (=> b!7853345 (= res!3122728 (isEmpty!42336 (tail!15590 (tail!15590 (t!388685 s1!4084)))))))

(declare-fun b!7853346 () Bool)

(assert (=> b!7853346 (= e!4642012 (not (= (head!16047 (tail!15590 (t!388685 s1!4084))) (c!1443291 (derivativeStep!6326 lt!2679791 (head!16047 (t!388685 s1!4084)))))))))

(declare-fun b!7853347 () Bool)

(assert (=> b!7853347 (= e!4642013 e!4642014)))

(declare-fun res!3122733 () Bool)

(assert (=> b!7853347 (=> (not res!3122733) (not e!4642014))))

(assert (=> b!7853347 (= res!3122733 (not lt!2679813))))

(assert (= (and d!2353586 c!1443401) b!7853341))

(assert (= (and d!2353586 (not c!1443401)) b!7853334))

(assert (= (and d!2353586 c!1443400) b!7853337))

(assert (= (and d!2353586 (not c!1443400)) b!7853339))

(assert (= (and b!7853339 c!1443399) b!7853336))

(assert (= (and b!7853339 (not c!1443399)) b!7853343))

(assert (= (and b!7853343 (not res!3122726)) b!7853340))

(assert (= (and b!7853340 res!3122732) b!7853344))

(assert (= (and b!7853344 res!3122727) b!7853345))

(assert (= (and b!7853345 res!3122728) b!7853342))

(assert (= (and b!7853340 (not res!3122730)) b!7853347))

(assert (= (and b!7853347 res!3122733) b!7853338))

(assert (= (and b!7853338 (not res!3122731)) b!7853335))

(assert (= (and b!7853335 (not res!3122729)) b!7853346))

(assert (= (or b!7853337 b!7853338 b!7853344) bm!727905))

(assert (=> d!2353586 m!8259100))

(assert (=> d!2353586 m!8259102))

(assert (=> d!2353586 m!8259106))

(declare-fun m!8259208 () Bool)

(assert (=> d!2353586 m!8259208))

(assert (=> b!7853335 m!8259100))

(declare-fun m!8259210 () Bool)

(assert (=> b!7853335 m!8259210))

(assert (=> b!7853335 m!8259210))

(declare-fun m!8259212 () Bool)

(assert (=> b!7853335 m!8259212))

(assert (=> b!7853334 m!8259100))

(declare-fun m!8259214 () Bool)

(assert (=> b!7853334 m!8259214))

(assert (=> b!7853334 m!8259106))

(assert (=> b!7853334 m!8259214))

(declare-fun m!8259216 () Bool)

(assert (=> b!7853334 m!8259216))

(assert (=> b!7853334 m!8259100))

(assert (=> b!7853334 m!8259210))

(assert (=> b!7853334 m!8259216))

(assert (=> b!7853334 m!8259210))

(declare-fun m!8259218 () Bool)

(assert (=> b!7853334 m!8259218))

(assert (=> bm!727905 m!8259100))

(assert (=> bm!727905 m!8259102))

(assert (=> b!7853345 m!8259100))

(assert (=> b!7853345 m!8259210))

(assert (=> b!7853345 m!8259210))

(assert (=> b!7853345 m!8259212))

(assert (=> b!7853341 m!8259106))

(declare-fun m!8259220 () Bool)

(assert (=> b!7853341 m!8259220))

(assert (=> b!7853346 m!8259100))

(assert (=> b!7853346 m!8259214))

(assert (=> b!7853342 m!8259100))

(assert (=> b!7853342 m!8259214))

(assert (=> b!7853105 d!2353586))

(declare-fun b!7853348 () Bool)

(declare-fun e!4642020 () Regex!21091)

(declare-fun e!4642022 () Regex!21091)

(assert (=> b!7853348 (= e!4642020 e!4642022)))

(declare-fun c!1443402 () Bool)

(assert (=> b!7853348 (= c!1443402 ((_ is ElementMatch!21091) lt!2679791))))

(declare-fun b!7853349 () Bool)

(declare-fun e!4642021 () Regex!21091)

(declare-fun call!727914 () Regex!21091)

(assert (=> b!7853349 (= e!4642021 (Concat!29936 call!727914 lt!2679791))))

(declare-fun b!7853350 () Bool)

(declare-fun c!1443404 () Bool)

(assert (=> b!7853350 (= c!1443404 (nullable!9363 (regOne!42694 lt!2679791)))))

(declare-fun e!4642023 () Regex!21091)

(assert (=> b!7853350 (= e!4642021 e!4642023)))

(declare-fun b!7853351 () Bool)

(assert (=> b!7853351 (= e!4642022 (ite (= (head!16047 (t!388685 s1!4084)) (c!1443291 lt!2679791)) EmptyExpr!21091 EmptyLang!21091))))

(declare-fun call!727912 () Regex!21091)

(declare-fun c!1443405 () Bool)

(declare-fun c!1443403 () Bool)

(declare-fun bm!727906 () Bool)

(assert (=> bm!727906 (= call!727912 (derivativeStep!6326 (ite c!1443403 (regOne!42695 lt!2679791) (ite c!1443405 (reg!21420 lt!2679791) (regOne!42694 lt!2679791))) (head!16047 (t!388685 s1!4084))))))

(declare-fun b!7853352 () Bool)

(declare-fun e!4642019 () Regex!21091)

(declare-fun call!727913 () Regex!21091)

(assert (=> b!7853352 (= e!4642019 (Union!21091 call!727912 call!727913))))

(declare-fun b!7853353 () Bool)

(declare-fun call!727911 () Regex!21091)

(assert (=> b!7853353 (= e!4642023 (Union!21091 (Concat!29936 call!727914 (regTwo!42694 lt!2679791)) call!727911))))

(declare-fun bm!727907 () Bool)

(assert (=> bm!727907 (= call!727911 call!727913)))

(declare-fun d!2353588 () Bool)

(declare-fun lt!2679814 () Regex!21091)

(assert (=> d!2353588 (validRegex!11501 lt!2679814)))

(assert (=> d!2353588 (= lt!2679814 e!4642020)))

(declare-fun c!1443406 () Bool)

(assert (=> d!2353588 (= c!1443406 (or ((_ is EmptyExpr!21091) lt!2679791) ((_ is EmptyLang!21091) lt!2679791)))))

(assert (=> d!2353588 (validRegex!11501 lt!2679791)))

(assert (=> d!2353588 (= (derivativeStep!6326 lt!2679791 (head!16047 (t!388685 s1!4084))) lt!2679814)))

(declare-fun bm!727908 () Bool)

(assert (=> bm!727908 (= call!727913 (derivativeStep!6326 (ite c!1443403 (regTwo!42695 lt!2679791) (ite c!1443404 (regTwo!42694 lt!2679791) (regOne!42694 lt!2679791))) (head!16047 (t!388685 s1!4084))))))

(declare-fun b!7853354 () Bool)

(assert (=> b!7853354 (= e!4642020 EmptyLang!21091)))

(declare-fun b!7853355 () Bool)

(assert (=> b!7853355 (= c!1443403 ((_ is Union!21091) lt!2679791))))

(assert (=> b!7853355 (= e!4642022 e!4642019)))

(declare-fun b!7853356 () Bool)

(assert (=> b!7853356 (= e!4642019 e!4642021)))

(assert (=> b!7853356 (= c!1443405 ((_ is Star!21091) lt!2679791))))

(declare-fun bm!727909 () Bool)

(assert (=> bm!727909 (= call!727914 call!727912)))

(declare-fun b!7853357 () Bool)

(assert (=> b!7853357 (= e!4642023 (Union!21091 (Concat!29936 call!727911 (regTwo!42694 lt!2679791)) EmptyLang!21091))))

(assert (= (and d!2353588 c!1443406) b!7853354))

(assert (= (and d!2353588 (not c!1443406)) b!7853348))

(assert (= (and b!7853348 c!1443402) b!7853351))

(assert (= (and b!7853348 (not c!1443402)) b!7853355))

(assert (= (and b!7853355 c!1443403) b!7853352))

(assert (= (and b!7853355 (not c!1443403)) b!7853356))

(assert (= (and b!7853356 c!1443405) b!7853349))

(assert (= (and b!7853356 (not c!1443405)) b!7853350))

(assert (= (and b!7853350 c!1443404) b!7853353))

(assert (= (and b!7853350 (not c!1443404)) b!7853357))

(assert (= (or b!7853353 b!7853357) bm!727907))

(assert (= (or b!7853349 b!7853353) bm!727909))

(assert (= (or b!7853352 bm!727907) bm!727908))

(assert (= (or b!7853352 bm!727909) bm!727906))

(declare-fun m!8259222 () Bool)

(assert (=> b!7853350 m!8259222))

(assert (=> bm!727906 m!8259104))

(declare-fun m!8259224 () Bool)

(assert (=> bm!727906 m!8259224))

(declare-fun m!8259226 () Bool)

(assert (=> d!2353588 m!8259226))

(assert (=> d!2353588 m!8258984))

(assert (=> bm!727908 m!8259104))

(declare-fun m!8259228 () Bool)

(assert (=> bm!727908 m!8259228))

(assert (=> b!7853105 d!2353588))

(assert (=> b!7853105 d!2353550))

(assert (=> b!7853105 d!2353560))

(declare-fun b!7853358 () Bool)

(declare-fun e!4642028 () Bool)

(declare-fun e!4642027 () Bool)

(assert (=> b!7853358 (= e!4642028 e!4642027)))

(declare-fun res!3122737 () Bool)

(assert (=> b!7853358 (= res!3122737 (not (nullable!9363 (reg!21420 (ite c!1443325 (reg!21420 lt!2679791) (ite c!1443326 (regTwo!42695 lt!2679791) (regOne!42694 lt!2679791)))))))))

(assert (=> b!7853358 (=> (not res!3122737) (not e!4642027))))

(declare-fun b!7853359 () Bool)

(declare-fun call!727917 () Bool)

(assert (=> b!7853359 (= e!4642027 call!727917)))

(declare-fun b!7853360 () Bool)

(declare-fun e!4642026 () Bool)

(assert (=> b!7853360 (= e!4642028 e!4642026)))

(declare-fun c!1443408 () Bool)

(assert (=> b!7853360 (= c!1443408 ((_ is Union!21091) (ite c!1443325 (reg!21420 lt!2679791) (ite c!1443326 (regTwo!42695 lt!2679791) (regOne!42694 lt!2679791)))))))

(declare-fun b!7853361 () Bool)

(declare-fun e!4642029 () Bool)

(declare-fun call!727915 () Bool)

(assert (=> b!7853361 (= e!4642029 call!727915)))

(declare-fun bm!727910 () Bool)

(declare-fun call!727916 () Bool)

(assert (=> bm!727910 (= call!727916 call!727917)))

(declare-fun b!7853362 () Bool)

(declare-fun res!3122736 () Bool)

(declare-fun e!4642025 () Bool)

(assert (=> b!7853362 (=> res!3122736 e!4642025)))

(assert (=> b!7853362 (= res!3122736 (not ((_ is Concat!29936) (ite c!1443325 (reg!21420 lt!2679791) (ite c!1443326 (regTwo!42695 lt!2679791) (regOne!42694 lt!2679791))))))))

(assert (=> b!7853362 (= e!4642026 e!4642025)))

(declare-fun b!7853364 () Bool)

(declare-fun e!4642024 () Bool)

(assert (=> b!7853364 (= e!4642024 call!727916)))

(declare-fun b!7853365 () Bool)

(declare-fun e!4642030 () Bool)

(assert (=> b!7853365 (= e!4642030 e!4642028)))

(declare-fun c!1443407 () Bool)

(assert (=> b!7853365 (= c!1443407 ((_ is Star!21091) (ite c!1443325 (reg!21420 lt!2679791) (ite c!1443326 (regTwo!42695 lt!2679791) (regOne!42694 lt!2679791)))))))

(declare-fun bm!727911 () Bool)

(assert (=> bm!727911 (= call!727915 (validRegex!11501 (ite c!1443408 (regOne!42695 (ite c!1443325 (reg!21420 lt!2679791) (ite c!1443326 (regTwo!42695 lt!2679791) (regOne!42694 lt!2679791)))) (regTwo!42694 (ite c!1443325 (reg!21420 lt!2679791) (ite c!1443326 (regTwo!42695 lt!2679791) (regOne!42694 lt!2679791)))))))))

(declare-fun b!7853366 () Bool)

(assert (=> b!7853366 (= e!4642025 e!4642029)))

(declare-fun res!3122734 () Bool)

(assert (=> b!7853366 (=> (not res!3122734) (not e!4642029))))

(assert (=> b!7853366 (= res!3122734 call!727916)))

(declare-fun bm!727912 () Bool)

(assert (=> bm!727912 (= call!727917 (validRegex!11501 (ite c!1443407 (reg!21420 (ite c!1443325 (reg!21420 lt!2679791) (ite c!1443326 (regTwo!42695 lt!2679791) (regOne!42694 lt!2679791)))) (ite c!1443408 (regTwo!42695 (ite c!1443325 (reg!21420 lt!2679791) (ite c!1443326 (regTwo!42695 lt!2679791) (regOne!42694 lt!2679791)))) (regOne!42694 (ite c!1443325 (reg!21420 lt!2679791) (ite c!1443326 (regTwo!42695 lt!2679791) (regOne!42694 lt!2679791))))))))))

(declare-fun b!7853363 () Bool)

(declare-fun res!3122735 () Bool)

(assert (=> b!7853363 (=> (not res!3122735) (not e!4642024))))

(assert (=> b!7853363 (= res!3122735 call!727915)))

(assert (=> b!7853363 (= e!4642026 e!4642024)))

(declare-fun d!2353590 () Bool)

(declare-fun res!3122738 () Bool)

(assert (=> d!2353590 (=> res!3122738 e!4642030)))

(assert (=> d!2353590 (= res!3122738 ((_ is ElementMatch!21091) (ite c!1443325 (reg!21420 lt!2679791) (ite c!1443326 (regTwo!42695 lt!2679791) (regOne!42694 lt!2679791)))))))

(assert (=> d!2353590 (= (validRegex!11501 (ite c!1443325 (reg!21420 lt!2679791) (ite c!1443326 (regTwo!42695 lt!2679791) (regOne!42694 lt!2679791)))) e!4642030)))

(assert (= (and d!2353590 (not res!3122738)) b!7853365))

(assert (= (and b!7853365 c!1443407) b!7853358))

(assert (= (and b!7853365 (not c!1443407)) b!7853360))

(assert (= (and b!7853358 res!3122737) b!7853359))

(assert (= (and b!7853360 c!1443408) b!7853363))

(assert (= (and b!7853360 (not c!1443408)) b!7853362))

(assert (= (and b!7853363 res!3122735) b!7853364))

(assert (= (and b!7853362 (not res!3122736)) b!7853366))

(assert (= (and b!7853366 res!3122734) b!7853361))

(assert (= (or b!7853363 b!7853361) bm!727911))

(assert (= (or b!7853364 b!7853366) bm!727910))

(assert (= (or b!7853359 bm!727910) bm!727912))

(declare-fun m!8259230 () Bool)

(assert (=> b!7853358 m!8259230))

(declare-fun m!8259232 () Bool)

(assert (=> bm!727911 m!8259232))

(declare-fun m!8259234 () Bool)

(assert (=> bm!727912 m!8259234))

(assert (=> bm!727845 d!2353590))

(declare-fun b!7853367 () Bool)

(declare-fun e!4642035 () Bool)

(declare-fun e!4642034 () Bool)

(assert (=> b!7853367 (= e!4642035 e!4642034)))

(declare-fun res!3122742 () Bool)

(assert (=> b!7853367 (= res!3122742 (not (nullable!9363 (reg!21420 (ite c!1443370 (reg!21420 r1!6227) (ite c!1443371 (regTwo!42695 r1!6227) (regOne!42694 r1!6227)))))))))

(assert (=> b!7853367 (=> (not res!3122742) (not e!4642034))))

(declare-fun b!7853368 () Bool)

(declare-fun call!727920 () Bool)

(assert (=> b!7853368 (= e!4642034 call!727920)))

(declare-fun b!7853369 () Bool)

(declare-fun e!4642033 () Bool)

(assert (=> b!7853369 (= e!4642035 e!4642033)))

(declare-fun c!1443410 () Bool)

(assert (=> b!7853369 (= c!1443410 ((_ is Union!21091) (ite c!1443370 (reg!21420 r1!6227) (ite c!1443371 (regTwo!42695 r1!6227) (regOne!42694 r1!6227)))))))

(declare-fun b!7853370 () Bool)

(declare-fun e!4642036 () Bool)

(declare-fun call!727918 () Bool)

(assert (=> b!7853370 (= e!4642036 call!727918)))

(declare-fun bm!727913 () Bool)

(declare-fun call!727919 () Bool)

(assert (=> bm!727913 (= call!727919 call!727920)))

(declare-fun b!7853371 () Bool)

(declare-fun res!3122741 () Bool)

(declare-fun e!4642032 () Bool)

(assert (=> b!7853371 (=> res!3122741 e!4642032)))

(assert (=> b!7853371 (= res!3122741 (not ((_ is Concat!29936) (ite c!1443370 (reg!21420 r1!6227) (ite c!1443371 (regTwo!42695 r1!6227) (regOne!42694 r1!6227))))))))

(assert (=> b!7853371 (= e!4642033 e!4642032)))

(declare-fun b!7853373 () Bool)

(declare-fun e!4642031 () Bool)

(assert (=> b!7853373 (= e!4642031 call!727919)))

(declare-fun b!7853374 () Bool)

(declare-fun e!4642037 () Bool)

(assert (=> b!7853374 (= e!4642037 e!4642035)))

(declare-fun c!1443409 () Bool)

(assert (=> b!7853374 (= c!1443409 ((_ is Star!21091) (ite c!1443370 (reg!21420 r1!6227) (ite c!1443371 (regTwo!42695 r1!6227) (regOne!42694 r1!6227)))))))

(declare-fun bm!727914 () Bool)

(assert (=> bm!727914 (= call!727918 (validRegex!11501 (ite c!1443410 (regOne!42695 (ite c!1443370 (reg!21420 r1!6227) (ite c!1443371 (regTwo!42695 r1!6227) (regOne!42694 r1!6227)))) (regTwo!42694 (ite c!1443370 (reg!21420 r1!6227) (ite c!1443371 (regTwo!42695 r1!6227) (regOne!42694 r1!6227)))))))))

(declare-fun b!7853375 () Bool)

(assert (=> b!7853375 (= e!4642032 e!4642036)))

(declare-fun res!3122739 () Bool)

(assert (=> b!7853375 (=> (not res!3122739) (not e!4642036))))

(assert (=> b!7853375 (= res!3122739 call!727919)))

(declare-fun bm!727915 () Bool)

(assert (=> bm!727915 (= call!727920 (validRegex!11501 (ite c!1443409 (reg!21420 (ite c!1443370 (reg!21420 r1!6227) (ite c!1443371 (regTwo!42695 r1!6227) (regOne!42694 r1!6227)))) (ite c!1443410 (regTwo!42695 (ite c!1443370 (reg!21420 r1!6227) (ite c!1443371 (regTwo!42695 r1!6227) (regOne!42694 r1!6227)))) (regOne!42694 (ite c!1443370 (reg!21420 r1!6227) (ite c!1443371 (regTwo!42695 r1!6227) (regOne!42694 r1!6227))))))))))

(declare-fun b!7853372 () Bool)

(declare-fun res!3122740 () Bool)

(assert (=> b!7853372 (=> (not res!3122740) (not e!4642031))))

(assert (=> b!7853372 (= res!3122740 call!727918)))

(assert (=> b!7853372 (= e!4642033 e!4642031)))

(declare-fun d!2353592 () Bool)

(declare-fun res!3122743 () Bool)

(assert (=> d!2353592 (=> res!3122743 e!4642037)))

(assert (=> d!2353592 (= res!3122743 ((_ is ElementMatch!21091) (ite c!1443370 (reg!21420 r1!6227) (ite c!1443371 (regTwo!42695 r1!6227) (regOne!42694 r1!6227)))))))

(assert (=> d!2353592 (= (validRegex!11501 (ite c!1443370 (reg!21420 r1!6227) (ite c!1443371 (regTwo!42695 r1!6227) (regOne!42694 r1!6227)))) e!4642037)))

(assert (= (and d!2353592 (not res!3122743)) b!7853374))

(assert (= (and b!7853374 c!1443409) b!7853367))

(assert (= (and b!7853374 (not c!1443409)) b!7853369))

(assert (= (and b!7853367 res!3122742) b!7853368))

(assert (= (and b!7853369 c!1443410) b!7853372))

(assert (= (and b!7853369 (not c!1443410)) b!7853371))

(assert (= (and b!7853372 res!3122740) b!7853373))

(assert (= (and b!7853371 (not res!3122741)) b!7853375))

(assert (= (and b!7853375 res!3122739) b!7853370))

(assert (= (or b!7853372 b!7853370) bm!727914))

(assert (= (or b!7853373 b!7853375) bm!727913))

(assert (= (or b!7853368 bm!727913) bm!727915))

(declare-fun m!8259236 () Bool)

(assert (=> b!7853367 m!8259236))

(declare-fun m!8259238 () Bool)

(assert (=> bm!727914 m!8259238))

(declare-fun m!8259240 () Bool)

(assert (=> bm!727915 m!8259240))

(assert (=> bm!727881 d!2353592))

(assert (=> b!7852983 d!2353532))

(declare-fun b!7853376 () Bool)

(declare-fun e!4642042 () Bool)

(declare-fun e!4642041 () Bool)

(assert (=> b!7853376 (= e!4642042 e!4642041)))

(declare-fun res!3122747 () Bool)

(assert (=> b!7853376 (= res!3122747 (not (nullable!9363 (reg!21420 (ite c!1443326 (regOne!42695 lt!2679791) (regTwo!42694 lt!2679791))))))))

(assert (=> b!7853376 (=> (not res!3122747) (not e!4642041))))

(declare-fun b!7853377 () Bool)

(declare-fun call!727923 () Bool)

(assert (=> b!7853377 (= e!4642041 call!727923)))

(declare-fun b!7853378 () Bool)

(declare-fun e!4642040 () Bool)

(assert (=> b!7853378 (= e!4642042 e!4642040)))

(declare-fun c!1443412 () Bool)

(assert (=> b!7853378 (= c!1443412 ((_ is Union!21091) (ite c!1443326 (regOne!42695 lt!2679791) (regTwo!42694 lt!2679791))))))

(declare-fun b!7853379 () Bool)

(declare-fun e!4642043 () Bool)

(declare-fun call!727921 () Bool)

(assert (=> b!7853379 (= e!4642043 call!727921)))

(declare-fun bm!727916 () Bool)

(declare-fun call!727922 () Bool)

(assert (=> bm!727916 (= call!727922 call!727923)))

(declare-fun b!7853380 () Bool)

(declare-fun res!3122746 () Bool)

(declare-fun e!4642039 () Bool)

(assert (=> b!7853380 (=> res!3122746 e!4642039)))

(assert (=> b!7853380 (= res!3122746 (not ((_ is Concat!29936) (ite c!1443326 (regOne!42695 lt!2679791) (regTwo!42694 lt!2679791)))))))

(assert (=> b!7853380 (= e!4642040 e!4642039)))

(declare-fun b!7853382 () Bool)

(declare-fun e!4642038 () Bool)

(assert (=> b!7853382 (= e!4642038 call!727922)))

(declare-fun b!7853383 () Bool)

(declare-fun e!4642044 () Bool)

(assert (=> b!7853383 (= e!4642044 e!4642042)))

(declare-fun c!1443411 () Bool)

(assert (=> b!7853383 (= c!1443411 ((_ is Star!21091) (ite c!1443326 (regOne!42695 lt!2679791) (regTwo!42694 lt!2679791))))))

(declare-fun bm!727917 () Bool)

(assert (=> bm!727917 (= call!727921 (validRegex!11501 (ite c!1443412 (regOne!42695 (ite c!1443326 (regOne!42695 lt!2679791) (regTwo!42694 lt!2679791))) (regTwo!42694 (ite c!1443326 (regOne!42695 lt!2679791) (regTwo!42694 lt!2679791))))))))

(declare-fun b!7853384 () Bool)

(assert (=> b!7853384 (= e!4642039 e!4642043)))

(declare-fun res!3122744 () Bool)

(assert (=> b!7853384 (=> (not res!3122744) (not e!4642043))))

(assert (=> b!7853384 (= res!3122744 call!727922)))

(declare-fun bm!727918 () Bool)

(assert (=> bm!727918 (= call!727923 (validRegex!11501 (ite c!1443411 (reg!21420 (ite c!1443326 (regOne!42695 lt!2679791) (regTwo!42694 lt!2679791))) (ite c!1443412 (regTwo!42695 (ite c!1443326 (regOne!42695 lt!2679791) (regTwo!42694 lt!2679791))) (regOne!42694 (ite c!1443326 (regOne!42695 lt!2679791) (regTwo!42694 lt!2679791)))))))))

(declare-fun b!7853381 () Bool)

(declare-fun res!3122745 () Bool)

(assert (=> b!7853381 (=> (not res!3122745) (not e!4642038))))

(assert (=> b!7853381 (= res!3122745 call!727921)))

(assert (=> b!7853381 (= e!4642040 e!4642038)))

(declare-fun d!2353594 () Bool)

(declare-fun res!3122748 () Bool)

(assert (=> d!2353594 (=> res!3122748 e!4642044)))

(assert (=> d!2353594 (= res!3122748 ((_ is ElementMatch!21091) (ite c!1443326 (regOne!42695 lt!2679791) (regTwo!42694 lt!2679791))))))

(assert (=> d!2353594 (= (validRegex!11501 (ite c!1443326 (regOne!42695 lt!2679791) (regTwo!42694 lt!2679791))) e!4642044)))

(assert (= (and d!2353594 (not res!3122748)) b!7853383))

(assert (= (and b!7853383 c!1443411) b!7853376))

(assert (= (and b!7853383 (not c!1443411)) b!7853378))

(assert (= (and b!7853376 res!3122747) b!7853377))

(assert (= (and b!7853378 c!1443412) b!7853381))

(assert (= (and b!7853378 (not c!1443412)) b!7853380))

(assert (= (and b!7853381 res!3122745) b!7853382))

(assert (= (and b!7853380 (not res!3122746)) b!7853384))

(assert (= (and b!7853384 res!3122744) b!7853379))

(assert (= (or b!7853381 b!7853379) bm!727917))

(assert (= (or b!7853382 b!7853384) bm!727916))

(assert (= (or b!7853377 bm!727916) bm!727918))

(declare-fun m!8259242 () Bool)

(assert (=> b!7853376 m!8259242))

(declare-fun m!8259244 () Bool)

(assert (=> bm!727917 m!8259244))

(declare-fun m!8259246 () Bool)

(assert (=> bm!727918 m!8259246))

(assert (=> bm!727844 d!2353594))

(declare-fun b!7853385 () Bool)

(declare-fun e!4642046 () Regex!21091)

(declare-fun e!4642048 () Regex!21091)

(assert (=> b!7853385 (= e!4642046 e!4642048)))

(declare-fun c!1443413 () Bool)

(assert (=> b!7853385 (= c!1443413 ((_ is ElementMatch!21091) (ite c!1443353 (regTwo!42695 r1!6227) (ite c!1443354 (regTwo!42694 r1!6227) (regOne!42694 r1!6227)))))))

(declare-fun call!727927 () Regex!21091)

(declare-fun b!7853386 () Bool)

(declare-fun e!4642047 () Regex!21091)

(assert (=> b!7853386 (= e!4642047 (Concat!29936 call!727927 (ite c!1443353 (regTwo!42695 r1!6227) (ite c!1443354 (regTwo!42694 r1!6227) (regOne!42694 r1!6227)))))))

(declare-fun c!1443415 () Bool)

(declare-fun b!7853387 () Bool)

(assert (=> b!7853387 (= c!1443415 (nullable!9363 (regOne!42694 (ite c!1443353 (regTwo!42695 r1!6227) (ite c!1443354 (regTwo!42694 r1!6227) (regOne!42694 r1!6227))))))))

(declare-fun e!4642049 () Regex!21091)

(assert (=> b!7853387 (= e!4642047 e!4642049)))

(declare-fun b!7853388 () Bool)

(assert (=> b!7853388 (= e!4642048 (ite (= (h!80274 s1!4084) (c!1443291 (ite c!1443353 (regTwo!42695 r1!6227) (ite c!1443354 (regTwo!42694 r1!6227) (regOne!42694 r1!6227))))) EmptyExpr!21091 EmptyLang!21091))))

(declare-fun c!1443414 () Bool)

(declare-fun bm!727919 () Bool)

(declare-fun call!727925 () Regex!21091)

(declare-fun c!1443416 () Bool)

(assert (=> bm!727919 (= call!727925 (derivativeStep!6326 (ite c!1443414 (regOne!42695 (ite c!1443353 (regTwo!42695 r1!6227) (ite c!1443354 (regTwo!42694 r1!6227) (regOne!42694 r1!6227)))) (ite c!1443416 (reg!21420 (ite c!1443353 (regTwo!42695 r1!6227) (ite c!1443354 (regTwo!42694 r1!6227) (regOne!42694 r1!6227)))) (regOne!42694 (ite c!1443353 (regTwo!42695 r1!6227) (ite c!1443354 (regTwo!42694 r1!6227) (regOne!42694 r1!6227)))))) (h!80274 s1!4084)))))

(declare-fun b!7853389 () Bool)

(declare-fun e!4642045 () Regex!21091)

(declare-fun call!727926 () Regex!21091)

(assert (=> b!7853389 (= e!4642045 (Union!21091 call!727925 call!727926))))

(declare-fun b!7853390 () Bool)

(declare-fun call!727924 () Regex!21091)

(assert (=> b!7853390 (= e!4642049 (Union!21091 (Concat!29936 call!727927 (regTwo!42694 (ite c!1443353 (regTwo!42695 r1!6227) (ite c!1443354 (regTwo!42694 r1!6227) (regOne!42694 r1!6227))))) call!727924))))

(declare-fun bm!727920 () Bool)

(assert (=> bm!727920 (= call!727924 call!727926)))

(declare-fun d!2353596 () Bool)

(declare-fun lt!2679815 () Regex!21091)

(assert (=> d!2353596 (validRegex!11501 lt!2679815)))

(assert (=> d!2353596 (= lt!2679815 e!4642046)))

(declare-fun c!1443417 () Bool)

(assert (=> d!2353596 (= c!1443417 (or ((_ is EmptyExpr!21091) (ite c!1443353 (regTwo!42695 r1!6227) (ite c!1443354 (regTwo!42694 r1!6227) (regOne!42694 r1!6227)))) ((_ is EmptyLang!21091) (ite c!1443353 (regTwo!42695 r1!6227) (ite c!1443354 (regTwo!42694 r1!6227) (regOne!42694 r1!6227))))))))

(assert (=> d!2353596 (validRegex!11501 (ite c!1443353 (regTwo!42695 r1!6227) (ite c!1443354 (regTwo!42694 r1!6227) (regOne!42694 r1!6227))))))

(assert (=> d!2353596 (= (derivativeStep!6326 (ite c!1443353 (regTwo!42695 r1!6227) (ite c!1443354 (regTwo!42694 r1!6227) (regOne!42694 r1!6227))) (h!80274 s1!4084)) lt!2679815)))

(declare-fun bm!727921 () Bool)

(assert (=> bm!727921 (= call!727926 (derivativeStep!6326 (ite c!1443414 (regTwo!42695 (ite c!1443353 (regTwo!42695 r1!6227) (ite c!1443354 (regTwo!42694 r1!6227) (regOne!42694 r1!6227)))) (ite c!1443415 (regTwo!42694 (ite c!1443353 (regTwo!42695 r1!6227) (ite c!1443354 (regTwo!42694 r1!6227) (regOne!42694 r1!6227)))) (regOne!42694 (ite c!1443353 (regTwo!42695 r1!6227) (ite c!1443354 (regTwo!42694 r1!6227) (regOne!42694 r1!6227)))))) (h!80274 s1!4084)))))

(declare-fun b!7853391 () Bool)

(assert (=> b!7853391 (= e!4642046 EmptyLang!21091)))

(declare-fun b!7853392 () Bool)

(assert (=> b!7853392 (= c!1443414 ((_ is Union!21091) (ite c!1443353 (regTwo!42695 r1!6227) (ite c!1443354 (regTwo!42694 r1!6227) (regOne!42694 r1!6227)))))))

(assert (=> b!7853392 (= e!4642048 e!4642045)))

(declare-fun b!7853393 () Bool)

(assert (=> b!7853393 (= e!4642045 e!4642047)))

(assert (=> b!7853393 (= c!1443416 ((_ is Star!21091) (ite c!1443353 (regTwo!42695 r1!6227) (ite c!1443354 (regTwo!42694 r1!6227) (regOne!42694 r1!6227)))))))

(declare-fun bm!727922 () Bool)

(assert (=> bm!727922 (= call!727927 call!727925)))

(declare-fun b!7853394 () Bool)

(assert (=> b!7853394 (= e!4642049 (Union!21091 (Concat!29936 call!727924 (regTwo!42694 (ite c!1443353 (regTwo!42695 r1!6227) (ite c!1443354 (regTwo!42694 r1!6227) (regOne!42694 r1!6227))))) EmptyLang!21091))))

(assert (= (and d!2353596 c!1443417) b!7853391))

(assert (= (and d!2353596 (not c!1443417)) b!7853385))

(assert (= (and b!7853385 c!1443413) b!7853388))

(assert (= (and b!7853385 (not c!1443413)) b!7853392))

(assert (= (and b!7853392 c!1443414) b!7853389))

(assert (= (and b!7853392 (not c!1443414)) b!7853393))

(assert (= (and b!7853393 c!1443416) b!7853386))

(assert (= (and b!7853393 (not c!1443416)) b!7853387))

(assert (= (and b!7853387 c!1443415) b!7853390))

(assert (= (and b!7853387 (not c!1443415)) b!7853394))

(assert (= (or b!7853390 b!7853394) bm!727920))

(assert (= (or b!7853386 b!7853390) bm!727922))

(assert (= (or b!7853389 bm!727920) bm!727921))

(assert (= (or b!7853389 bm!727922) bm!727919))

(declare-fun m!8259248 () Bool)

(assert (=> b!7853387 m!8259248))

(declare-fun m!8259250 () Bool)

(assert (=> bm!727919 m!8259250))

(declare-fun m!8259252 () Bool)

(assert (=> d!2353596 m!8259252))

(declare-fun m!8259254 () Bool)

(assert (=> d!2353596 m!8259254))

(declare-fun m!8259256 () Bool)

(assert (=> bm!727921 m!8259256))

(assert (=> bm!727868 d!2353596))

(assert (=> b!7852982 d!2353582))

(assert (=> b!7852982 d!2353578))

(assert (=> d!2353504 d!2353548))

(assert (=> d!2353504 d!2353530))

(declare-fun b!7853395 () Bool)

(declare-fun e!4642054 () Bool)

(declare-fun e!4642053 () Bool)

(assert (=> b!7853395 (= e!4642054 e!4642053)))

(declare-fun res!3122752 () Bool)

(assert (=> b!7853395 (= res!3122752 (not (nullable!9363 (reg!21420 (ite c!1443371 (regOne!42695 r1!6227) (regTwo!42694 r1!6227))))))))

(assert (=> b!7853395 (=> (not res!3122752) (not e!4642053))))

(declare-fun b!7853396 () Bool)

(declare-fun call!727930 () Bool)

(assert (=> b!7853396 (= e!4642053 call!727930)))

(declare-fun b!7853397 () Bool)

(declare-fun e!4642052 () Bool)

(assert (=> b!7853397 (= e!4642054 e!4642052)))

(declare-fun c!1443419 () Bool)

(assert (=> b!7853397 (= c!1443419 ((_ is Union!21091) (ite c!1443371 (regOne!42695 r1!6227) (regTwo!42694 r1!6227))))))

(declare-fun b!7853398 () Bool)

(declare-fun e!4642055 () Bool)

(declare-fun call!727928 () Bool)

(assert (=> b!7853398 (= e!4642055 call!727928)))

(declare-fun bm!727923 () Bool)

(declare-fun call!727929 () Bool)

(assert (=> bm!727923 (= call!727929 call!727930)))

(declare-fun b!7853399 () Bool)

(declare-fun res!3122751 () Bool)

(declare-fun e!4642051 () Bool)

(assert (=> b!7853399 (=> res!3122751 e!4642051)))

(assert (=> b!7853399 (= res!3122751 (not ((_ is Concat!29936) (ite c!1443371 (regOne!42695 r1!6227) (regTwo!42694 r1!6227)))))))

(assert (=> b!7853399 (= e!4642052 e!4642051)))

(declare-fun b!7853401 () Bool)

(declare-fun e!4642050 () Bool)

(assert (=> b!7853401 (= e!4642050 call!727929)))

(declare-fun b!7853402 () Bool)

(declare-fun e!4642056 () Bool)

(assert (=> b!7853402 (= e!4642056 e!4642054)))

(declare-fun c!1443418 () Bool)

(assert (=> b!7853402 (= c!1443418 ((_ is Star!21091) (ite c!1443371 (regOne!42695 r1!6227) (regTwo!42694 r1!6227))))))

(declare-fun bm!727924 () Bool)

(assert (=> bm!727924 (= call!727928 (validRegex!11501 (ite c!1443419 (regOne!42695 (ite c!1443371 (regOne!42695 r1!6227) (regTwo!42694 r1!6227))) (regTwo!42694 (ite c!1443371 (regOne!42695 r1!6227) (regTwo!42694 r1!6227))))))))

(declare-fun b!7853403 () Bool)

(assert (=> b!7853403 (= e!4642051 e!4642055)))

(declare-fun res!3122749 () Bool)

(assert (=> b!7853403 (=> (not res!3122749) (not e!4642055))))

(assert (=> b!7853403 (= res!3122749 call!727929)))

(declare-fun bm!727925 () Bool)

(assert (=> bm!727925 (= call!727930 (validRegex!11501 (ite c!1443418 (reg!21420 (ite c!1443371 (regOne!42695 r1!6227) (regTwo!42694 r1!6227))) (ite c!1443419 (regTwo!42695 (ite c!1443371 (regOne!42695 r1!6227) (regTwo!42694 r1!6227))) (regOne!42694 (ite c!1443371 (regOne!42695 r1!6227) (regTwo!42694 r1!6227)))))))))

(declare-fun b!7853400 () Bool)

(declare-fun res!3122750 () Bool)

(assert (=> b!7853400 (=> (not res!3122750) (not e!4642050))))

(assert (=> b!7853400 (= res!3122750 call!727928)))

(assert (=> b!7853400 (= e!4642052 e!4642050)))

(declare-fun d!2353598 () Bool)

(declare-fun res!3122753 () Bool)

(assert (=> d!2353598 (=> res!3122753 e!4642056)))

(assert (=> d!2353598 (= res!3122753 ((_ is ElementMatch!21091) (ite c!1443371 (regOne!42695 r1!6227) (regTwo!42694 r1!6227))))))

(assert (=> d!2353598 (= (validRegex!11501 (ite c!1443371 (regOne!42695 r1!6227) (regTwo!42694 r1!6227))) e!4642056)))

(assert (= (and d!2353598 (not res!3122753)) b!7853402))

(assert (= (and b!7853402 c!1443418) b!7853395))

(assert (= (and b!7853402 (not c!1443418)) b!7853397))

(assert (= (and b!7853395 res!3122752) b!7853396))

(assert (= (and b!7853397 c!1443419) b!7853400))

(assert (= (and b!7853397 (not c!1443419)) b!7853399))

(assert (= (and b!7853400 res!3122750) b!7853401))

(assert (= (and b!7853399 (not res!3122751)) b!7853403))

(assert (= (and b!7853403 res!3122749) b!7853398))

(assert (= (or b!7853400 b!7853398) bm!727924))

(assert (= (or b!7853401 b!7853403) bm!727923))

(assert (= (or b!7853396 bm!727923) bm!727925))

(declare-fun m!8259258 () Bool)

(assert (=> b!7853395 m!8259258))

(declare-fun m!8259260 () Bool)

(assert (=> bm!727924 m!8259260))

(declare-fun m!8259262 () Bool)

(assert (=> bm!727925 m!8259262))

(assert (=> bm!727880 d!2353598))

(declare-fun b!7853406 () Bool)

(declare-fun e!4642057 () Bool)

(declare-fun tp!2325997 () Bool)

(assert (=> b!7853406 (= e!4642057 tp!2325997)))

(assert (=> b!7853188 (= tp!2325928 e!4642057)))

(declare-fun b!7853404 () Bool)

(assert (=> b!7853404 (= e!4642057 tp_is_empty!52581)))

(declare-fun b!7853405 () Bool)

(declare-fun tp!2326000 () Bool)

(declare-fun tp!2325999 () Bool)

(assert (=> b!7853405 (= e!4642057 (and tp!2326000 tp!2325999))))

(declare-fun b!7853407 () Bool)

(declare-fun tp!2326001 () Bool)

(declare-fun tp!2325998 () Bool)

(assert (=> b!7853407 (= e!4642057 (and tp!2326001 tp!2325998))))

(assert (= (and b!7853188 ((_ is ElementMatch!21091) (regOne!42695 (regTwo!42694 r1!6227)))) b!7853404))

(assert (= (and b!7853188 ((_ is Concat!29936) (regOne!42695 (regTwo!42694 r1!6227)))) b!7853405))

(assert (= (and b!7853188 ((_ is Star!21091) (regOne!42695 (regTwo!42694 r1!6227)))) b!7853406))

(assert (= (and b!7853188 ((_ is Union!21091) (regOne!42695 (regTwo!42694 r1!6227)))) b!7853407))

(declare-fun b!7853410 () Bool)

(declare-fun e!4642058 () Bool)

(declare-fun tp!2326002 () Bool)

(assert (=> b!7853410 (= e!4642058 tp!2326002)))

(assert (=> b!7853188 (= tp!2325925 e!4642058)))

(declare-fun b!7853408 () Bool)

(assert (=> b!7853408 (= e!4642058 tp_is_empty!52581)))

(declare-fun b!7853409 () Bool)

(declare-fun tp!2326005 () Bool)

(declare-fun tp!2326004 () Bool)

(assert (=> b!7853409 (= e!4642058 (and tp!2326005 tp!2326004))))

(declare-fun b!7853411 () Bool)

(declare-fun tp!2326006 () Bool)

(declare-fun tp!2326003 () Bool)

(assert (=> b!7853411 (= e!4642058 (and tp!2326006 tp!2326003))))

(assert (= (and b!7853188 ((_ is ElementMatch!21091) (regTwo!42695 (regTwo!42694 r1!6227)))) b!7853408))

(assert (= (and b!7853188 ((_ is Concat!29936) (regTwo!42695 (regTwo!42694 r1!6227)))) b!7853409))

(assert (= (and b!7853188 ((_ is Star!21091) (regTwo!42695 (regTwo!42694 r1!6227)))) b!7853410))

(assert (= (and b!7853188 ((_ is Union!21091) (regTwo!42695 (regTwo!42694 r1!6227)))) b!7853411))

(declare-fun b!7853414 () Bool)

(declare-fun e!4642059 () Bool)

(declare-fun tp!2326007 () Bool)

(assert (=> b!7853414 (= e!4642059 tp!2326007)))

(assert (=> b!7853187 (= tp!2325920 e!4642059)))

(declare-fun b!7853412 () Bool)

(assert (=> b!7853412 (= e!4642059 tp_is_empty!52581)))

(declare-fun b!7853413 () Bool)

(declare-fun tp!2326010 () Bool)

(declare-fun tp!2326009 () Bool)

(assert (=> b!7853413 (= e!4642059 (and tp!2326010 tp!2326009))))

(declare-fun b!7853415 () Bool)

(declare-fun tp!2326011 () Bool)

(declare-fun tp!2326008 () Bool)

(assert (=> b!7853415 (= e!4642059 (and tp!2326011 tp!2326008))))

(assert (= (and b!7853187 ((_ is ElementMatch!21091) (reg!21420 (regTwo!42694 r1!6227)))) b!7853412))

(assert (= (and b!7853187 ((_ is Concat!29936) (reg!21420 (regTwo!42694 r1!6227)))) b!7853413))

(assert (= (and b!7853187 ((_ is Star!21091) (reg!21420 (regTwo!42694 r1!6227)))) b!7853414))

(assert (= (and b!7853187 ((_ is Union!21091) (reg!21420 (regTwo!42694 r1!6227)))) b!7853415))

(declare-fun b!7853418 () Bool)

(declare-fun e!4642060 () Bool)

(declare-fun tp!2326012 () Bool)

(assert (=> b!7853418 (= e!4642060 tp!2326012)))

(assert (=> b!7853186 (= tp!2325927 e!4642060)))

(declare-fun b!7853416 () Bool)

(assert (=> b!7853416 (= e!4642060 tp_is_empty!52581)))

(declare-fun b!7853417 () Bool)

(declare-fun tp!2326015 () Bool)

(declare-fun tp!2326014 () Bool)

(assert (=> b!7853417 (= e!4642060 (and tp!2326015 tp!2326014))))

(declare-fun b!7853419 () Bool)

(declare-fun tp!2326016 () Bool)

(declare-fun tp!2326013 () Bool)

(assert (=> b!7853419 (= e!4642060 (and tp!2326016 tp!2326013))))

(assert (= (and b!7853186 ((_ is ElementMatch!21091) (regOne!42694 (regTwo!42694 r1!6227)))) b!7853416))

(assert (= (and b!7853186 ((_ is Concat!29936) (regOne!42694 (regTwo!42694 r1!6227)))) b!7853417))

(assert (= (and b!7853186 ((_ is Star!21091) (regOne!42694 (regTwo!42694 r1!6227)))) b!7853418))

(assert (= (and b!7853186 ((_ is Union!21091) (regOne!42694 (regTwo!42694 r1!6227)))) b!7853419))

(declare-fun b!7853422 () Bool)

(declare-fun e!4642061 () Bool)

(declare-fun tp!2326017 () Bool)

(assert (=> b!7853422 (= e!4642061 tp!2326017)))

(assert (=> b!7853186 (= tp!2325926 e!4642061)))

(declare-fun b!7853420 () Bool)

(assert (=> b!7853420 (= e!4642061 tp_is_empty!52581)))

(declare-fun b!7853421 () Bool)

(declare-fun tp!2326020 () Bool)

(declare-fun tp!2326019 () Bool)

(assert (=> b!7853421 (= e!4642061 (and tp!2326020 tp!2326019))))

(declare-fun b!7853423 () Bool)

(declare-fun tp!2326021 () Bool)

(declare-fun tp!2326018 () Bool)

(assert (=> b!7853423 (= e!4642061 (and tp!2326021 tp!2326018))))

(assert (= (and b!7853186 ((_ is ElementMatch!21091) (regTwo!42694 (regTwo!42694 r1!6227)))) b!7853420))

(assert (= (and b!7853186 ((_ is Concat!29936) (regTwo!42694 (regTwo!42694 r1!6227)))) b!7853421))

(assert (= (and b!7853186 ((_ is Star!21091) (regTwo!42694 (regTwo!42694 r1!6227)))) b!7853422))

(assert (= (and b!7853186 ((_ is Union!21091) (regTwo!42694 (regTwo!42694 r1!6227)))) b!7853423))

(declare-fun b!7853424 () Bool)

(declare-fun e!4642062 () Bool)

(declare-fun tp!2326022 () Bool)

(assert (=> b!7853424 (= e!4642062 (and tp_is_empty!52581 tp!2326022))))

(assert (=> b!7853236 (= tp!2325981 e!4642062)))

(assert (= (and b!7853236 ((_ is Cons!73826) (t!388685 (t!388685 s1!4084)))) b!7853424))

(declare-fun b!7853427 () Bool)

(declare-fun e!4642063 () Bool)

(declare-fun tp!2326023 () Bool)

(assert (=> b!7853427 (= e!4642063 tp!2326023)))

(assert (=> b!7853244 (= tp!2325991 e!4642063)))

(declare-fun b!7853425 () Bool)

(assert (=> b!7853425 (= e!4642063 tp_is_empty!52581)))

(declare-fun b!7853426 () Bool)

(declare-fun tp!2326026 () Bool)

(declare-fun tp!2326025 () Bool)

(assert (=> b!7853426 (= e!4642063 (and tp!2326026 tp!2326025))))

(declare-fun b!7853428 () Bool)

(declare-fun tp!2326027 () Bool)

(declare-fun tp!2326024 () Bool)

(assert (=> b!7853428 (= e!4642063 (and tp!2326027 tp!2326024))))

(assert (= (and b!7853244 ((_ is ElementMatch!21091) (regOne!42695 (regOne!42695 r1!6227)))) b!7853425))

(assert (= (and b!7853244 ((_ is Concat!29936) (regOne!42695 (regOne!42695 r1!6227)))) b!7853426))

(assert (= (and b!7853244 ((_ is Star!21091) (regOne!42695 (regOne!42695 r1!6227)))) b!7853427))

(assert (= (and b!7853244 ((_ is Union!21091) (regOne!42695 (regOne!42695 r1!6227)))) b!7853428))

(declare-fun b!7853431 () Bool)

(declare-fun e!4642064 () Bool)

(declare-fun tp!2326028 () Bool)

(assert (=> b!7853431 (= e!4642064 tp!2326028)))

(assert (=> b!7853244 (= tp!2325988 e!4642064)))

(declare-fun b!7853429 () Bool)

(assert (=> b!7853429 (= e!4642064 tp_is_empty!52581)))

(declare-fun b!7853430 () Bool)

(declare-fun tp!2326031 () Bool)

(declare-fun tp!2326030 () Bool)

(assert (=> b!7853430 (= e!4642064 (and tp!2326031 tp!2326030))))

(declare-fun b!7853432 () Bool)

(declare-fun tp!2326032 () Bool)

(declare-fun tp!2326029 () Bool)

(assert (=> b!7853432 (= e!4642064 (and tp!2326032 tp!2326029))))

(assert (= (and b!7853244 ((_ is ElementMatch!21091) (regTwo!42695 (regOne!42695 r1!6227)))) b!7853429))

(assert (= (and b!7853244 ((_ is Concat!29936) (regTwo!42695 (regOne!42695 r1!6227)))) b!7853430))

(assert (= (and b!7853244 ((_ is Star!21091) (regTwo!42695 (regOne!42695 r1!6227)))) b!7853431))

(assert (= (and b!7853244 ((_ is Union!21091) (regTwo!42695 (regOne!42695 r1!6227)))) b!7853432))

(declare-fun b!7853435 () Bool)

(declare-fun e!4642065 () Bool)

(declare-fun tp!2326033 () Bool)

(assert (=> b!7853435 (= e!4642065 tp!2326033)))

(assert (=> b!7853227 (= tp!2325970 e!4642065)))

(declare-fun b!7853433 () Bool)

(assert (=> b!7853433 (= e!4642065 tp_is_empty!52581)))

(declare-fun b!7853434 () Bool)

(declare-fun tp!2326036 () Bool)

(declare-fun tp!2326035 () Bool)

(assert (=> b!7853434 (= e!4642065 (and tp!2326036 tp!2326035))))

(declare-fun b!7853436 () Bool)

(declare-fun tp!2326037 () Bool)

(declare-fun tp!2326034 () Bool)

(assert (=> b!7853436 (= e!4642065 (and tp!2326037 tp!2326034))))

(assert (= (and b!7853227 ((_ is ElementMatch!21091) (regOne!42695 (regTwo!42695 r2!6165)))) b!7853433))

(assert (= (and b!7853227 ((_ is Concat!29936) (regOne!42695 (regTwo!42695 r2!6165)))) b!7853434))

(assert (= (and b!7853227 ((_ is Star!21091) (regOne!42695 (regTwo!42695 r2!6165)))) b!7853435))

(assert (= (and b!7853227 ((_ is Union!21091) (regOne!42695 (regTwo!42695 r2!6165)))) b!7853436))

(declare-fun b!7853439 () Bool)

(declare-fun e!4642066 () Bool)

(declare-fun tp!2326038 () Bool)

(assert (=> b!7853439 (= e!4642066 tp!2326038)))

(assert (=> b!7853227 (= tp!2325967 e!4642066)))

(declare-fun b!7853437 () Bool)

(assert (=> b!7853437 (= e!4642066 tp_is_empty!52581)))

(declare-fun b!7853438 () Bool)

(declare-fun tp!2326041 () Bool)

(declare-fun tp!2326040 () Bool)

(assert (=> b!7853438 (= e!4642066 (and tp!2326041 tp!2326040))))

(declare-fun b!7853440 () Bool)

(declare-fun tp!2326042 () Bool)

(declare-fun tp!2326039 () Bool)

(assert (=> b!7853440 (= e!4642066 (and tp!2326042 tp!2326039))))

(assert (= (and b!7853227 ((_ is ElementMatch!21091) (regTwo!42695 (regTwo!42695 r2!6165)))) b!7853437))

(assert (= (and b!7853227 ((_ is Concat!29936) (regTwo!42695 (regTwo!42695 r2!6165)))) b!7853438))

(assert (= (and b!7853227 ((_ is Star!21091) (regTwo!42695 (regTwo!42695 r2!6165)))) b!7853439))

(assert (= (and b!7853227 ((_ is Union!21091) (regTwo!42695 (regTwo!42695 r2!6165)))) b!7853440))

(declare-fun b!7853443 () Bool)

(declare-fun e!4642067 () Bool)

(declare-fun tp!2326043 () Bool)

(assert (=> b!7853443 (= e!4642067 tp!2326043)))

(assert (=> b!7853243 (= tp!2325987 e!4642067)))

(declare-fun b!7853441 () Bool)

(assert (=> b!7853441 (= e!4642067 tp_is_empty!52581)))

(declare-fun b!7853442 () Bool)

(declare-fun tp!2326046 () Bool)

(declare-fun tp!2326045 () Bool)

(assert (=> b!7853442 (= e!4642067 (and tp!2326046 tp!2326045))))

(declare-fun b!7853444 () Bool)

(declare-fun tp!2326047 () Bool)

(declare-fun tp!2326044 () Bool)

(assert (=> b!7853444 (= e!4642067 (and tp!2326047 tp!2326044))))

(assert (= (and b!7853243 ((_ is ElementMatch!21091) (reg!21420 (regOne!42695 r1!6227)))) b!7853441))

(assert (= (and b!7853243 ((_ is Concat!29936) (reg!21420 (regOne!42695 r1!6227)))) b!7853442))

(assert (= (and b!7853243 ((_ is Star!21091) (reg!21420 (regOne!42695 r1!6227)))) b!7853443))

(assert (= (and b!7853243 ((_ is Union!21091) (reg!21420 (regOne!42695 r1!6227)))) b!7853444))

(declare-fun b!7853447 () Bool)

(declare-fun e!4642068 () Bool)

(declare-fun tp!2326048 () Bool)

(assert (=> b!7853447 (= e!4642068 tp!2326048)))

(assert (=> b!7853226 (= tp!2325961 e!4642068)))

(declare-fun b!7853445 () Bool)

(assert (=> b!7853445 (= e!4642068 tp_is_empty!52581)))

(declare-fun b!7853446 () Bool)

(declare-fun tp!2326051 () Bool)

(declare-fun tp!2326050 () Bool)

(assert (=> b!7853446 (= e!4642068 (and tp!2326051 tp!2326050))))

(declare-fun b!7853448 () Bool)

(declare-fun tp!2326052 () Bool)

(declare-fun tp!2326049 () Bool)

(assert (=> b!7853448 (= e!4642068 (and tp!2326052 tp!2326049))))

(assert (= (and b!7853226 ((_ is ElementMatch!21091) (reg!21420 (regTwo!42695 r2!6165)))) b!7853445))

(assert (= (and b!7853226 ((_ is Concat!29936) (reg!21420 (regTwo!42695 r2!6165)))) b!7853446))

(assert (= (and b!7853226 ((_ is Star!21091) (reg!21420 (regTwo!42695 r2!6165)))) b!7853447))

(assert (= (and b!7853226 ((_ is Union!21091) (reg!21420 (regTwo!42695 r2!6165)))) b!7853448))

(declare-fun b!7853451 () Bool)

(declare-fun e!4642069 () Bool)

(declare-fun tp!2326053 () Bool)

(assert (=> b!7853451 (= e!4642069 tp!2326053)))

(assert (=> b!7853235 (= tp!2325980 e!4642069)))

(declare-fun b!7853449 () Bool)

(assert (=> b!7853449 (= e!4642069 tp_is_empty!52581)))

(declare-fun b!7853450 () Bool)

(declare-fun tp!2326056 () Bool)

(declare-fun tp!2326055 () Bool)

(assert (=> b!7853450 (= e!4642069 (and tp!2326056 tp!2326055))))

(declare-fun b!7853452 () Bool)

(declare-fun tp!2326057 () Bool)

(declare-fun tp!2326054 () Bool)

(assert (=> b!7853452 (= e!4642069 (and tp!2326057 tp!2326054))))

(assert (= (and b!7853235 ((_ is ElementMatch!21091) (regOne!42695 (regTwo!42694 r2!6165)))) b!7853449))

(assert (= (and b!7853235 ((_ is Concat!29936) (regOne!42695 (regTwo!42694 r2!6165)))) b!7853450))

(assert (= (and b!7853235 ((_ is Star!21091) (regOne!42695 (regTwo!42694 r2!6165)))) b!7853451))

(assert (= (and b!7853235 ((_ is Union!21091) (regOne!42695 (regTwo!42694 r2!6165)))) b!7853452))

(declare-fun b!7853455 () Bool)

(declare-fun e!4642070 () Bool)

(declare-fun tp!2326058 () Bool)

(assert (=> b!7853455 (= e!4642070 tp!2326058)))

(assert (=> b!7853235 (= tp!2325977 e!4642070)))

(declare-fun b!7853453 () Bool)

(assert (=> b!7853453 (= e!4642070 tp_is_empty!52581)))

(declare-fun b!7853454 () Bool)

(declare-fun tp!2326061 () Bool)

(declare-fun tp!2326060 () Bool)

(assert (=> b!7853454 (= e!4642070 (and tp!2326061 tp!2326060))))

(declare-fun b!7853456 () Bool)

(declare-fun tp!2326062 () Bool)

(declare-fun tp!2326059 () Bool)

(assert (=> b!7853456 (= e!4642070 (and tp!2326062 tp!2326059))))

(assert (= (and b!7853235 ((_ is ElementMatch!21091) (regTwo!42695 (regTwo!42694 r2!6165)))) b!7853453))

(assert (= (and b!7853235 ((_ is Concat!29936) (regTwo!42695 (regTwo!42694 r2!6165)))) b!7853454))

(assert (= (and b!7853235 ((_ is Star!21091) (regTwo!42695 (regTwo!42694 r2!6165)))) b!7853455))

(assert (= (and b!7853235 ((_ is Union!21091) (regTwo!42695 (regTwo!42694 r2!6165)))) b!7853456))

(declare-fun b!7853459 () Bool)

(declare-fun e!4642071 () Bool)

(declare-fun tp!2326063 () Bool)

(assert (=> b!7853459 (= e!4642071 tp!2326063)))

(assert (=> b!7853242 (= tp!2325990 e!4642071)))

(declare-fun b!7853457 () Bool)

(assert (=> b!7853457 (= e!4642071 tp_is_empty!52581)))

(declare-fun b!7853458 () Bool)

(declare-fun tp!2326066 () Bool)

(declare-fun tp!2326065 () Bool)

(assert (=> b!7853458 (= e!4642071 (and tp!2326066 tp!2326065))))

(declare-fun b!7853460 () Bool)

(declare-fun tp!2326067 () Bool)

(declare-fun tp!2326064 () Bool)

(assert (=> b!7853460 (= e!4642071 (and tp!2326067 tp!2326064))))

(assert (= (and b!7853242 ((_ is ElementMatch!21091) (regOne!42694 (regOne!42695 r1!6227)))) b!7853457))

(assert (= (and b!7853242 ((_ is Concat!29936) (regOne!42694 (regOne!42695 r1!6227)))) b!7853458))

(assert (= (and b!7853242 ((_ is Star!21091) (regOne!42694 (regOne!42695 r1!6227)))) b!7853459))

(assert (= (and b!7853242 ((_ is Union!21091) (regOne!42694 (regOne!42695 r1!6227)))) b!7853460))

(declare-fun b!7853463 () Bool)

(declare-fun e!4642072 () Bool)

(declare-fun tp!2326068 () Bool)

(assert (=> b!7853463 (= e!4642072 tp!2326068)))

(assert (=> b!7853242 (= tp!2325989 e!4642072)))

(declare-fun b!7853461 () Bool)

(assert (=> b!7853461 (= e!4642072 tp_is_empty!52581)))

(declare-fun b!7853462 () Bool)

(declare-fun tp!2326071 () Bool)

(declare-fun tp!2326070 () Bool)

(assert (=> b!7853462 (= e!4642072 (and tp!2326071 tp!2326070))))

(declare-fun b!7853464 () Bool)

(declare-fun tp!2326072 () Bool)

(declare-fun tp!2326069 () Bool)

(assert (=> b!7853464 (= e!4642072 (and tp!2326072 tp!2326069))))

(assert (= (and b!7853242 ((_ is ElementMatch!21091) (regTwo!42694 (regOne!42695 r1!6227)))) b!7853461))

(assert (= (and b!7853242 ((_ is Concat!29936) (regTwo!42694 (regOne!42695 r1!6227)))) b!7853462))

(assert (= (and b!7853242 ((_ is Star!21091) (regTwo!42694 (regOne!42695 r1!6227)))) b!7853463))

(assert (= (and b!7853242 ((_ is Union!21091) (regTwo!42694 (regOne!42695 r1!6227)))) b!7853464))

(declare-fun b!7853467 () Bool)

(declare-fun e!4642073 () Bool)

(declare-fun tp!2326073 () Bool)

(assert (=> b!7853467 (= e!4642073 tp!2326073)))

(assert (=> b!7853225 (= tp!2325969 e!4642073)))

(declare-fun b!7853465 () Bool)

(assert (=> b!7853465 (= e!4642073 tp_is_empty!52581)))

(declare-fun b!7853466 () Bool)

(declare-fun tp!2326076 () Bool)

(declare-fun tp!2326075 () Bool)

(assert (=> b!7853466 (= e!4642073 (and tp!2326076 tp!2326075))))

(declare-fun b!7853468 () Bool)

(declare-fun tp!2326077 () Bool)

(declare-fun tp!2326074 () Bool)

(assert (=> b!7853468 (= e!4642073 (and tp!2326077 tp!2326074))))

(assert (= (and b!7853225 ((_ is ElementMatch!21091) (regOne!42694 (regTwo!42695 r2!6165)))) b!7853465))

(assert (= (and b!7853225 ((_ is Concat!29936) (regOne!42694 (regTwo!42695 r2!6165)))) b!7853466))

(assert (= (and b!7853225 ((_ is Star!21091) (regOne!42694 (regTwo!42695 r2!6165)))) b!7853467))

(assert (= (and b!7853225 ((_ is Union!21091) (regOne!42694 (regTwo!42695 r2!6165)))) b!7853468))

(declare-fun b!7853471 () Bool)

(declare-fun e!4642074 () Bool)

(declare-fun tp!2326078 () Bool)

(assert (=> b!7853471 (= e!4642074 tp!2326078)))

(assert (=> b!7853225 (= tp!2325968 e!4642074)))

(declare-fun b!7853469 () Bool)

(assert (=> b!7853469 (= e!4642074 tp_is_empty!52581)))

(declare-fun b!7853470 () Bool)

(declare-fun tp!2326081 () Bool)

(declare-fun tp!2326080 () Bool)

(assert (=> b!7853470 (= e!4642074 (and tp!2326081 tp!2326080))))

(declare-fun b!7853472 () Bool)

(declare-fun tp!2326082 () Bool)

(declare-fun tp!2326079 () Bool)

(assert (=> b!7853472 (= e!4642074 (and tp!2326082 tp!2326079))))

(assert (= (and b!7853225 ((_ is ElementMatch!21091) (regTwo!42694 (regTwo!42695 r2!6165)))) b!7853469))

(assert (= (and b!7853225 ((_ is Concat!29936) (regTwo!42694 (regTwo!42695 r2!6165)))) b!7853470))

(assert (= (and b!7853225 ((_ is Star!21091) (regTwo!42694 (regTwo!42695 r2!6165)))) b!7853471))

(assert (= (and b!7853225 ((_ is Union!21091) (regTwo!42694 (regTwo!42695 r2!6165)))) b!7853472))

(declare-fun b!7853475 () Bool)

(declare-fun e!4642075 () Bool)

(declare-fun tp!2326083 () Bool)

(assert (=> b!7853475 (= e!4642075 tp!2326083)))

(assert (=> b!7853234 (= tp!2325976 e!4642075)))

(declare-fun b!7853473 () Bool)

(assert (=> b!7853473 (= e!4642075 tp_is_empty!52581)))

(declare-fun b!7853474 () Bool)

(declare-fun tp!2326086 () Bool)

(declare-fun tp!2326085 () Bool)

(assert (=> b!7853474 (= e!4642075 (and tp!2326086 tp!2326085))))

(declare-fun b!7853476 () Bool)

(declare-fun tp!2326087 () Bool)

(declare-fun tp!2326084 () Bool)

(assert (=> b!7853476 (= e!4642075 (and tp!2326087 tp!2326084))))

(assert (= (and b!7853234 ((_ is ElementMatch!21091) (reg!21420 (regTwo!42694 r2!6165)))) b!7853473))

(assert (= (and b!7853234 ((_ is Concat!29936) (reg!21420 (regTwo!42694 r2!6165)))) b!7853474))

(assert (= (and b!7853234 ((_ is Star!21091) (reg!21420 (regTwo!42694 r2!6165)))) b!7853475))

(assert (= (and b!7853234 ((_ is Union!21091) (reg!21420 (regTwo!42694 r2!6165)))) b!7853476))

(declare-fun b!7853479 () Bool)

(declare-fun e!4642076 () Bool)

(declare-fun tp!2326088 () Bool)

(assert (=> b!7853479 (= e!4642076 tp!2326088)))

(assert (=> b!7853209 (= tp!2325948 e!4642076)))

(declare-fun b!7853477 () Bool)

(assert (=> b!7853477 (= e!4642076 tp_is_empty!52581)))

(declare-fun b!7853478 () Bool)

(declare-fun tp!2326091 () Bool)

(declare-fun tp!2326090 () Bool)

(assert (=> b!7853478 (= e!4642076 (and tp!2326091 tp!2326090))))

(declare-fun b!7853480 () Bool)

(declare-fun tp!2326092 () Bool)

(declare-fun tp!2326089 () Bool)

(assert (=> b!7853480 (= e!4642076 (and tp!2326092 tp!2326089))))

(assert (= (and b!7853209 ((_ is ElementMatch!21091) (regOne!42695 (reg!21420 r1!6227)))) b!7853477))

(assert (= (and b!7853209 ((_ is Concat!29936) (regOne!42695 (reg!21420 r1!6227)))) b!7853478))

(assert (= (and b!7853209 ((_ is Star!21091) (regOne!42695 (reg!21420 r1!6227)))) b!7853479))

(assert (= (and b!7853209 ((_ is Union!21091) (regOne!42695 (reg!21420 r1!6227)))) b!7853480))

(declare-fun b!7853483 () Bool)

(declare-fun e!4642077 () Bool)

(declare-fun tp!2326093 () Bool)

(assert (=> b!7853483 (= e!4642077 tp!2326093)))

(assert (=> b!7853209 (= tp!2325945 e!4642077)))

(declare-fun b!7853481 () Bool)

(assert (=> b!7853481 (= e!4642077 tp_is_empty!52581)))

(declare-fun b!7853482 () Bool)

(declare-fun tp!2326096 () Bool)

(declare-fun tp!2326095 () Bool)

(assert (=> b!7853482 (= e!4642077 (and tp!2326096 tp!2326095))))

(declare-fun b!7853484 () Bool)

(declare-fun tp!2326097 () Bool)

(declare-fun tp!2326094 () Bool)

(assert (=> b!7853484 (= e!4642077 (and tp!2326097 tp!2326094))))

(assert (= (and b!7853209 ((_ is ElementMatch!21091) (regTwo!42695 (reg!21420 r1!6227)))) b!7853481))

(assert (= (and b!7853209 ((_ is Concat!29936) (regTwo!42695 (reg!21420 r1!6227)))) b!7853482))

(assert (= (and b!7853209 ((_ is Star!21091) (regTwo!42695 (reg!21420 r1!6227)))) b!7853483))

(assert (= (and b!7853209 ((_ is Union!21091) (regTwo!42695 (reg!21420 r1!6227)))) b!7853484))

(declare-fun b!7853487 () Bool)

(declare-fun e!4642078 () Bool)

(declare-fun tp!2326098 () Bool)

(assert (=> b!7853487 (= e!4642078 tp!2326098)))

(assert (=> b!7853233 (= tp!2325979 e!4642078)))

(declare-fun b!7853485 () Bool)

(assert (=> b!7853485 (= e!4642078 tp_is_empty!52581)))

(declare-fun b!7853486 () Bool)

(declare-fun tp!2326101 () Bool)

(declare-fun tp!2326100 () Bool)

(assert (=> b!7853486 (= e!4642078 (and tp!2326101 tp!2326100))))

(declare-fun b!7853488 () Bool)

(declare-fun tp!2326102 () Bool)

(declare-fun tp!2326099 () Bool)

(assert (=> b!7853488 (= e!4642078 (and tp!2326102 tp!2326099))))

(assert (= (and b!7853233 ((_ is ElementMatch!21091) (regOne!42694 (regTwo!42694 r2!6165)))) b!7853485))

(assert (= (and b!7853233 ((_ is Concat!29936) (regOne!42694 (regTwo!42694 r2!6165)))) b!7853486))

(assert (= (and b!7853233 ((_ is Star!21091) (regOne!42694 (regTwo!42694 r2!6165)))) b!7853487))

(assert (= (and b!7853233 ((_ is Union!21091) (regOne!42694 (regTwo!42694 r2!6165)))) b!7853488))

(declare-fun b!7853491 () Bool)

(declare-fun e!4642079 () Bool)

(declare-fun tp!2326103 () Bool)

(assert (=> b!7853491 (= e!4642079 tp!2326103)))

(assert (=> b!7853233 (= tp!2325978 e!4642079)))

(declare-fun b!7853489 () Bool)

(assert (=> b!7853489 (= e!4642079 tp_is_empty!52581)))

(declare-fun b!7853490 () Bool)

(declare-fun tp!2326106 () Bool)

(declare-fun tp!2326105 () Bool)

(assert (=> b!7853490 (= e!4642079 (and tp!2326106 tp!2326105))))

(declare-fun b!7853492 () Bool)

(declare-fun tp!2326107 () Bool)

(declare-fun tp!2326104 () Bool)

(assert (=> b!7853492 (= e!4642079 (and tp!2326107 tp!2326104))))

(assert (= (and b!7853233 ((_ is ElementMatch!21091) (regTwo!42694 (regTwo!42694 r2!6165)))) b!7853489))

(assert (= (and b!7853233 ((_ is Concat!29936) (regTwo!42694 (regTwo!42694 r2!6165)))) b!7853490))

(assert (= (and b!7853233 ((_ is Star!21091) (regTwo!42694 (regTwo!42694 r2!6165)))) b!7853491))

(assert (= (and b!7853233 ((_ is Union!21091) (regTwo!42694 (regTwo!42694 r2!6165)))) b!7853492))

(declare-fun b!7853495 () Bool)

(declare-fun e!4642080 () Bool)

(declare-fun tp!2326108 () Bool)

(assert (=> b!7853495 (= e!4642080 tp!2326108)))

(assert (=> b!7853208 (= tp!2325944 e!4642080)))

(declare-fun b!7853493 () Bool)

(assert (=> b!7853493 (= e!4642080 tp_is_empty!52581)))

(declare-fun b!7853494 () Bool)

(declare-fun tp!2326111 () Bool)

(declare-fun tp!2326110 () Bool)

(assert (=> b!7853494 (= e!4642080 (and tp!2326111 tp!2326110))))

(declare-fun b!7853496 () Bool)

(declare-fun tp!2326112 () Bool)

(declare-fun tp!2326109 () Bool)

(assert (=> b!7853496 (= e!4642080 (and tp!2326112 tp!2326109))))

(assert (= (and b!7853208 ((_ is ElementMatch!21091) (reg!21420 (reg!21420 r1!6227)))) b!7853493))

(assert (= (and b!7853208 ((_ is Concat!29936) (reg!21420 (reg!21420 r1!6227)))) b!7853494))

(assert (= (and b!7853208 ((_ is Star!21091) (reg!21420 (reg!21420 r1!6227)))) b!7853495))

(assert (= (and b!7853208 ((_ is Union!21091) (reg!21420 (reg!21420 r1!6227)))) b!7853496))

(declare-fun b!7853499 () Bool)

(declare-fun e!4642081 () Bool)

(declare-fun tp!2326113 () Bool)

(assert (=> b!7853499 (= e!4642081 tp!2326113)))

(assert (=> b!7853176 (= tp!2325913 e!4642081)))

(declare-fun b!7853497 () Bool)

(assert (=> b!7853497 (= e!4642081 tp_is_empty!52581)))

(declare-fun b!7853498 () Bool)

(declare-fun tp!2326116 () Bool)

(declare-fun tp!2326115 () Bool)

(assert (=> b!7853498 (= e!4642081 (and tp!2326116 tp!2326115))))

(declare-fun b!7853500 () Bool)

(declare-fun tp!2326117 () Bool)

(declare-fun tp!2326114 () Bool)

(assert (=> b!7853500 (= e!4642081 (and tp!2326117 tp!2326114))))

(assert (= (and b!7853176 ((_ is ElementMatch!21091) (regOne!42695 (regOne!42694 r1!6227)))) b!7853497))

(assert (= (and b!7853176 ((_ is Concat!29936) (regOne!42695 (regOne!42694 r1!6227)))) b!7853498))

(assert (= (and b!7853176 ((_ is Star!21091) (regOne!42695 (regOne!42694 r1!6227)))) b!7853499))

(assert (= (and b!7853176 ((_ is Union!21091) (regOne!42695 (regOne!42694 r1!6227)))) b!7853500))

(declare-fun b!7853503 () Bool)

(declare-fun e!4642082 () Bool)

(declare-fun tp!2326118 () Bool)

(assert (=> b!7853503 (= e!4642082 tp!2326118)))

(assert (=> b!7853176 (= tp!2325910 e!4642082)))

(declare-fun b!7853501 () Bool)

(assert (=> b!7853501 (= e!4642082 tp_is_empty!52581)))

(declare-fun b!7853502 () Bool)

(declare-fun tp!2326121 () Bool)

(declare-fun tp!2326120 () Bool)

(assert (=> b!7853502 (= e!4642082 (and tp!2326121 tp!2326120))))

(declare-fun b!7853504 () Bool)

(declare-fun tp!2326122 () Bool)

(declare-fun tp!2326119 () Bool)

(assert (=> b!7853504 (= e!4642082 (and tp!2326122 tp!2326119))))

(assert (= (and b!7853176 ((_ is ElementMatch!21091) (regTwo!42695 (regOne!42694 r1!6227)))) b!7853501))

(assert (= (and b!7853176 ((_ is Concat!29936) (regTwo!42695 (regOne!42694 r1!6227)))) b!7853502))

(assert (= (and b!7853176 ((_ is Star!21091) (regTwo!42695 (regOne!42694 r1!6227)))) b!7853503))

(assert (= (and b!7853176 ((_ is Union!21091) (regTwo!42695 (regOne!42694 r1!6227)))) b!7853504))

(declare-fun b!7853507 () Bool)

(declare-fun e!4642083 () Bool)

(declare-fun tp!2326123 () Bool)

(assert (=> b!7853507 (= e!4642083 tp!2326123)))

(assert (=> b!7853207 (= tp!2325947 e!4642083)))

(declare-fun b!7853505 () Bool)

(assert (=> b!7853505 (= e!4642083 tp_is_empty!52581)))

(declare-fun b!7853506 () Bool)

(declare-fun tp!2326126 () Bool)

(declare-fun tp!2326125 () Bool)

(assert (=> b!7853506 (= e!4642083 (and tp!2326126 tp!2326125))))

(declare-fun b!7853508 () Bool)

(declare-fun tp!2326127 () Bool)

(declare-fun tp!2326124 () Bool)

(assert (=> b!7853508 (= e!4642083 (and tp!2326127 tp!2326124))))

(assert (= (and b!7853207 ((_ is ElementMatch!21091) (regOne!42694 (reg!21420 r1!6227)))) b!7853505))

(assert (= (and b!7853207 ((_ is Concat!29936) (regOne!42694 (reg!21420 r1!6227)))) b!7853506))

(assert (= (and b!7853207 ((_ is Star!21091) (regOne!42694 (reg!21420 r1!6227)))) b!7853507))

(assert (= (and b!7853207 ((_ is Union!21091) (regOne!42694 (reg!21420 r1!6227)))) b!7853508))

(declare-fun b!7853511 () Bool)

(declare-fun e!4642084 () Bool)

(declare-fun tp!2326128 () Bool)

(assert (=> b!7853511 (= e!4642084 tp!2326128)))

(assert (=> b!7853207 (= tp!2325946 e!4642084)))

(declare-fun b!7853509 () Bool)

(assert (=> b!7853509 (= e!4642084 tp_is_empty!52581)))

(declare-fun b!7853510 () Bool)

(declare-fun tp!2326131 () Bool)

(declare-fun tp!2326130 () Bool)

(assert (=> b!7853510 (= e!4642084 (and tp!2326131 tp!2326130))))

(declare-fun b!7853512 () Bool)

(declare-fun tp!2326132 () Bool)

(declare-fun tp!2326129 () Bool)

(assert (=> b!7853512 (= e!4642084 (and tp!2326132 tp!2326129))))

(assert (= (and b!7853207 ((_ is ElementMatch!21091) (regTwo!42694 (reg!21420 r1!6227)))) b!7853509))

(assert (= (and b!7853207 ((_ is Concat!29936) (regTwo!42694 (reg!21420 r1!6227)))) b!7853510))

(assert (= (and b!7853207 ((_ is Star!21091) (regTwo!42694 (reg!21420 r1!6227)))) b!7853511))

(assert (= (and b!7853207 ((_ is Union!21091) (regTwo!42694 (reg!21420 r1!6227)))) b!7853512))

(declare-fun b!7853515 () Bool)

(declare-fun e!4642085 () Bool)

(declare-fun tp!2326133 () Bool)

(assert (=> b!7853515 (= e!4642085 tp!2326133)))

(assert (=> b!7853175 (= tp!2325909 e!4642085)))

(declare-fun b!7853513 () Bool)

(assert (=> b!7853513 (= e!4642085 tp_is_empty!52581)))

(declare-fun b!7853514 () Bool)

(declare-fun tp!2326136 () Bool)

(declare-fun tp!2326135 () Bool)

(assert (=> b!7853514 (= e!4642085 (and tp!2326136 tp!2326135))))

(declare-fun b!7853516 () Bool)

(declare-fun tp!2326137 () Bool)

(declare-fun tp!2326134 () Bool)

(assert (=> b!7853516 (= e!4642085 (and tp!2326137 tp!2326134))))

(assert (= (and b!7853175 ((_ is ElementMatch!21091) (reg!21420 (regOne!42694 r1!6227)))) b!7853513))

(assert (= (and b!7853175 ((_ is Concat!29936) (reg!21420 (regOne!42694 r1!6227)))) b!7853514))

(assert (= (and b!7853175 ((_ is Star!21091) (reg!21420 (regOne!42694 r1!6227)))) b!7853515))

(assert (= (and b!7853175 ((_ is Union!21091) (reg!21420 (regOne!42694 r1!6227)))) b!7853516))

(declare-fun b!7853519 () Bool)

(declare-fun e!4642086 () Bool)

(declare-fun tp!2326138 () Bool)

(assert (=> b!7853519 (= e!4642086 tp!2326138)))

(assert (=> b!7853174 (= tp!2325912 e!4642086)))

(declare-fun b!7853517 () Bool)

(assert (=> b!7853517 (= e!4642086 tp_is_empty!52581)))

(declare-fun b!7853518 () Bool)

(declare-fun tp!2326141 () Bool)

(declare-fun tp!2326140 () Bool)

(assert (=> b!7853518 (= e!4642086 (and tp!2326141 tp!2326140))))

(declare-fun b!7853520 () Bool)

(declare-fun tp!2326142 () Bool)

(declare-fun tp!2326139 () Bool)

(assert (=> b!7853520 (= e!4642086 (and tp!2326142 tp!2326139))))

(assert (= (and b!7853174 ((_ is ElementMatch!21091) (regOne!42694 (regOne!42694 r1!6227)))) b!7853517))

(assert (= (and b!7853174 ((_ is Concat!29936) (regOne!42694 (regOne!42694 r1!6227)))) b!7853518))

(assert (= (and b!7853174 ((_ is Star!21091) (regOne!42694 (regOne!42694 r1!6227)))) b!7853519))

(assert (= (and b!7853174 ((_ is Union!21091) (regOne!42694 (regOne!42694 r1!6227)))) b!7853520))

(declare-fun b!7853523 () Bool)

(declare-fun e!4642087 () Bool)

(declare-fun tp!2326143 () Bool)

(assert (=> b!7853523 (= e!4642087 tp!2326143)))

(assert (=> b!7853174 (= tp!2325911 e!4642087)))

(declare-fun b!7853521 () Bool)

(assert (=> b!7853521 (= e!4642087 tp_is_empty!52581)))

(declare-fun b!7853522 () Bool)

(declare-fun tp!2326146 () Bool)

(declare-fun tp!2326145 () Bool)

(assert (=> b!7853522 (= e!4642087 (and tp!2326146 tp!2326145))))

(declare-fun b!7853524 () Bool)

(declare-fun tp!2326147 () Bool)

(declare-fun tp!2326144 () Bool)

(assert (=> b!7853524 (= e!4642087 (and tp!2326147 tp!2326144))))

(assert (= (and b!7853174 ((_ is ElementMatch!21091) (regTwo!42694 (regOne!42694 r1!6227)))) b!7853521))

(assert (= (and b!7853174 ((_ is Concat!29936) (regTwo!42694 (regOne!42694 r1!6227)))) b!7853522))

(assert (= (and b!7853174 ((_ is Star!21091) (regTwo!42694 (regOne!42694 r1!6227)))) b!7853523))

(assert (= (and b!7853174 ((_ is Union!21091) (regTwo!42694 (regOne!42694 r1!6227)))) b!7853524))

(declare-fun b!7853527 () Bool)

(declare-fun e!4642088 () Bool)

(declare-fun tp!2326148 () Bool)

(assert (=> b!7853527 (= e!4642088 tp!2326148)))

(assert (=> b!7853215 (= tp!2325955 e!4642088)))

(declare-fun b!7853525 () Bool)

(assert (=> b!7853525 (= e!4642088 tp_is_empty!52581)))

(declare-fun b!7853526 () Bool)

(declare-fun tp!2326151 () Bool)

(declare-fun tp!2326150 () Bool)

(assert (=> b!7853526 (= e!4642088 (and tp!2326151 tp!2326150))))

(declare-fun b!7853528 () Bool)

(declare-fun tp!2326152 () Bool)

(declare-fun tp!2326149 () Bool)

(assert (=> b!7853528 (= e!4642088 (and tp!2326152 tp!2326149))))

(assert (= (and b!7853215 ((_ is ElementMatch!21091) (regOne!42695 (regOne!42695 r2!6165)))) b!7853525))

(assert (= (and b!7853215 ((_ is Concat!29936) (regOne!42695 (regOne!42695 r2!6165)))) b!7853526))

(assert (= (and b!7853215 ((_ is Star!21091) (regOne!42695 (regOne!42695 r2!6165)))) b!7853527))

(assert (= (and b!7853215 ((_ is Union!21091) (regOne!42695 (regOne!42695 r2!6165)))) b!7853528))

(declare-fun b!7853531 () Bool)

(declare-fun e!4642089 () Bool)

(declare-fun tp!2326153 () Bool)

(assert (=> b!7853531 (= e!4642089 tp!2326153)))

(assert (=> b!7853215 (= tp!2325952 e!4642089)))

(declare-fun b!7853529 () Bool)

(assert (=> b!7853529 (= e!4642089 tp_is_empty!52581)))

(declare-fun b!7853530 () Bool)

(declare-fun tp!2326156 () Bool)

(declare-fun tp!2326155 () Bool)

(assert (=> b!7853530 (= e!4642089 (and tp!2326156 tp!2326155))))

(declare-fun b!7853532 () Bool)

(declare-fun tp!2326157 () Bool)

(declare-fun tp!2326154 () Bool)

(assert (=> b!7853532 (= e!4642089 (and tp!2326157 tp!2326154))))

(assert (= (and b!7853215 ((_ is ElementMatch!21091) (regTwo!42695 (regOne!42695 r2!6165)))) b!7853529))

(assert (= (and b!7853215 ((_ is Concat!29936) (regTwo!42695 (regOne!42695 r2!6165)))) b!7853530))

(assert (= (and b!7853215 ((_ is Star!21091) (regTwo!42695 (regOne!42695 r2!6165)))) b!7853531))

(assert (= (and b!7853215 ((_ is Union!21091) (regTwo!42695 (regOne!42695 r2!6165)))) b!7853532))

(declare-fun b!7853535 () Bool)

(declare-fun e!4642090 () Bool)

(declare-fun tp!2326158 () Bool)

(assert (=> b!7853535 (= e!4642090 tp!2326158)))

(assert (=> b!7853214 (= tp!2325951 e!4642090)))

(declare-fun b!7853533 () Bool)

(assert (=> b!7853533 (= e!4642090 tp_is_empty!52581)))

(declare-fun b!7853534 () Bool)

(declare-fun tp!2326161 () Bool)

(declare-fun tp!2326160 () Bool)

(assert (=> b!7853534 (= e!4642090 (and tp!2326161 tp!2326160))))

(declare-fun b!7853536 () Bool)

(declare-fun tp!2326162 () Bool)

(declare-fun tp!2326159 () Bool)

(assert (=> b!7853536 (= e!4642090 (and tp!2326162 tp!2326159))))

(assert (= (and b!7853214 ((_ is ElementMatch!21091) (reg!21420 (regOne!42695 r2!6165)))) b!7853533))

(assert (= (and b!7853214 ((_ is Concat!29936) (reg!21420 (regOne!42695 r2!6165)))) b!7853534))

(assert (= (and b!7853214 ((_ is Star!21091) (reg!21420 (regOne!42695 r2!6165)))) b!7853535))

(assert (= (and b!7853214 ((_ is Union!21091) (reg!21420 (regOne!42695 r2!6165)))) b!7853536))

(declare-fun b!7853539 () Bool)

(declare-fun e!4642091 () Bool)

(declare-fun tp!2326163 () Bool)

(assert (=> b!7853539 (= e!4642091 tp!2326163)))

(assert (=> b!7853240 (= tp!2325986 e!4642091)))

(declare-fun b!7853537 () Bool)

(assert (=> b!7853537 (= e!4642091 tp_is_empty!52581)))

(declare-fun b!7853538 () Bool)

(declare-fun tp!2326166 () Bool)

(declare-fun tp!2326165 () Bool)

(assert (=> b!7853538 (= e!4642091 (and tp!2326166 tp!2326165))))

(declare-fun b!7853540 () Bool)

(declare-fun tp!2326167 () Bool)

(declare-fun tp!2326164 () Bool)

(assert (=> b!7853540 (= e!4642091 (and tp!2326167 tp!2326164))))

(assert (= (and b!7853240 ((_ is ElementMatch!21091) (regOne!42695 (reg!21420 r2!6165)))) b!7853537))

(assert (= (and b!7853240 ((_ is Concat!29936) (regOne!42695 (reg!21420 r2!6165)))) b!7853538))

(assert (= (and b!7853240 ((_ is Star!21091) (regOne!42695 (reg!21420 r2!6165)))) b!7853539))

(assert (= (and b!7853240 ((_ is Union!21091) (regOne!42695 (reg!21420 r2!6165)))) b!7853540))

(declare-fun b!7853543 () Bool)

(declare-fun e!4642092 () Bool)

(declare-fun tp!2326168 () Bool)

(assert (=> b!7853543 (= e!4642092 tp!2326168)))

(assert (=> b!7853240 (= tp!2325983 e!4642092)))

(declare-fun b!7853541 () Bool)

(assert (=> b!7853541 (= e!4642092 tp_is_empty!52581)))

(declare-fun b!7853542 () Bool)

(declare-fun tp!2326171 () Bool)

(declare-fun tp!2326170 () Bool)

(assert (=> b!7853542 (= e!4642092 (and tp!2326171 tp!2326170))))

(declare-fun b!7853544 () Bool)

(declare-fun tp!2326172 () Bool)

(declare-fun tp!2326169 () Bool)

(assert (=> b!7853544 (= e!4642092 (and tp!2326172 tp!2326169))))

(assert (= (and b!7853240 ((_ is ElementMatch!21091) (regTwo!42695 (reg!21420 r2!6165)))) b!7853541))

(assert (= (and b!7853240 ((_ is Concat!29936) (regTwo!42695 (reg!21420 r2!6165)))) b!7853542))

(assert (= (and b!7853240 ((_ is Star!21091) (regTwo!42695 (reg!21420 r2!6165)))) b!7853543))

(assert (= (and b!7853240 ((_ is Union!21091) (regTwo!42695 (reg!21420 r2!6165)))) b!7853544))

(declare-fun b!7853547 () Bool)

(declare-fun e!4642093 () Bool)

(declare-fun tp!2326173 () Bool)

(assert (=> b!7853547 (= e!4642093 tp!2326173)))

(assert (=> b!7853213 (= tp!2325954 e!4642093)))

(declare-fun b!7853545 () Bool)

(assert (=> b!7853545 (= e!4642093 tp_is_empty!52581)))

(declare-fun b!7853546 () Bool)

(declare-fun tp!2326176 () Bool)

(declare-fun tp!2326175 () Bool)

(assert (=> b!7853546 (= e!4642093 (and tp!2326176 tp!2326175))))

(declare-fun b!7853548 () Bool)

(declare-fun tp!2326177 () Bool)

(declare-fun tp!2326174 () Bool)

(assert (=> b!7853548 (= e!4642093 (and tp!2326177 tp!2326174))))

(assert (= (and b!7853213 ((_ is ElementMatch!21091) (regOne!42694 (regOne!42695 r2!6165)))) b!7853545))

(assert (= (and b!7853213 ((_ is Concat!29936) (regOne!42694 (regOne!42695 r2!6165)))) b!7853546))

(assert (= (and b!7853213 ((_ is Star!21091) (regOne!42694 (regOne!42695 r2!6165)))) b!7853547))

(assert (= (and b!7853213 ((_ is Union!21091) (regOne!42694 (regOne!42695 r2!6165)))) b!7853548))

(declare-fun b!7853551 () Bool)

(declare-fun e!4642094 () Bool)

(declare-fun tp!2326178 () Bool)

(assert (=> b!7853551 (= e!4642094 tp!2326178)))

(assert (=> b!7853213 (= tp!2325953 e!4642094)))

(declare-fun b!7853549 () Bool)

(assert (=> b!7853549 (= e!4642094 tp_is_empty!52581)))

(declare-fun b!7853550 () Bool)

(declare-fun tp!2326181 () Bool)

(declare-fun tp!2326180 () Bool)

(assert (=> b!7853550 (= e!4642094 (and tp!2326181 tp!2326180))))

(declare-fun b!7853552 () Bool)

(declare-fun tp!2326182 () Bool)

(declare-fun tp!2326179 () Bool)

(assert (=> b!7853552 (= e!4642094 (and tp!2326182 tp!2326179))))

(assert (= (and b!7853213 ((_ is ElementMatch!21091) (regTwo!42694 (regOne!42695 r2!6165)))) b!7853549))

(assert (= (and b!7853213 ((_ is Concat!29936) (regTwo!42694 (regOne!42695 r2!6165)))) b!7853550))

(assert (= (and b!7853213 ((_ is Star!21091) (regTwo!42694 (regOne!42695 r2!6165)))) b!7853551))

(assert (= (and b!7853213 ((_ is Union!21091) (regTwo!42694 (regOne!42695 r2!6165)))) b!7853552))

(declare-fun b!7853555 () Bool)

(declare-fun e!4642095 () Bool)

(declare-fun tp!2326183 () Bool)

(assert (=> b!7853555 (= e!4642095 tp!2326183)))

(assert (=> b!7853239 (= tp!2325982 e!4642095)))

(declare-fun b!7853553 () Bool)

(assert (=> b!7853553 (= e!4642095 tp_is_empty!52581)))

(declare-fun b!7853554 () Bool)

(declare-fun tp!2326186 () Bool)

(declare-fun tp!2326185 () Bool)

(assert (=> b!7853554 (= e!4642095 (and tp!2326186 tp!2326185))))

(declare-fun b!7853556 () Bool)

(declare-fun tp!2326187 () Bool)

(declare-fun tp!2326184 () Bool)

(assert (=> b!7853556 (= e!4642095 (and tp!2326187 tp!2326184))))

(assert (= (and b!7853239 ((_ is ElementMatch!21091) (reg!21420 (reg!21420 r2!6165)))) b!7853553))

(assert (= (and b!7853239 ((_ is Concat!29936) (reg!21420 (reg!21420 r2!6165)))) b!7853554))

(assert (= (and b!7853239 ((_ is Star!21091) (reg!21420 (reg!21420 r2!6165)))) b!7853555))

(assert (= (and b!7853239 ((_ is Union!21091) (reg!21420 (reg!21420 r2!6165)))) b!7853556))

(declare-fun b!7853559 () Bool)

(declare-fun e!4642096 () Bool)

(declare-fun tp!2326188 () Bool)

(assert (=> b!7853559 (= e!4642096 tp!2326188)))

(assert (=> b!7853248 (= tp!2325996 e!4642096)))

(declare-fun b!7853557 () Bool)

(assert (=> b!7853557 (= e!4642096 tp_is_empty!52581)))

(declare-fun b!7853558 () Bool)

(declare-fun tp!2326191 () Bool)

(declare-fun tp!2326190 () Bool)

(assert (=> b!7853558 (= e!4642096 (and tp!2326191 tp!2326190))))

(declare-fun b!7853560 () Bool)

(declare-fun tp!2326192 () Bool)

(declare-fun tp!2326189 () Bool)

(assert (=> b!7853560 (= e!4642096 (and tp!2326192 tp!2326189))))

(assert (= (and b!7853248 ((_ is ElementMatch!21091) (regOne!42695 (regTwo!42695 r1!6227)))) b!7853557))

(assert (= (and b!7853248 ((_ is Concat!29936) (regOne!42695 (regTwo!42695 r1!6227)))) b!7853558))

(assert (= (and b!7853248 ((_ is Star!21091) (regOne!42695 (regTwo!42695 r1!6227)))) b!7853559))

(assert (= (and b!7853248 ((_ is Union!21091) (regOne!42695 (regTwo!42695 r1!6227)))) b!7853560))

(declare-fun b!7853563 () Bool)

(declare-fun e!4642097 () Bool)

(declare-fun tp!2326193 () Bool)

(assert (=> b!7853563 (= e!4642097 tp!2326193)))

(assert (=> b!7853248 (= tp!2325993 e!4642097)))

(declare-fun b!7853561 () Bool)

(assert (=> b!7853561 (= e!4642097 tp_is_empty!52581)))

(declare-fun b!7853562 () Bool)

(declare-fun tp!2326196 () Bool)

(declare-fun tp!2326195 () Bool)

(assert (=> b!7853562 (= e!4642097 (and tp!2326196 tp!2326195))))

(declare-fun b!7853564 () Bool)

(declare-fun tp!2326197 () Bool)

(declare-fun tp!2326194 () Bool)

(assert (=> b!7853564 (= e!4642097 (and tp!2326197 tp!2326194))))

(assert (= (and b!7853248 ((_ is ElementMatch!21091) (regTwo!42695 (regTwo!42695 r1!6227)))) b!7853561))

(assert (= (and b!7853248 ((_ is Concat!29936) (regTwo!42695 (regTwo!42695 r1!6227)))) b!7853562))

(assert (= (and b!7853248 ((_ is Star!21091) (regTwo!42695 (regTwo!42695 r1!6227)))) b!7853563))

(assert (= (and b!7853248 ((_ is Union!21091) (regTwo!42695 (regTwo!42695 r1!6227)))) b!7853564))

(declare-fun b!7853567 () Bool)

(declare-fun e!4642098 () Bool)

(declare-fun tp!2326198 () Bool)

(assert (=> b!7853567 (= e!4642098 tp!2326198)))

(assert (=> b!7853231 (= tp!2325975 e!4642098)))

(declare-fun b!7853565 () Bool)

(assert (=> b!7853565 (= e!4642098 tp_is_empty!52581)))

(declare-fun b!7853566 () Bool)

(declare-fun tp!2326201 () Bool)

(declare-fun tp!2326200 () Bool)

(assert (=> b!7853566 (= e!4642098 (and tp!2326201 tp!2326200))))

(declare-fun b!7853568 () Bool)

(declare-fun tp!2326202 () Bool)

(declare-fun tp!2326199 () Bool)

(assert (=> b!7853568 (= e!4642098 (and tp!2326202 tp!2326199))))

(assert (= (and b!7853231 ((_ is ElementMatch!21091) (regOne!42695 (regOne!42694 r2!6165)))) b!7853565))

(assert (= (and b!7853231 ((_ is Concat!29936) (regOne!42695 (regOne!42694 r2!6165)))) b!7853566))

(assert (= (and b!7853231 ((_ is Star!21091) (regOne!42695 (regOne!42694 r2!6165)))) b!7853567))

(assert (= (and b!7853231 ((_ is Union!21091) (regOne!42695 (regOne!42694 r2!6165)))) b!7853568))

(declare-fun b!7853571 () Bool)

(declare-fun e!4642099 () Bool)

(declare-fun tp!2326203 () Bool)

(assert (=> b!7853571 (= e!4642099 tp!2326203)))

(assert (=> b!7853231 (= tp!2325972 e!4642099)))

(declare-fun b!7853569 () Bool)

(assert (=> b!7853569 (= e!4642099 tp_is_empty!52581)))

(declare-fun b!7853570 () Bool)

(declare-fun tp!2326206 () Bool)

(declare-fun tp!2326205 () Bool)

(assert (=> b!7853570 (= e!4642099 (and tp!2326206 tp!2326205))))

(declare-fun b!7853572 () Bool)

(declare-fun tp!2326207 () Bool)

(declare-fun tp!2326204 () Bool)

(assert (=> b!7853572 (= e!4642099 (and tp!2326207 tp!2326204))))

(assert (= (and b!7853231 ((_ is ElementMatch!21091) (regTwo!42695 (regOne!42694 r2!6165)))) b!7853569))

(assert (= (and b!7853231 ((_ is Concat!29936) (regTwo!42695 (regOne!42694 r2!6165)))) b!7853570))

(assert (= (and b!7853231 ((_ is Star!21091) (regTwo!42695 (regOne!42694 r2!6165)))) b!7853571))

(assert (= (and b!7853231 ((_ is Union!21091) (regTwo!42695 (regOne!42694 r2!6165)))) b!7853572))

(declare-fun b!7853575 () Bool)

(declare-fun e!4642100 () Bool)

(declare-fun tp!2326208 () Bool)

(assert (=> b!7853575 (= e!4642100 tp!2326208)))

(assert (=> b!7853238 (= tp!2325985 e!4642100)))

(declare-fun b!7853573 () Bool)

(assert (=> b!7853573 (= e!4642100 tp_is_empty!52581)))

(declare-fun b!7853574 () Bool)

(declare-fun tp!2326211 () Bool)

(declare-fun tp!2326210 () Bool)

(assert (=> b!7853574 (= e!4642100 (and tp!2326211 tp!2326210))))

(declare-fun b!7853576 () Bool)

(declare-fun tp!2326212 () Bool)

(declare-fun tp!2326209 () Bool)

(assert (=> b!7853576 (= e!4642100 (and tp!2326212 tp!2326209))))

(assert (= (and b!7853238 ((_ is ElementMatch!21091) (regOne!42694 (reg!21420 r2!6165)))) b!7853573))

(assert (= (and b!7853238 ((_ is Concat!29936) (regOne!42694 (reg!21420 r2!6165)))) b!7853574))

(assert (= (and b!7853238 ((_ is Star!21091) (regOne!42694 (reg!21420 r2!6165)))) b!7853575))

(assert (= (and b!7853238 ((_ is Union!21091) (regOne!42694 (reg!21420 r2!6165)))) b!7853576))

(declare-fun b!7853579 () Bool)

(declare-fun e!4642101 () Bool)

(declare-fun tp!2326213 () Bool)

(assert (=> b!7853579 (= e!4642101 tp!2326213)))

(assert (=> b!7853238 (= tp!2325984 e!4642101)))

(declare-fun b!7853577 () Bool)

(assert (=> b!7853577 (= e!4642101 tp_is_empty!52581)))

(declare-fun b!7853578 () Bool)

(declare-fun tp!2326216 () Bool)

(declare-fun tp!2326215 () Bool)

(assert (=> b!7853578 (= e!4642101 (and tp!2326216 tp!2326215))))

(declare-fun b!7853580 () Bool)

(declare-fun tp!2326217 () Bool)

(declare-fun tp!2326214 () Bool)

(assert (=> b!7853580 (= e!4642101 (and tp!2326217 tp!2326214))))

(assert (= (and b!7853238 ((_ is ElementMatch!21091) (regTwo!42694 (reg!21420 r2!6165)))) b!7853577))

(assert (= (and b!7853238 ((_ is Concat!29936) (regTwo!42694 (reg!21420 r2!6165)))) b!7853578))

(assert (= (and b!7853238 ((_ is Star!21091) (regTwo!42694 (reg!21420 r2!6165)))) b!7853579))

(assert (= (and b!7853238 ((_ is Union!21091) (regTwo!42694 (reg!21420 r2!6165)))) b!7853580))

(declare-fun b!7853583 () Bool)

(declare-fun e!4642102 () Bool)

(declare-fun tp!2326218 () Bool)

(assert (=> b!7853583 (= e!4642102 tp!2326218)))

(assert (=> b!7853247 (= tp!2325992 e!4642102)))

(declare-fun b!7853581 () Bool)

(assert (=> b!7853581 (= e!4642102 tp_is_empty!52581)))

(declare-fun b!7853582 () Bool)

(declare-fun tp!2326221 () Bool)

(declare-fun tp!2326220 () Bool)

(assert (=> b!7853582 (= e!4642102 (and tp!2326221 tp!2326220))))

(declare-fun b!7853584 () Bool)

(declare-fun tp!2326222 () Bool)

(declare-fun tp!2326219 () Bool)

(assert (=> b!7853584 (= e!4642102 (and tp!2326222 tp!2326219))))

(assert (= (and b!7853247 ((_ is ElementMatch!21091) (reg!21420 (regTwo!42695 r1!6227)))) b!7853581))

(assert (= (and b!7853247 ((_ is Concat!29936) (reg!21420 (regTwo!42695 r1!6227)))) b!7853582))

(assert (= (and b!7853247 ((_ is Star!21091) (reg!21420 (regTwo!42695 r1!6227)))) b!7853583))

(assert (= (and b!7853247 ((_ is Union!21091) (reg!21420 (regTwo!42695 r1!6227)))) b!7853584))

(declare-fun b!7853587 () Bool)

(declare-fun e!4642103 () Bool)

(declare-fun tp!2326223 () Bool)

(assert (=> b!7853587 (= e!4642103 tp!2326223)))

(assert (=> b!7853230 (= tp!2325971 e!4642103)))

(declare-fun b!7853585 () Bool)

(assert (=> b!7853585 (= e!4642103 tp_is_empty!52581)))

(declare-fun b!7853586 () Bool)

(declare-fun tp!2326226 () Bool)

(declare-fun tp!2326225 () Bool)

(assert (=> b!7853586 (= e!4642103 (and tp!2326226 tp!2326225))))

(declare-fun b!7853588 () Bool)

(declare-fun tp!2326227 () Bool)

(declare-fun tp!2326224 () Bool)

(assert (=> b!7853588 (= e!4642103 (and tp!2326227 tp!2326224))))

(assert (= (and b!7853230 ((_ is ElementMatch!21091) (reg!21420 (regOne!42694 r2!6165)))) b!7853585))

(assert (= (and b!7853230 ((_ is Concat!29936) (reg!21420 (regOne!42694 r2!6165)))) b!7853586))

(assert (= (and b!7853230 ((_ is Star!21091) (reg!21420 (regOne!42694 r2!6165)))) b!7853587))

(assert (= (and b!7853230 ((_ is Union!21091) (reg!21420 (regOne!42694 r2!6165)))) b!7853588))

(declare-fun b!7853591 () Bool)

(declare-fun e!4642104 () Bool)

(declare-fun tp!2326228 () Bool)

(assert (=> b!7853591 (= e!4642104 tp!2326228)))

(assert (=> b!7853246 (= tp!2325995 e!4642104)))

(declare-fun b!7853589 () Bool)

(assert (=> b!7853589 (= e!4642104 tp_is_empty!52581)))

(declare-fun b!7853590 () Bool)

(declare-fun tp!2326231 () Bool)

(declare-fun tp!2326230 () Bool)

(assert (=> b!7853590 (= e!4642104 (and tp!2326231 tp!2326230))))

(declare-fun b!7853592 () Bool)

(declare-fun tp!2326232 () Bool)

(declare-fun tp!2326229 () Bool)

(assert (=> b!7853592 (= e!4642104 (and tp!2326232 tp!2326229))))

(assert (= (and b!7853246 ((_ is ElementMatch!21091) (regOne!42694 (regTwo!42695 r1!6227)))) b!7853589))

(assert (= (and b!7853246 ((_ is Concat!29936) (regOne!42694 (regTwo!42695 r1!6227)))) b!7853590))

(assert (= (and b!7853246 ((_ is Star!21091) (regOne!42694 (regTwo!42695 r1!6227)))) b!7853591))

(assert (= (and b!7853246 ((_ is Union!21091) (regOne!42694 (regTwo!42695 r1!6227)))) b!7853592))

(declare-fun b!7853595 () Bool)

(declare-fun e!4642105 () Bool)

(declare-fun tp!2326233 () Bool)

(assert (=> b!7853595 (= e!4642105 tp!2326233)))

(assert (=> b!7853246 (= tp!2325994 e!4642105)))

(declare-fun b!7853593 () Bool)

(assert (=> b!7853593 (= e!4642105 tp_is_empty!52581)))

(declare-fun b!7853594 () Bool)

(declare-fun tp!2326236 () Bool)

(declare-fun tp!2326235 () Bool)

(assert (=> b!7853594 (= e!4642105 (and tp!2326236 tp!2326235))))

(declare-fun b!7853596 () Bool)

(declare-fun tp!2326237 () Bool)

(declare-fun tp!2326234 () Bool)

(assert (=> b!7853596 (= e!4642105 (and tp!2326237 tp!2326234))))

(assert (= (and b!7853246 ((_ is ElementMatch!21091) (regTwo!42694 (regTwo!42695 r1!6227)))) b!7853593))

(assert (= (and b!7853246 ((_ is Concat!29936) (regTwo!42694 (regTwo!42695 r1!6227)))) b!7853594))

(assert (= (and b!7853246 ((_ is Star!21091) (regTwo!42694 (regTwo!42695 r1!6227)))) b!7853595))

(assert (= (and b!7853246 ((_ is Union!21091) (regTwo!42694 (regTwo!42695 r1!6227)))) b!7853596))

(declare-fun b!7853597 () Bool)

(declare-fun e!4642106 () Bool)

(declare-fun tp!2326238 () Bool)

(assert (=> b!7853597 (= e!4642106 (and tp_is_empty!52581 tp!2326238))))

(assert (=> b!7853205 (= tp!2325943 e!4642106)))

(assert (= (and b!7853205 ((_ is Cons!73826) (t!388685 (t!388685 s2!3706)))) b!7853597))

(declare-fun b!7853600 () Bool)

(declare-fun e!4642107 () Bool)

(declare-fun tp!2326239 () Bool)

(assert (=> b!7853600 (= e!4642107 tp!2326239)))

(assert (=> b!7853229 (= tp!2325974 e!4642107)))

(declare-fun b!7853598 () Bool)

(assert (=> b!7853598 (= e!4642107 tp_is_empty!52581)))

(declare-fun b!7853599 () Bool)

(declare-fun tp!2326242 () Bool)

(declare-fun tp!2326241 () Bool)

(assert (=> b!7853599 (= e!4642107 (and tp!2326242 tp!2326241))))

(declare-fun b!7853601 () Bool)

(declare-fun tp!2326243 () Bool)

(declare-fun tp!2326240 () Bool)

(assert (=> b!7853601 (= e!4642107 (and tp!2326243 tp!2326240))))

(assert (= (and b!7853229 ((_ is ElementMatch!21091) (regOne!42694 (regOne!42694 r2!6165)))) b!7853598))

(assert (= (and b!7853229 ((_ is Concat!29936) (regOne!42694 (regOne!42694 r2!6165)))) b!7853599))

(assert (= (and b!7853229 ((_ is Star!21091) (regOne!42694 (regOne!42694 r2!6165)))) b!7853600))

(assert (= (and b!7853229 ((_ is Union!21091) (regOne!42694 (regOne!42694 r2!6165)))) b!7853601))

(declare-fun b!7853604 () Bool)

(declare-fun e!4642108 () Bool)

(declare-fun tp!2326244 () Bool)

(assert (=> b!7853604 (= e!4642108 tp!2326244)))

(assert (=> b!7853229 (= tp!2325973 e!4642108)))

(declare-fun b!7853602 () Bool)

(assert (=> b!7853602 (= e!4642108 tp_is_empty!52581)))

(declare-fun b!7853603 () Bool)

(declare-fun tp!2326247 () Bool)

(declare-fun tp!2326246 () Bool)

(assert (=> b!7853603 (= e!4642108 (and tp!2326247 tp!2326246))))

(declare-fun b!7853605 () Bool)

(declare-fun tp!2326248 () Bool)

(declare-fun tp!2326245 () Bool)

(assert (=> b!7853605 (= e!4642108 (and tp!2326248 tp!2326245))))

(assert (= (and b!7853229 ((_ is ElementMatch!21091) (regTwo!42694 (regOne!42694 r2!6165)))) b!7853602))

(assert (= (and b!7853229 ((_ is Concat!29936) (regTwo!42694 (regOne!42694 r2!6165)))) b!7853603))

(assert (= (and b!7853229 ((_ is Star!21091) (regTwo!42694 (regOne!42694 r2!6165)))) b!7853604))

(assert (= (and b!7853229 ((_ is Union!21091) (regTwo!42694 (regOne!42694 r2!6165)))) b!7853605))

(check-sat (not b!7853446) (not b!7853434) (not b!7853428) (not bm!727906) (not b!7853558) (not b!7853480) (not b!7853406) (not b!7853265) (not b!7853342) (not b!7853435) (not b!7853538) (not b!7853583) (not bm!727885) (not b!7853358) (not b!7853605) (not b!7853554) (not d!2353568) (not b!7853540) (not b!7853454) (not b!7853586) (not bm!727921) (not b!7853476) (not bm!727883) (not b!7853292) (not d!2353534) (not b!7853472) (not b!7853488) (not b!7853544) (not d!2353586) (not b!7853436) (not b!7853584) (not b!7853409) (not b!7853284) (not b!7853534) (not b!7853588) (not b!7853426) (not bm!727919) (not b!7853508) (not bm!727912) (not b!7853442) (not b!7853514) (not b!7853335) (not b!7853440) (not b!7853462) (not b!7853415) (not b!7853407) (not b!7853590) (not b!7853427) (not bm!727924) (not d!2353536) (not b!7853334) (not b!7853535) (not b!7853499) (not b!7853444) (not b!7853530) (not d!2353588) (not b!7853470) (not b!7853526) (not b!7853467) (not b!7853491) (not d!2353556) (not b!7853260) (not d!2353596) (not b!7853492) (not d!2353562) (not b!7853527) (not b!7853405) (not b!7853604) (not b!7853496) (not b!7853486) (not b!7853547) (not d!2353576) (not b!7853507) (not bm!727899) (not b!7853504) (not d!2353574) (not b!7853479) (not b!7853550) (not b!7853257) (not b!7853483) (not b!7853510) (not b!7853432) (not b!7853528) (not bm!727900) (not b!7853463) (not b!7853346) tp_is_empty!52581 (not b!7853438) (not b!7853552) (not b!7853603) (not bm!727908) (not b!7853548) (not b!7853464) (not bm!727925) (not b!7853451) (not b!7853387) (not b!7853592) (not b!7853599) (not b!7853566) (not b!7853560) (not b!7853423) (not b!7853411) (not b!7853579) (not b!7853410) (not b!7853572) (not b!7853475) (not bm!727901) (not b!7853596) (not b!7853417) (not b!7853447) (not b!7853580) (not b!7853422) (not b!7853516) (not b!7853301) (not d!2353566) (not b!7853512) (not d!2353546) (not b!7853317) (not b!7853395) (not b!7853500) (not b!7853474) (not b!7853273) (not bm!727914) (not b!7853520) (not b!7853531) (not b!7853563) (not b!7853424) (not b!7853448) (not b!7853542) (not b!7853522) (not b!7853367) (not b!7853419) (not b!7853567) (not b!7853322) (not b!7853460) (not b!7853591) (not b!7853421) (not b!7853318) (not b!7853256) (not b!7853430) (not bm!727903) (not b!7853539) (not b!7853487) (not b!7853468) (not b!7853546) (not bm!727898) (not bm!727892) (not b!7853439) (not b!7853482) (not b!7853582) (not b!7853456) (not b!7853466) (not b!7853345) (not b!7853471) (not b!7853555) (not b!7853595) (not b!7853523) (not b!7853413) (not b!7853594) (not b!7853341) (not b!7853350) (not b!7853321) (not d!2353570) (not b!7853562) (not bm!727895) (not b!7853494) (not bm!727917) (not b!7853519) (not b!7853564) (not b!7853310) (not d!2353544) (not b!7853478) (not b!7853503) (not b!7853506) (not b!7853311) (not b!7853455) (not b!7853587) (not b!7853597) (not b!7853490) (not b!7853556) (not b!7853543) (not b!7853458) (not b!7853418) (not b!7853576) (not b!7853578) (not bm!727889) (not b!7853601) (not b!7853484) (not b!7853575) (not b!7853559) (not bm!727888) (not b!7853502) (not b!7853443) (not b!7853568) (not b!7853524) (not b!7853250) (not b!7853431) (not bm!727911) (not b!7853261) (not b!7853551) (not bm!727896) (not b!7853414) (not b!7853574) (not b!7853498) (not b!7853452) (not b!7853249) (not b!7853511) (not b!7853570) (not bm!727918) (not b!7853326) (not b!7853536) (not b!7853495) (not b!7853459) (not b!7853532) (not b!7853600) (not b!7853518) (not b!7853571) (not b!7853450) (not bm!727915) (not bm!727882) (not d!2353584) (not b!7853376) (not bm!727890) (not bm!727905) (not b!7853515))
(check-sat)
