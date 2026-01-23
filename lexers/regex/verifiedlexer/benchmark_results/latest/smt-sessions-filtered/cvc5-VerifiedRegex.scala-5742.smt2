; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!284834 () Bool)

(assert start!284834)

(declare-fun b!2928703 () Bool)

(assert (=> b!2928703 true))

(assert (=> b!2928703 true))

(assert (=> b!2928703 true))

(declare-fun lambda!108884 () Int)

(declare-fun lambda!108883 () Int)

(assert (=> b!2928703 (not (= lambda!108884 lambda!108883))))

(assert (=> b!2928703 true))

(assert (=> b!2928703 true))

(assert (=> b!2928703 true))

(declare-fun b!2928696 () Bool)

(declare-fun e!1847032 () Bool)

(declare-datatypes ((C!18254 0))(
  ( (C!18255 (val!11163 Int)) )
))
(declare-datatypes ((Regex!9034 0))(
  ( (ElementMatch!9034 (c!478304 C!18254)) (Concat!14355 (regOne!18580 Regex!9034) (regTwo!18580 Regex!9034)) (EmptyExpr!9034) (Star!9034 (reg!9363 Regex!9034)) (EmptyLang!9034) (Union!9034 (regOne!18581 Regex!9034) (regTwo!18581 Regex!9034)) )
))
(declare-fun r!17423 () Regex!9034)

(declare-fun validRegex!3767 (Regex!9034) Bool)

(assert (=> b!2928696 (= e!1847032 (validRegex!3767 (reg!9363 r!17423)))))

(declare-fun b!2928697 () Bool)

(declare-fun e!1847034 () Bool)

(declare-fun tp!938846 () Bool)

(declare-fun tp!938842 () Bool)

(assert (=> b!2928697 (= e!1847034 (and tp!938846 tp!938842))))

(declare-fun b!2928698 () Bool)

(declare-fun tp!938845 () Bool)

(assert (=> b!2928698 (= e!1847034 tp!938845)))

(declare-fun b!2928699 () Bool)

(declare-fun e!1847036 () Bool)

(declare-fun e!1847033 () Bool)

(assert (=> b!2928699 (= e!1847036 (not e!1847033))))

(declare-fun res!1208852 () Bool)

(assert (=> b!2928699 (=> res!1208852 e!1847033)))

(declare-fun lt!1027268 () Bool)

(assert (=> b!2928699 (= res!1208852 (or (not lt!1027268) (is-Concat!14355 r!17423) (is-Union!9034 r!17423) (not (is-Star!9034 r!17423))))))

(declare-datatypes ((List!34899 0))(
  ( (Nil!34775) (Cons!34775 (h!40195 C!18254) (t!233964 List!34899)) )
))
(declare-fun s!11993 () List!34899)

(declare-fun matchRSpec!1171 (Regex!9034 List!34899) Bool)

(assert (=> b!2928699 (= lt!1027268 (matchRSpec!1171 r!17423 s!11993))))

(declare-fun matchR!3916 (Regex!9034 List!34899) Bool)

(assert (=> b!2928699 (= lt!1027268 (matchR!3916 r!17423 s!11993))))

(declare-datatypes ((Unit!48407 0))(
  ( (Unit!48408) )
))
(declare-fun lt!1027273 () Unit!48407)

(declare-fun mainMatchTheorem!1171 (Regex!9034 List!34899) Unit!48407)

(assert (=> b!2928699 (= lt!1027273 (mainMatchTheorem!1171 r!17423 s!11993))))

(declare-fun b!2928700 () Bool)

(declare-fun e!1847035 () Bool)

(declare-fun tp_is_empty!15631 () Bool)

(declare-fun tp!938847 () Bool)

(assert (=> b!2928700 (= e!1847035 (and tp_is_empty!15631 tp!938847))))

(declare-fun res!1208849 () Bool)

(assert (=> start!284834 (=> (not res!1208849) (not e!1847036))))

(assert (=> start!284834 (= res!1208849 (validRegex!3767 r!17423))))

(assert (=> start!284834 e!1847036))

(assert (=> start!284834 e!1847034))

(assert (=> start!284834 e!1847035))

(declare-fun b!2928701 () Bool)

(declare-fun res!1208850 () Bool)

(assert (=> b!2928701 (=> res!1208850 e!1847033)))

(declare-fun isEmpty!19020 (List!34899) Bool)

(assert (=> b!2928701 (= res!1208850 (isEmpty!19020 s!11993))))

(declare-fun b!2928702 () Bool)

(assert (=> b!2928702 (= e!1847034 tp_is_empty!15631)))

(assert (=> b!2928703 (= e!1847033 e!1847032)))

(declare-fun res!1208851 () Bool)

(assert (=> b!2928703 (=> res!1208851 e!1847032)))

(declare-fun lt!1027272 () Bool)

(assert (=> b!2928703 (= res!1208851 (not lt!1027272))))

(declare-fun Exists!1396 (Int) Bool)

(assert (=> b!2928703 (= (Exists!1396 lambda!108883) (Exists!1396 lambda!108884))))

(declare-fun lt!1027269 () Unit!48407)

(declare-fun lemmaExistCutMatchRandMatchRSpecEquivalentStar!207 (Regex!9034 List!34899) Unit!48407)

(assert (=> b!2928703 (= lt!1027269 (lemmaExistCutMatchRandMatchRSpecEquivalentStar!207 (reg!9363 r!17423) s!11993))))

(assert (=> b!2928703 (= lt!1027272 (Exists!1396 lambda!108883))))

(declare-fun lt!1027270 () Regex!9034)

(declare-datatypes ((tuple2!33718 0))(
  ( (tuple2!33719 (_1!19991 List!34899) (_2!19991 List!34899)) )
))
(declare-datatypes ((Option!6591 0))(
  ( (None!6590) (Some!6590 (v!34724 tuple2!33718)) )
))
(declare-fun isDefined!5142 (Option!6591) Bool)

(declare-fun findConcatSeparation!985 (Regex!9034 Regex!9034 List!34899 List!34899 List!34899) Option!6591)

(assert (=> b!2928703 (= lt!1027272 (isDefined!5142 (findConcatSeparation!985 (reg!9363 r!17423) lt!1027270 Nil!34775 s!11993 s!11993)))))

(declare-fun lt!1027271 () Unit!48407)

(declare-fun lemmaFindConcatSeparationEquivalentToExists!767 (Regex!9034 Regex!9034 List!34899) Unit!48407)

(assert (=> b!2928703 (= lt!1027271 (lemmaFindConcatSeparationEquivalentToExists!767 (reg!9363 r!17423) lt!1027270 s!11993))))

(assert (=> b!2928703 (= lt!1027270 (Star!9034 (reg!9363 r!17423)))))

(declare-fun b!2928704 () Bool)

(declare-fun tp!938844 () Bool)

(declare-fun tp!938843 () Bool)

(assert (=> b!2928704 (= e!1847034 (and tp!938844 tp!938843))))

(assert (= (and start!284834 res!1208849) b!2928699))

(assert (= (and b!2928699 (not res!1208852)) b!2928701))

(assert (= (and b!2928701 (not res!1208850)) b!2928703))

(assert (= (and b!2928703 (not res!1208851)) b!2928696))

(assert (= (and start!284834 (is-ElementMatch!9034 r!17423)) b!2928702))

(assert (= (and start!284834 (is-Concat!14355 r!17423)) b!2928697))

(assert (= (and start!284834 (is-Star!9034 r!17423)) b!2928698))

(assert (= (and start!284834 (is-Union!9034 r!17423)) b!2928704))

(assert (= (and start!284834 (is-Cons!34775 s!11993)) b!2928700))

(declare-fun m!3319977 () Bool)

(assert (=> b!2928701 m!3319977))

(declare-fun m!3319979 () Bool)

(assert (=> b!2928699 m!3319979))

(declare-fun m!3319981 () Bool)

(assert (=> b!2928699 m!3319981))

(declare-fun m!3319983 () Bool)

(assert (=> b!2928699 m!3319983))

(declare-fun m!3319985 () Bool)

(assert (=> start!284834 m!3319985))

(declare-fun m!3319987 () Bool)

(assert (=> b!2928703 m!3319987))

(declare-fun m!3319989 () Bool)

(assert (=> b!2928703 m!3319989))

(assert (=> b!2928703 m!3319987))

(declare-fun m!3319991 () Bool)

(assert (=> b!2928703 m!3319991))

(declare-fun m!3319993 () Bool)

(assert (=> b!2928703 m!3319993))

(assert (=> b!2928703 m!3319991))

(declare-fun m!3319995 () Bool)

(assert (=> b!2928703 m!3319995))

(declare-fun m!3319997 () Bool)

(assert (=> b!2928703 m!3319997))

(declare-fun m!3319999 () Bool)

(assert (=> b!2928696 m!3319999))

(push 1)

(assert (not b!2928701))

(assert tp_is_empty!15631)

(assert (not b!2928696))

(assert (not start!284834))

(assert (not b!2928699))

(assert (not b!2928700))

(assert (not b!2928698))

(assert (not b!2928704))

(assert (not b!2928703))

(assert (not b!2928697))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun b!2928772 () Bool)

(declare-fun res!1208893 () Bool)

(declare-fun e!1847072 () Bool)

(assert (=> b!2928772 (=> res!1208893 e!1847072)))

(assert (=> b!2928772 (= res!1208893 (not (is-Concat!14355 (reg!9363 r!17423))))))

(declare-fun e!1847074 () Bool)

(assert (=> b!2928772 (= e!1847074 e!1847072)))

(declare-fun b!2928773 () Bool)

(declare-fun e!1847076 () Bool)

(assert (=> b!2928773 (= e!1847072 e!1847076)))

(declare-fun res!1208891 () Bool)

(assert (=> b!2928773 (=> (not res!1208891) (not e!1847076))))

(declare-fun call!192194 () Bool)

(assert (=> b!2928773 (= res!1208891 call!192194)))

(declare-fun bm!192188 () Bool)

(declare-fun call!192193 () Bool)

(declare-fun call!192195 () Bool)

(assert (=> bm!192188 (= call!192193 call!192195)))

(declare-fun b!2928774 () Bool)

(declare-fun e!1847075 () Bool)

(assert (=> b!2928774 (= e!1847075 call!192195)))

(declare-fun d!839143 () Bool)

(declare-fun res!1208890 () Bool)

(declare-fun e!1847078 () Bool)

(assert (=> d!839143 (=> res!1208890 e!1847078)))

(assert (=> d!839143 (= res!1208890 (is-ElementMatch!9034 (reg!9363 r!17423)))))

(assert (=> d!839143 (= (validRegex!3767 (reg!9363 r!17423)) e!1847078)))

(declare-fun bm!192189 () Bool)

(declare-fun c!478311 () Bool)

(assert (=> bm!192189 (= call!192194 (validRegex!3767 (ite c!478311 (regTwo!18581 (reg!9363 r!17423)) (regOne!18580 (reg!9363 r!17423)))))))

(declare-fun b!2928775 () Bool)

(declare-fun e!1847073 () Bool)

(assert (=> b!2928775 (= e!1847073 call!192194)))

(declare-fun b!2928776 () Bool)

(declare-fun e!1847077 () Bool)

(assert (=> b!2928776 (= e!1847077 e!1847075)))

(declare-fun res!1208889 () Bool)

(declare-fun nullable!2842 (Regex!9034) Bool)

(assert (=> b!2928776 (= res!1208889 (not (nullable!2842 (reg!9363 (reg!9363 r!17423)))))))

(assert (=> b!2928776 (=> (not res!1208889) (not e!1847075))))

(declare-fun b!2928777 () Bool)

(declare-fun res!1208892 () Bool)

(assert (=> b!2928777 (=> (not res!1208892) (not e!1847073))))

(assert (=> b!2928777 (= res!1208892 call!192193)))

(assert (=> b!2928777 (= e!1847074 e!1847073)))

(declare-fun b!2928778 () Bool)

(assert (=> b!2928778 (= e!1847076 call!192193)))

(declare-fun b!2928779 () Bool)

(assert (=> b!2928779 (= e!1847077 e!1847074)))

(assert (=> b!2928779 (= c!478311 (is-Union!9034 (reg!9363 r!17423)))))

(declare-fun b!2928780 () Bool)

(assert (=> b!2928780 (= e!1847078 e!1847077)))

(declare-fun c!478310 () Bool)

(assert (=> b!2928780 (= c!478310 (is-Star!9034 (reg!9363 r!17423)))))

(declare-fun bm!192190 () Bool)

(assert (=> bm!192190 (= call!192195 (validRegex!3767 (ite c!478310 (reg!9363 (reg!9363 r!17423)) (ite c!478311 (regOne!18581 (reg!9363 r!17423)) (regTwo!18580 (reg!9363 r!17423))))))))

(assert (= (and d!839143 (not res!1208890)) b!2928780))

(assert (= (and b!2928780 c!478310) b!2928776))

(assert (= (and b!2928780 (not c!478310)) b!2928779))

(assert (= (and b!2928776 res!1208889) b!2928774))

(assert (= (and b!2928779 c!478311) b!2928777))

(assert (= (and b!2928779 (not c!478311)) b!2928772))

(assert (= (and b!2928777 res!1208892) b!2928775))

(assert (= (and b!2928772 (not res!1208893)) b!2928773))

(assert (= (and b!2928773 res!1208891) b!2928778))

(assert (= (or b!2928777 b!2928778) bm!192188))

(assert (= (or b!2928775 b!2928773) bm!192189))

(assert (= (or b!2928774 bm!192188) bm!192190))

(declare-fun m!3320025 () Bool)

(assert (=> bm!192189 m!3320025))

(declare-fun m!3320027 () Bool)

(assert (=> b!2928776 m!3320027))

(declare-fun m!3320029 () Bool)

(assert (=> bm!192190 m!3320029))

(assert (=> b!2928696 d!839143))

(declare-fun d!839147 () Bool)

(assert (=> d!839147 (= (isEmpty!19020 s!11993) (is-Nil!34775 s!11993))))

(assert (=> b!2928701 d!839147))

(declare-fun b!2928803 () Bool)

(declare-fun e!1847094 () Bool)

(declare-fun lt!1027302 () Option!6591)

(declare-fun ++!8292 (List!34899 List!34899) List!34899)

(declare-fun get!10605 (Option!6591) tuple2!33718)

(assert (=> b!2928803 (= e!1847094 (= (++!8292 (_1!19991 (get!10605 lt!1027302)) (_2!19991 (get!10605 lt!1027302))) s!11993))))

(declare-fun b!2928804 () Bool)

(declare-fun e!1847093 () Bool)

(assert (=> b!2928804 (= e!1847093 (matchR!3916 lt!1027270 s!11993))))

(declare-fun b!2928805 () Bool)

(declare-fun e!1847091 () Option!6591)

(assert (=> b!2928805 (= e!1847091 None!6590)))

(declare-fun b!2928806 () Bool)

(declare-fun e!1847092 () Option!6591)

(assert (=> b!2928806 (= e!1847092 e!1847091)))

(declare-fun c!478316 () Bool)

(assert (=> b!2928806 (= c!478316 (is-Nil!34775 s!11993))))

(declare-fun b!2928807 () Bool)

(declare-fun res!1208911 () Bool)

(assert (=> b!2928807 (=> (not res!1208911) (not e!1847094))))

(assert (=> b!2928807 (= res!1208911 (matchR!3916 lt!1027270 (_2!19991 (get!10605 lt!1027302))))))

(declare-fun d!839149 () Bool)

(declare-fun e!1847095 () Bool)

(assert (=> d!839149 e!1847095))

(declare-fun res!1208909 () Bool)

(assert (=> d!839149 (=> res!1208909 e!1847095)))

(assert (=> d!839149 (= res!1208909 e!1847094)))

(declare-fun res!1208910 () Bool)

(assert (=> d!839149 (=> (not res!1208910) (not e!1847094))))

(assert (=> d!839149 (= res!1208910 (isDefined!5142 lt!1027302))))

(assert (=> d!839149 (= lt!1027302 e!1847092)))

(declare-fun c!478317 () Bool)

(assert (=> d!839149 (= c!478317 e!1847093)))

(declare-fun res!1208908 () Bool)

(assert (=> d!839149 (=> (not res!1208908) (not e!1847093))))

(assert (=> d!839149 (= res!1208908 (matchR!3916 (reg!9363 r!17423) Nil!34775))))

(assert (=> d!839149 (validRegex!3767 (reg!9363 r!17423))))

(assert (=> d!839149 (= (findConcatSeparation!985 (reg!9363 r!17423) lt!1027270 Nil!34775 s!11993 s!11993) lt!1027302)))

(declare-fun b!2928808 () Bool)

(assert (=> b!2928808 (= e!1847095 (not (isDefined!5142 lt!1027302)))))

(declare-fun b!2928809 () Bool)

(assert (=> b!2928809 (= e!1847092 (Some!6590 (tuple2!33719 Nil!34775 s!11993)))))

(declare-fun b!2928810 () Bool)

(declare-fun res!1208912 () Bool)

(assert (=> b!2928810 (=> (not res!1208912) (not e!1847094))))

(assert (=> b!2928810 (= res!1208912 (matchR!3916 (reg!9363 r!17423) (_1!19991 (get!10605 lt!1027302))))))

(declare-fun b!2928811 () Bool)

(declare-fun lt!1027300 () Unit!48407)

(declare-fun lt!1027301 () Unit!48407)

(assert (=> b!2928811 (= lt!1027300 lt!1027301)))

(assert (=> b!2928811 (= (++!8292 (++!8292 Nil!34775 (Cons!34775 (h!40195 s!11993) Nil!34775)) (t!233964 s!11993)) s!11993)))

(declare-fun lemmaMoveElementToOtherListKeepsConcatEq!926 (List!34899 C!18254 List!34899 List!34899) Unit!48407)

(assert (=> b!2928811 (= lt!1027301 (lemmaMoveElementToOtherListKeepsConcatEq!926 Nil!34775 (h!40195 s!11993) (t!233964 s!11993) s!11993))))

(assert (=> b!2928811 (= e!1847091 (findConcatSeparation!985 (reg!9363 r!17423) lt!1027270 (++!8292 Nil!34775 (Cons!34775 (h!40195 s!11993) Nil!34775)) (t!233964 s!11993) s!11993))))

(assert (= (and d!839149 res!1208908) b!2928804))

(assert (= (and d!839149 c!478317) b!2928809))

(assert (= (and d!839149 (not c!478317)) b!2928806))

(assert (= (and b!2928806 c!478316) b!2928805))

(assert (= (and b!2928806 (not c!478316)) b!2928811))

(assert (= (and d!839149 res!1208910) b!2928810))

(assert (= (and b!2928810 res!1208912) b!2928807))

(assert (= (and b!2928807 res!1208911) b!2928803))

(assert (= (and d!839149 (not res!1208909)) b!2928808))

(declare-fun m!3320033 () Bool)

(assert (=> b!2928811 m!3320033))

(assert (=> b!2928811 m!3320033))

(declare-fun m!3320035 () Bool)

(assert (=> b!2928811 m!3320035))

(declare-fun m!3320037 () Bool)

(assert (=> b!2928811 m!3320037))

(assert (=> b!2928811 m!3320033))

(declare-fun m!3320039 () Bool)

(assert (=> b!2928811 m!3320039))

(declare-fun m!3320041 () Bool)

(assert (=> b!2928803 m!3320041))

(declare-fun m!3320043 () Bool)

(assert (=> b!2928803 m!3320043))

(declare-fun m!3320045 () Bool)

(assert (=> d!839149 m!3320045))

(declare-fun m!3320047 () Bool)

(assert (=> d!839149 m!3320047))

(assert (=> d!839149 m!3319999))

(assert (=> b!2928808 m!3320045))

(assert (=> b!2928807 m!3320041))

(declare-fun m!3320049 () Bool)

(assert (=> b!2928807 m!3320049))

(assert (=> b!2928810 m!3320041))

(declare-fun m!3320051 () Bool)

(assert (=> b!2928810 m!3320051))

(declare-fun m!3320053 () Bool)

(assert (=> b!2928804 m!3320053))

(assert (=> b!2928703 d!839149))

(declare-fun d!839153 () Bool)

(declare-fun choose!17296 (Int) Bool)

(assert (=> d!839153 (= (Exists!1396 lambda!108884) (choose!17296 lambda!108884))))

(declare-fun bs!525114 () Bool)

(assert (= bs!525114 d!839153))

(declare-fun m!3320055 () Bool)

(assert (=> bs!525114 m!3320055))

(assert (=> b!2928703 d!839153))

(declare-fun bs!525118 () Bool)

(declare-fun d!839155 () Bool)

(assert (= bs!525118 (and d!839155 b!2928703)))

(declare-fun lambda!108900 () Int)

(assert (=> bs!525118 (= (= (Star!9034 (reg!9363 r!17423)) lt!1027270) (= lambda!108900 lambda!108883))))

(assert (=> bs!525118 (not (= lambda!108900 lambda!108884))))

(assert (=> d!839155 true))

(assert (=> d!839155 true))

(declare-fun lambda!108901 () Int)

(assert (=> bs!525118 (not (= lambda!108901 lambda!108883))))

(assert (=> bs!525118 (= (= (Star!9034 (reg!9363 r!17423)) lt!1027270) (= lambda!108901 lambda!108884))))

(declare-fun bs!525119 () Bool)

(assert (= bs!525119 d!839155))

(assert (=> bs!525119 (not (= lambda!108901 lambda!108900))))

(assert (=> d!839155 true))

(assert (=> d!839155 true))

(assert (=> d!839155 (= (Exists!1396 lambda!108900) (Exists!1396 lambda!108901))))

(declare-fun lt!1027306 () Unit!48407)

(declare-fun choose!17297 (Regex!9034 List!34899) Unit!48407)

(assert (=> d!839155 (= lt!1027306 (choose!17297 (reg!9363 r!17423) s!11993))))

(assert (=> d!839155 (validRegex!3767 (reg!9363 r!17423))))

(assert (=> d!839155 (= (lemmaExistCutMatchRandMatchRSpecEquivalentStar!207 (reg!9363 r!17423) s!11993) lt!1027306)))

(declare-fun m!3320063 () Bool)

(assert (=> bs!525119 m!3320063))

(declare-fun m!3320065 () Bool)

(assert (=> bs!525119 m!3320065))

(declare-fun m!3320067 () Bool)

(assert (=> bs!525119 m!3320067))

(assert (=> bs!525119 m!3319999))

(assert (=> b!2928703 d!839155))

(declare-fun bs!525120 () Bool)

(declare-fun d!839161 () Bool)

(assert (= bs!525120 (and d!839161 b!2928703)))

(declare-fun lambda!108905 () Int)

(assert (=> bs!525120 (= lambda!108905 lambda!108883)))

(assert (=> bs!525120 (not (= lambda!108905 lambda!108884))))

(declare-fun bs!525121 () Bool)

(assert (= bs!525121 (and d!839161 d!839155)))

(assert (=> bs!525121 (= (= lt!1027270 (Star!9034 (reg!9363 r!17423))) (= lambda!108905 lambda!108900))))

(assert (=> bs!525121 (not (= lambda!108905 lambda!108901))))

(assert (=> d!839161 true))

(assert (=> d!839161 true))

(assert (=> d!839161 true))

(assert (=> d!839161 (= (isDefined!5142 (findConcatSeparation!985 (reg!9363 r!17423) lt!1027270 Nil!34775 s!11993 s!11993)) (Exists!1396 lambda!108905))))

(declare-fun lt!1027311 () Unit!48407)

(declare-fun choose!17298 (Regex!9034 Regex!9034 List!34899) Unit!48407)

(assert (=> d!839161 (= lt!1027311 (choose!17298 (reg!9363 r!17423) lt!1027270 s!11993))))

(assert (=> d!839161 (validRegex!3767 (reg!9363 r!17423))))

(assert (=> d!839161 (= (lemmaFindConcatSeparationEquivalentToExists!767 (reg!9363 r!17423) lt!1027270 s!11993) lt!1027311)))

(declare-fun bs!525122 () Bool)

(assert (= bs!525122 d!839161))

(assert (=> bs!525122 m!3319991))

(assert (=> bs!525122 m!3319999))

(declare-fun m!3320069 () Bool)

(assert (=> bs!525122 m!3320069))

(assert (=> bs!525122 m!3319991))

(assert (=> bs!525122 m!3319995))

(declare-fun m!3320071 () Bool)

(assert (=> bs!525122 m!3320071))

(assert (=> b!2928703 d!839161))

(declare-fun d!839163 () Bool)

(declare-fun isEmpty!19022 (Option!6591) Bool)

(assert (=> d!839163 (= (isDefined!5142 (findConcatSeparation!985 (reg!9363 r!17423) lt!1027270 Nil!34775 s!11993 s!11993)) (not (isEmpty!19022 (findConcatSeparation!985 (reg!9363 r!17423) lt!1027270 Nil!34775 s!11993 s!11993))))))

(declare-fun bs!525123 () Bool)

(assert (= bs!525123 d!839163))

(assert (=> bs!525123 m!3319991))

(declare-fun m!3320073 () Bool)

(assert (=> bs!525123 m!3320073))

(assert (=> b!2928703 d!839163))

(declare-fun d!839165 () Bool)

(assert (=> d!839165 (= (Exists!1396 lambda!108883) (choose!17296 lambda!108883))))

(declare-fun bs!525124 () Bool)

(assert (= bs!525124 d!839165))

(declare-fun m!3320075 () Bool)

(assert (=> bs!525124 m!3320075))

(assert (=> b!2928703 d!839165))

(declare-fun b!2928830 () Bool)

(declare-fun res!1208935 () Bool)

(declare-fun e!1847104 () Bool)

(assert (=> b!2928830 (=> res!1208935 e!1847104)))

(assert (=> b!2928830 (= res!1208935 (not (is-Concat!14355 r!17423)))))

(declare-fun e!1847106 () Bool)

(assert (=> b!2928830 (= e!1847106 e!1847104)))

(declare-fun b!2928831 () Bool)

(declare-fun e!1847108 () Bool)

(assert (=> b!2928831 (= e!1847104 e!1847108)))

(declare-fun res!1208933 () Bool)

(assert (=> b!2928831 (=> (not res!1208933) (not e!1847108))))

(declare-fun call!192197 () Bool)

(assert (=> b!2928831 (= res!1208933 call!192197)))

(declare-fun bm!192191 () Bool)

(declare-fun call!192196 () Bool)

(declare-fun call!192198 () Bool)

(assert (=> bm!192191 (= call!192196 call!192198)))

(declare-fun b!2928832 () Bool)

(declare-fun e!1847107 () Bool)

(assert (=> b!2928832 (= e!1847107 call!192198)))

(declare-fun d!839167 () Bool)

(declare-fun res!1208932 () Bool)

(declare-fun e!1847110 () Bool)

(assert (=> d!839167 (=> res!1208932 e!1847110)))

(assert (=> d!839167 (= res!1208932 (is-ElementMatch!9034 r!17423))))

(assert (=> d!839167 (= (validRegex!3767 r!17423) e!1847110)))

(declare-fun bm!192192 () Bool)

(declare-fun c!478319 () Bool)

(assert (=> bm!192192 (= call!192197 (validRegex!3767 (ite c!478319 (regTwo!18581 r!17423) (regOne!18580 r!17423))))))

(declare-fun b!2928833 () Bool)

(declare-fun e!1847105 () Bool)

(assert (=> b!2928833 (= e!1847105 call!192197)))

(declare-fun b!2928834 () Bool)

(declare-fun e!1847109 () Bool)

(assert (=> b!2928834 (= e!1847109 e!1847107)))

(declare-fun res!1208931 () Bool)

(assert (=> b!2928834 (= res!1208931 (not (nullable!2842 (reg!9363 r!17423))))))

(assert (=> b!2928834 (=> (not res!1208931) (not e!1847107))))

(declare-fun b!2928835 () Bool)

(declare-fun res!1208934 () Bool)

(assert (=> b!2928835 (=> (not res!1208934) (not e!1847105))))

(assert (=> b!2928835 (= res!1208934 call!192196)))

(assert (=> b!2928835 (= e!1847106 e!1847105)))

(declare-fun b!2928836 () Bool)

(assert (=> b!2928836 (= e!1847108 call!192196)))

(declare-fun b!2928837 () Bool)

(assert (=> b!2928837 (= e!1847109 e!1847106)))

(assert (=> b!2928837 (= c!478319 (is-Union!9034 r!17423))))

(declare-fun b!2928838 () Bool)

(assert (=> b!2928838 (= e!1847110 e!1847109)))

(declare-fun c!478318 () Bool)

(assert (=> b!2928838 (= c!478318 (is-Star!9034 r!17423))))

(declare-fun bm!192193 () Bool)

(assert (=> bm!192193 (= call!192198 (validRegex!3767 (ite c!478318 (reg!9363 r!17423) (ite c!478319 (regOne!18581 r!17423) (regTwo!18580 r!17423)))))))

(assert (= (and d!839167 (not res!1208932)) b!2928838))

(assert (= (and b!2928838 c!478318) b!2928834))

(assert (= (and b!2928838 (not c!478318)) b!2928837))

(assert (= (and b!2928834 res!1208931) b!2928832))

(assert (= (and b!2928837 c!478319) b!2928835))

(assert (= (and b!2928837 (not c!478319)) b!2928830))

(assert (= (and b!2928835 res!1208934) b!2928833))

(assert (= (and b!2928830 (not res!1208935)) b!2928831))

(assert (= (and b!2928831 res!1208933) b!2928836))

(assert (= (or b!2928835 b!2928836) bm!192191))

(assert (= (or b!2928833 b!2928831) bm!192192))

(assert (= (or b!2928832 bm!192191) bm!192193))

(declare-fun m!3320077 () Bool)

(assert (=> bm!192192 m!3320077))

(declare-fun m!3320079 () Bool)

(assert (=> b!2928834 m!3320079))

(declare-fun m!3320081 () Bool)

(assert (=> bm!192193 m!3320081))

(assert (=> start!284834 d!839167))

(declare-fun bs!525129 () Bool)

(declare-fun b!2928881 () Bool)

(assert (= bs!525129 (and b!2928881 d!839155)))

(declare-fun lambda!108915 () Int)

(assert (=> bs!525129 (= (= r!17423 (Star!9034 (reg!9363 r!17423))) (= lambda!108915 lambda!108901))))

(declare-fun bs!525130 () Bool)

(assert (= bs!525130 (and b!2928881 d!839161)))

(assert (=> bs!525130 (not (= lambda!108915 lambda!108905))))

(declare-fun bs!525131 () Bool)

(assert (= bs!525131 (and b!2928881 b!2928703)))

(assert (=> bs!525131 (not (= lambda!108915 lambda!108883))))

(assert (=> bs!525129 (not (= lambda!108915 lambda!108900))))

(assert (=> bs!525131 (= (= r!17423 lt!1027270) (= lambda!108915 lambda!108884))))

(assert (=> b!2928881 true))

(assert (=> b!2928881 true))

(declare-fun bs!525132 () Bool)

(declare-fun b!2928885 () Bool)

(assert (= bs!525132 (and b!2928885 d!839161)))

(declare-fun lambda!108916 () Int)

(assert (=> bs!525132 (not (= lambda!108916 lambda!108905))))

(declare-fun bs!525133 () Bool)

(assert (= bs!525133 (and b!2928885 b!2928703)))

(assert (=> bs!525133 (not (= lambda!108916 lambda!108883))))

(declare-fun bs!525134 () Bool)

(assert (= bs!525134 (and b!2928885 d!839155)))

(assert (=> bs!525134 (not (= lambda!108916 lambda!108900))))

(assert (=> bs!525133 (not (= lambda!108916 lambda!108884))))

(assert (=> bs!525134 (not (= lambda!108916 lambda!108901))))

(declare-fun bs!525135 () Bool)

(assert (= bs!525135 (and b!2928885 b!2928881)))

(assert (=> bs!525135 (not (= lambda!108916 lambda!108915))))

(assert (=> b!2928885 true))

(assert (=> b!2928885 true))

(declare-fun b!2928877 () Bool)

(declare-fun c!478331 () Bool)

(assert (=> b!2928877 (= c!478331 (is-Union!9034 r!17423))))

(declare-fun e!1847133 () Bool)

(declare-fun e!1847132 () Bool)

(assert (=> b!2928877 (= e!1847133 e!1847132)))

(declare-fun b!2928878 () Bool)

(declare-fun e!1847134 () Bool)

(assert (=> b!2928878 (= e!1847132 e!1847134)))

(declare-fun c!478330 () Bool)

(assert (=> b!2928878 (= c!478330 (is-Star!9034 r!17423))))

(declare-fun b!2928879 () Bool)

(declare-fun e!1847131 () Bool)

(assert (=> b!2928879 (= e!1847132 e!1847131)))

(declare-fun res!1208960 () Bool)

(assert (=> b!2928879 (= res!1208960 (matchRSpec!1171 (regOne!18581 r!17423) s!11993))))

(assert (=> b!2928879 (=> res!1208960 e!1847131)))

(declare-fun bm!192198 () Bool)

(declare-fun call!192204 () Bool)

(assert (=> bm!192198 (= call!192204 (isEmpty!19020 s!11993))))

(declare-fun b!2928880 () Bool)

(declare-fun res!1208958 () Bool)

(declare-fun e!1847136 () Bool)

(assert (=> b!2928880 (=> res!1208958 e!1847136)))

(assert (=> b!2928880 (= res!1208958 call!192204)))

(assert (=> b!2928880 (= e!1847134 e!1847136)))

(declare-fun d!839169 () Bool)

(declare-fun c!478329 () Bool)

(assert (=> d!839169 (= c!478329 (is-EmptyExpr!9034 r!17423))))

(declare-fun e!1847135 () Bool)

(assert (=> d!839169 (= (matchRSpec!1171 r!17423 s!11993) e!1847135)))

(declare-fun call!192203 () Bool)

(assert (=> b!2928881 (= e!1847136 call!192203)))

(declare-fun b!2928882 () Bool)

(declare-fun c!478328 () Bool)

(assert (=> b!2928882 (= c!478328 (is-ElementMatch!9034 r!17423))))

(declare-fun e!1847137 () Bool)

(assert (=> b!2928882 (= e!1847137 e!1847133)))

(declare-fun b!2928883 () Bool)

(assert (=> b!2928883 (= e!1847135 e!1847137)))

(declare-fun res!1208959 () Bool)

(assert (=> b!2928883 (= res!1208959 (not (is-EmptyLang!9034 r!17423)))))

(assert (=> b!2928883 (=> (not res!1208959) (not e!1847137))))

(declare-fun b!2928884 () Bool)

(assert (=> b!2928884 (= e!1847133 (= s!11993 (Cons!34775 (c!478304 r!17423) Nil!34775)))))

(assert (=> b!2928885 (= e!1847134 call!192203)))

(declare-fun b!2928886 () Bool)

(assert (=> b!2928886 (= e!1847131 (matchRSpec!1171 (regTwo!18581 r!17423) s!11993))))

(declare-fun bm!192199 () Bool)

(assert (=> bm!192199 (= call!192203 (Exists!1396 (ite c!478330 lambda!108915 lambda!108916)))))

(declare-fun b!2928887 () Bool)

(assert (=> b!2928887 (= e!1847135 call!192204)))

(assert (= (and d!839169 c!478329) b!2928887))

(assert (= (and d!839169 (not c!478329)) b!2928883))

(assert (= (and b!2928883 res!1208959) b!2928882))

(assert (= (and b!2928882 c!478328) b!2928884))

(assert (= (and b!2928882 (not c!478328)) b!2928877))

(assert (= (and b!2928877 c!478331) b!2928879))

(assert (= (and b!2928877 (not c!478331)) b!2928878))

(assert (= (and b!2928879 (not res!1208960)) b!2928886))

(assert (= (and b!2928878 c!478330) b!2928880))

(assert (= (and b!2928878 (not c!478330)) b!2928885))

(assert (= (and b!2928880 (not res!1208958)) b!2928881))

(assert (= (or b!2928881 b!2928885) bm!192199))

(assert (= (or b!2928887 b!2928880) bm!192198))

(declare-fun m!3320091 () Bool)

(assert (=> b!2928879 m!3320091))

(assert (=> bm!192198 m!3319977))

(declare-fun m!3320093 () Bool)

(assert (=> b!2928886 m!3320093))

(declare-fun m!3320095 () Bool)

(assert (=> bm!192199 m!3320095))

(assert (=> b!2928699 d!839169))

(declare-fun b!2928916 () Bool)

(declare-fun res!1208978 () Bool)

(declare-fun e!1847153 () Bool)

(assert (=> b!2928916 (=> res!1208978 e!1847153)))

(declare-fun e!1847157 () Bool)

(assert (=> b!2928916 (= res!1208978 e!1847157)))

(declare-fun res!1208980 () Bool)

(assert (=> b!2928916 (=> (not res!1208980) (not e!1847157))))

(declare-fun lt!1027315 () Bool)

(assert (=> b!2928916 (= res!1208980 lt!1027315)))

(declare-fun b!2928917 () Bool)

(declare-fun head!6513 (List!34899) C!18254)

(assert (=> b!2928917 (= e!1847157 (= (head!6513 s!11993) (c!478304 r!17423)))))

(declare-fun b!2928918 () Bool)

(declare-fun e!1847154 () Bool)

(assert (=> b!2928918 (= e!1847153 e!1847154)))

(declare-fun res!1208983 () Bool)

(assert (=> b!2928918 (=> (not res!1208983) (not e!1847154))))

(assert (=> b!2928918 (= res!1208983 (not lt!1027315))))

(declare-fun b!2928919 () Bool)

(declare-fun e!1847156 () Bool)

(assert (=> b!2928919 (= e!1847156 (not (= (head!6513 s!11993) (c!478304 r!17423))))))

(declare-fun b!2928920 () Bool)

(declare-fun e!1847152 () Bool)

(declare-fun e!1847158 () Bool)

(assert (=> b!2928920 (= e!1847152 e!1847158)))

(declare-fun c!478338 () Bool)

(assert (=> b!2928920 (= c!478338 (is-EmptyLang!9034 r!17423))))

(declare-fun b!2928921 () Bool)

(declare-fun e!1847155 () Bool)

(assert (=> b!2928921 (= e!1847155 (nullable!2842 r!17423))))

(declare-fun b!2928922 () Bool)

(declare-fun res!1208979 () Bool)

(assert (=> b!2928922 (=> res!1208979 e!1847153)))

(assert (=> b!2928922 (= res!1208979 (not (is-ElementMatch!9034 r!17423)))))

(assert (=> b!2928922 (= e!1847158 e!1847153)))

(declare-fun b!2928923 () Bool)

(declare-fun call!192207 () Bool)

(assert (=> b!2928923 (= e!1847152 (= lt!1027315 call!192207))))

(declare-fun d!839175 () Bool)

(assert (=> d!839175 e!1847152))

(declare-fun c!478339 () Bool)

(assert (=> d!839175 (= c!478339 (is-EmptyExpr!9034 r!17423))))

(assert (=> d!839175 (= lt!1027315 e!1847155)))

(declare-fun c!478340 () Bool)

(assert (=> d!839175 (= c!478340 (isEmpty!19020 s!11993))))

(assert (=> d!839175 (validRegex!3767 r!17423)))

(assert (=> d!839175 (= (matchR!3916 r!17423 s!11993) lt!1027315)))

(declare-fun bm!192202 () Bool)

(assert (=> bm!192202 (= call!192207 (isEmpty!19020 s!11993))))

(declare-fun b!2928924 () Bool)

(declare-fun derivativeStep!2454 (Regex!9034 C!18254) Regex!9034)

(declare-fun tail!4739 (List!34899) List!34899)

(assert (=> b!2928924 (= e!1847155 (matchR!3916 (derivativeStep!2454 r!17423 (head!6513 s!11993)) (tail!4739 s!11993)))))

(declare-fun b!2928925 () Bool)

(assert (=> b!2928925 (= e!1847154 e!1847156)))

(declare-fun res!1208977 () Bool)

(assert (=> b!2928925 (=> res!1208977 e!1847156)))

(assert (=> b!2928925 (= res!1208977 call!192207)))

(declare-fun b!2928926 () Bool)

(assert (=> b!2928926 (= e!1847158 (not lt!1027315))))

(declare-fun b!2928927 () Bool)

(declare-fun res!1208981 () Bool)

(assert (=> b!2928927 (=> res!1208981 e!1847156)))

(assert (=> b!2928927 (= res!1208981 (not (isEmpty!19020 (tail!4739 s!11993))))))

(declare-fun b!2928928 () Bool)

(declare-fun res!1208984 () Bool)

(assert (=> b!2928928 (=> (not res!1208984) (not e!1847157))))

(assert (=> b!2928928 (= res!1208984 (not call!192207))))

(declare-fun b!2928929 () Bool)

(declare-fun res!1208982 () Bool)

(assert (=> b!2928929 (=> (not res!1208982) (not e!1847157))))

(assert (=> b!2928929 (= res!1208982 (isEmpty!19020 (tail!4739 s!11993)))))

(assert (= (and d!839175 c!478340) b!2928921))

(assert (= (and d!839175 (not c!478340)) b!2928924))

(assert (= (and d!839175 c!478339) b!2928923))

(assert (= (and d!839175 (not c!478339)) b!2928920))

(assert (= (and b!2928920 c!478338) b!2928926))

(assert (= (and b!2928920 (not c!478338)) b!2928922))

(assert (= (and b!2928922 (not res!1208979)) b!2928916))

(assert (= (and b!2928916 res!1208980) b!2928928))

(assert (= (and b!2928928 res!1208984) b!2928929))

(assert (= (and b!2928929 res!1208982) b!2928917))

(assert (= (and b!2928916 (not res!1208978)) b!2928918))

(assert (= (and b!2928918 res!1208983) b!2928925))

(assert (= (and b!2928925 (not res!1208977)) b!2928927))

(assert (= (and b!2928927 (not res!1208981)) b!2928919))

(assert (= (or b!2928923 b!2928925 b!2928928) bm!192202))

(declare-fun m!3320097 () Bool)

(assert (=> b!2928921 m!3320097))

(assert (=> bm!192202 m!3319977))

(declare-fun m!3320099 () Bool)

(assert (=> b!2928929 m!3320099))

(assert (=> b!2928929 m!3320099))

(declare-fun m!3320101 () Bool)

(assert (=> b!2928929 m!3320101))

(declare-fun m!3320103 () Bool)

(assert (=> b!2928919 m!3320103))

(assert (=> b!2928917 m!3320103))

(assert (=> b!2928927 m!3320099))

(assert (=> b!2928927 m!3320099))

(assert (=> b!2928927 m!3320101))

(assert (=> d!839175 m!3319977))

(assert (=> d!839175 m!3319985))

(assert (=> b!2928924 m!3320103))

(assert (=> b!2928924 m!3320103))

(declare-fun m!3320105 () Bool)

(assert (=> b!2928924 m!3320105))

(assert (=> b!2928924 m!3320099))

(assert (=> b!2928924 m!3320105))

(assert (=> b!2928924 m!3320099))

(declare-fun m!3320107 () Bool)

(assert (=> b!2928924 m!3320107))

(assert (=> b!2928699 d!839175))

(declare-fun d!839177 () Bool)

(assert (=> d!839177 (= (matchR!3916 r!17423 s!11993) (matchRSpec!1171 r!17423 s!11993))))

(declare-fun lt!1027318 () Unit!48407)

(declare-fun choose!17299 (Regex!9034 List!34899) Unit!48407)

(assert (=> d!839177 (= lt!1027318 (choose!17299 r!17423 s!11993))))

(assert (=> d!839177 (validRegex!3767 r!17423)))

(assert (=> d!839177 (= (mainMatchTheorem!1171 r!17423 s!11993) lt!1027318)))

(declare-fun bs!525136 () Bool)

(assert (= bs!525136 d!839177))

(assert (=> bs!525136 m!3319981))

(assert (=> bs!525136 m!3319979))

(declare-fun m!3320109 () Bool)

(assert (=> bs!525136 m!3320109))

(assert (=> bs!525136 m!3319985))

(assert (=> b!2928699 d!839177))

(declare-fun e!1847161 () Bool)

(assert (=> b!2928697 (= tp!938846 e!1847161)))

(declare-fun b!2928942 () Bool)

(declare-fun tp!938880 () Bool)

(assert (=> b!2928942 (= e!1847161 tp!938880)))

(declare-fun b!2928941 () Bool)

(declare-fun tp!938877 () Bool)

(declare-fun tp!938876 () Bool)

(assert (=> b!2928941 (= e!1847161 (and tp!938877 tp!938876))))

(declare-fun b!2928943 () Bool)

(declare-fun tp!938879 () Bool)

(declare-fun tp!938878 () Bool)

(assert (=> b!2928943 (= e!1847161 (and tp!938879 tp!938878))))

(declare-fun b!2928940 () Bool)

(assert (=> b!2928940 (= e!1847161 tp_is_empty!15631)))

(assert (= (and b!2928697 (is-ElementMatch!9034 (regOne!18580 r!17423))) b!2928940))

(assert (= (and b!2928697 (is-Concat!14355 (regOne!18580 r!17423))) b!2928941))

(assert (= (and b!2928697 (is-Star!9034 (regOne!18580 r!17423))) b!2928942))

(assert (= (and b!2928697 (is-Union!9034 (regOne!18580 r!17423))) b!2928943))

(declare-fun e!1847162 () Bool)

(assert (=> b!2928697 (= tp!938842 e!1847162)))

(declare-fun b!2928946 () Bool)

(declare-fun tp!938885 () Bool)

(assert (=> b!2928946 (= e!1847162 tp!938885)))

(declare-fun b!2928945 () Bool)

(declare-fun tp!938882 () Bool)

(declare-fun tp!938881 () Bool)

(assert (=> b!2928945 (= e!1847162 (and tp!938882 tp!938881))))

(declare-fun b!2928947 () Bool)

(declare-fun tp!938884 () Bool)

(declare-fun tp!938883 () Bool)

(assert (=> b!2928947 (= e!1847162 (and tp!938884 tp!938883))))

(declare-fun b!2928944 () Bool)

(assert (=> b!2928944 (= e!1847162 tp_is_empty!15631)))

(assert (= (and b!2928697 (is-ElementMatch!9034 (regTwo!18580 r!17423))) b!2928944))

(assert (= (and b!2928697 (is-Concat!14355 (regTwo!18580 r!17423))) b!2928945))

(assert (= (and b!2928697 (is-Star!9034 (regTwo!18580 r!17423))) b!2928946))

(assert (= (and b!2928697 (is-Union!9034 (regTwo!18580 r!17423))) b!2928947))

(declare-fun e!1847163 () Bool)

(assert (=> b!2928704 (= tp!938844 e!1847163)))

(declare-fun b!2928950 () Bool)

(declare-fun tp!938890 () Bool)

(assert (=> b!2928950 (= e!1847163 tp!938890)))

(declare-fun b!2928949 () Bool)

(declare-fun tp!938887 () Bool)

(declare-fun tp!938886 () Bool)

(assert (=> b!2928949 (= e!1847163 (and tp!938887 tp!938886))))

(declare-fun b!2928951 () Bool)

(declare-fun tp!938889 () Bool)

(declare-fun tp!938888 () Bool)

(assert (=> b!2928951 (= e!1847163 (and tp!938889 tp!938888))))

(declare-fun b!2928948 () Bool)

(assert (=> b!2928948 (= e!1847163 tp_is_empty!15631)))

(assert (= (and b!2928704 (is-ElementMatch!9034 (regOne!18581 r!17423))) b!2928948))

(assert (= (and b!2928704 (is-Concat!14355 (regOne!18581 r!17423))) b!2928949))

(assert (= (and b!2928704 (is-Star!9034 (regOne!18581 r!17423))) b!2928950))

(assert (= (and b!2928704 (is-Union!9034 (regOne!18581 r!17423))) b!2928951))

(declare-fun e!1847164 () Bool)

(assert (=> b!2928704 (= tp!938843 e!1847164)))

(declare-fun b!2928956 () Bool)

(declare-fun tp!938895 () Bool)

(assert (=> b!2928956 (= e!1847164 tp!938895)))

(declare-fun b!2928955 () Bool)

(declare-fun tp!938892 () Bool)

(declare-fun tp!938891 () Bool)

(assert (=> b!2928955 (= e!1847164 (and tp!938892 tp!938891))))

(declare-fun b!2928957 () Bool)

(declare-fun tp!938894 () Bool)

(declare-fun tp!938893 () Bool)

(assert (=> b!2928957 (= e!1847164 (and tp!938894 tp!938893))))

(declare-fun b!2928954 () Bool)

(assert (=> b!2928954 (= e!1847164 tp_is_empty!15631)))

(assert (= (and b!2928704 (is-ElementMatch!9034 (regTwo!18581 r!17423))) b!2928954))

(assert (= (and b!2928704 (is-Concat!14355 (regTwo!18581 r!17423))) b!2928955))

(assert (= (and b!2928704 (is-Star!9034 (regTwo!18581 r!17423))) b!2928956))

(assert (= (and b!2928704 (is-Union!9034 (regTwo!18581 r!17423))) b!2928957))

(declare-fun e!1847167 () Bool)

(assert (=> b!2928698 (= tp!938845 e!1847167)))

(declare-fun b!2928962 () Bool)

(declare-fun tp!938900 () Bool)

(assert (=> b!2928962 (= e!1847167 tp!938900)))

(declare-fun b!2928961 () Bool)

(declare-fun tp!938897 () Bool)

(declare-fun tp!938896 () Bool)

(assert (=> b!2928961 (= e!1847167 (and tp!938897 tp!938896))))

(declare-fun b!2928963 () Bool)

(declare-fun tp!938899 () Bool)

(declare-fun tp!938898 () Bool)

(assert (=> b!2928963 (= e!1847167 (and tp!938899 tp!938898))))

(declare-fun b!2928960 () Bool)

(assert (=> b!2928960 (= e!1847167 tp_is_empty!15631)))

(assert (= (and b!2928698 (is-ElementMatch!9034 (reg!9363 r!17423))) b!2928960))

(assert (= (and b!2928698 (is-Concat!14355 (reg!9363 r!17423))) b!2928961))

(assert (= (and b!2928698 (is-Star!9034 (reg!9363 r!17423))) b!2928962))

(assert (= (and b!2928698 (is-Union!9034 (reg!9363 r!17423))) b!2928963))

(declare-fun b!2928974 () Bool)

(declare-fun e!1847174 () Bool)

(declare-fun tp!938903 () Bool)

(assert (=> b!2928974 (= e!1847174 (and tp_is_empty!15631 tp!938903))))

(assert (=> b!2928700 (= tp!938847 e!1847174)))

(assert (= (and b!2928700 (is-Cons!34775 (t!233964 s!11993))) b!2928974))

(push 1)

(assert (not b!2928776))

(assert (not b!2928946))

(assert (not b!2928941))

(assert (not b!2928810))

(assert (not b!2928951))

(assert (not d!839153))

(assert (not b!2928807))

(assert (not b!2928957))

(assert (not bm!192198))

(assert (not bm!192193))

(assert (not b!2928811))

(assert (not bm!192202))

(assert (not b!2928927))

(assert (not b!2928943))

(assert (not d!839149))

(assert (not d!839161))

(assert (not b!2928924))

(assert (not b!2928804))

(assert (not b!2928961))

(assert (not b!2928834))

(assert (not b!2928803))

(assert (not bm!192199))

(assert (not b!2928921))

(assert (not b!2928962))

(assert (not bm!192189))

(assert (not d!839155))

(assert (not bm!192190))

(assert tp_is_empty!15631)

(assert (not b!2928886))

(assert (not b!2928950))

(assert (not b!2928956))

(assert (not b!2928808))

(assert (not b!2928955))

(assert (not b!2928947))

(assert (not d!839175))

(assert (not b!2928919))

(assert (not b!2928974))

(assert (not b!2928949))

(assert (not b!2928879))

(assert (not bm!192192))

(assert (not b!2928917))

(assert (not b!2928945))

(assert (not b!2928929))

(assert (not d!839165))

(assert (not d!839163))

(assert (not d!839177))

(assert (not b!2928942))

(assert (not b!2928963))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

