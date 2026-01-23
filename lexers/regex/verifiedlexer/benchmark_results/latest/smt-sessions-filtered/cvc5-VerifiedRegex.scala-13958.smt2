; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!739594 () Bool)

(assert start!739594)

(declare-fun b!7763682 () Bool)

(assert (=> b!7763682 true))

(assert (=> b!7763682 true))

(assert (=> b!7763682 true))

(declare-fun b!7763672 () Bool)

(declare-fun res!3095030 () Bool)

(declare-fun e!4600820 () Bool)

(assert (=> b!7763672 (=> (not res!3095030) (not e!4600820))))

(declare-datatypes ((C!41746 0))(
  ( (C!41747 (val!31313 Int)) )
))
(declare-datatypes ((Regex!20710 0))(
  ( (ElementMatch!20710 (c!1431049 C!41746)) (Concat!29555 (regOne!41932 Regex!20710) (regTwo!41932 Regex!20710)) (EmptyExpr!20710) (Star!20710 (reg!21039 Regex!20710)) (EmptyLang!20710) (Union!20710 (regOne!41933 Regex!20710) (regTwo!41933 Regex!20710)) )
))
(declare-fun r2!3230 () Regex!20710)

(declare-fun validRegex!11126 (Regex!20710) Bool)

(assert (=> b!7763672 (= res!3095030 (validRegex!11126 r2!3230))))

(declare-fun b!7763673 () Bool)

(declare-fun e!4600823 () Bool)

(declare-fun tp_is_empty!51775 () Bool)

(assert (=> b!7763673 (= e!4600823 tp_is_empty!51775)))

(declare-fun b!7763674 () Bool)

(declare-fun tp!2280389 () Bool)

(assert (=> b!7763674 (= e!4600823 tp!2280389)))

(declare-fun b!7763675 () Bool)

(declare-fun res!3095029 () Bool)

(declare-fun e!4600824 () Bool)

(assert (=> b!7763675 (=> (not res!3095029) (not e!4600824))))

(declare-datatypes ((List!73553 0))(
  ( (Nil!73429) (Cons!73429 (h!79877 C!41746) (t!388288 List!73553)) )
))
(declare-datatypes ((tuple2!69806 0))(
  ( (tuple2!69807 (_1!38206 List!73553) (_2!38206 List!73553)) )
))
(declare-fun lt!2670616 () tuple2!69806)

(declare-fun matchR!10176 (Regex!20710 List!73553) Bool)

(assert (=> b!7763675 (= res!3095029 (matchR!10176 r2!3230 (_2!38206 lt!2670616)))))

(declare-fun b!7763676 () Bool)

(declare-fun e!4600821 () Bool)

(assert (=> b!7763676 (= e!4600821 tp_is_empty!51775)))

(declare-fun b!7763677 () Bool)

(declare-fun res!3095032 () Bool)

(assert (=> b!7763677 (=> (not res!3095032) (not e!4600824))))

(declare-fun r1!3330 () Regex!20710)

(assert (=> b!7763677 (= res!3095032 (matchR!10176 r1!3330 (_1!38206 lt!2670616)))))

(declare-fun b!7763678 () Bool)

(declare-fun e!4600825 () Bool)

(assert (=> b!7763678 (= e!4600820 e!4600825)))

(declare-fun res!3095031 () Bool)

(assert (=> b!7763678 (=> (not res!3095031) (not e!4600825))))

(declare-datatypes ((Option!17697 0))(
  ( (None!17696) (Some!17696 (v!54831 tuple2!69806)) )
))
(declare-fun lt!2670617 () Option!17697)

(declare-fun isDefined!14309 (Option!17697) Bool)

(assert (=> b!7763678 (= res!3095031 (isDefined!14309 lt!2670617))))

(declare-fun s!10216 () List!73553)

(declare-fun findConcatSeparation!3727 (Regex!20710 Regex!20710 List!73553 List!73553 List!73553) Option!17697)

(assert (=> b!7763678 (= lt!2670617 (findConcatSeparation!3727 r1!3330 r2!3230 Nil!73429 s!10216 s!10216))))

(declare-fun res!3095034 () Bool)

(assert (=> start!739594 (=> (not res!3095034) (not e!4600820))))

(assert (=> start!739594 (= res!3095034 (validRegex!11126 r1!3330))))

(assert (=> start!739594 e!4600820))

(assert (=> start!739594 e!4600823))

(assert (=> start!739594 e!4600821))

(declare-fun e!4600822 () Bool)

(assert (=> start!739594 e!4600822))

(declare-fun b!7763679 () Bool)

(assert (=> b!7763679 (= e!4600825 e!4600824)))

(declare-fun res!3095033 () Bool)

(assert (=> b!7763679 (=> (not res!3095033) (not e!4600824))))

(declare-fun ++!17885 (List!73553 List!73553) List!73553)

(assert (=> b!7763679 (= res!3095033 (= (++!17885 (_1!38206 lt!2670616) (_2!38206 lt!2670616)) s!10216))))

(declare-fun get!26196 (Option!17697) tuple2!69806)

(assert (=> b!7763679 (= lt!2670616 (get!26196 lt!2670617))))

(declare-fun b!7763680 () Bool)

(declare-fun tp!2280394 () Bool)

(assert (=> b!7763680 (= e!4600822 (and tp_is_empty!51775 tp!2280394))))

(declare-fun b!7763681 () Bool)

(declare-fun tp!2280386 () Bool)

(declare-fun tp!2280395 () Bool)

(assert (=> b!7763681 (= e!4600823 (and tp!2280386 tp!2280395))))

(declare-fun lambda!472072 () Int)

(declare-fun Exists!4748 (Int) Bool)

(assert (=> b!7763682 (= e!4600824 (not (Exists!4748 lambda!472072)))))

(declare-datatypes ((Unit!168410 0))(
  ( (Unit!168411) )
))
(declare-fun lt!2670615 () Unit!168410)

(declare-fun ExistsThe!69 (tuple2!69806 Int) Unit!168410)

(assert (=> b!7763682 (= lt!2670615 (ExistsThe!69 (tuple2!69807 (_1!38206 lt!2670616) (_2!38206 lt!2670616)) lambda!472072))))

(declare-fun b!7763683 () Bool)

(declare-fun tp!2280388 () Bool)

(declare-fun tp!2280396 () Bool)

(assert (=> b!7763683 (= e!4600821 (and tp!2280388 tp!2280396))))

(declare-fun b!7763684 () Bool)

(declare-fun tp!2280393 () Bool)

(declare-fun tp!2280391 () Bool)

(assert (=> b!7763684 (= e!4600823 (and tp!2280393 tp!2280391))))

(declare-fun b!7763685 () Bool)

(declare-fun tp!2280392 () Bool)

(assert (=> b!7763685 (= e!4600821 tp!2280392)))

(declare-fun b!7763686 () Bool)

(declare-fun tp!2280390 () Bool)

(declare-fun tp!2280387 () Bool)

(assert (=> b!7763686 (= e!4600821 (and tp!2280390 tp!2280387))))

(assert (= (and start!739594 res!3095034) b!7763672))

(assert (= (and b!7763672 res!3095030) b!7763678))

(assert (= (and b!7763678 res!3095031) b!7763679))

(assert (= (and b!7763679 res!3095033) b!7763677))

(assert (= (and b!7763677 res!3095032) b!7763675))

(assert (= (and b!7763675 res!3095029) b!7763682))

(assert (= (and start!739594 (is-ElementMatch!20710 r1!3330)) b!7763673))

(assert (= (and start!739594 (is-Concat!29555 r1!3330)) b!7763681))

(assert (= (and start!739594 (is-Star!20710 r1!3330)) b!7763674))

(assert (= (and start!739594 (is-Union!20710 r1!3330)) b!7763684))

(assert (= (and start!739594 (is-ElementMatch!20710 r2!3230)) b!7763676))

(assert (= (and start!739594 (is-Concat!29555 r2!3230)) b!7763683))

(assert (= (and start!739594 (is-Star!20710 r2!3230)) b!7763685))

(assert (= (and start!739594 (is-Union!20710 r2!3230)) b!7763686))

(assert (= (and start!739594 (is-Cons!73429 s!10216)) b!7763680))

(declare-fun m!8221730 () Bool)

(assert (=> start!739594 m!8221730))

(declare-fun m!8221732 () Bool)

(assert (=> b!7763678 m!8221732))

(declare-fun m!8221734 () Bool)

(assert (=> b!7763678 m!8221734))

(declare-fun m!8221736 () Bool)

(assert (=> b!7763672 m!8221736))

(declare-fun m!8221738 () Bool)

(assert (=> b!7763675 m!8221738))

(declare-fun m!8221740 () Bool)

(assert (=> b!7763677 m!8221740))

(declare-fun m!8221742 () Bool)

(assert (=> b!7763682 m!8221742))

(declare-fun m!8221744 () Bool)

(assert (=> b!7763682 m!8221744))

(declare-fun m!8221746 () Bool)

(assert (=> b!7763679 m!8221746))

(declare-fun m!8221748 () Bool)

(assert (=> b!7763679 m!8221748))

(push 1)

(assert (not b!7763675))

(assert (not b!7763678))

(assert (not b!7763680))

(assert (not b!7763677))

(assert (not b!7763685))

(assert (not b!7763683))

(assert (not b!7763686))

(assert (not b!7763672))

(assert tp_is_empty!51775)

(assert (not b!7763679))

(assert (not b!7763681))

(assert (not start!739594))

(assert (not b!7763682))

(assert (not b!7763674))

(assert (not b!7763684))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!2343769 () Bool)

(declare-fun res!3095086 () Bool)

(declare-fun e!4600884 () Bool)

(assert (=> d!2343769 (=> res!3095086 e!4600884)))

(assert (=> d!2343769 (= res!3095086 (is-ElementMatch!20710 r1!3330))))

(assert (=> d!2343769 (= (validRegex!11126 r1!3330) e!4600884)))

(declare-fun bm!719335 () Bool)

(declare-fun call!719342 () Bool)

(declare-fun c!1431061 () Bool)

(assert (=> bm!719335 (= call!719342 (validRegex!11126 (ite c!1431061 (regOne!41933 r1!3330) (regOne!41932 r1!3330))))))

(declare-fun b!7763793 () Bool)

(declare-fun e!4600887 () Bool)

(declare-fun e!4600889 () Bool)

(assert (=> b!7763793 (= e!4600887 e!4600889)))

(assert (=> b!7763793 (= c!1431061 (is-Union!20710 r1!3330))))

(declare-fun bm!719336 () Bool)

(declare-fun call!719341 () Bool)

(declare-fun call!719340 () Bool)

(assert (=> bm!719336 (= call!719341 call!719340)))

(declare-fun b!7763794 () Bool)

(declare-fun e!4600883 () Bool)

(assert (=> b!7763794 (= e!4600887 e!4600883)))

(declare-fun res!3095088 () Bool)

(declare-fun nullable!9120 (Regex!20710) Bool)

(assert (=> b!7763794 (= res!3095088 (not (nullable!9120 (reg!21039 r1!3330))))))

(assert (=> b!7763794 (=> (not res!3095088) (not e!4600883))))

(declare-fun b!7763795 () Bool)

(assert (=> b!7763795 (= e!4600884 e!4600887)))

(declare-fun c!1431062 () Bool)

(assert (=> b!7763795 (= c!1431062 (is-Star!20710 r1!3330))))

(declare-fun b!7763796 () Bool)

(declare-fun e!4600885 () Bool)

(assert (=> b!7763796 (= e!4600885 call!719341)))

(declare-fun b!7763797 () Bool)

(declare-fun res!3095090 () Bool)

(declare-fun e!4600888 () Bool)

(assert (=> b!7763797 (=> res!3095090 e!4600888)))

(assert (=> b!7763797 (= res!3095090 (not (is-Concat!29555 r1!3330)))))

(assert (=> b!7763797 (= e!4600889 e!4600888)))

(declare-fun bm!719337 () Bool)

(assert (=> bm!719337 (= call!719340 (validRegex!11126 (ite c!1431062 (reg!21039 r1!3330) (ite c!1431061 (regTwo!41933 r1!3330) (regTwo!41932 r1!3330)))))))

(declare-fun b!7763798 () Bool)

(declare-fun res!3095087 () Bool)

(assert (=> b!7763798 (=> (not res!3095087) (not e!4600885))))

(assert (=> b!7763798 (= res!3095087 call!719342)))

(assert (=> b!7763798 (= e!4600889 e!4600885)))

(declare-fun b!7763799 () Bool)

(assert (=> b!7763799 (= e!4600883 call!719340)))

(declare-fun b!7763800 () Bool)

(declare-fun e!4600886 () Bool)

(assert (=> b!7763800 (= e!4600888 e!4600886)))

(declare-fun res!3095089 () Bool)

(assert (=> b!7763800 (=> (not res!3095089) (not e!4600886))))

(assert (=> b!7763800 (= res!3095089 call!719342)))

(declare-fun b!7763801 () Bool)

(assert (=> b!7763801 (= e!4600886 call!719341)))

(assert (= (and d!2343769 (not res!3095086)) b!7763795))

(assert (= (and b!7763795 c!1431062) b!7763794))

(assert (= (and b!7763795 (not c!1431062)) b!7763793))

(assert (= (and b!7763794 res!3095088) b!7763799))

(assert (= (and b!7763793 c!1431061) b!7763798))

(assert (= (and b!7763793 (not c!1431061)) b!7763797))

(assert (= (and b!7763798 res!3095087) b!7763796))

(assert (= (and b!7763797 (not res!3095090)) b!7763800))

(assert (= (and b!7763800 res!3095089) b!7763801))

(assert (= (or b!7763798 b!7763800) bm!719335))

(assert (= (or b!7763796 b!7763801) bm!719336))

(assert (= (or b!7763799 bm!719336) bm!719337))

(declare-fun m!8221776 () Bool)

(assert (=> bm!719335 m!8221776))

(declare-fun m!8221778 () Bool)

(assert (=> b!7763794 m!8221778))

(declare-fun m!8221780 () Bool)

(assert (=> bm!719337 m!8221780))

(assert (=> start!739594 d!2343769))

(declare-fun d!2343773 () Bool)

(declare-fun isEmpty!42101 (Option!17697) Bool)

(assert (=> d!2343773 (= (isDefined!14309 lt!2670617) (not (isEmpty!42101 lt!2670617)))))

(declare-fun bs!1965997 () Bool)

(assert (= bs!1965997 d!2343773))

(declare-fun m!8221782 () Bool)

(assert (=> bs!1965997 m!8221782))

(assert (=> b!7763678 d!2343773))

(declare-fun b!7763862 () Bool)

(declare-fun res!3095129 () Bool)

(declare-fun e!4600923 () Bool)

(assert (=> b!7763862 (=> (not res!3095129) (not e!4600923))))

(declare-fun lt!2670638 () Option!17697)

(assert (=> b!7763862 (= res!3095129 (matchR!10176 r2!3230 (_2!38206 (get!26196 lt!2670638))))))

(declare-fun d!2343775 () Bool)

(declare-fun e!4600925 () Bool)

(assert (=> d!2343775 e!4600925))

(declare-fun res!3095127 () Bool)

(assert (=> d!2343775 (=> res!3095127 e!4600925)))

(assert (=> d!2343775 (= res!3095127 e!4600923)))

(declare-fun res!3095128 () Bool)

(assert (=> d!2343775 (=> (not res!3095128) (not e!4600923))))

(assert (=> d!2343775 (= res!3095128 (isDefined!14309 lt!2670638))))

(declare-fun e!4600924 () Option!17697)

(assert (=> d!2343775 (= lt!2670638 e!4600924)))

(declare-fun c!1431077 () Bool)

(declare-fun e!4600921 () Bool)

(assert (=> d!2343775 (= c!1431077 e!4600921)))

(declare-fun res!3095125 () Bool)

(assert (=> d!2343775 (=> (not res!3095125) (not e!4600921))))

(assert (=> d!2343775 (= res!3095125 (matchR!10176 r1!3330 Nil!73429))))

(assert (=> d!2343775 (validRegex!11126 r1!3330)))

(assert (=> d!2343775 (= (findConcatSeparation!3727 r1!3330 r2!3230 Nil!73429 s!10216 s!10216) lt!2670638)))

(declare-fun b!7763863 () Bool)

(assert (=> b!7763863 (= e!4600925 (not (isDefined!14309 lt!2670638)))))

(declare-fun b!7763864 () Bool)

(declare-fun e!4600922 () Option!17697)

(assert (=> b!7763864 (= e!4600922 None!17696)))

(declare-fun b!7763865 () Bool)

(declare-fun res!3095126 () Bool)

(assert (=> b!7763865 (=> (not res!3095126) (not e!4600923))))

(assert (=> b!7763865 (= res!3095126 (matchR!10176 r1!3330 (_1!38206 (get!26196 lt!2670638))))))

(declare-fun b!7763866 () Bool)

(assert (=> b!7763866 (= e!4600923 (= (++!17885 (_1!38206 (get!26196 lt!2670638)) (_2!38206 (get!26196 lt!2670638))) s!10216))))

(declare-fun b!7763867 () Bool)

(assert (=> b!7763867 (= e!4600921 (matchR!10176 r2!3230 s!10216))))

(declare-fun b!7763868 () Bool)

(assert (=> b!7763868 (= e!4600924 e!4600922)))

(declare-fun c!1431076 () Bool)

(assert (=> b!7763868 (= c!1431076 (is-Nil!73429 s!10216))))

(declare-fun b!7763869 () Bool)

(declare-fun lt!2670637 () Unit!168410)

(declare-fun lt!2670636 () Unit!168410)

(assert (=> b!7763869 (= lt!2670637 lt!2670636)))

(assert (=> b!7763869 (= (++!17885 (++!17885 Nil!73429 (Cons!73429 (h!79877 s!10216) Nil!73429)) (t!388288 s!10216)) s!10216)))

(declare-fun lemmaMoveElementToOtherListKeepsConcatEq!3371 (List!73553 C!41746 List!73553 List!73553) Unit!168410)

(assert (=> b!7763869 (= lt!2670636 (lemmaMoveElementToOtherListKeepsConcatEq!3371 Nil!73429 (h!79877 s!10216) (t!388288 s!10216) s!10216))))

(assert (=> b!7763869 (= e!4600922 (findConcatSeparation!3727 r1!3330 r2!3230 (++!17885 Nil!73429 (Cons!73429 (h!79877 s!10216) Nil!73429)) (t!388288 s!10216) s!10216))))

(declare-fun b!7763870 () Bool)

(assert (=> b!7763870 (= e!4600924 (Some!17696 (tuple2!69807 Nil!73429 s!10216)))))

(assert (= (and d!2343775 res!3095125) b!7763867))

(assert (= (and d!2343775 c!1431077) b!7763870))

(assert (= (and d!2343775 (not c!1431077)) b!7763868))

(assert (= (and b!7763868 c!1431076) b!7763864))

(assert (= (and b!7763868 (not c!1431076)) b!7763869))

(assert (= (and d!2343775 res!3095128) b!7763865))

(assert (= (and b!7763865 res!3095126) b!7763862))

(assert (= (and b!7763862 res!3095129) b!7763866))

(assert (= (and d!2343775 (not res!3095127)) b!7763863))

(declare-fun m!8221800 () Bool)

(assert (=> b!7763865 m!8221800))

(declare-fun m!8221802 () Bool)

(assert (=> b!7763865 m!8221802))

(declare-fun m!8221804 () Bool)

(assert (=> d!2343775 m!8221804))

(declare-fun m!8221806 () Bool)

(assert (=> d!2343775 m!8221806))

(assert (=> d!2343775 m!8221730))

(assert (=> b!7763863 m!8221804))

(assert (=> b!7763866 m!8221800))

(declare-fun m!8221808 () Bool)

(assert (=> b!7763866 m!8221808))

(assert (=> b!7763862 m!8221800))

(declare-fun m!8221810 () Bool)

(assert (=> b!7763862 m!8221810))

(declare-fun m!8221812 () Bool)

(assert (=> b!7763869 m!8221812))

(assert (=> b!7763869 m!8221812))

(declare-fun m!8221814 () Bool)

(assert (=> b!7763869 m!8221814))

(declare-fun m!8221816 () Bool)

(assert (=> b!7763869 m!8221816))

(assert (=> b!7763869 m!8221812))

(declare-fun m!8221818 () Bool)

(assert (=> b!7763869 m!8221818))

(declare-fun m!8221820 () Bool)

(assert (=> b!7763867 m!8221820))

(assert (=> b!7763678 d!2343775))

(declare-fun b!7763891 () Bool)

(declare-fun res!3095136 () Bool)

(declare-fun e!4600937 () Bool)

(assert (=> b!7763891 (=> (not res!3095136) (not e!4600937))))

(declare-fun lt!2670647 () List!73553)

(declare-fun size!42689 (List!73553) Int)

(assert (=> b!7763891 (= res!3095136 (= (size!42689 lt!2670647) (+ (size!42689 (_1!38206 lt!2670616)) (size!42689 (_2!38206 lt!2670616)))))))

(declare-fun b!7763889 () Bool)

(declare-fun e!4600936 () List!73553)

(assert (=> b!7763889 (= e!4600936 (_2!38206 lt!2670616))))

(declare-fun d!2343781 () Bool)

(assert (=> d!2343781 e!4600937))

(declare-fun res!3095137 () Bool)

(assert (=> d!2343781 (=> (not res!3095137) (not e!4600937))))

(declare-fun content!15586 (List!73553) (Set C!41746))

(assert (=> d!2343781 (= res!3095137 (= (content!15586 lt!2670647) (set.union (content!15586 (_1!38206 lt!2670616)) (content!15586 (_2!38206 lt!2670616)))))))

(assert (=> d!2343781 (= lt!2670647 e!4600936)))

(declare-fun c!1431084 () Bool)

(assert (=> d!2343781 (= c!1431084 (is-Nil!73429 (_1!38206 lt!2670616)))))

(assert (=> d!2343781 (= (++!17885 (_1!38206 lt!2670616) (_2!38206 lt!2670616)) lt!2670647)))

(declare-fun b!7763892 () Bool)

(assert (=> b!7763892 (= e!4600937 (or (not (= (_2!38206 lt!2670616) Nil!73429)) (= lt!2670647 (_1!38206 lt!2670616))))))

(declare-fun b!7763890 () Bool)

(assert (=> b!7763890 (= e!4600936 (Cons!73429 (h!79877 (_1!38206 lt!2670616)) (++!17885 (t!388288 (_1!38206 lt!2670616)) (_2!38206 lt!2670616))))))

(assert (= (and d!2343781 c!1431084) b!7763889))

(assert (= (and d!2343781 (not c!1431084)) b!7763890))

(assert (= (and d!2343781 res!3095137) b!7763891))

(assert (= (and b!7763891 res!3095136) b!7763892))

(declare-fun m!8221822 () Bool)

(assert (=> b!7763891 m!8221822))

(declare-fun m!8221824 () Bool)

(assert (=> b!7763891 m!8221824))

(declare-fun m!8221826 () Bool)

(assert (=> b!7763891 m!8221826))

(declare-fun m!8221828 () Bool)

(assert (=> d!2343781 m!8221828))

(declare-fun m!8221830 () Bool)

(assert (=> d!2343781 m!8221830))

(declare-fun m!8221832 () Bool)

(assert (=> d!2343781 m!8221832))

(declare-fun m!8221834 () Bool)

(assert (=> b!7763890 m!8221834))

(assert (=> b!7763679 d!2343781))

(declare-fun d!2343783 () Bool)

(assert (=> d!2343783 (= (get!26196 lt!2670617) (v!54831 lt!2670617))))

(assert (=> b!7763679 d!2343783))

(declare-fun d!2343785 () Bool)

(declare-fun e!4600980 () Bool)

(assert (=> d!2343785 e!4600980))

(declare-fun c!1431098 () Bool)

(assert (=> d!2343785 (= c!1431098 (is-EmptyExpr!20710 r2!3230))))

(declare-fun lt!2670657 () Bool)

(declare-fun e!4600976 () Bool)

(assert (=> d!2343785 (= lt!2670657 e!4600976)))

(declare-fun c!1431099 () Bool)

(declare-fun isEmpty!42104 (List!73553) Bool)

(assert (=> d!2343785 (= c!1431099 (isEmpty!42104 (_2!38206 lt!2670616)))))

(assert (=> d!2343785 (validRegex!11126 r2!3230)))

(assert (=> d!2343785 (= (matchR!10176 r2!3230 (_2!38206 lt!2670616)) lt!2670657)))

(declare-fun bm!719347 () Bool)

(declare-fun call!719352 () Bool)

(assert (=> bm!719347 (= call!719352 (isEmpty!42104 (_2!38206 lt!2670616)))))

(declare-fun b!7763961 () Bool)

(declare-fun res!3095183 () Bool)

(declare-fun e!4600975 () Bool)

(assert (=> b!7763961 (=> res!3095183 e!4600975)))

(assert (=> b!7763961 (= res!3095183 (not (is-ElementMatch!20710 r2!3230)))))

(declare-fun e!4600977 () Bool)

(assert (=> b!7763961 (= e!4600977 e!4600975)))

(declare-fun b!7763962 () Bool)

(declare-fun res!3095181 () Bool)

(assert (=> b!7763962 (=> res!3095181 e!4600975)))

(declare-fun e!4600978 () Bool)

(assert (=> b!7763962 (= res!3095181 e!4600978)))

(declare-fun res!3095184 () Bool)

(assert (=> b!7763962 (=> (not res!3095184) (not e!4600978))))

(assert (=> b!7763962 (= res!3095184 lt!2670657)))

(declare-fun b!7763963 () Bool)

(assert (=> b!7763963 (= e!4600977 (not lt!2670657))))

(declare-fun b!7763964 () Bool)

(assert (=> b!7763964 (= e!4600980 e!4600977)))

(declare-fun c!1431100 () Bool)

(assert (=> b!7763964 (= c!1431100 (is-EmptyLang!20710 r2!3230))))

(declare-fun b!7763965 () Bool)

(assert (=> b!7763965 (= e!4600976 (nullable!9120 r2!3230))))

(declare-fun b!7763966 () Bool)

(declare-fun head!15860 (List!73553) C!41746)

(assert (=> b!7763966 (= e!4600978 (= (head!15860 (_2!38206 lt!2670616)) (c!1431049 r2!3230)))))

(declare-fun b!7763967 () Bool)

(declare-fun derivativeStep!6064 (Regex!20710 C!41746) Regex!20710)

(declare-fun tail!15400 (List!73553) List!73553)

(assert (=> b!7763967 (= e!4600976 (matchR!10176 (derivativeStep!6064 r2!3230 (head!15860 (_2!38206 lt!2670616))) (tail!15400 (_2!38206 lt!2670616))))))

(declare-fun b!7763968 () Bool)

(declare-fun res!3095186 () Bool)

(assert (=> b!7763968 (=> (not res!3095186) (not e!4600978))))

(assert (=> b!7763968 (= res!3095186 (not call!719352))))

(declare-fun b!7763969 () Bool)

(declare-fun e!4600979 () Bool)

(declare-fun e!4600981 () Bool)

(assert (=> b!7763969 (= e!4600979 e!4600981)))

(declare-fun res!3095185 () Bool)

(assert (=> b!7763969 (=> res!3095185 e!4600981)))

(assert (=> b!7763969 (= res!3095185 call!719352)))

(declare-fun b!7763970 () Bool)

(assert (=> b!7763970 (= e!4600980 (= lt!2670657 call!719352))))

(declare-fun b!7763971 () Bool)

(declare-fun res!3095180 () Bool)

(assert (=> b!7763971 (=> res!3095180 e!4600981)))

(assert (=> b!7763971 (= res!3095180 (not (isEmpty!42104 (tail!15400 (_2!38206 lt!2670616)))))))

(declare-fun b!7763972 () Bool)

(declare-fun res!3095182 () Bool)

(assert (=> b!7763972 (=> (not res!3095182) (not e!4600978))))

(assert (=> b!7763972 (= res!3095182 (isEmpty!42104 (tail!15400 (_2!38206 lt!2670616))))))

(declare-fun b!7763973 () Bool)

(assert (=> b!7763973 (= e!4600981 (not (= (head!15860 (_2!38206 lt!2670616)) (c!1431049 r2!3230))))))

(declare-fun b!7763974 () Bool)

(assert (=> b!7763974 (= e!4600975 e!4600979)))

(declare-fun res!3095187 () Bool)

(assert (=> b!7763974 (=> (not res!3095187) (not e!4600979))))

(assert (=> b!7763974 (= res!3095187 (not lt!2670657))))

(assert (= (and d!2343785 c!1431099) b!7763965))

(assert (= (and d!2343785 (not c!1431099)) b!7763967))

(assert (= (and d!2343785 c!1431098) b!7763970))

(assert (= (and d!2343785 (not c!1431098)) b!7763964))

(assert (= (and b!7763964 c!1431100) b!7763963))

(assert (= (and b!7763964 (not c!1431100)) b!7763961))

(assert (= (and b!7763961 (not res!3095183)) b!7763962))

(assert (= (and b!7763962 res!3095184) b!7763968))

(assert (= (and b!7763968 res!3095186) b!7763972))

(assert (= (and b!7763972 res!3095182) b!7763966))

(assert (= (and b!7763962 (not res!3095181)) b!7763974))

(assert (= (and b!7763974 res!3095187) b!7763969))

(assert (= (and b!7763969 (not res!3095185)) b!7763971))

(assert (= (and b!7763971 (not res!3095180)) b!7763973))

(assert (= (or b!7763970 b!7763969 b!7763968) bm!719347))

(declare-fun m!8221884 () Bool)

(assert (=> b!7763966 m!8221884))

(declare-fun m!8221886 () Bool)

(assert (=> d!2343785 m!8221886))

(assert (=> d!2343785 m!8221736))

(assert (=> bm!719347 m!8221886))

(assert (=> b!7763973 m!8221884))

(declare-fun m!8221888 () Bool)

(assert (=> b!7763965 m!8221888))

(assert (=> b!7763967 m!8221884))

(assert (=> b!7763967 m!8221884))

(declare-fun m!8221890 () Bool)

(assert (=> b!7763967 m!8221890))

(declare-fun m!8221892 () Bool)

(assert (=> b!7763967 m!8221892))

(assert (=> b!7763967 m!8221890))

(assert (=> b!7763967 m!8221892))

(declare-fun m!8221894 () Bool)

(assert (=> b!7763967 m!8221894))

(assert (=> b!7763972 m!8221892))

(assert (=> b!7763972 m!8221892))

(declare-fun m!8221896 () Bool)

(assert (=> b!7763972 m!8221896))

(assert (=> b!7763971 m!8221892))

(assert (=> b!7763971 m!8221892))

(assert (=> b!7763971 m!8221896))

(assert (=> b!7763675 d!2343785))

(declare-fun d!2343797 () Bool)

(declare-fun choose!59451 (Int) Bool)

(assert (=> d!2343797 (= (Exists!4748 lambda!472072) (choose!59451 lambda!472072))))

(declare-fun bs!1966001 () Bool)

(assert (= bs!1966001 d!2343797))

(declare-fun m!8221898 () Bool)

(assert (=> bs!1966001 m!8221898))

(assert (=> b!7763682 d!2343797))

(declare-fun d!2343799 () Bool)

(assert (=> d!2343799 (Exists!4748 lambda!472072)))

(declare-fun lt!2670663 () Unit!168410)

(declare-fun choose!59452 (tuple2!69806 Int) Unit!168410)

(assert (=> d!2343799 (= lt!2670663 (choose!59452 (tuple2!69807 (_1!38206 lt!2670616) (_2!38206 lt!2670616)) lambda!472072))))

(declare-fun dynLambda!29995 (Int tuple2!69806) Bool)

(assert (=> d!2343799 (dynLambda!29995 lambda!472072 (tuple2!69807 (_1!38206 lt!2670616) (_2!38206 lt!2670616)))))

(assert (=> d!2343799 (= (ExistsThe!69 (tuple2!69807 (_1!38206 lt!2670616) (_2!38206 lt!2670616)) lambda!472072) lt!2670663)))

(declare-fun b_lambda!289469 () Bool)

(assert (=> (not b_lambda!289469) (not d!2343799)))

(declare-fun bs!1966002 () Bool)

(assert (= bs!1966002 d!2343799))

(assert (=> bs!1966002 m!8221742))

(declare-fun m!8221914 () Bool)

(assert (=> bs!1966002 m!8221914))

(declare-fun m!8221916 () Bool)

(assert (=> bs!1966002 m!8221916))

(assert (=> b!7763682 d!2343799))

(declare-fun d!2343803 () Bool)

(declare-fun e!4600993 () Bool)

(assert (=> d!2343803 e!4600993))

(declare-fun c!1431104 () Bool)

(assert (=> d!2343803 (= c!1431104 (is-EmptyExpr!20710 r1!3330))))

(declare-fun lt!2670664 () Bool)

(declare-fun e!4600989 () Bool)

(assert (=> d!2343803 (= lt!2670664 e!4600989)))

(declare-fun c!1431105 () Bool)

(assert (=> d!2343803 (= c!1431105 (isEmpty!42104 (_1!38206 lt!2670616)))))

(assert (=> d!2343803 (validRegex!11126 r1!3330)))

(assert (=> d!2343803 (= (matchR!10176 r1!3330 (_1!38206 lt!2670616)) lt!2670664)))

(declare-fun bm!719348 () Bool)

(declare-fun call!719353 () Bool)

(assert (=> bm!719348 (= call!719353 (isEmpty!42104 (_1!38206 lt!2670616)))))

(declare-fun b!7763989 () Bool)

(declare-fun res!3095197 () Bool)

(declare-fun e!4600988 () Bool)

(assert (=> b!7763989 (=> res!3095197 e!4600988)))

(assert (=> b!7763989 (= res!3095197 (not (is-ElementMatch!20710 r1!3330)))))

(declare-fun e!4600990 () Bool)

(assert (=> b!7763989 (= e!4600990 e!4600988)))

(declare-fun b!7763990 () Bool)

(declare-fun res!3095195 () Bool)

(assert (=> b!7763990 (=> res!3095195 e!4600988)))

(declare-fun e!4600991 () Bool)

(assert (=> b!7763990 (= res!3095195 e!4600991)))

(declare-fun res!3095198 () Bool)

(assert (=> b!7763990 (=> (not res!3095198) (not e!4600991))))

(assert (=> b!7763990 (= res!3095198 lt!2670664)))

(declare-fun b!7763991 () Bool)

(assert (=> b!7763991 (= e!4600990 (not lt!2670664))))

(declare-fun b!7763992 () Bool)

(assert (=> b!7763992 (= e!4600993 e!4600990)))

(declare-fun c!1431106 () Bool)

(assert (=> b!7763992 (= c!1431106 (is-EmptyLang!20710 r1!3330))))

(declare-fun b!7763993 () Bool)

(assert (=> b!7763993 (= e!4600989 (nullable!9120 r1!3330))))

(declare-fun b!7763994 () Bool)

(assert (=> b!7763994 (= e!4600991 (= (head!15860 (_1!38206 lt!2670616)) (c!1431049 r1!3330)))))

(declare-fun b!7763995 () Bool)

(assert (=> b!7763995 (= e!4600989 (matchR!10176 (derivativeStep!6064 r1!3330 (head!15860 (_1!38206 lt!2670616))) (tail!15400 (_1!38206 lt!2670616))))))

(declare-fun b!7763996 () Bool)

(declare-fun res!3095200 () Bool)

(assert (=> b!7763996 (=> (not res!3095200) (not e!4600991))))

(assert (=> b!7763996 (= res!3095200 (not call!719353))))

(declare-fun b!7763997 () Bool)

(declare-fun e!4600992 () Bool)

(declare-fun e!4600994 () Bool)

(assert (=> b!7763997 (= e!4600992 e!4600994)))

(declare-fun res!3095199 () Bool)

(assert (=> b!7763997 (=> res!3095199 e!4600994)))

(assert (=> b!7763997 (= res!3095199 call!719353)))

(declare-fun b!7763998 () Bool)

(assert (=> b!7763998 (= e!4600993 (= lt!2670664 call!719353))))

(declare-fun b!7763999 () Bool)

(declare-fun res!3095194 () Bool)

(assert (=> b!7763999 (=> res!3095194 e!4600994)))

(assert (=> b!7763999 (= res!3095194 (not (isEmpty!42104 (tail!15400 (_1!38206 lt!2670616)))))))

(declare-fun b!7764000 () Bool)

(declare-fun res!3095196 () Bool)

(assert (=> b!7764000 (=> (not res!3095196) (not e!4600991))))

(assert (=> b!7764000 (= res!3095196 (isEmpty!42104 (tail!15400 (_1!38206 lt!2670616))))))

(declare-fun b!7764001 () Bool)

(assert (=> b!7764001 (= e!4600994 (not (= (head!15860 (_1!38206 lt!2670616)) (c!1431049 r1!3330))))))

(declare-fun b!7764002 () Bool)

(assert (=> b!7764002 (= e!4600988 e!4600992)))

(declare-fun res!3095201 () Bool)

(assert (=> b!7764002 (=> (not res!3095201) (not e!4600992))))

(assert (=> b!7764002 (= res!3095201 (not lt!2670664))))

(assert (= (and d!2343803 c!1431105) b!7763993))

(assert (= (and d!2343803 (not c!1431105)) b!7763995))

(assert (= (and d!2343803 c!1431104) b!7763998))

(assert (= (and d!2343803 (not c!1431104)) b!7763992))

(assert (= (and b!7763992 c!1431106) b!7763991))

(assert (= (and b!7763992 (not c!1431106)) b!7763989))

(assert (= (and b!7763989 (not res!3095197)) b!7763990))

(assert (= (and b!7763990 res!3095198) b!7763996))

(assert (= (and b!7763996 res!3095200) b!7764000))

(assert (= (and b!7764000 res!3095196) b!7763994))

(assert (= (and b!7763990 (not res!3095195)) b!7764002))

(assert (= (and b!7764002 res!3095201) b!7763997))

(assert (= (and b!7763997 (not res!3095199)) b!7763999))

(assert (= (and b!7763999 (not res!3095194)) b!7764001))

(assert (= (or b!7763998 b!7763997 b!7763996) bm!719348))

(declare-fun m!8221918 () Bool)

(assert (=> b!7763994 m!8221918))

(declare-fun m!8221920 () Bool)

(assert (=> d!2343803 m!8221920))

(assert (=> d!2343803 m!8221730))

(assert (=> bm!719348 m!8221920))

(assert (=> b!7764001 m!8221918))

(declare-fun m!8221922 () Bool)

(assert (=> b!7763993 m!8221922))

(assert (=> b!7763995 m!8221918))

(assert (=> b!7763995 m!8221918))

(declare-fun m!8221924 () Bool)

(assert (=> b!7763995 m!8221924))

(declare-fun m!8221926 () Bool)

(assert (=> b!7763995 m!8221926))

(assert (=> b!7763995 m!8221924))

(assert (=> b!7763995 m!8221926))

(declare-fun m!8221928 () Bool)

(assert (=> b!7763995 m!8221928))

(assert (=> b!7764000 m!8221926))

(assert (=> b!7764000 m!8221926))

(declare-fun m!8221930 () Bool)

(assert (=> b!7764000 m!8221930))

(assert (=> b!7763999 m!8221926))

(assert (=> b!7763999 m!8221926))

(assert (=> b!7763999 m!8221930))

(assert (=> b!7763677 d!2343803))

(declare-fun d!2343805 () Bool)

(declare-fun res!3095202 () Bool)

(declare-fun e!4601000 () Bool)

(assert (=> d!2343805 (=> res!3095202 e!4601000)))

(assert (=> d!2343805 (= res!3095202 (is-ElementMatch!20710 r2!3230))))

(assert (=> d!2343805 (= (validRegex!11126 r2!3230) e!4601000)))

(declare-fun bm!719349 () Bool)

(declare-fun call!719356 () Bool)

(declare-fun c!1431107 () Bool)

(assert (=> bm!719349 (= call!719356 (validRegex!11126 (ite c!1431107 (regOne!41933 r2!3230) (regOne!41932 r2!3230))))))

(declare-fun b!7764019 () Bool)

(declare-fun e!4601003 () Bool)

(declare-fun e!4601005 () Bool)

(assert (=> b!7764019 (= e!4601003 e!4601005)))

(assert (=> b!7764019 (= c!1431107 (is-Union!20710 r2!3230))))

(declare-fun bm!719350 () Bool)

(declare-fun call!719355 () Bool)

(declare-fun call!719354 () Bool)

(assert (=> bm!719350 (= call!719355 call!719354)))

(declare-fun b!7764020 () Bool)

(declare-fun e!4600999 () Bool)

(assert (=> b!7764020 (= e!4601003 e!4600999)))

(declare-fun res!3095204 () Bool)

(assert (=> b!7764020 (= res!3095204 (not (nullable!9120 (reg!21039 r2!3230))))))

(assert (=> b!7764020 (=> (not res!3095204) (not e!4600999))))

(declare-fun b!7764021 () Bool)

(assert (=> b!7764021 (= e!4601000 e!4601003)))

(declare-fun c!1431108 () Bool)

(assert (=> b!7764021 (= c!1431108 (is-Star!20710 r2!3230))))

(declare-fun b!7764022 () Bool)

(declare-fun e!4601001 () Bool)

(assert (=> b!7764022 (= e!4601001 call!719355)))

(declare-fun b!7764023 () Bool)

(declare-fun res!3095206 () Bool)

(declare-fun e!4601004 () Bool)

(assert (=> b!7764023 (=> res!3095206 e!4601004)))

(assert (=> b!7764023 (= res!3095206 (not (is-Concat!29555 r2!3230)))))

(assert (=> b!7764023 (= e!4601005 e!4601004)))

(declare-fun bm!719351 () Bool)

(assert (=> bm!719351 (= call!719354 (validRegex!11126 (ite c!1431108 (reg!21039 r2!3230) (ite c!1431107 (regTwo!41933 r2!3230) (regTwo!41932 r2!3230)))))))

(declare-fun b!7764024 () Bool)

(declare-fun res!3095203 () Bool)

(assert (=> b!7764024 (=> (not res!3095203) (not e!4601001))))

(assert (=> b!7764024 (= res!3095203 call!719356)))

(assert (=> b!7764024 (= e!4601005 e!4601001)))

(declare-fun b!7764025 () Bool)

(assert (=> b!7764025 (= e!4600999 call!719354)))

(declare-fun b!7764026 () Bool)

(declare-fun e!4601002 () Bool)

(assert (=> b!7764026 (= e!4601004 e!4601002)))

(declare-fun res!3095205 () Bool)

(assert (=> b!7764026 (=> (not res!3095205) (not e!4601002))))

(assert (=> b!7764026 (= res!3095205 call!719356)))

(declare-fun b!7764027 () Bool)

(assert (=> b!7764027 (= e!4601002 call!719355)))

(assert (= (and d!2343805 (not res!3095202)) b!7764021))

(assert (= (and b!7764021 c!1431108) b!7764020))

(assert (= (and b!7764021 (not c!1431108)) b!7764019))

(assert (= (and b!7764020 res!3095204) b!7764025))

(assert (= (and b!7764019 c!1431107) b!7764024))

(assert (= (and b!7764019 (not c!1431107)) b!7764023))

(assert (= (and b!7764024 res!3095203) b!7764022))

(assert (= (and b!7764023 (not res!3095206)) b!7764026))

(assert (= (and b!7764026 res!3095205) b!7764027))

(assert (= (or b!7764024 b!7764026) bm!719349))

(assert (= (or b!7764022 b!7764027) bm!719350))

(assert (= (or b!7764025 bm!719350) bm!719351))

(declare-fun m!8221932 () Bool)

(assert (=> bm!719349 m!8221932))

(declare-fun m!8221934 () Bool)

(assert (=> b!7764020 m!8221934))

(declare-fun m!8221936 () Bool)

(assert (=> bm!719351 m!8221936))

(assert (=> b!7763672 d!2343805))

(declare-fun e!4601017 () Bool)

(assert (=> b!7763683 (= tp!2280388 e!4601017)))

(declare-fun b!7764069 () Bool)

(declare-fun tp!2280495 () Bool)

(assert (=> b!7764069 (= e!4601017 tp!2280495)))

(declare-fun b!7764068 () Bool)

(declare-fun tp!2280497 () Bool)

(declare-fun tp!2280493 () Bool)

(assert (=> b!7764068 (= e!4601017 (and tp!2280497 tp!2280493))))

(declare-fun b!7764067 () Bool)

(assert (=> b!7764067 (= e!4601017 tp_is_empty!51775)))

(declare-fun b!7764070 () Bool)

(declare-fun tp!2280496 () Bool)

(declare-fun tp!2280494 () Bool)

(assert (=> b!7764070 (= e!4601017 (and tp!2280496 tp!2280494))))

(assert (= (and b!7763683 (is-ElementMatch!20710 (regOne!41932 r2!3230))) b!7764067))

(assert (= (and b!7763683 (is-Concat!29555 (regOne!41932 r2!3230))) b!7764068))

(assert (= (and b!7763683 (is-Star!20710 (regOne!41932 r2!3230))) b!7764069))

(assert (= (and b!7763683 (is-Union!20710 (regOne!41932 r2!3230))) b!7764070))

(declare-fun e!4601019 () Bool)

(assert (=> b!7763683 (= tp!2280396 e!4601019)))

(declare-fun b!7764077 () Bool)

(declare-fun tp!2280505 () Bool)

(assert (=> b!7764077 (= e!4601019 tp!2280505)))

(declare-fun b!7764076 () Bool)

(declare-fun tp!2280507 () Bool)

(declare-fun tp!2280503 () Bool)

(assert (=> b!7764076 (= e!4601019 (and tp!2280507 tp!2280503))))

(declare-fun b!7764075 () Bool)

(assert (=> b!7764075 (= e!4601019 tp_is_empty!51775)))

(declare-fun b!7764078 () Bool)

(declare-fun tp!2280506 () Bool)

(declare-fun tp!2280504 () Bool)

(assert (=> b!7764078 (= e!4601019 (and tp!2280506 tp!2280504))))

(assert (= (and b!7763683 (is-ElementMatch!20710 (regTwo!41932 r2!3230))) b!7764075))

(assert (= (and b!7763683 (is-Concat!29555 (regTwo!41932 r2!3230))) b!7764076))

(assert (= (and b!7763683 (is-Star!20710 (regTwo!41932 r2!3230))) b!7764077))

(assert (= (and b!7763683 (is-Union!20710 (regTwo!41932 r2!3230))) b!7764078))

(declare-fun e!4601021 () Bool)

(assert (=> b!7763684 (= tp!2280393 e!4601021)))

(declare-fun b!7764085 () Bool)

(declare-fun tp!2280515 () Bool)

(assert (=> b!7764085 (= e!4601021 tp!2280515)))

(declare-fun b!7764084 () Bool)

(declare-fun tp!2280517 () Bool)

(declare-fun tp!2280513 () Bool)

(assert (=> b!7764084 (= e!4601021 (and tp!2280517 tp!2280513))))

(declare-fun b!7764083 () Bool)

(assert (=> b!7764083 (= e!4601021 tp_is_empty!51775)))

(declare-fun b!7764086 () Bool)

(declare-fun tp!2280516 () Bool)

(declare-fun tp!2280514 () Bool)

(assert (=> b!7764086 (= e!4601021 (and tp!2280516 tp!2280514))))

(assert (= (and b!7763684 (is-ElementMatch!20710 (regOne!41933 r1!3330))) b!7764083))

(assert (= (and b!7763684 (is-Concat!29555 (regOne!41933 r1!3330))) b!7764084))

(assert (= (and b!7763684 (is-Star!20710 (regOne!41933 r1!3330))) b!7764085))

(assert (= (and b!7763684 (is-Union!20710 (regOne!41933 r1!3330))) b!7764086))

(declare-fun e!4601022 () Bool)

(assert (=> b!7763684 (= tp!2280391 e!4601022)))

(declare-fun b!7764089 () Bool)

(declare-fun tp!2280520 () Bool)

(assert (=> b!7764089 (= e!4601022 tp!2280520)))

(declare-fun b!7764088 () Bool)

(declare-fun tp!2280522 () Bool)

(declare-fun tp!2280518 () Bool)

(assert (=> b!7764088 (= e!4601022 (and tp!2280522 tp!2280518))))

(declare-fun b!7764087 () Bool)

(assert (=> b!7764087 (= e!4601022 tp_is_empty!51775)))

(declare-fun b!7764090 () Bool)

(declare-fun tp!2280521 () Bool)

(declare-fun tp!2280519 () Bool)

(assert (=> b!7764090 (= e!4601022 (and tp!2280521 tp!2280519))))

(assert (= (and b!7763684 (is-ElementMatch!20710 (regTwo!41933 r1!3330))) b!7764087))

(assert (= (and b!7763684 (is-Concat!29555 (regTwo!41933 r1!3330))) b!7764088))

(assert (= (and b!7763684 (is-Star!20710 (regTwo!41933 r1!3330))) b!7764089))

(assert (= (and b!7763684 (is-Union!20710 (regTwo!41933 r1!3330))) b!7764090))

(declare-fun e!4601024 () Bool)

(assert (=> b!7763674 (= tp!2280389 e!4601024)))

(declare-fun b!7764095 () Bool)

(declare-fun tp!2280525 () Bool)

(assert (=> b!7764095 (= e!4601024 tp!2280525)))

(declare-fun b!7764094 () Bool)

(declare-fun tp!2280527 () Bool)

(declare-fun tp!2280523 () Bool)

(assert (=> b!7764094 (= e!4601024 (and tp!2280527 tp!2280523))))

(declare-fun b!7764093 () Bool)

(assert (=> b!7764093 (= e!4601024 tp_is_empty!51775)))

(declare-fun b!7764096 () Bool)

(declare-fun tp!2280526 () Bool)

(declare-fun tp!2280524 () Bool)

(assert (=> b!7764096 (= e!4601024 (and tp!2280526 tp!2280524))))

(assert (= (and b!7763674 (is-ElementMatch!20710 (reg!21039 r1!3330))) b!7764093))

(assert (= (and b!7763674 (is-Concat!29555 (reg!21039 r1!3330))) b!7764094))

(assert (= (and b!7763674 (is-Star!20710 (reg!21039 r1!3330))) b!7764095))

(assert (= (and b!7763674 (is-Union!20710 (reg!21039 r1!3330))) b!7764096))

(declare-fun e!4601025 () Bool)

(assert (=> b!7763685 (= tp!2280392 e!4601025)))

(declare-fun b!7764099 () Bool)

(declare-fun tp!2280530 () Bool)

(assert (=> b!7764099 (= e!4601025 tp!2280530)))

(declare-fun b!7764098 () Bool)

(declare-fun tp!2280532 () Bool)

(declare-fun tp!2280528 () Bool)

(assert (=> b!7764098 (= e!4601025 (and tp!2280532 tp!2280528))))

(declare-fun b!7764097 () Bool)

(assert (=> b!7764097 (= e!4601025 tp_is_empty!51775)))

(declare-fun b!7764100 () Bool)

(declare-fun tp!2280531 () Bool)

(declare-fun tp!2280529 () Bool)

(assert (=> b!7764100 (= e!4601025 (and tp!2280531 tp!2280529))))

(assert (= (and b!7763685 (is-ElementMatch!20710 (reg!21039 r2!3230))) b!7764097))

(assert (= (and b!7763685 (is-Concat!29555 (reg!21039 r2!3230))) b!7764098))

(assert (= (and b!7763685 (is-Star!20710 (reg!21039 r2!3230))) b!7764099))

(assert (= (and b!7763685 (is-Union!20710 (reg!21039 r2!3230))) b!7764100))

(declare-fun b!7764105 () Bool)

(declare-fun e!4601028 () Bool)

(declare-fun tp!2280535 () Bool)

(assert (=> b!7764105 (= e!4601028 (and tp_is_empty!51775 tp!2280535))))

(assert (=> b!7763680 (= tp!2280394 e!4601028)))

(assert (= (and b!7763680 (is-Cons!73429 (t!388288 s!10216))) b!7764105))

(declare-fun e!4601029 () Bool)

(assert (=> b!7763686 (= tp!2280390 e!4601029)))

(declare-fun b!7764108 () Bool)

(declare-fun tp!2280538 () Bool)

(assert (=> b!7764108 (= e!4601029 tp!2280538)))

(declare-fun b!7764107 () Bool)

(declare-fun tp!2280540 () Bool)

(declare-fun tp!2280536 () Bool)

(assert (=> b!7764107 (= e!4601029 (and tp!2280540 tp!2280536))))

(declare-fun b!7764106 () Bool)

(assert (=> b!7764106 (= e!4601029 tp_is_empty!51775)))

(declare-fun b!7764109 () Bool)

(declare-fun tp!2280539 () Bool)

(declare-fun tp!2280537 () Bool)

(assert (=> b!7764109 (= e!4601029 (and tp!2280539 tp!2280537))))

(assert (= (and b!7763686 (is-ElementMatch!20710 (regOne!41933 r2!3230))) b!7764106))

(assert (= (and b!7763686 (is-Concat!29555 (regOne!41933 r2!3230))) b!7764107))

(assert (= (and b!7763686 (is-Star!20710 (regOne!41933 r2!3230))) b!7764108))

(assert (= (and b!7763686 (is-Union!20710 (regOne!41933 r2!3230))) b!7764109))

(declare-fun e!4601030 () Bool)

(assert (=> b!7763686 (= tp!2280387 e!4601030)))

(declare-fun b!7764112 () Bool)

(declare-fun tp!2280543 () Bool)

(assert (=> b!7764112 (= e!4601030 tp!2280543)))

(declare-fun b!7764111 () Bool)

(declare-fun tp!2280545 () Bool)

(declare-fun tp!2280541 () Bool)

(assert (=> b!7764111 (= e!4601030 (and tp!2280545 tp!2280541))))

(declare-fun b!7764110 () Bool)

(assert (=> b!7764110 (= e!4601030 tp_is_empty!51775)))

(declare-fun b!7764113 () Bool)

(declare-fun tp!2280544 () Bool)

(declare-fun tp!2280542 () Bool)

(assert (=> b!7764113 (= e!4601030 (and tp!2280544 tp!2280542))))

(assert (= (and b!7763686 (is-ElementMatch!20710 (regTwo!41933 r2!3230))) b!7764110))

(assert (= (and b!7763686 (is-Concat!29555 (regTwo!41933 r2!3230))) b!7764111))

(assert (= (and b!7763686 (is-Star!20710 (regTwo!41933 r2!3230))) b!7764112))

(assert (= (and b!7763686 (is-Union!20710 (regTwo!41933 r2!3230))) b!7764113))

(declare-fun e!4601031 () Bool)

(assert (=> b!7763681 (= tp!2280386 e!4601031)))

(declare-fun b!7764116 () Bool)

(declare-fun tp!2280548 () Bool)

(assert (=> b!7764116 (= e!4601031 tp!2280548)))

(declare-fun b!7764115 () Bool)

(declare-fun tp!2280550 () Bool)

(declare-fun tp!2280546 () Bool)

(assert (=> b!7764115 (= e!4601031 (and tp!2280550 tp!2280546))))

(declare-fun b!7764114 () Bool)

(assert (=> b!7764114 (= e!4601031 tp_is_empty!51775)))

(declare-fun b!7764117 () Bool)

(declare-fun tp!2280549 () Bool)

(declare-fun tp!2280547 () Bool)

(assert (=> b!7764117 (= e!4601031 (and tp!2280549 tp!2280547))))

(assert (= (and b!7763681 (is-ElementMatch!20710 (regOne!41932 r1!3330))) b!7764114))

(assert (= (and b!7763681 (is-Concat!29555 (regOne!41932 r1!3330))) b!7764115))

(assert (= (and b!7763681 (is-Star!20710 (regOne!41932 r1!3330))) b!7764116))

(assert (= (and b!7763681 (is-Union!20710 (regOne!41932 r1!3330))) b!7764117))

(declare-fun e!4601032 () Bool)

(assert (=> b!7763681 (= tp!2280395 e!4601032)))

(declare-fun b!7764120 () Bool)

(declare-fun tp!2280553 () Bool)

(assert (=> b!7764120 (= e!4601032 tp!2280553)))

(declare-fun b!7764119 () Bool)

(declare-fun tp!2280555 () Bool)

(declare-fun tp!2280551 () Bool)

(assert (=> b!7764119 (= e!4601032 (and tp!2280555 tp!2280551))))

(declare-fun b!7764118 () Bool)

(assert (=> b!7764118 (= e!4601032 tp_is_empty!51775)))

(declare-fun b!7764121 () Bool)

(declare-fun tp!2280554 () Bool)

(declare-fun tp!2280552 () Bool)

(assert (=> b!7764121 (= e!4601032 (and tp!2280554 tp!2280552))))

(assert (= (and b!7763681 (is-ElementMatch!20710 (regTwo!41932 r1!3330))) b!7764118))

(assert (= (and b!7763681 (is-Concat!29555 (regTwo!41932 r1!3330))) b!7764119))

(assert (= (and b!7763681 (is-Star!20710 (regTwo!41932 r1!3330))) b!7764120))

(assert (= (and b!7763681 (is-Union!20710 (regTwo!41932 r1!3330))) b!7764121))

(declare-fun b_lambda!289473 () Bool)

(assert (= b_lambda!289469 (or b!7763682 b_lambda!289473)))

(declare-fun bs!1966004 () Bool)

(declare-fun d!2343809 () Bool)

(assert (= bs!1966004 (and d!2343809 b!7763682)))

(declare-fun res!3095209 () Bool)

(declare-fun e!4601033 () Bool)

(assert (=> bs!1966004 (=> (not res!3095209) (not e!4601033))))

(assert (=> bs!1966004 (= res!3095209 (= (++!17885 (_1!38206 (tuple2!69807 (_1!38206 lt!2670616) (_2!38206 lt!2670616))) (_2!38206 (tuple2!69807 (_1!38206 lt!2670616) (_2!38206 lt!2670616)))) s!10216))))

(assert (=> bs!1966004 (= (dynLambda!29995 lambda!472072 (tuple2!69807 (_1!38206 lt!2670616) (_2!38206 lt!2670616))) e!4601033)))

(declare-fun b!7764122 () Bool)

(declare-fun res!3095210 () Bool)

(assert (=> b!7764122 (=> (not res!3095210) (not e!4601033))))

(assert (=> b!7764122 (= res!3095210 (matchR!10176 r1!3330 (_1!38206 (tuple2!69807 (_1!38206 lt!2670616) (_2!38206 lt!2670616)))))))

(declare-fun b!7764123 () Bool)

(assert (=> b!7764123 (= e!4601033 (matchR!10176 r2!3230 (_2!38206 (tuple2!69807 (_1!38206 lt!2670616) (_2!38206 lt!2670616)))))))

(assert (= (and bs!1966004 res!3095209) b!7764122))

(assert (= (and b!7764122 res!3095210) b!7764123))

(declare-fun m!8221944 () Bool)

(assert (=> bs!1966004 m!8221944))

(declare-fun m!8221946 () Bool)

(assert (=> b!7764122 m!8221946))

(declare-fun m!8221948 () Bool)

(assert (=> b!7764123 m!8221948))

(assert (=> d!2343799 d!2343809))

(push 1)

(assert (not b!7764078))

(assert (not b!7764119))

(assert (not b!7764115))

(assert (not b!7764109))

(assert (not bm!719349))

(assert (not b!7764070))

(assert (not b!7763869))

(assert tp_is_empty!51775)

(assert (not b!7764112))

(assert (not b!7764088))

(assert (not b!7764085))

(assert (not b!7763995))

(assert (not b!7764105))

(assert (not b!7764108))

(assert (not b!7763863))

(assert (not bm!719337))

(assert (not b!7763999))

(assert (not b!7764122))

(assert (not b!7764068))

(assert (not bm!719351))

(assert (not b!7763967))

(assert (not b!7764096))

(assert (not b!7763891))

(assert (not b!7763993))

(assert (not bs!1966004))

(assert (not b!7764116))

(assert (not b!7764001))

(assert (not bm!719348))

(assert (not bm!719347))

(assert (not b!7764086))

(assert (not d!2343803))

(assert (not b!7764084))

(assert (not b!7763862))

(assert (not b!7764089))

(assert (not b!7763971))

(assert (not b!7764020))

(assert (not b!7764107))

(assert (not b!7764077))

(assert (not b!7764095))

(assert (not b!7763865))

(assert (not d!2343785))

(assert (not b!7764121))

(assert (not b!7764100))

(assert (not b_lambda!289473))

(assert (not b!7764111))

(assert (not b!7764090))

(assert (not b!7763794))

(assert (not b!7763867))

(assert (not b!7764123))

(assert (not d!2343773))

(assert (not b!7763994))

(assert (not d!2343781))

(assert (not b!7764120))

(assert (not d!2343799))

(assert (not b!7764094))

(assert (not bm!719335))

(assert (not b!7763965))

(assert (not b!7763866))

(assert (not b!7764117))

(assert (not b!7763973))

(assert (not d!2343797))

(assert (not b!7764098))

(assert (not b!7764113))

(assert (not b!7763966))

(assert (not b!7764076))

(assert (not b!7763890))

(assert (not b!7764099))

(assert (not b!7764069))

(assert (not b!7764000))

(assert (not b!7763972))

(assert (not d!2343775))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

