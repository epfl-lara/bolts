; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!728604 () Bool)

(assert start!728604)

(declare-fun b!7530845 () Bool)

(declare-fun e!4488247 () Bool)

(declare-fun tp!2189276 () Bool)

(declare-fun tp!2189277 () Bool)

(assert (=> b!7530845 (= e!4488247 (and tp!2189276 tp!2189277))))

(declare-fun b!7530846 () Bool)

(declare-fun res!3018235 () Bool)

(declare-fun e!4488251 () Bool)

(assert (=> b!7530846 (=> res!3018235 e!4488251)))

(declare-fun lt!2640532 () Int)

(declare-fun lt!2640533 () Int)

(assert (=> b!7530846 (= res!3018235 (not (= lt!2640532 lt!2640533)))))

(declare-fun b!7530847 () Bool)

(declare-fun tp!2189280 () Bool)

(declare-fun tp!2189281 () Bool)

(assert (=> b!7530847 (= e!4488247 (and tp!2189280 tp!2189281))))

(declare-fun b!7530849 () Bool)

(declare-fun e!4488244 () Bool)

(declare-fun tp_is_empty!50077 () Bool)

(declare-fun tp!2189270 () Bool)

(assert (=> b!7530849 (= e!4488244 (and tp_is_empty!50077 tp!2189270))))

(declare-datatypes ((C!40048 0))(
  ( (C!40049 (val!30464 Int)) )
))
(declare-datatypes ((List!72744 0))(
  ( (Nil!72620) (Cons!72620 (h!79068 C!40048) (t!387451 List!72744)) )
))
(declare-fun input!7874 () List!72744)

(declare-fun lt!2640535 () List!72744)

(declare-fun testedP!423 () List!72744)

(declare-fun b!7530850 () Bool)

(declare-fun ++!17382 (List!72744 List!72744) List!72744)

(assert (=> b!7530850 (= e!4488251 (= (++!17382 testedP!423 lt!2640535) input!7874))))

(declare-datatypes ((Regex!19861 0))(
  ( (ElementMatch!19861 (c!1390852 C!40048)) (Concat!28706 (regOne!40234 Regex!19861) (regTwo!40234 Regex!19861)) (EmptyExpr!19861) (Star!19861 (reg!20190 Regex!19861)) (EmptyLang!19861) (Union!19861 (regOne!40235 Regex!19861) (regTwo!40235 Regex!19861)) )
))
(declare-fun r!24333 () Regex!19861)

(declare-fun size!42357 (List!72744) Int)

(declare-datatypes ((tuple2!68824 0))(
  ( (tuple2!68825 (_1!37715 List!72744) (_2!37715 List!72744)) )
))
(declare-fun findLongestMatchInner!2120 (Regex!19861 List!72744 Int List!72744 List!72744 Int) tuple2!68824)

(assert (=> b!7530850 (>= (size!42357 (_1!37715 (findLongestMatchInner!2120 r!24333 testedP!423 lt!2640532 lt!2640535 input!7874 (size!42357 input!7874)))) lt!2640532)))

(declare-fun getSuffix!3547 (List!72744 List!72744) List!72744)

(assert (=> b!7530850 (= lt!2640535 (getSuffix!3547 input!7874 testedP!423))))

(declare-fun baseR!101 () Regex!19861)

(declare-datatypes ((Unit!166642 0))(
  ( (Unit!166643) )
))
(declare-fun lt!2640531 () Unit!166642)

(declare-fun lemmaIfMatchRThenLongestMatchFromThereReturnsAtLeastThis!6 (Regex!19861 Regex!19861 List!72744 List!72744) Unit!166642)

(assert (=> b!7530850 (= lt!2640531 (lemmaIfMatchRThenLongestMatchFromThereReturnsAtLeastThis!6 baseR!101 r!24333 input!7874 testedP!423))))

(declare-fun knownP!30 () List!72744)

(assert (=> b!7530850 (= testedP!423 knownP!30)))

(declare-fun lt!2640536 () Unit!166642)

(declare-fun lemmaIsPrefixSameLengthThenSameList!1521 (List!72744 List!72744 List!72744) Unit!166642)

(assert (=> b!7530850 (= lt!2640536 (lemmaIsPrefixSameLengthThenSameList!1521 testedP!423 knownP!30 input!7874))))

(declare-fun b!7530851 () Bool)

(declare-fun res!3018231 () Bool)

(assert (=> b!7530851 (=> res!3018231 e!4488251)))

(declare-fun derivative!393 (Regex!19861 List!72744) Regex!19861)

(assert (=> b!7530851 (= res!3018231 (not (= (derivative!393 baseR!101 testedP!423) r!24333)))))

(declare-fun b!7530852 () Bool)

(declare-fun e!4488245 () Bool)

(declare-fun tp!2189271 () Bool)

(assert (=> b!7530852 (= e!4488245 tp!2189271)))

(declare-fun b!7530853 () Bool)

(declare-fun tp!2189275 () Bool)

(assert (=> b!7530853 (= e!4488247 tp!2189275)))

(declare-fun b!7530854 () Bool)

(declare-fun res!3018238 () Bool)

(declare-fun e!4488246 () Bool)

(assert (=> b!7530854 (=> (not res!3018238) (not e!4488246))))

(declare-fun isPrefix!6067 (List!72744 List!72744) Bool)

(assert (=> b!7530854 (= res!3018238 (isPrefix!6067 knownP!30 input!7874))))

(declare-fun b!7530855 () Bool)

(declare-fun e!4488248 () Bool)

(assert (=> b!7530855 (= e!4488248 (not e!4488251))))

(declare-fun res!3018240 () Bool)

(assert (=> b!7530855 (=> res!3018240 e!4488251)))

(declare-fun matchR!9463 (Regex!19861 List!72744) Bool)

(assert (=> b!7530855 (= res!3018240 (not (matchR!9463 r!24333 (getSuffix!3547 knownP!30 testedP!423))))))

(assert (=> b!7530855 (isPrefix!6067 testedP!423 knownP!30)))

(declare-fun lt!2640534 () Unit!166642)

(declare-fun lemmaPrefixFromSameListAndStrictlySmallerThenPrefixFromEachOther!817 (List!72744 List!72744 List!72744) Unit!166642)

(assert (=> b!7530855 (= lt!2640534 (lemmaPrefixFromSameListAndStrictlySmallerThenPrefixFromEachOther!817 knownP!30 testedP!423 input!7874))))

(declare-fun b!7530856 () Bool)

(declare-fun res!3018234 () Bool)

(assert (=> b!7530856 (=> (not res!3018234) (not e!4488246))))

(assert (=> b!7530856 (= res!3018234 (isPrefix!6067 testedP!423 input!7874))))

(declare-fun b!7530848 () Bool)

(declare-fun e!4488250 () Bool)

(declare-fun tp!2189273 () Bool)

(assert (=> b!7530848 (= e!4488250 (and tp_is_empty!50077 tp!2189273))))

(declare-fun res!3018233 () Bool)

(assert (=> start!728604 (=> (not res!3018233) (not e!4488246))))

(declare-fun validRegex!10289 (Regex!19861) Bool)

(assert (=> start!728604 (= res!3018233 (validRegex!10289 baseR!101))))

(assert (=> start!728604 e!4488246))

(assert (=> start!728604 e!4488247))

(assert (=> start!728604 e!4488250))

(declare-fun e!4488249 () Bool)

(assert (=> start!728604 e!4488249))

(assert (=> start!728604 e!4488244))

(assert (=> start!728604 e!4488245))

(declare-fun b!7530857 () Bool)

(declare-fun res!3018237 () Bool)

(assert (=> b!7530857 (=> (not res!3018237) (not e!4488246))))

(assert (=> b!7530857 (= res!3018237 (validRegex!10289 r!24333))))

(declare-fun b!7530858 () Bool)

(declare-fun res!3018232 () Bool)

(assert (=> b!7530858 (=> res!3018232 e!4488251)))

(declare-fun lostCause!1653 (Regex!19861) Bool)

(assert (=> b!7530858 (= res!3018232 (lostCause!1653 r!24333))))

(declare-fun b!7530859 () Bool)

(assert (=> b!7530859 (= e!4488247 tp_is_empty!50077)))

(declare-fun b!7530860 () Bool)

(assert (=> b!7530860 (= e!4488246 e!4488248)))

(declare-fun res!3018236 () Bool)

(assert (=> b!7530860 (=> (not res!3018236) (not e!4488248))))

(assert (=> b!7530860 (= res!3018236 (>= lt!2640533 lt!2640532))))

(assert (=> b!7530860 (= lt!2640532 (size!42357 testedP!423))))

(assert (=> b!7530860 (= lt!2640533 (size!42357 knownP!30))))

(declare-fun b!7530861 () Bool)

(declare-fun tp!2189272 () Bool)

(assert (=> b!7530861 (= e!4488249 (and tp_is_empty!50077 tp!2189272))))

(declare-fun b!7530862 () Bool)

(declare-fun tp!2189274 () Bool)

(declare-fun tp!2189269 () Bool)

(assert (=> b!7530862 (= e!4488245 (and tp!2189274 tp!2189269))))

(declare-fun b!7530863 () Bool)

(declare-fun res!3018239 () Bool)

(assert (=> b!7530863 (=> (not res!3018239) (not e!4488248))))

(assert (=> b!7530863 (= res!3018239 (matchR!9463 baseR!101 knownP!30))))

(declare-fun b!7530864 () Bool)

(declare-fun tp!2189279 () Bool)

(declare-fun tp!2189278 () Bool)

(assert (=> b!7530864 (= e!4488245 (and tp!2189279 tp!2189278))))

(declare-fun b!7530865 () Bool)

(assert (=> b!7530865 (= e!4488245 tp_is_empty!50077)))

(assert (= (and start!728604 res!3018233) b!7530857))

(assert (= (and b!7530857 res!3018237) b!7530856))

(assert (= (and b!7530856 res!3018234) b!7530854))

(assert (= (and b!7530854 res!3018238) b!7530860))

(assert (= (and b!7530860 res!3018236) b!7530863))

(assert (= (and b!7530863 res!3018239) b!7530855))

(assert (= (and b!7530855 (not res!3018240)) b!7530851))

(assert (= (and b!7530851 (not res!3018231)) b!7530858))

(assert (= (and b!7530858 (not res!3018232)) b!7530846))

(assert (= (and b!7530846 (not res!3018235)) b!7530850))

(get-info :version)

(assert (= (and start!728604 ((_ is ElementMatch!19861) baseR!101)) b!7530859))

(assert (= (and start!728604 ((_ is Concat!28706) baseR!101)) b!7530845))

(assert (= (and start!728604 ((_ is Star!19861) baseR!101)) b!7530853))

(assert (= (and start!728604 ((_ is Union!19861) baseR!101)) b!7530847))

(assert (= (and start!728604 ((_ is Cons!72620) input!7874)) b!7530848))

(assert (= (and start!728604 ((_ is Cons!72620) knownP!30)) b!7530861))

(assert (= (and start!728604 ((_ is Cons!72620) testedP!423)) b!7530849))

(assert (= (and start!728604 ((_ is ElementMatch!19861) r!24333)) b!7530865))

(assert (= (and start!728604 ((_ is Concat!28706) r!24333)) b!7530862))

(assert (= (and start!728604 ((_ is Star!19861) r!24333)) b!7530852))

(assert (= (and start!728604 ((_ is Union!19861) r!24333)) b!7530864))

(declare-fun m!8104090 () Bool)

(assert (=> b!7530854 m!8104090))

(declare-fun m!8104092 () Bool)

(assert (=> b!7530856 m!8104092))

(declare-fun m!8104094 () Bool)

(assert (=> start!728604 m!8104094))

(declare-fun m!8104096 () Bool)

(assert (=> b!7530863 m!8104096))

(declare-fun m!8104098 () Bool)

(assert (=> b!7530857 m!8104098))

(declare-fun m!8104100 () Bool)

(assert (=> b!7530860 m!8104100))

(declare-fun m!8104102 () Bool)

(assert (=> b!7530860 m!8104102))

(declare-fun m!8104104 () Bool)

(assert (=> b!7530855 m!8104104))

(assert (=> b!7530855 m!8104104))

(declare-fun m!8104106 () Bool)

(assert (=> b!7530855 m!8104106))

(declare-fun m!8104108 () Bool)

(assert (=> b!7530855 m!8104108))

(declare-fun m!8104110 () Bool)

(assert (=> b!7530855 m!8104110))

(declare-fun m!8104112 () Bool)

(assert (=> b!7530858 m!8104112))

(declare-fun m!8104114 () Bool)

(assert (=> b!7530850 m!8104114))

(declare-fun m!8104116 () Bool)

(assert (=> b!7530850 m!8104116))

(declare-fun m!8104118 () Bool)

(assert (=> b!7530850 m!8104118))

(declare-fun m!8104120 () Bool)

(assert (=> b!7530850 m!8104120))

(declare-fun m!8104122 () Bool)

(assert (=> b!7530850 m!8104122))

(assert (=> b!7530850 m!8104114))

(declare-fun m!8104124 () Bool)

(assert (=> b!7530850 m!8104124))

(declare-fun m!8104126 () Bool)

(assert (=> b!7530850 m!8104126))

(declare-fun m!8104128 () Bool)

(assert (=> b!7530851 m!8104128))

(check-sat (not b!7530858) (not b!7530853) (not b!7530852) (not b!7530860) (not b!7530848) (not b!7530850) (not b!7530863) (not b!7530849) (not b!7530847) (not b!7530851) (not b!7530857) (not b!7530854) (not b!7530856) tp_is_empty!50077 (not b!7530845) (not start!728604) (not b!7530862) (not b!7530855) (not b!7530864) (not b!7530861))
(check-sat)
(get-model)

(declare-fun d!2309772 () Bool)

(declare-fun lt!2640539 () Int)

(assert (=> d!2309772 (>= lt!2640539 0)))

(declare-fun e!4488268 () Int)

(assert (=> d!2309772 (= lt!2640539 e!4488268)))

(declare-fun c!1390859 () Bool)

(assert (=> d!2309772 (= c!1390859 ((_ is Nil!72620) testedP!423))))

(assert (=> d!2309772 (= (size!42357 testedP!423) lt!2640539)))

(declare-fun b!7530888 () Bool)

(assert (=> b!7530888 (= e!4488268 0)))

(declare-fun b!7530889 () Bool)

(assert (=> b!7530889 (= e!4488268 (+ 1 (size!42357 (t!387451 testedP!423))))))

(assert (= (and d!2309772 c!1390859) b!7530888))

(assert (= (and d!2309772 (not c!1390859)) b!7530889))

(declare-fun m!8104130 () Bool)

(assert (=> b!7530889 m!8104130))

(assert (=> b!7530860 d!2309772))

(declare-fun d!2309774 () Bool)

(declare-fun lt!2640540 () Int)

(assert (=> d!2309774 (>= lt!2640540 0)))

(declare-fun e!4488269 () Int)

(assert (=> d!2309774 (= lt!2640540 e!4488269)))

(declare-fun c!1390860 () Bool)

(assert (=> d!2309774 (= c!1390860 ((_ is Nil!72620) knownP!30))))

(assert (=> d!2309774 (= (size!42357 knownP!30) lt!2640540)))

(declare-fun b!7530890 () Bool)

(assert (=> b!7530890 (= e!4488269 0)))

(declare-fun b!7530891 () Bool)

(assert (=> b!7530891 (= e!4488269 (+ 1 (size!42357 (t!387451 knownP!30))))))

(assert (= (and d!2309774 c!1390860) b!7530890))

(assert (= (and d!2309774 (not c!1390860)) b!7530891))

(declare-fun m!8104132 () Bool)

(assert (=> b!7530891 m!8104132))

(assert (=> b!7530860 d!2309774))

(declare-fun b!7530931 () Bool)

(declare-fun res!3018279 () Bool)

(declare-fun e!4488300 () Bool)

(assert (=> b!7530931 (=> res!3018279 e!4488300)))

(assert (=> b!7530931 (= res!3018279 (not ((_ is Concat!28706) baseR!101)))))

(declare-fun e!4488303 () Bool)

(assert (=> b!7530931 (= e!4488303 e!4488300)))

(declare-fun b!7530932 () Bool)

(declare-fun e!4488302 () Bool)

(assert (=> b!7530932 (= e!4488300 e!4488302)))

(declare-fun res!3018282 () Bool)

(assert (=> b!7530932 (=> (not res!3018282) (not e!4488302))))

(declare-fun call!690917 () Bool)

(assert (=> b!7530932 (= res!3018282 call!690917)))

(declare-fun b!7530933 () Bool)

(declare-fun e!4488306 () Bool)

(declare-fun call!690918 () Bool)

(assert (=> b!7530933 (= e!4488306 call!690918)))

(declare-fun bm!690911 () Bool)

(declare-fun call!690916 () Bool)

(assert (=> bm!690911 (= call!690916 call!690918)))

(declare-fun b!7530934 () Bool)

(declare-fun e!4488301 () Bool)

(assert (=> b!7530934 (= e!4488301 call!690916)))

(declare-fun bm!690912 () Bool)

(declare-fun c!1390867 () Bool)

(assert (=> bm!690912 (= call!690917 (validRegex!10289 (ite c!1390867 (regOne!40235 baseR!101) (regOne!40234 baseR!101))))))

(declare-fun c!1390868 () Bool)

(declare-fun bm!690913 () Bool)

(assert (=> bm!690913 (= call!690918 (validRegex!10289 (ite c!1390868 (reg!20190 baseR!101) (ite c!1390867 (regTwo!40235 baseR!101) (regTwo!40234 baseR!101)))))))

(declare-fun b!7530935 () Bool)

(declare-fun e!4488304 () Bool)

(assert (=> b!7530935 (= e!4488304 e!4488303)))

(assert (=> b!7530935 (= c!1390867 ((_ is Union!19861) baseR!101))))

(declare-fun b!7530936 () Bool)

(assert (=> b!7530936 (= e!4488302 call!690916)))

(declare-fun b!7530937 () Bool)

(declare-fun e!4488305 () Bool)

(assert (=> b!7530937 (= e!4488305 e!4488304)))

(assert (=> b!7530937 (= c!1390868 ((_ is Star!19861) baseR!101))))

(declare-fun b!7530938 () Bool)

(assert (=> b!7530938 (= e!4488304 e!4488306)))

(declare-fun res!3018281 () Bool)

(declare-fun nullable!8657 (Regex!19861) Bool)

(assert (=> b!7530938 (= res!3018281 (not (nullable!8657 (reg!20190 baseR!101))))))

(assert (=> b!7530938 (=> (not res!3018281) (not e!4488306))))

(declare-fun d!2309776 () Bool)

(declare-fun res!3018280 () Bool)

(assert (=> d!2309776 (=> res!3018280 e!4488305)))

(assert (=> d!2309776 (= res!3018280 ((_ is ElementMatch!19861) baseR!101))))

(assert (=> d!2309776 (= (validRegex!10289 baseR!101) e!4488305)))

(declare-fun b!7530939 () Bool)

(declare-fun res!3018278 () Bool)

(assert (=> b!7530939 (=> (not res!3018278) (not e!4488301))))

(assert (=> b!7530939 (= res!3018278 call!690917)))

(assert (=> b!7530939 (= e!4488303 e!4488301)))

(assert (= (and d!2309776 (not res!3018280)) b!7530937))

(assert (= (and b!7530937 c!1390868) b!7530938))

(assert (= (and b!7530937 (not c!1390868)) b!7530935))

(assert (= (and b!7530938 res!3018281) b!7530933))

(assert (= (and b!7530935 c!1390867) b!7530939))

(assert (= (and b!7530935 (not c!1390867)) b!7530931))

(assert (= (and b!7530939 res!3018278) b!7530934))

(assert (= (and b!7530931 (not res!3018279)) b!7530932))

(assert (= (and b!7530932 res!3018282) b!7530936))

(assert (= (or b!7530939 b!7530932) bm!690912))

(assert (= (or b!7530934 b!7530936) bm!690911))

(assert (= (or b!7530933 bm!690911) bm!690913))

(declare-fun m!8104150 () Bool)

(assert (=> bm!690912 m!8104150))

(declare-fun m!8104152 () Bool)

(assert (=> bm!690913 m!8104152))

(declare-fun m!8104154 () Bool)

(assert (=> b!7530938 m!8104154))

(assert (=> start!728604 d!2309776))

(declare-fun d!2309782 () Bool)

(declare-fun lt!2640544 () Int)

(assert (=> d!2309782 (>= lt!2640544 0)))

(declare-fun e!4488307 () Int)

(assert (=> d!2309782 (= lt!2640544 e!4488307)))

(declare-fun c!1390869 () Bool)

(assert (=> d!2309782 (= c!1390869 ((_ is Nil!72620) (_1!37715 (findLongestMatchInner!2120 r!24333 testedP!423 lt!2640532 lt!2640535 input!7874 (size!42357 input!7874)))))))

(assert (=> d!2309782 (= (size!42357 (_1!37715 (findLongestMatchInner!2120 r!24333 testedP!423 lt!2640532 lt!2640535 input!7874 (size!42357 input!7874)))) lt!2640544)))

(declare-fun b!7530940 () Bool)

(assert (=> b!7530940 (= e!4488307 0)))

(declare-fun b!7530941 () Bool)

(assert (=> b!7530941 (= e!4488307 (+ 1 (size!42357 (t!387451 (_1!37715 (findLongestMatchInner!2120 r!24333 testedP!423 lt!2640532 lt!2640535 input!7874 (size!42357 input!7874)))))))))

(assert (= (and d!2309782 c!1390869) b!7530940))

(assert (= (and d!2309782 (not c!1390869)) b!7530941))

(declare-fun m!8104156 () Bool)

(assert (=> b!7530941 m!8104156))

(assert (=> b!7530850 d!2309782))

(declare-fun d!2309784 () Bool)

(declare-fun lt!2640545 () Int)

(assert (=> d!2309784 (>= lt!2640545 0)))

(declare-fun e!4488308 () Int)

(assert (=> d!2309784 (= lt!2640545 e!4488308)))

(declare-fun c!1390870 () Bool)

(assert (=> d!2309784 (= c!1390870 ((_ is Nil!72620) input!7874))))

(assert (=> d!2309784 (= (size!42357 input!7874) lt!2640545)))

(declare-fun b!7530942 () Bool)

(assert (=> b!7530942 (= e!4488308 0)))

(declare-fun b!7530943 () Bool)

(assert (=> b!7530943 (= e!4488308 (+ 1 (size!42357 (t!387451 input!7874))))))

(assert (= (and d!2309784 c!1390870) b!7530942))

(assert (= (and d!2309784 (not c!1390870)) b!7530943))

(declare-fun m!8104158 () Bool)

(assert (=> b!7530943 m!8104158))

(assert (=> b!7530850 d!2309784))

(declare-fun b!7530981 () Bool)

(declare-fun e!4488327 () List!72744)

(assert (=> b!7530981 (= e!4488327 (Cons!72620 (h!79068 testedP!423) (++!17382 (t!387451 testedP!423) lt!2640535)))))

(declare-fun b!7530982 () Bool)

(declare-fun res!3018304 () Bool)

(declare-fun e!4488328 () Bool)

(assert (=> b!7530982 (=> (not res!3018304) (not e!4488328))))

(declare-fun lt!2640550 () List!72744)

(assert (=> b!7530982 (= res!3018304 (= (size!42357 lt!2640550) (+ (size!42357 testedP!423) (size!42357 lt!2640535))))))

(declare-fun d!2309786 () Bool)

(assert (=> d!2309786 e!4488328))

(declare-fun res!3018303 () Bool)

(assert (=> d!2309786 (=> (not res!3018303) (not e!4488328))))

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!15347 (List!72744) (InoxSet C!40048))

(assert (=> d!2309786 (= res!3018303 (= (content!15347 lt!2640550) ((_ map or) (content!15347 testedP!423) (content!15347 lt!2640535))))))

(assert (=> d!2309786 (= lt!2640550 e!4488327)))

(declare-fun c!1390879 () Bool)

(assert (=> d!2309786 (= c!1390879 ((_ is Nil!72620) testedP!423))))

(assert (=> d!2309786 (= (++!17382 testedP!423 lt!2640535) lt!2640550)))

(declare-fun b!7530980 () Bool)

(assert (=> b!7530980 (= e!4488327 lt!2640535)))

(declare-fun b!7530983 () Bool)

(assert (=> b!7530983 (= e!4488328 (or (not (= lt!2640535 Nil!72620)) (= lt!2640550 testedP!423)))))

(assert (= (and d!2309786 c!1390879) b!7530980))

(assert (= (and d!2309786 (not c!1390879)) b!7530981))

(assert (= (and d!2309786 res!3018303) b!7530982))

(assert (= (and b!7530982 res!3018304) b!7530983))

(declare-fun m!8104160 () Bool)

(assert (=> b!7530981 m!8104160))

(declare-fun m!8104162 () Bool)

(assert (=> b!7530982 m!8104162))

(assert (=> b!7530982 m!8104100))

(declare-fun m!8104164 () Bool)

(assert (=> b!7530982 m!8104164))

(declare-fun m!8104166 () Bool)

(assert (=> d!2309786 m!8104166))

(declare-fun m!8104168 () Bool)

(assert (=> d!2309786 m!8104168))

(declare-fun m!8104170 () Bool)

(assert (=> d!2309786 m!8104170))

(assert (=> b!7530850 d!2309786))

(declare-fun d!2309788 () Bool)

(assert (=> d!2309788 (= testedP!423 knownP!30)))

(declare-fun lt!2640554 () Unit!166642)

(declare-fun choose!58271 (List!72744 List!72744 List!72744) Unit!166642)

(assert (=> d!2309788 (= lt!2640554 (choose!58271 testedP!423 knownP!30 input!7874))))

(assert (=> d!2309788 (isPrefix!6067 testedP!423 input!7874)))

(assert (=> d!2309788 (= (lemmaIsPrefixSameLengthThenSameList!1521 testedP!423 knownP!30 input!7874) lt!2640554)))

(declare-fun bs!1939825 () Bool)

(assert (= bs!1939825 d!2309788))

(declare-fun m!8104172 () Bool)

(assert (=> bs!1939825 m!8104172))

(assert (=> bs!1939825 m!8104092))

(assert (=> b!7530850 d!2309788))

(declare-fun b!7531194 () Bool)

(declare-fun e!4488438 () tuple2!68824)

(assert (=> b!7531194 (= e!4488438 (tuple2!68825 testedP!423 lt!2640535))))

(declare-fun b!7531195 () Bool)

(declare-fun lt!2640742 () tuple2!68824)

(assert (=> b!7531195 (= e!4488438 lt!2640742)))

(declare-fun b!7531196 () Bool)

(declare-fun e!4488437 () tuple2!68824)

(declare-fun call!690971 () tuple2!68824)

(assert (=> b!7531196 (= e!4488437 call!690971)))

(declare-fun b!7531197 () Bool)

(declare-fun e!4488436 () Unit!166642)

(declare-fun Unit!166646 () Unit!166642)

(assert (=> b!7531197 (= e!4488436 Unit!166646)))

(declare-fun lt!2640725 () Unit!166642)

(declare-fun call!690966 () Unit!166642)

(assert (=> b!7531197 (= lt!2640725 call!690966)))

(declare-fun call!690972 () Bool)

(assert (=> b!7531197 call!690972))

(declare-fun lt!2640731 () Unit!166642)

(assert (=> b!7531197 (= lt!2640731 lt!2640725)))

(declare-fun lt!2640732 () Unit!166642)

(declare-fun call!690973 () Unit!166642)

(assert (=> b!7531197 (= lt!2640732 call!690973)))

(assert (=> b!7531197 (= input!7874 testedP!423)))

(declare-fun lt!2640733 () Unit!166642)

(assert (=> b!7531197 (= lt!2640733 lt!2640732)))

(assert (=> b!7531197 false))

(declare-fun bm!690961 () Bool)

(assert (=> bm!690961 (= call!690972 (isPrefix!6067 input!7874 input!7874))))

(declare-fun bm!690962 () Bool)

(assert (=> bm!690962 (= call!690973 (lemmaIsPrefixSameLengthThenSameList!1521 input!7874 testedP!423 input!7874))))

(declare-fun b!7531198 () Bool)

(declare-fun e!4488435 () tuple2!68824)

(declare-fun e!4488433 () tuple2!68824)

(assert (=> b!7531198 (= e!4488435 e!4488433)))

(declare-fun c!1390938 () Bool)

(assert (=> b!7531198 (= c!1390938 (= lt!2640532 (size!42357 input!7874)))))

(declare-fun b!7531199 () Bool)

(declare-fun e!4488434 () Bool)

(declare-fun e!4488432 () Bool)

(assert (=> b!7531199 (= e!4488434 e!4488432)))

(declare-fun res!3018350 () Bool)

(assert (=> b!7531199 (=> res!3018350 e!4488432)))

(declare-fun lt!2640741 () tuple2!68824)

(declare-fun isEmpty!41349 (List!72744) Bool)

(assert (=> b!7531199 (= res!3018350 (isEmpty!41349 (_1!37715 lt!2640741)))))

(declare-fun bm!690963 () Bool)

(declare-fun lemmaIsPrefixRefl!3866 (List!72744 List!72744) Unit!166642)

(assert (=> bm!690963 (= call!690966 (lemmaIsPrefixRefl!3866 input!7874 input!7874))))

(declare-fun call!690970 () List!72744)

(declare-fun lt!2640744 () List!72744)

(declare-fun call!690968 () Regex!19861)

(declare-fun bm!690964 () Bool)

(assert (=> bm!690964 (= call!690971 (findLongestMatchInner!2120 call!690968 lt!2640744 (+ lt!2640532 1) call!690970 input!7874 (size!42357 input!7874)))))

(declare-fun b!7531200 () Bool)

(declare-fun e!4488439 () tuple2!68824)

(assert (=> b!7531200 (= e!4488439 (tuple2!68825 testedP!423 Nil!72620))))

(declare-fun b!7531201 () Bool)

(declare-fun c!1390934 () Bool)

(declare-fun call!690967 () Bool)

(assert (=> b!7531201 (= c!1390934 call!690967)))

(declare-fun lt!2640737 () Unit!166642)

(declare-fun lt!2640745 () Unit!166642)

(assert (=> b!7531201 (= lt!2640737 lt!2640745)))

(assert (=> b!7531201 (= input!7874 testedP!423)))

(assert (=> b!7531201 (= lt!2640745 call!690973)))

(declare-fun lt!2640743 () Unit!166642)

(declare-fun lt!2640749 () Unit!166642)

(assert (=> b!7531201 (= lt!2640743 lt!2640749)))

(assert (=> b!7531201 call!690972))

(assert (=> b!7531201 (= lt!2640749 call!690966)))

(assert (=> b!7531201 (= e!4488433 e!4488439)))

(declare-fun d!2309790 () Bool)

(assert (=> d!2309790 e!4488434))

(declare-fun res!3018351 () Bool)

(assert (=> d!2309790 (=> (not res!3018351) (not e!4488434))))

(assert (=> d!2309790 (= res!3018351 (= (++!17382 (_1!37715 lt!2640741) (_2!37715 lt!2640741)) input!7874))))

(assert (=> d!2309790 (= lt!2640741 e!4488435)))

(declare-fun c!1390936 () Bool)

(assert (=> d!2309790 (= c!1390936 (lostCause!1653 r!24333))))

(declare-fun lt!2640738 () Unit!166642)

(declare-fun Unit!166648 () Unit!166642)

(assert (=> d!2309790 (= lt!2640738 Unit!166648)))

(assert (=> d!2309790 (= (getSuffix!3547 input!7874 testedP!423) lt!2640535)))

(declare-fun lt!2640726 () Unit!166642)

(declare-fun lt!2640735 () Unit!166642)

(assert (=> d!2309790 (= lt!2640726 lt!2640735)))

(declare-fun lt!2640747 () List!72744)

(assert (=> d!2309790 (= lt!2640535 lt!2640747)))

(declare-fun lemmaSamePrefixThenSameSuffix!2825 (List!72744 List!72744 List!72744 List!72744 List!72744) Unit!166642)

(assert (=> d!2309790 (= lt!2640735 (lemmaSamePrefixThenSameSuffix!2825 testedP!423 lt!2640535 testedP!423 lt!2640747 input!7874))))

(assert (=> d!2309790 (= lt!2640747 (getSuffix!3547 input!7874 testedP!423))))

(declare-fun lt!2640723 () Unit!166642)

(declare-fun lt!2640730 () Unit!166642)

(assert (=> d!2309790 (= lt!2640723 lt!2640730)))

(assert (=> d!2309790 (isPrefix!6067 testedP!423 (++!17382 testedP!423 lt!2640535))))

(declare-fun lemmaConcatTwoListThenFirstIsPrefix!3739 (List!72744 List!72744) Unit!166642)

(assert (=> d!2309790 (= lt!2640730 (lemmaConcatTwoListThenFirstIsPrefix!3739 testedP!423 lt!2640535))))

(assert (=> d!2309790 (validRegex!10289 r!24333)))

(assert (=> d!2309790 (= (findLongestMatchInner!2120 r!24333 testedP!423 lt!2640532 lt!2640535 input!7874 (size!42357 input!7874)) lt!2640741)))

(declare-fun bm!690965 () Bool)

(assert (=> bm!690965 (= call!690967 (nullable!8657 r!24333))))

(declare-fun bm!690966 () Bool)

(declare-fun call!690969 () C!40048)

(declare-fun derivativeStep!5663 (Regex!19861 C!40048) Regex!19861)

(assert (=> bm!690966 (= call!690968 (derivativeStep!5663 r!24333 call!690969))))

(declare-fun b!7531202 () Bool)

(assert (=> b!7531202 (= e!4488439 (tuple2!68825 Nil!72620 input!7874))))

(declare-fun bm!690967 () Bool)

(declare-fun head!15459 (List!72744) C!40048)

(assert (=> bm!690967 (= call!690969 (head!15459 lt!2640535))))

(declare-fun b!7531203 () Bool)

(assert (=> b!7531203 (= e!4488432 (>= (size!42357 (_1!37715 lt!2640741)) (size!42357 testedP!423)))))

(declare-fun bm!690968 () Bool)

(declare-fun tail!15019 (List!72744) List!72744)

(assert (=> bm!690968 (= call!690970 (tail!15019 lt!2640535))))

(declare-fun b!7531204 () Bool)

(declare-fun Unit!166649 () Unit!166642)

(assert (=> b!7531204 (= e!4488436 Unit!166649)))

(declare-fun b!7531205 () Bool)

(declare-fun c!1390939 () Bool)

(assert (=> b!7531205 (= c!1390939 call!690967)))

(declare-fun lt!2640746 () Unit!166642)

(declare-fun lt!2640740 () Unit!166642)

(assert (=> b!7531205 (= lt!2640746 lt!2640740)))

(declare-fun lt!2640736 () List!72744)

(declare-fun lt!2640724 () C!40048)

(assert (=> b!7531205 (= (++!17382 (++!17382 testedP!423 (Cons!72620 lt!2640724 Nil!72620)) lt!2640736) input!7874)))

(declare-fun lemmaMoveElementToOtherListKeepsConcatEq!3175 (List!72744 C!40048 List!72744 List!72744) Unit!166642)

(assert (=> b!7531205 (= lt!2640740 (lemmaMoveElementToOtherListKeepsConcatEq!3175 testedP!423 lt!2640724 lt!2640736 input!7874))))

(assert (=> b!7531205 (= lt!2640736 (tail!15019 lt!2640535))))

(assert (=> b!7531205 (= lt!2640724 (head!15459 lt!2640535))))

(declare-fun lt!2640729 () Unit!166642)

(declare-fun lt!2640750 () Unit!166642)

(assert (=> b!7531205 (= lt!2640729 lt!2640750)))

(assert (=> b!7531205 (isPrefix!6067 (++!17382 testedP!423 (Cons!72620 (head!15459 (getSuffix!3547 input!7874 testedP!423)) Nil!72620)) input!7874)))

(declare-fun lemmaAddHeadSuffixToPrefixStillPrefix!1144 (List!72744 List!72744) Unit!166642)

(assert (=> b!7531205 (= lt!2640750 (lemmaAddHeadSuffixToPrefixStillPrefix!1144 testedP!423 input!7874))))

(declare-fun lt!2640727 () Unit!166642)

(declare-fun lt!2640728 () Unit!166642)

(assert (=> b!7531205 (= lt!2640727 lt!2640728)))

(assert (=> b!7531205 (= lt!2640728 (lemmaAddHeadSuffixToPrefixStillPrefix!1144 testedP!423 input!7874))))

(assert (=> b!7531205 (= lt!2640744 (++!17382 testedP!423 (Cons!72620 (head!15459 lt!2640535) Nil!72620)))))

(declare-fun lt!2640734 () Unit!166642)

(assert (=> b!7531205 (= lt!2640734 e!4488436)))

(declare-fun c!1390937 () Bool)

(assert (=> b!7531205 (= c!1390937 (= (size!42357 testedP!423) (size!42357 input!7874)))))

(declare-fun lt!2640748 () Unit!166642)

(declare-fun lt!2640739 () Unit!166642)

(assert (=> b!7531205 (= lt!2640748 lt!2640739)))

(assert (=> b!7531205 (<= (size!42357 testedP!423) (size!42357 input!7874))))

(declare-fun lemmaIsPrefixThenSmallerEqSize!1014 (List!72744 List!72744) Unit!166642)

(assert (=> b!7531205 (= lt!2640739 (lemmaIsPrefixThenSmallerEqSize!1014 testedP!423 input!7874))))

(assert (=> b!7531205 (= e!4488433 e!4488437)))

(declare-fun b!7531206 () Bool)

(assert (=> b!7531206 (= e!4488435 (tuple2!68825 Nil!72620 input!7874))))

(declare-fun b!7531207 () Bool)

(assert (=> b!7531207 (= e!4488437 e!4488438)))

(assert (=> b!7531207 (= lt!2640742 call!690971)))

(declare-fun c!1390935 () Bool)

(assert (=> b!7531207 (= c!1390935 (isEmpty!41349 (_1!37715 lt!2640742)))))

(assert (= (and d!2309790 c!1390936) b!7531206))

(assert (= (and d!2309790 (not c!1390936)) b!7531198))

(assert (= (and b!7531198 c!1390938) b!7531201))

(assert (= (and b!7531198 (not c!1390938)) b!7531205))

(assert (= (and b!7531201 c!1390934) b!7531200))

(assert (= (and b!7531201 (not c!1390934)) b!7531202))

(assert (= (and b!7531205 c!1390937) b!7531197))

(assert (= (and b!7531205 (not c!1390937)) b!7531204))

(assert (= (and b!7531205 c!1390939) b!7531207))

(assert (= (and b!7531205 (not c!1390939)) b!7531196))

(assert (= (and b!7531207 c!1390935) b!7531194))

(assert (= (and b!7531207 (not c!1390935)) b!7531195))

(assert (= (or b!7531207 b!7531196) bm!690968))

(assert (= (or b!7531207 b!7531196) bm!690967))

(assert (= (or b!7531207 b!7531196) bm!690966))

(assert (= (or b!7531207 b!7531196) bm!690964))

(assert (= (or b!7531201 b!7531197) bm!690961))

(assert (= (or b!7531201 b!7531205) bm!690965))

(assert (= (or b!7531201 b!7531197) bm!690962))

(assert (= (or b!7531201 b!7531197) bm!690963))

(assert (= (and d!2309790 res!3018351) b!7531199))

(assert (= (and b!7531199 (not res!3018350)) b!7531203))

(declare-fun m!8104304 () Bool)

(assert (=> bm!690965 m!8104304))

(declare-fun m!8104306 () Bool)

(assert (=> b!7531199 m!8104306))

(assert (=> bm!690964 m!8104114))

(declare-fun m!8104308 () Bool)

(assert (=> bm!690964 m!8104308))

(declare-fun m!8104310 () Bool)

(assert (=> bm!690961 m!8104310))

(declare-fun m!8104312 () Bool)

(assert (=> b!7531207 m!8104312))

(declare-fun m!8104314 () Bool)

(assert (=> bm!690963 m!8104314))

(declare-fun m!8104316 () Bool)

(assert (=> bm!690968 m!8104316))

(assert (=> d!2309790 m!8104124))

(declare-fun m!8104318 () Bool)

(assert (=> d!2309790 m!8104318))

(declare-fun m!8104320 () Bool)

(assert (=> d!2309790 m!8104320))

(assert (=> d!2309790 m!8104098))

(assert (=> d!2309790 m!8104120))

(declare-fun m!8104322 () Bool)

(assert (=> d!2309790 m!8104322))

(assert (=> d!2309790 m!8104124))

(assert (=> d!2309790 m!8104112))

(declare-fun m!8104324 () Bool)

(assert (=> d!2309790 m!8104324))

(declare-fun m!8104326 () Bool)

(assert (=> bm!690962 m!8104326))

(declare-fun m!8104328 () Bool)

(assert (=> b!7531205 m!8104328))

(assert (=> b!7531205 m!8104316))

(declare-fun m!8104330 () Bool)

(assert (=> b!7531205 m!8104330))

(declare-fun m!8104332 () Bool)

(assert (=> b!7531205 m!8104332))

(declare-fun m!8104334 () Bool)

(assert (=> b!7531205 m!8104334))

(declare-fun m!8104336 () Bool)

(assert (=> b!7531205 m!8104336))

(assert (=> b!7531205 m!8104120))

(declare-fun m!8104338 () Bool)

(assert (=> b!7531205 m!8104338))

(assert (=> b!7531205 m!8104334))

(assert (=> b!7531205 m!8104120))

(declare-fun m!8104340 () Bool)

(assert (=> b!7531205 m!8104340))

(declare-fun m!8104342 () Bool)

(assert (=> b!7531205 m!8104342))

(assert (=> b!7531205 m!8104338))

(declare-fun m!8104344 () Bool)

(assert (=> b!7531205 m!8104344))

(assert (=> b!7531205 m!8104100))

(assert (=> b!7531205 m!8104114))

(declare-fun m!8104346 () Bool)

(assert (=> b!7531205 m!8104346))

(declare-fun m!8104348 () Bool)

(assert (=> bm!690966 m!8104348))

(assert (=> bm!690967 m!8104346))

(declare-fun m!8104350 () Bool)

(assert (=> b!7531203 m!8104350))

(assert (=> b!7531203 m!8104100))

(assert (=> b!7530850 d!2309790))

(declare-fun d!2309826 () Bool)

(assert (=> d!2309826 (>= (size!42357 (_1!37715 (findLongestMatchInner!2120 r!24333 testedP!423 (size!42357 testedP!423) (getSuffix!3547 input!7874 testedP!423) input!7874 (size!42357 input!7874)))) (size!42357 testedP!423))))

(declare-fun lt!2640753 () Unit!166642)

(declare-fun choose!58273 (Regex!19861 Regex!19861 List!72744 List!72744) Unit!166642)

(assert (=> d!2309826 (= lt!2640753 (choose!58273 baseR!101 r!24333 input!7874 testedP!423))))

(assert (=> d!2309826 (validRegex!10289 baseR!101)))

(assert (=> d!2309826 (= (lemmaIfMatchRThenLongestMatchFromThereReturnsAtLeastThis!6 baseR!101 r!24333 input!7874 testedP!423) lt!2640753)))

(declare-fun bs!1939830 () Bool)

(assert (= bs!1939830 d!2309826))

(assert (=> bs!1939830 m!8104114))

(assert (=> bs!1939830 m!8104100))

(assert (=> bs!1939830 m!8104100))

(assert (=> bs!1939830 m!8104120))

(assert (=> bs!1939830 m!8104114))

(declare-fun m!8104352 () Bool)

(assert (=> bs!1939830 m!8104352))

(assert (=> bs!1939830 m!8104120))

(declare-fun m!8104354 () Bool)

(assert (=> bs!1939830 m!8104354))

(declare-fun m!8104356 () Bool)

(assert (=> bs!1939830 m!8104356))

(assert (=> bs!1939830 m!8104094))

(assert (=> b!7530850 d!2309826))

(declare-fun d!2309828 () Bool)

(declare-fun lt!2640756 () List!72744)

(assert (=> d!2309828 (= (++!17382 testedP!423 lt!2640756) input!7874)))

(declare-fun e!4488442 () List!72744)

(assert (=> d!2309828 (= lt!2640756 e!4488442)))

(declare-fun c!1390942 () Bool)

(assert (=> d!2309828 (= c!1390942 ((_ is Cons!72620) testedP!423))))

(assert (=> d!2309828 (>= (size!42357 input!7874) (size!42357 testedP!423))))

(assert (=> d!2309828 (= (getSuffix!3547 input!7874 testedP!423) lt!2640756)))

(declare-fun b!7531212 () Bool)

(assert (=> b!7531212 (= e!4488442 (getSuffix!3547 (tail!15019 input!7874) (t!387451 testedP!423)))))

(declare-fun b!7531213 () Bool)

(assert (=> b!7531213 (= e!4488442 input!7874)))

(assert (= (and d!2309828 c!1390942) b!7531212))

(assert (= (and d!2309828 (not c!1390942)) b!7531213))

(declare-fun m!8104358 () Bool)

(assert (=> d!2309828 m!8104358))

(assert (=> d!2309828 m!8104114))

(assert (=> d!2309828 m!8104100))

(declare-fun m!8104360 () Bool)

(assert (=> b!7531212 m!8104360))

(assert (=> b!7531212 m!8104360))

(declare-fun m!8104362 () Bool)

(assert (=> b!7531212 m!8104362))

(assert (=> b!7530850 d!2309828))

(declare-fun b!7531242 () Bool)

(declare-fun res!3018374 () Bool)

(declare-fun e!4488463 () Bool)

(assert (=> b!7531242 (=> (not res!3018374) (not e!4488463))))

(declare-fun call!690976 () Bool)

(assert (=> b!7531242 (= res!3018374 (not call!690976))))

(declare-fun b!7531243 () Bool)

(declare-fun e!4488458 () Bool)

(declare-fun e!4488461 () Bool)

(assert (=> b!7531243 (= e!4488458 e!4488461)))

(declare-fun res!3018368 () Bool)

(assert (=> b!7531243 (=> res!3018368 e!4488461)))

(assert (=> b!7531243 (= res!3018368 call!690976)))

(declare-fun b!7531244 () Bool)

(declare-fun res!3018369 () Bool)

(assert (=> b!7531244 (=> res!3018369 e!4488461)))

(assert (=> b!7531244 (= res!3018369 (not (isEmpty!41349 (tail!15019 (getSuffix!3547 knownP!30 testedP!423)))))))

(declare-fun b!7531245 () Bool)

(assert (=> b!7531245 (= e!4488463 (= (head!15459 (getSuffix!3547 knownP!30 testedP!423)) (c!1390852 r!24333)))))

(declare-fun b!7531246 () Bool)

(declare-fun res!3018370 () Bool)

(assert (=> b!7531246 (=> (not res!3018370) (not e!4488463))))

(assert (=> b!7531246 (= res!3018370 (isEmpty!41349 (tail!15019 (getSuffix!3547 knownP!30 testedP!423))))))

(declare-fun d!2309830 () Bool)

(declare-fun e!4488459 () Bool)

(assert (=> d!2309830 e!4488459))

(declare-fun c!1390950 () Bool)

(assert (=> d!2309830 (= c!1390950 ((_ is EmptyExpr!19861) r!24333))))

(declare-fun lt!2640759 () Bool)

(declare-fun e!4488460 () Bool)

(assert (=> d!2309830 (= lt!2640759 e!4488460)))

(declare-fun c!1390951 () Bool)

(assert (=> d!2309830 (= c!1390951 (isEmpty!41349 (getSuffix!3547 knownP!30 testedP!423)))))

(assert (=> d!2309830 (validRegex!10289 r!24333)))

(assert (=> d!2309830 (= (matchR!9463 r!24333 (getSuffix!3547 knownP!30 testedP!423)) lt!2640759)))

(declare-fun b!7531247 () Bool)

(declare-fun res!3018372 () Bool)

(declare-fun e!4488462 () Bool)

(assert (=> b!7531247 (=> res!3018372 e!4488462)))

(assert (=> b!7531247 (= res!3018372 (not ((_ is ElementMatch!19861) r!24333)))))

(declare-fun e!4488457 () Bool)

(assert (=> b!7531247 (= e!4488457 e!4488462)))

(declare-fun b!7531248 () Bool)

(assert (=> b!7531248 (= e!4488461 (not (= (head!15459 (getSuffix!3547 knownP!30 testedP!423)) (c!1390852 r!24333))))))

(declare-fun b!7531249 () Bool)

(assert (=> b!7531249 (= e!4488460 (matchR!9463 (derivativeStep!5663 r!24333 (head!15459 (getSuffix!3547 knownP!30 testedP!423))) (tail!15019 (getSuffix!3547 knownP!30 testedP!423))))))

(declare-fun b!7531250 () Bool)

(declare-fun res!3018375 () Bool)

(assert (=> b!7531250 (=> res!3018375 e!4488462)))

(assert (=> b!7531250 (= res!3018375 e!4488463)))

(declare-fun res!3018373 () Bool)

(assert (=> b!7531250 (=> (not res!3018373) (not e!4488463))))

(assert (=> b!7531250 (= res!3018373 lt!2640759)))

(declare-fun b!7531251 () Bool)

(assert (=> b!7531251 (= e!4488462 e!4488458)))

(declare-fun res!3018371 () Bool)

(assert (=> b!7531251 (=> (not res!3018371) (not e!4488458))))

(assert (=> b!7531251 (= res!3018371 (not lt!2640759))))

(declare-fun b!7531252 () Bool)

(assert (=> b!7531252 (= e!4488460 (nullable!8657 r!24333))))

(declare-fun bm!690971 () Bool)

(assert (=> bm!690971 (= call!690976 (isEmpty!41349 (getSuffix!3547 knownP!30 testedP!423)))))

(declare-fun b!7531253 () Bool)

(assert (=> b!7531253 (= e!4488459 (= lt!2640759 call!690976))))

(declare-fun b!7531254 () Bool)

(assert (=> b!7531254 (= e!4488457 (not lt!2640759))))

(declare-fun b!7531255 () Bool)

(assert (=> b!7531255 (= e!4488459 e!4488457)))

(declare-fun c!1390949 () Bool)

(assert (=> b!7531255 (= c!1390949 ((_ is EmptyLang!19861) r!24333))))

(assert (= (and d!2309830 c!1390951) b!7531252))

(assert (= (and d!2309830 (not c!1390951)) b!7531249))

(assert (= (and d!2309830 c!1390950) b!7531253))

(assert (= (and d!2309830 (not c!1390950)) b!7531255))

(assert (= (and b!7531255 c!1390949) b!7531254))

(assert (= (and b!7531255 (not c!1390949)) b!7531247))

(assert (= (and b!7531247 (not res!3018372)) b!7531250))

(assert (= (and b!7531250 res!3018373) b!7531242))

(assert (= (and b!7531242 res!3018374) b!7531246))

(assert (= (and b!7531246 res!3018370) b!7531245))

(assert (= (and b!7531250 (not res!3018375)) b!7531251))

(assert (= (and b!7531251 res!3018371) b!7531243))

(assert (= (and b!7531243 (not res!3018368)) b!7531244))

(assert (= (and b!7531244 (not res!3018369)) b!7531248))

(assert (= (or b!7531253 b!7531242 b!7531243) bm!690971))

(assert (=> b!7531244 m!8104104))

(declare-fun m!8104364 () Bool)

(assert (=> b!7531244 m!8104364))

(assert (=> b!7531244 m!8104364))

(declare-fun m!8104366 () Bool)

(assert (=> b!7531244 m!8104366))

(assert (=> b!7531246 m!8104104))

(assert (=> b!7531246 m!8104364))

(assert (=> b!7531246 m!8104364))

(assert (=> b!7531246 m!8104366))

(assert (=> b!7531245 m!8104104))

(declare-fun m!8104368 () Bool)

(assert (=> b!7531245 m!8104368))

(assert (=> b!7531252 m!8104304))

(assert (=> b!7531248 m!8104104))

(assert (=> b!7531248 m!8104368))

(assert (=> d!2309830 m!8104104))

(declare-fun m!8104370 () Bool)

(assert (=> d!2309830 m!8104370))

(assert (=> d!2309830 m!8104098))

(assert (=> b!7531249 m!8104104))

(assert (=> b!7531249 m!8104368))

(assert (=> b!7531249 m!8104368))

(declare-fun m!8104372 () Bool)

(assert (=> b!7531249 m!8104372))

(assert (=> b!7531249 m!8104104))

(assert (=> b!7531249 m!8104364))

(assert (=> b!7531249 m!8104372))

(assert (=> b!7531249 m!8104364))

(declare-fun m!8104374 () Bool)

(assert (=> b!7531249 m!8104374))

(assert (=> bm!690971 m!8104104))

(assert (=> bm!690971 m!8104370))

(assert (=> b!7530855 d!2309830))

(declare-fun d!2309832 () Bool)

(declare-fun lt!2640760 () List!72744)

(assert (=> d!2309832 (= (++!17382 testedP!423 lt!2640760) knownP!30)))

(declare-fun e!4488464 () List!72744)

(assert (=> d!2309832 (= lt!2640760 e!4488464)))

(declare-fun c!1390952 () Bool)

(assert (=> d!2309832 (= c!1390952 ((_ is Cons!72620) testedP!423))))

(assert (=> d!2309832 (>= (size!42357 knownP!30) (size!42357 testedP!423))))

(assert (=> d!2309832 (= (getSuffix!3547 knownP!30 testedP!423) lt!2640760)))

(declare-fun b!7531256 () Bool)

(assert (=> b!7531256 (= e!4488464 (getSuffix!3547 (tail!15019 knownP!30) (t!387451 testedP!423)))))

(declare-fun b!7531257 () Bool)

(assert (=> b!7531257 (= e!4488464 knownP!30)))

(assert (= (and d!2309832 c!1390952) b!7531256))

(assert (= (and d!2309832 (not c!1390952)) b!7531257))

(declare-fun m!8104376 () Bool)

(assert (=> d!2309832 m!8104376))

(assert (=> d!2309832 m!8104102))

(assert (=> d!2309832 m!8104100))

(declare-fun m!8104378 () Bool)

(assert (=> b!7531256 m!8104378))

(assert (=> b!7531256 m!8104378))

(declare-fun m!8104380 () Bool)

(assert (=> b!7531256 m!8104380))

(assert (=> b!7530855 d!2309832))

(declare-fun b!7531269 () Bool)

(declare-fun e!4488471 () Bool)

(assert (=> b!7531269 (= e!4488471 (>= (size!42357 knownP!30) (size!42357 testedP!423)))))

(declare-fun b!7531268 () Bool)

(declare-fun e!4488472 () Bool)

(assert (=> b!7531268 (= e!4488472 (isPrefix!6067 (tail!15019 testedP!423) (tail!15019 knownP!30)))))

(declare-fun b!7531267 () Bool)

(declare-fun res!3018387 () Bool)

(assert (=> b!7531267 (=> (not res!3018387) (not e!4488472))))

(assert (=> b!7531267 (= res!3018387 (= (head!15459 testedP!423) (head!15459 knownP!30)))))

(declare-fun b!7531266 () Bool)

(declare-fun e!4488473 () Bool)

(assert (=> b!7531266 (= e!4488473 e!4488472)))

(declare-fun res!3018386 () Bool)

(assert (=> b!7531266 (=> (not res!3018386) (not e!4488472))))

(assert (=> b!7531266 (= res!3018386 (not ((_ is Nil!72620) knownP!30)))))

(declare-fun d!2309834 () Bool)

(assert (=> d!2309834 e!4488471))

(declare-fun res!3018384 () Bool)

(assert (=> d!2309834 (=> res!3018384 e!4488471)))

(declare-fun lt!2640763 () Bool)

(assert (=> d!2309834 (= res!3018384 (not lt!2640763))))

(assert (=> d!2309834 (= lt!2640763 e!4488473)))

(declare-fun res!3018385 () Bool)

(assert (=> d!2309834 (=> res!3018385 e!4488473)))

(assert (=> d!2309834 (= res!3018385 ((_ is Nil!72620) testedP!423))))

(assert (=> d!2309834 (= (isPrefix!6067 testedP!423 knownP!30) lt!2640763)))

(assert (= (and d!2309834 (not res!3018385)) b!7531266))

(assert (= (and b!7531266 res!3018386) b!7531267))

(assert (= (and b!7531267 res!3018387) b!7531268))

(assert (= (and d!2309834 (not res!3018384)) b!7531269))

(assert (=> b!7531269 m!8104102))

(assert (=> b!7531269 m!8104100))

(declare-fun m!8104382 () Bool)

(assert (=> b!7531268 m!8104382))

(assert (=> b!7531268 m!8104378))

(assert (=> b!7531268 m!8104382))

(assert (=> b!7531268 m!8104378))

(declare-fun m!8104384 () Bool)

(assert (=> b!7531268 m!8104384))

(declare-fun m!8104386 () Bool)

(assert (=> b!7531267 m!8104386))

(declare-fun m!8104388 () Bool)

(assert (=> b!7531267 m!8104388))

(assert (=> b!7530855 d!2309834))

(declare-fun d!2309836 () Bool)

(assert (=> d!2309836 (isPrefix!6067 testedP!423 knownP!30)))

(declare-fun lt!2640766 () Unit!166642)

(declare-fun choose!58274 (List!72744 List!72744 List!72744) Unit!166642)

(assert (=> d!2309836 (= lt!2640766 (choose!58274 knownP!30 testedP!423 input!7874))))

(assert (=> d!2309836 (isPrefix!6067 knownP!30 input!7874)))

(assert (=> d!2309836 (= (lemmaPrefixFromSameListAndStrictlySmallerThenPrefixFromEachOther!817 knownP!30 testedP!423 input!7874) lt!2640766)))

(declare-fun bs!1939831 () Bool)

(assert (= bs!1939831 d!2309836))

(assert (=> bs!1939831 m!8104108))

(declare-fun m!8104390 () Bool)

(assert (=> bs!1939831 m!8104390))

(assert (=> bs!1939831 m!8104090))

(assert (=> b!7530855 d!2309836))

(declare-fun b!7531273 () Bool)

(declare-fun e!4488474 () Bool)

(assert (=> b!7531273 (= e!4488474 (>= (size!42357 input!7874) (size!42357 testedP!423)))))

(declare-fun b!7531272 () Bool)

(declare-fun e!4488475 () Bool)

(assert (=> b!7531272 (= e!4488475 (isPrefix!6067 (tail!15019 testedP!423) (tail!15019 input!7874)))))

(declare-fun b!7531271 () Bool)

(declare-fun res!3018391 () Bool)

(assert (=> b!7531271 (=> (not res!3018391) (not e!4488475))))

(assert (=> b!7531271 (= res!3018391 (= (head!15459 testedP!423) (head!15459 input!7874)))))

(declare-fun b!7531270 () Bool)

(declare-fun e!4488476 () Bool)

(assert (=> b!7531270 (= e!4488476 e!4488475)))

(declare-fun res!3018390 () Bool)

(assert (=> b!7531270 (=> (not res!3018390) (not e!4488475))))

(assert (=> b!7531270 (= res!3018390 (not ((_ is Nil!72620) input!7874)))))

(declare-fun d!2309838 () Bool)

(assert (=> d!2309838 e!4488474))

(declare-fun res!3018388 () Bool)

(assert (=> d!2309838 (=> res!3018388 e!4488474)))

(declare-fun lt!2640767 () Bool)

(assert (=> d!2309838 (= res!3018388 (not lt!2640767))))

(assert (=> d!2309838 (= lt!2640767 e!4488476)))

(declare-fun res!3018389 () Bool)

(assert (=> d!2309838 (=> res!3018389 e!4488476)))

(assert (=> d!2309838 (= res!3018389 ((_ is Nil!72620) testedP!423))))

(assert (=> d!2309838 (= (isPrefix!6067 testedP!423 input!7874) lt!2640767)))

(assert (= (and d!2309838 (not res!3018389)) b!7531270))

(assert (= (and b!7531270 res!3018390) b!7531271))

(assert (= (and b!7531271 res!3018391) b!7531272))

(assert (= (and d!2309838 (not res!3018388)) b!7531273))

(assert (=> b!7531273 m!8104114))

(assert (=> b!7531273 m!8104100))

(assert (=> b!7531272 m!8104382))

(assert (=> b!7531272 m!8104360))

(assert (=> b!7531272 m!8104382))

(assert (=> b!7531272 m!8104360))

(declare-fun m!8104392 () Bool)

(assert (=> b!7531272 m!8104392))

(assert (=> b!7531271 m!8104386))

(declare-fun m!8104394 () Bool)

(assert (=> b!7531271 m!8104394))

(assert (=> b!7530856 d!2309838))

(declare-fun d!2309840 () Bool)

(declare-fun lt!2640770 () Regex!19861)

(assert (=> d!2309840 (validRegex!10289 lt!2640770)))

(declare-fun e!4488479 () Regex!19861)

(assert (=> d!2309840 (= lt!2640770 e!4488479)))

(declare-fun c!1390955 () Bool)

(assert (=> d!2309840 (= c!1390955 ((_ is Cons!72620) testedP!423))))

(assert (=> d!2309840 (validRegex!10289 baseR!101)))

(assert (=> d!2309840 (= (derivative!393 baseR!101 testedP!423) lt!2640770)))

(declare-fun b!7531278 () Bool)

(assert (=> b!7531278 (= e!4488479 (derivative!393 (derivativeStep!5663 baseR!101 (h!79068 testedP!423)) (t!387451 testedP!423)))))

(declare-fun b!7531279 () Bool)

(assert (=> b!7531279 (= e!4488479 baseR!101)))

(assert (= (and d!2309840 c!1390955) b!7531278))

(assert (= (and d!2309840 (not c!1390955)) b!7531279))

(declare-fun m!8104396 () Bool)

(assert (=> d!2309840 m!8104396))

(assert (=> d!2309840 m!8104094))

(declare-fun m!8104398 () Bool)

(assert (=> b!7531278 m!8104398))

(assert (=> b!7531278 m!8104398))

(declare-fun m!8104400 () Bool)

(assert (=> b!7531278 m!8104400))

(assert (=> b!7530851 d!2309840))

(declare-fun b!7531280 () Bool)

(declare-fun res!3018393 () Bool)

(declare-fun e!4488480 () Bool)

(assert (=> b!7531280 (=> res!3018393 e!4488480)))

(assert (=> b!7531280 (= res!3018393 (not ((_ is Concat!28706) r!24333)))))

(declare-fun e!4488483 () Bool)

(assert (=> b!7531280 (= e!4488483 e!4488480)))

(declare-fun b!7531281 () Bool)

(declare-fun e!4488482 () Bool)

(assert (=> b!7531281 (= e!4488480 e!4488482)))

(declare-fun res!3018396 () Bool)

(assert (=> b!7531281 (=> (not res!3018396) (not e!4488482))))

(declare-fun call!690978 () Bool)

(assert (=> b!7531281 (= res!3018396 call!690978)))

(declare-fun b!7531282 () Bool)

(declare-fun e!4488486 () Bool)

(declare-fun call!690979 () Bool)

(assert (=> b!7531282 (= e!4488486 call!690979)))

(declare-fun bm!690972 () Bool)

(declare-fun call!690977 () Bool)

(assert (=> bm!690972 (= call!690977 call!690979)))

(declare-fun b!7531283 () Bool)

(declare-fun e!4488481 () Bool)

(assert (=> b!7531283 (= e!4488481 call!690977)))

(declare-fun bm!690973 () Bool)

(declare-fun c!1390956 () Bool)

(assert (=> bm!690973 (= call!690978 (validRegex!10289 (ite c!1390956 (regOne!40235 r!24333) (regOne!40234 r!24333))))))

(declare-fun bm!690974 () Bool)

(declare-fun c!1390957 () Bool)

(assert (=> bm!690974 (= call!690979 (validRegex!10289 (ite c!1390957 (reg!20190 r!24333) (ite c!1390956 (regTwo!40235 r!24333) (regTwo!40234 r!24333)))))))

(declare-fun b!7531284 () Bool)

(declare-fun e!4488484 () Bool)

(assert (=> b!7531284 (= e!4488484 e!4488483)))

(assert (=> b!7531284 (= c!1390956 ((_ is Union!19861) r!24333))))

(declare-fun b!7531285 () Bool)

(assert (=> b!7531285 (= e!4488482 call!690977)))

(declare-fun b!7531286 () Bool)

(declare-fun e!4488485 () Bool)

(assert (=> b!7531286 (= e!4488485 e!4488484)))

(assert (=> b!7531286 (= c!1390957 ((_ is Star!19861) r!24333))))

(declare-fun b!7531287 () Bool)

(assert (=> b!7531287 (= e!4488484 e!4488486)))

(declare-fun res!3018395 () Bool)

(assert (=> b!7531287 (= res!3018395 (not (nullable!8657 (reg!20190 r!24333))))))

(assert (=> b!7531287 (=> (not res!3018395) (not e!4488486))))

(declare-fun d!2309842 () Bool)

(declare-fun res!3018394 () Bool)

(assert (=> d!2309842 (=> res!3018394 e!4488485)))

(assert (=> d!2309842 (= res!3018394 ((_ is ElementMatch!19861) r!24333))))

(assert (=> d!2309842 (= (validRegex!10289 r!24333) e!4488485)))

(declare-fun b!7531288 () Bool)

(declare-fun res!3018392 () Bool)

(assert (=> b!7531288 (=> (not res!3018392) (not e!4488481))))

(assert (=> b!7531288 (= res!3018392 call!690978)))

(assert (=> b!7531288 (= e!4488483 e!4488481)))

(assert (= (and d!2309842 (not res!3018394)) b!7531286))

(assert (= (and b!7531286 c!1390957) b!7531287))

(assert (= (and b!7531286 (not c!1390957)) b!7531284))

(assert (= (and b!7531287 res!3018395) b!7531282))

(assert (= (and b!7531284 c!1390956) b!7531288))

(assert (= (and b!7531284 (not c!1390956)) b!7531280))

(assert (= (and b!7531288 res!3018392) b!7531283))

(assert (= (and b!7531280 (not res!3018393)) b!7531281))

(assert (= (and b!7531281 res!3018396) b!7531285))

(assert (= (or b!7531288 b!7531281) bm!690973))

(assert (= (or b!7531283 b!7531285) bm!690972))

(assert (= (or b!7531282 bm!690972) bm!690974))

(declare-fun m!8104402 () Bool)

(assert (=> bm!690973 m!8104402))

(declare-fun m!8104404 () Bool)

(assert (=> bm!690974 m!8104404))

(declare-fun m!8104406 () Bool)

(assert (=> b!7531287 m!8104406))

(assert (=> b!7530857 d!2309842))

(declare-fun d!2309844 () Bool)

(declare-fun lostCauseFct!413 (Regex!19861) Bool)

(assert (=> d!2309844 (= (lostCause!1653 r!24333) (lostCauseFct!413 r!24333))))

(declare-fun bs!1939832 () Bool)

(assert (= bs!1939832 d!2309844))

(declare-fun m!8104408 () Bool)

(assert (=> bs!1939832 m!8104408))

(assert (=> b!7530858 d!2309844))

(declare-fun b!7531289 () Bool)

(declare-fun res!3018403 () Bool)

(declare-fun e!4488493 () Bool)

(assert (=> b!7531289 (=> (not res!3018403) (not e!4488493))))

(declare-fun call!690980 () Bool)

(assert (=> b!7531289 (= res!3018403 (not call!690980))))

(declare-fun b!7531290 () Bool)

(declare-fun e!4488488 () Bool)

(declare-fun e!4488491 () Bool)

(assert (=> b!7531290 (= e!4488488 e!4488491)))

(declare-fun res!3018397 () Bool)

(assert (=> b!7531290 (=> res!3018397 e!4488491)))

(assert (=> b!7531290 (= res!3018397 call!690980)))

(declare-fun b!7531291 () Bool)

(declare-fun res!3018398 () Bool)

(assert (=> b!7531291 (=> res!3018398 e!4488491)))

(assert (=> b!7531291 (= res!3018398 (not (isEmpty!41349 (tail!15019 knownP!30))))))

(declare-fun b!7531292 () Bool)

(assert (=> b!7531292 (= e!4488493 (= (head!15459 knownP!30) (c!1390852 baseR!101)))))

(declare-fun b!7531293 () Bool)

(declare-fun res!3018399 () Bool)

(assert (=> b!7531293 (=> (not res!3018399) (not e!4488493))))

(assert (=> b!7531293 (= res!3018399 (isEmpty!41349 (tail!15019 knownP!30)))))

(declare-fun d!2309846 () Bool)

(declare-fun e!4488489 () Bool)

(assert (=> d!2309846 e!4488489))

(declare-fun c!1390959 () Bool)

(assert (=> d!2309846 (= c!1390959 ((_ is EmptyExpr!19861) baseR!101))))

(declare-fun lt!2640771 () Bool)

(declare-fun e!4488490 () Bool)

(assert (=> d!2309846 (= lt!2640771 e!4488490)))

(declare-fun c!1390960 () Bool)

(assert (=> d!2309846 (= c!1390960 (isEmpty!41349 knownP!30))))

(assert (=> d!2309846 (validRegex!10289 baseR!101)))

(assert (=> d!2309846 (= (matchR!9463 baseR!101 knownP!30) lt!2640771)))

(declare-fun b!7531294 () Bool)

(declare-fun res!3018401 () Bool)

(declare-fun e!4488492 () Bool)

(assert (=> b!7531294 (=> res!3018401 e!4488492)))

(assert (=> b!7531294 (= res!3018401 (not ((_ is ElementMatch!19861) baseR!101)))))

(declare-fun e!4488487 () Bool)

(assert (=> b!7531294 (= e!4488487 e!4488492)))

(declare-fun b!7531295 () Bool)

(assert (=> b!7531295 (= e!4488491 (not (= (head!15459 knownP!30) (c!1390852 baseR!101))))))

(declare-fun b!7531296 () Bool)

(assert (=> b!7531296 (= e!4488490 (matchR!9463 (derivativeStep!5663 baseR!101 (head!15459 knownP!30)) (tail!15019 knownP!30)))))

(declare-fun b!7531297 () Bool)

(declare-fun res!3018404 () Bool)

(assert (=> b!7531297 (=> res!3018404 e!4488492)))

(assert (=> b!7531297 (= res!3018404 e!4488493)))

(declare-fun res!3018402 () Bool)

(assert (=> b!7531297 (=> (not res!3018402) (not e!4488493))))

(assert (=> b!7531297 (= res!3018402 lt!2640771)))

(declare-fun b!7531298 () Bool)

(assert (=> b!7531298 (= e!4488492 e!4488488)))

(declare-fun res!3018400 () Bool)

(assert (=> b!7531298 (=> (not res!3018400) (not e!4488488))))

(assert (=> b!7531298 (= res!3018400 (not lt!2640771))))

(declare-fun b!7531299 () Bool)

(assert (=> b!7531299 (= e!4488490 (nullable!8657 baseR!101))))

(declare-fun bm!690975 () Bool)

(assert (=> bm!690975 (= call!690980 (isEmpty!41349 knownP!30))))

(declare-fun b!7531300 () Bool)

(assert (=> b!7531300 (= e!4488489 (= lt!2640771 call!690980))))

(declare-fun b!7531301 () Bool)

(assert (=> b!7531301 (= e!4488487 (not lt!2640771))))

(declare-fun b!7531302 () Bool)

(assert (=> b!7531302 (= e!4488489 e!4488487)))

(declare-fun c!1390958 () Bool)

(assert (=> b!7531302 (= c!1390958 ((_ is EmptyLang!19861) baseR!101))))

(assert (= (and d!2309846 c!1390960) b!7531299))

(assert (= (and d!2309846 (not c!1390960)) b!7531296))

(assert (= (and d!2309846 c!1390959) b!7531300))

(assert (= (and d!2309846 (not c!1390959)) b!7531302))

(assert (= (and b!7531302 c!1390958) b!7531301))

(assert (= (and b!7531302 (not c!1390958)) b!7531294))

(assert (= (and b!7531294 (not res!3018401)) b!7531297))

(assert (= (and b!7531297 res!3018402) b!7531289))

(assert (= (and b!7531289 res!3018403) b!7531293))

(assert (= (and b!7531293 res!3018399) b!7531292))

(assert (= (and b!7531297 (not res!3018404)) b!7531298))

(assert (= (and b!7531298 res!3018400) b!7531290))

(assert (= (and b!7531290 (not res!3018397)) b!7531291))

(assert (= (and b!7531291 (not res!3018398)) b!7531295))

(assert (= (or b!7531300 b!7531289 b!7531290) bm!690975))

(assert (=> b!7531291 m!8104378))

(assert (=> b!7531291 m!8104378))

(declare-fun m!8104410 () Bool)

(assert (=> b!7531291 m!8104410))

(assert (=> b!7531293 m!8104378))

(assert (=> b!7531293 m!8104378))

(assert (=> b!7531293 m!8104410))

(assert (=> b!7531292 m!8104388))

(declare-fun m!8104412 () Bool)

(assert (=> b!7531299 m!8104412))

(assert (=> b!7531295 m!8104388))

(declare-fun m!8104414 () Bool)

(assert (=> d!2309846 m!8104414))

(assert (=> d!2309846 m!8104094))

(assert (=> b!7531296 m!8104388))

(assert (=> b!7531296 m!8104388))

(declare-fun m!8104416 () Bool)

(assert (=> b!7531296 m!8104416))

(assert (=> b!7531296 m!8104378))

(assert (=> b!7531296 m!8104416))

(assert (=> b!7531296 m!8104378))

(declare-fun m!8104418 () Bool)

(assert (=> b!7531296 m!8104418))

(assert (=> bm!690975 m!8104414))

(assert (=> b!7530863 d!2309846))

(declare-fun b!7531306 () Bool)

(declare-fun e!4488494 () Bool)

(assert (=> b!7531306 (= e!4488494 (>= (size!42357 input!7874) (size!42357 knownP!30)))))

(declare-fun b!7531305 () Bool)

(declare-fun e!4488495 () Bool)

(assert (=> b!7531305 (= e!4488495 (isPrefix!6067 (tail!15019 knownP!30) (tail!15019 input!7874)))))

(declare-fun b!7531304 () Bool)

(declare-fun res!3018408 () Bool)

(assert (=> b!7531304 (=> (not res!3018408) (not e!4488495))))

(assert (=> b!7531304 (= res!3018408 (= (head!15459 knownP!30) (head!15459 input!7874)))))

(declare-fun b!7531303 () Bool)

(declare-fun e!4488496 () Bool)

(assert (=> b!7531303 (= e!4488496 e!4488495)))

(declare-fun res!3018407 () Bool)

(assert (=> b!7531303 (=> (not res!3018407) (not e!4488495))))

(assert (=> b!7531303 (= res!3018407 (not ((_ is Nil!72620) input!7874)))))

(declare-fun d!2309848 () Bool)

(assert (=> d!2309848 e!4488494))

(declare-fun res!3018405 () Bool)

(assert (=> d!2309848 (=> res!3018405 e!4488494)))

(declare-fun lt!2640772 () Bool)

(assert (=> d!2309848 (= res!3018405 (not lt!2640772))))

(assert (=> d!2309848 (= lt!2640772 e!4488496)))

(declare-fun res!3018406 () Bool)

(assert (=> d!2309848 (=> res!3018406 e!4488496)))

(assert (=> d!2309848 (= res!3018406 ((_ is Nil!72620) knownP!30))))

(assert (=> d!2309848 (= (isPrefix!6067 knownP!30 input!7874) lt!2640772)))

(assert (= (and d!2309848 (not res!3018406)) b!7531303))

(assert (= (and b!7531303 res!3018407) b!7531304))

(assert (= (and b!7531304 res!3018408) b!7531305))

(assert (= (and d!2309848 (not res!3018405)) b!7531306))

(assert (=> b!7531306 m!8104114))

(assert (=> b!7531306 m!8104102))

(assert (=> b!7531305 m!8104378))

(assert (=> b!7531305 m!8104360))

(assert (=> b!7531305 m!8104378))

(assert (=> b!7531305 m!8104360))

(declare-fun m!8104420 () Bool)

(assert (=> b!7531305 m!8104420))

(assert (=> b!7531304 m!8104388))

(assert (=> b!7531304 m!8104394))

(assert (=> b!7530854 d!2309848))

(declare-fun b!7531311 () Bool)

(declare-fun e!4488499 () Bool)

(declare-fun tp!2189349 () Bool)

(assert (=> b!7531311 (= e!4488499 (and tp_is_empty!50077 tp!2189349))))

(assert (=> b!7530849 (= tp!2189270 e!4488499)))

(assert (= (and b!7530849 ((_ is Cons!72620) (t!387451 testedP!423))) b!7531311))

(declare-fun b!7531312 () Bool)

(declare-fun e!4488500 () Bool)

(declare-fun tp!2189350 () Bool)

(assert (=> b!7531312 (= e!4488500 (and tp_is_empty!50077 tp!2189350))))

(assert (=> b!7530861 (= tp!2189272 e!4488500)))

(assert (= (and b!7530861 ((_ is Cons!72620) (t!387451 knownP!30))) b!7531312))

(declare-fun b!7531324 () Bool)

(declare-fun e!4488503 () Bool)

(declare-fun tp!2189365 () Bool)

(declare-fun tp!2189361 () Bool)

(assert (=> b!7531324 (= e!4488503 (and tp!2189365 tp!2189361))))

(assert (=> b!7530845 (= tp!2189276 e!4488503)))

(declare-fun b!7531323 () Bool)

(assert (=> b!7531323 (= e!4488503 tp_is_empty!50077)))

(declare-fun b!7531326 () Bool)

(declare-fun tp!2189363 () Bool)

(declare-fun tp!2189362 () Bool)

(assert (=> b!7531326 (= e!4488503 (and tp!2189363 tp!2189362))))

(declare-fun b!7531325 () Bool)

(declare-fun tp!2189364 () Bool)

(assert (=> b!7531325 (= e!4488503 tp!2189364)))

(assert (= (and b!7530845 ((_ is ElementMatch!19861) (regOne!40234 baseR!101))) b!7531323))

(assert (= (and b!7530845 ((_ is Concat!28706) (regOne!40234 baseR!101))) b!7531324))

(assert (= (and b!7530845 ((_ is Star!19861) (regOne!40234 baseR!101))) b!7531325))

(assert (= (and b!7530845 ((_ is Union!19861) (regOne!40234 baseR!101))) b!7531326))

(declare-fun b!7531328 () Bool)

(declare-fun e!4488504 () Bool)

(declare-fun tp!2189370 () Bool)

(declare-fun tp!2189366 () Bool)

(assert (=> b!7531328 (= e!4488504 (and tp!2189370 tp!2189366))))

(assert (=> b!7530845 (= tp!2189277 e!4488504)))

(declare-fun b!7531327 () Bool)

(assert (=> b!7531327 (= e!4488504 tp_is_empty!50077)))

(declare-fun b!7531330 () Bool)

(declare-fun tp!2189368 () Bool)

(declare-fun tp!2189367 () Bool)

(assert (=> b!7531330 (= e!4488504 (and tp!2189368 tp!2189367))))

(declare-fun b!7531329 () Bool)

(declare-fun tp!2189369 () Bool)

(assert (=> b!7531329 (= e!4488504 tp!2189369)))

(assert (= (and b!7530845 ((_ is ElementMatch!19861) (regTwo!40234 baseR!101))) b!7531327))

(assert (= (and b!7530845 ((_ is Concat!28706) (regTwo!40234 baseR!101))) b!7531328))

(assert (= (and b!7530845 ((_ is Star!19861) (regTwo!40234 baseR!101))) b!7531329))

(assert (= (and b!7530845 ((_ is Union!19861) (regTwo!40234 baseR!101))) b!7531330))

(declare-fun b!7531332 () Bool)

(declare-fun e!4488505 () Bool)

(declare-fun tp!2189375 () Bool)

(declare-fun tp!2189371 () Bool)

(assert (=> b!7531332 (= e!4488505 (and tp!2189375 tp!2189371))))

(assert (=> b!7530862 (= tp!2189274 e!4488505)))

(declare-fun b!7531331 () Bool)

(assert (=> b!7531331 (= e!4488505 tp_is_empty!50077)))

(declare-fun b!7531334 () Bool)

(declare-fun tp!2189373 () Bool)

(declare-fun tp!2189372 () Bool)

(assert (=> b!7531334 (= e!4488505 (and tp!2189373 tp!2189372))))

(declare-fun b!7531333 () Bool)

(declare-fun tp!2189374 () Bool)

(assert (=> b!7531333 (= e!4488505 tp!2189374)))

(assert (= (and b!7530862 ((_ is ElementMatch!19861) (regOne!40234 r!24333))) b!7531331))

(assert (= (and b!7530862 ((_ is Concat!28706) (regOne!40234 r!24333))) b!7531332))

(assert (= (and b!7530862 ((_ is Star!19861) (regOne!40234 r!24333))) b!7531333))

(assert (= (and b!7530862 ((_ is Union!19861) (regOne!40234 r!24333))) b!7531334))

(declare-fun b!7531336 () Bool)

(declare-fun e!4488506 () Bool)

(declare-fun tp!2189380 () Bool)

(declare-fun tp!2189376 () Bool)

(assert (=> b!7531336 (= e!4488506 (and tp!2189380 tp!2189376))))

(assert (=> b!7530862 (= tp!2189269 e!4488506)))

(declare-fun b!7531335 () Bool)

(assert (=> b!7531335 (= e!4488506 tp_is_empty!50077)))

(declare-fun b!7531338 () Bool)

(declare-fun tp!2189378 () Bool)

(declare-fun tp!2189377 () Bool)

(assert (=> b!7531338 (= e!4488506 (and tp!2189378 tp!2189377))))

(declare-fun b!7531337 () Bool)

(declare-fun tp!2189379 () Bool)

(assert (=> b!7531337 (= e!4488506 tp!2189379)))

(assert (= (and b!7530862 ((_ is ElementMatch!19861) (regTwo!40234 r!24333))) b!7531335))

(assert (= (and b!7530862 ((_ is Concat!28706) (regTwo!40234 r!24333))) b!7531336))

(assert (= (and b!7530862 ((_ is Star!19861) (regTwo!40234 r!24333))) b!7531337))

(assert (= (and b!7530862 ((_ is Union!19861) (regTwo!40234 r!24333))) b!7531338))

(declare-fun b!7531340 () Bool)

(declare-fun e!4488507 () Bool)

(declare-fun tp!2189385 () Bool)

(declare-fun tp!2189381 () Bool)

(assert (=> b!7531340 (= e!4488507 (and tp!2189385 tp!2189381))))

(assert (=> b!7530852 (= tp!2189271 e!4488507)))

(declare-fun b!7531339 () Bool)

(assert (=> b!7531339 (= e!4488507 tp_is_empty!50077)))

(declare-fun b!7531342 () Bool)

(declare-fun tp!2189383 () Bool)

(declare-fun tp!2189382 () Bool)

(assert (=> b!7531342 (= e!4488507 (and tp!2189383 tp!2189382))))

(declare-fun b!7531341 () Bool)

(declare-fun tp!2189384 () Bool)

(assert (=> b!7531341 (= e!4488507 tp!2189384)))

(assert (= (and b!7530852 ((_ is ElementMatch!19861) (reg!20190 r!24333))) b!7531339))

(assert (= (and b!7530852 ((_ is Concat!28706) (reg!20190 r!24333))) b!7531340))

(assert (= (and b!7530852 ((_ is Star!19861) (reg!20190 r!24333))) b!7531341))

(assert (= (and b!7530852 ((_ is Union!19861) (reg!20190 r!24333))) b!7531342))

(declare-fun b!7531344 () Bool)

(declare-fun e!4488508 () Bool)

(declare-fun tp!2189390 () Bool)

(declare-fun tp!2189386 () Bool)

(assert (=> b!7531344 (= e!4488508 (and tp!2189390 tp!2189386))))

(assert (=> b!7530847 (= tp!2189280 e!4488508)))

(declare-fun b!7531343 () Bool)

(assert (=> b!7531343 (= e!4488508 tp_is_empty!50077)))

(declare-fun b!7531346 () Bool)

(declare-fun tp!2189388 () Bool)

(declare-fun tp!2189387 () Bool)

(assert (=> b!7531346 (= e!4488508 (and tp!2189388 tp!2189387))))

(declare-fun b!7531345 () Bool)

(declare-fun tp!2189389 () Bool)

(assert (=> b!7531345 (= e!4488508 tp!2189389)))

(assert (= (and b!7530847 ((_ is ElementMatch!19861) (regOne!40235 baseR!101))) b!7531343))

(assert (= (and b!7530847 ((_ is Concat!28706) (regOne!40235 baseR!101))) b!7531344))

(assert (= (and b!7530847 ((_ is Star!19861) (regOne!40235 baseR!101))) b!7531345))

(assert (= (and b!7530847 ((_ is Union!19861) (regOne!40235 baseR!101))) b!7531346))

(declare-fun b!7531348 () Bool)

(declare-fun e!4488509 () Bool)

(declare-fun tp!2189395 () Bool)

(declare-fun tp!2189391 () Bool)

(assert (=> b!7531348 (= e!4488509 (and tp!2189395 tp!2189391))))

(assert (=> b!7530847 (= tp!2189281 e!4488509)))

(declare-fun b!7531347 () Bool)

(assert (=> b!7531347 (= e!4488509 tp_is_empty!50077)))

(declare-fun b!7531350 () Bool)

(declare-fun tp!2189393 () Bool)

(declare-fun tp!2189392 () Bool)

(assert (=> b!7531350 (= e!4488509 (and tp!2189393 tp!2189392))))

(declare-fun b!7531349 () Bool)

(declare-fun tp!2189394 () Bool)

(assert (=> b!7531349 (= e!4488509 tp!2189394)))

(assert (= (and b!7530847 ((_ is ElementMatch!19861) (regTwo!40235 baseR!101))) b!7531347))

(assert (= (and b!7530847 ((_ is Concat!28706) (regTwo!40235 baseR!101))) b!7531348))

(assert (= (and b!7530847 ((_ is Star!19861) (regTwo!40235 baseR!101))) b!7531349))

(assert (= (and b!7530847 ((_ is Union!19861) (regTwo!40235 baseR!101))) b!7531350))

(declare-fun b!7531352 () Bool)

(declare-fun e!4488510 () Bool)

(declare-fun tp!2189400 () Bool)

(declare-fun tp!2189396 () Bool)

(assert (=> b!7531352 (= e!4488510 (and tp!2189400 tp!2189396))))

(assert (=> b!7530864 (= tp!2189279 e!4488510)))

(declare-fun b!7531351 () Bool)

(assert (=> b!7531351 (= e!4488510 tp_is_empty!50077)))

(declare-fun b!7531354 () Bool)

(declare-fun tp!2189398 () Bool)

(declare-fun tp!2189397 () Bool)

(assert (=> b!7531354 (= e!4488510 (and tp!2189398 tp!2189397))))

(declare-fun b!7531353 () Bool)

(declare-fun tp!2189399 () Bool)

(assert (=> b!7531353 (= e!4488510 tp!2189399)))

(assert (= (and b!7530864 ((_ is ElementMatch!19861) (regOne!40235 r!24333))) b!7531351))

(assert (= (and b!7530864 ((_ is Concat!28706) (regOne!40235 r!24333))) b!7531352))

(assert (= (and b!7530864 ((_ is Star!19861) (regOne!40235 r!24333))) b!7531353))

(assert (= (and b!7530864 ((_ is Union!19861) (regOne!40235 r!24333))) b!7531354))

(declare-fun b!7531356 () Bool)

(declare-fun e!4488511 () Bool)

(declare-fun tp!2189405 () Bool)

(declare-fun tp!2189401 () Bool)

(assert (=> b!7531356 (= e!4488511 (and tp!2189405 tp!2189401))))

(assert (=> b!7530864 (= tp!2189278 e!4488511)))

(declare-fun b!7531355 () Bool)

(assert (=> b!7531355 (= e!4488511 tp_is_empty!50077)))

(declare-fun b!7531358 () Bool)

(declare-fun tp!2189403 () Bool)

(declare-fun tp!2189402 () Bool)

(assert (=> b!7531358 (= e!4488511 (and tp!2189403 tp!2189402))))

(declare-fun b!7531357 () Bool)

(declare-fun tp!2189404 () Bool)

(assert (=> b!7531357 (= e!4488511 tp!2189404)))

(assert (= (and b!7530864 ((_ is ElementMatch!19861) (regTwo!40235 r!24333))) b!7531355))

(assert (= (and b!7530864 ((_ is Concat!28706) (regTwo!40235 r!24333))) b!7531356))

(assert (= (and b!7530864 ((_ is Star!19861) (regTwo!40235 r!24333))) b!7531357))

(assert (= (and b!7530864 ((_ is Union!19861) (regTwo!40235 r!24333))) b!7531358))

(declare-fun b!7531359 () Bool)

(declare-fun e!4488512 () Bool)

(declare-fun tp!2189406 () Bool)

(assert (=> b!7531359 (= e!4488512 (and tp_is_empty!50077 tp!2189406))))

(assert (=> b!7530848 (= tp!2189273 e!4488512)))

(assert (= (and b!7530848 ((_ is Cons!72620) (t!387451 input!7874))) b!7531359))

(declare-fun b!7531361 () Bool)

(declare-fun e!4488513 () Bool)

(declare-fun tp!2189411 () Bool)

(declare-fun tp!2189407 () Bool)

(assert (=> b!7531361 (= e!4488513 (and tp!2189411 tp!2189407))))

(assert (=> b!7530853 (= tp!2189275 e!4488513)))

(declare-fun b!7531360 () Bool)

(assert (=> b!7531360 (= e!4488513 tp_is_empty!50077)))

(declare-fun b!7531363 () Bool)

(declare-fun tp!2189409 () Bool)

(declare-fun tp!2189408 () Bool)

(assert (=> b!7531363 (= e!4488513 (and tp!2189409 tp!2189408))))

(declare-fun b!7531362 () Bool)

(declare-fun tp!2189410 () Bool)

(assert (=> b!7531362 (= e!4488513 tp!2189410)))

(assert (= (and b!7530853 ((_ is ElementMatch!19861) (reg!20190 baseR!101))) b!7531360))

(assert (= (and b!7530853 ((_ is Concat!28706) (reg!20190 baseR!101))) b!7531361))

(assert (= (and b!7530853 ((_ is Star!19861) (reg!20190 baseR!101))) b!7531362))

(assert (= (and b!7530853 ((_ is Union!19861) (reg!20190 baseR!101))) b!7531363))

(check-sat (not b!7530891) (not b!7531348) (not b!7530941) (not b!7530981) (not d!2309786) (not b!7531345) (not b!7531199) (not b!7531326) (not b!7531296) (not b!7531356) (not b!7531329) (not bm!690964) (not b!7531271) (not bm!690971) (not d!2309828) (not d!2309790) (not bm!690965) (not b!7531249) (not d!2309826) (not b!7531362) (not b!7531248) (not b!7530943) (not b!7531205) (not bm!690975) (not b!7531333) (not bm!690967) (not b!7531212) (not d!2309844) (not b!7531278) (not b!7531267) (not b!7531342) (not b!7531349) (not d!2309832) (not bm!690974) (not b!7531299) (not b!7531334) (not b!7531272) (not d!2309836) (not b!7531363) (not b!7531350) (not b!7531338) (not bm!690966) (not b!7531268) (not b!7531312) (not b!7531245) (not b!7531357) (not b!7531344) (not bm!690962) (not b!7531325) (not d!2309830) (not b!7531328) (not b!7531324) (not b!7531304) (not d!2309788) (not b!7531337) (not b!7531291) (not bm!690912) (not bm!690968) (not b!7531295) (not b!7531246) (not bm!690913) tp_is_empty!50077 (not b!7531353) (not b!7531252) (not b!7531361) (not d!2309846) (not b!7531292) (not b!7531256) (not b!7531305) (not b!7531346) (not bm!690961) (not bm!690973) (not b!7531332) (not b!7531269) (not b!7530982) (not d!2309840) (not b!7531287) (not b!7531207) (not b!7531330) (not b!7530938) (not b!7531244) (not b!7531273) (not b!7531358) (not bm!690963) (not b!7531352) (not b!7531311) (not b!7531359) (not b!7531336) (not b!7531293) (not b!7530889) (not b!7531340) (not b!7531203) (not b!7531354) (not b!7531341) (not b!7531306))
(check-sat)
