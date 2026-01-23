; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!351094 () Bool)

(assert start!351094)

(declare-fun b!3732470 () Bool)

(declare-fun e!2309072 () Bool)

(declare-fun e!2309071 () Bool)

(assert (=> b!3732470 (= e!2309072 (not e!2309071))))

(declare-fun res!1515067 () Bool)

(assert (=> b!3732470 (=> res!1515067 e!2309071)))

(declare-datatypes ((C!22052 0))(
  ( (C!22053 (val!13074 Int)) )
))
(declare-datatypes ((Regex!10933 0))(
  ( (ElementMatch!10933 (c!646191 C!22052)) (Concat!17204 (regOne!22378 Regex!10933) (regTwo!22378 Regex!10933)) (EmptyExpr!10933) (Star!10933 (reg!11262 Regex!10933)) (EmptyLang!10933) (Union!10933 (regOne!22379 Regex!10933) (regTwo!22379 Regex!10933)) )
))
(declare-fun r!26968 () Regex!10933)

(declare-fun validRegex!5040 (Regex!10933) Bool)

(assert (=> b!3732470 (= res!1515067 (not (validRegex!5040 (regTwo!22378 r!26968))))))

(declare-fun c!13797 () C!22052)

(declare-fun cNot!42 () C!22052)

(declare-datatypes ((List!39814 0))(
  ( (Nil!39690) (Cons!39690 (h!45110 C!22052) (t!302497 List!39814)) )
))
(declare-fun contains!8026 (List!39814 C!22052) Bool)

(declare-fun usedCharacters!1196 (Regex!10933) List!39814)

(declare-fun derivativeStep!3368 (Regex!10933 C!22052) Regex!10933)

(assert (=> b!3732470 (not (contains!8026 (usedCharacters!1196 (derivativeStep!3368 (regOne!22378 r!26968) c!13797)) cNot!42))))

(declare-datatypes ((Unit!57592 0))(
  ( (Unit!57593) )
))
(declare-fun lt!1298750 () Unit!57592)

(declare-fun lemmaDerivativeStepDoesNotAddCharToUsedCharacters!52 (Regex!10933 C!22052 C!22052) Unit!57592)

(assert (=> b!3732470 (= lt!1298750 (lemmaDerivativeStepDoesNotAddCharToUsedCharacters!52 (regOne!22378 r!26968) c!13797 cNot!42))))

(declare-fun b!3732471 () Bool)

(declare-fun e!2309070 () Bool)

(declare-fun tp_is_empty!18881 () Bool)

(assert (=> b!3732471 (= e!2309070 tp_is_empty!18881)))

(declare-fun b!3732472 () Bool)

(declare-fun res!1515065 () Bool)

(assert (=> b!3732472 (=> (not res!1515065) (not e!2309072))))

(get-info :version)

(assert (=> b!3732472 (= res!1515065 (and (not ((_ is EmptyExpr!10933) r!26968)) (not ((_ is EmptyLang!10933) r!26968)) (not ((_ is ElementMatch!10933) r!26968)) (not ((_ is Union!10933) r!26968)) (not ((_ is Star!10933) r!26968))))))

(declare-fun b!3732473 () Bool)

(declare-fun tp!1136031 () Bool)

(declare-fun tp!1136034 () Bool)

(assert (=> b!3732473 (= e!2309070 (and tp!1136031 tp!1136034))))

(declare-fun b!3732474 () Bool)

(assert (=> b!3732474 (= e!2309071 (not (contains!8026 (usedCharacters!1196 (regTwo!22378 r!26968)) cNot!42)))))

(declare-fun b!3732475 () Bool)

(declare-fun tp!1136032 () Bool)

(assert (=> b!3732475 (= e!2309070 tp!1136032)))

(declare-fun b!3732476 () Bool)

(declare-fun res!1515064 () Bool)

(assert (=> b!3732476 (=> (not res!1515064) (not e!2309072))))

(declare-fun nullable!3841 (Regex!10933) Bool)

(assert (=> b!3732476 (= res!1515064 (nullable!3841 (regOne!22378 r!26968)))))

(declare-fun b!3732478 () Bool)

(declare-fun tp!1136033 () Bool)

(declare-fun tp!1136030 () Bool)

(assert (=> b!3732478 (= e!2309070 (and tp!1136033 tp!1136030))))

(declare-fun b!3732477 () Bool)

(declare-fun res!1515066 () Bool)

(assert (=> b!3732477 (=> (not res!1515066) (not e!2309072))))

(assert (=> b!3732477 (= res!1515066 (not (contains!8026 (usedCharacters!1196 r!26968) cNot!42)))))

(declare-fun res!1515068 () Bool)

(assert (=> start!351094 (=> (not res!1515068) (not e!2309072))))

(assert (=> start!351094 (= res!1515068 (validRegex!5040 r!26968))))

(assert (=> start!351094 e!2309072))

(assert (=> start!351094 e!2309070))

(assert (=> start!351094 tp_is_empty!18881))

(assert (= (and start!351094 res!1515068) b!3732477))

(assert (= (and b!3732477 res!1515066) b!3732472))

(assert (= (and b!3732472 res!1515065) b!3732476))

(assert (= (and b!3732476 res!1515064) b!3732470))

(assert (= (and b!3732470 (not res!1515067)) b!3732474))

(assert (= (and start!351094 ((_ is ElementMatch!10933) r!26968)) b!3732471))

(assert (= (and start!351094 ((_ is Concat!17204) r!26968)) b!3732473))

(assert (= (and start!351094 ((_ is Star!10933) r!26968)) b!3732475))

(assert (= (and start!351094 ((_ is Union!10933) r!26968)) b!3732478))

(declare-fun m!4230947 () Bool)

(assert (=> b!3732477 m!4230947))

(assert (=> b!3732477 m!4230947))

(declare-fun m!4230949 () Bool)

(assert (=> b!3732477 m!4230949))

(declare-fun m!4230951 () Bool)

(assert (=> b!3732476 m!4230951))

(declare-fun m!4230953 () Bool)

(assert (=> b!3732474 m!4230953))

(assert (=> b!3732474 m!4230953))

(declare-fun m!4230955 () Bool)

(assert (=> b!3732474 m!4230955))

(declare-fun m!4230957 () Bool)

(assert (=> start!351094 m!4230957))

(declare-fun m!4230959 () Bool)

(assert (=> b!3732470 m!4230959))

(declare-fun m!4230961 () Bool)

(assert (=> b!3732470 m!4230961))

(declare-fun m!4230963 () Bool)

(assert (=> b!3732470 m!4230963))

(declare-fun m!4230965 () Bool)

(assert (=> b!3732470 m!4230965))

(declare-fun m!4230967 () Bool)

(assert (=> b!3732470 m!4230967))

(assert (=> b!3732470 m!4230965))

(assert (=> b!3732470 m!4230961))

(check-sat (not b!3732475) (not b!3732470) (not start!351094) (not b!3732476) (not b!3732478) (not b!3732473) (not b!3732477) (not b!3732474) tp_is_empty!18881)
(check-sat)
(get-model)

(declare-fun call!272833 () Regex!10933)

(declare-fun bm!272825 () Bool)

(declare-fun c!646208 () Bool)

(declare-fun c!646212 () Bool)

(declare-fun c!646209 () Bool)

(assert (=> bm!272825 (= call!272833 (derivativeStep!3368 (ite c!646208 (regTwo!22379 (regOne!22378 r!26968)) (ite c!646212 (reg!11262 (regOne!22378 r!26968)) (ite c!646209 (regTwo!22378 (regOne!22378 r!26968)) (regOne!22378 (regOne!22378 r!26968))))) c!13797))))

(declare-fun b!3732535 () Bool)

(declare-fun e!2309111 () Regex!10933)

(assert (=> b!3732535 (= e!2309111 (ite (= c!13797 (c!646191 (regOne!22378 r!26968))) EmptyExpr!10933 EmptyLang!10933))))

(declare-fun b!3732536 () Bool)

(declare-fun e!2309113 () Regex!10933)

(declare-fun call!272830 () Regex!10933)

(assert (=> b!3732536 (= e!2309113 (Concat!17204 call!272830 (regOne!22378 r!26968)))))

(declare-fun b!3732537 () Bool)

(declare-fun e!2309114 () Regex!10933)

(assert (=> b!3732537 (= e!2309114 e!2309113)))

(assert (=> b!3732537 (= c!646212 ((_ is Star!10933) (regOne!22378 r!26968)))))

(declare-fun b!3732538 () Bool)

(assert (=> b!3732538 (= c!646208 ((_ is Union!10933) (regOne!22378 r!26968)))))

(assert (=> b!3732538 (= e!2309111 e!2309114)))

(declare-fun b!3732539 () Bool)

(declare-fun e!2309112 () Regex!10933)

(declare-fun call!272832 () Regex!10933)

(assert (=> b!3732539 (= e!2309112 (Union!10933 (Concat!17204 call!272832 (regTwo!22378 (regOne!22378 r!26968))) EmptyLang!10933))))

(declare-fun bm!272826 () Bool)

(declare-fun call!272831 () Regex!10933)

(assert (=> bm!272826 (= call!272831 (derivativeStep!3368 (ite c!646208 (regOne!22379 (regOne!22378 r!26968)) (regOne!22378 (regOne!22378 r!26968))) c!13797))))

(declare-fun bm!272827 () Bool)

(assert (=> bm!272827 (= call!272830 call!272833)))

(declare-fun b!3732542 () Bool)

(declare-fun e!2309110 () Regex!10933)

(assert (=> b!3732542 (= e!2309110 EmptyLang!10933)))

(declare-fun d!1090834 () Bool)

(declare-fun lt!1298756 () Regex!10933)

(assert (=> d!1090834 (validRegex!5040 lt!1298756)))

(assert (=> d!1090834 (= lt!1298756 e!2309110)))

(declare-fun c!646210 () Bool)

(assert (=> d!1090834 (= c!646210 (or ((_ is EmptyExpr!10933) (regOne!22378 r!26968)) ((_ is EmptyLang!10933) (regOne!22378 r!26968))))))

(assert (=> d!1090834 (validRegex!5040 (regOne!22378 r!26968))))

(assert (=> d!1090834 (= (derivativeStep!3368 (regOne!22378 r!26968) c!13797) lt!1298756)))

(declare-fun b!3732534 () Bool)

(assert (=> b!3732534 (= e!2309110 e!2309111)))

(declare-fun c!646211 () Bool)

(assert (=> b!3732534 (= c!646211 ((_ is ElementMatch!10933) (regOne!22378 r!26968)))))

(declare-fun b!3732543 () Bool)

(assert (=> b!3732543 (= e!2309112 (Union!10933 (Concat!17204 call!272831 (regTwo!22378 (regOne!22378 r!26968))) call!272832))))

(declare-fun b!3732544 () Bool)

(assert (=> b!3732544 (= c!646209 (nullable!3841 (regOne!22378 (regOne!22378 r!26968))))))

(assert (=> b!3732544 (= e!2309113 e!2309112)))

(declare-fun bm!272828 () Bool)

(assert (=> bm!272828 (= call!272832 call!272830)))

(declare-fun b!3732545 () Bool)

(assert (=> b!3732545 (= e!2309114 (Union!10933 call!272831 call!272833))))

(assert (= (and d!1090834 c!646210) b!3732542))

(assert (= (and d!1090834 (not c!646210)) b!3732534))

(assert (= (and b!3732534 c!646211) b!3732535))

(assert (= (and b!3732534 (not c!646211)) b!3732538))

(assert (= (and b!3732538 c!646208) b!3732545))

(assert (= (and b!3732538 (not c!646208)) b!3732537))

(assert (= (and b!3732537 c!646212) b!3732536))

(assert (= (and b!3732537 (not c!646212)) b!3732544))

(assert (= (and b!3732544 c!646209) b!3732543))

(assert (= (and b!3732544 (not c!646209)) b!3732539))

(assert (= (or b!3732543 b!3732539) bm!272828))

(assert (= (or b!3732536 bm!272828) bm!272827))

(assert (= (or b!3732545 b!3732543) bm!272826))

(assert (= (or b!3732545 bm!272827) bm!272825))

(declare-fun m!4230981 () Bool)

(assert (=> bm!272825 m!4230981))

(declare-fun m!4230983 () Bool)

(assert (=> bm!272826 m!4230983))

(declare-fun m!4230985 () Bool)

(assert (=> d!1090834 m!4230985))

(declare-fun m!4230987 () Bool)

(assert (=> d!1090834 m!4230987))

(declare-fun m!4230989 () Bool)

(assert (=> b!3732544 m!4230989))

(assert (=> b!3732470 d!1090834))

(declare-fun b!3732582 () Bool)

(declare-fun e!2309138 () List!39814)

(assert (=> b!3732582 (= e!2309138 (Cons!39690 (c!646191 (derivativeStep!3368 (regOne!22378 r!26968) c!13797)) Nil!39690))))

(declare-fun b!3732583 () Bool)

(declare-fun e!2309137 () List!39814)

(declare-fun e!2309136 () List!39814)

(assert (=> b!3732583 (= e!2309137 e!2309136)))

(declare-fun c!646236 () Bool)

(assert (=> b!3732583 (= c!646236 ((_ is Union!10933) (derivativeStep!3368 (regOne!22378 r!26968) c!13797)))))

(declare-fun d!1090840 () Bool)

(declare-fun c!646233 () Bool)

(assert (=> d!1090840 (= c!646233 (or ((_ is EmptyExpr!10933) (derivativeStep!3368 (regOne!22378 r!26968) c!13797)) ((_ is EmptyLang!10933) (derivativeStep!3368 (regOne!22378 r!26968) c!13797))))))

(declare-fun e!2309135 () List!39814)

(assert (=> d!1090840 (= (usedCharacters!1196 (derivativeStep!3368 (regOne!22378 r!26968) c!13797)) e!2309135)))

(declare-fun c!646235 () Bool)

(declare-fun bm!272849 () Bool)

(declare-fun call!272854 () List!39814)

(assert (=> bm!272849 (= call!272854 (usedCharacters!1196 (ite c!646235 (reg!11262 (derivativeStep!3368 (regOne!22378 r!26968) c!13797)) (ite c!646236 (regTwo!22379 (derivativeStep!3368 (regOne!22378 r!26968) c!13797)) (regOne!22378 (derivativeStep!3368 (regOne!22378 r!26968) c!13797))))))))

(declare-fun call!272856 () List!39814)

(declare-fun bm!272850 () Bool)

(assert (=> bm!272850 (= call!272856 (usedCharacters!1196 (ite c!646236 (regOne!22379 (derivativeStep!3368 (regOne!22378 r!26968) c!13797)) (regTwo!22378 (derivativeStep!3368 (regOne!22378 r!26968) c!13797)))))))

(declare-fun bm!272851 () Bool)

(declare-fun call!272857 () List!39814)

(assert (=> bm!272851 (= call!272857 call!272854)))

(declare-fun b!3732584 () Bool)

(declare-fun call!272855 () List!39814)

(assert (=> b!3732584 (= e!2309136 call!272855)))

(declare-fun b!3732585 () Bool)

(assert (=> b!3732585 (= e!2309135 Nil!39690)))

(declare-fun b!3732586 () Bool)

(assert (=> b!3732586 (= c!646235 ((_ is Star!10933) (derivativeStep!3368 (regOne!22378 r!26968) c!13797)))))

(assert (=> b!3732586 (= e!2309138 e!2309137)))

(declare-fun b!3732587 () Bool)

(assert (=> b!3732587 (= e!2309135 e!2309138)))

(declare-fun c!646234 () Bool)

(assert (=> b!3732587 (= c!646234 ((_ is ElementMatch!10933) (derivativeStep!3368 (regOne!22378 r!26968) c!13797)))))

(declare-fun b!3732588 () Bool)

(assert (=> b!3732588 (= e!2309136 call!272855)))

(declare-fun b!3732589 () Bool)

(assert (=> b!3732589 (= e!2309137 call!272854)))

(declare-fun bm!272852 () Bool)

(declare-fun ++!9857 (List!39814 List!39814) List!39814)

(assert (=> bm!272852 (= call!272855 (++!9857 (ite c!646236 call!272856 call!272857) (ite c!646236 call!272857 call!272856)))))

(assert (= (and d!1090840 c!646233) b!3732585))

(assert (= (and d!1090840 (not c!646233)) b!3732587))

(assert (= (and b!3732587 c!646234) b!3732582))

(assert (= (and b!3732587 (not c!646234)) b!3732586))

(assert (= (and b!3732586 c!646235) b!3732589))

(assert (= (and b!3732586 (not c!646235)) b!3732583))

(assert (= (and b!3732583 c!646236) b!3732588))

(assert (= (and b!3732583 (not c!646236)) b!3732584))

(assert (= (or b!3732588 b!3732584) bm!272850))

(assert (= (or b!3732588 b!3732584) bm!272851))

(assert (= (or b!3732588 b!3732584) bm!272852))

(assert (= (or b!3732589 bm!272851) bm!272849))

(declare-fun m!4230999 () Bool)

(assert (=> bm!272849 m!4230999))

(declare-fun m!4231001 () Bool)

(assert (=> bm!272850 m!4231001))

(declare-fun m!4231003 () Bool)

(assert (=> bm!272852 m!4231003))

(assert (=> b!3732470 d!1090840))

(declare-fun b!3732628 () Bool)

(declare-fun e!2309164 () Bool)

(declare-fun e!2309169 () Bool)

(assert (=> b!3732628 (= e!2309164 e!2309169)))

(declare-fun res!1515100 () Bool)

(assert (=> b!3732628 (=> (not res!1515100) (not e!2309169))))

(declare-fun call!272874 () Bool)

(assert (=> b!3732628 (= res!1515100 call!272874)))

(declare-fun b!3732629 () Bool)

(declare-fun e!2309168 () Bool)

(declare-fun call!272872 () Bool)

(assert (=> b!3732629 (= e!2309168 call!272872)))

(declare-fun bm!272867 () Bool)

(declare-fun call!272873 () Bool)

(assert (=> bm!272867 (= call!272873 call!272872)))

(declare-fun d!1090846 () Bool)

(declare-fun res!1515102 () Bool)

(declare-fun e!2309163 () Bool)

(assert (=> d!1090846 (=> res!1515102 e!2309163)))

(assert (=> d!1090846 (= res!1515102 ((_ is ElementMatch!10933) (regTwo!22378 r!26968)))))

(assert (=> d!1090846 (= (validRegex!5040 (regTwo!22378 r!26968)) e!2309163)))

(declare-fun b!3732630 () Bool)

(declare-fun res!1515104 () Bool)

(assert (=> b!3732630 (=> res!1515104 e!2309164)))

(assert (=> b!3732630 (= res!1515104 (not ((_ is Concat!17204) (regTwo!22378 r!26968))))))

(declare-fun e!2309165 () Bool)

(assert (=> b!3732630 (= e!2309165 e!2309164)))

(declare-fun bm!272868 () Bool)

(declare-fun c!646251 () Bool)

(assert (=> bm!272868 (= call!272874 (validRegex!5040 (ite c!646251 (regOne!22379 (regTwo!22378 r!26968)) (regOne!22378 (regTwo!22378 r!26968)))))))

(declare-fun b!3732631 () Bool)

(declare-fun e!2309167 () Bool)

(assert (=> b!3732631 (= e!2309163 e!2309167)))

(declare-fun c!646252 () Bool)

(assert (=> b!3732631 (= c!646252 ((_ is Star!10933) (regTwo!22378 r!26968)))))

(declare-fun b!3732632 () Bool)

(assert (=> b!3732632 (= e!2309169 call!272873)))

(declare-fun b!3732633 () Bool)

(declare-fun res!1515101 () Bool)

(declare-fun e!2309166 () Bool)

(assert (=> b!3732633 (=> (not res!1515101) (not e!2309166))))

(assert (=> b!3732633 (= res!1515101 call!272874)))

(assert (=> b!3732633 (= e!2309165 e!2309166)))

(declare-fun bm!272869 () Bool)

(assert (=> bm!272869 (= call!272872 (validRegex!5040 (ite c!646252 (reg!11262 (regTwo!22378 r!26968)) (ite c!646251 (regTwo!22379 (regTwo!22378 r!26968)) (regTwo!22378 (regTwo!22378 r!26968))))))))

(declare-fun b!3732634 () Bool)

(assert (=> b!3732634 (= e!2309167 e!2309165)))

(assert (=> b!3732634 (= c!646251 ((_ is Union!10933) (regTwo!22378 r!26968)))))

(declare-fun b!3732635 () Bool)

(assert (=> b!3732635 (= e!2309166 call!272873)))

(declare-fun b!3732636 () Bool)

(assert (=> b!3732636 (= e!2309167 e!2309168)))

(declare-fun res!1515103 () Bool)

(assert (=> b!3732636 (= res!1515103 (not (nullable!3841 (reg!11262 (regTwo!22378 r!26968)))))))

(assert (=> b!3732636 (=> (not res!1515103) (not e!2309168))))

(assert (= (and d!1090846 (not res!1515102)) b!3732631))

(assert (= (and b!3732631 c!646252) b!3732636))

(assert (= (and b!3732631 (not c!646252)) b!3732634))

(assert (= (and b!3732636 res!1515103) b!3732629))

(assert (= (and b!3732634 c!646251) b!3732633))

(assert (= (and b!3732634 (not c!646251)) b!3732630))

(assert (= (and b!3732633 res!1515101) b!3732635))

(assert (= (and b!3732630 (not res!1515104)) b!3732628))

(assert (= (and b!3732628 res!1515100) b!3732632))

(assert (= (or b!3732635 b!3732632) bm!272867))

(assert (= (or b!3732633 b!3732628) bm!272868))

(assert (= (or b!3732629 bm!272867) bm!272869))

(declare-fun m!4231005 () Bool)

(assert (=> bm!272868 m!4231005))

(declare-fun m!4231007 () Bool)

(assert (=> bm!272869 m!4231007))

(declare-fun m!4231009 () Bool)

(assert (=> b!3732636 m!4231009))

(assert (=> b!3732470 d!1090846))

(declare-fun d!1090848 () Bool)

(assert (=> d!1090848 (not (contains!8026 (usedCharacters!1196 (derivativeStep!3368 (regOne!22378 r!26968) c!13797)) cNot!42))))

(declare-fun lt!1298762 () Unit!57592)

(declare-fun choose!22234 (Regex!10933 C!22052 C!22052) Unit!57592)

(assert (=> d!1090848 (= lt!1298762 (choose!22234 (regOne!22378 r!26968) c!13797 cNot!42))))

(assert (=> d!1090848 (= (lemmaDerivativeStepDoesNotAddCharToUsedCharacters!52 (regOne!22378 r!26968) c!13797 cNot!42) lt!1298762)))

(declare-fun bs!575113 () Bool)

(assert (= bs!575113 d!1090848))

(assert (=> bs!575113 m!4230965))

(assert (=> bs!575113 m!4230965))

(assert (=> bs!575113 m!4230961))

(assert (=> bs!575113 m!4230961))

(assert (=> bs!575113 m!4230963))

(declare-fun m!4231027 () Bool)

(assert (=> bs!575113 m!4231027))

(assert (=> b!3732470 d!1090848))

(declare-fun d!1090854 () Bool)

(declare-fun lt!1298768 () Bool)

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!5790 (List!39814) (InoxSet C!22052))

(assert (=> d!1090854 (= lt!1298768 (select (content!5790 (usedCharacters!1196 (derivativeStep!3368 (regOne!22378 r!26968) c!13797))) cNot!42))))

(declare-fun e!2309191 () Bool)

(assert (=> d!1090854 (= lt!1298768 e!2309191)))

(declare-fun res!1515115 () Bool)

(assert (=> d!1090854 (=> (not res!1515115) (not e!2309191))))

(assert (=> d!1090854 (= res!1515115 ((_ is Cons!39690) (usedCharacters!1196 (derivativeStep!3368 (regOne!22378 r!26968) c!13797))))))

(assert (=> d!1090854 (= (contains!8026 (usedCharacters!1196 (derivativeStep!3368 (regOne!22378 r!26968) c!13797)) cNot!42) lt!1298768)))

(declare-fun b!3732668 () Bool)

(declare-fun e!2309190 () Bool)

(assert (=> b!3732668 (= e!2309191 e!2309190)))

(declare-fun res!1515114 () Bool)

(assert (=> b!3732668 (=> res!1515114 e!2309190)))

(assert (=> b!3732668 (= res!1515114 (= (h!45110 (usedCharacters!1196 (derivativeStep!3368 (regOne!22378 r!26968) c!13797))) cNot!42))))

(declare-fun b!3732669 () Bool)

(assert (=> b!3732669 (= e!2309190 (contains!8026 (t!302497 (usedCharacters!1196 (derivativeStep!3368 (regOne!22378 r!26968) c!13797))) cNot!42))))

(assert (= (and d!1090854 res!1515115) b!3732668))

(assert (= (and b!3732668 (not res!1515114)) b!3732669))

(assert (=> d!1090854 m!4230961))

(declare-fun m!4231043 () Bool)

(assert (=> d!1090854 m!4231043))

(declare-fun m!4231045 () Bool)

(assert (=> d!1090854 m!4231045))

(declare-fun m!4231047 () Bool)

(assert (=> b!3732669 m!4231047))

(assert (=> b!3732470 d!1090854))

(declare-fun d!1090862 () Bool)

(declare-fun lt!1298771 () Bool)

(assert (=> d!1090862 (= lt!1298771 (select (content!5790 (usedCharacters!1196 (regTwo!22378 r!26968))) cNot!42))))

(declare-fun e!2309197 () Bool)

(assert (=> d!1090862 (= lt!1298771 e!2309197)))

(declare-fun res!1515121 () Bool)

(assert (=> d!1090862 (=> (not res!1515121) (not e!2309197))))

(assert (=> d!1090862 (= res!1515121 ((_ is Cons!39690) (usedCharacters!1196 (regTwo!22378 r!26968))))))

(assert (=> d!1090862 (= (contains!8026 (usedCharacters!1196 (regTwo!22378 r!26968)) cNot!42) lt!1298771)))

(declare-fun b!3732674 () Bool)

(declare-fun e!2309196 () Bool)

(assert (=> b!3732674 (= e!2309197 e!2309196)))

(declare-fun res!1515120 () Bool)

(assert (=> b!3732674 (=> res!1515120 e!2309196)))

(assert (=> b!3732674 (= res!1515120 (= (h!45110 (usedCharacters!1196 (regTwo!22378 r!26968))) cNot!42))))

(declare-fun b!3732675 () Bool)

(assert (=> b!3732675 (= e!2309196 (contains!8026 (t!302497 (usedCharacters!1196 (regTwo!22378 r!26968))) cNot!42))))

(assert (= (and d!1090862 res!1515121) b!3732674))

(assert (= (and b!3732674 (not res!1515120)) b!3732675))

(assert (=> d!1090862 m!4230953))

(declare-fun m!4231055 () Bool)

(assert (=> d!1090862 m!4231055))

(declare-fun m!4231057 () Bool)

(assert (=> d!1090862 m!4231057))

(declare-fun m!4231059 () Bool)

(assert (=> b!3732675 m!4231059))

(assert (=> b!3732474 d!1090862))

(declare-fun b!3732684 () Bool)

(declare-fun e!2309205 () List!39814)

(assert (=> b!3732684 (= e!2309205 (Cons!39690 (c!646191 (regTwo!22378 r!26968)) Nil!39690))))

(declare-fun b!3732685 () Bool)

(declare-fun e!2309204 () List!39814)

(declare-fun e!2309203 () List!39814)

(assert (=> b!3732685 (= e!2309204 e!2309203)))

(declare-fun c!646273 () Bool)

(assert (=> b!3732685 (= c!646273 ((_ is Union!10933) (regTwo!22378 r!26968)))))

(declare-fun d!1090866 () Bool)

(declare-fun c!646270 () Bool)

(assert (=> d!1090866 (= c!646270 (or ((_ is EmptyExpr!10933) (regTwo!22378 r!26968)) ((_ is EmptyLang!10933) (regTwo!22378 r!26968))))))

(declare-fun e!2309202 () List!39814)

(assert (=> d!1090866 (= (usedCharacters!1196 (regTwo!22378 r!26968)) e!2309202)))

(declare-fun call!272890 () List!39814)

(declare-fun c!646272 () Bool)

(declare-fun bm!272885 () Bool)

(assert (=> bm!272885 (= call!272890 (usedCharacters!1196 (ite c!646272 (reg!11262 (regTwo!22378 r!26968)) (ite c!646273 (regTwo!22379 (regTwo!22378 r!26968)) (regOne!22378 (regTwo!22378 r!26968))))))))

(declare-fun bm!272886 () Bool)

(declare-fun call!272892 () List!39814)

(assert (=> bm!272886 (= call!272892 (usedCharacters!1196 (ite c!646273 (regOne!22379 (regTwo!22378 r!26968)) (regTwo!22378 (regTwo!22378 r!26968)))))))

(declare-fun bm!272887 () Bool)

(declare-fun call!272893 () List!39814)

(assert (=> bm!272887 (= call!272893 call!272890)))

(declare-fun b!3732686 () Bool)

(declare-fun call!272891 () List!39814)

(assert (=> b!3732686 (= e!2309203 call!272891)))

(declare-fun b!3732687 () Bool)

(assert (=> b!3732687 (= e!2309202 Nil!39690)))

(declare-fun b!3732688 () Bool)

(assert (=> b!3732688 (= c!646272 ((_ is Star!10933) (regTwo!22378 r!26968)))))

(assert (=> b!3732688 (= e!2309205 e!2309204)))

(declare-fun b!3732689 () Bool)

(assert (=> b!3732689 (= e!2309202 e!2309205)))

(declare-fun c!646271 () Bool)

(assert (=> b!3732689 (= c!646271 ((_ is ElementMatch!10933) (regTwo!22378 r!26968)))))

(declare-fun b!3732690 () Bool)

(assert (=> b!3732690 (= e!2309203 call!272891)))

(declare-fun b!3732691 () Bool)

(assert (=> b!3732691 (= e!2309204 call!272890)))

(declare-fun bm!272888 () Bool)

(assert (=> bm!272888 (= call!272891 (++!9857 (ite c!646273 call!272892 call!272893) (ite c!646273 call!272893 call!272892)))))

(assert (= (and d!1090866 c!646270) b!3732687))

(assert (= (and d!1090866 (not c!646270)) b!3732689))

(assert (= (and b!3732689 c!646271) b!3732684))

(assert (= (and b!3732689 (not c!646271)) b!3732688))

(assert (= (and b!3732688 c!646272) b!3732691))

(assert (= (and b!3732688 (not c!646272)) b!3732685))

(assert (= (and b!3732685 c!646273) b!3732690))

(assert (= (and b!3732685 (not c!646273)) b!3732686))

(assert (= (or b!3732690 b!3732686) bm!272886))

(assert (= (or b!3732690 b!3732686) bm!272887))

(assert (= (or b!3732690 b!3732686) bm!272888))

(assert (= (or b!3732691 bm!272887) bm!272885))

(declare-fun m!4231067 () Bool)

(assert (=> bm!272885 m!4231067))

(declare-fun m!4231069 () Bool)

(assert (=> bm!272886 m!4231069))

(declare-fun m!4231071 () Bool)

(assert (=> bm!272888 m!4231071))

(assert (=> b!3732474 d!1090866))

(declare-fun d!1090868 () Bool)

(declare-fun nullableFct!1094 (Regex!10933) Bool)

(assert (=> d!1090868 (= (nullable!3841 (regOne!22378 r!26968)) (nullableFct!1094 (regOne!22378 r!26968)))))

(declare-fun bs!575115 () Bool)

(assert (= bs!575115 d!1090868))

(declare-fun m!4231073 () Bool)

(assert (=> bs!575115 m!4231073))

(assert (=> b!3732476 d!1090868))

(declare-fun b!3732706 () Bool)

(declare-fun e!2309210 () Bool)

(declare-fun e!2309215 () Bool)

(assert (=> b!3732706 (= e!2309210 e!2309215)))

(declare-fun res!1515122 () Bool)

(assert (=> b!3732706 (=> (not res!1515122) (not e!2309215))))

(declare-fun call!272896 () Bool)

(assert (=> b!3732706 (= res!1515122 call!272896)))

(declare-fun b!3732707 () Bool)

(declare-fun e!2309214 () Bool)

(declare-fun call!272894 () Bool)

(assert (=> b!3732707 (= e!2309214 call!272894)))

(declare-fun bm!272889 () Bool)

(declare-fun call!272895 () Bool)

(assert (=> bm!272889 (= call!272895 call!272894)))

(declare-fun d!1090870 () Bool)

(declare-fun res!1515124 () Bool)

(declare-fun e!2309209 () Bool)

(assert (=> d!1090870 (=> res!1515124 e!2309209)))

(assert (=> d!1090870 (= res!1515124 ((_ is ElementMatch!10933) r!26968))))

(assert (=> d!1090870 (= (validRegex!5040 r!26968) e!2309209)))

(declare-fun b!3732708 () Bool)

(declare-fun res!1515126 () Bool)

(assert (=> b!3732708 (=> res!1515126 e!2309210)))

(assert (=> b!3732708 (= res!1515126 (not ((_ is Concat!17204) r!26968)))))

(declare-fun e!2309211 () Bool)

(assert (=> b!3732708 (= e!2309211 e!2309210)))

(declare-fun bm!272890 () Bool)

(declare-fun c!646274 () Bool)

(assert (=> bm!272890 (= call!272896 (validRegex!5040 (ite c!646274 (regOne!22379 r!26968) (regOne!22378 r!26968))))))

(declare-fun b!3732709 () Bool)

(declare-fun e!2309213 () Bool)

(assert (=> b!3732709 (= e!2309209 e!2309213)))

(declare-fun c!646275 () Bool)

(assert (=> b!3732709 (= c!646275 ((_ is Star!10933) r!26968))))

(declare-fun b!3732710 () Bool)

(assert (=> b!3732710 (= e!2309215 call!272895)))

(declare-fun b!3732711 () Bool)

(declare-fun res!1515123 () Bool)

(declare-fun e!2309212 () Bool)

(assert (=> b!3732711 (=> (not res!1515123) (not e!2309212))))

(assert (=> b!3732711 (= res!1515123 call!272896)))

(assert (=> b!3732711 (= e!2309211 e!2309212)))

(declare-fun bm!272891 () Bool)

(assert (=> bm!272891 (= call!272894 (validRegex!5040 (ite c!646275 (reg!11262 r!26968) (ite c!646274 (regTwo!22379 r!26968) (regTwo!22378 r!26968)))))))

(declare-fun b!3732712 () Bool)

(assert (=> b!3732712 (= e!2309213 e!2309211)))

(assert (=> b!3732712 (= c!646274 ((_ is Union!10933) r!26968))))

(declare-fun b!3732713 () Bool)

(assert (=> b!3732713 (= e!2309212 call!272895)))

(declare-fun b!3732714 () Bool)

(assert (=> b!3732714 (= e!2309213 e!2309214)))

(declare-fun res!1515125 () Bool)

(assert (=> b!3732714 (= res!1515125 (not (nullable!3841 (reg!11262 r!26968))))))

(assert (=> b!3732714 (=> (not res!1515125) (not e!2309214))))

(assert (= (and d!1090870 (not res!1515124)) b!3732709))

(assert (= (and b!3732709 c!646275) b!3732714))

(assert (= (and b!3732709 (not c!646275)) b!3732712))

(assert (= (and b!3732714 res!1515125) b!3732707))

(assert (= (and b!3732712 c!646274) b!3732711))

(assert (= (and b!3732712 (not c!646274)) b!3732708))

(assert (= (and b!3732711 res!1515123) b!3732713))

(assert (= (and b!3732708 (not res!1515126)) b!3732706))

(assert (= (and b!3732706 res!1515122) b!3732710))

(assert (= (or b!3732713 b!3732710) bm!272889))

(assert (= (or b!3732711 b!3732706) bm!272890))

(assert (= (or b!3732707 bm!272889) bm!272891))

(declare-fun m!4231075 () Bool)

(assert (=> bm!272890 m!4231075))

(declare-fun m!4231077 () Bool)

(assert (=> bm!272891 m!4231077))

(declare-fun m!4231079 () Bool)

(assert (=> b!3732714 m!4231079))

(assert (=> start!351094 d!1090870))

(declare-fun d!1090872 () Bool)

(declare-fun lt!1298772 () Bool)

(assert (=> d!1090872 (= lt!1298772 (select (content!5790 (usedCharacters!1196 r!26968)) cNot!42))))

(declare-fun e!2309221 () Bool)

(assert (=> d!1090872 (= lt!1298772 e!2309221)))

(declare-fun res!1515128 () Bool)

(assert (=> d!1090872 (=> (not res!1515128) (not e!2309221))))

(assert (=> d!1090872 (= res!1515128 ((_ is Cons!39690) (usedCharacters!1196 r!26968)))))

(assert (=> d!1090872 (= (contains!8026 (usedCharacters!1196 r!26968) cNot!42) lt!1298772)))

(declare-fun b!3732731 () Bool)

(declare-fun e!2309220 () Bool)

(assert (=> b!3732731 (= e!2309221 e!2309220)))

(declare-fun res!1515127 () Bool)

(assert (=> b!3732731 (=> res!1515127 e!2309220)))

(assert (=> b!3732731 (= res!1515127 (= (h!45110 (usedCharacters!1196 r!26968)) cNot!42))))

(declare-fun b!3732732 () Bool)

(assert (=> b!3732732 (= e!2309220 (contains!8026 (t!302497 (usedCharacters!1196 r!26968)) cNot!42))))

(assert (= (and d!1090872 res!1515128) b!3732731))

(assert (= (and b!3732731 (not res!1515127)) b!3732732))

(assert (=> d!1090872 m!4230947))

(declare-fun m!4231081 () Bool)

(assert (=> d!1090872 m!4231081))

(declare-fun m!4231083 () Bool)

(assert (=> d!1090872 m!4231083))

(declare-fun m!4231085 () Bool)

(assert (=> b!3732732 m!4231085))

(assert (=> b!3732477 d!1090872))

(declare-fun b!3732733 () Bool)

(declare-fun e!2309225 () List!39814)

(assert (=> b!3732733 (= e!2309225 (Cons!39690 (c!646191 r!26968) Nil!39690))))

(declare-fun b!3732734 () Bool)

(declare-fun e!2309224 () List!39814)

(declare-fun e!2309223 () List!39814)

(assert (=> b!3732734 (= e!2309224 e!2309223)))

(declare-fun c!646279 () Bool)

(assert (=> b!3732734 (= c!646279 ((_ is Union!10933) r!26968))))

(declare-fun d!1090874 () Bool)

(declare-fun c!646276 () Bool)

(assert (=> d!1090874 (= c!646276 (or ((_ is EmptyExpr!10933) r!26968) ((_ is EmptyLang!10933) r!26968)))))

(declare-fun e!2309222 () List!39814)

(assert (=> d!1090874 (= (usedCharacters!1196 r!26968) e!2309222)))

(declare-fun bm!272892 () Bool)

(declare-fun call!272897 () List!39814)

(declare-fun c!646278 () Bool)

(assert (=> bm!272892 (= call!272897 (usedCharacters!1196 (ite c!646278 (reg!11262 r!26968) (ite c!646279 (regTwo!22379 r!26968) (regOne!22378 r!26968)))))))

(declare-fun bm!272893 () Bool)

(declare-fun call!272899 () List!39814)

(assert (=> bm!272893 (= call!272899 (usedCharacters!1196 (ite c!646279 (regOne!22379 r!26968) (regTwo!22378 r!26968))))))

(declare-fun bm!272894 () Bool)

(declare-fun call!272900 () List!39814)

(assert (=> bm!272894 (= call!272900 call!272897)))

(declare-fun b!3732735 () Bool)

(declare-fun call!272898 () List!39814)

(assert (=> b!3732735 (= e!2309223 call!272898)))

(declare-fun b!3732736 () Bool)

(assert (=> b!3732736 (= e!2309222 Nil!39690)))

(declare-fun b!3732737 () Bool)

(assert (=> b!3732737 (= c!646278 ((_ is Star!10933) r!26968))))

(assert (=> b!3732737 (= e!2309225 e!2309224)))

(declare-fun b!3732738 () Bool)

(assert (=> b!3732738 (= e!2309222 e!2309225)))

(declare-fun c!646277 () Bool)

(assert (=> b!3732738 (= c!646277 ((_ is ElementMatch!10933) r!26968))))

(declare-fun b!3732739 () Bool)

(assert (=> b!3732739 (= e!2309223 call!272898)))

(declare-fun b!3732740 () Bool)

(assert (=> b!3732740 (= e!2309224 call!272897)))

(declare-fun bm!272895 () Bool)

(assert (=> bm!272895 (= call!272898 (++!9857 (ite c!646279 call!272899 call!272900) (ite c!646279 call!272900 call!272899)))))

(assert (= (and d!1090874 c!646276) b!3732736))

(assert (= (and d!1090874 (not c!646276)) b!3732738))

(assert (= (and b!3732738 c!646277) b!3732733))

(assert (= (and b!3732738 (not c!646277)) b!3732737))

(assert (= (and b!3732737 c!646278) b!3732740))

(assert (= (and b!3732737 (not c!646278)) b!3732734))

(assert (= (and b!3732734 c!646279) b!3732739))

(assert (= (and b!3732734 (not c!646279)) b!3732735))

(assert (= (or b!3732739 b!3732735) bm!272893))

(assert (= (or b!3732739 b!3732735) bm!272894))

(assert (= (or b!3732739 b!3732735) bm!272895))

(assert (= (or b!3732740 bm!272894) bm!272892))

(declare-fun m!4231087 () Bool)

(assert (=> bm!272892 m!4231087))

(declare-fun m!4231089 () Bool)

(assert (=> bm!272893 m!4231089))

(declare-fun m!4231091 () Bool)

(assert (=> bm!272895 m!4231091))

(assert (=> b!3732477 d!1090874))

(declare-fun b!3732754 () Bool)

(declare-fun e!2309228 () Bool)

(declare-fun tp!1136083 () Bool)

(declare-fun tp!1136081 () Bool)

(assert (=> b!3732754 (= e!2309228 (and tp!1136083 tp!1136081))))

(declare-fun b!3732752 () Bool)

(declare-fun tp!1136080 () Bool)

(declare-fun tp!1136084 () Bool)

(assert (=> b!3732752 (= e!2309228 (and tp!1136080 tp!1136084))))

(declare-fun b!3732753 () Bool)

(declare-fun tp!1136082 () Bool)

(assert (=> b!3732753 (= e!2309228 tp!1136082)))

(assert (=> b!3732475 (= tp!1136032 e!2309228)))

(declare-fun b!3732751 () Bool)

(assert (=> b!3732751 (= e!2309228 tp_is_empty!18881)))

(assert (= (and b!3732475 ((_ is ElementMatch!10933) (reg!11262 r!26968))) b!3732751))

(assert (= (and b!3732475 ((_ is Concat!17204) (reg!11262 r!26968))) b!3732752))

(assert (= (and b!3732475 ((_ is Star!10933) (reg!11262 r!26968))) b!3732753))

(assert (= (and b!3732475 ((_ is Union!10933) (reg!11262 r!26968))) b!3732754))

(declare-fun b!3732758 () Bool)

(declare-fun e!2309229 () Bool)

(declare-fun tp!1136088 () Bool)

(declare-fun tp!1136086 () Bool)

(assert (=> b!3732758 (= e!2309229 (and tp!1136088 tp!1136086))))

(declare-fun b!3732756 () Bool)

(declare-fun tp!1136085 () Bool)

(declare-fun tp!1136089 () Bool)

(assert (=> b!3732756 (= e!2309229 (and tp!1136085 tp!1136089))))

(declare-fun b!3732757 () Bool)

(declare-fun tp!1136087 () Bool)

(assert (=> b!3732757 (= e!2309229 tp!1136087)))

(assert (=> b!3732478 (= tp!1136033 e!2309229)))

(declare-fun b!3732755 () Bool)

(assert (=> b!3732755 (= e!2309229 tp_is_empty!18881)))

(assert (= (and b!3732478 ((_ is ElementMatch!10933) (regOne!22379 r!26968))) b!3732755))

(assert (= (and b!3732478 ((_ is Concat!17204) (regOne!22379 r!26968))) b!3732756))

(assert (= (and b!3732478 ((_ is Star!10933) (regOne!22379 r!26968))) b!3732757))

(assert (= (and b!3732478 ((_ is Union!10933) (regOne!22379 r!26968))) b!3732758))

(declare-fun b!3732762 () Bool)

(declare-fun e!2309230 () Bool)

(declare-fun tp!1136093 () Bool)

(declare-fun tp!1136091 () Bool)

(assert (=> b!3732762 (= e!2309230 (and tp!1136093 tp!1136091))))

(declare-fun b!3732760 () Bool)

(declare-fun tp!1136090 () Bool)

(declare-fun tp!1136094 () Bool)

(assert (=> b!3732760 (= e!2309230 (and tp!1136090 tp!1136094))))

(declare-fun b!3732761 () Bool)

(declare-fun tp!1136092 () Bool)

(assert (=> b!3732761 (= e!2309230 tp!1136092)))

(assert (=> b!3732478 (= tp!1136030 e!2309230)))

(declare-fun b!3732759 () Bool)

(assert (=> b!3732759 (= e!2309230 tp_is_empty!18881)))

(assert (= (and b!3732478 ((_ is ElementMatch!10933) (regTwo!22379 r!26968))) b!3732759))

(assert (= (and b!3732478 ((_ is Concat!17204) (regTwo!22379 r!26968))) b!3732760))

(assert (= (and b!3732478 ((_ is Star!10933) (regTwo!22379 r!26968))) b!3732761))

(assert (= (and b!3732478 ((_ is Union!10933) (regTwo!22379 r!26968))) b!3732762))

(declare-fun b!3732766 () Bool)

(declare-fun e!2309231 () Bool)

(declare-fun tp!1136098 () Bool)

(declare-fun tp!1136096 () Bool)

(assert (=> b!3732766 (= e!2309231 (and tp!1136098 tp!1136096))))

(declare-fun b!3732764 () Bool)

(declare-fun tp!1136095 () Bool)

(declare-fun tp!1136099 () Bool)

(assert (=> b!3732764 (= e!2309231 (and tp!1136095 tp!1136099))))

(declare-fun b!3732765 () Bool)

(declare-fun tp!1136097 () Bool)

(assert (=> b!3732765 (= e!2309231 tp!1136097)))

(assert (=> b!3732473 (= tp!1136031 e!2309231)))

(declare-fun b!3732763 () Bool)

(assert (=> b!3732763 (= e!2309231 tp_is_empty!18881)))

(assert (= (and b!3732473 ((_ is ElementMatch!10933) (regOne!22378 r!26968))) b!3732763))

(assert (= (and b!3732473 ((_ is Concat!17204) (regOne!22378 r!26968))) b!3732764))

(assert (= (and b!3732473 ((_ is Star!10933) (regOne!22378 r!26968))) b!3732765))

(assert (= (and b!3732473 ((_ is Union!10933) (regOne!22378 r!26968))) b!3732766))

(declare-fun b!3732770 () Bool)

(declare-fun e!2309232 () Bool)

(declare-fun tp!1136103 () Bool)

(declare-fun tp!1136101 () Bool)

(assert (=> b!3732770 (= e!2309232 (and tp!1136103 tp!1136101))))

(declare-fun b!3732768 () Bool)

(declare-fun tp!1136100 () Bool)

(declare-fun tp!1136104 () Bool)

(assert (=> b!3732768 (= e!2309232 (and tp!1136100 tp!1136104))))

(declare-fun b!3732769 () Bool)

(declare-fun tp!1136102 () Bool)

(assert (=> b!3732769 (= e!2309232 tp!1136102)))

(assert (=> b!3732473 (= tp!1136034 e!2309232)))

(declare-fun b!3732767 () Bool)

(assert (=> b!3732767 (= e!2309232 tp_is_empty!18881)))

(assert (= (and b!3732473 ((_ is ElementMatch!10933) (regTwo!22378 r!26968))) b!3732767))

(assert (= (and b!3732473 ((_ is Concat!17204) (regTwo!22378 r!26968))) b!3732768))

(assert (= (and b!3732473 ((_ is Star!10933) (regTwo!22378 r!26968))) b!3732769))

(assert (= (and b!3732473 ((_ is Union!10933) (regTwo!22378 r!26968))) b!3732770))

(check-sat (not bm!272893) (not b!3732764) (not d!1090854) (not bm!272850) (not bm!272891) (not bm!272888) (not b!3732754) (not bm!272890) (not bm!272885) (not b!3732753) (not b!3732762) (not b!3732675) (not d!1090848) (not b!3732760) (not b!3732766) (not b!3732756) (not b!3732544) (not b!3732768) (not b!3732769) (not bm!272852) (not b!3732732) (not bm!272826) (not b!3732669) (not b!3732757) tp_is_empty!18881 (not bm!272849) (not d!1090862) (not bm!272886) (not bm!272825) (not bm!272868) (not bm!272892) (not d!1090834) (not bm!272869) (not b!3732765) (not d!1090872) (not b!3732636) (not bm!272895) (not b!3732758) (not b!3732714) (not b!3732761) (not b!3732752) (not b!3732770) (not d!1090868))
(check-sat)
(get-model)

(declare-fun c!646280 () Bool)

(declare-fun c!646281 () Bool)

(declare-fun call!272904 () Regex!10933)

(declare-fun c!646284 () Bool)

(declare-fun bm!272896 () Bool)

(assert (=> bm!272896 (= call!272904 (derivativeStep!3368 (ite c!646280 (regTwo!22379 (ite c!646208 (regTwo!22379 (regOne!22378 r!26968)) (ite c!646212 (reg!11262 (regOne!22378 r!26968)) (ite c!646209 (regTwo!22378 (regOne!22378 r!26968)) (regOne!22378 (regOne!22378 r!26968)))))) (ite c!646284 (reg!11262 (ite c!646208 (regTwo!22379 (regOne!22378 r!26968)) (ite c!646212 (reg!11262 (regOne!22378 r!26968)) (ite c!646209 (regTwo!22378 (regOne!22378 r!26968)) (regOne!22378 (regOne!22378 r!26968)))))) (ite c!646281 (regTwo!22378 (ite c!646208 (regTwo!22379 (regOne!22378 r!26968)) (ite c!646212 (reg!11262 (regOne!22378 r!26968)) (ite c!646209 (regTwo!22378 (regOne!22378 r!26968)) (regOne!22378 (regOne!22378 r!26968)))))) (regOne!22378 (ite c!646208 (regTwo!22379 (regOne!22378 r!26968)) (ite c!646212 (reg!11262 (regOne!22378 r!26968)) (ite c!646209 (regTwo!22378 (regOne!22378 r!26968)) (regOne!22378 (regOne!22378 r!26968))))))))) c!13797))))

(declare-fun e!2309234 () Regex!10933)

(declare-fun b!3732772 () Bool)

(assert (=> b!3732772 (= e!2309234 (ite (= c!13797 (c!646191 (ite c!646208 (regTwo!22379 (regOne!22378 r!26968)) (ite c!646212 (reg!11262 (regOne!22378 r!26968)) (ite c!646209 (regTwo!22378 (regOne!22378 r!26968)) (regOne!22378 (regOne!22378 r!26968))))))) EmptyExpr!10933 EmptyLang!10933))))

(declare-fun e!2309236 () Regex!10933)

(declare-fun b!3732773 () Bool)

(declare-fun call!272901 () Regex!10933)

(assert (=> b!3732773 (= e!2309236 (Concat!17204 call!272901 (ite c!646208 (regTwo!22379 (regOne!22378 r!26968)) (ite c!646212 (reg!11262 (regOne!22378 r!26968)) (ite c!646209 (regTwo!22378 (regOne!22378 r!26968)) (regOne!22378 (regOne!22378 r!26968)))))))))

(declare-fun b!3732774 () Bool)

(declare-fun e!2309237 () Regex!10933)

(assert (=> b!3732774 (= e!2309237 e!2309236)))

(assert (=> b!3732774 (= c!646284 ((_ is Star!10933) (ite c!646208 (regTwo!22379 (regOne!22378 r!26968)) (ite c!646212 (reg!11262 (regOne!22378 r!26968)) (ite c!646209 (regTwo!22378 (regOne!22378 r!26968)) (regOne!22378 (regOne!22378 r!26968)))))))))

(declare-fun b!3732775 () Bool)

(assert (=> b!3732775 (= c!646280 ((_ is Union!10933) (ite c!646208 (regTwo!22379 (regOne!22378 r!26968)) (ite c!646212 (reg!11262 (regOne!22378 r!26968)) (ite c!646209 (regTwo!22378 (regOne!22378 r!26968)) (regOne!22378 (regOne!22378 r!26968)))))))))

(assert (=> b!3732775 (= e!2309234 e!2309237)))

(declare-fun b!3732776 () Bool)

(declare-fun e!2309235 () Regex!10933)

(declare-fun call!272903 () Regex!10933)

(assert (=> b!3732776 (= e!2309235 (Union!10933 (Concat!17204 call!272903 (regTwo!22378 (ite c!646208 (regTwo!22379 (regOne!22378 r!26968)) (ite c!646212 (reg!11262 (regOne!22378 r!26968)) (ite c!646209 (regTwo!22378 (regOne!22378 r!26968)) (regOne!22378 (regOne!22378 r!26968))))))) EmptyLang!10933))))

(declare-fun bm!272897 () Bool)

(declare-fun call!272902 () Regex!10933)

(assert (=> bm!272897 (= call!272902 (derivativeStep!3368 (ite c!646280 (regOne!22379 (ite c!646208 (regTwo!22379 (regOne!22378 r!26968)) (ite c!646212 (reg!11262 (regOne!22378 r!26968)) (ite c!646209 (regTwo!22378 (regOne!22378 r!26968)) (regOne!22378 (regOne!22378 r!26968)))))) (regOne!22378 (ite c!646208 (regTwo!22379 (regOne!22378 r!26968)) (ite c!646212 (reg!11262 (regOne!22378 r!26968)) (ite c!646209 (regTwo!22378 (regOne!22378 r!26968)) (regOne!22378 (regOne!22378 r!26968))))))) c!13797))))

(declare-fun bm!272898 () Bool)

(assert (=> bm!272898 (= call!272901 call!272904)))

(declare-fun b!3732777 () Bool)

(declare-fun e!2309233 () Regex!10933)

(assert (=> b!3732777 (= e!2309233 EmptyLang!10933)))

(declare-fun d!1090876 () Bool)

(declare-fun lt!1298773 () Regex!10933)

(assert (=> d!1090876 (validRegex!5040 lt!1298773)))

(assert (=> d!1090876 (= lt!1298773 e!2309233)))

(declare-fun c!646282 () Bool)

(assert (=> d!1090876 (= c!646282 (or ((_ is EmptyExpr!10933) (ite c!646208 (regTwo!22379 (regOne!22378 r!26968)) (ite c!646212 (reg!11262 (regOne!22378 r!26968)) (ite c!646209 (regTwo!22378 (regOne!22378 r!26968)) (regOne!22378 (regOne!22378 r!26968)))))) ((_ is EmptyLang!10933) (ite c!646208 (regTwo!22379 (regOne!22378 r!26968)) (ite c!646212 (reg!11262 (regOne!22378 r!26968)) (ite c!646209 (regTwo!22378 (regOne!22378 r!26968)) (regOne!22378 (regOne!22378 r!26968))))))))))

(assert (=> d!1090876 (validRegex!5040 (ite c!646208 (regTwo!22379 (regOne!22378 r!26968)) (ite c!646212 (reg!11262 (regOne!22378 r!26968)) (ite c!646209 (regTwo!22378 (regOne!22378 r!26968)) (regOne!22378 (regOne!22378 r!26968))))))))

(assert (=> d!1090876 (= (derivativeStep!3368 (ite c!646208 (regTwo!22379 (regOne!22378 r!26968)) (ite c!646212 (reg!11262 (regOne!22378 r!26968)) (ite c!646209 (regTwo!22378 (regOne!22378 r!26968)) (regOne!22378 (regOne!22378 r!26968))))) c!13797) lt!1298773)))

(declare-fun b!3732771 () Bool)

(assert (=> b!3732771 (= e!2309233 e!2309234)))

(declare-fun c!646283 () Bool)

(assert (=> b!3732771 (= c!646283 ((_ is ElementMatch!10933) (ite c!646208 (regTwo!22379 (regOne!22378 r!26968)) (ite c!646212 (reg!11262 (regOne!22378 r!26968)) (ite c!646209 (regTwo!22378 (regOne!22378 r!26968)) (regOne!22378 (regOne!22378 r!26968)))))))))

(declare-fun b!3732778 () Bool)

(assert (=> b!3732778 (= e!2309235 (Union!10933 (Concat!17204 call!272902 (regTwo!22378 (ite c!646208 (regTwo!22379 (regOne!22378 r!26968)) (ite c!646212 (reg!11262 (regOne!22378 r!26968)) (ite c!646209 (regTwo!22378 (regOne!22378 r!26968)) (regOne!22378 (regOne!22378 r!26968))))))) call!272903))))

(declare-fun b!3732779 () Bool)

(assert (=> b!3732779 (= c!646281 (nullable!3841 (regOne!22378 (ite c!646208 (regTwo!22379 (regOne!22378 r!26968)) (ite c!646212 (reg!11262 (regOne!22378 r!26968)) (ite c!646209 (regTwo!22378 (regOne!22378 r!26968)) (regOne!22378 (regOne!22378 r!26968))))))))))

(assert (=> b!3732779 (= e!2309236 e!2309235)))

(declare-fun bm!272899 () Bool)

(assert (=> bm!272899 (= call!272903 call!272901)))

(declare-fun b!3732780 () Bool)

(assert (=> b!3732780 (= e!2309237 (Union!10933 call!272902 call!272904))))

(assert (= (and d!1090876 c!646282) b!3732777))

(assert (= (and d!1090876 (not c!646282)) b!3732771))

(assert (= (and b!3732771 c!646283) b!3732772))

(assert (= (and b!3732771 (not c!646283)) b!3732775))

(assert (= (and b!3732775 c!646280) b!3732780))

(assert (= (and b!3732775 (not c!646280)) b!3732774))

(assert (= (and b!3732774 c!646284) b!3732773))

(assert (= (and b!3732774 (not c!646284)) b!3732779))

(assert (= (and b!3732779 c!646281) b!3732778))

(assert (= (and b!3732779 (not c!646281)) b!3732776))

(assert (= (or b!3732778 b!3732776) bm!272899))

(assert (= (or b!3732773 bm!272899) bm!272898))

(assert (= (or b!3732780 b!3732778) bm!272897))

(assert (= (or b!3732780 bm!272898) bm!272896))

(declare-fun m!4231093 () Bool)

(assert (=> bm!272896 m!4231093))

(declare-fun m!4231095 () Bool)

(assert (=> bm!272897 m!4231095))

(declare-fun m!4231097 () Bool)

(assert (=> d!1090876 m!4231097))

(declare-fun m!4231099 () Bool)

(assert (=> d!1090876 m!4231099))

(declare-fun m!4231101 () Bool)

(assert (=> b!3732779 m!4231101))

(assert (=> bm!272825 d!1090876))

(declare-fun d!1090878 () Bool)

(assert (=> d!1090878 (= (nullable!3841 (reg!11262 r!26968)) (nullableFct!1094 (reg!11262 r!26968)))))

(declare-fun bs!575116 () Bool)

(assert (= bs!575116 d!1090878))

(declare-fun m!4231103 () Bool)

(assert (=> bs!575116 m!4231103))

(assert (=> b!3732714 d!1090878))

(declare-fun b!3732791 () Bool)

(declare-fun res!1515134 () Bool)

(declare-fun e!2309242 () Bool)

(assert (=> b!3732791 (=> (not res!1515134) (not e!2309242))))

(declare-fun lt!1298776 () List!39814)

(declare-fun size!30041 (List!39814) Int)

(assert (=> b!3732791 (= res!1515134 (= (size!30041 lt!1298776) (+ (size!30041 (ite c!646279 call!272899 call!272900)) (size!30041 (ite c!646279 call!272900 call!272899)))))))

(declare-fun d!1090880 () Bool)

(assert (=> d!1090880 e!2309242))

(declare-fun res!1515133 () Bool)

(assert (=> d!1090880 (=> (not res!1515133) (not e!2309242))))

(assert (=> d!1090880 (= res!1515133 (= (content!5790 lt!1298776) ((_ map or) (content!5790 (ite c!646279 call!272899 call!272900)) (content!5790 (ite c!646279 call!272900 call!272899)))))))

(declare-fun e!2309243 () List!39814)

(assert (=> d!1090880 (= lt!1298776 e!2309243)))

(declare-fun c!646287 () Bool)

(assert (=> d!1090880 (= c!646287 ((_ is Nil!39690) (ite c!646279 call!272899 call!272900)))))

(assert (=> d!1090880 (= (++!9857 (ite c!646279 call!272899 call!272900) (ite c!646279 call!272900 call!272899)) lt!1298776)))

(declare-fun b!3732790 () Bool)

(assert (=> b!3732790 (= e!2309243 (Cons!39690 (h!45110 (ite c!646279 call!272899 call!272900)) (++!9857 (t!302497 (ite c!646279 call!272899 call!272900)) (ite c!646279 call!272900 call!272899))))))

(declare-fun b!3732789 () Bool)

(assert (=> b!3732789 (= e!2309243 (ite c!646279 call!272900 call!272899))))

(declare-fun b!3732792 () Bool)

(assert (=> b!3732792 (= e!2309242 (or (not (= (ite c!646279 call!272900 call!272899) Nil!39690)) (= lt!1298776 (ite c!646279 call!272899 call!272900))))))

(assert (= (and d!1090880 c!646287) b!3732789))

(assert (= (and d!1090880 (not c!646287)) b!3732790))

(assert (= (and d!1090880 res!1515133) b!3732791))

(assert (= (and b!3732791 res!1515134) b!3732792))

(declare-fun m!4231105 () Bool)

(assert (=> b!3732791 m!4231105))

(declare-fun m!4231107 () Bool)

(assert (=> b!3732791 m!4231107))

(declare-fun m!4231109 () Bool)

(assert (=> b!3732791 m!4231109))

(declare-fun m!4231111 () Bool)

(assert (=> d!1090880 m!4231111))

(declare-fun m!4231113 () Bool)

(assert (=> d!1090880 m!4231113))

(declare-fun m!4231115 () Bool)

(assert (=> d!1090880 m!4231115))

(declare-fun m!4231117 () Bool)

(assert (=> b!3732790 m!4231117))

(assert (=> bm!272895 d!1090880))

(declare-fun b!3732793 () Bool)

(declare-fun e!2309245 () Bool)

(declare-fun e!2309250 () Bool)

(assert (=> b!3732793 (= e!2309245 e!2309250)))

(declare-fun res!1515135 () Bool)

(assert (=> b!3732793 (=> (not res!1515135) (not e!2309250))))

(declare-fun call!272907 () Bool)

(assert (=> b!3732793 (= res!1515135 call!272907)))

(declare-fun b!3732794 () Bool)

(declare-fun e!2309249 () Bool)

(declare-fun call!272905 () Bool)

(assert (=> b!3732794 (= e!2309249 call!272905)))

(declare-fun bm!272900 () Bool)

(declare-fun call!272906 () Bool)

(assert (=> bm!272900 (= call!272906 call!272905)))

(declare-fun d!1090882 () Bool)

(declare-fun res!1515137 () Bool)

(declare-fun e!2309244 () Bool)

(assert (=> d!1090882 (=> res!1515137 e!2309244)))

(assert (=> d!1090882 (= res!1515137 ((_ is ElementMatch!10933) lt!1298756))))

(assert (=> d!1090882 (= (validRegex!5040 lt!1298756) e!2309244)))

(declare-fun b!3732795 () Bool)

(declare-fun res!1515139 () Bool)

(assert (=> b!3732795 (=> res!1515139 e!2309245)))

(assert (=> b!3732795 (= res!1515139 (not ((_ is Concat!17204) lt!1298756)))))

(declare-fun e!2309246 () Bool)

(assert (=> b!3732795 (= e!2309246 e!2309245)))

(declare-fun bm!272901 () Bool)

(declare-fun c!646288 () Bool)

(assert (=> bm!272901 (= call!272907 (validRegex!5040 (ite c!646288 (regOne!22379 lt!1298756) (regOne!22378 lt!1298756))))))

(declare-fun b!3732796 () Bool)

(declare-fun e!2309248 () Bool)

(assert (=> b!3732796 (= e!2309244 e!2309248)))

(declare-fun c!646289 () Bool)

(assert (=> b!3732796 (= c!646289 ((_ is Star!10933) lt!1298756))))

(declare-fun b!3732797 () Bool)

(assert (=> b!3732797 (= e!2309250 call!272906)))

(declare-fun b!3732798 () Bool)

(declare-fun res!1515136 () Bool)

(declare-fun e!2309247 () Bool)

(assert (=> b!3732798 (=> (not res!1515136) (not e!2309247))))

(assert (=> b!3732798 (= res!1515136 call!272907)))

(assert (=> b!3732798 (= e!2309246 e!2309247)))

(declare-fun bm!272902 () Bool)

(assert (=> bm!272902 (= call!272905 (validRegex!5040 (ite c!646289 (reg!11262 lt!1298756) (ite c!646288 (regTwo!22379 lt!1298756) (regTwo!22378 lt!1298756)))))))

(declare-fun b!3732799 () Bool)

(assert (=> b!3732799 (= e!2309248 e!2309246)))

(assert (=> b!3732799 (= c!646288 ((_ is Union!10933) lt!1298756))))

(declare-fun b!3732800 () Bool)

(assert (=> b!3732800 (= e!2309247 call!272906)))

(declare-fun b!3732801 () Bool)

(assert (=> b!3732801 (= e!2309248 e!2309249)))

(declare-fun res!1515138 () Bool)

(assert (=> b!3732801 (= res!1515138 (not (nullable!3841 (reg!11262 lt!1298756))))))

(assert (=> b!3732801 (=> (not res!1515138) (not e!2309249))))

(assert (= (and d!1090882 (not res!1515137)) b!3732796))

(assert (= (and b!3732796 c!646289) b!3732801))

(assert (= (and b!3732796 (not c!646289)) b!3732799))

(assert (= (and b!3732801 res!1515138) b!3732794))

(assert (= (and b!3732799 c!646288) b!3732798))

(assert (= (and b!3732799 (not c!646288)) b!3732795))

(assert (= (and b!3732798 res!1515136) b!3732800))

(assert (= (and b!3732795 (not res!1515139)) b!3732793))

(assert (= (and b!3732793 res!1515135) b!3732797))

(assert (= (or b!3732800 b!3732797) bm!272900))

(assert (= (or b!3732798 b!3732793) bm!272901))

(assert (= (or b!3732794 bm!272900) bm!272902))

(declare-fun m!4231119 () Bool)

(assert (=> bm!272901 m!4231119))

(declare-fun m!4231121 () Bool)

(assert (=> bm!272902 m!4231121))

(declare-fun m!4231123 () Bool)

(assert (=> b!3732801 m!4231123))

(assert (=> d!1090834 d!1090882))

(declare-fun b!3732802 () Bool)

(declare-fun e!2309252 () Bool)

(declare-fun e!2309257 () Bool)

(assert (=> b!3732802 (= e!2309252 e!2309257)))

(declare-fun res!1515140 () Bool)

(assert (=> b!3732802 (=> (not res!1515140) (not e!2309257))))

(declare-fun call!272910 () Bool)

(assert (=> b!3732802 (= res!1515140 call!272910)))

(declare-fun b!3732803 () Bool)

(declare-fun e!2309256 () Bool)

(declare-fun call!272908 () Bool)

(assert (=> b!3732803 (= e!2309256 call!272908)))

(declare-fun bm!272903 () Bool)

(declare-fun call!272909 () Bool)

(assert (=> bm!272903 (= call!272909 call!272908)))

(declare-fun d!1090884 () Bool)

(declare-fun res!1515142 () Bool)

(declare-fun e!2309251 () Bool)

(assert (=> d!1090884 (=> res!1515142 e!2309251)))

(assert (=> d!1090884 (= res!1515142 ((_ is ElementMatch!10933) (regOne!22378 r!26968)))))

(assert (=> d!1090884 (= (validRegex!5040 (regOne!22378 r!26968)) e!2309251)))

(declare-fun b!3732804 () Bool)

(declare-fun res!1515144 () Bool)

(assert (=> b!3732804 (=> res!1515144 e!2309252)))

(assert (=> b!3732804 (= res!1515144 (not ((_ is Concat!17204) (regOne!22378 r!26968))))))

(declare-fun e!2309253 () Bool)

(assert (=> b!3732804 (= e!2309253 e!2309252)))

(declare-fun bm!272904 () Bool)

(declare-fun c!646290 () Bool)

(assert (=> bm!272904 (= call!272910 (validRegex!5040 (ite c!646290 (regOne!22379 (regOne!22378 r!26968)) (regOne!22378 (regOne!22378 r!26968)))))))

(declare-fun b!3732805 () Bool)

(declare-fun e!2309255 () Bool)

(assert (=> b!3732805 (= e!2309251 e!2309255)))

(declare-fun c!646291 () Bool)

(assert (=> b!3732805 (= c!646291 ((_ is Star!10933) (regOne!22378 r!26968)))))

(declare-fun b!3732806 () Bool)

(assert (=> b!3732806 (= e!2309257 call!272909)))

(declare-fun b!3732807 () Bool)

(declare-fun res!1515141 () Bool)

(declare-fun e!2309254 () Bool)

(assert (=> b!3732807 (=> (not res!1515141) (not e!2309254))))

(assert (=> b!3732807 (= res!1515141 call!272910)))

(assert (=> b!3732807 (= e!2309253 e!2309254)))

(declare-fun bm!272905 () Bool)

(assert (=> bm!272905 (= call!272908 (validRegex!5040 (ite c!646291 (reg!11262 (regOne!22378 r!26968)) (ite c!646290 (regTwo!22379 (regOne!22378 r!26968)) (regTwo!22378 (regOne!22378 r!26968))))))))

(declare-fun b!3732808 () Bool)

(assert (=> b!3732808 (= e!2309255 e!2309253)))

(assert (=> b!3732808 (= c!646290 ((_ is Union!10933) (regOne!22378 r!26968)))))

(declare-fun b!3732809 () Bool)

(assert (=> b!3732809 (= e!2309254 call!272909)))

(declare-fun b!3732810 () Bool)

(assert (=> b!3732810 (= e!2309255 e!2309256)))

(declare-fun res!1515143 () Bool)

(assert (=> b!3732810 (= res!1515143 (not (nullable!3841 (reg!11262 (regOne!22378 r!26968)))))))

(assert (=> b!3732810 (=> (not res!1515143) (not e!2309256))))

(assert (= (and d!1090884 (not res!1515142)) b!3732805))

(assert (= (and b!3732805 c!646291) b!3732810))

(assert (= (and b!3732805 (not c!646291)) b!3732808))

(assert (= (and b!3732810 res!1515143) b!3732803))

(assert (= (and b!3732808 c!646290) b!3732807))

(assert (= (and b!3732808 (not c!646290)) b!3732804))

(assert (= (and b!3732807 res!1515141) b!3732809))

(assert (= (and b!3732804 (not res!1515144)) b!3732802))

(assert (= (and b!3732802 res!1515140) b!3732806))

(assert (= (or b!3732809 b!3732806) bm!272903))

(assert (= (or b!3732807 b!3732802) bm!272904))

(assert (= (or b!3732803 bm!272903) bm!272905))

(declare-fun m!4231125 () Bool)

(assert (=> bm!272904 m!4231125))

(declare-fun m!4231127 () Bool)

(assert (=> bm!272905 m!4231127))

(declare-fun m!4231129 () Bool)

(assert (=> b!3732810 m!4231129))

(assert (=> d!1090834 d!1090884))

(declare-fun d!1090886 () Bool)

(declare-fun c!646294 () Bool)

(assert (=> d!1090886 (= c!646294 ((_ is Nil!39690) (usedCharacters!1196 (derivativeStep!3368 (regOne!22378 r!26968) c!13797))))))

(declare-fun e!2309260 () (InoxSet C!22052))

(assert (=> d!1090886 (= (content!5790 (usedCharacters!1196 (derivativeStep!3368 (regOne!22378 r!26968) c!13797))) e!2309260)))

(declare-fun b!3732815 () Bool)

(assert (=> b!3732815 (= e!2309260 ((as const (Array C!22052 Bool)) false))))

(declare-fun b!3732816 () Bool)

(assert (=> b!3732816 (= e!2309260 ((_ map or) (store ((as const (Array C!22052 Bool)) false) (h!45110 (usedCharacters!1196 (derivativeStep!3368 (regOne!22378 r!26968) c!13797))) true) (content!5790 (t!302497 (usedCharacters!1196 (derivativeStep!3368 (regOne!22378 r!26968) c!13797))))))))

(assert (= (and d!1090886 c!646294) b!3732815))

(assert (= (and d!1090886 (not c!646294)) b!3732816))

(declare-fun m!4231131 () Bool)

(assert (=> b!3732816 m!4231131))

(declare-fun m!4231133 () Bool)

(assert (=> b!3732816 m!4231133))

(assert (=> d!1090854 d!1090886))

(declare-fun b!3732817 () Bool)

(declare-fun e!2309262 () Bool)

(declare-fun e!2309267 () Bool)

(assert (=> b!3732817 (= e!2309262 e!2309267)))

(declare-fun res!1515145 () Bool)

(assert (=> b!3732817 (=> (not res!1515145) (not e!2309267))))

(declare-fun call!272913 () Bool)

(assert (=> b!3732817 (= res!1515145 call!272913)))

(declare-fun b!3732818 () Bool)

(declare-fun e!2309266 () Bool)

(declare-fun call!272911 () Bool)

(assert (=> b!3732818 (= e!2309266 call!272911)))

(declare-fun bm!272906 () Bool)

(declare-fun call!272912 () Bool)

(assert (=> bm!272906 (= call!272912 call!272911)))

(declare-fun d!1090888 () Bool)

(declare-fun res!1515147 () Bool)

(declare-fun e!2309261 () Bool)

(assert (=> d!1090888 (=> res!1515147 e!2309261)))

(assert (=> d!1090888 (= res!1515147 ((_ is ElementMatch!10933) (ite c!646252 (reg!11262 (regTwo!22378 r!26968)) (ite c!646251 (regTwo!22379 (regTwo!22378 r!26968)) (regTwo!22378 (regTwo!22378 r!26968))))))))

(assert (=> d!1090888 (= (validRegex!5040 (ite c!646252 (reg!11262 (regTwo!22378 r!26968)) (ite c!646251 (regTwo!22379 (regTwo!22378 r!26968)) (regTwo!22378 (regTwo!22378 r!26968))))) e!2309261)))

(declare-fun b!3732819 () Bool)

(declare-fun res!1515149 () Bool)

(assert (=> b!3732819 (=> res!1515149 e!2309262)))

(assert (=> b!3732819 (= res!1515149 (not ((_ is Concat!17204) (ite c!646252 (reg!11262 (regTwo!22378 r!26968)) (ite c!646251 (regTwo!22379 (regTwo!22378 r!26968)) (regTwo!22378 (regTwo!22378 r!26968)))))))))

(declare-fun e!2309263 () Bool)

(assert (=> b!3732819 (= e!2309263 e!2309262)))

(declare-fun bm!272907 () Bool)

(declare-fun c!646295 () Bool)

(assert (=> bm!272907 (= call!272913 (validRegex!5040 (ite c!646295 (regOne!22379 (ite c!646252 (reg!11262 (regTwo!22378 r!26968)) (ite c!646251 (regTwo!22379 (regTwo!22378 r!26968)) (regTwo!22378 (regTwo!22378 r!26968))))) (regOne!22378 (ite c!646252 (reg!11262 (regTwo!22378 r!26968)) (ite c!646251 (regTwo!22379 (regTwo!22378 r!26968)) (regTwo!22378 (regTwo!22378 r!26968))))))))))

(declare-fun b!3732820 () Bool)

(declare-fun e!2309265 () Bool)

(assert (=> b!3732820 (= e!2309261 e!2309265)))

(declare-fun c!646296 () Bool)

(assert (=> b!3732820 (= c!646296 ((_ is Star!10933) (ite c!646252 (reg!11262 (regTwo!22378 r!26968)) (ite c!646251 (regTwo!22379 (regTwo!22378 r!26968)) (regTwo!22378 (regTwo!22378 r!26968))))))))

(declare-fun b!3732821 () Bool)

(assert (=> b!3732821 (= e!2309267 call!272912)))

(declare-fun b!3732822 () Bool)

(declare-fun res!1515146 () Bool)

(declare-fun e!2309264 () Bool)

(assert (=> b!3732822 (=> (not res!1515146) (not e!2309264))))

(assert (=> b!3732822 (= res!1515146 call!272913)))

(assert (=> b!3732822 (= e!2309263 e!2309264)))

(declare-fun bm!272908 () Bool)

(assert (=> bm!272908 (= call!272911 (validRegex!5040 (ite c!646296 (reg!11262 (ite c!646252 (reg!11262 (regTwo!22378 r!26968)) (ite c!646251 (regTwo!22379 (regTwo!22378 r!26968)) (regTwo!22378 (regTwo!22378 r!26968))))) (ite c!646295 (regTwo!22379 (ite c!646252 (reg!11262 (regTwo!22378 r!26968)) (ite c!646251 (regTwo!22379 (regTwo!22378 r!26968)) (regTwo!22378 (regTwo!22378 r!26968))))) (regTwo!22378 (ite c!646252 (reg!11262 (regTwo!22378 r!26968)) (ite c!646251 (regTwo!22379 (regTwo!22378 r!26968)) (regTwo!22378 (regTwo!22378 r!26968)))))))))))

(declare-fun b!3732823 () Bool)

(assert (=> b!3732823 (= e!2309265 e!2309263)))

(assert (=> b!3732823 (= c!646295 ((_ is Union!10933) (ite c!646252 (reg!11262 (regTwo!22378 r!26968)) (ite c!646251 (regTwo!22379 (regTwo!22378 r!26968)) (regTwo!22378 (regTwo!22378 r!26968))))))))

(declare-fun b!3732824 () Bool)

(assert (=> b!3732824 (= e!2309264 call!272912)))

(declare-fun b!3732825 () Bool)

(assert (=> b!3732825 (= e!2309265 e!2309266)))

(declare-fun res!1515148 () Bool)

(assert (=> b!3732825 (= res!1515148 (not (nullable!3841 (reg!11262 (ite c!646252 (reg!11262 (regTwo!22378 r!26968)) (ite c!646251 (regTwo!22379 (regTwo!22378 r!26968)) (regTwo!22378 (regTwo!22378 r!26968))))))))))

(assert (=> b!3732825 (=> (not res!1515148) (not e!2309266))))

(assert (= (and d!1090888 (not res!1515147)) b!3732820))

(assert (= (and b!3732820 c!646296) b!3732825))

(assert (= (and b!3732820 (not c!646296)) b!3732823))

(assert (= (and b!3732825 res!1515148) b!3732818))

(assert (= (and b!3732823 c!646295) b!3732822))

(assert (= (and b!3732823 (not c!646295)) b!3732819))

(assert (= (and b!3732822 res!1515146) b!3732824))

(assert (= (and b!3732819 (not res!1515149)) b!3732817))

(assert (= (and b!3732817 res!1515145) b!3732821))

(assert (= (or b!3732824 b!3732821) bm!272906))

(assert (= (or b!3732822 b!3732817) bm!272907))

(assert (= (or b!3732818 bm!272906) bm!272908))

(declare-fun m!4231135 () Bool)

(assert (=> bm!272907 m!4231135))

(declare-fun m!4231137 () Bool)

(assert (=> bm!272908 m!4231137))

(declare-fun m!4231139 () Bool)

(assert (=> b!3732825 m!4231139))

(assert (=> bm!272869 d!1090888))

(declare-fun b!3732828 () Bool)

(declare-fun res!1515151 () Bool)

(declare-fun e!2309268 () Bool)

(assert (=> b!3732828 (=> (not res!1515151) (not e!2309268))))

(declare-fun lt!1298777 () List!39814)

(assert (=> b!3732828 (= res!1515151 (= (size!30041 lt!1298777) (+ (size!30041 (ite c!646236 call!272856 call!272857)) (size!30041 (ite c!646236 call!272857 call!272856)))))))

(declare-fun d!1090890 () Bool)

(assert (=> d!1090890 e!2309268))

(declare-fun res!1515150 () Bool)

(assert (=> d!1090890 (=> (not res!1515150) (not e!2309268))))

(assert (=> d!1090890 (= res!1515150 (= (content!5790 lt!1298777) ((_ map or) (content!5790 (ite c!646236 call!272856 call!272857)) (content!5790 (ite c!646236 call!272857 call!272856)))))))

(declare-fun e!2309269 () List!39814)

(assert (=> d!1090890 (= lt!1298777 e!2309269)))

(declare-fun c!646297 () Bool)

(assert (=> d!1090890 (= c!646297 ((_ is Nil!39690) (ite c!646236 call!272856 call!272857)))))

(assert (=> d!1090890 (= (++!9857 (ite c!646236 call!272856 call!272857) (ite c!646236 call!272857 call!272856)) lt!1298777)))

(declare-fun b!3732827 () Bool)

(assert (=> b!3732827 (= e!2309269 (Cons!39690 (h!45110 (ite c!646236 call!272856 call!272857)) (++!9857 (t!302497 (ite c!646236 call!272856 call!272857)) (ite c!646236 call!272857 call!272856))))))

(declare-fun b!3732826 () Bool)

(assert (=> b!3732826 (= e!2309269 (ite c!646236 call!272857 call!272856))))

(declare-fun b!3732829 () Bool)

(assert (=> b!3732829 (= e!2309268 (or (not (= (ite c!646236 call!272857 call!272856) Nil!39690)) (= lt!1298777 (ite c!646236 call!272856 call!272857))))))

(assert (= (and d!1090890 c!646297) b!3732826))

(assert (= (and d!1090890 (not c!646297)) b!3732827))

(assert (= (and d!1090890 res!1515150) b!3732828))

(assert (= (and b!3732828 res!1515151) b!3732829))

(declare-fun m!4231141 () Bool)

(assert (=> b!3732828 m!4231141))

(declare-fun m!4231143 () Bool)

(assert (=> b!3732828 m!4231143))

(declare-fun m!4231145 () Bool)

(assert (=> b!3732828 m!4231145))

(declare-fun m!4231147 () Bool)

(assert (=> d!1090890 m!4231147))

(declare-fun m!4231149 () Bool)

(assert (=> d!1090890 m!4231149))

(declare-fun m!4231151 () Bool)

(assert (=> d!1090890 m!4231151))

(declare-fun m!4231153 () Bool)

(assert (=> b!3732827 m!4231153))

(assert (=> bm!272852 d!1090890))

(declare-fun b!3732830 () Bool)

(declare-fun e!2309271 () Bool)

(declare-fun e!2309276 () Bool)

(assert (=> b!3732830 (= e!2309271 e!2309276)))

(declare-fun res!1515152 () Bool)

(assert (=> b!3732830 (=> (not res!1515152) (not e!2309276))))

(declare-fun call!272916 () Bool)

(assert (=> b!3732830 (= res!1515152 call!272916)))

(declare-fun b!3732831 () Bool)

(declare-fun e!2309275 () Bool)

(declare-fun call!272914 () Bool)

(assert (=> b!3732831 (= e!2309275 call!272914)))

(declare-fun bm!272909 () Bool)

(declare-fun call!272915 () Bool)

(assert (=> bm!272909 (= call!272915 call!272914)))

(declare-fun d!1090892 () Bool)

(declare-fun res!1515154 () Bool)

(declare-fun e!2309270 () Bool)

(assert (=> d!1090892 (=> res!1515154 e!2309270)))

(assert (=> d!1090892 (= res!1515154 ((_ is ElementMatch!10933) (ite c!646275 (reg!11262 r!26968) (ite c!646274 (regTwo!22379 r!26968) (regTwo!22378 r!26968)))))))

(assert (=> d!1090892 (= (validRegex!5040 (ite c!646275 (reg!11262 r!26968) (ite c!646274 (regTwo!22379 r!26968) (regTwo!22378 r!26968)))) e!2309270)))

(declare-fun b!3732832 () Bool)

(declare-fun res!1515156 () Bool)

(assert (=> b!3732832 (=> res!1515156 e!2309271)))

(assert (=> b!3732832 (= res!1515156 (not ((_ is Concat!17204) (ite c!646275 (reg!11262 r!26968) (ite c!646274 (regTwo!22379 r!26968) (regTwo!22378 r!26968))))))))

(declare-fun e!2309272 () Bool)

(assert (=> b!3732832 (= e!2309272 e!2309271)))

(declare-fun c!646298 () Bool)

(declare-fun bm!272910 () Bool)

(assert (=> bm!272910 (= call!272916 (validRegex!5040 (ite c!646298 (regOne!22379 (ite c!646275 (reg!11262 r!26968) (ite c!646274 (regTwo!22379 r!26968) (regTwo!22378 r!26968)))) (regOne!22378 (ite c!646275 (reg!11262 r!26968) (ite c!646274 (regTwo!22379 r!26968) (regTwo!22378 r!26968)))))))))

(declare-fun b!3732833 () Bool)

(declare-fun e!2309274 () Bool)

(assert (=> b!3732833 (= e!2309270 e!2309274)))

(declare-fun c!646299 () Bool)

(assert (=> b!3732833 (= c!646299 ((_ is Star!10933) (ite c!646275 (reg!11262 r!26968) (ite c!646274 (regTwo!22379 r!26968) (regTwo!22378 r!26968)))))))

(declare-fun b!3732834 () Bool)

(assert (=> b!3732834 (= e!2309276 call!272915)))

(declare-fun b!3732835 () Bool)

(declare-fun res!1515153 () Bool)

(declare-fun e!2309273 () Bool)

(assert (=> b!3732835 (=> (not res!1515153) (not e!2309273))))

(assert (=> b!3732835 (= res!1515153 call!272916)))

(assert (=> b!3732835 (= e!2309272 e!2309273)))

(declare-fun bm!272911 () Bool)

(assert (=> bm!272911 (= call!272914 (validRegex!5040 (ite c!646299 (reg!11262 (ite c!646275 (reg!11262 r!26968) (ite c!646274 (regTwo!22379 r!26968) (regTwo!22378 r!26968)))) (ite c!646298 (regTwo!22379 (ite c!646275 (reg!11262 r!26968) (ite c!646274 (regTwo!22379 r!26968) (regTwo!22378 r!26968)))) (regTwo!22378 (ite c!646275 (reg!11262 r!26968) (ite c!646274 (regTwo!22379 r!26968) (regTwo!22378 r!26968))))))))))

(declare-fun b!3732836 () Bool)

(assert (=> b!3732836 (= e!2309274 e!2309272)))

(assert (=> b!3732836 (= c!646298 ((_ is Union!10933) (ite c!646275 (reg!11262 r!26968) (ite c!646274 (regTwo!22379 r!26968) (regTwo!22378 r!26968)))))))

(declare-fun b!3732837 () Bool)

(assert (=> b!3732837 (= e!2309273 call!272915)))

(declare-fun b!3732838 () Bool)

(assert (=> b!3732838 (= e!2309274 e!2309275)))

(declare-fun res!1515155 () Bool)

(assert (=> b!3732838 (= res!1515155 (not (nullable!3841 (reg!11262 (ite c!646275 (reg!11262 r!26968) (ite c!646274 (regTwo!22379 r!26968) (regTwo!22378 r!26968)))))))))

(assert (=> b!3732838 (=> (not res!1515155) (not e!2309275))))

(assert (= (and d!1090892 (not res!1515154)) b!3732833))

(assert (= (and b!3732833 c!646299) b!3732838))

(assert (= (and b!3732833 (not c!646299)) b!3732836))

(assert (= (and b!3732838 res!1515155) b!3732831))

(assert (= (and b!3732836 c!646298) b!3732835))

(assert (= (and b!3732836 (not c!646298)) b!3732832))

(assert (= (and b!3732835 res!1515153) b!3732837))

(assert (= (and b!3732832 (not res!1515156)) b!3732830))

(assert (= (and b!3732830 res!1515152) b!3732834))

(assert (= (or b!3732837 b!3732834) bm!272909))

(assert (= (or b!3732835 b!3732830) bm!272910))

(assert (= (or b!3732831 bm!272909) bm!272911))

(declare-fun m!4231155 () Bool)

(assert (=> bm!272910 m!4231155))

(declare-fun m!4231157 () Bool)

(assert (=> bm!272911 m!4231157))

(declare-fun m!4231159 () Bool)

(assert (=> b!3732838 m!4231159))

(assert (=> bm!272891 d!1090892))

(declare-fun d!1090894 () Bool)

(assert (=> d!1090894 (= (nullable!3841 (regOne!22378 (regOne!22378 r!26968))) (nullableFct!1094 (regOne!22378 (regOne!22378 r!26968))))))

(declare-fun bs!575117 () Bool)

(assert (= bs!575117 d!1090894))

(declare-fun m!4231161 () Bool)

(assert (=> bs!575117 m!4231161))

(assert (=> b!3732544 d!1090894))

(declare-fun b!3732839 () Bool)

(declare-fun e!2309278 () Bool)

(declare-fun e!2309283 () Bool)

(assert (=> b!3732839 (= e!2309278 e!2309283)))

(declare-fun res!1515157 () Bool)

(assert (=> b!3732839 (=> (not res!1515157) (not e!2309283))))

(declare-fun call!272919 () Bool)

(assert (=> b!3732839 (= res!1515157 call!272919)))

(declare-fun b!3732840 () Bool)

(declare-fun e!2309282 () Bool)

(declare-fun call!272917 () Bool)

(assert (=> b!3732840 (= e!2309282 call!272917)))

(declare-fun bm!272912 () Bool)

(declare-fun call!272918 () Bool)

(assert (=> bm!272912 (= call!272918 call!272917)))

(declare-fun d!1090896 () Bool)

(declare-fun res!1515159 () Bool)

(declare-fun e!2309277 () Bool)

(assert (=> d!1090896 (=> res!1515159 e!2309277)))

(assert (=> d!1090896 (= res!1515159 ((_ is ElementMatch!10933) (ite c!646251 (regOne!22379 (regTwo!22378 r!26968)) (regOne!22378 (regTwo!22378 r!26968)))))))

(assert (=> d!1090896 (= (validRegex!5040 (ite c!646251 (regOne!22379 (regTwo!22378 r!26968)) (regOne!22378 (regTwo!22378 r!26968)))) e!2309277)))

(declare-fun b!3732841 () Bool)

(declare-fun res!1515161 () Bool)

(assert (=> b!3732841 (=> res!1515161 e!2309278)))

(assert (=> b!3732841 (= res!1515161 (not ((_ is Concat!17204) (ite c!646251 (regOne!22379 (regTwo!22378 r!26968)) (regOne!22378 (regTwo!22378 r!26968))))))))

(declare-fun e!2309279 () Bool)

(assert (=> b!3732841 (= e!2309279 e!2309278)))

(declare-fun bm!272913 () Bool)

(declare-fun c!646300 () Bool)

(assert (=> bm!272913 (= call!272919 (validRegex!5040 (ite c!646300 (regOne!22379 (ite c!646251 (regOne!22379 (regTwo!22378 r!26968)) (regOne!22378 (regTwo!22378 r!26968)))) (regOne!22378 (ite c!646251 (regOne!22379 (regTwo!22378 r!26968)) (regOne!22378 (regTwo!22378 r!26968)))))))))

(declare-fun b!3732842 () Bool)

(declare-fun e!2309281 () Bool)

(assert (=> b!3732842 (= e!2309277 e!2309281)))

(declare-fun c!646301 () Bool)

(assert (=> b!3732842 (= c!646301 ((_ is Star!10933) (ite c!646251 (regOne!22379 (regTwo!22378 r!26968)) (regOne!22378 (regTwo!22378 r!26968)))))))

(declare-fun b!3732843 () Bool)

(assert (=> b!3732843 (= e!2309283 call!272918)))

(declare-fun b!3732844 () Bool)

(declare-fun res!1515158 () Bool)

(declare-fun e!2309280 () Bool)

(assert (=> b!3732844 (=> (not res!1515158) (not e!2309280))))

(assert (=> b!3732844 (= res!1515158 call!272919)))

(assert (=> b!3732844 (= e!2309279 e!2309280)))

(declare-fun bm!272914 () Bool)

(assert (=> bm!272914 (= call!272917 (validRegex!5040 (ite c!646301 (reg!11262 (ite c!646251 (regOne!22379 (regTwo!22378 r!26968)) (regOne!22378 (regTwo!22378 r!26968)))) (ite c!646300 (regTwo!22379 (ite c!646251 (regOne!22379 (regTwo!22378 r!26968)) (regOne!22378 (regTwo!22378 r!26968)))) (regTwo!22378 (ite c!646251 (regOne!22379 (regTwo!22378 r!26968)) (regOne!22378 (regTwo!22378 r!26968))))))))))

(declare-fun b!3732845 () Bool)

(assert (=> b!3732845 (= e!2309281 e!2309279)))

(assert (=> b!3732845 (= c!646300 ((_ is Union!10933) (ite c!646251 (regOne!22379 (regTwo!22378 r!26968)) (regOne!22378 (regTwo!22378 r!26968)))))))

(declare-fun b!3732846 () Bool)

(assert (=> b!3732846 (= e!2309280 call!272918)))

(declare-fun b!3732847 () Bool)

(assert (=> b!3732847 (= e!2309281 e!2309282)))

(declare-fun res!1515160 () Bool)

(assert (=> b!3732847 (= res!1515160 (not (nullable!3841 (reg!11262 (ite c!646251 (regOne!22379 (regTwo!22378 r!26968)) (regOne!22378 (regTwo!22378 r!26968)))))))))

(assert (=> b!3732847 (=> (not res!1515160) (not e!2309282))))

(assert (= (and d!1090896 (not res!1515159)) b!3732842))

(assert (= (and b!3732842 c!646301) b!3732847))

(assert (= (and b!3732842 (not c!646301)) b!3732845))

(assert (= (and b!3732847 res!1515160) b!3732840))

(assert (= (and b!3732845 c!646300) b!3732844))

(assert (= (and b!3732845 (not c!646300)) b!3732841))

(assert (= (and b!3732844 res!1515158) b!3732846))

(assert (= (and b!3732841 (not res!1515161)) b!3732839))

(assert (= (and b!3732839 res!1515157) b!3732843))

(assert (= (or b!3732846 b!3732843) bm!272912))

(assert (= (or b!3732844 b!3732839) bm!272913))

(assert (= (or b!3732840 bm!272912) bm!272914))

(declare-fun m!4231163 () Bool)

(assert (=> bm!272913 m!4231163))

(declare-fun m!4231165 () Bool)

(assert (=> bm!272914 m!4231165))

(declare-fun m!4231167 () Bool)

(assert (=> b!3732847 m!4231167))

(assert (=> bm!272868 d!1090896))

(declare-fun b!3732850 () Bool)

(declare-fun res!1515163 () Bool)

(declare-fun e!2309284 () Bool)

(assert (=> b!3732850 (=> (not res!1515163) (not e!2309284))))

(declare-fun lt!1298778 () List!39814)

(assert (=> b!3732850 (= res!1515163 (= (size!30041 lt!1298778) (+ (size!30041 (ite c!646273 call!272892 call!272893)) (size!30041 (ite c!646273 call!272893 call!272892)))))))

(declare-fun d!1090898 () Bool)

(assert (=> d!1090898 e!2309284))

(declare-fun res!1515162 () Bool)

(assert (=> d!1090898 (=> (not res!1515162) (not e!2309284))))

(assert (=> d!1090898 (= res!1515162 (= (content!5790 lt!1298778) ((_ map or) (content!5790 (ite c!646273 call!272892 call!272893)) (content!5790 (ite c!646273 call!272893 call!272892)))))))

(declare-fun e!2309285 () List!39814)

(assert (=> d!1090898 (= lt!1298778 e!2309285)))

(declare-fun c!646302 () Bool)

(assert (=> d!1090898 (= c!646302 ((_ is Nil!39690) (ite c!646273 call!272892 call!272893)))))

(assert (=> d!1090898 (= (++!9857 (ite c!646273 call!272892 call!272893) (ite c!646273 call!272893 call!272892)) lt!1298778)))

(declare-fun b!3732849 () Bool)

(assert (=> b!3732849 (= e!2309285 (Cons!39690 (h!45110 (ite c!646273 call!272892 call!272893)) (++!9857 (t!302497 (ite c!646273 call!272892 call!272893)) (ite c!646273 call!272893 call!272892))))))

(declare-fun b!3732848 () Bool)

(assert (=> b!3732848 (= e!2309285 (ite c!646273 call!272893 call!272892))))

(declare-fun b!3732851 () Bool)

(assert (=> b!3732851 (= e!2309284 (or (not (= (ite c!646273 call!272893 call!272892) Nil!39690)) (= lt!1298778 (ite c!646273 call!272892 call!272893))))))

(assert (= (and d!1090898 c!646302) b!3732848))

(assert (= (and d!1090898 (not c!646302)) b!3732849))

(assert (= (and d!1090898 res!1515162) b!3732850))

(assert (= (and b!3732850 res!1515163) b!3732851))

(declare-fun m!4231169 () Bool)

(assert (=> b!3732850 m!4231169))

(declare-fun m!4231171 () Bool)

(assert (=> b!3732850 m!4231171))

(declare-fun m!4231173 () Bool)

(assert (=> b!3732850 m!4231173))

(declare-fun m!4231175 () Bool)

(assert (=> d!1090898 m!4231175))

(declare-fun m!4231177 () Bool)

(assert (=> d!1090898 m!4231177))

(declare-fun m!4231179 () Bool)

(assert (=> d!1090898 m!4231179))

(declare-fun m!4231181 () Bool)

(assert (=> b!3732849 m!4231181))

(assert (=> bm!272888 d!1090898))

(declare-fun d!1090900 () Bool)

(declare-fun lt!1298779 () Bool)

(assert (=> d!1090900 (= lt!1298779 (select (content!5790 (t!302497 (usedCharacters!1196 (regTwo!22378 r!26968)))) cNot!42))))

(declare-fun e!2309287 () Bool)

(assert (=> d!1090900 (= lt!1298779 e!2309287)))

(declare-fun res!1515165 () Bool)

(assert (=> d!1090900 (=> (not res!1515165) (not e!2309287))))

(assert (=> d!1090900 (= res!1515165 ((_ is Cons!39690) (t!302497 (usedCharacters!1196 (regTwo!22378 r!26968)))))))

(assert (=> d!1090900 (= (contains!8026 (t!302497 (usedCharacters!1196 (regTwo!22378 r!26968))) cNot!42) lt!1298779)))

(declare-fun b!3732852 () Bool)

(declare-fun e!2309286 () Bool)

(assert (=> b!3732852 (= e!2309287 e!2309286)))

(declare-fun res!1515164 () Bool)

(assert (=> b!3732852 (=> res!1515164 e!2309286)))

(assert (=> b!3732852 (= res!1515164 (= (h!45110 (t!302497 (usedCharacters!1196 (regTwo!22378 r!26968)))) cNot!42))))

(declare-fun b!3732853 () Bool)

(assert (=> b!3732853 (= e!2309286 (contains!8026 (t!302497 (t!302497 (usedCharacters!1196 (regTwo!22378 r!26968)))) cNot!42))))

(assert (= (and d!1090900 res!1515165) b!3732852))

(assert (= (and b!3732852 (not res!1515164)) b!3732853))

(declare-fun m!4231183 () Bool)

(assert (=> d!1090900 m!4231183))

(declare-fun m!4231185 () Bool)

(assert (=> d!1090900 m!4231185))

(declare-fun m!4231187 () Bool)

(assert (=> b!3732853 m!4231187))

(assert (=> b!3732675 d!1090900))

(declare-fun b!3732868 () Bool)

(declare-fun e!2309305 () Bool)

(declare-fun e!2309302 () Bool)

(assert (=> b!3732868 (= e!2309305 e!2309302)))

(declare-fun res!1515179 () Bool)

(assert (=> b!3732868 (=> (not res!1515179) (not e!2309302))))

(assert (=> b!3732868 (= res!1515179 (and (not ((_ is EmptyLang!10933) (regOne!22378 r!26968))) (not ((_ is ElementMatch!10933) (regOne!22378 r!26968)))))))

(declare-fun b!3732869 () Bool)

(declare-fun e!2309303 () Bool)

(assert (=> b!3732869 (= e!2309302 e!2309303)))

(declare-fun res!1515178 () Bool)

(assert (=> b!3732869 (=> res!1515178 e!2309303)))

(assert (=> b!3732869 (= res!1515178 ((_ is Star!10933) (regOne!22378 r!26968)))))

(declare-fun bm!272919 () Bool)

(declare-fun call!272925 () Bool)

(declare-fun c!646305 () Bool)

(assert (=> bm!272919 (= call!272925 (nullable!3841 (ite c!646305 (regTwo!22379 (regOne!22378 r!26968)) (regOne!22378 (regOne!22378 r!26968)))))))

(declare-fun b!3732870 () Bool)

(declare-fun e!2309304 () Bool)

(declare-fun call!272924 () Bool)

(assert (=> b!3732870 (= e!2309304 call!272924)))

(declare-fun d!1090902 () Bool)

(declare-fun res!1515177 () Bool)

(assert (=> d!1090902 (=> res!1515177 e!2309305)))

(assert (=> d!1090902 (= res!1515177 ((_ is EmptyExpr!10933) (regOne!22378 r!26968)))))

(assert (=> d!1090902 (= (nullableFct!1094 (regOne!22378 r!26968)) e!2309305)))

(declare-fun bm!272920 () Bool)

(assert (=> bm!272920 (= call!272924 (nullable!3841 (ite c!646305 (regOne!22379 (regOne!22378 r!26968)) (regTwo!22378 (regOne!22378 r!26968)))))))

(declare-fun b!3732871 () Bool)

(declare-fun e!2309300 () Bool)

(assert (=> b!3732871 (= e!2309303 e!2309300)))

(assert (=> b!3732871 (= c!646305 ((_ is Union!10933) (regOne!22378 r!26968)))))

(declare-fun b!3732872 () Bool)

(assert (=> b!3732872 (= e!2309300 e!2309304)))

(declare-fun res!1515176 () Bool)

(assert (=> b!3732872 (= res!1515176 call!272925)))

(assert (=> b!3732872 (=> (not res!1515176) (not e!2309304))))

(declare-fun b!3732873 () Bool)

(declare-fun e!2309301 () Bool)

(assert (=> b!3732873 (= e!2309300 e!2309301)))

(declare-fun res!1515180 () Bool)

(assert (=> b!3732873 (= res!1515180 call!272924)))

(assert (=> b!3732873 (=> res!1515180 e!2309301)))

(declare-fun b!3732874 () Bool)

(assert (=> b!3732874 (= e!2309301 call!272925)))

(assert (= (and d!1090902 (not res!1515177)) b!3732868))

(assert (= (and b!3732868 res!1515179) b!3732869))

(assert (= (and b!3732869 (not res!1515178)) b!3732871))

(assert (= (and b!3732871 c!646305) b!3732873))

(assert (= (and b!3732871 (not c!646305)) b!3732872))

(assert (= (and b!3732873 (not res!1515180)) b!3732874))

(assert (= (and b!3732872 res!1515176) b!3732870))

(assert (= (or b!3732874 b!3732872) bm!272919))

(assert (= (or b!3732873 b!3732870) bm!272920))

(declare-fun m!4231189 () Bool)

(assert (=> bm!272919 m!4231189))

(declare-fun m!4231191 () Bool)

(assert (=> bm!272920 m!4231191))

(assert (=> d!1090868 d!1090902))

(declare-fun e!2309309 () List!39814)

(declare-fun b!3732875 () Bool)

(assert (=> b!3732875 (= e!2309309 (Cons!39690 (c!646191 (ite c!646272 (reg!11262 (regTwo!22378 r!26968)) (ite c!646273 (regTwo!22379 (regTwo!22378 r!26968)) (regOne!22378 (regTwo!22378 r!26968))))) Nil!39690))))

(declare-fun b!3732876 () Bool)

(declare-fun e!2309308 () List!39814)

(declare-fun e!2309307 () List!39814)

(assert (=> b!3732876 (= e!2309308 e!2309307)))

(declare-fun c!646309 () Bool)

(assert (=> b!3732876 (= c!646309 ((_ is Union!10933) (ite c!646272 (reg!11262 (regTwo!22378 r!26968)) (ite c!646273 (regTwo!22379 (regTwo!22378 r!26968)) (regOne!22378 (regTwo!22378 r!26968))))))))

(declare-fun c!646306 () Bool)

(declare-fun d!1090904 () Bool)

(assert (=> d!1090904 (= c!646306 (or ((_ is EmptyExpr!10933) (ite c!646272 (reg!11262 (regTwo!22378 r!26968)) (ite c!646273 (regTwo!22379 (regTwo!22378 r!26968)) (regOne!22378 (regTwo!22378 r!26968))))) ((_ is EmptyLang!10933) (ite c!646272 (reg!11262 (regTwo!22378 r!26968)) (ite c!646273 (regTwo!22379 (regTwo!22378 r!26968)) (regOne!22378 (regTwo!22378 r!26968)))))))))

(declare-fun e!2309306 () List!39814)

(assert (=> d!1090904 (= (usedCharacters!1196 (ite c!646272 (reg!11262 (regTwo!22378 r!26968)) (ite c!646273 (regTwo!22379 (regTwo!22378 r!26968)) (regOne!22378 (regTwo!22378 r!26968))))) e!2309306)))

(declare-fun call!272926 () List!39814)

(declare-fun c!646308 () Bool)

(declare-fun bm!272921 () Bool)

(assert (=> bm!272921 (= call!272926 (usedCharacters!1196 (ite c!646308 (reg!11262 (ite c!646272 (reg!11262 (regTwo!22378 r!26968)) (ite c!646273 (regTwo!22379 (regTwo!22378 r!26968)) (regOne!22378 (regTwo!22378 r!26968))))) (ite c!646309 (regTwo!22379 (ite c!646272 (reg!11262 (regTwo!22378 r!26968)) (ite c!646273 (regTwo!22379 (regTwo!22378 r!26968)) (regOne!22378 (regTwo!22378 r!26968))))) (regOne!22378 (ite c!646272 (reg!11262 (regTwo!22378 r!26968)) (ite c!646273 (regTwo!22379 (regTwo!22378 r!26968)) (regOne!22378 (regTwo!22378 r!26968)))))))))))

(declare-fun call!272928 () List!39814)

(declare-fun bm!272922 () Bool)

(assert (=> bm!272922 (= call!272928 (usedCharacters!1196 (ite c!646309 (regOne!22379 (ite c!646272 (reg!11262 (regTwo!22378 r!26968)) (ite c!646273 (regTwo!22379 (regTwo!22378 r!26968)) (regOne!22378 (regTwo!22378 r!26968))))) (regTwo!22378 (ite c!646272 (reg!11262 (regTwo!22378 r!26968)) (ite c!646273 (regTwo!22379 (regTwo!22378 r!26968)) (regOne!22378 (regTwo!22378 r!26968))))))))))

(declare-fun bm!272923 () Bool)

(declare-fun call!272929 () List!39814)

(assert (=> bm!272923 (= call!272929 call!272926)))

(declare-fun b!3732877 () Bool)

(declare-fun call!272927 () List!39814)

(assert (=> b!3732877 (= e!2309307 call!272927)))

(declare-fun b!3732878 () Bool)

(assert (=> b!3732878 (= e!2309306 Nil!39690)))

(declare-fun b!3732879 () Bool)

(assert (=> b!3732879 (= c!646308 ((_ is Star!10933) (ite c!646272 (reg!11262 (regTwo!22378 r!26968)) (ite c!646273 (regTwo!22379 (regTwo!22378 r!26968)) (regOne!22378 (regTwo!22378 r!26968))))))))

(assert (=> b!3732879 (= e!2309309 e!2309308)))

(declare-fun b!3732880 () Bool)

(assert (=> b!3732880 (= e!2309306 e!2309309)))

(declare-fun c!646307 () Bool)

(assert (=> b!3732880 (= c!646307 ((_ is ElementMatch!10933) (ite c!646272 (reg!11262 (regTwo!22378 r!26968)) (ite c!646273 (regTwo!22379 (regTwo!22378 r!26968)) (regOne!22378 (regTwo!22378 r!26968))))))))

(declare-fun b!3732881 () Bool)

(assert (=> b!3732881 (= e!2309307 call!272927)))

(declare-fun b!3732882 () Bool)

(assert (=> b!3732882 (= e!2309308 call!272926)))

(declare-fun bm!272924 () Bool)

(assert (=> bm!272924 (= call!272927 (++!9857 (ite c!646309 call!272928 call!272929) (ite c!646309 call!272929 call!272928)))))

(assert (= (and d!1090904 c!646306) b!3732878))

(assert (= (and d!1090904 (not c!646306)) b!3732880))

(assert (= (and b!3732880 c!646307) b!3732875))

(assert (= (and b!3732880 (not c!646307)) b!3732879))

(assert (= (and b!3732879 c!646308) b!3732882))

(assert (= (and b!3732879 (not c!646308)) b!3732876))

(assert (= (and b!3732876 c!646309) b!3732881))

(assert (= (and b!3732876 (not c!646309)) b!3732877))

(assert (= (or b!3732881 b!3732877) bm!272922))

(assert (= (or b!3732881 b!3732877) bm!272923))

(assert (= (or b!3732881 b!3732877) bm!272924))

(assert (= (or b!3732882 bm!272923) bm!272921))

(declare-fun m!4231193 () Bool)

(assert (=> bm!272921 m!4231193))

(declare-fun m!4231195 () Bool)

(assert (=> bm!272922 m!4231195))

(declare-fun m!4231197 () Bool)

(assert (=> bm!272924 m!4231197))

(assert (=> bm!272885 d!1090904))

(declare-fun d!1090906 () Bool)

(declare-fun lt!1298780 () Bool)

(assert (=> d!1090906 (= lt!1298780 (select (content!5790 (t!302497 (usedCharacters!1196 r!26968))) cNot!42))))

(declare-fun e!2309311 () Bool)

(assert (=> d!1090906 (= lt!1298780 e!2309311)))

(declare-fun res!1515182 () Bool)

(assert (=> d!1090906 (=> (not res!1515182) (not e!2309311))))

(assert (=> d!1090906 (= res!1515182 ((_ is Cons!39690) (t!302497 (usedCharacters!1196 r!26968))))))

(assert (=> d!1090906 (= (contains!8026 (t!302497 (usedCharacters!1196 r!26968)) cNot!42) lt!1298780)))

(declare-fun b!3732883 () Bool)

(declare-fun e!2309310 () Bool)

(assert (=> b!3732883 (= e!2309311 e!2309310)))

(declare-fun res!1515181 () Bool)

(assert (=> b!3732883 (=> res!1515181 e!2309310)))

(assert (=> b!3732883 (= res!1515181 (= (h!45110 (t!302497 (usedCharacters!1196 r!26968))) cNot!42))))

(declare-fun b!3732884 () Bool)

(assert (=> b!3732884 (= e!2309310 (contains!8026 (t!302497 (t!302497 (usedCharacters!1196 r!26968))) cNot!42))))

(assert (= (and d!1090906 res!1515182) b!3732883))

(assert (= (and b!3732883 (not res!1515181)) b!3732884))

(declare-fun m!4231199 () Bool)

(assert (=> d!1090906 m!4231199))

(declare-fun m!4231201 () Bool)

(assert (=> d!1090906 m!4231201))

(declare-fun m!4231203 () Bool)

(assert (=> b!3732884 m!4231203))

(assert (=> b!3732732 d!1090906))

(declare-fun b!3732885 () Bool)

(declare-fun e!2309315 () List!39814)

(assert (=> b!3732885 (= e!2309315 (Cons!39690 (c!646191 (ite c!646273 (regOne!22379 (regTwo!22378 r!26968)) (regTwo!22378 (regTwo!22378 r!26968)))) Nil!39690))))

(declare-fun b!3732886 () Bool)

(declare-fun e!2309314 () List!39814)

(declare-fun e!2309313 () List!39814)

(assert (=> b!3732886 (= e!2309314 e!2309313)))

(declare-fun c!646313 () Bool)

(assert (=> b!3732886 (= c!646313 ((_ is Union!10933) (ite c!646273 (regOne!22379 (regTwo!22378 r!26968)) (regTwo!22378 (regTwo!22378 r!26968)))))))

(declare-fun d!1090908 () Bool)

(declare-fun c!646310 () Bool)

(assert (=> d!1090908 (= c!646310 (or ((_ is EmptyExpr!10933) (ite c!646273 (regOne!22379 (regTwo!22378 r!26968)) (regTwo!22378 (regTwo!22378 r!26968)))) ((_ is EmptyLang!10933) (ite c!646273 (regOne!22379 (regTwo!22378 r!26968)) (regTwo!22378 (regTwo!22378 r!26968))))))))

(declare-fun e!2309312 () List!39814)

(assert (=> d!1090908 (= (usedCharacters!1196 (ite c!646273 (regOne!22379 (regTwo!22378 r!26968)) (regTwo!22378 (regTwo!22378 r!26968)))) e!2309312)))

(declare-fun c!646312 () Bool)

(declare-fun bm!272925 () Bool)

(declare-fun call!272930 () List!39814)

(assert (=> bm!272925 (= call!272930 (usedCharacters!1196 (ite c!646312 (reg!11262 (ite c!646273 (regOne!22379 (regTwo!22378 r!26968)) (regTwo!22378 (regTwo!22378 r!26968)))) (ite c!646313 (regTwo!22379 (ite c!646273 (regOne!22379 (regTwo!22378 r!26968)) (regTwo!22378 (regTwo!22378 r!26968)))) (regOne!22378 (ite c!646273 (regOne!22379 (regTwo!22378 r!26968)) (regTwo!22378 (regTwo!22378 r!26968))))))))))

(declare-fun bm!272926 () Bool)

(declare-fun call!272932 () List!39814)

(assert (=> bm!272926 (= call!272932 (usedCharacters!1196 (ite c!646313 (regOne!22379 (ite c!646273 (regOne!22379 (regTwo!22378 r!26968)) (regTwo!22378 (regTwo!22378 r!26968)))) (regTwo!22378 (ite c!646273 (regOne!22379 (regTwo!22378 r!26968)) (regTwo!22378 (regTwo!22378 r!26968)))))))))

(declare-fun bm!272927 () Bool)

(declare-fun call!272933 () List!39814)

(assert (=> bm!272927 (= call!272933 call!272930)))

(declare-fun b!3732887 () Bool)

(declare-fun call!272931 () List!39814)

(assert (=> b!3732887 (= e!2309313 call!272931)))

(declare-fun b!3732888 () Bool)

(assert (=> b!3732888 (= e!2309312 Nil!39690)))

(declare-fun b!3732889 () Bool)

(assert (=> b!3732889 (= c!646312 ((_ is Star!10933) (ite c!646273 (regOne!22379 (regTwo!22378 r!26968)) (regTwo!22378 (regTwo!22378 r!26968)))))))

(assert (=> b!3732889 (= e!2309315 e!2309314)))

(declare-fun b!3732890 () Bool)

(assert (=> b!3732890 (= e!2309312 e!2309315)))

(declare-fun c!646311 () Bool)

(assert (=> b!3732890 (= c!646311 ((_ is ElementMatch!10933) (ite c!646273 (regOne!22379 (regTwo!22378 r!26968)) (regTwo!22378 (regTwo!22378 r!26968)))))))

(declare-fun b!3732891 () Bool)

(assert (=> b!3732891 (= e!2309313 call!272931)))

(declare-fun b!3732892 () Bool)

(assert (=> b!3732892 (= e!2309314 call!272930)))

(declare-fun bm!272928 () Bool)

(assert (=> bm!272928 (= call!272931 (++!9857 (ite c!646313 call!272932 call!272933) (ite c!646313 call!272933 call!272932)))))

(assert (= (and d!1090908 c!646310) b!3732888))

(assert (= (and d!1090908 (not c!646310)) b!3732890))

(assert (= (and b!3732890 c!646311) b!3732885))

(assert (= (and b!3732890 (not c!646311)) b!3732889))

(assert (= (and b!3732889 c!646312) b!3732892))

(assert (= (and b!3732889 (not c!646312)) b!3732886))

(assert (= (and b!3732886 c!646313) b!3732891))

(assert (= (and b!3732886 (not c!646313)) b!3732887))

(assert (= (or b!3732891 b!3732887) bm!272926))

(assert (= (or b!3732891 b!3732887) bm!272927))

(assert (= (or b!3732891 b!3732887) bm!272928))

(assert (= (or b!3732892 bm!272927) bm!272925))

(declare-fun m!4231205 () Bool)

(assert (=> bm!272925 m!4231205))

(declare-fun m!4231207 () Bool)

(assert (=> bm!272926 m!4231207))

(declare-fun m!4231209 () Bool)

(assert (=> bm!272928 m!4231209))

(assert (=> bm!272886 d!1090908))

(declare-fun c!646314 () Bool)

(declare-fun bm!272929 () Bool)

(declare-fun c!646315 () Bool)

(declare-fun c!646318 () Bool)

(declare-fun call!272937 () Regex!10933)

(assert (=> bm!272929 (= call!272937 (derivativeStep!3368 (ite c!646314 (regTwo!22379 (ite c!646208 (regOne!22379 (regOne!22378 r!26968)) (regOne!22378 (regOne!22378 r!26968)))) (ite c!646318 (reg!11262 (ite c!646208 (regOne!22379 (regOne!22378 r!26968)) (regOne!22378 (regOne!22378 r!26968)))) (ite c!646315 (regTwo!22378 (ite c!646208 (regOne!22379 (regOne!22378 r!26968)) (regOne!22378 (regOne!22378 r!26968)))) (regOne!22378 (ite c!646208 (regOne!22379 (regOne!22378 r!26968)) (regOne!22378 (regOne!22378 r!26968))))))) c!13797))))

(declare-fun b!3732894 () Bool)

(declare-fun e!2309317 () Regex!10933)

(assert (=> b!3732894 (= e!2309317 (ite (= c!13797 (c!646191 (ite c!646208 (regOne!22379 (regOne!22378 r!26968)) (regOne!22378 (regOne!22378 r!26968))))) EmptyExpr!10933 EmptyLang!10933))))

(declare-fun call!272934 () Regex!10933)

(declare-fun e!2309319 () Regex!10933)

(declare-fun b!3732895 () Bool)

(assert (=> b!3732895 (= e!2309319 (Concat!17204 call!272934 (ite c!646208 (regOne!22379 (regOne!22378 r!26968)) (regOne!22378 (regOne!22378 r!26968)))))))

(declare-fun b!3732896 () Bool)

(declare-fun e!2309320 () Regex!10933)

(assert (=> b!3732896 (= e!2309320 e!2309319)))

(assert (=> b!3732896 (= c!646318 ((_ is Star!10933) (ite c!646208 (regOne!22379 (regOne!22378 r!26968)) (regOne!22378 (regOne!22378 r!26968)))))))

(declare-fun b!3732897 () Bool)

(assert (=> b!3732897 (= c!646314 ((_ is Union!10933) (ite c!646208 (regOne!22379 (regOne!22378 r!26968)) (regOne!22378 (regOne!22378 r!26968)))))))

(assert (=> b!3732897 (= e!2309317 e!2309320)))

(declare-fun call!272936 () Regex!10933)

(declare-fun b!3732898 () Bool)

(declare-fun e!2309318 () Regex!10933)

(assert (=> b!3732898 (= e!2309318 (Union!10933 (Concat!17204 call!272936 (regTwo!22378 (ite c!646208 (regOne!22379 (regOne!22378 r!26968)) (regOne!22378 (regOne!22378 r!26968))))) EmptyLang!10933))))

(declare-fun call!272935 () Regex!10933)

(declare-fun bm!272930 () Bool)

(assert (=> bm!272930 (= call!272935 (derivativeStep!3368 (ite c!646314 (regOne!22379 (ite c!646208 (regOne!22379 (regOne!22378 r!26968)) (regOne!22378 (regOne!22378 r!26968)))) (regOne!22378 (ite c!646208 (regOne!22379 (regOne!22378 r!26968)) (regOne!22378 (regOne!22378 r!26968))))) c!13797))))

(declare-fun bm!272931 () Bool)

(assert (=> bm!272931 (= call!272934 call!272937)))

(declare-fun b!3732899 () Bool)

(declare-fun e!2309316 () Regex!10933)

(assert (=> b!3732899 (= e!2309316 EmptyLang!10933)))

(declare-fun d!1090910 () Bool)

(declare-fun lt!1298781 () Regex!10933)

(assert (=> d!1090910 (validRegex!5040 lt!1298781)))

(assert (=> d!1090910 (= lt!1298781 e!2309316)))

(declare-fun c!646316 () Bool)

(assert (=> d!1090910 (= c!646316 (or ((_ is EmptyExpr!10933) (ite c!646208 (regOne!22379 (regOne!22378 r!26968)) (regOne!22378 (regOne!22378 r!26968)))) ((_ is EmptyLang!10933) (ite c!646208 (regOne!22379 (regOne!22378 r!26968)) (regOne!22378 (regOne!22378 r!26968))))))))

(assert (=> d!1090910 (validRegex!5040 (ite c!646208 (regOne!22379 (regOne!22378 r!26968)) (regOne!22378 (regOne!22378 r!26968))))))

(assert (=> d!1090910 (= (derivativeStep!3368 (ite c!646208 (regOne!22379 (regOne!22378 r!26968)) (regOne!22378 (regOne!22378 r!26968))) c!13797) lt!1298781)))

(declare-fun b!3732893 () Bool)

(assert (=> b!3732893 (= e!2309316 e!2309317)))

(declare-fun c!646317 () Bool)

(assert (=> b!3732893 (= c!646317 ((_ is ElementMatch!10933) (ite c!646208 (regOne!22379 (regOne!22378 r!26968)) (regOne!22378 (regOne!22378 r!26968)))))))

(declare-fun b!3732900 () Bool)

(assert (=> b!3732900 (= e!2309318 (Union!10933 (Concat!17204 call!272935 (regTwo!22378 (ite c!646208 (regOne!22379 (regOne!22378 r!26968)) (regOne!22378 (regOne!22378 r!26968))))) call!272936))))

(declare-fun b!3732901 () Bool)

(assert (=> b!3732901 (= c!646315 (nullable!3841 (regOne!22378 (ite c!646208 (regOne!22379 (regOne!22378 r!26968)) (regOne!22378 (regOne!22378 r!26968))))))))

(assert (=> b!3732901 (= e!2309319 e!2309318)))

(declare-fun bm!272932 () Bool)

(assert (=> bm!272932 (= call!272936 call!272934)))

(declare-fun b!3732902 () Bool)

(assert (=> b!3732902 (= e!2309320 (Union!10933 call!272935 call!272937))))

(assert (= (and d!1090910 c!646316) b!3732899))

(assert (= (and d!1090910 (not c!646316)) b!3732893))

(assert (= (and b!3732893 c!646317) b!3732894))

(assert (= (and b!3732893 (not c!646317)) b!3732897))

(assert (= (and b!3732897 c!646314) b!3732902))

(assert (= (and b!3732897 (not c!646314)) b!3732896))

(assert (= (and b!3732896 c!646318) b!3732895))

(assert (= (and b!3732896 (not c!646318)) b!3732901))

(assert (= (and b!3732901 c!646315) b!3732900))

(assert (= (and b!3732901 (not c!646315)) b!3732898))

(assert (= (or b!3732900 b!3732898) bm!272932))

(assert (= (or b!3732895 bm!272932) bm!272931))

(assert (= (or b!3732902 b!3732900) bm!272930))

(assert (= (or b!3732902 bm!272931) bm!272929))

(declare-fun m!4231211 () Bool)

(assert (=> bm!272929 m!4231211))

(declare-fun m!4231213 () Bool)

(assert (=> bm!272930 m!4231213))

(declare-fun m!4231215 () Bool)

(assert (=> d!1090910 m!4231215))

(declare-fun m!4231217 () Bool)

(assert (=> d!1090910 m!4231217))

(declare-fun m!4231219 () Bool)

(assert (=> b!3732901 m!4231219))

(assert (=> bm!272826 d!1090910))

(assert (=> d!1090848 d!1090854))

(assert (=> d!1090848 d!1090840))

(assert (=> d!1090848 d!1090834))

(declare-fun d!1090912 () Bool)

(assert (=> d!1090912 (not (contains!8026 (usedCharacters!1196 (derivativeStep!3368 (regOne!22378 r!26968) c!13797)) cNot!42))))

(assert (=> d!1090912 true))

(declare-fun _$133!116 () Unit!57592)

(assert (=> d!1090912 (= (choose!22234 (regOne!22378 r!26968) c!13797 cNot!42) _$133!116)))

(declare-fun bs!575118 () Bool)

(assert (= bs!575118 d!1090912))

(assert (=> bs!575118 m!4230965))

(assert (=> bs!575118 m!4230965))

(assert (=> bs!575118 m!4230961))

(assert (=> bs!575118 m!4230961))

(assert (=> bs!575118 m!4230963))

(assert (=> d!1090848 d!1090912))

(declare-fun d!1090914 () Bool)

(declare-fun c!646320 () Bool)

(assert (=> d!1090914 (= c!646320 ((_ is Nil!39690) (usedCharacters!1196 (regTwo!22378 r!26968))))))

(declare-fun e!2309321 () (InoxSet C!22052))

(assert (=> d!1090914 (= (content!5790 (usedCharacters!1196 (regTwo!22378 r!26968))) e!2309321)))

(declare-fun b!3732903 () Bool)

(assert (=> b!3732903 (= e!2309321 ((as const (Array C!22052 Bool)) false))))

(declare-fun b!3732904 () Bool)

(assert (=> b!3732904 (= e!2309321 ((_ map or) (store ((as const (Array C!22052 Bool)) false) (h!45110 (usedCharacters!1196 (regTwo!22378 r!26968))) true) (content!5790 (t!302497 (usedCharacters!1196 (regTwo!22378 r!26968))))))))

(assert (= (and d!1090914 c!646320) b!3732903))

(assert (= (and d!1090914 (not c!646320)) b!3732904))

(declare-fun m!4231221 () Bool)

(assert (=> b!3732904 m!4231221))

(assert (=> b!3732904 m!4231183))

(assert (=> d!1090862 d!1090914))

(declare-fun b!3732905 () Bool)

(declare-fun e!2309325 () List!39814)

(assert (=> b!3732905 (= e!2309325 (Cons!39690 (c!646191 (ite c!646279 (regOne!22379 r!26968) (regTwo!22378 r!26968))) Nil!39690))))

(declare-fun b!3732906 () Bool)

(declare-fun e!2309324 () List!39814)

(declare-fun e!2309323 () List!39814)

(assert (=> b!3732906 (= e!2309324 e!2309323)))

(declare-fun c!646324 () Bool)

(assert (=> b!3732906 (= c!646324 ((_ is Union!10933) (ite c!646279 (regOne!22379 r!26968) (regTwo!22378 r!26968))))))

(declare-fun d!1090916 () Bool)

(declare-fun c!646321 () Bool)

(assert (=> d!1090916 (= c!646321 (or ((_ is EmptyExpr!10933) (ite c!646279 (regOne!22379 r!26968) (regTwo!22378 r!26968))) ((_ is EmptyLang!10933) (ite c!646279 (regOne!22379 r!26968) (regTwo!22378 r!26968)))))))

(declare-fun e!2309322 () List!39814)

(assert (=> d!1090916 (= (usedCharacters!1196 (ite c!646279 (regOne!22379 r!26968) (regTwo!22378 r!26968))) e!2309322)))

(declare-fun c!646323 () Bool)

(declare-fun call!272938 () List!39814)

(declare-fun bm!272933 () Bool)

(assert (=> bm!272933 (= call!272938 (usedCharacters!1196 (ite c!646323 (reg!11262 (ite c!646279 (regOne!22379 r!26968) (regTwo!22378 r!26968))) (ite c!646324 (regTwo!22379 (ite c!646279 (regOne!22379 r!26968) (regTwo!22378 r!26968))) (regOne!22378 (ite c!646279 (regOne!22379 r!26968) (regTwo!22378 r!26968)))))))))

(declare-fun bm!272934 () Bool)

(declare-fun call!272940 () List!39814)

(assert (=> bm!272934 (= call!272940 (usedCharacters!1196 (ite c!646324 (regOne!22379 (ite c!646279 (regOne!22379 r!26968) (regTwo!22378 r!26968))) (regTwo!22378 (ite c!646279 (regOne!22379 r!26968) (regTwo!22378 r!26968))))))))

(declare-fun bm!272935 () Bool)

(declare-fun call!272941 () List!39814)

(assert (=> bm!272935 (= call!272941 call!272938)))

(declare-fun b!3732907 () Bool)

(declare-fun call!272939 () List!39814)

(assert (=> b!3732907 (= e!2309323 call!272939)))

(declare-fun b!3732908 () Bool)

(assert (=> b!3732908 (= e!2309322 Nil!39690)))

(declare-fun b!3732909 () Bool)

(assert (=> b!3732909 (= c!646323 ((_ is Star!10933) (ite c!646279 (regOne!22379 r!26968) (regTwo!22378 r!26968))))))

(assert (=> b!3732909 (= e!2309325 e!2309324)))

(declare-fun b!3732910 () Bool)

(assert (=> b!3732910 (= e!2309322 e!2309325)))

(declare-fun c!646322 () Bool)

(assert (=> b!3732910 (= c!646322 ((_ is ElementMatch!10933) (ite c!646279 (regOne!22379 r!26968) (regTwo!22378 r!26968))))))

(declare-fun b!3732911 () Bool)

(assert (=> b!3732911 (= e!2309323 call!272939)))

(declare-fun b!3732912 () Bool)

(assert (=> b!3732912 (= e!2309324 call!272938)))

(declare-fun bm!272936 () Bool)

(assert (=> bm!272936 (= call!272939 (++!9857 (ite c!646324 call!272940 call!272941) (ite c!646324 call!272941 call!272940)))))

(assert (= (and d!1090916 c!646321) b!3732908))

(assert (= (and d!1090916 (not c!646321)) b!3732910))

(assert (= (and b!3732910 c!646322) b!3732905))

(assert (= (and b!3732910 (not c!646322)) b!3732909))

(assert (= (and b!3732909 c!646323) b!3732912))

(assert (= (and b!3732909 (not c!646323)) b!3732906))

(assert (= (and b!3732906 c!646324) b!3732911))

(assert (= (and b!3732906 (not c!646324)) b!3732907))

(assert (= (or b!3732911 b!3732907) bm!272934))

(assert (= (or b!3732911 b!3732907) bm!272935))

(assert (= (or b!3732911 b!3732907) bm!272936))

(assert (= (or b!3732912 bm!272935) bm!272933))

(declare-fun m!4231223 () Bool)

(assert (=> bm!272933 m!4231223))

(declare-fun m!4231225 () Bool)

(assert (=> bm!272934 m!4231225))

(declare-fun m!4231227 () Bool)

(assert (=> bm!272936 m!4231227))

(assert (=> bm!272893 d!1090916))

(declare-fun b!3732913 () Bool)

(declare-fun e!2309327 () Bool)

(declare-fun e!2309332 () Bool)

(assert (=> b!3732913 (= e!2309327 e!2309332)))

(declare-fun res!1515183 () Bool)

(assert (=> b!3732913 (=> (not res!1515183) (not e!2309332))))

(declare-fun call!272944 () Bool)

(assert (=> b!3732913 (= res!1515183 call!272944)))

(declare-fun b!3732914 () Bool)

(declare-fun e!2309331 () Bool)

(declare-fun call!272942 () Bool)

(assert (=> b!3732914 (= e!2309331 call!272942)))

(declare-fun bm!272937 () Bool)

(declare-fun call!272943 () Bool)

(assert (=> bm!272937 (= call!272943 call!272942)))

(declare-fun d!1090920 () Bool)

(declare-fun res!1515185 () Bool)

(declare-fun e!2309326 () Bool)

(assert (=> d!1090920 (=> res!1515185 e!2309326)))

(assert (=> d!1090920 (= res!1515185 ((_ is ElementMatch!10933) (ite c!646274 (regOne!22379 r!26968) (regOne!22378 r!26968))))))

(assert (=> d!1090920 (= (validRegex!5040 (ite c!646274 (regOne!22379 r!26968) (regOne!22378 r!26968))) e!2309326)))

(declare-fun b!3732915 () Bool)

(declare-fun res!1515187 () Bool)

(assert (=> b!3732915 (=> res!1515187 e!2309327)))

(assert (=> b!3732915 (= res!1515187 (not ((_ is Concat!17204) (ite c!646274 (regOne!22379 r!26968) (regOne!22378 r!26968)))))))

(declare-fun e!2309328 () Bool)

(assert (=> b!3732915 (= e!2309328 e!2309327)))

(declare-fun bm!272938 () Bool)

(declare-fun c!646325 () Bool)

(assert (=> bm!272938 (= call!272944 (validRegex!5040 (ite c!646325 (regOne!22379 (ite c!646274 (regOne!22379 r!26968) (regOne!22378 r!26968))) (regOne!22378 (ite c!646274 (regOne!22379 r!26968) (regOne!22378 r!26968))))))))

(declare-fun b!3732916 () Bool)

(declare-fun e!2309330 () Bool)

(assert (=> b!3732916 (= e!2309326 e!2309330)))

(declare-fun c!646326 () Bool)

(assert (=> b!3732916 (= c!646326 ((_ is Star!10933) (ite c!646274 (regOne!22379 r!26968) (regOne!22378 r!26968))))))

(declare-fun b!3732917 () Bool)

(assert (=> b!3732917 (= e!2309332 call!272943)))

(declare-fun b!3732918 () Bool)

(declare-fun res!1515184 () Bool)

(declare-fun e!2309329 () Bool)

(assert (=> b!3732918 (=> (not res!1515184) (not e!2309329))))

(assert (=> b!3732918 (= res!1515184 call!272944)))

(assert (=> b!3732918 (= e!2309328 e!2309329)))

(declare-fun bm!272939 () Bool)

(assert (=> bm!272939 (= call!272942 (validRegex!5040 (ite c!646326 (reg!11262 (ite c!646274 (regOne!22379 r!26968) (regOne!22378 r!26968))) (ite c!646325 (regTwo!22379 (ite c!646274 (regOne!22379 r!26968) (regOne!22378 r!26968))) (regTwo!22378 (ite c!646274 (regOne!22379 r!26968) (regOne!22378 r!26968)))))))))

(declare-fun b!3732919 () Bool)

(assert (=> b!3732919 (= e!2309330 e!2309328)))

(assert (=> b!3732919 (= c!646325 ((_ is Union!10933) (ite c!646274 (regOne!22379 r!26968) (regOne!22378 r!26968))))))

(declare-fun b!3732920 () Bool)

(assert (=> b!3732920 (= e!2309329 call!272943)))

(declare-fun b!3732921 () Bool)

(assert (=> b!3732921 (= e!2309330 e!2309331)))

(declare-fun res!1515186 () Bool)

(assert (=> b!3732921 (= res!1515186 (not (nullable!3841 (reg!11262 (ite c!646274 (regOne!22379 r!26968) (regOne!22378 r!26968))))))))

(assert (=> b!3732921 (=> (not res!1515186) (not e!2309331))))

(assert (= (and d!1090920 (not res!1515185)) b!3732916))

(assert (= (and b!3732916 c!646326) b!3732921))

(assert (= (and b!3732916 (not c!646326)) b!3732919))

(assert (= (and b!3732921 res!1515186) b!3732914))

(assert (= (and b!3732919 c!646325) b!3732918))

(assert (= (and b!3732919 (not c!646325)) b!3732915))

(assert (= (and b!3732918 res!1515184) b!3732920))

(assert (= (and b!3732915 (not res!1515187)) b!3732913))

(assert (= (and b!3732913 res!1515183) b!3732917))

(assert (= (or b!3732920 b!3732917) bm!272937))

(assert (= (or b!3732918 b!3732913) bm!272938))

(assert (= (or b!3732914 bm!272937) bm!272939))

(declare-fun m!4231229 () Bool)

(assert (=> bm!272938 m!4231229))

(declare-fun m!4231231 () Bool)

(assert (=> bm!272939 m!4231231))

(declare-fun m!4231233 () Bool)

(assert (=> b!3732921 m!4231233))

(assert (=> bm!272890 d!1090920))

(declare-fun e!2309338 () List!39814)

(declare-fun b!3732926 () Bool)

(assert (=> b!3732926 (= e!2309338 (Cons!39690 (c!646191 (ite c!646278 (reg!11262 r!26968) (ite c!646279 (regTwo!22379 r!26968) (regOne!22378 r!26968)))) Nil!39690))))

(declare-fun b!3732927 () Bool)

(declare-fun e!2309337 () List!39814)

(declare-fun e!2309336 () List!39814)

(assert (=> b!3732927 (= e!2309337 e!2309336)))

(declare-fun c!646332 () Bool)

(assert (=> b!3732927 (= c!646332 ((_ is Union!10933) (ite c!646278 (reg!11262 r!26968) (ite c!646279 (regTwo!22379 r!26968) (regOne!22378 r!26968)))))))

(declare-fun c!646329 () Bool)

(declare-fun d!1090922 () Bool)

(assert (=> d!1090922 (= c!646329 (or ((_ is EmptyExpr!10933) (ite c!646278 (reg!11262 r!26968) (ite c!646279 (regTwo!22379 r!26968) (regOne!22378 r!26968)))) ((_ is EmptyLang!10933) (ite c!646278 (reg!11262 r!26968) (ite c!646279 (regTwo!22379 r!26968) (regOne!22378 r!26968))))))))

(declare-fun e!2309335 () List!39814)

(assert (=> d!1090922 (= (usedCharacters!1196 (ite c!646278 (reg!11262 r!26968) (ite c!646279 (regTwo!22379 r!26968) (regOne!22378 r!26968)))) e!2309335)))

(declare-fun c!646331 () Bool)

(declare-fun bm!272940 () Bool)

(declare-fun call!272945 () List!39814)

(assert (=> bm!272940 (= call!272945 (usedCharacters!1196 (ite c!646331 (reg!11262 (ite c!646278 (reg!11262 r!26968) (ite c!646279 (regTwo!22379 r!26968) (regOne!22378 r!26968)))) (ite c!646332 (regTwo!22379 (ite c!646278 (reg!11262 r!26968) (ite c!646279 (regTwo!22379 r!26968) (regOne!22378 r!26968)))) (regOne!22378 (ite c!646278 (reg!11262 r!26968) (ite c!646279 (regTwo!22379 r!26968) (regOne!22378 r!26968))))))))))

(declare-fun bm!272941 () Bool)

(declare-fun call!272947 () List!39814)

(assert (=> bm!272941 (= call!272947 (usedCharacters!1196 (ite c!646332 (regOne!22379 (ite c!646278 (reg!11262 r!26968) (ite c!646279 (regTwo!22379 r!26968) (regOne!22378 r!26968)))) (regTwo!22378 (ite c!646278 (reg!11262 r!26968) (ite c!646279 (regTwo!22379 r!26968) (regOne!22378 r!26968)))))))))

(declare-fun bm!272942 () Bool)

(declare-fun call!272948 () List!39814)

(assert (=> bm!272942 (= call!272948 call!272945)))

(declare-fun b!3732928 () Bool)

(declare-fun call!272946 () List!39814)

(assert (=> b!3732928 (= e!2309336 call!272946)))

(declare-fun b!3732929 () Bool)

(assert (=> b!3732929 (= e!2309335 Nil!39690)))

(declare-fun b!3732930 () Bool)

(assert (=> b!3732930 (= c!646331 ((_ is Star!10933) (ite c!646278 (reg!11262 r!26968) (ite c!646279 (regTwo!22379 r!26968) (regOne!22378 r!26968)))))))

(assert (=> b!3732930 (= e!2309338 e!2309337)))

(declare-fun b!3732931 () Bool)

(assert (=> b!3732931 (= e!2309335 e!2309338)))

(declare-fun c!646330 () Bool)

(assert (=> b!3732931 (= c!646330 ((_ is ElementMatch!10933) (ite c!646278 (reg!11262 r!26968) (ite c!646279 (regTwo!22379 r!26968) (regOne!22378 r!26968)))))))

(declare-fun b!3732932 () Bool)

(assert (=> b!3732932 (= e!2309336 call!272946)))

(declare-fun b!3732933 () Bool)

(assert (=> b!3732933 (= e!2309337 call!272945)))

(declare-fun bm!272943 () Bool)

(assert (=> bm!272943 (= call!272946 (++!9857 (ite c!646332 call!272947 call!272948) (ite c!646332 call!272948 call!272947)))))

(assert (= (and d!1090922 c!646329) b!3732929))

(assert (= (and d!1090922 (not c!646329)) b!3732931))

(assert (= (and b!3732931 c!646330) b!3732926))

(assert (= (and b!3732931 (not c!646330)) b!3732930))

(assert (= (and b!3732930 c!646331) b!3732933))

(assert (= (and b!3732930 (not c!646331)) b!3732927))

(assert (= (and b!3732927 c!646332) b!3732932))

(assert (= (and b!3732927 (not c!646332)) b!3732928))

(assert (= (or b!3732932 b!3732928) bm!272941))

(assert (= (or b!3732932 b!3732928) bm!272942))

(assert (= (or b!3732932 b!3732928) bm!272943))

(assert (= (or b!3732933 bm!272942) bm!272940))

(declare-fun m!4231235 () Bool)

(assert (=> bm!272940 m!4231235))

(declare-fun m!4231237 () Bool)

(assert (=> bm!272941 m!4231237))

(declare-fun m!4231239 () Bool)

(assert (=> bm!272943 m!4231239))

(assert (=> bm!272892 d!1090922))

(declare-fun d!1090924 () Bool)

(assert (=> d!1090924 (= (nullable!3841 (reg!11262 (regTwo!22378 r!26968))) (nullableFct!1094 (reg!11262 (regTwo!22378 r!26968))))))

(declare-fun bs!575119 () Bool)

(assert (= bs!575119 d!1090924))

(declare-fun m!4231245 () Bool)

(assert (=> bs!575119 m!4231245))

(assert (=> b!3732636 d!1090924))

(declare-fun d!1090928 () Bool)

(declare-fun c!646334 () Bool)

(assert (=> d!1090928 (= c!646334 ((_ is Nil!39690) (usedCharacters!1196 r!26968)))))

(declare-fun e!2309340 () (InoxSet C!22052))

(assert (=> d!1090928 (= (content!5790 (usedCharacters!1196 r!26968)) e!2309340)))

(declare-fun b!3732936 () Bool)

(assert (=> b!3732936 (= e!2309340 ((as const (Array C!22052 Bool)) false))))

(declare-fun b!3732937 () Bool)

(assert (=> b!3732937 (= e!2309340 ((_ map or) (store ((as const (Array C!22052 Bool)) false) (h!45110 (usedCharacters!1196 r!26968)) true) (content!5790 (t!302497 (usedCharacters!1196 r!26968)))))))

(assert (= (and d!1090928 c!646334) b!3732936))

(assert (= (and d!1090928 (not c!646334)) b!3732937))

(declare-fun m!4231247 () Bool)

(assert (=> b!3732937 m!4231247))

(assert (=> b!3732937 m!4231199))

(assert (=> d!1090872 d!1090928))

(declare-fun lt!1298782 () Bool)

(declare-fun d!1090930 () Bool)

(assert (=> d!1090930 (= lt!1298782 (select (content!5790 (t!302497 (usedCharacters!1196 (derivativeStep!3368 (regOne!22378 r!26968) c!13797)))) cNot!42))))

(declare-fun e!2309349 () Bool)

(assert (=> d!1090930 (= lt!1298782 e!2309349)))

(declare-fun res!1515194 () Bool)

(assert (=> d!1090930 (=> (not res!1515194) (not e!2309349))))

(assert (=> d!1090930 (= res!1515194 ((_ is Cons!39690) (t!302497 (usedCharacters!1196 (derivativeStep!3368 (regOne!22378 r!26968) c!13797)))))))

(assert (=> d!1090930 (= (contains!8026 (t!302497 (usedCharacters!1196 (derivativeStep!3368 (regOne!22378 r!26968) c!13797))) cNot!42) lt!1298782)))

(declare-fun b!3732947 () Bool)

(declare-fun e!2309348 () Bool)

(assert (=> b!3732947 (= e!2309349 e!2309348)))

(declare-fun res!1515193 () Bool)

(assert (=> b!3732947 (=> res!1515193 e!2309348)))

(assert (=> b!3732947 (= res!1515193 (= (h!45110 (t!302497 (usedCharacters!1196 (derivativeStep!3368 (regOne!22378 r!26968) c!13797)))) cNot!42))))

(declare-fun b!3732948 () Bool)

(assert (=> b!3732948 (= e!2309348 (contains!8026 (t!302497 (t!302497 (usedCharacters!1196 (derivativeStep!3368 (regOne!22378 r!26968) c!13797)))) cNot!42))))

(assert (= (and d!1090930 res!1515194) b!3732947))

(assert (= (and b!3732947 (not res!1515193)) b!3732948))

(assert (=> d!1090930 m!4231133))

(declare-fun m!4231249 () Bool)

(assert (=> d!1090930 m!4231249))

(declare-fun m!4231251 () Bool)

(assert (=> b!3732948 m!4231251))

(assert (=> b!3732669 d!1090930))

(declare-fun b!3732949 () Bool)

(declare-fun e!2309353 () List!39814)

(assert (=> b!3732949 (= e!2309353 (Cons!39690 (c!646191 (ite c!646236 (regOne!22379 (derivativeStep!3368 (regOne!22378 r!26968) c!13797)) (regTwo!22378 (derivativeStep!3368 (regOne!22378 r!26968) c!13797)))) Nil!39690))))

(declare-fun b!3732950 () Bool)

(declare-fun e!2309352 () List!39814)

(declare-fun e!2309351 () List!39814)

(assert (=> b!3732950 (= e!2309352 e!2309351)))

(declare-fun c!646340 () Bool)

(assert (=> b!3732950 (= c!646340 ((_ is Union!10933) (ite c!646236 (regOne!22379 (derivativeStep!3368 (regOne!22378 r!26968) c!13797)) (regTwo!22378 (derivativeStep!3368 (regOne!22378 r!26968) c!13797)))))))

(declare-fun c!646337 () Bool)

(declare-fun d!1090932 () Bool)

(assert (=> d!1090932 (= c!646337 (or ((_ is EmptyExpr!10933) (ite c!646236 (regOne!22379 (derivativeStep!3368 (regOne!22378 r!26968) c!13797)) (regTwo!22378 (derivativeStep!3368 (regOne!22378 r!26968) c!13797)))) ((_ is EmptyLang!10933) (ite c!646236 (regOne!22379 (derivativeStep!3368 (regOne!22378 r!26968) c!13797)) (regTwo!22378 (derivativeStep!3368 (regOne!22378 r!26968) c!13797))))))))

(declare-fun e!2309350 () List!39814)

(assert (=> d!1090932 (= (usedCharacters!1196 (ite c!646236 (regOne!22379 (derivativeStep!3368 (regOne!22378 r!26968) c!13797)) (regTwo!22378 (derivativeStep!3368 (regOne!22378 r!26968) c!13797)))) e!2309350)))

(declare-fun c!646339 () Bool)

(declare-fun bm!272947 () Bool)

(declare-fun call!272952 () List!39814)

(assert (=> bm!272947 (= call!272952 (usedCharacters!1196 (ite c!646339 (reg!11262 (ite c!646236 (regOne!22379 (derivativeStep!3368 (regOne!22378 r!26968) c!13797)) (regTwo!22378 (derivativeStep!3368 (regOne!22378 r!26968) c!13797)))) (ite c!646340 (regTwo!22379 (ite c!646236 (regOne!22379 (derivativeStep!3368 (regOne!22378 r!26968) c!13797)) (regTwo!22378 (derivativeStep!3368 (regOne!22378 r!26968) c!13797)))) (regOne!22378 (ite c!646236 (regOne!22379 (derivativeStep!3368 (regOne!22378 r!26968) c!13797)) (regTwo!22378 (derivativeStep!3368 (regOne!22378 r!26968) c!13797))))))))))

(declare-fun bm!272948 () Bool)

(declare-fun call!272954 () List!39814)

(assert (=> bm!272948 (= call!272954 (usedCharacters!1196 (ite c!646340 (regOne!22379 (ite c!646236 (regOne!22379 (derivativeStep!3368 (regOne!22378 r!26968) c!13797)) (regTwo!22378 (derivativeStep!3368 (regOne!22378 r!26968) c!13797)))) (regTwo!22378 (ite c!646236 (regOne!22379 (derivativeStep!3368 (regOne!22378 r!26968) c!13797)) (regTwo!22378 (derivativeStep!3368 (regOne!22378 r!26968) c!13797)))))))))

(declare-fun bm!272949 () Bool)

(declare-fun call!272955 () List!39814)

(assert (=> bm!272949 (= call!272955 call!272952)))

(declare-fun b!3732951 () Bool)

(declare-fun call!272953 () List!39814)

(assert (=> b!3732951 (= e!2309351 call!272953)))

(declare-fun b!3732952 () Bool)

(assert (=> b!3732952 (= e!2309350 Nil!39690)))

(declare-fun b!3732953 () Bool)

(assert (=> b!3732953 (= c!646339 ((_ is Star!10933) (ite c!646236 (regOne!22379 (derivativeStep!3368 (regOne!22378 r!26968) c!13797)) (regTwo!22378 (derivativeStep!3368 (regOne!22378 r!26968) c!13797)))))))

(assert (=> b!3732953 (= e!2309353 e!2309352)))

(declare-fun b!3732954 () Bool)

(assert (=> b!3732954 (= e!2309350 e!2309353)))

(declare-fun c!646338 () Bool)

(assert (=> b!3732954 (= c!646338 ((_ is ElementMatch!10933) (ite c!646236 (regOne!22379 (derivativeStep!3368 (regOne!22378 r!26968) c!13797)) (regTwo!22378 (derivativeStep!3368 (regOne!22378 r!26968) c!13797)))))))

(declare-fun b!3732955 () Bool)

(assert (=> b!3732955 (= e!2309351 call!272953)))

(declare-fun b!3732956 () Bool)

(assert (=> b!3732956 (= e!2309352 call!272952)))

(declare-fun bm!272950 () Bool)

(assert (=> bm!272950 (= call!272953 (++!9857 (ite c!646340 call!272954 call!272955) (ite c!646340 call!272955 call!272954)))))

(assert (= (and d!1090932 c!646337) b!3732952))

(assert (= (and d!1090932 (not c!646337)) b!3732954))

(assert (= (and b!3732954 c!646338) b!3732949))

(assert (= (and b!3732954 (not c!646338)) b!3732953))

(assert (= (and b!3732953 c!646339) b!3732956))

(assert (= (and b!3732953 (not c!646339)) b!3732950))

(assert (= (and b!3732950 c!646340) b!3732955))

(assert (= (and b!3732950 (not c!646340)) b!3732951))

(assert (= (or b!3732955 b!3732951) bm!272948))

(assert (= (or b!3732955 b!3732951) bm!272949))

(assert (= (or b!3732955 b!3732951) bm!272950))

(assert (= (or b!3732956 bm!272949) bm!272947))

(declare-fun m!4231259 () Bool)

(assert (=> bm!272947 m!4231259))

(declare-fun m!4231261 () Bool)

(assert (=> bm!272948 m!4231261))

(declare-fun m!4231263 () Bool)

(assert (=> bm!272950 m!4231263))

(assert (=> bm!272850 d!1090932))

(declare-fun e!2309364 () List!39814)

(declare-fun b!3732966 () Bool)

(assert (=> b!3732966 (= e!2309364 (Cons!39690 (c!646191 (ite c!646235 (reg!11262 (derivativeStep!3368 (regOne!22378 r!26968) c!13797)) (ite c!646236 (regTwo!22379 (derivativeStep!3368 (regOne!22378 r!26968) c!13797)) (regOne!22378 (derivativeStep!3368 (regOne!22378 r!26968) c!13797))))) Nil!39690))))

(declare-fun b!3732967 () Bool)

(declare-fun e!2309363 () List!39814)

(declare-fun e!2309362 () List!39814)

(assert (=> b!3732967 (= e!2309363 e!2309362)))

(declare-fun c!646346 () Bool)

(assert (=> b!3732967 (= c!646346 ((_ is Union!10933) (ite c!646235 (reg!11262 (derivativeStep!3368 (regOne!22378 r!26968) c!13797)) (ite c!646236 (regTwo!22379 (derivativeStep!3368 (regOne!22378 r!26968) c!13797)) (regOne!22378 (derivativeStep!3368 (regOne!22378 r!26968) c!13797))))))))

(declare-fun c!646343 () Bool)

(declare-fun d!1090936 () Bool)

(assert (=> d!1090936 (= c!646343 (or ((_ is EmptyExpr!10933) (ite c!646235 (reg!11262 (derivativeStep!3368 (regOne!22378 r!26968) c!13797)) (ite c!646236 (regTwo!22379 (derivativeStep!3368 (regOne!22378 r!26968) c!13797)) (regOne!22378 (derivativeStep!3368 (regOne!22378 r!26968) c!13797))))) ((_ is EmptyLang!10933) (ite c!646235 (reg!11262 (derivativeStep!3368 (regOne!22378 r!26968) c!13797)) (ite c!646236 (regTwo!22379 (derivativeStep!3368 (regOne!22378 r!26968) c!13797)) (regOne!22378 (derivativeStep!3368 (regOne!22378 r!26968) c!13797)))))))))

(declare-fun e!2309361 () List!39814)

(assert (=> d!1090936 (= (usedCharacters!1196 (ite c!646235 (reg!11262 (derivativeStep!3368 (regOne!22378 r!26968) c!13797)) (ite c!646236 (regTwo!22379 (derivativeStep!3368 (regOne!22378 r!26968) c!13797)) (regOne!22378 (derivativeStep!3368 (regOne!22378 r!26968) c!13797))))) e!2309361)))

(declare-fun c!646345 () Bool)

(declare-fun bm!272954 () Bool)

(declare-fun call!272959 () List!39814)

(assert (=> bm!272954 (= call!272959 (usedCharacters!1196 (ite c!646345 (reg!11262 (ite c!646235 (reg!11262 (derivativeStep!3368 (regOne!22378 r!26968) c!13797)) (ite c!646236 (regTwo!22379 (derivativeStep!3368 (regOne!22378 r!26968) c!13797)) (regOne!22378 (derivativeStep!3368 (regOne!22378 r!26968) c!13797))))) (ite c!646346 (regTwo!22379 (ite c!646235 (reg!11262 (derivativeStep!3368 (regOne!22378 r!26968) c!13797)) (ite c!646236 (regTwo!22379 (derivativeStep!3368 (regOne!22378 r!26968) c!13797)) (regOne!22378 (derivativeStep!3368 (regOne!22378 r!26968) c!13797))))) (regOne!22378 (ite c!646235 (reg!11262 (derivativeStep!3368 (regOne!22378 r!26968) c!13797)) (ite c!646236 (regTwo!22379 (derivativeStep!3368 (regOne!22378 r!26968) c!13797)) (regOne!22378 (derivativeStep!3368 (regOne!22378 r!26968) c!13797)))))))))))

(declare-fun bm!272955 () Bool)

(declare-fun call!272961 () List!39814)

(assert (=> bm!272955 (= call!272961 (usedCharacters!1196 (ite c!646346 (regOne!22379 (ite c!646235 (reg!11262 (derivativeStep!3368 (regOne!22378 r!26968) c!13797)) (ite c!646236 (regTwo!22379 (derivativeStep!3368 (regOne!22378 r!26968) c!13797)) (regOne!22378 (derivativeStep!3368 (regOne!22378 r!26968) c!13797))))) (regTwo!22378 (ite c!646235 (reg!11262 (derivativeStep!3368 (regOne!22378 r!26968) c!13797)) (ite c!646236 (regTwo!22379 (derivativeStep!3368 (regOne!22378 r!26968) c!13797)) (regOne!22378 (derivativeStep!3368 (regOne!22378 r!26968) c!13797))))))))))

(declare-fun bm!272956 () Bool)

(declare-fun call!272962 () List!39814)

(assert (=> bm!272956 (= call!272962 call!272959)))

(declare-fun b!3732968 () Bool)

(declare-fun call!272960 () List!39814)

(assert (=> b!3732968 (= e!2309362 call!272960)))

(declare-fun b!3732969 () Bool)

(assert (=> b!3732969 (= e!2309361 Nil!39690)))

(declare-fun b!3732970 () Bool)

(assert (=> b!3732970 (= c!646345 ((_ is Star!10933) (ite c!646235 (reg!11262 (derivativeStep!3368 (regOne!22378 r!26968) c!13797)) (ite c!646236 (regTwo!22379 (derivativeStep!3368 (regOne!22378 r!26968) c!13797)) (regOne!22378 (derivativeStep!3368 (regOne!22378 r!26968) c!13797))))))))

(assert (=> b!3732970 (= e!2309364 e!2309363)))

(declare-fun b!3732971 () Bool)

(assert (=> b!3732971 (= e!2309361 e!2309364)))

(declare-fun c!646344 () Bool)

(assert (=> b!3732971 (= c!646344 ((_ is ElementMatch!10933) (ite c!646235 (reg!11262 (derivativeStep!3368 (regOne!22378 r!26968) c!13797)) (ite c!646236 (regTwo!22379 (derivativeStep!3368 (regOne!22378 r!26968) c!13797)) (regOne!22378 (derivativeStep!3368 (regOne!22378 r!26968) c!13797))))))))

(declare-fun b!3732972 () Bool)

(assert (=> b!3732972 (= e!2309362 call!272960)))

(declare-fun b!3732973 () Bool)

(assert (=> b!3732973 (= e!2309363 call!272959)))

(declare-fun bm!272957 () Bool)

(assert (=> bm!272957 (= call!272960 (++!9857 (ite c!646346 call!272961 call!272962) (ite c!646346 call!272962 call!272961)))))

(assert (= (and d!1090936 c!646343) b!3732969))

(assert (= (and d!1090936 (not c!646343)) b!3732971))

(assert (= (and b!3732971 c!646344) b!3732966))

(assert (= (and b!3732971 (not c!646344)) b!3732970))

(assert (= (and b!3732970 c!646345) b!3732973))

(assert (= (and b!3732970 (not c!646345)) b!3732967))

(assert (= (and b!3732967 c!646346) b!3732972))

(assert (= (and b!3732967 (not c!646346)) b!3732968))

(assert (= (or b!3732972 b!3732968) bm!272955))

(assert (= (or b!3732972 b!3732968) bm!272956))

(assert (= (or b!3732972 b!3732968) bm!272957))

(assert (= (or b!3732973 bm!272956) bm!272954))

(declare-fun m!4231271 () Bool)

(assert (=> bm!272954 m!4231271))

(declare-fun m!4231273 () Bool)

(assert (=> bm!272955 m!4231273))

(declare-fun m!4231275 () Bool)

(assert (=> bm!272957 m!4231275))

(assert (=> bm!272849 d!1090936))

(declare-fun b!3732985 () Bool)

(declare-fun e!2309369 () Bool)

(declare-fun tp!1136108 () Bool)

(declare-fun tp!1136106 () Bool)

(assert (=> b!3732985 (= e!2309369 (and tp!1136108 tp!1136106))))

(declare-fun b!3732983 () Bool)

(declare-fun tp!1136105 () Bool)

(declare-fun tp!1136109 () Bool)

(assert (=> b!3732983 (= e!2309369 (and tp!1136105 tp!1136109))))

(declare-fun b!3732984 () Bool)

(declare-fun tp!1136107 () Bool)

(assert (=> b!3732984 (= e!2309369 tp!1136107)))

(assert (=> b!3732758 (= tp!1136088 e!2309369)))

(declare-fun b!3732982 () Bool)

(assert (=> b!3732982 (= e!2309369 tp_is_empty!18881)))

(assert (= (and b!3732758 ((_ is ElementMatch!10933) (regOne!22379 (regOne!22379 r!26968)))) b!3732982))

(assert (= (and b!3732758 ((_ is Concat!17204) (regOne!22379 (regOne!22379 r!26968)))) b!3732983))

(assert (= (and b!3732758 ((_ is Star!10933) (regOne!22379 (regOne!22379 r!26968)))) b!3732984))

(assert (= (and b!3732758 ((_ is Union!10933) (regOne!22379 (regOne!22379 r!26968)))) b!3732985))

(declare-fun b!3732989 () Bool)

(declare-fun e!2309370 () Bool)

(declare-fun tp!1136113 () Bool)

(declare-fun tp!1136111 () Bool)

(assert (=> b!3732989 (= e!2309370 (and tp!1136113 tp!1136111))))

(declare-fun b!3732987 () Bool)

(declare-fun tp!1136110 () Bool)

(declare-fun tp!1136114 () Bool)

(assert (=> b!3732987 (= e!2309370 (and tp!1136110 tp!1136114))))

(declare-fun b!3732988 () Bool)

(declare-fun tp!1136112 () Bool)

(assert (=> b!3732988 (= e!2309370 tp!1136112)))

(assert (=> b!3732758 (= tp!1136086 e!2309370)))

(declare-fun b!3732986 () Bool)

(assert (=> b!3732986 (= e!2309370 tp_is_empty!18881)))

(assert (= (and b!3732758 ((_ is ElementMatch!10933) (regTwo!22379 (regOne!22379 r!26968)))) b!3732986))

(assert (= (and b!3732758 ((_ is Concat!17204) (regTwo!22379 (regOne!22379 r!26968)))) b!3732987))

(assert (= (and b!3732758 ((_ is Star!10933) (regTwo!22379 (regOne!22379 r!26968)))) b!3732988))

(assert (= (and b!3732758 ((_ is Union!10933) (regTwo!22379 (regOne!22379 r!26968)))) b!3732989))

(declare-fun b!3733001 () Bool)

(declare-fun e!2309375 () Bool)

(declare-fun tp!1136118 () Bool)

(declare-fun tp!1136116 () Bool)

(assert (=> b!3733001 (= e!2309375 (and tp!1136118 tp!1136116))))

(declare-fun b!3732999 () Bool)

(declare-fun tp!1136115 () Bool)

(declare-fun tp!1136119 () Bool)

(assert (=> b!3732999 (= e!2309375 (and tp!1136115 tp!1136119))))

(declare-fun b!3733000 () Bool)

(declare-fun tp!1136117 () Bool)

(assert (=> b!3733000 (= e!2309375 tp!1136117)))

(assert (=> b!3732753 (= tp!1136082 e!2309375)))

(declare-fun b!3732998 () Bool)

(assert (=> b!3732998 (= e!2309375 tp_is_empty!18881)))

(assert (= (and b!3732753 ((_ is ElementMatch!10933) (reg!11262 (reg!11262 r!26968)))) b!3732998))

(assert (= (and b!3732753 ((_ is Concat!17204) (reg!11262 (reg!11262 r!26968)))) b!3732999))

(assert (= (and b!3732753 ((_ is Star!10933) (reg!11262 (reg!11262 r!26968)))) b!3733000))

(assert (= (and b!3732753 ((_ is Union!10933) (reg!11262 (reg!11262 r!26968)))) b!3733001))

(declare-fun b!3733005 () Bool)

(declare-fun e!2309376 () Bool)

(declare-fun tp!1136123 () Bool)

(declare-fun tp!1136121 () Bool)

(assert (=> b!3733005 (= e!2309376 (and tp!1136123 tp!1136121))))

(declare-fun b!3733003 () Bool)

(declare-fun tp!1136120 () Bool)

(declare-fun tp!1136124 () Bool)

(assert (=> b!3733003 (= e!2309376 (and tp!1136120 tp!1136124))))

(declare-fun b!3733004 () Bool)

(declare-fun tp!1136122 () Bool)

(assert (=> b!3733004 (= e!2309376 tp!1136122)))

(assert (=> b!3732762 (= tp!1136093 e!2309376)))

(declare-fun b!3733002 () Bool)

(assert (=> b!3733002 (= e!2309376 tp_is_empty!18881)))

(assert (= (and b!3732762 ((_ is ElementMatch!10933) (regOne!22379 (regTwo!22379 r!26968)))) b!3733002))

(assert (= (and b!3732762 ((_ is Concat!17204) (regOne!22379 (regTwo!22379 r!26968)))) b!3733003))

(assert (= (and b!3732762 ((_ is Star!10933) (regOne!22379 (regTwo!22379 r!26968)))) b!3733004))

(assert (= (and b!3732762 ((_ is Union!10933) (regOne!22379 (regTwo!22379 r!26968)))) b!3733005))

(declare-fun b!3733009 () Bool)

(declare-fun e!2309377 () Bool)

(declare-fun tp!1136128 () Bool)

(declare-fun tp!1136126 () Bool)

(assert (=> b!3733009 (= e!2309377 (and tp!1136128 tp!1136126))))

(declare-fun b!3733007 () Bool)

(declare-fun tp!1136125 () Bool)

(declare-fun tp!1136129 () Bool)

(assert (=> b!3733007 (= e!2309377 (and tp!1136125 tp!1136129))))

(declare-fun b!3733008 () Bool)

(declare-fun tp!1136127 () Bool)

(assert (=> b!3733008 (= e!2309377 tp!1136127)))

(assert (=> b!3732762 (= tp!1136091 e!2309377)))

(declare-fun b!3733006 () Bool)

(assert (=> b!3733006 (= e!2309377 tp_is_empty!18881)))

(assert (= (and b!3732762 ((_ is ElementMatch!10933) (regTwo!22379 (regTwo!22379 r!26968)))) b!3733006))

(assert (= (and b!3732762 ((_ is Concat!17204) (regTwo!22379 (regTwo!22379 r!26968)))) b!3733007))

(assert (= (and b!3732762 ((_ is Star!10933) (regTwo!22379 (regTwo!22379 r!26968)))) b!3733008))

(assert (= (and b!3732762 ((_ is Union!10933) (regTwo!22379 (regTwo!22379 r!26968)))) b!3733009))

(declare-fun b!3733013 () Bool)

(declare-fun e!2309378 () Bool)

(declare-fun tp!1136133 () Bool)

(declare-fun tp!1136131 () Bool)

(assert (=> b!3733013 (= e!2309378 (and tp!1136133 tp!1136131))))

(declare-fun b!3733011 () Bool)

(declare-fun tp!1136130 () Bool)

(declare-fun tp!1136134 () Bool)

(assert (=> b!3733011 (= e!2309378 (and tp!1136130 tp!1136134))))

(declare-fun b!3733012 () Bool)

(declare-fun tp!1136132 () Bool)

(assert (=> b!3733012 (= e!2309378 tp!1136132)))

(assert (=> b!3732757 (= tp!1136087 e!2309378)))

(declare-fun b!3733010 () Bool)

(assert (=> b!3733010 (= e!2309378 tp_is_empty!18881)))

(assert (= (and b!3732757 ((_ is ElementMatch!10933) (reg!11262 (regOne!22379 r!26968)))) b!3733010))

(assert (= (and b!3732757 ((_ is Concat!17204) (reg!11262 (regOne!22379 r!26968)))) b!3733011))

(assert (= (and b!3732757 ((_ is Star!10933) (reg!11262 (regOne!22379 r!26968)))) b!3733012))

(assert (= (and b!3732757 ((_ is Union!10933) (reg!11262 (regOne!22379 r!26968)))) b!3733013))

(declare-fun b!3733027 () Bool)

(declare-fun e!2309384 () Bool)

(declare-fun tp!1136138 () Bool)

(declare-fun tp!1136136 () Bool)

(assert (=> b!3733027 (= e!2309384 (and tp!1136138 tp!1136136))))

(declare-fun b!3733024 () Bool)

(declare-fun tp!1136135 () Bool)

(declare-fun tp!1136139 () Bool)

(assert (=> b!3733024 (= e!2309384 (and tp!1136135 tp!1136139))))

(declare-fun b!3733025 () Bool)

(declare-fun tp!1136137 () Bool)

(assert (=> b!3733025 (= e!2309384 tp!1136137)))

(assert (=> b!3732754 (= tp!1136083 e!2309384)))

(declare-fun b!3733023 () Bool)

(assert (=> b!3733023 (= e!2309384 tp_is_empty!18881)))

(assert (= (and b!3732754 ((_ is ElementMatch!10933) (regOne!22379 (reg!11262 r!26968)))) b!3733023))

(assert (= (and b!3732754 ((_ is Concat!17204) (regOne!22379 (reg!11262 r!26968)))) b!3733024))

(assert (= (and b!3732754 ((_ is Star!10933) (regOne!22379 (reg!11262 r!26968)))) b!3733025))

(assert (= (and b!3732754 ((_ is Union!10933) (regOne!22379 (reg!11262 r!26968)))) b!3733027))

(declare-fun b!3733031 () Bool)

(declare-fun e!2309385 () Bool)

(declare-fun tp!1136143 () Bool)

(declare-fun tp!1136141 () Bool)

(assert (=> b!3733031 (= e!2309385 (and tp!1136143 tp!1136141))))

(declare-fun b!3733029 () Bool)

(declare-fun tp!1136140 () Bool)

(declare-fun tp!1136144 () Bool)

(assert (=> b!3733029 (= e!2309385 (and tp!1136140 tp!1136144))))

(declare-fun b!3733030 () Bool)

(declare-fun tp!1136142 () Bool)

(assert (=> b!3733030 (= e!2309385 tp!1136142)))

(assert (=> b!3732754 (= tp!1136081 e!2309385)))

(declare-fun b!3733028 () Bool)

(assert (=> b!3733028 (= e!2309385 tp_is_empty!18881)))

(assert (= (and b!3732754 ((_ is ElementMatch!10933) (regTwo!22379 (reg!11262 r!26968)))) b!3733028))

(assert (= (and b!3732754 ((_ is Concat!17204) (regTwo!22379 (reg!11262 r!26968)))) b!3733029))

(assert (= (and b!3732754 ((_ is Star!10933) (regTwo!22379 (reg!11262 r!26968)))) b!3733030))

(assert (= (and b!3732754 ((_ is Union!10933) (regTwo!22379 (reg!11262 r!26968)))) b!3733031))

(declare-fun b!3733035 () Bool)

(declare-fun e!2309386 () Bool)

(declare-fun tp!1136148 () Bool)

(declare-fun tp!1136146 () Bool)

(assert (=> b!3733035 (= e!2309386 (and tp!1136148 tp!1136146))))

(declare-fun b!3733033 () Bool)

(declare-fun tp!1136145 () Bool)

(declare-fun tp!1136149 () Bool)

(assert (=> b!3733033 (= e!2309386 (and tp!1136145 tp!1136149))))

(declare-fun b!3733034 () Bool)

(declare-fun tp!1136147 () Bool)

(assert (=> b!3733034 (= e!2309386 tp!1136147)))

(assert (=> b!3732768 (= tp!1136100 e!2309386)))

(declare-fun b!3733032 () Bool)

(assert (=> b!3733032 (= e!2309386 tp_is_empty!18881)))

(assert (= (and b!3732768 ((_ is ElementMatch!10933) (regOne!22378 (regTwo!22378 r!26968)))) b!3733032))

(assert (= (and b!3732768 ((_ is Concat!17204) (regOne!22378 (regTwo!22378 r!26968)))) b!3733033))

(assert (= (and b!3732768 ((_ is Star!10933) (regOne!22378 (regTwo!22378 r!26968)))) b!3733034))

(assert (= (and b!3732768 ((_ is Union!10933) (regOne!22378 (regTwo!22378 r!26968)))) b!3733035))

(declare-fun b!3733039 () Bool)

(declare-fun e!2309387 () Bool)

(declare-fun tp!1136153 () Bool)

(declare-fun tp!1136151 () Bool)

(assert (=> b!3733039 (= e!2309387 (and tp!1136153 tp!1136151))))

(declare-fun b!3733037 () Bool)

(declare-fun tp!1136150 () Bool)

(declare-fun tp!1136154 () Bool)

(assert (=> b!3733037 (= e!2309387 (and tp!1136150 tp!1136154))))

(declare-fun b!3733038 () Bool)

(declare-fun tp!1136152 () Bool)

(assert (=> b!3733038 (= e!2309387 tp!1136152)))

(assert (=> b!3732768 (= tp!1136104 e!2309387)))

(declare-fun b!3733036 () Bool)

(assert (=> b!3733036 (= e!2309387 tp_is_empty!18881)))

(assert (= (and b!3732768 ((_ is ElementMatch!10933) (regTwo!22378 (regTwo!22378 r!26968)))) b!3733036))

(assert (= (and b!3732768 ((_ is Concat!17204) (regTwo!22378 (regTwo!22378 r!26968)))) b!3733037))

(assert (= (and b!3732768 ((_ is Star!10933) (regTwo!22378 (regTwo!22378 r!26968)))) b!3733038))

(assert (= (and b!3732768 ((_ is Union!10933) (regTwo!22378 (regTwo!22378 r!26968)))) b!3733039))

(declare-fun b!3733043 () Bool)

(declare-fun e!2309388 () Bool)

(declare-fun tp!1136158 () Bool)

(declare-fun tp!1136156 () Bool)

(assert (=> b!3733043 (= e!2309388 (and tp!1136158 tp!1136156))))

(declare-fun b!3733041 () Bool)

(declare-fun tp!1136155 () Bool)

(declare-fun tp!1136159 () Bool)

(assert (=> b!3733041 (= e!2309388 (and tp!1136155 tp!1136159))))

(declare-fun b!3733042 () Bool)

(declare-fun tp!1136157 () Bool)

(assert (=> b!3733042 (= e!2309388 tp!1136157)))

(assert (=> b!3732760 (= tp!1136090 e!2309388)))

(declare-fun b!3733040 () Bool)

(assert (=> b!3733040 (= e!2309388 tp_is_empty!18881)))

(assert (= (and b!3732760 ((_ is ElementMatch!10933) (regOne!22378 (regTwo!22379 r!26968)))) b!3733040))

(assert (= (and b!3732760 ((_ is Concat!17204) (regOne!22378 (regTwo!22379 r!26968)))) b!3733041))

(assert (= (and b!3732760 ((_ is Star!10933) (regOne!22378 (regTwo!22379 r!26968)))) b!3733042))

(assert (= (and b!3732760 ((_ is Union!10933) (regOne!22378 (regTwo!22379 r!26968)))) b!3733043))

(declare-fun b!3733047 () Bool)

(declare-fun e!2309389 () Bool)

(declare-fun tp!1136163 () Bool)

(declare-fun tp!1136161 () Bool)

(assert (=> b!3733047 (= e!2309389 (and tp!1136163 tp!1136161))))

(declare-fun b!3733045 () Bool)

(declare-fun tp!1136160 () Bool)

(declare-fun tp!1136164 () Bool)

(assert (=> b!3733045 (= e!2309389 (and tp!1136160 tp!1136164))))

(declare-fun b!3733046 () Bool)

(declare-fun tp!1136162 () Bool)

(assert (=> b!3733046 (= e!2309389 tp!1136162)))

(assert (=> b!3732760 (= tp!1136094 e!2309389)))

(declare-fun b!3733044 () Bool)

(assert (=> b!3733044 (= e!2309389 tp_is_empty!18881)))

(assert (= (and b!3732760 ((_ is ElementMatch!10933) (regTwo!22378 (regTwo!22379 r!26968)))) b!3733044))

(assert (= (and b!3732760 ((_ is Concat!17204) (regTwo!22378 (regTwo!22379 r!26968)))) b!3733045))

(assert (= (and b!3732760 ((_ is Star!10933) (regTwo!22378 (regTwo!22379 r!26968)))) b!3733046))

(assert (= (and b!3732760 ((_ is Union!10933) (regTwo!22378 (regTwo!22379 r!26968)))) b!3733047))

(declare-fun b!3733053 () Bool)

(declare-fun e!2309391 () Bool)

(declare-fun tp!1136168 () Bool)

(declare-fun tp!1136166 () Bool)

(assert (=> b!3733053 (= e!2309391 (and tp!1136168 tp!1136166))))

(declare-fun b!3733051 () Bool)

(declare-fun tp!1136165 () Bool)

(declare-fun tp!1136169 () Bool)

(assert (=> b!3733051 (= e!2309391 (and tp!1136165 tp!1136169))))

(declare-fun b!3733052 () Bool)

(declare-fun tp!1136167 () Bool)

(assert (=> b!3733052 (= e!2309391 tp!1136167)))

(assert (=> b!3732769 (= tp!1136102 e!2309391)))

(declare-fun b!3733050 () Bool)

(assert (=> b!3733050 (= e!2309391 tp_is_empty!18881)))

(assert (= (and b!3732769 ((_ is ElementMatch!10933) (reg!11262 (regTwo!22378 r!26968)))) b!3733050))

(assert (= (and b!3732769 ((_ is Concat!17204) (reg!11262 (regTwo!22378 r!26968)))) b!3733051))

(assert (= (and b!3732769 ((_ is Star!10933) (reg!11262 (regTwo!22378 r!26968)))) b!3733052))

(assert (= (and b!3732769 ((_ is Union!10933) (reg!11262 (regTwo!22378 r!26968)))) b!3733053))

(declare-fun b!3733057 () Bool)

(declare-fun e!2309392 () Bool)

(declare-fun tp!1136173 () Bool)

(declare-fun tp!1136171 () Bool)

(assert (=> b!3733057 (= e!2309392 (and tp!1136173 tp!1136171))))

(declare-fun b!3733055 () Bool)

(declare-fun tp!1136170 () Bool)

(declare-fun tp!1136174 () Bool)

(assert (=> b!3733055 (= e!2309392 (and tp!1136170 tp!1136174))))

(declare-fun b!3733056 () Bool)

(declare-fun tp!1136172 () Bool)

(assert (=> b!3733056 (= e!2309392 tp!1136172)))

(assert (=> b!3732764 (= tp!1136095 e!2309392)))

(declare-fun b!3733054 () Bool)

(assert (=> b!3733054 (= e!2309392 tp_is_empty!18881)))

(assert (= (and b!3732764 ((_ is ElementMatch!10933) (regOne!22378 (regOne!22378 r!26968)))) b!3733054))

(assert (= (and b!3732764 ((_ is Concat!17204) (regOne!22378 (regOne!22378 r!26968)))) b!3733055))

(assert (= (and b!3732764 ((_ is Star!10933) (regOne!22378 (regOne!22378 r!26968)))) b!3733056))

(assert (= (and b!3732764 ((_ is Union!10933) (regOne!22378 (regOne!22378 r!26968)))) b!3733057))

(declare-fun b!3733063 () Bool)

(declare-fun e!2309394 () Bool)

(declare-fun tp!1136178 () Bool)

(declare-fun tp!1136176 () Bool)

(assert (=> b!3733063 (= e!2309394 (and tp!1136178 tp!1136176))))

(declare-fun b!3733061 () Bool)

(declare-fun tp!1136175 () Bool)

(declare-fun tp!1136179 () Bool)

(assert (=> b!3733061 (= e!2309394 (and tp!1136175 tp!1136179))))

(declare-fun b!3733062 () Bool)

(declare-fun tp!1136177 () Bool)

(assert (=> b!3733062 (= e!2309394 tp!1136177)))

(assert (=> b!3732764 (= tp!1136099 e!2309394)))

(declare-fun b!3733060 () Bool)

(assert (=> b!3733060 (= e!2309394 tp_is_empty!18881)))

(assert (= (and b!3732764 ((_ is ElementMatch!10933) (regTwo!22378 (regOne!22378 r!26968)))) b!3733060))

(assert (= (and b!3732764 ((_ is Concat!17204) (regTwo!22378 (regOne!22378 r!26968)))) b!3733061))

(assert (= (and b!3732764 ((_ is Star!10933) (regTwo!22378 (regOne!22378 r!26968)))) b!3733062))

(assert (= (and b!3732764 ((_ is Union!10933) (regTwo!22378 (regOne!22378 r!26968)))) b!3733063))

(declare-fun b!3733067 () Bool)

(declare-fun e!2309395 () Bool)

(declare-fun tp!1136183 () Bool)

(declare-fun tp!1136181 () Bool)

(assert (=> b!3733067 (= e!2309395 (and tp!1136183 tp!1136181))))

(declare-fun b!3733065 () Bool)

(declare-fun tp!1136180 () Bool)

(declare-fun tp!1136184 () Bool)

(assert (=> b!3733065 (= e!2309395 (and tp!1136180 tp!1136184))))

(declare-fun b!3733066 () Bool)

(declare-fun tp!1136182 () Bool)

(assert (=> b!3733066 (= e!2309395 tp!1136182)))

(assert (=> b!3732766 (= tp!1136098 e!2309395)))

(declare-fun b!3733064 () Bool)

(assert (=> b!3733064 (= e!2309395 tp_is_empty!18881)))

(assert (= (and b!3732766 ((_ is ElementMatch!10933) (regOne!22379 (regOne!22378 r!26968)))) b!3733064))

(assert (= (and b!3732766 ((_ is Concat!17204) (regOne!22379 (regOne!22378 r!26968)))) b!3733065))

(assert (= (and b!3732766 ((_ is Star!10933) (regOne!22379 (regOne!22378 r!26968)))) b!3733066))

(assert (= (and b!3732766 ((_ is Union!10933) (regOne!22379 (regOne!22378 r!26968)))) b!3733067))

(declare-fun b!3733071 () Bool)

(declare-fun e!2309396 () Bool)

(declare-fun tp!1136188 () Bool)

(declare-fun tp!1136186 () Bool)

(assert (=> b!3733071 (= e!2309396 (and tp!1136188 tp!1136186))))

(declare-fun b!3733069 () Bool)

(declare-fun tp!1136185 () Bool)

(declare-fun tp!1136189 () Bool)

(assert (=> b!3733069 (= e!2309396 (and tp!1136185 tp!1136189))))

(declare-fun b!3733070 () Bool)

(declare-fun tp!1136187 () Bool)

(assert (=> b!3733070 (= e!2309396 tp!1136187)))

(assert (=> b!3732766 (= tp!1136096 e!2309396)))

(declare-fun b!3733068 () Bool)

(assert (=> b!3733068 (= e!2309396 tp_is_empty!18881)))

(assert (= (and b!3732766 ((_ is ElementMatch!10933) (regTwo!22379 (regOne!22378 r!26968)))) b!3733068))

(assert (= (and b!3732766 ((_ is Concat!17204) (regTwo!22379 (regOne!22378 r!26968)))) b!3733069))

(assert (= (and b!3732766 ((_ is Star!10933) (regTwo!22379 (regOne!22378 r!26968)))) b!3733070))

(assert (= (and b!3732766 ((_ is Union!10933) (regTwo!22379 (regOne!22378 r!26968)))) b!3733071))

(declare-fun b!3733075 () Bool)

(declare-fun e!2309397 () Bool)

(declare-fun tp!1136193 () Bool)

(declare-fun tp!1136191 () Bool)

(assert (=> b!3733075 (= e!2309397 (and tp!1136193 tp!1136191))))

(declare-fun b!3733073 () Bool)

(declare-fun tp!1136190 () Bool)

(declare-fun tp!1136194 () Bool)

(assert (=> b!3733073 (= e!2309397 (and tp!1136190 tp!1136194))))

(declare-fun b!3733074 () Bool)

(declare-fun tp!1136192 () Bool)

(assert (=> b!3733074 (= e!2309397 tp!1136192)))

(assert (=> b!3732752 (= tp!1136080 e!2309397)))

(declare-fun b!3733072 () Bool)

(assert (=> b!3733072 (= e!2309397 tp_is_empty!18881)))

(assert (= (and b!3732752 ((_ is ElementMatch!10933) (regOne!22378 (reg!11262 r!26968)))) b!3733072))

(assert (= (and b!3732752 ((_ is Concat!17204) (regOne!22378 (reg!11262 r!26968)))) b!3733073))

(assert (= (and b!3732752 ((_ is Star!10933) (regOne!22378 (reg!11262 r!26968)))) b!3733074))

(assert (= (and b!3732752 ((_ is Union!10933) (regOne!22378 (reg!11262 r!26968)))) b!3733075))

(declare-fun b!3733079 () Bool)

(declare-fun e!2309398 () Bool)

(declare-fun tp!1136198 () Bool)

(declare-fun tp!1136196 () Bool)

(assert (=> b!3733079 (= e!2309398 (and tp!1136198 tp!1136196))))

(declare-fun b!3733077 () Bool)

(declare-fun tp!1136195 () Bool)

(declare-fun tp!1136199 () Bool)

(assert (=> b!3733077 (= e!2309398 (and tp!1136195 tp!1136199))))

(declare-fun b!3733078 () Bool)

(declare-fun tp!1136197 () Bool)

(assert (=> b!3733078 (= e!2309398 tp!1136197)))

(assert (=> b!3732752 (= tp!1136084 e!2309398)))

(declare-fun b!3733076 () Bool)

(assert (=> b!3733076 (= e!2309398 tp_is_empty!18881)))

(assert (= (and b!3732752 ((_ is ElementMatch!10933) (regTwo!22378 (reg!11262 r!26968)))) b!3733076))

(assert (= (and b!3732752 ((_ is Concat!17204) (regTwo!22378 (reg!11262 r!26968)))) b!3733077))

(assert (= (and b!3732752 ((_ is Star!10933) (regTwo!22378 (reg!11262 r!26968)))) b!3733078))

(assert (= (and b!3732752 ((_ is Union!10933) (regTwo!22378 (reg!11262 r!26968)))) b!3733079))

(declare-fun b!3733083 () Bool)

(declare-fun e!2309399 () Bool)

(declare-fun tp!1136203 () Bool)

(declare-fun tp!1136201 () Bool)

(assert (=> b!3733083 (= e!2309399 (and tp!1136203 tp!1136201))))

(declare-fun b!3733081 () Bool)

(declare-fun tp!1136200 () Bool)

(declare-fun tp!1136204 () Bool)

(assert (=> b!3733081 (= e!2309399 (and tp!1136200 tp!1136204))))

(declare-fun b!3733082 () Bool)

(declare-fun tp!1136202 () Bool)

(assert (=> b!3733082 (= e!2309399 tp!1136202)))

(assert (=> b!3732761 (= tp!1136092 e!2309399)))

(declare-fun b!3733080 () Bool)

(assert (=> b!3733080 (= e!2309399 tp_is_empty!18881)))

(assert (= (and b!3732761 ((_ is ElementMatch!10933) (reg!11262 (regTwo!22379 r!26968)))) b!3733080))

(assert (= (and b!3732761 ((_ is Concat!17204) (reg!11262 (regTwo!22379 r!26968)))) b!3733081))

(assert (= (and b!3732761 ((_ is Star!10933) (reg!11262 (regTwo!22379 r!26968)))) b!3733082))

(assert (= (and b!3732761 ((_ is Union!10933) (reg!11262 (regTwo!22379 r!26968)))) b!3733083))

(declare-fun b!3733087 () Bool)

(declare-fun e!2309400 () Bool)

(declare-fun tp!1136208 () Bool)

(declare-fun tp!1136206 () Bool)

(assert (=> b!3733087 (= e!2309400 (and tp!1136208 tp!1136206))))

(declare-fun b!3733085 () Bool)

(declare-fun tp!1136205 () Bool)

(declare-fun tp!1136209 () Bool)

(assert (=> b!3733085 (= e!2309400 (and tp!1136205 tp!1136209))))

(declare-fun b!3733086 () Bool)

(declare-fun tp!1136207 () Bool)

(assert (=> b!3733086 (= e!2309400 tp!1136207)))

(assert (=> b!3732770 (= tp!1136103 e!2309400)))

(declare-fun b!3733084 () Bool)

(assert (=> b!3733084 (= e!2309400 tp_is_empty!18881)))

(assert (= (and b!3732770 ((_ is ElementMatch!10933) (regOne!22379 (regTwo!22378 r!26968)))) b!3733084))

(assert (= (and b!3732770 ((_ is Concat!17204) (regOne!22379 (regTwo!22378 r!26968)))) b!3733085))

(assert (= (and b!3732770 ((_ is Star!10933) (regOne!22379 (regTwo!22378 r!26968)))) b!3733086))

(assert (= (and b!3732770 ((_ is Union!10933) (regOne!22379 (regTwo!22378 r!26968)))) b!3733087))

(declare-fun b!3733091 () Bool)

(declare-fun e!2309401 () Bool)

(declare-fun tp!1136213 () Bool)

(declare-fun tp!1136211 () Bool)

(assert (=> b!3733091 (= e!2309401 (and tp!1136213 tp!1136211))))

(declare-fun b!3733089 () Bool)

(declare-fun tp!1136210 () Bool)

(declare-fun tp!1136214 () Bool)

(assert (=> b!3733089 (= e!2309401 (and tp!1136210 tp!1136214))))

(declare-fun b!3733090 () Bool)

(declare-fun tp!1136212 () Bool)

(assert (=> b!3733090 (= e!2309401 tp!1136212)))

(assert (=> b!3732770 (= tp!1136101 e!2309401)))

(declare-fun b!3733088 () Bool)

(assert (=> b!3733088 (= e!2309401 tp_is_empty!18881)))

(assert (= (and b!3732770 ((_ is ElementMatch!10933) (regTwo!22379 (regTwo!22378 r!26968)))) b!3733088))

(assert (= (and b!3732770 ((_ is Concat!17204) (regTwo!22379 (regTwo!22378 r!26968)))) b!3733089))

(assert (= (and b!3732770 ((_ is Star!10933) (regTwo!22379 (regTwo!22378 r!26968)))) b!3733090))

(assert (= (and b!3732770 ((_ is Union!10933) (regTwo!22379 (regTwo!22378 r!26968)))) b!3733091))

(declare-fun b!3733095 () Bool)

(declare-fun e!2309402 () Bool)

(declare-fun tp!1136218 () Bool)

(declare-fun tp!1136216 () Bool)

(assert (=> b!3733095 (= e!2309402 (and tp!1136218 tp!1136216))))

(declare-fun b!3733093 () Bool)

(declare-fun tp!1136215 () Bool)

(declare-fun tp!1136219 () Bool)

(assert (=> b!3733093 (= e!2309402 (and tp!1136215 tp!1136219))))

(declare-fun b!3733094 () Bool)

(declare-fun tp!1136217 () Bool)

(assert (=> b!3733094 (= e!2309402 tp!1136217)))

(assert (=> b!3732756 (= tp!1136085 e!2309402)))

(declare-fun b!3733092 () Bool)

(assert (=> b!3733092 (= e!2309402 tp_is_empty!18881)))

(assert (= (and b!3732756 ((_ is ElementMatch!10933) (regOne!22378 (regOne!22379 r!26968)))) b!3733092))

(assert (= (and b!3732756 ((_ is Concat!17204) (regOne!22378 (regOne!22379 r!26968)))) b!3733093))

(assert (= (and b!3732756 ((_ is Star!10933) (regOne!22378 (regOne!22379 r!26968)))) b!3733094))

(assert (= (and b!3732756 ((_ is Union!10933) (regOne!22378 (regOne!22379 r!26968)))) b!3733095))

(declare-fun b!3733099 () Bool)

(declare-fun e!2309403 () Bool)

(declare-fun tp!1136223 () Bool)

(declare-fun tp!1136221 () Bool)

(assert (=> b!3733099 (= e!2309403 (and tp!1136223 tp!1136221))))

(declare-fun b!3733097 () Bool)

(declare-fun tp!1136220 () Bool)

(declare-fun tp!1136224 () Bool)

(assert (=> b!3733097 (= e!2309403 (and tp!1136220 tp!1136224))))

(declare-fun b!3733098 () Bool)

(declare-fun tp!1136222 () Bool)

(assert (=> b!3733098 (= e!2309403 tp!1136222)))

(assert (=> b!3732756 (= tp!1136089 e!2309403)))

(declare-fun b!3733096 () Bool)

(assert (=> b!3733096 (= e!2309403 tp_is_empty!18881)))

(assert (= (and b!3732756 ((_ is ElementMatch!10933) (regTwo!22378 (regOne!22379 r!26968)))) b!3733096))

(assert (= (and b!3732756 ((_ is Concat!17204) (regTwo!22378 (regOne!22379 r!26968)))) b!3733097))

(assert (= (and b!3732756 ((_ is Star!10933) (regTwo!22378 (regOne!22379 r!26968)))) b!3733098))

(assert (= (and b!3732756 ((_ is Union!10933) (regTwo!22378 (regOne!22379 r!26968)))) b!3733099))

(declare-fun b!3733103 () Bool)

(declare-fun e!2309404 () Bool)

(declare-fun tp!1136228 () Bool)

(declare-fun tp!1136226 () Bool)

(assert (=> b!3733103 (= e!2309404 (and tp!1136228 tp!1136226))))

(declare-fun b!3733101 () Bool)

(declare-fun tp!1136225 () Bool)

(declare-fun tp!1136229 () Bool)

(assert (=> b!3733101 (= e!2309404 (and tp!1136225 tp!1136229))))

(declare-fun b!3733102 () Bool)

(declare-fun tp!1136227 () Bool)

(assert (=> b!3733102 (= e!2309404 tp!1136227)))

(assert (=> b!3732765 (= tp!1136097 e!2309404)))

(declare-fun b!3733100 () Bool)

(assert (=> b!3733100 (= e!2309404 tp_is_empty!18881)))

(assert (= (and b!3732765 ((_ is ElementMatch!10933) (reg!11262 (regOne!22378 r!26968)))) b!3733100))

(assert (= (and b!3732765 ((_ is Concat!17204) (reg!11262 (regOne!22378 r!26968)))) b!3733101))

(assert (= (and b!3732765 ((_ is Star!10933) (reg!11262 (regOne!22378 r!26968)))) b!3733102))

(assert (= (and b!3732765 ((_ is Union!10933) (reg!11262 (regOne!22378 r!26968)))) b!3733103))

(check-sat (not bm!272907) (not b!3733082) (not b!3733053) (not bm!272896) (not b!3733063) (not bm!272939) (not bm!272957) (not bm!272934) (not b!3733004) (not b!3733066) (not bm!272943) (not bm!272940) (not b!3733102) (not bm!272901) (not b!3733024) (not bm!272930) (not b!3732904) (not b!3732850) (not b!3732999) (not b!3733052) (not bm!272933) (not d!1090898) (not b!3733061) (not b!3733069) (not d!1090930) (not b!3733090) (not b!3732948) (not b!3732838) (not b!3733046) (not b!3733045) (not b!3733098) (not b!3733062) (not bm!272928) (not b!3732816) (not b!3733007) (not b!3732884) (not b!3732987) (not b!3732779) (not d!1090878) (not b!3733043) (not b!3733099) (not b!3733086) (not b!3733001) (not b!3732901) (not b!3733041) (not d!1090890) (not b!3733079) (not d!1090900) (not b!3733094) (not bm!272920) (not b!3733070) (not b!3732828) (not bm!272936) (not b!3732937) (not bm!272904) (not b!3732984) (not b!3732988) (not d!1090924) (not b!3732983) (not b!3733089) (not b!3733057) (not b!3732989) (not bm!272913) (not b!3733033) (not bm!272926) (not b!3733073) (not b!3733013) (not b!3732790) (not b!3732801) (not bm!272897) (not b!3732810) (not bm!272954) (not b!3733051) (not b!3733008) (not b!3733039) (not bm!272938) (not b!3733030) (not b!3732853) (not b!3733067) (not b!3732827) (not b!3733009) (not bm!272947) (not b!3733093) (not bm!272924) (not bm!272908) (not b!3733042) (not bm!272948) (not b!3733031) (not b!3733034) (not b!3732825) (not b!3733091) (not bm!272925) (not d!1090906) (not d!1090910) (not b!3733012) (not b!3733077) (not b!3733071) (not b!3733003) (not bm!272950) (not bm!272902) (not b!3733027) (not bm!272921) (not d!1090876) (not d!1090880) tp_is_empty!18881 (not d!1090912) (not b!3733083) (not bm!272941) (not b!3732921) (not bm!272955) (not b!3733035) (not b!3733087) (not b!3733055) (not b!3733103) (not d!1090894) (not b!3733097) (not b!3733081) (not bm!272929) (not b!3733011) (not bm!272922) (not b!3733075) (not bm!272910) (not b!3733085) (not bm!272919) (not b!3733078) (not b!3733101) (not bm!272911) (not b!3732847) (not b!3733038) (not b!3733000) (not b!3733037) (not b!3733025) (not bm!272914) (not b!3732985) (not b!3733005) (not b!3733029) (not b!3733065) (not b!3733056) (not b!3733047) (not b!3733074) (not b!3732849) (not b!3733095) (not b!3732791) (not bm!272905))
(check-sat)
