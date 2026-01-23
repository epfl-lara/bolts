; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!284664 () Bool)

(assert start!284664)

(declare-fun b!2926164 () Bool)

(declare-fun res!1207803 () Bool)

(declare-fun e!1845693 () Bool)

(assert (=> b!2926164 (=> res!1207803 e!1845693)))

(declare-datatypes ((C!18228 0))(
  ( (C!18229 (val!11150 Int)) )
))
(declare-datatypes ((Regex!9021 0))(
  ( (ElementMatch!9021 (c!477811 C!18228)) (Concat!14342 (regOne!18554 Regex!9021) (regTwo!18554 Regex!9021)) (EmptyExpr!9021) (Star!9021 (reg!9350 Regex!9021)) (EmptyLang!9021) (Union!9021 (regOne!18555 Regex!9021) (regTwo!18555 Regex!9021)) )
))
(declare-fun lt!1026872 () Regex!9021)

(declare-fun validRegex!3754 (Regex!9021) Bool)

(assert (=> b!2926164 (= res!1207803 (not (validRegex!3754 lt!1026872)))))

(declare-fun b!2926165 () Bool)

(declare-fun e!1845691 () Bool)

(declare-fun tp!938304 () Bool)

(declare-fun tp!938309 () Bool)

(assert (=> b!2926165 (= e!1845691 (and tp!938304 tp!938309))))

(declare-fun b!2926166 () Bool)

(declare-fun e!1845694 () Bool)

(declare-fun e!1845697 () Bool)

(assert (=> b!2926166 (= e!1845694 e!1845697)))

(declare-fun res!1207801 () Bool)

(assert (=> b!2926166 (=> res!1207801 e!1845697)))

(declare-fun lt!1026875 () Bool)

(assert (=> b!2926166 (= res!1207801 lt!1026875)))

(declare-fun e!1845692 () Bool)

(assert (=> b!2926166 e!1845692))

(declare-fun res!1207804 () Bool)

(assert (=> b!2926166 (=> res!1207804 e!1845692)))

(assert (=> b!2926166 (= res!1207804 lt!1026875)))

(declare-fun r!17423 () Regex!9021)

(declare-datatypes ((List!34886 0))(
  ( (Nil!34762) (Cons!34762 (h!40182 C!18228) (t!233951 List!34886)) )
))
(declare-fun s!11993 () List!34886)

(declare-fun matchR!3903 (Regex!9021 List!34886) Bool)

(assert (=> b!2926166 (= lt!1026875 (matchR!3903 (regOne!18555 r!17423) s!11993))))

(declare-datatypes ((Unit!48381 0))(
  ( (Unit!48382) )
))
(declare-fun lt!1026879 () Unit!48381)

(declare-fun lemmaRegexUnionAcceptsThenOneOfTheTwoAccepts!270 (Regex!9021 Regex!9021 List!34886) Unit!48381)

(assert (=> b!2926166 (= lt!1026879 (lemmaRegexUnionAcceptsThenOneOfTheTwoAccepts!270 (regOne!18555 r!17423) (regTwo!18555 r!17423) s!11993))))

(declare-fun b!2926167 () Bool)

(declare-fun e!1845696 () Bool)

(assert (=> b!2926167 (= e!1845696 e!1845693)))

(declare-fun res!1207800 () Bool)

(assert (=> b!2926167 (=> res!1207800 e!1845693)))

(declare-fun lt!1026878 () Regex!9021)

(assert (=> b!2926167 (= res!1207800 (not (validRegex!3754 lt!1026878)))))

(assert (=> b!2926167 (matchR!3903 (Union!9021 lt!1026878 lt!1026872) s!11993)))

(declare-fun lt!1026869 () Unit!48381)

(declare-fun lemmaRegexAcceptsStringThenUnionWithAnotherAcceptsToo!62 (Regex!9021 Regex!9021 List!34886) Unit!48381)

(assert (=> b!2926167 (= lt!1026869 (lemmaRegexAcceptsStringThenUnionWithAnotherAcceptsToo!62 lt!1026878 lt!1026872 s!11993))))

(declare-fun simplify!50 (Regex!9021) Regex!9021)

(assert (=> b!2926167 (= lt!1026872 (simplify!50 (regOne!18555 r!17423)))))

(declare-fun b!2926168 () Bool)

(declare-fun tp!938308 () Bool)

(assert (=> b!2926168 (= e!1845691 tp!938308)))

(declare-fun b!2926169 () Bool)

(assert (=> b!2926169 (= e!1845697 e!1845696)))

(declare-fun res!1207805 () Bool)

(assert (=> b!2926169 (=> res!1207805 e!1845696)))

(declare-fun lt!1026871 () Bool)

(assert (=> b!2926169 (= res!1207805 (not lt!1026871))))

(declare-fun lt!1026870 () Bool)

(assert (=> b!2926169 (= lt!1026870 lt!1026871)))

(assert (=> b!2926169 (= lt!1026871 (matchR!3903 lt!1026878 s!11993))))

(assert (=> b!2926169 (= lt!1026870 (matchR!3903 (regTwo!18555 r!17423) s!11993))))

(assert (=> b!2926169 (= lt!1026878 (simplify!50 (regTwo!18555 r!17423)))))

(declare-fun lt!1026876 () Unit!48381)

(declare-fun lemmaSimplifySound!48 (Regex!9021 List!34886) Unit!48381)

(assert (=> b!2926169 (= lt!1026876 (lemmaSimplifySound!48 (regTwo!18555 r!17423) s!11993))))

(declare-fun b!2926170 () Bool)

(declare-fun tp_is_empty!15605 () Bool)

(assert (=> b!2926170 (= e!1845691 tp_is_empty!15605)))

(declare-fun b!2926171 () Bool)

(declare-fun e!1845695 () Bool)

(assert (=> b!2926171 (= e!1845695 (not e!1845694))))

(declare-fun res!1207806 () Bool)

(assert (=> b!2926171 (=> res!1207806 e!1845694)))

(declare-fun lt!1026877 () Bool)

(get-info :version)

(assert (=> b!2926171 (= res!1207806 (or (not lt!1026877) ((_ is Concat!14342) r!17423) (not ((_ is Union!9021) r!17423))))))

(declare-fun matchRSpec!1158 (Regex!9021 List!34886) Bool)

(assert (=> b!2926171 (= lt!1026877 (matchRSpec!1158 r!17423 s!11993))))

(assert (=> b!2926171 (= lt!1026877 (matchR!3903 r!17423 s!11993))))

(declare-fun lt!1026873 () Unit!48381)

(declare-fun mainMatchTheorem!1158 (Regex!9021 List!34886) Unit!48381)

(assert (=> b!2926171 (= lt!1026873 (mainMatchTheorem!1158 r!17423 s!11993))))

(declare-fun b!2926172 () Bool)

(assert (=> b!2926172 (= e!1845692 (matchR!3903 (regTwo!18555 r!17423) s!11993))))

(declare-fun b!2926173 () Bool)

(declare-fun tp!938305 () Bool)

(declare-fun tp!938307 () Bool)

(assert (=> b!2926173 (= e!1845691 (and tp!938305 tp!938307))))

(declare-fun res!1207802 () Bool)

(assert (=> start!284664 (=> (not res!1207802) (not e!1845695))))

(assert (=> start!284664 (= res!1207802 (validRegex!3754 r!17423))))

(assert (=> start!284664 e!1845695))

(assert (=> start!284664 e!1845691))

(declare-fun e!1845690 () Bool)

(assert (=> start!284664 e!1845690))

(declare-fun b!2926174 () Bool)

(assert (=> b!2926174 (= e!1845693 (validRegex!3754 (simplify!50 r!17423)))))

(assert (=> b!2926174 (matchR!3903 (Union!9021 lt!1026872 lt!1026878) s!11993)))

(declare-fun lt!1026874 () Unit!48381)

(declare-fun lemmaReversedUnionAcceptsSameString!18 (Regex!9021 Regex!9021 List!34886) Unit!48381)

(assert (=> b!2926174 (= lt!1026874 (lemmaReversedUnionAcceptsSameString!18 lt!1026878 lt!1026872 s!11993))))

(declare-fun b!2926175 () Bool)

(declare-fun tp!938306 () Bool)

(assert (=> b!2926175 (= e!1845690 (and tp_is_empty!15605 tp!938306))))

(assert (= (and start!284664 res!1207802) b!2926171))

(assert (= (and b!2926171 (not res!1207806)) b!2926166))

(assert (= (and b!2926166 (not res!1207804)) b!2926172))

(assert (= (and b!2926166 (not res!1207801)) b!2926169))

(assert (= (and b!2926169 (not res!1207805)) b!2926167))

(assert (= (and b!2926167 (not res!1207800)) b!2926164))

(assert (= (and b!2926164 (not res!1207803)) b!2926174))

(assert (= (and start!284664 ((_ is ElementMatch!9021) r!17423)) b!2926170))

(assert (= (and start!284664 ((_ is Concat!14342) r!17423)) b!2926173))

(assert (= (and start!284664 ((_ is Star!9021) r!17423)) b!2926168))

(assert (= (and start!284664 ((_ is Union!9021) r!17423)) b!2926165))

(assert (= (and start!284664 ((_ is Cons!34762) s!11993)) b!2926175))

(declare-fun m!3319003 () Bool)

(assert (=> b!2926164 m!3319003))

(declare-fun m!3319005 () Bool)

(assert (=> b!2926172 m!3319005))

(declare-fun m!3319007 () Bool)

(assert (=> b!2926167 m!3319007))

(declare-fun m!3319009 () Bool)

(assert (=> b!2926167 m!3319009))

(declare-fun m!3319011 () Bool)

(assert (=> b!2926167 m!3319011))

(declare-fun m!3319013 () Bool)

(assert (=> b!2926167 m!3319013))

(declare-fun m!3319015 () Bool)

(assert (=> start!284664 m!3319015))

(declare-fun m!3319017 () Bool)

(assert (=> b!2926174 m!3319017))

(assert (=> b!2926174 m!3319017))

(declare-fun m!3319019 () Bool)

(assert (=> b!2926174 m!3319019))

(declare-fun m!3319021 () Bool)

(assert (=> b!2926174 m!3319021))

(declare-fun m!3319023 () Bool)

(assert (=> b!2926174 m!3319023))

(declare-fun m!3319025 () Bool)

(assert (=> b!2926171 m!3319025))

(declare-fun m!3319027 () Bool)

(assert (=> b!2926171 m!3319027))

(declare-fun m!3319029 () Bool)

(assert (=> b!2926171 m!3319029))

(declare-fun m!3319031 () Bool)

(assert (=> b!2926169 m!3319031))

(assert (=> b!2926169 m!3319005))

(declare-fun m!3319033 () Bool)

(assert (=> b!2926169 m!3319033))

(declare-fun m!3319035 () Bool)

(assert (=> b!2926169 m!3319035))

(declare-fun m!3319037 () Bool)

(assert (=> b!2926166 m!3319037))

(declare-fun m!3319039 () Bool)

(assert (=> b!2926166 m!3319039))

(check-sat (not b!2926172) (not b!2926168) (not b!2926167) tp_is_empty!15605 (not b!2926173) (not b!2926165) (not b!2926174) (not b!2926169) (not b!2926175) (not b!2926171) (not b!2926166) (not b!2926164) (not start!284664))
(check-sat)
(get-model)

(declare-fun b!2926194 () Bool)

(declare-fun res!1207820 () Bool)

(declare-fun e!1845714 () Bool)

(assert (=> b!2926194 (=> res!1207820 e!1845714)))

(assert (=> b!2926194 (= res!1207820 (not ((_ is Concat!14342) r!17423)))))

(declare-fun e!1845718 () Bool)

(assert (=> b!2926194 (= e!1845718 e!1845714)))

(declare-fun d!838928 () Bool)

(declare-fun res!1207819 () Bool)

(declare-fun e!1845716 () Bool)

(assert (=> d!838928 (=> res!1207819 e!1845716)))

(assert (=> d!838928 (= res!1207819 ((_ is ElementMatch!9021) r!17423))))

(assert (=> d!838928 (= (validRegex!3754 r!17423) e!1845716)))

(declare-fun b!2926195 () Bool)

(declare-fun e!1845717 () Bool)

(assert (=> b!2926195 (= e!1845714 e!1845717)))

(declare-fun res!1207818 () Bool)

(assert (=> b!2926195 (=> (not res!1207818) (not e!1845717))))

(declare-fun call!191887 () Bool)

(assert (=> b!2926195 (= res!1207818 call!191887)))

(declare-fun b!2926196 () Bool)

(declare-fun call!191885 () Bool)

(assert (=> b!2926196 (= e!1845717 call!191885)))

(declare-fun bm!191880 () Bool)

(declare-fun call!191886 () Bool)

(assert (=> bm!191880 (= call!191887 call!191886)))

(declare-fun b!2926197 () Bool)

(declare-fun res!1207817 () Bool)

(declare-fun e!1845715 () Bool)

(assert (=> b!2926197 (=> (not res!1207817) (not e!1845715))))

(assert (=> b!2926197 (= res!1207817 call!191885)))

(assert (=> b!2926197 (= e!1845718 e!1845715)))

(declare-fun b!2926198 () Bool)

(declare-fun e!1845712 () Bool)

(assert (=> b!2926198 (= e!1845712 call!191886)))

(declare-fun b!2926199 () Bool)

(assert (=> b!2926199 (= e!1845715 call!191887)))

(declare-fun b!2926200 () Bool)

(declare-fun e!1845713 () Bool)

(assert (=> b!2926200 (= e!1845713 e!1845718)))

(declare-fun c!477816 () Bool)

(assert (=> b!2926200 (= c!477816 ((_ is Union!9021) r!17423))))

(declare-fun bm!191881 () Bool)

(assert (=> bm!191881 (= call!191885 (validRegex!3754 (ite c!477816 (regOne!18555 r!17423) (regTwo!18554 r!17423))))))

(declare-fun c!477817 () Bool)

(declare-fun bm!191882 () Bool)

(assert (=> bm!191882 (= call!191886 (validRegex!3754 (ite c!477817 (reg!9350 r!17423) (ite c!477816 (regTwo!18555 r!17423) (regOne!18554 r!17423)))))))

(declare-fun b!2926201 () Bool)

(assert (=> b!2926201 (= e!1845716 e!1845713)))

(assert (=> b!2926201 (= c!477817 ((_ is Star!9021) r!17423))))

(declare-fun b!2926202 () Bool)

(assert (=> b!2926202 (= e!1845713 e!1845712)))

(declare-fun res!1207821 () Bool)

(declare-fun nullable!2834 (Regex!9021) Bool)

(assert (=> b!2926202 (= res!1207821 (not (nullable!2834 (reg!9350 r!17423))))))

(assert (=> b!2926202 (=> (not res!1207821) (not e!1845712))))

(assert (= (and d!838928 (not res!1207819)) b!2926201))

(assert (= (and b!2926201 c!477817) b!2926202))

(assert (= (and b!2926201 (not c!477817)) b!2926200))

(assert (= (and b!2926202 res!1207821) b!2926198))

(assert (= (and b!2926200 c!477816) b!2926197))

(assert (= (and b!2926200 (not c!477816)) b!2926194))

(assert (= (and b!2926197 res!1207817) b!2926199))

(assert (= (and b!2926194 (not res!1207820)) b!2926195))

(assert (= (and b!2926195 res!1207818) b!2926196))

(assert (= (or b!2926197 b!2926196) bm!191881))

(assert (= (or b!2926199 b!2926195) bm!191880))

(assert (= (or b!2926198 bm!191880) bm!191882))

(declare-fun m!3319041 () Bool)

(assert (=> bm!191881 m!3319041))

(declare-fun m!3319043 () Bool)

(assert (=> bm!191882 m!3319043))

(declare-fun m!3319045 () Bool)

(assert (=> b!2926202 m!3319045))

(assert (=> start!284664 d!838928))

(declare-fun b!2926231 () Bool)

(declare-fun res!1207845 () Bool)

(declare-fun e!1845738 () Bool)

(assert (=> b!2926231 (=> res!1207845 e!1845738)))

(declare-fun e!1845739 () Bool)

(assert (=> b!2926231 (= res!1207845 e!1845739)))

(declare-fun res!1207844 () Bool)

(assert (=> b!2926231 (=> (not res!1207844) (not e!1845739))))

(declare-fun lt!1026882 () Bool)

(assert (=> b!2926231 (= res!1207844 lt!1026882)))

(declare-fun b!2926232 () Bool)

(declare-fun e!1845735 () Bool)

(declare-fun e!1845737 () Bool)

(assert (=> b!2926232 (= e!1845735 e!1845737)))

(declare-fun c!477825 () Bool)

(assert (=> b!2926232 (= c!477825 ((_ is EmptyLang!9021) lt!1026878))))

(declare-fun b!2926233 () Bool)

(declare-fun e!1845736 () Bool)

(assert (=> b!2926233 (= e!1845738 e!1845736)))

(declare-fun res!1207841 () Bool)

(assert (=> b!2926233 (=> (not res!1207841) (not e!1845736))))

(assert (=> b!2926233 (= res!1207841 (not lt!1026882))))

(declare-fun bm!191885 () Bool)

(declare-fun call!191890 () Bool)

(declare-fun isEmpty!19004 (List!34886) Bool)

(assert (=> bm!191885 (= call!191890 (isEmpty!19004 s!11993))))

(declare-fun b!2926234 () Bool)

(assert (=> b!2926234 (= e!1845735 (= lt!1026882 call!191890))))

(declare-fun d!838930 () Bool)

(assert (=> d!838930 e!1845735))

(declare-fun c!477826 () Bool)

(assert (=> d!838930 (= c!477826 ((_ is EmptyExpr!9021) lt!1026878))))

(declare-fun e!1845734 () Bool)

(assert (=> d!838930 (= lt!1026882 e!1845734)))

(declare-fun c!477824 () Bool)

(assert (=> d!838930 (= c!477824 (isEmpty!19004 s!11993))))

(assert (=> d!838930 (validRegex!3754 lt!1026878)))

(assert (=> d!838930 (= (matchR!3903 lt!1026878 s!11993) lt!1026882)))

(declare-fun b!2926235 () Bool)

(declare-fun e!1845733 () Bool)

(assert (=> b!2926235 (= e!1845736 e!1845733)))

(declare-fun res!1207838 () Bool)

(assert (=> b!2926235 (=> res!1207838 e!1845733)))

(assert (=> b!2926235 (= res!1207838 call!191890)))

(declare-fun b!2926236 () Bool)

(assert (=> b!2926236 (= e!1845734 (nullable!2834 lt!1026878))))

(declare-fun b!2926237 () Bool)

(declare-fun res!1207839 () Bool)

(assert (=> b!2926237 (=> res!1207839 e!1845738)))

(assert (=> b!2926237 (= res!1207839 (not ((_ is ElementMatch!9021) lt!1026878)))))

(assert (=> b!2926237 (= e!1845737 e!1845738)))

(declare-fun b!2926238 () Bool)

(declare-fun head!6507 (List!34886) C!18228)

(assert (=> b!2926238 (= e!1845739 (= (head!6507 s!11993) (c!477811 lt!1026878)))))

(declare-fun b!2926239 () Bool)

(declare-fun res!1207843 () Bool)

(assert (=> b!2926239 (=> res!1207843 e!1845733)))

(declare-fun tail!4733 (List!34886) List!34886)

(assert (=> b!2926239 (= res!1207843 (not (isEmpty!19004 (tail!4733 s!11993))))))

(declare-fun b!2926240 () Bool)

(assert (=> b!2926240 (= e!1845737 (not lt!1026882))))

(declare-fun b!2926241 () Bool)

(declare-fun res!1207840 () Bool)

(assert (=> b!2926241 (=> (not res!1207840) (not e!1845739))))

(assert (=> b!2926241 (= res!1207840 (isEmpty!19004 (tail!4733 s!11993)))))

(declare-fun b!2926242 () Bool)

(declare-fun res!1207842 () Bool)

(assert (=> b!2926242 (=> (not res!1207842) (not e!1845739))))

(assert (=> b!2926242 (= res!1207842 (not call!191890))))

(declare-fun b!2926243 () Bool)

(assert (=> b!2926243 (= e!1845733 (not (= (head!6507 s!11993) (c!477811 lt!1026878))))))

(declare-fun b!2926244 () Bool)

(declare-fun derivativeStep!2448 (Regex!9021 C!18228) Regex!9021)

(assert (=> b!2926244 (= e!1845734 (matchR!3903 (derivativeStep!2448 lt!1026878 (head!6507 s!11993)) (tail!4733 s!11993)))))

(assert (= (and d!838930 c!477824) b!2926236))

(assert (= (and d!838930 (not c!477824)) b!2926244))

(assert (= (and d!838930 c!477826) b!2926234))

(assert (= (and d!838930 (not c!477826)) b!2926232))

(assert (= (and b!2926232 c!477825) b!2926240))

(assert (= (and b!2926232 (not c!477825)) b!2926237))

(assert (= (and b!2926237 (not res!1207839)) b!2926231))

(assert (= (and b!2926231 res!1207844) b!2926242))

(assert (= (and b!2926242 res!1207842) b!2926241))

(assert (= (and b!2926241 res!1207840) b!2926238))

(assert (= (and b!2926231 (not res!1207845)) b!2926233))

(assert (= (and b!2926233 res!1207841) b!2926235))

(assert (= (and b!2926235 (not res!1207838)) b!2926239))

(assert (= (and b!2926239 (not res!1207843)) b!2926243))

(assert (= (or b!2926234 b!2926235 b!2926242) bm!191885))

(declare-fun m!3319047 () Bool)

(assert (=> bm!191885 m!3319047))

(declare-fun m!3319049 () Bool)

(assert (=> b!2926243 m!3319049))

(declare-fun m!3319051 () Bool)

(assert (=> b!2926236 m!3319051))

(declare-fun m!3319053 () Bool)

(assert (=> b!2926239 m!3319053))

(assert (=> b!2926239 m!3319053))

(declare-fun m!3319055 () Bool)

(assert (=> b!2926239 m!3319055))

(assert (=> b!2926238 m!3319049))

(assert (=> d!838930 m!3319047))

(assert (=> d!838930 m!3319007))

(assert (=> b!2926241 m!3319053))

(assert (=> b!2926241 m!3319053))

(assert (=> b!2926241 m!3319055))

(assert (=> b!2926244 m!3319049))

(assert (=> b!2926244 m!3319049))

(declare-fun m!3319057 () Bool)

(assert (=> b!2926244 m!3319057))

(assert (=> b!2926244 m!3319053))

(assert (=> b!2926244 m!3319057))

(assert (=> b!2926244 m!3319053))

(declare-fun m!3319059 () Bool)

(assert (=> b!2926244 m!3319059))

(assert (=> b!2926169 d!838930))

(declare-fun b!2926245 () Bool)

(declare-fun res!1207853 () Bool)

(declare-fun e!1845745 () Bool)

(assert (=> b!2926245 (=> res!1207853 e!1845745)))

(declare-fun e!1845746 () Bool)

(assert (=> b!2926245 (= res!1207853 e!1845746)))

(declare-fun res!1207852 () Bool)

(assert (=> b!2926245 (=> (not res!1207852) (not e!1845746))))

(declare-fun lt!1026883 () Bool)

(assert (=> b!2926245 (= res!1207852 lt!1026883)))

(declare-fun b!2926246 () Bool)

(declare-fun e!1845742 () Bool)

(declare-fun e!1845744 () Bool)

(assert (=> b!2926246 (= e!1845742 e!1845744)))

(declare-fun c!477828 () Bool)

(assert (=> b!2926246 (= c!477828 ((_ is EmptyLang!9021) (regTwo!18555 r!17423)))))

(declare-fun b!2926247 () Bool)

(declare-fun e!1845743 () Bool)

(assert (=> b!2926247 (= e!1845745 e!1845743)))

(declare-fun res!1207849 () Bool)

(assert (=> b!2926247 (=> (not res!1207849) (not e!1845743))))

(assert (=> b!2926247 (= res!1207849 (not lt!1026883))))

(declare-fun bm!191886 () Bool)

(declare-fun call!191891 () Bool)

(assert (=> bm!191886 (= call!191891 (isEmpty!19004 s!11993))))

(declare-fun b!2926248 () Bool)

(assert (=> b!2926248 (= e!1845742 (= lt!1026883 call!191891))))

(declare-fun d!838934 () Bool)

(assert (=> d!838934 e!1845742))

(declare-fun c!477829 () Bool)

(assert (=> d!838934 (= c!477829 ((_ is EmptyExpr!9021) (regTwo!18555 r!17423)))))

(declare-fun e!1845741 () Bool)

(assert (=> d!838934 (= lt!1026883 e!1845741)))

(declare-fun c!477827 () Bool)

(assert (=> d!838934 (= c!477827 (isEmpty!19004 s!11993))))

(assert (=> d!838934 (validRegex!3754 (regTwo!18555 r!17423))))

(assert (=> d!838934 (= (matchR!3903 (regTwo!18555 r!17423) s!11993) lt!1026883)))

(declare-fun b!2926249 () Bool)

(declare-fun e!1845740 () Bool)

(assert (=> b!2926249 (= e!1845743 e!1845740)))

(declare-fun res!1207846 () Bool)

(assert (=> b!2926249 (=> res!1207846 e!1845740)))

(assert (=> b!2926249 (= res!1207846 call!191891)))

(declare-fun b!2926250 () Bool)

(assert (=> b!2926250 (= e!1845741 (nullable!2834 (regTwo!18555 r!17423)))))

(declare-fun b!2926251 () Bool)

(declare-fun res!1207847 () Bool)

(assert (=> b!2926251 (=> res!1207847 e!1845745)))

(assert (=> b!2926251 (= res!1207847 (not ((_ is ElementMatch!9021) (regTwo!18555 r!17423))))))

(assert (=> b!2926251 (= e!1845744 e!1845745)))

(declare-fun b!2926252 () Bool)

(assert (=> b!2926252 (= e!1845746 (= (head!6507 s!11993) (c!477811 (regTwo!18555 r!17423))))))

(declare-fun b!2926253 () Bool)

(declare-fun res!1207851 () Bool)

(assert (=> b!2926253 (=> res!1207851 e!1845740)))

(assert (=> b!2926253 (= res!1207851 (not (isEmpty!19004 (tail!4733 s!11993))))))

(declare-fun b!2926254 () Bool)

(assert (=> b!2926254 (= e!1845744 (not lt!1026883))))

(declare-fun b!2926255 () Bool)

(declare-fun res!1207848 () Bool)

(assert (=> b!2926255 (=> (not res!1207848) (not e!1845746))))

(assert (=> b!2926255 (= res!1207848 (isEmpty!19004 (tail!4733 s!11993)))))

(declare-fun b!2926256 () Bool)

(declare-fun res!1207850 () Bool)

(assert (=> b!2926256 (=> (not res!1207850) (not e!1845746))))

(assert (=> b!2926256 (= res!1207850 (not call!191891))))

(declare-fun b!2926257 () Bool)

(assert (=> b!2926257 (= e!1845740 (not (= (head!6507 s!11993) (c!477811 (regTwo!18555 r!17423)))))))

(declare-fun b!2926258 () Bool)

(assert (=> b!2926258 (= e!1845741 (matchR!3903 (derivativeStep!2448 (regTwo!18555 r!17423) (head!6507 s!11993)) (tail!4733 s!11993)))))

(assert (= (and d!838934 c!477827) b!2926250))

(assert (= (and d!838934 (not c!477827)) b!2926258))

(assert (= (and d!838934 c!477829) b!2926248))

(assert (= (and d!838934 (not c!477829)) b!2926246))

(assert (= (and b!2926246 c!477828) b!2926254))

(assert (= (and b!2926246 (not c!477828)) b!2926251))

(assert (= (and b!2926251 (not res!1207847)) b!2926245))

(assert (= (and b!2926245 res!1207852) b!2926256))

(assert (= (and b!2926256 res!1207850) b!2926255))

(assert (= (and b!2926255 res!1207848) b!2926252))

(assert (= (and b!2926245 (not res!1207853)) b!2926247))

(assert (= (and b!2926247 res!1207849) b!2926249))

(assert (= (and b!2926249 (not res!1207846)) b!2926253))

(assert (= (and b!2926253 (not res!1207851)) b!2926257))

(assert (= (or b!2926248 b!2926249 b!2926256) bm!191886))

(assert (=> bm!191886 m!3319047))

(assert (=> b!2926257 m!3319049))

(declare-fun m!3319061 () Bool)

(assert (=> b!2926250 m!3319061))

(assert (=> b!2926253 m!3319053))

(assert (=> b!2926253 m!3319053))

(assert (=> b!2926253 m!3319055))

(assert (=> b!2926252 m!3319049))

(assert (=> d!838934 m!3319047))

(declare-fun m!3319063 () Bool)

(assert (=> d!838934 m!3319063))

(assert (=> b!2926255 m!3319053))

(assert (=> b!2926255 m!3319053))

(assert (=> b!2926255 m!3319055))

(assert (=> b!2926258 m!3319049))

(assert (=> b!2926258 m!3319049))

(declare-fun m!3319065 () Bool)

(assert (=> b!2926258 m!3319065))

(assert (=> b!2926258 m!3319053))

(assert (=> b!2926258 m!3319065))

(assert (=> b!2926258 m!3319053))

(declare-fun m!3319067 () Bool)

(assert (=> b!2926258 m!3319067))

(assert (=> b!2926169 d!838934))

(declare-fun c!477862 () Bool)

(declare-fun c!477866 () Bool)

(declare-fun call!191911 () Regex!9021)

(declare-fun bm!191904 () Bool)

(assert (=> bm!191904 (= call!191911 (simplify!50 (ite c!477866 (reg!9350 (regTwo!18555 r!17423)) (ite c!477862 (regOne!18555 (regTwo!18555 r!17423)) (regTwo!18554 (regTwo!18555 r!17423))))))))

(declare-fun call!191913 () Bool)

(declare-fun lt!1026905 () Regex!9021)

(declare-fun lt!1026904 () Regex!9021)

(declare-fun lt!1026902 () Regex!9021)

(declare-fun bm!191905 () Bool)

(declare-fun isEmptyLang!187 (Regex!9021) Bool)

(assert (=> bm!191905 (= call!191913 (isEmptyLang!187 (ite c!477866 lt!1026902 (ite c!477862 lt!1026904 lt!1026905))))))

(declare-fun d!838936 () Bool)

(declare-fun e!1845814 () Bool)

(assert (=> d!838936 e!1845814))

(declare-fun res!1207891 () Bool)

(assert (=> d!838936 (=> (not res!1207891) (not e!1845814))))

(declare-fun lt!1026907 () Regex!9021)

(assert (=> d!838936 (= res!1207891 (validRegex!3754 lt!1026907))))

(declare-fun e!1845809 () Regex!9021)

(assert (=> d!838936 (= lt!1026907 e!1845809)))

(declare-fun c!477870 () Bool)

(assert (=> d!838936 (= c!477870 ((_ is EmptyLang!9021) (regTwo!18555 r!17423)))))

(assert (=> d!838936 (validRegex!3754 (regTwo!18555 r!17423))))

(assert (=> d!838936 (= (simplify!50 (regTwo!18555 r!17423)) lt!1026907)))

(declare-fun b!2926357 () Bool)

(declare-fun e!1845806 () Regex!9021)

(declare-fun e!1845805 () Regex!9021)

(assert (=> b!2926357 (= e!1845806 e!1845805)))

(assert (=> b!2926357 (= c!477866 ((_ is Star!9021) (regTwo!18555 r!17423)))))

(declare-fun bm!191906 () Bool)

(declare-fun call!191909 () Regex!9021)

(assert (=> bm!191906 (= call!191909 call!191911)))

(declare-fun b!2926358 () Bool)

(declare-fun e!1845804 () Regex!9021)

(assert (=> b!2926358 (= e!1845809 e!1845804)))

(declare-fun c!477868 () Bool)

(assert (=> b!2926358 (= c!477868 ((_ is ElementMatch!9021) (regTwo!18555 r!17423)))))

(declare-fun b!2926359 () Bool)

(assert (=> b!2926359 (= e!1845806 EmptyExpr!9021)))

(declare-fun call!191912 () Bool)

(declare-fun bm!191907 () Bool)

(declare-fun isEmptyExpr!272 (Regex!9021) Bool)

(assert (=> bm!191907 (= call!191912 (isEmptyExpr!272 (ite c!477866 lt!1026902 lt!1026905)))))

(declare-fun b!2926360 () Bool)

(declare-fun c!477871 () Bool)

(declare-fun e!1845802 () Bool)

(assert (=> b!2926360 (= c!477871 e!1845802)))

(declare-fun res!1207890 () Bool)

(assert (=> b!2926360 (=> res!1207890 e!1845802)))

(assert (=> b!2926360 (= res!1207890 call!191913)))

(assert (=> b!2926360 (= lt!1026902 call!191911)))

(declare-fun e!1845810 () Regex!9021)

(assert (=> b!2926360 (= e!1845805 e!1845810)))

(declare-fun b!2926361 () Bool)

(assert (=> b!2926361 (= e!1845802 call!191912)))

(declare-fun b!2926362 () Bool)

(assert (=> b!2926362 (= e!1845804 (regTwo!18555 r!17423))))

(declare-fun bm!191908 () Bool)

(declare-fun call!191915 () Bool)

(assert (=> bm!191908 (= call!191915 call!191913)))

(declare-fun b!2926363 () Bool)

(declare-fun e!1845812 () Regex!9021)

(declare-fun e!1845803 () Regex!9021)

(assert (=> b!2926363 (= e!1845812 e!1845803)))

(declare-fun lt!1026903 () Regex!9021)

(declare-fun call!191910 () Regex!9021)

(assert (=> b!2926363 (= lt!1026903 call!191910)))

(assert (=> b!2926363 (= lt!1026905 call!191909)))

(declare-fun res!1207892 () Bool)

(declare-fun call!191914 () Bool)

(assert (=> b!2926363 (= res!1207892 call!191914)))

(declare-fun e!1845813 () Bool)

(assert (=> b!2926363 (=> res!1207892 e!1845813)))

(declare-fun c!477861 () Bool)

(assert (=> b!2926363 (= c!477861 e!1845813)))

(declare-fun b!2926364 () Bool)

(assert (=> b!2926364 (= e!1845810 EmptyExpr!9021)))

(declare-fun b!2926365 () Bool)

(declare-fun c!477867 () Bool)

(assert (=> b!2926365 (= c!477867 call!191914)))

(declare-fun e!1845808 () Regex!9021)

(declare-fun e!1845811 () Regex!9021)

(assert (=> b!2926365 (= e!1845808 e!1845811)))

(declare-fun b!2926366 () Bool)

(assert (=> b!2926366 (= e!1845803 EmptyLang!9021)))

(declare-fun b!2926367 () Bool)

(assert (=> b!2926367 (= e!1845814 (= (nullable!2834 lt!1026907) (nullable!2834 (regTwo!18555 r!17423))))))

(declare-fun b!2926368 () Bool)

(assert (=> b!2926368 (= e!1845812 e!1845808)))

(assert (=> b!2926368 (= lt!1026904 call!191909)))

(declare-fun lt!1026906 () Regex!9021)

(assert (=> b!2926368 (= lt!1026906 call!191910)))

(declare-fun c!477863 () Bool)

(assert (=> b!2926368 (= c!477863 call!191915)))

(declare-fun bm!191909 () Bool)

(assert (=> bm!191909 (= call!191914 (isEmptyLang!187 (ite c!477862 lt!1026906 lt!1026903)))))

(declare-fun b!2926369 () Bool)

(declare-fun e!1845807 () Regex!9021)

(assert (=> b!2926369 (= e!1845807 (Concat!14342 lt!1026903 lt!1026905))))

(declare-fun b!2926370 () Bool)

(declare-fun c!477865 () Bool)

(assert (=> b!2926370 (= c!477865 (isEmptyExpr!272 lt!1026903))))

(declare-fun e!1845815 () Regex!9021)

(assert (=> b!2926370 (= e!1845803 e!1845815)))

(declare-fun b!2926371 () Bool)

(assert (=> b!2926371 (= e!1845811 lt!1026904)))

(declare-fun b!2926372 () Bool)

(assert (=> b!2926372 (= e!1845809 EmptyLang!9021)))

(declare-fun b!2926373 () Bool)

(assert (=> b!2926373 (= c!477862 ((_ is Union!9021) (regTwo!18555 r!17423)))))

(assert (=> b!2926373 (= e!1845805 e!1845812)))

(declare-fun b!2926374 () Bool)

(assert (=> b!2926374 (= e!1845807 lt!1026903)))

(declare-fun b!2926375 () Bool)

(assert (=> b!2926375 (= e!1845815 lt!1026905)))

(declare-fun b!2926376 () Bool)

(assert (=> b!2926376 (= e!1845811 (Union!9021 lt!1026904 lt!1026906))))

(declare-fun b!2926377 () Bool)

(assert (=> b!2926377 (= e!1845815 e!1845807)))

(declare-fun c!477869 () Bool)

(assert (=> b!2926377 (= c!477869 call!191912)))

(declare-fun b!2926378 () Bool)

(declare-fun c!477864 () Bool)

(assert (=> b!2926378 (= c!477864 ((_ is EmptyExpr!9021) (regTwo!18555 r!17423)))))

(assert (=> b!2926378 (= e!1845804 e!1845806)))

(declare-fun b!2926379 () Bool)

(assert (=> b!2926379 (= e!1845810 (Star!9021 lt!1026902))))

(declare-fun b!2926380 () Bool)

(assert (=> b!2926380 (= e!1845813 call!191915)))

(declare-fun b!2926381 () Bool)

(assert (=> b!2926381 (= e!1845808 lt!1026906)))

(declare-fun bm!191910 () Bool)

(assert (=> bm!191910 (= call!191910 (simplify!50 (ite c!477862 (regTwo!18555 (regTwo!18555 r!17423)) (regOne!18554 (regTwo!18555 r!17423)))))))

(assert (= (and d!838936 c!477870) b!2926372))

(assert (= (and d!838936 (not c!477870)) b!2926358))

(assert (= (and b!2926358 c!477868) b!2926362))

(assert (= (and b!2926358 (not c!477868)) b!2926378))

(assert (= (and b!2926378 c!477864) b!2926359))

(assert (= (and b!2926378 (not c!477864)) b!2926357))

(assert (= (and b!2926357 c!477866) b!2926360))

(assert (= (and b!2926357 (not c!477866)) b!2926373))

(assert (= (and b!2926360 (not res!1207890)) b!2926361))

(assert (= (and b!2926360 c!477871) b!2926364))

(assert (= (and b!2926360 (not c!477871)) b!2926379))

(assert (= (and b!2926373 c!477862) b!2926368))

(assert (= (and b!2926373 (not c!477862)) b!2926363))

(assert (= (and b!2926368 c!477863) b!2926381))

(assert (= (and b!2926368 (not c!477863)) b!2926365))

(assert (= (and b!2926365 c!477867) b!2926371))

(assert (= (and b!2926365 (not c!477867)) b!2926376))

(assert (= (and b!2926363 (not res!1207892)) b!2926380))

(assert (= (and b!2926363 c!477861) b!2926366))

(assert (= (and b!2926363 (not c!477861)) b!2926370))

(assert (= (and b!2926370 c!477865) b!2926375))

(assert (= (and b!2926370 (not c!477865)) b!2926377))

(assert (= (and b!2926377 c!477869) b!2926374))

(assert (= (and b!2926377 (not c!477869)) b!2926369))

(assert (= (or b!2926368 b!2926363) bm!191906))

(assert (= (or b!2926368 b!2926363) bm!191910))

(assert (= (or b!2926368 b!2926380) bm!191908))

(assert (= (or b!2926365 b!2926363) bm!191909))

(assert (= (or b!2926361 b!2926377) bm!191907))

(assert (= (or b!2926360 bm!191906) bm!191904))

(assert (= (or b!2926360 bm!191908) bm!191905))

(assert (= (and d!838936 res!1207891) b!2926367))

(declare-fun m!3319089 () Bool)

(assert (=> bm!191904 m!3319089))

(declare-fun m!3319093 () Bool)

(assert (=> bm!191907 m!3319093))

(declare-fun m!3319095 () Bool)

(assert (=> b!2926367 m!3319095))

(assert (=> b!2926367 m!3319061))

(declare-fun m!3319099 () Bool)

(assert (=> d!838936 m!3319099))

(assert (=> d!838936 m!3319063))

(declare-fun m!3319101 () Bool)

(assert (=> bm!191910 m!3319101))

(declare-fun m!3319103 () Bool)

(assert (=> b!2926370 m!3319103))

(declare-fun m!3319105 () Bool)

(assert (=> bm!191909 m!3319105))

(declare-fun m!3319107 () Bool)

(assert (=> bm!191905 m!3319107))

(assert (=> b!2926169 d!838936))

(declare-fun d!838942 () Bool)

(assert (=> d!838942 (= (matchR!3903 (regTwo!18555 r!17423) s!11993) (matchR!3903 (simplify!50 (regTwo!18555 r!17423)) s!11993))))

(declare-fun lt!1026912 () Unit!48381)

(declare-fun choose!17271 (Regex!9021 List!34886) Unit!48381)

(assert (=> d!838942 (= lt!1026912 (choose!17271 (regTwo!18555 r!17423) s!11993))))

(assert (=> d!838942 (validRegex!3754 (regTwo!18555 r!17423))))

(assert (=> d!838942 (= (lemmaSimplifySound!48 (regTwo!18555 r!17423) s!11993) lt!1026912)))

(declare-fun bs!525025 () Bool)

(assert (= bs!525025 d!838942))

(declare-fun m!3319117 () Bool)

(assert (=> bs!525025 m!3319117))

(assert (=> bs!525025 m!3319005))

(assert (=> bs!525025 m!3319033))

(declare-fun m!3319119 () Bool)

(assert (=> bs!525025 m!3319119))

(assert (=> bs!525025 m!3319033))

(assert (=> bs!525025 m!3319063))

(assert (=> b!2926169 d!838942))

(declare-fun b!2926410 () Bool)

(declare-fun res!1207912 () Bool)

(declare-fun e!1845832 () Bool)

(assert (=> b!2926410 (=> res!1207912 e!1845832)))

(assert (=> b!2926410 (= res!1207912 (not ((_ is Concat!14342) lt!1026872)))))

(declare-fun e!1845836 () Bool)

(assert (=> b!2926410 (= e!1845836 e!1845832)))

(declare-fun d!838948 () Bool)

(declare-fun res!1207911 () Bool)

(declare-fun e!1845834 () Bool)

(assert (=> d!838948 (=> res!1207911 e!1845834)))

(assert (=> d!838948 (= res!1207911 ((_ is ElementMatch!9021) lt!1026872))))

(assert (=> d!838948 (= (validRegex!3754 lt!1026872) e!1845834)))

(declare-fun b!2926411 () Bool)

(declare-fun e!1845835 () Bool)

(assert (=> b!2926411 (= e!1845832 e!1845835)))

(declare-fun res!1207910 () Bool)

(assert (=> b!2926411 (=> (not res!1207910) (not e!1845835))))

(declare-fun call!191920 () Bool)

(assert (=> b!2926411 (= res!1207910 call!191920)))

(declare-fun b!2926412 () Bool)

(declare-fun call!191918 () Bool)

(assert (=> b!2926412 (= e!1845835 call!191918)))

(declare-fun bm!191913 () Bool)

(declare-fun call!191919 () Bool)

(assert (=> bm!191913 (= call!191920 call!191919)))

(declare-fun b!2926413 () Bool)

(declare-fun res!1207909 () Bool)

(declare-fun e!1845833 () Bool)

(assert (=> b!2926413 (=> (not res!1207909) (not e!1845833))))

(assert (=> b!2926413 (= res!1207909 call!191918)))

(assert (=> b!2926413 (= e!1845836 e!1845833)))

(declare-fun b!2926414 () Bool)

(declare-fun e!1845830 () Bool)

(assert (=> b!2926414 (= e!1845830 call!191919)))

(declare-fun b!2926415 () Bool)

(assert (=> b!2926415 (= e!1845833 call!191920)))

(declare-fun b!2926416 () Bool)

(declare-fun e!1845831 () Bool)

(assert (=> b!2926416 (= e!1845831 e!1845836)))

(declare-fun c!477878 () Bool)

(assert (=> b!2926416 (= c!477878 ((_ is Union!9021) lt!1026872))))

(declare-fun bm!191914 () Bool)

(assert (=> bm!191914 (= call!191918 (validRegex!3754 (ite c!477878 (regOne!18555 lt!1026872) (regTwo!18554 lt!1026872))))))

(declare-fun c!477879 () Bool)

(declare-fun bm!191915 () Bool)

(assert (=> bm!191915 (= call!191919 (validRegex!3754 (ite c!477879 (reg!9350 lt!1026872) (ite c!477878 (regTwo!18555 lt!1026872) (regOne!18554 lt!1026872)))))))

(declare-fun b!2926417 () Bool)

(assert (=> b!2926417 (= e!1845834 e!1845831)))

(assert (=> b!2926417 (= c!477879 ((_ is Star!9021) lt!1026872))))

(declare-fun b!2926418 () Bool)

(assert (=> b!2926418 (= e!1845831 e!1845830)))

(declare-fun res!1207913 () Bool)

(assert (=> b!2926418 (= res!1207913 (not (nullable!2834 (reg!9350 lt!1026872))))))

(assert (=> b!2926418 (=> (not res!1207913) (not e!1845830))))

(assert (= (and d!838948 (not res!1207911)) b!2926417))

(assert (= (and b!2926417 c!477879) b!2926418))

(assert (= (and b!2926417 (not c!477879)) b!2926416))

(assert (= (and b!2926418 res!1207913) b!2926414))

(assert (= (and b!2926416 c!477878) b!2926413))

(assert (= (and b!2926416 (not c!477878)) b!2926410))

(assert (= (and b!2926413 res!1207909) b!2926415))

(assert (= (and b!2926410 (not res!1207912)) b!2926411))

(assert (= (and b!2926411 res!1207910) b!2926412))

(assert (= (or b!2926413 b!2926412) bm!191914))

(assert (= (or b!2926415 b!2926411) bm!191913))

(assert (= (or b!2926414 bm!191913) bm!191915))

(declare-fun m!3319121 () Bool)

(assert (=> bm!191914 m!3319121))

(declare-fun m!3319123 () Bool)

(assert (=> bm!191915 m!3319123))

(declare-fun m!3319125 () Bool)

(assert (=> b!2926418 m!3319125))

(assert (=> b!2926164 d!838948))

(declare-fun b!2926419 () Bool)

(declare-fun res!1207917 () Bool)

(declare-fun e!1845839 () Bool)

(assert (=> b!2926419 (=> res!1207917 e!1845839)))

(assert (=> b!2926419 (= res!1207917 (not ((_ is Concat!14342) (simplify!50 r!17423))))))

(declare-fun e!1845843 () Bool)

(assert (=> b!2926419 (= e!1845843 e!1845839)))

(declare-fun d!838950 () Bool)

(declare-fun res!1207916 () Bool)

(declare-fun e!1845841 () Bool)

(assert (=> d!838950 (=> res!1207916 e!1845841)))

(assert (=> d!838950 (= res!1207916 ((_ is ElementMatch!9021) (simplify!50 r!17423)))))

(assert (=> d!838950 (= (validRegex!3754 (simplify!50 r!17423)) e!1845841)))

(declare-fun b!2926420 () Bool)

(declare-fun e!1845842 () Bool)

(assert (=> b!2926420 (= e!1845839 e!1845842)))

(declare-fun res!1207915 () Bool)

(assert (=> b!2926420 (=> (not res!1207915) (not e!1845842))))

(declare-fun call!191923 () Bool)

(assert (=> b!2926420 (= res!1207915 call!191923)))

(declare-fun b!2926421 () Bool)

(declare-fun call!191921 () Bool)

(assert (=> b!2926421 (= e!1845842 call!191921)))

(declare-fun bm!191916 () Bool)

(declare-fun call!191922 () Bool)

(assert (=> bm!191916 (= call!191923 call!191922)))

(declare-fun b!2926422 () Bool)

(declare-fun res!1207914 () Bool)

(declare-fun e!1845840 () Bool)

(assert (=> b!2926422 (=> (not res!1207914) (not e!1845840))))

(assert (=> b!2926422 (= res!1207914 call!191921)))

(assert (=> b!2926422 (= e!1845843 e!1845840)))

(declare-fun b!2926423 () Bool)

(declare-fun e!1845837 () Bool)

(assert (=> b!2926423 (= e!1845837 call!191922)))

(declare-fun b!2926424 () Bool)

(assert (=> b!2926424 (= e!1845840 call!191923)))

(declare-fun b!2926425 () Bool)

(declare-fun e!1845838 () Bool)

(assert (=> b!2926425 (= e!1845838 e!1845843)))

(declare-fun c!477880 () Bool)

(assert (=> b!2926425 (= c!477880 ((_ is Union!9021) (simplify!50 r!17423)))))

(declare-fun bm!191917 () Bool)

(assert (=> bm!191917 (= call!191921 (validRegex!3754 (ite c!477880 (regOne!18555 (simplify!50 r!17423)) (regTwo!18554 (simplify!50 r!17423)))))))

(declare-fun bm!191918 () Bool)

(declare-fun c!477881 () Bool)

(assert (=> bm!191918 (= call!191922 (validRegex!3754 (ite c!477881 (reg!9350 (simplify!50 r!17423)) (ite c!477880 (regTwo!18555 (simplify!50 r!17423)) (regOne!18554 (simplify!50 r!17423))))))))

(declare-fun b!2926426 () Bool)

(assert (=> b!2926426 (= e!1845841 e!1845838)))

(assert (=> b!2926426 (= c!477881 ((_ is Star!9021) (simplify!50 r!17423)))))

(declare-fun b!2926427 () Bool)

(assert (=> b!2926427 (= e!1845838 e!1845837)))

(declare-fun res!1207918 () Bool)

(assert (=> b!2926427 (= res!1207918 (not (nullable!2834 (reg!9350 (simplify!50 r!17423)))))))

(assert (=> b!2926427 (=> (not res!1207918) (not e!1845837))))

(assert (= (and d!838950 (not res!1207916)) b!2926426))

(assert (= (and b!2926426 c!477881) b!2926427))

(assert (= (and b!2926426 (not c!477881)) b!2926425))

(assert (= (and b!2926427 res!1207918) b!2926423))

(assert (= (and b!2926425 c!477880) b!2926422))

(assert (= (and b!2926425 (not c!477880)) b!2926419))

(assert (= (and b!2926422 res!1207914) b!2926424))

(assert (= (and b!2926419 (not res!1207917)) b!2926420))

(assert (= (and b!2926420 res!1207915) b!2926421))

(assert (= (or b!2926422 b!2926421) bm!191917))

(assert (= (or b!2926424 b!2926420) bm!191916))

(assert (= (or b!2926423 bm!191916) bm!191918))

(declare-fun m!3319127 () Bool)

(assert (=> bm!191917 m!3319127))

(declare-fun m!3319129 () Bool)

(assert (=> bm!191918 m!3319129))

(declare-fun m!3319131 () Bool)

(assert (=> b!2926427 m!3319131))

(assert (=> b!2926174 d!838950))

(declare-fun c!477887 () Bool)

(declare-fun call!191926 () Regex!9021)

(declare-fun c!477883 () Bool)

(declare-fun bm!191919 () Bool)

(assert (=> bm!191919 (= call!191926 (simplify!50 (ite c!477887 (reg!9350 r!17423) (ite c!477883 (regOne!18555 r!17423) (regTwo!18554 r!17423)))))))

(declare-fun lt!1026913 () Regex!9021)

(declare-fun bm!191920 () Bool)

(declare-fun lt!1026916 () Regex!9021)

(declare-fun call!191928 () Bool)

(declare-fun lt!1026915 () Regex!9021)

(assert (=> bm!191920 (= call!191928 (isEmptyLang!187 (ite c!477887 lt!1026913 (ite c!477883 lt!1026915 lt!1026916))))))

(declare-fun d!838952 () Bool)

(declare-fun e!1845856 () Bool)

(assert (=> d!838952 e!1845856))

(declare-fun res!1207920 () Bool)

(assert (=> d!838952 (=> (not res!1207920) (not e!1845856))))

(declare-fun lt!1026918 () Regex!9021)

(assert (=> d!838952 (= res!1207920 (validRegex!3754 lt!1026918))))

(declare-fun e!1845851 () Regex!9021)

(assert (=> d!838952 (= lt!1026918 e!1845851)))

(declare-fun c!477891 () Bool)

(assert (=> d!838952 (= c!477891 ((_ is EmptyLang!9021) r!17423))))

(assert (=> d!838952 (validRegex!3754 r!17423)))

(assert (=> d!838952 (= (simplify!50 r!17423) lt!1026918)))

(declare-fun b!2926428 () Bool)

(declare-fun e!1845848 () Regex!9021)

(declare-fun e!1845847 () Regex!9021)

(assert (=> b!2926428 (= e!1845848 e!1845847)))

(assert (=> b!2926428 (= c!477887 ((_ is Star!9021) r!17423))))

(declare-fun bm!191921 () Bool)

(declare-fun call!191924 () Regex!9021)

(assert (=> bm!191921 (= call!191924 call!191926)))

(declare-fun b!2926429 () Bool)

(declare-fun e!1845846 () Regex!9021)

(assert (=> b!2926429 (= e!1845851 e!1845846)))

(declare-fun c!477889 () Bool)

(assert (=> b!2926429 (= c!477889 ((_ is ElementMatch!9021) r!17423))))

(declare-fun b!2926430 () Bool)

(assert (=> b!2926430 (= e!1845848 EmptyExpr!9021)))

(declare-fun call!191927 () Bool)

(declare-fun bm!191922 () Bool)

(assert (=> bm!191922 (= call!191927 (isEmptyExpr!272 (ite c!477887 lt!1026913 lt!1026916)))))

(declare-fun b!2926431 () Bool)

(declare-fun c!477892 () Bool)

(declare-fun e!1845844 () Bool)

(assert (=> b!2926431 (= c!477892 e!1845844)))

(declare-fun res!1207919 () Bool)

(assert (=> b!2926431 (=> res!1207919 e!1845844)))

(assert (=> b!2926431 (= res!1207919 call!191928)))

(assert (=> b!2926431 (= lt!1026913 call!191926)))

(declare-fun e!1845852 () Regex!9021)

(assert (=> b!2926431 (= e!1845847 e!1845852)))

(declare-fun b!2926432 () Bool)

(assert (=> b!2926432 (= e!1845844 call!191927)))

(declare-fun b!2926433 () Bool)

(assert (=> b!2926433 (= e!1845846 r!17423)))

(declare-fun bm!191923 () Bool)

(declare-fun call!191930 () Bool)

(assert (=> bm!191923 (= call!191930 call!191928)))

(declare-fun b!2926434 () Bool)

(declare-fun e!1845854 () Regex!9021)

(declare-fun e!1845845 () Regex!9021)

(assert (=> b!2926434 (= e!1845854 e!1845845)))

(declare-fun lt!1026914 () Regex!9021)

(declare-fun call!191925 () Regex!9021)

(assert (=> b!2926434 (= lt!1026914 call!191925)))

(assert (=> b!2926434 (= lt!1026916 call!191924)))

(declare-fun res!1207921 () Bool)

(declare-fun call!191929 () Bool)

(assert (=> b!2926434 (= res!1207921 call!191929)))

(declare-fun e!1845855 () Bool)

(assert (=> b!2926434 (=> res!1207921 e!1845855)))

(declare-fun c!477882 () Bool)

(assert (=> b!2926434 (= c!477882 e!1845855)))

(declare-fun b!2926435 () Bool)

(assert (=> b!2926435 (= e!1845852 EmptyExpr!9021)))

(declare-fun b!2926436 () Bool)

(declare-fun c!477888 () Bool)

(assert (=> b!2926436 (= c!477888 call!191929)))

(declare-fun e!1845850 () Regex!9021)

(declare-fun e!1845853 () Regex!9021)

(assert (=> b!2926436 (= e!1845850 e!1845853)))

(declare-fun b!2926437 () Bool)

(assert (=> b!2926437 (= e!1845845 EmptyLang!9021)))

(declare-fun b!2926438 () Bool)

(assert (=> b!2926438 (= e!1845856 (= (nullable!2834 lt!1026918) (nullable!2834 r!17423)))))

(declare-fun b!2926439 () Bool)

(assert (=> b!2926439 (= e!1845854 e!1845850)))

(assert (=> b!2926439 (= lt!1026915 call!191924)))

(declare-fun lt!1026917 () Regex!9021)

(assert (=> b!2926439 (= lt!1026917 call!191925)))

(declare-fun c!477884 () Bool)

(assert (=> b!2926439 (= c!477884 call!191930)))

(declare-fun bm!191924 () Bool)

(assert (=> bm!191924 (= call!191929 (isEmptyLang!187 (ite c!477883 lt!1026917 lt!1026914)))))

(declare-fun b!2926440 () Bool)

(declare-fun e!1845849 () Regex!9021)

(assert (=> b!2926440 (= e!1845849 (Concat!14342 lt!1026914 lt!1026916))))

(declare-fun b!2926441 () Bool)

(declare-fun c!477886 () Bool)

(assert (=> b!2926441 (= c!477886 (isEmptyExpr!272 lt!1026914))))

(declare-fun e!1845857 () Regex!9021)

(assert (=> b!2926441 (= e!1845845 e!1845857)))

(declare-fun b!2926442 () Bool)

(assert (=> b!2926442 (= e!1845853 lt!1026915)))

(declare-fun b!2926443 () Bool)

(assert (=> b!2926443 (= e!1845851 EmptyLang!9021)))

(declare-fun b!2926444 () Bool)

(assert (=> b!2926444 (= c!477883 ((_ is Union!9021) r!17423))))

(assert (=> b!2926444 (= e!1845847 e!1845854)))

(declare-fun b!2926445 () Bool)

(assert (=> b!2926445 (= e!1845849 lt!1026914)))

(declare-fun b!2926446 () Bool)

(assert (=> b!2926446 (= e!1845857 lt!1026916)))

(declare-fun b!2926447 () Bool)

(assert (=> b!2926447 (= e!1845853 (Union!9021 lt!1026915 lt!1026917))))

(declare-fun b!2926448 () Bool)

(assert (=> b!2926448 (= e!1845857 e!1845849)))

(declare-fun c!477890 () Bool)

(assert (=> b!2926448 (= c!477890 call!191927)))

(declare-fun b!2926449 () Bool)

(declare-fun c!477885 () Bool)

(assert (=> b!2926449 (= c!477885 ((_ is EmptyExpr!9021) r!17423))))

(assert (=> b!2926449 (= e!1845846 e!1845848)))

(declare-fun b!2926450 () Bool)

(assert (=> b!2926450 (= e!1845852 (Star!9021 lt!1026913))))

(declare-fun b!2926451 () Bool)

(assert (=> b!2926451 (= e!1845855 call!191930)))

(declare-fun b!2926452 () Bool)

(assert (=> b!2926452 (= e!1845850 lt!1026917)))

(declare-fun bm!191925 () Bool)

(assert (=> bm!191925 (= call!191925 (simplify!50 (ite c!477883 (regTwo!18555 r!17423) (regOne!18554 r!17423))))))

(assert (= (and d!838952 c!477891) b!2926443))

(assert (= (and d!838952 (not c!477891)) b!2926429))

(assert (= (and b!2926429 c!477889) b!2926433))

(assert (= (and b!2926429 (not c!477889)) b!2926449))

(assert (= (and b!2926449 c!477885) b!2926430))

(assert (= (and b!2926449 (not c!477885)) b!2926428))

(assert (= (and b!2926428 c!477887) b!2926431))

(assert (= (and b!2926428 (not c!477887)) b!2926444))

(assert (= (and b!2926431 (not res!1207919)) b!2926432))

(assert (= (and b!2926431 c!477892) b!2926435))

(assert (= (and b!2926431 (not c!477892)) b!2926450))

(assert (= (and b!2926444 c!477883) b!2926439))

(assert (= (and b!2926444 (not c!477883)) b!2926434))

(assert (= (and b!2926439 c!477884) b!2926452))

(assert (= (and b!2926439 (not c!477884)) b!2926436))

(assert (= (and b!2926436 c!477888) b!2926442))

(assert (= (and b!2926436 (not c!477888)) b!2926447))

(assert (= (and b!2926434 (not res!1207921)) b!2926451))

(assert (= (and b!2926434 c!477882) b!2926437))

(assert (= (and b!2926434 (not c!477882)) b!2926441))

(assert (= (and b!2926441 c!477886) b!2926446))

(assert (= (and b!2926441 (not c!477886)) b!2926448))

(assert (= (and b!2926448 c!477890) b!2926445))

(assert (= (and b!2926448 (not c!477890)) b!2926440))

(assert (= (or b!2926439 b!2926434) bm!191921))

(assert (= (or b!2926439 b!2926434) bm!191925))

(assert (= (or b!2926439 b!2926451) bm!191923))

(assert (= (or b!2926436 b!2926434) bm!191924))

(assert (= (or b!2926432 b!2926448) bm!191922))

(assert (= (or b!2926431 bm!191921) bm!191919))

(assert (= (or b!2926431 bm!191923) bm!191920))

(assert (= (and d!838952 res!1207920) b!2926438))

(declare-fun m!3319133 () Bool)

(assert (=> bm!191919 m!3319133))

(declare-fun m!3319135 () Bool)

(assert (=> bm!191922 m!3319135))

(declare-fun m!3319137 () Bool)

(assert (=> b!2926438 m!3319137))

(declare-fun m!3319139 () Bool)

(assert (=> b!2926438 m!3319139))

(declare-fun m!3319141 () Bool)

(assert (=> d!838952 m!3319141))

(assert (=> d!838952 m!3319015))

(declare-fun m!3319143 () Bool)

(assert (=> bm!191925 m!3319143))

(declare-fun m!3319145 () Bool)

(assert (=> b!2926441 m!3319145))

(declare-fun m!3319147 () Bool)

(assert (=> bm!191924 m!3319147))

(declare-fun m!3319149 () Bool)

(assert (=> bm!191920 m!3319149))

(assert (=> b!2926174 d!838952))

(declare-fun b!2926453 () Bool)

(declare-fun res!1207929 () Bool)

(declare-fun e!1845863 () Bool)

(assert (=> b!2926453 (=> res!1207929 e!1845863)))

(declare-fun e!1845864 () Bool)

(assert (=> b!2926453 (= res!1207929 e!1845864)))

(declare-fun res!1207928 () Bool)

(assert (=> b!2926453 (=> (not res!1207928) (not e!1845864))))

(declare-fun lt!1026919 () Bool)

(assert (=> b!2926453 (= res!1207928 lt!1026919)))

(declare-fun b!2926454 () Bool)

(declare-fun e!1845860 () Bool)

(declare-fun e!1845862 () Bool)

(assert (=> b!2926454 (= e!1845860 e!1845862)))

(declare-fun c!477894 () Bool)

(assert (=> b!2926454 (= c!477894 ((_ is EmptyLang!9021) (Union!9021 lt!1026872 lt!1026878)))))

(declare-fun b!2926455 () Bool)

(declare-fun e!1845861 () Bool)

(assert (=> b!2926455 (= e!1845863 e!1845861)))

(declare-fun res!1207925 () Bool)

(assert (=> b!2926455 (=> (not res!1207925) (not e!1845861))))

(assert (=> b!2926455 (= res!1207925 (not lt!1026919))))

(declare-fun bm!191926 () Bool)

(declare-fun call!191931 () Bool)

(assert (=> bm!191926 (= call!191931 (isEmpty!19004 s!11993))))

(declare-fun b!2926456 () Bool)

(assert (=> b!2926456 (= e!1845860 (= lt!1026919 call!191931))))

(declare-fun d!838954 () Bool)

(assert (=> d!838954 e!1845860))

(declare-fun c!477895 () Bool)

(assert (=> d!838954 (= c!477895 ((_ is EmptyExpr!9021) (Union!9021 lt!1026872 lt!1026878)))))

(declare-fun e!1845859 () Bool)

(assert (=> d!838954 (= lt!1026919 e!1845859)))

(declare-fun c!477893 () Bool)

(assert (=> d!838954 (= c!477893 (isEmpty!19004 s!11993))))

(assert (=> d!838954 (validRegex!3754 (Union!9021 lt!1026872 lt!1026878))))

(assert (=> d!838954 (= (matchR!3903 (Union!9021 lt!1026872 lt!1026878) s!11993) lt!1026919)))

(declare-fun b!2926457 () Bool)

(declare-fun e!1845858 () Bool)

(assert (=> b!2926457 (= e!1845861 e!1845858)))

(declare-fun res!1207922 () Bool)

(assert (=> b!2926457 (=> res!1207922 e!1845858)))

(assert (=> b!2926457 (= res!1207922 call!191931)))

(declare-fun b!2926458 () Bool)

(assert (=> b!2926458 (= e!1845859 (nullable!2834 (Union!9021 lt!1026872 lt!1026878)))))

(declare-fun b!2926459 () Bool)

(declare-fun res!1207923 () Bool)

(assert (=> b!2926459 (=> res!1207923 e!1845863)))

(assert (=> b!2926459 (= res!1207923 (not ((_ is ElementMatch!9021) (Union!9021 lt!1026872 lt!1026878))))))

(assert (=> b!2926459 (= e!1845862 e!1845863)))

(declare-fun b!2926460 () Bool)

(assert (=> b!2926460 (= e!1845864 (= (head!6507 s!11993) (c!477811 (Union!9021 lt!1026872 lt!1026878))))))

(declare-fun b!2926461 () Bool)

(declare-fun res!1207927 () Bool)

(assert (=> b!2926461 (=> res!1207927 e!1845858)))

(assert (=> b!2926461 (= res!1207927 (not (isEmpty!19004 (tail!4733 s!11993))))))

(declare-fun b!2926462 () Bool)

(assert (=> b!2926462 (= e!1845862 (not lt!1026919))))

(declare-fun b!2926463 () Bool)

(declare-fun res!1207924 () Bool)

(assert (=> b!2926463 (=> (not res!1207924) (not e!1845864))))

(assert (=> b!2926463 (= res!1207924 (isEmpty!19004 (tail!4733 s!11993)))))

(declare-fun b!2926464 () Bool)

(declare-fun res!1207926 () Bool)

(assert (=> b!2926464 (=> (not res!1207926) (not e!1845864))))

(assert (=> b!2926464 (= res!1207926 (not call!191931))))

(declare-fun b!2926465 () Bool)

(assert (=> b!2926465 (= e!1845858 (not (= (head!6507 s!11993) (c!477811 (Union!9021 lt!1026872 lt!1026878)))))))

(declare-fun b!2926466 () Bool)

(assert (=> b!2926466 (= e!1845859 (matchR!3903 (derivativeStep!2448 (Union!9021 lt!1026872 lt!1026878) (head!6507 s!11993)) (tail!4733 s!11993)))))

(assert (= (and d!838954 c!477893) b!2926458))

(assert (= (and d!838954 (not c!477893)) b!2926466))

(assert (= (and d!838954 c!477895) b!2926456))

(assert (= (and d!838954 (not c!477895)) b!2926454))

(assert (= (and b!2926454 c!477894) b!2926462))

(assert (= (and b!2926454 (not c!477894)) b!2926459))

(assert (= (and b!2926459 (not res!1207923)) b!2926453))

(assert (= (and b!2926453 res!1207928) b!2926464))

(assert (= (and b!2926464 res!1207926) b!2926463))

(assert (= (and b!2926463 res!1207924) b!2926460))

(assert (= (and b!2926453 (not res!1207929)) b!2926455))

(assert (= (and b!2926455 res!1207925) b!2926457))

(assert (= (and b!2926457 (not res!1207922)) b!2926461))

(assert (= (and b!2926461 (not res!1207927)) b!2926465))

(assert (= (or b!2926456 b!2926457 b!2926464) bm!191926))

(assert (=> bm!191926 m!3319047))

(assert (=> b!2926465 m!3319049))

(declare-fun m!3319151 () Bool)

(assert (=> b!2926458 m!3319151))

(assert (=> b!2926461 m!3319053))

(assert (=> b!2926461 m!3319053))

(assert (=> b!2926461 m!3319055))

(assert (=> b!2926460 m!3319049))

(assert (=> d!838954 m!3319047))

(declare-fun m!3319153 () Bool)

(assert (=> d!838954 m!3319153))

(assert (=> b!2926463 m!3319053))

(assert (=> b!2926463 m!3319053))

(assert (=> b!2926463 m!3319055))

(assert (=> b!2926466 m!3319049))

(assert (=> b!2926466 m!3319049))

(declare-fun m!3319155 () Bool)

(assert (=> b!2926466 m!3319155))

(assert (=> b!2926466 m!3319053))

(assert (=> b!2926466 m!3319155))

(assert (=> b!2926466 m!3319053))

(declare-fun m!3319157 () Bool)

(assert (=> b!2926466 m!3319157))

(assert (=> b!2926174 d!838954))

(declare-fun d!838956 () Bool)

(assert (=> d!838956 (matchR!3903 (Union!9021 lt!1026872 lt!1026878) s!11993)))

(declare-fun lt!1026922 () Unit!48381)

(declare-fun choose!17273 (Regex!9021 Regex!9021 List!34886) Unit!48381)

(assert (=> d!838956 (= lt!1026922 (choose!17273 lt!1026878 lt!1026872 s!11993))))

(declare-fun e!1845867 () Bool)

(assert (=> d!838956 e!1845867))

(declare-fun res!1207932 () Bool)

(assert (=> d!838956 (=> (not res!1207932) (not e!1845867))))

(assert (=> d!838956 (= res!1207932 (validRegex!3754 lt!1026878))))

(assert (=> d!838956 (= (lemmaReversedUnionAcceptsSameString!18 lt!1026878 lt!1026872 s!11993) lt!1026922)))

(declare-fun b!2926469 () Bool)

(assert (=> b!2926469 (= e!1845867 (validRegex!3754 lt!1026872))))

(assert (= (and d!838956 res!1207932) b!2926469))

(assert (=> d!838956 m!3319021))

(declare-fun m!3319159 () Bool)

(assert (=> d!838956 m!3319159))

(assert (=> d!838956 m!3319007))

(assert (=> b!2926469 m!3319003))

(assert (=> b!2926174 d!838956))

(assert (=> b!2926172 d!838934))

(declare-fun b!2926470 () Bool)

(declare-fun res!1207936 () Bool)

(declare-fun e!1845870 () Bool)

(assert (=> b!2926470 (=> res!1207936 e!1845870)))

(assert (=> b!2926470 (= res!1207936 (not ((_ is Concat!14342) lt!1026878)))))

(declare-fun e!1845874 () Bool)

(assert (=> b!2926470 (= e!1845874 e!1845870)))

(declare-fun d!838958 () Bool)

(declare-fun res!1207935 () Bool)

(declare-fun e!1845872 () Bool)

(assert (=> d!838958 (=> res!1207935 e!1845872)))

(assert (=> d!838958 (= res!1207935 ((_ is ElementMatch!9021) lt!1026878))))

(assert (=> d!838958 (= (validRegex!3754 lt!1026878) e!1845872)))

(declare-fun b!2926471 () Bool)

(declare-fun e!1845873 () Bool)

(assert (=> b!2926471 (= e!1845870 e!1845873)))

(declare-fun res!1207934 () Bool)

(assert (=> b!2926471 (=> (not res!1207934) (not e!1845873))))

(declare-fun call!191934 () Bool)

(assert (=> b!2926471 (= res!1207934 call!191934)))

(declare-fun b!2926472 () Bool)

(declare-fun call!191932 () Bool)

(assert (=> b!2926472 (= e!1845873 call!191932)))

(declare-fun bm!191927 () Bool)

(declare-fun call!191933 () Bool)

(assert (=> bm!191927 (= call!191934 call!191933)))

(declare-fun b!2926473 () Bool)

(declare-fun res!1207933 () Bool)

(declare-fun e!1845871 () Bool)

(assert (=> b!2926473 (=> (not res!1207933) (not e!1845871))))

(assert (=> b!2926473 (= res!1207933 call!191932)))

(assert (=> b!2926473 (= e!1845874 e!1845871)))

(declare-fun b!2926474 () Bool)

(declare-fun e!1845868 () Bool)

(assert (=> b!2926474 (= e!1845868 call!191933)))

(declare-fun b!2926475 () Bool)

(assert (=> b!2926475 (= e!1845871 call!191934)))

(declare-fun b!2926476 () Bool)

(declare-fun e!1845869 () Bool)

(assert (=> b!2926476 (= e!1845869 e!1845874)))

(declare-fun c!477896 () Bool)

(assert (=> b!2926476 (= c!477896 ((_ is Union!9021) lt!1026878))))

(declare-fun bm!191928 () Bool)

(assert (=> bm!191928 (= call!191932 (validRegex!3754 (ite c!477896 (regOne!18555 lt!1026878) (regTwo!18554 lt!1026878))))))

(declare-fun bm!191929 () Bool)

(declare-fun c!477897 () Bool)

(assert (=> bm!191929 (= call!191933 (validRegex!3754 (ite c!477897 (reg!9350 lt!1026878) (ite c!477896 (regTwo!18555 lt!1026878) (regOne!18554 lt!1026878)))))))

(declare-fun b!2926477 () Bool)

(assert (=> b!2926477 (= e!1845872 e!1845869)))

(assert (=> b!2926477 (= c!477897 ((_ is Star!9021) lt!1026878))))

(declare-fun b!2926478 () Bool)

(assert (=> b!2926478 (= e!1845869 e!1845868)))

(declare-fun res!1207937 () Bool)

(assert (=> b!2926478 (= res!1207937 (not (nullable!2834 (reg!9350 lt!1026878))))))

(assert (=> b!2926478 (=> (not res!1207937) (not e!1845868))))

(assert (= (and d!838958 (not res!1207935)) b!2926477))

(assert (= (and b!2926477 c!477897) b!2926478))

(assert (= (and b!2926477 (not c!477897)) b!2926476))

(assert (= (and b!2926478 res!1207937) b!2926474))

(assert (= (and b!2926476 c!477896) b!2926473))

(assert (= (and b!2926476 (not c!477896)) b!2926470))

(assert (= (and b!2926473 res!1207933) b!2926475))

(assert (= (and b!2926470 (not res!1207936)) b!2926471))

(assert (= (and b!2926471 res!1207934) b!2926472))

(assert (= (or b!2926473 b!2926472) bm!191928))

(assert (= (or b!2926475 b!2926471) bm!191927))

(assert (= (or b!2926474 bm!191927) bm!191929))

(declare-fun m!3319161 () Bool)

(assert (=> bm!191928 m!3319161))

(declare-fun m!3319163 () Bool)

(assert (=> bm!191929 m!3319163))

(declare-fun m!3319165 () Bool)

(assert (=> b!2926478 m!3319165))

(assert (=> b!2926167 d!838958))

(declare-fun b!2926479 () Bool)

(declare-fun res!1207945 () Bool)

(declare-fun e!1845880 () Bool)

(assert (=> b!2926479 (=> res!1207945 e!1845880)))

(declare-fun e!1845881 () Bool)

(assert (=> b!2926479 (= res!1207945 e!1845881)))

(declare-fun res!1207944 () Bool)

(assert (=> b!2926479 (=> (not res!1207944) (not e!1845881))))

(declare-fun lt!1026923 () Bool)

(assert (=> b!2926479 (= res!1207944 lt!1026923)))

(declare-fun b!2926480 () Bool)

(declare-fun e!1845877 () Bool)

(declare-fun e!1845879 () Bool)

(assert (=> b!2926480 (= e!1845877 e!1845879)))

(declare-fun c!477899 () Bool)

(assert (=> b!2926480 (= c!477899 ((_ is EmptyLang!9021) (Union!9021 lt!1026878 lt!1026872)))))

(declare-fun b!2926481 () Bool)

(declare-fun e!1845878 () Bool)

(assert (=> b!2926481 (= e!1845880 e!1845878)))

(declare-fun res!1207941 () Bool)

(assert (=> b!2926481 (=> (not res!1207941) (not e!1845878))))

(assert (=> b!2926481 (= res!1207941 (not lt!1026923))))

(declare-fun bm!191930 () Bool)

(declare-fun call!191935 () Bool)

(assert (=> bm!191930 (= call!191935 (isEmpty!19004 s!11993))))

(declare-fun b!2926482 () Bool)

(assert (=> b!2926482 (= e!1845877 (= lt!1026923 call!191935))))

(declare-fun d!838960 () Bool)

(assert (=> d!838960 e!1845877))

(declare-fun c!477900 () Bool)

(assert (=> d!838960 (= c!477900 ((_ is EmptyExpr!9021) (Union!9021 lt!1026878 lt!1026872)))))

(declare-fun e!1845876 () Bool)

(assert (=> d!838960 (= lt!1026923 e!1845876)))

(declare-fun c!477898 () Bool)

(assert (=> d!838960 (= c!477898 (isEmpty!19004 s!11993))))

(assert (=> d!838960 (validRegex!3754 (Union!9021 lt!1026878 lt!1026872))))

(assert (=> d!838960 (= (matchR!3903 (Union!9021 lt!1026878 lt!1026872) s!11993) lt!1026923)))

(declare-fun b!2926483 () Bool)

(declare-fun e!1845875 () Bool)

(assert (=> b!2926483 (= e!1845878 e!1845875)))

(declare-fun res!1207938 () Bool)

(assert (=> b!2926483 (=> res!1207938 e!1845875)))

(assert (=> b!2926483 (= res!1207938 call!191935)))

(declare-fun b!2926484 () Bool)

(assert (=> b!2926484 (= e!1845876 (nullable!2834 (Union!9021 lt!1026878 lt!1026872)))))

(declare-fun b!2926485 () Bool)

(declare-fun res!1207939 () Bool)

(assert (=> b!2926485 (=> res!1207939 e!1845880)))

(assert (=> b!2926485 (= res!1207939 (not ((_ is ElementMatch!9021) (Union!9021 lt!1026878 lt!1026872))))))

(assert (=> b!2926485 (= e!1845879 e!1845880)))

(declare-fun b!2926486 () Bool)

(assert (=> b!2926486 (= e!1845881 (= (head!6507 s!11993) (c!477811 (Union!9021 lt!1026878 lt!1026872))))))

(declare-fun b!2926487 () Bool)

(declare-fun res!1207943 () Bool)

(assert (=> b!2926487 (=> res!1207943 e!1845875)))

(assert (=> b!2926487 (= res!1207943 (not (isEmpty!19004 (tail!4733 s!11993))))))

(declare-fun b!2926488 () Bool)

(assert (=> b!2926488 (= e!1845879 (not lt!1026923))))

(declare-fun b!2926489 () Bool)

(declare-fun res!1207940 () Bool)

(assert (=> b!2926489 (=> (not res!1207940) (not e!1845881))))

(assert (=> b!2926489 (= res!1207940 (isEmpty!19004 (tail!4733 s!11993)))))

(declare-fun b!2926490 () Bool)

(declare-fun res!1207942 () Bool)

(assert (=> b!2926490 (=> (not res!1207942) (not e!1845881))))

(assert (=> b!2926490 (= res!1207942 (not call!191935))))

(declare-fun b!2926491 () Bool)

(assert (=> b!2926491 (= e!1845875 (not (= (head!6507 s!11993) (c!477811 (Union!9021 lt!1026878 lt!1026872)))))))

(declare-fun b!2926492 () Bool)

(assert (=> b!2926492 (= e!1845876 (matchR!3903 (derivativeStep!2448 (Union!9021 lt!1026878 lt!1026872) (head!6507 s!11993)) (tail!4733 s!11993)))))

(assert (= (and d!838960 c!477898) b!2926484))

(assert (= (and d!838960 (not c!477898)) b!2926492))

(assert (= (and d!838960 c!477900) b!2926482))

(assert (= (and d!838960 (not c!477900)) b!2926480))

(assert (= (and b!2926480 c!477899) b!2926488))

(assert (= (and b!2926480 (not c!477899)) b!2926485))

(assert (= (and b!2926485 (not res!1207939)) b!2926479))

(assert (= (and b!2926479 res!1207944) b!2926490))

(assert (= (and b!2926490 res!1207942) b!2926489))

(assert (= (and b!2926489 res!1207940) b!2926486))

(assert (= (and b!2926479 (not res!1207945)) b!2926481))

(assert (= (and b!2926481 res!1207941) b!2926483))

(assert (= (and b!2926483 (not res!1207938)) b!2926487))

(assert (= (and b!2926487 (not res!1207943)) b!2926491))

(assert (= (or b!2926482 b!2926483 b!2926490) bm!191930))

(assert (=> bm!191930 m!3319047))

(assert (=> b!2926491 m!3319049))

(declare-fun m!3319167 () Bool)

(assert (=> b!2926484 m!3319167))

(assert (=> b!2926487 m!3319053))

(assert (=> b!2926487 m!3319053))

(assert (=> b!2926487 m!3319055))

(assert (=> b!2926486 m!3319049))

(assert (=> d!838960 m!3319047))

(declare-fun m!3319169 () Bool)

(assert (=> d!838960 m!3319169))

(assert (=> b!2926489 m!3319053))

(assert (=> b!2926489 m!3319053))

(assert (=> b!2926489 m!3319055))

(assert (=> b!2926492 m!3319049))

(assert (=> b!2926492 m!3319049))

(declare-fun m!3319171 () Bool)

(assert (=> b!2926492 m!3319171))

(assert (=> b!2926492 m!3319053))

(assert (=> b!2926492 m!3319171))

(assert (=> b!2926492 m!3319053))

(declare-fun m!3319173 () Bool)

(assert (=> b!2926492 m!3319173))

(assert (=> b!2926167 d!838960))

(declare-fun d!838962 () Bool)

(assert (=> d!838962 (matchR!3903 (Union!9021 lt!1026878 lt!1026872) s!11993)))

(declare-fun lt!1026927 () Unit!48381)

(declare-fun choose!17274 (Regex!9021 Regex!9021 List!34886) Unit!48381)

(assert (=> d!838962 (= lt!1026927 (choose!17274 lt!1026878 lt!1026872 s!11993))))

(declare-fun e!1845884 () Bool)

(assert (=> d!838962 e!1845884))

(declare-fun res!1207948 () Bool)

(assert (=> d!838962 (=> (not res!1207948) (not e!1845884))))

(assert (=> d!838962 (= res!1207948 (validRegex!3754 lt!1026878))))

(assert (=> d!838962 (= (lemmaRegexAcceptsStringThenUnionWithAnotherAcceptsToo!62 lt!1026878 lt!1026872 s!11993) lt!1026927)))

(declare-fun b!2926495 () Bool)

(assert (=> b!2926495 (= e!1845884 (validRegex!3754 lt!1026872))))

(assert (= (and d!838962 res!1207948) b!2926495))

(assert (=> d!838962 m!3319009))

(declare-fun m!3319175 () Bool)

(assert (=> d!838962 m!3319175))

(assert (=> d!838962 m!3319007))

(assert (=> b!2926495 m!3319003))

(assert (=> b!2926167 d!838962))

(declare-fun c!477904 () Bool)

(declare-fun call!191938 () Regex!9021)

(declare-fun bm!191931 () Bool)

(declare-fun c!477908 () Bool)

(assert (=> bm!191931 (= call!191938 (simplify!50 (ite c!477908 (reg!9350 (regOne!18555 r!17423)) (ite c!477904 (regOne!18555 (regOne!18555 r!17423)) (regTwo!18554 (regOne!18555 r!17423))))))))

(declare-fun lt!1026931 () Regex!9021)

(declare-fun call!191940 () Bool)

(declare-fun lt!1026932 () Regex!9021)

(declare-fun bm!191932 () Bool)

(declare-fun lt!1026929 () Regex!9021)

(assert (=> bm!191932 (= call!191940 (isEmptyLang!187 (ite c!477908 lt!1026929 (ite c!477904 lt!1026931 lt!1026932))))))

(declare-fun d!838964 () Bool)

(declare-fun e!1845899 () Bool)

(assert (=> d!838964 e!1845899))

(declare-fun res!1207950 () Bool)

(assert (=> d!838964 (=> (not res!1207950) (not e!1845899))))

(declare-fun lt!1026934 () Regex!9021)

(assert (=> d!838964 (= res!1207950 (validRegex!3754 lt!1026934))))

(declare-fun e!1845894 () Regex!9021)

(assert (=> d!838964 (= lt!1026934 e!1845894)))

(declare-fun c!477912 () Bool)

(assert (=> d!838964 (= c!477912 ((_ is EmptyLang!9021) (regOne!18555 r!17423)))))

(assert (=> d!838964 (validRegex!3754 (regOne!18555 r!17423))))

(assert (=> d!838964 (= (simplify!50 (regOne!18555 r!17423)) lt!1026934)))

(declare-fun b!2926500 () Bool)

(declare-fun e!1845891 () Regex!9021)

(declare-fun e!1845890 () Regex!9021)

(assert (=> b!2926500 (= e!1845891 e!1845890)))

(assert (=> b!2926500 (= c!477908 ((_ is Star!9021) (regOne!18555 r!17423)))))

(declare-fun bm!191933 () Bool)

(declare-fun call!191936 () Regex!9021)

(assert (=> bm!191933 (= call!191936 call!191938)))

(declare-fun b!2926501 () Bool)

(declare-fun e!1845889 () Regex!9021)

(assert (=> b!2926501 (= e!1845894 e!1845889)))

(declare-fun c!477910 () Bool)

(assert (=> b!2926501 (= c!477910 ((_ is ElementMatch!9021) (regOne!18555 r!17423)))))

(declare-fun b!2926502 () Bool)

(assert (=> b!2926502 (= e!1845891 EmptyExpr!9021)))

(declare-fun bm!191934 () Bool)

(declare-fun call!191939 () Bool)

(assert (=> bm!191934 (= call!191939 (isEmptyExpr!272 (ite c!477908 lt!1026929 lt!1026932)))))

(declare-fun b!2926503 () Bool)

(declare-fun c!477913 () Bool)

(declare-fun e!1845887 () Bool)

(assert (=> b!2926503 (= c!477913 e!1845887)))

(declare-fun res!1207949 () Bool)

(assert (=> b!2926503 (=> res!1207949 e!1845887)))

(assert (=> b!2926503 (= res!1207949 call!191940)))

(assert (=> b!2926503 (= lt!1026929 call!191938)))

(declare-fun e!1845895 () Regex!9021)

(assert (=> b!2926503 (= e!1845890 e!1845895)))

(declare-fun b!2926504 () Bool)

(assert (=> b!2926504 (= e!1845887 call!191939)))

(declare-fun b!2926505 () Bool)

(assert (=> b!2926505 (= e!1845889 (regOne!18555 r!17423))))

(declare-fun bm!191935 () Bool)

(declare-fun call!191942 () Bool)

(assert (=> bm!191935 (= call!191942 call!191940)))

(declare-fun b!2926506 () Bool)

(declare-fun e!1845897 () Regex!9021)

(declare-fun e!1845888 () Regex!9021)

(assert (=> b!2926506 (= e!1845897 e!1845888)))

(declare-fun lt!1026930 () Regex!9021)

(declare-fun call!191937 () Regex!9021)

(assert (=> b!2926506 (= lt!1026930 call!191937)))

(assert (=> b!2926506 (= lt!1026932 call!191936)))

(declare-fun res!1207951 () Bool)

(declare-fun call!191941 () Bool)

(assert (=> b!2926506 (= res!1207951 call!191941)))

(declare-fun e!1845898 () Bool)

(assert (=> b!2926506 (=> res!1207951 e!1845898)))

(declare-fun c!477903 () Bool)

(assert (=> b!2926506 (= c!477903 e!1845898)))

(declare-fun b!2926507 () Bool)

(assert (=> b!2926507 (= e!1845895 EmptyExpr!9021)))

(declare-fun b!2926508 () Bool)

(declare-fun c!477909 () Bool)

(assert (=> b!2926508 (= c!477909 call!191941)))

(declare-fun e!1845893 () Regex!9021)

(declare-fun e!1845896 () Regex!9021)

(assert (=> b!2926508 (= e!1845893 e!1845896)))

(declare-fun b!2926509 () Bool)

(assert (=> b!2926509 (= e!1845888 EmptyLang!9021)))

(declare-fun b!2926510 () Bool)

(assert (=> b!2926510 (= e!1845899 (= (nullable!2834 lt!1026934) (nullable!2834 (regOne!18555 r!17423))))))

(declare-fun b!2926511 () Bool)

(assert (=> b!2926511 (= e!1845897 e!1845893)))

(assert (=> b!2926511 (= lt!1026931 call!191936)))

(declare-fun lt!1026933 () Regex!9021)

(assert (=> b!2926511 (= lt!1026933 call!191937)))

(declare-fun c!477905 () Bool)

(assert (=> b!2926511 (= c!477905 call!191942)))

(declare-fun bm!191936 () Bool)

(assert (=> bm!191936 (= call!191941 (isEmptyLang!187 (ite c!477904 lt!1026933 lt!1026930)))))

(declare-fun b!2926512 () Bool)

(declare-fun e!1845892 () Regex!9021)

(assert (=> b!2926512 (= e!1845892 (Concat!14342 lt!1026930 lt!1026932))))

(declare-fun b!2926513 () Bool)

(declare-fun c!477907 () Bool)

(assert (=> b!2926513 (= c!477907 (isEmptyExpr!272 lt!1026930))))

(declare-fun e!1845900 () Regex!9021)

(assert (=> b!2926513 (= e!1845888 e!1845900)))

(declare-fun b!2926514 () Bool)

(assert (=> b!2926514 (= e!1845896 lt!1026931)))

(declare-fun b!2926515 () Bool)

(assert (=> b!2926515 (= e!1845894 EmptyLang!9021)))

(declare-fun b!2926516 () Bool)

(assert (=> b!2926516 (= c!477904 ((_ is Union!9021) (regOne!18555 r!17423)))))

(assert (=> b!2926516 (= e!1845890 e!1845897)))

(declare-fun b!2926517 () Bool)

(assert (=> b!2926517 (= e!1845892 lt!1026930)))

(declare-fun b!2926518 () Bool)

(assert (=> b!2926518 (= e!1845900 lt!1026932)))

(declare-fun b!2926519 () Bool)

(assert (=> b!2926519 (= e!1845896 (Union!9021 lt!1026931 lt!1026933))))

(declare-fun b!2926520 () Bool)

(assert (=> b!2926520 (= e!1845900 e!1845892)))

(declare-fun c!477911 () Bool)

(assert (=> b!2926520 (= c!477911 call!191939)))

(declare-fun b!2926521 () Bool)

(declare-fun c!477906 () Bool)

(assert (=> b!2926521 (= c!477906 ((_ is EmptyExpr!9021) (regOne!18555 r!17423)))))

(assert (=> b!2926521 (= e!1845889 e!1845891)))

(declare-fun b!2926522 () Bool)

(assert (=> b!2926522 (= e!1845895 (Star!9021 lt!1026929))))

(declare-fun b!2926523 () Bool)

(assert (=> b!2926523 (= e!1845898 call!191942)))

(declare-fun b!2926524 () Bool)

(assert (=> b!2926524 (= e!1845893 lt!1026933)))

(declare-fun bm!191937 () Bool)

(assert (=> bm!191937 (= call!191937 (simplify!50 (ite c!477904 (regTwo!18555 (regOne!18555 r!17423)) (regOne!18554 (regOne!18555 r!17423)))))))

(assert (= (and d!838964 c!477912) b!2926515))

(assert (= (and d!838964 (not c!477912)) b!2926501))

(assert (= (and b!2926501 c!477910) b!2926505))

(assert (= (and b!2926501 (not c!477910)) b!2926521))

(assert (= (and b!2926521 c!477906) b!2926502))

(assert (= (and b!2926521 (not c!477906)) b!2926500))

(assert (= (and b!2926500 c!477908) b!2926503))

(assert (= (and b!2926500 (not c!477908)) b!2926516))

(assert (= (and b!2926503 (not res!1207949)) b!2926504))

(assert (= (and b!2926503 c!477913) b!2926507))

(assert (= (and b!2926503 (not c!477913)) b!2926522))

(assert (= (and b!2926516 c!477904) b!2926511))

(assert (= (and b!2926516 (not c!477904)) b!2926506))

(assert (= (and b!2926511 c!477905) b!2926524))

(assert (= (and b!2926511 (not c!477905)) b!2926508))

(assert (= (and b!2926508 c!477909) b!2926514))

(assert (= (and b!2926508 (not c!477909)) b!2926519))

(assert (= (and b!2926506 (not res!1207951)) b!2926523))

(assert (= (and b!2926506 c!477903) b!2926509))

(assert (= (and b!2926506 (not c!477903)) b!2926513))

(assert (= (and b!2926513 c!477907) b!2926518))

(assert (= (and b!2926513 (not c!477907)) b!2926520))

(assert (= (and b!2926520 c!477911) b!2926517))

(assert (= (and b!2926520 (not c!477911)) b!2926512))

(assert (= (or b!2926511 b!2926506) bm!191933))

(assert (= (or b!2926511 b!2926506) bm!191937))

(assert (= (or b!2926511 b!2926523) bm!191935))

(assert (= (or b!2926508 b!2926506) bm!191936))

(assert (= (or b!2926504 b!2926520) bm!191934))

(assert (= (or b!2926503 bm!191933) bm!191931))

(assert (= (or b!2926503 bm!191935) bm!191932))

(assert (= (and d!838964 res!1207950) b!2926510))

(declare-fun m!3319177 () Bool)

(assert (=> bm!191931 m!3319177))

(declare-fun m!3319179 () Bool)

(assert (=> bm!191934 m!3319179))

(declare-fun m!3319181 () Bool)

(assert (=> b!2926510 m!3319181))

(declare-fun m!3319183 () Bool)

(assert (=> b!2926510 m!3319183))

(declare-fun m!3319185 () Bool)

(assert (=> d!838964 m!3319185))

(declare-fun m!3319187 () Bool)

(assert (=> d!838964 m!3319187))

(declare-fun m!3319189 () Bool)

(assert (=> bm!191937 m!3319189))

(declare-fun m!3319191 () Bool)

(assert (=> b!2926513 m!3319191))

(declare-fun m!3319193 () Bool)

(assert (=> bm!191936 m!3319193))

(declare-fun m!3319195 () Bool)

(assert (=> bm!191932 m!3319195))

(assert (=> b!2926167 d!838964))

(declare-fun b!2926728 () Bool)

(assert (=> b!2926728 true))

(assert (=> b!2926728 true))

(declare-fun bs!525027 () Bool)

(declare-fun b!2926720 () Bool)

(assert (= bs!525027 (and b!2926720 b!2926728)))

(declare-fun lambda!108744 () Int)

(declare-fun lambda!108743 () Int)

(assert (=> bs!525027 (not (= lambda!108744 lambda!108743))))

(assert (=> b!2926720 true))

(assert (=> b!2926720 true))

(declare-fun b!2926719 () Bool)

(declare-fun c!477981 () Bool)

(assert (=> b!2926719 (= c!477981 ((_ is ElementMatch!9021) r!17423))))

(declare-fun e!1846020 () Bool)

(declare-fun e!1846022 () Bool)

(assert (=> b!2926719 (= e!1846020 e!1846022)))

(declare-fun e!1846021 () Bool)

(declare-fun call!191986 () Bool)

(assert (=> b!2926720 (= e!1846021 call!191986)))

(declare-fun b!2926721 () Bool)

(declare-fun e!1846018 () Bool)

(assert (=> b!2926721 (= e!1846018 e!1846021)))

(declare-fun c!477984 () Bool)

(assert (=> b!2926721 (= c!477984 ((_ is Star!9021) r!17423))))

(declare-fun b!2926722 () Bool)

(declare-fun res!1208012 () Bool)

(declare-fun e!1846024 () Bool)

(assert (=> b!2926722 (=> res!1208012 e!1846024)))

(declare-fun call!191985 () Bool)

(assert (=> b!2926722 (= res!1208012 call!191985)))

(assert (=> b!2926722 (= e!1846021 e!1846024)))

(declare-fun b!2926723 () Bool)

(declare-fun c!477983 () Bool)

(assert (=> b!2926723 (= c!477983 ((_ is Union!9021) r!17423))))

(assert (=> b!2926723 (= e!1846022 e!1846018)))

(declare-fun b!2926724 () Bool)

(declare-fun e!1846023 () Bool)

(assert (=> b!2926724 (= e!1846023 e!1846020)))

(declare-fun res!1208013 () Bool)

(assert (=> b!2926724 (= res!1208013 (not ((_ is EmptyLang!9021) r!17423)))))

(assert (=> b!2926724 (=> (not res!1208013) (not e!1846020))))

(declare-fun bm!191980 () Bool)

(assert (=> bm!191980 (= call!191985 (isEmpty!19004 s!11993))))

(declare-fun bm!191981 () Bool)

(declare-fun Exists!1385 (Int) Bool)

(assert (=> bm!191981 (= call!191986 (Exists!1385 (ite c!477984 lambda!108743 lambda!108744)))))

(declare-fun b!2926726 () Bool)

(assert (=> b!2926726 (= e!1846023 call!191985)))

(declare-fun b!2926727 () Bool)

(declare-fun e!1846019 () Bool)

(assert (=> b!2926727 (= e!1846018 e!1846019)))

(declare-fun res!1208014 () Bool)

(assert (=> b!2926727 (= res!1208014 (matchRSpec!1158 (regOne!18555 r!17423) s!11993))))

(assert (=> b!2926727 (=> res!1208014 e!1846019)))

(assert (=> b!2926728 (= e!1846024 call!191986)))

(declare-fun b!2926729 () Bool)

(assert (=> b!2926729 (= e!1846022 (= s!11993 (Cons!34762 (c!477811 r!17423) Nil!34762)))))

(declare-fun d!838966 () Bool)

(declare-fun c!477982 () Bool)

(assert (=> d!838966 (= c!477982 ((_ is EmptyExpr!9021) r!17423))))

(assert (=> d!838966 (= (matchRSpec!1158 r!17423 s!11993) e!1846023)))

(declare-fun b!2926725 () Bool)

(assert (=> b!2926725 (= e!1846019 (matchRSpec!1158 (regTwo!18555 r!17423) s!11993))))

(assert (= (and d!838966 c!477982) b!2926726))

(assert (= (and d!838966 (not c!477982)) b!2926724))

(assert (= (and b!2926724 res!1208013) b!2926719))

(assert (= (and b!2926719 c!477981) b!2926729))

(assert (= (and b!2926719 (not c!477981)) b!2926723))

(assert (= (and b!2926723 c!477983) b!2926727))

(assert (= (and b!2926723 (not c!477983)) b!2926721))

(assert (= (and b!2926727 (not res!1208014)) b!2926725))

(assert (= (and b!2926721 c!477984) b!2926722))

(assert (= (and b!2926721 (not c!477984)) b!2926720))

(assert (= (and b!2926722 (not res!1208012)) b!2926728))

(assert (= (or b!2926728 b!2926720) bm!191981))

(assert (= (or b!2926726 b!2926722) bm!191980))

(assert (=> bm!191980 m!3319047))

(declare-fun m!3319251 () Bool)

(assert (=> bm!191981 m!3319251))

(declare-fun m!3319253 () Bool)

(assert (=> b!2926727 m!3319253))

(declare-fun m!3319255 () Bool)

(assert (=> b!2926725 m!3319255))

(assert (=> b!2926171 d!838966))

(declare-fun b!2926734 () Bool)

(declare-fun res!1208022 () Bool)

(declare-fun e!1846030 () Bool)

(assert (=> b!2926734 (=> res!1208022 e!1846030)))

(declare-fun e!1846031 () Bool)

(assert (=> b!2926734 (= res!1208022 e!1846031)))

(declare-fun res!1208021 () Bool)

(assert (=> b!2926734 (=> (not res!1208021) (not e!1846031))))

(declare-fun lt!1026964 () Bool)

(assert (=> b!2926734 (= res!1208021 lt!1026964)))

(declare-fun b!2926735 () Bool)

(declare-fun e!1846027 () Bool)

(declare-fun e!1846029 () Bool)

(assert (=> b!2926735 (= e!1846027 e!1846029)))

(declare-fun c!477986 () Bool)

(assert (=> b!2926735 (= c!477986 ((_ is EmptyLang!9021) r!17423))))

(declare-fun b!2926736 () Bool)

(declare-fun e!1846028 () Bool)

(assert (=> b!2926736 (= e!1846030 e!1846028)))

(declare-fun res!1208018 () Bool)

(assert (=> b!2926736 (=> (not res!1208018) (not e!1846028))))

(assert (=> b!2926736 (= res!1208018 (not lt!1026964))))

(declare-fun bm!191982 () Bool)

(declare-fun call!191987 () Bool)

(assert (=> bm!191982 (= call!191987 (isEmpty!19004 s!11993))))

(declare-fun b!2926737 () Bool)

(assert (=> b!2926737 (= e!1846027 (= lt!1026964 call!191987))))

(declare-fun d!838980 () Bool)

(assert (=> d!838980 e!1846027))

(declare-fun c!477987 () Bool)

(assert (=> d!838980 (= c!477987 ((_ is EmptyExpr!9021) r!17423))))

(declare-fun e!1846026 () Bool)

(assert (=> d!838980 (= lt!1026964 e!1846026)))

(declare-fun c!477985 () Bool)

(assert (=> d!838980 (= c!477985 (isEmpty!19004 s!11993))))

(assert (=> d!838980 (validRegex!3754 r!17423)))

(assert (=> d!838980 (= (matchR!3903 r!17423 s!11993) lt!1026964)))

(declare-fun b!2926738 () Bool)

(declare-fun e!1846025 () Bool)

(assert (=> b!2926738 (= e!1846028 e!1846025)))

(declare-fun res!1208015 () Bool)

(assert (=> b!2926738 (=> res!1208015 e!1846025)))

(assert (=> b!2926738 (= res!1208015 call!191987)))

(declare-fun b!2926739 () Bool)

(assert (=> b!2926739 (= e!1846026 (nullable!2834 r!17423))))

(declare-fun b!2926740 () Bool)

(declare-fun res!1208016 () Bool)

(assert (=> b!2926740 (=> res!1208016 e!1846030)))

(assert (=> b!2926740 (= res!1208016 (not ((_ is ElementMatch!9021) r!17423)))))

(assert (=> b!2926740 (= e!1846029 e!1846030)))

(declare-fun b!2926741 () Bool)

(assert (=> b!2926741 (= e!1846031 (= (head!6507 s!11993) (c!477811 r!17423)))))

(declare-fun b!2926742 () Bool)

(declare-fun res!1208020 () Bool)

(assert (=> b!2926742 (=> res!1208020 e!1846025)))

(assert (=> b!2926742 (= res!1208020 (not (isEmpty!19004 (tail!4733 s!11993))))))

(declare-fun b!2926743 () Bool)

(assert (=> b!2926743 (= e!1846029 (not lt!1026964))))

(declare-fun b!2926744 () Bool)

(declare-fun res!1208017 () Bool)

(assert (=> b!2926744 (=> (not res!1208017) (not e!1846031))))

(assert (=> b!2926744 (= res!1208017 (isEmpty!19004 (tail!4733 s!11993)))))

(declare-fun b!2926745 () Bool)

(declare-fun res!1208019 () Bool)

(assert (=> b!2926745 (=> (not res!1208019) (not e!1846031))))

(assert (=> b!2926745 (= res!1208019 (not call!191987))))

(declare-fun b!2926746 () Bool)

(assert (=> b!2926746 (= e!1846025 (not (= (head!6507 s!11993) (c!477811 r!17423))))))

(declare-fun b!2926747 () Bool)

(assert (=> b!2926747 (= e!1846026 (matchR!3903 (derivativeStep!2448 r!17423 (head!6507 s!11993)) (tail!4733 s!11993)))))

(assert (= (and d!838980 c!477985) b!2926739))

(assert (= (and d!838980 (not c!477985)) b!2926747))

(assert (= (and d!838980 c!477987) b!2926737))

(assert (= (and d!838980 (not c!477987)) b!2926735))

(assert (= (and b!2926735 c!477986) b!2926743))

(assert (= (and b!2926735 (not c!477986)) b!2926740))

(assert (= (and b!2926740 (not res!1208016)) b!2926734))

(assert (= (and b!2926734 res!1208021) b!2926745))

(assert (= (and b!2926745 res!1208019) b!2926744))

(assert (= (and b!2926744 res!1208017) b!2926741))

(assert (= (and b!2926734 (not res!1208022)) b!2926736))

(assert (= (and b!2926736 res!1208018) b!2926738))

(assert (= (and b!2926738 (not res!1208015)) b!2926742))

(assert (= (and b!2926742 (not res!1208020)) b!2926746))

(assert (= (or b!2926737 b!2926738 b!2926745) bm!191982))

(assert (=> bm!191982 m!3319047))

(assert (=> b!2926746 m!3319049))

(assert (=> b!2926739 m!3319139))

(assert (=> b!2926742 m!3319053))

(assert (=> b!2926742 m!3319053))

(assert (=> b!2926742 m!3319055))

(assert (=> b!2926741 m!3319049))

(assert (=> d!838980 m!3319047))

(assert (=> d!838980 m!3319015))

(assert (=> b!2926744 m!3319053))

(assert (=> b!2926744 m!3319053))

(assert (=> b!2926744 m!3319055))

(assert (=> b!2926747 m!3319049))

(assert (=> b!2926747 m!3319049))

(declare-fun m!3319257 () Bool)

(assert (=> b!2926747 m!3319257))

(assert (=> b!2926747 m!3319053))

(assert (=> b!2926747 m!3319257))

(assert (=> b!2926747 m!3319053))

(declare-fun m!3319259 () Bool)

(assert (=> b!2926747 m!3319259))

(assert (=> b!2926171 d!838980))

(declare-fun d!838982 () Bool)

(assert (=> d!838982 (= (matchR!3903 r!17423 s!11993) (matchRSpec!1158 r!17423 s!11993))))

(declare-fun lt!1026967 () Unit!48381)

(declare-fun choose!17277 (Regex!9021 List!34886) Unit!48381)

(assert (=> d!838982 (= lt!1026967 (choose!17277 r!17423 s!11993))))

(assert (=> d!838982 (validRegex!3754 r!17423)))

(assert (=> d!838982 (= (mainMatchTheorem!1158 r!17423 s!11993) lt!1026967)))

(declare-fun bs!525028 () Bool)

(assert (= bs!525028 d!838982))

(assert (=> bs!525028 m!3319027))

(assert (=> bs!525028 m!3319025))

(declare-fun m!3319261 () Bool)

(assert (=> bs!525028 m!3319261))

(assert (=> bs!525028 m!3319015))

(assert (=> b!2926171 d!838982))

(declare-fun b!2926748 () Bool)

(declare-fun res!1208030 () Bool)

(declare-fun e!1846037 () Bool)

(assert (=> b!2926748 (=> res!1208030 e!1846037)))

(declare-fun e!1846038 () Bool)

(assert (=> b!2926748 (= res!1208030 e!1846038)))

(declare-fun res!1208029 () Bool)

(assert (=> b!2926748 (=> (not res!1208029) (not e!1846038))))

(declare-fun lt!1026968 () Bool)

(assert (=> b!2926748 (= res!1208029 lt!1026968)))

(declare-fun b!2926749 () Bool)

(declare-fun e!1846034 () Bool)

(declare-fun e!1846036 () Bool)

(assert (=> b!2926749 (= e!1846034 e!1846036)))

(declare-fun c!477989 () Bool)

(assert (=> b!2926749 (= c!477989 ((_ is EmptyLang!9021) (regOne!18555 r!17423)))))

(declare-fun b!2926750 () Bool)

(declare-fun e!1846035 () Bool)

(assert (=> b!2926750 (= e!1846037 e!1846035)))

(declare-fun res!1208026 () Bool)

(assert (=> b!2926750 (=> (not res!1208026) (not e!1846035))))

(assert (=> b!2926750 (= res!1208026 (not lt!1026968))))

(declare-fun bm!191983 () Bool)

(declare-fun call!191988 () Bool)

(assert (=> bm!191983 (= call!191988 (isEmpty!19004 s!11993))))

(declare-fun b!2926751 () Bool)

(assert (=> b!2926751 (= e!1846034 (= lt!1026968 call!191988))))

(declare-fun d!838984 () Bool)

(assert (=> d!838984 e!1846034))

(declare-fun c!477990 () Bool)

(assert (=> d!838984 (= c!477990 ((_ is EmptyExpr!9021) (regOne!18555 r!17423)))))

(declare-fun e!1846033 () Bool)

(assert (=> d!838984 (= lt!1026968 e!1846033)))

(declare-fun c!477988 () Bool)

(assert (=> d!838984 (= c!477988 (isEmpty!19004 s!11993))))

(assert (=> d!838984 (validRegex!3754 (regOne!18555 r!17423))))

(assert (=> d!838984 (= (matchR!3903 (regOne!18555 r!17423) s!11993) lt!1026968)))

(declare-fun b!2926752 () Bool)

(declare-fun e!1846032 () Bool)

(assert (=> b!2926752 (= e!1846035 e!1846032)))

(declare-fun res!1208023 () Bool)

(assert (=> b!2926752 (=> res!1208023 e!1846032)))

(assert (=> b!2926752 (= res!1208023 call!191988)))

(declare-fun b!2926753 () Bool)

(assert (=> b!2926753 (= e!1846033 (nullable!2834 (regOne!18555 r!17423)))))

(declare-fun b!2926754 () Bool)

(declare-fun res!1208024 () Bool)

(assert (=> b!2926754 (=> res!1208024 e!1846037)))

(assert (=> b!2926754 (= res!1208024 (not ((_ is ElementMatch!9021) (regOne!18555 r!17423))))))

(assert (=> b!2926754 (= e!1846036 e!1846037)))

(declare-fun b!2926755 () Bool)

(assert (=> b!2926755 (= e!1846038 (= (head!6507 s!11993) (c!477811 (regOne!18555 r!17423))))))

(declare-fun b!2926756 () Bool)

(declare-fun res!1208028 () Bool)

(assert (=> b!2926756 (=> res!1208028 e!1846032)))

(assert (=> b!2926756 (= res!1208028 (not (isEmpty!19004 (tail!4733 s!11993))))))

(declare-fun b!2926757 () Bool)

(assert (=> b!2926757 (= e!1846036 (not lt!1026968))))

(declare-fun b!2926758 () Bool)

(declare-fun res!1208025 () Bool)

(assert (=> b!2926758 (=> (not res!1208025) (not e!1846038))))

(assert (=> b!2926758 (= res!1208025 (isEmpty!19004 (tail!4733 s!11993)))))

(declare-fun b!2926759 () Bool)

(declare-fun res!1208027 () Bool)

(assert (=> b!2926759 (=> (not res!1208027) (not e!1846038))))

(assert (=> b!2926759 (= res!1208027 (not call!191988))))

(declare-fun b!2926760 () Bool)

(assert (=> b!2926760 (= e!1846032 (not (= (head!6507 s!11993) (c!477811 (regOne!18555 r!17423)))))))

(declare-fun b!2926761 () Bool)

(assert (=> b!2926761 (= e!1846033 (matchR!3903 (derivativeStep!2448 (regOne!18555 r!17423) (head!6507 s!11993)) (tail!4733 s!11993)))))

(assert (= (and d!838984 c!477988) b!2926753))

(assert (= (and d!838984 (not c!477988)) b!2926761))

(assert (= (and d!838984 c!477990) b!2926751))

(assert (= (and d!838984 (not c!477990)) b!2926749))

(assert (= (and b!2926749 c!477989) b!2926757))

(assert (= (and b!2926749 (not c!477989)) b!2926754))

(assert (= (and b!2926754 (not res!1208024)) b!2926748))

(assert (= (and b!2926748 res!1208029) b!2926759))

(assert (= (and b!2926759 res!1208027) b!2926758))

(assert (= (and b!2926758 res!1208025) b!2926755))

(assert (= (and b!2926748 (not res!1208030)) b!2926750))

(assert (= (and b!2926750 res!1208026) b!2926752))

(assert (= (and b!2926752 (not res!1208023)) b!2926756))

(assert (= (and b!2926756 (not res!1208028)) b!2926760))

(assert (= (or b!2926751 b!2926752 b!2926759) bm!191983))

(assert (=> bm!191983 m!3319047))

(assert (=> b!2926760 m!3319049))

(assert (=> b!2926753 m!3319183))

(assert (=> b!2926756 m!3319053))

(assert (=> b!2926756 m!3319053))

(assert (=> b!2926756 m!3319055))

(assert (=> b!2926755 m!3319049))

(assert (=> d!838984 m!3319047))

(assert (=> d!838984 m!3319187))

(assert (=> b!2926758 m!3319053))

(assert (=> b!2926758 m!3319053))

(assert (=> b!2926758 m!3319055))

(assert (=> b!2926761 m!3319049))

(assert (=> b!2926761 m!3319049))

(declare-fun m!3319263 () Bool)

(assert (=> b!2926761 m!3319263))

(assert (=> b!2926761 m!3319053))

(assert (=> b!2926761 m!3319263))

(assert (=> b!2926761 m!3319053))

(declare-fun m!3319265 () Bool)

(assert (=> b!2926761 m!3319265))

(assert (=> b!2926166 d!838984))

(declare-fun d!838986 () Bool)

(declare-fun e!1846044 () Bool)

(assert (=> d!838986 e!1846044))

(declare-fun res!1208035 () Bool)

(assert (=> d!838986 (=> res!1208035 e!1846044)))

(assert (=> d!838986 (= res!1208035 (matchR!3903 (regOne!18555 r!17423) s!11993))))

(declare-fun lt!1026971 () Unit!48381)

(declare-fun choose!17279 (Regex!9021 Regex!9021 List!34886) Unit!48381)

(assert (=> d!838986 (= lt!1026971 (choose!17279 (regOne!18555 r!17423) (regTwo!18555 r!17423) s!11993))))

(declare-fun e!1846043 () Bool)

(assert (=> d!838986 e!1846043))

(declare-fun res!1208036 () Bool)

(assert (=> d!838986 (=> (not res!1208036) (not e!1846043))))

(assert (=> d!838986 (= res!1208036 (validRegex!3754 (regOne!18555 r!17423)))))

(assert (=> d!838986 (= (lemmaRegexUnionAcceptsThenOneOfTheTwoAccepts!270 (regOne!18555 r!17423) (regTwo!18555 r!17423) s!11993) lt!1026971)))

(declare-fun b!2926766 () Bool)

(assert (=> b!2926766 (= e!1846043 (validRegex!3754 (regTwo!18555 r!17423)))))

(declare-fun b!2926767 () Bool)

(assert (=> b!2926767 (= e!1846044 (matchR!3903 (regTwo!18555 r!17423) s!11993))))

(assert (= (and d!838986 res!1208036) b!2926766))

(assert (= (and d!838986 (not res!1208035)) b!2926767))

(assert (=> d!838986 m!3319037))

(declare-fun m!3319267 () Bool)

(assert (=> d!838986 m!3319267))

(assert (=> d!838986 m!3319187))

(assert (=> b!2926766 m!3319063))

(assert (=> b!2926767 m!3319005))

(assert (=> b!2926166 d!838986))

(declare-fun b!2926772 () Bool)

(declare-fun e!1846047 () Bool)

(declare-fun tp!938312 () Bool)

(assert (=> b!2926772 (= e!1846047 (and tp_is_empty!15605 tp!938312))))

(assert (=> b!2926175 (= tp!938306 e!1846047)))

(assert (= (and b!2926175 ((_ is Cons!34762) (t!233951 s!11993))) b!2926772))

(declare-fun b!2926783 () Bool)

(declare-fun e!1846050 () Bool)

(assert (=> b!2926783 (= e!1846050 tp_is_empty!15605)))

(declare-fun b!2926786 () Bool)

(declare-fun tp!938323 () Bool)

(declare-fun tp!938326 () Bool)

(assert (=> b!2926786 (= e!1846050 (and tp!938323 tp!938326))))

(declare-fun b!2926785 () Bool)

(declare-fun tp!938325 () Bool)

(assert (=> b!2926785 (= e!1846050 tp!938325)))

(assert (=> b!2926173 (= tp!938305 e!1846050)))

(declare-fun b!2926784 () Bool)

(declare-fun tp!938327 () Bool)

(declare-fun tp!938324 () Bool)

(assert (=> b!2926784 (= e!1846050 (and tp!938327 tp!938324))))

(assert (= (and b!2926173 ((_ is ElementMatch!9021) (regOne!18554 r!17423))) b!2926783))

(assert (= (and b!2926173 ((_ is Concat!14342) (regOne!18554 r!17423))) b!2926784))

(assert (= (and b!2926173 ((_ is Star!9021) (regOne!18554 r!17423))) b!2926785))

(assert (= (and b!2926173 ((_ is Union!9021) (regOne!18554 r!17423))) b!2926786))

(declare-fun b!2926787 () Bool)

(declare-fun e!1846051 () Bool)

(assert (=> b!2926787 (= e!1846051 tp_is_empty!15605)))

(declare-fun b!2926790 () Bool)

(declare-fun tp!938328 () Bool)

(declare-fun tp!938331 () Bool)

(assert (=> b!2926790 (= e!1846051 (and tp!938328 tp!938331))))

(declare-fun b!2926789 () Bool)

(declare-fun tp!938330 () Bool)

(assert (=> b!2926789 (= e!1846051 tp!938330)))

(assert (=> b!2926173 (= tp!938307 e!1846051)))

(declare-fun b!2926788 () Bool)

(declare-fun tp!938332 () Bool)

(declare-fun tp!938329 () Bool)

(assert (=> b!2926788 (= e!1846051 (and tp!938332 tp!938329))))

(assert (= (and b!2926173 ((_ is ElementMatch!9021) (regTwo!18554 r!17423))) b!2926787))

(assert (= (and b!2926173 ((_ is Concat!14342) (regTwo!18554 r!17423))) b!2926788))

(assert (= (and b!2926173 ((_ is Star!9021) (regTwo!18554 r!17423))) b!2926789))

(assert (= (and b!2926173 ((_ is Union!9021) (regTwo!18554 r!17423))) b!2926790))

(declare-fun b!2926791 () Bool)

(declare-fun e!1846052 () Bool)

(assert (=> b!2926791 (= e!1846052 tp_is_empty!15605)))

(declare-fun b!2926794 () Bool)

(declare-fun tp!938333 () Bool)

(declare-fun tp!938336 () Bool)

(assert (=> b!2926794 (= e!1846052 (and tp!938333 tp!938336))))

(declare-fun b!2926793 () Bool)

(declare-fun tp!938335 () Bool)

(assert (=> b!2926793 (= e!1846052 tp!938335)))

(assert (=> b!2926168 (= tp!938308 e!1846052)))

(declare-fun b!2926792 () Bool)

(declare-fun tp!938337 () Bool)

(declare-fun tp!938334 () Bool)

(assert (=> b!2926792 (= e!1846052 (and tp!938337 tp!938334))))

(assert (= (and b!2926168 ((_ is ElementMatch!9021) (reg!9350 r!17423))) b!2926791))

(assert (= (and b!2926168 ((_ is Concat!14342) (reg!9350 r!17423))) b!2926792))

(assert (= (and b!2926168 ((_ is Star!9021) (reg!9350 r!17423))) b!2926793))

(assert (= (and b!2926168 ((_ is Union!9021) (reg!9350 r!17423))) b!2926794))

(declare-fun b!2926795 () Bool)

(declare-fun e!1846053 () Bool)

(assert (=> b!2926795 (= e!1846053 tp_is_empty!15605)))

(declare-fun b!2926798 () Bool)

(declare-fun tp!938338 () Bool)

(declare-fun tp!938341 () Bool)

(assert (=> b!2926798 (= e!1846053 (and tp!938338 tp!938341))))

(declare-fun b!2926797 () Bool)

(declare-fun tp!938340 () Bool)

(assert (=> b!2926797 (= e!1846053 tp!938340)))

(assert (=> b!2926165 (= tp!938304 e!1846053)))

(declare-fun b!2926796 () Bool)

(declare-fun tp!938342 () Bool)

(declare-fun tp!938339 () Bool)

(assert (=> b!2926796 (= e!1846053 (and tp!938342 tp!938339))))

(assert (= (and b!2926165 ((_ is ElementMatch!9021) (regOne!18555 r!17423))) b!2926795))

(assert (= (and b!2926165 ((_ is Concat!14342) (regOne!18555 r!17423))) b!2926796))

(assert (= (and b!2926165 ((_ is Star!9021) (regOne!18555 r!17423))) b!2926797))

(assert (= (and b!2926165 ((_ is Union!9021) (regOne!18555 r!17423))) b!2926798))

(declare-fun b!2926799 () Bool)

(declare-fun e!1846054 () Bool)

(assert (=> b!2926799 (= e!1846054 tp_is_empty!15605)))

(declare-fun b!2926802 () Bool)

(declare-fun tp!938343 () Bool)

(declare-fun tp!938346 () Bool)

(assert (=> b!2926802 (= e!1846054 (and tp!938343 tp!938346))))

(declare-fun b!2926801 () Bool)

(declare-fun tp!938345 () Bool)

(assert (=> b!2926801 (= e!1846054 tp!938345)))

(assert (=> b!2926165 (= tp!938309 e!1846054)))

(declare-fun b!2926800 () Bool)

(declare-fun tp!938347 () Bool)

(declare-fun tp!938344 () Bool)

(assert (=> b!2926800 (= e!1846054 (and tp!938347 tp!938344))))

(assert (= (and b!2926165 ((_ is ElementMatch!9021) (regTwo!18555 r!17423))) b!2926799))

(assert (= (and b!2926165 ((_ is Concat!14342) (regTwo!18555 r!17423))) b!2926800))

(assert (= (and b!2926165 ((_ is Star!9021) (regTwo!18555 r!17423))) b!2926801))

(assert (= (and b!2926165 ((_ is Union!9021) (regTwo!18555 r!17423))) b!2926802))

(check-sat (not b!2926255) (not b!2926790) (not d!838934) (not d!838952) (not b!2926767) (not b!2926746) (not b!2926785) (not b!2926725) (not b!2926484) (not b!2926487) (not b!2926238) (not b!2926463) (not b!2926252) (not bm!191929) (not b!2926258) (not bm!191922) (not bm!191932) (not bm!191917) (not b!2926798) (not b!2926786) (not b!2926513) (not b!2926460) (not b!2926784) (not b!2926492) (not b!2926491) (not bm!191904) (not b!2926458) (not b!2926796) (not b!2926742) (not b!2926370) (not b!2926241) (not bm!191928) (not d!838930) (not b!2926755) (not d!838936) (not d!838956) (not bm!191983) (not b!2926441) (not d!838960) (not d!838986) (not d!838980) (not bm!191881) (not b!2926800) (not bm!191905) (not b!2926739) (not b!2926802) (not b!2926495) (not b!2926797) (not bm!191886) tp_is_empty!15605 (not b!2926766) (not bm!191882) (not b!2926202) (not bm!191910) (not bm!191926) (not d!838982) (not b!2926367) (not b!2926794) (not b!2926793) (not b!2926792) (not bm!191914) (not bm!191918) (not b!2926465) (not b!2926756) (not b!2926239) (not bm!191981) (not b!2926466) (not b!2926469) (not b!2926489) (not b!2926461) (not b!2926753) (not bm!191885) (not bm!191934) (not b!2926744) (not b!2926243) (not d!838984) (not d!838954) (not b!2926788) (not bm!191924) (not d!838964) (not bm!191980) (not b!2926257) (not b!2926250) (not bm!191931) (not b!2926418) (not bm!191936) (not bm!191937) (not bm!191982) (not b!2926789) (not b!2926478) (not bm!191930) (not b!2926727) (not bm!191915) (not b!2926244) (not b!2926438) (not bm!191925) (not bm!191907) (not b!2926510) (not b!2926253) (not b!2926486) (not b!2926761) (not b!2926741) (not d!838942) (not b!2926801) (not bm!191920) (not b!2926427) (not bm!191909) (not b!2926772) (not b!2926236) (not b!2926760) (not d!838962) (not b!2926758) (not b!2926747) (not bm!191919))
(check-sat)
