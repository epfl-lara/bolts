; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!743678 () Bool)

(assert start!743678)

(declare-fun b!7862061 () Bool)

(declare-fun res!3125371 () Bool)

(declare-fun e!4645967 () Bool)

(assert (=> b!7862061 (=> (not res!3125371) (not e!4645967))))

(declare-datatypes ((C!42588 0))(
  ( (C!42589 (val!31756 Int)) )
))
(declare-datatypes ((List!73990 0))(
  ( (Nil!73866) (Cons!73866 (h!80314 C!42588) (t!388725 List!73990)) )
))
(declare-fun s!14237 () List!73990)

(get-info :version)

(assert (=> b!7862061 (= res!3125371 ((_ is Cons!73866) s!14237))))

(declare-fun b!7862062 () Bool)

(declare-fun e!4645966 () Bool)

(declare-datatypes ((Regex!21131 0))(
  ( (ElementMatch!21131 (c!1444707 C!42588)) (Concat!29976 (regOne!42774 Regex!21131) (regTwo!42774 Regex!21131)) (EmptyExpr!21131) (Star!21131 (reg!21460 Regex!21131)) (EmptyLang!21131) (Union!21131 (regOne!42775 Regex!21131) (regTwo!42775 Regex!21131)) )
))
(declare-fun r1!6218 () Regex!21131)

(declare-fun matchR!10567 (Regex!21131 List!73990) Bool)

(declare-fun derivativeStep!6364 (Regex!21131 C!42588) Regex!21131)

(declare-fun head!16079 (List!73990) C!42588)

(declare-fun tail!15622 (List!73990) List!73990)

(assert (=> b!7862062 (= e!4645966 (matchR!10567 (derivativeStep!6364 r1!6218 (head!16079 s!14237)) (tail!15622 s!14237)))))

(declare-fun b!7862063 () Bool)

(declare-fun nullable!9401 (Regex!21131) Bool)

(assert (=> b!7862063 (= e!4645966 (nullable!9401 r1!6218))))

(declare-fun b!7862064 () Bool)

(declare-fun res!3125375 () Bool)

(assert (=> b!7862064 (=> (not res!3125375) (not e!4645967))))

(declare-fun r2!6156 () Regex!21131)

(declare-fun validRegex!11541 (Regex!21131) Bool)

(assert (=> b!7862064 (= res!3125375 (validRegex!11541 r2!6156))))

(declare-fun b!7862065 () Bool)

(declare-fun e!4645963 () Bool)

(declare-fun tp!2330268 () Bool)

(declare-fun tp!2330260 () Bool)

(assert (=> b!7862065 (= e!4645963 (and tp!2330268 tp!2330260))))

(declare-fun b!7862066 () Bool)

(declare-fun tp_is_empty!52661 () Bool)

(assert (=> b!7862066 (= e!4645963 tp_is_empty!52661)))

(declare-fun b!7862067 () Bool)

(declare-fun e!4645962 () Bool)

(assert (=> b!7862067 (= e!4645962 tp_is_empty!52661)))

(declare-fun b!7862068 () Bool)

(declare-fun tp!2330267 () Bool)

(declare-fun tp!2330261 () Bool)

(assert (=> b!7862068 (= e!4645963 (and tp!2330267 tp!2330261))))

(declare-fun res!3125370 () Bool)

(assert (=> start!743678 (=> (not res!3125370) (not e!4645967))))

(assert (=> start!743678 (= res!3125370 (validRegex!11541 r1!6218))))

(assert (=> start!743678 e!4645967))

(assert (=> start!743678 e!4645962))

(assert (=> start!743678 e!4645963))

(declare-fun e!4645961 () Bool)

(assert (=> start!743678 e!4645961))

(declare-fun b!7862069 () Bool)

(declare-fun e!4645965 () Bool)

(assert (=> b!7862069 (= e!4645967 e!4645965)))

(declare-fun res!3125373 () Bool)

(assert (=> b!7862069 (=> (not res!3125373) (not e!4645965))))

(declare-fun lt!2680448 () Regex!21131)

(declare-fun lt!2680449 () Regex!21131)

(assert (=> b!7862069 (= res!3125373 (= (derivativeStep!6364 (Concat!29976 r2!6156 r1!6218) (h!80314 s!14237)) (Union!21131 lt!2680449 lt!2680448)))))

(assert (=> b!7862069 (= lt!2680448 (derivativeStep!6364 r1!6218 (h!80314 s!14237)))))

(assert (=> b!7862069 (= lt!2680449 (Concat!29976 (derivativeStep!6364 r2!6156 (h!80314 s!14237)) r1!6218))))

(declare-fun b!7862070 () Bool)

(declare-fun res!3125374 () Bool)

(assert (=> b!7862070 (=> (not res!3125374) (not e!4645967))))

(assert (=> b!7862070 (= res!3125374 (matchR!10567 r1!6218 s!14237))))

(declare-fun b!7862071 () Bool)

(declare-fun e!4645964 () Bool)

(assert (=> b!7862071 (= e!4645965 (not e!4645964))))

(declare-fun res!3125372 () Bool)

(assert (=> b!7862071 (=> (not res!3125372) (not e!4645964))))

(assert (=> b!7862071 (= res!3125372 (validRegex!11541 lt!2680448))))

(assert (=> b!7862071 e!4645966))

(declare-fun c!1444706 () Bool)

(declare-fun isEmpty!42368 (List!73990) Bool)

(assert (=> b!7862071 (= c!1444706 (isEmpty!42368 s!14237))))

(declare-datatypes ((Unit!168956 0))(
  ( (Unit!168957) )
))
(declare-fun lt!2680447 () Unit!168956)

(declare-fun lemmaRegexAcceptsStringThenDerivativeAcceptsTail!12 (Regex!21131 List!73990) Unit!168956)

(assert (=> b!7862071 (= lt!2680447 (lemmaRegexAcceptsStringThenDerivativeAcceptsTail!12 r1!6218 s!14237))))

(declare-fun b!7862072 () Bool)

(declare-fun res!3125376 () Bool)

(assert (=> b!7862072 (=> (not res!3125376) (not e!4645967))))

(assert (=> b!7862072 (= res!3125376 (nullable!9401 r2!6156))))

(declare-fun b!7862073 () Bool)

(declare-fun tp!2330266 () Bool)

(declare-fun tp!2330259 () Bool)

(assert (=> b!7862073 (= e!4645962 (and tp!2330266 tp!2330259))))

(declare-fun b!7862074 () Bool)

(declare-fun tp!2330265 () Bool)

(assert (=> b!7862074 (= e!4645962 tp!2330265)))

(declare-fun b!7862075 () Bool)

(declare-fun tp!2330263 () Bool)

(assert (=> b!7862075 (= e!4645963 tp!2330263)))

(declare-fun b!7862076 () Bool)

(declare-fun tp!2330262 () Bool)

(declare-fun tp!2330258 () Bool)

(assert (=> b!7862076 (= e!4645962 (and tp!2330262 tp!2330258))))

(declare-fun b!7862077 () Bool)

(assert (=> b!7862077 (= e!4645964 (validRegex!11541 lt!2680449))))

(declare-fun b!7862078 () Bool)

(declare-fun tp!2330264 () Bool)

(assert (=> b!7862078 (= e!4645961 (and tp_is_empty!52661 tp!2330264))))

(assert (= (and start!743678 res!3125370) b!7862064))

(assert (= (and b!7862064 res!3125375) b!7862070))

(assert (= (and b!7862070 res!3125374) b!7862072))

(assert (= (and b!7862072 res!3125376) b!7862061))

(assert (= (and b!7862061 res!3125371) b!7862069))

(assert (= (and b!7862069 res!3125373) b!7862071))

(assert (= (and b!7862071 c!1444706) b!7862063))

(assert (= (and b!7862071 (not c!1444706)) b!7862062))

(assert (= (and b!7862071 res!3125372) b!7862077))

(assert (= (and start!743678 ((_ is ElementMatch!21131) r1!6218)) b!7862067))

(assert (= (and start!743678 ((_ is Concat!29976) r1!6218)) b!7862076))

(assert (= (and start!743678 ((_ is Star!21131) r1!6218)) b!7862074))

(assert (= (and start!743678 ((_ is Union!21131) r1!6218)) b!7862073))

(assert (= (and start!743678 ((_ is ElementMatch!21131) r2!6156)) b!7862066))

(assert (= (and start!743678 ((_ is Concat!29976) r2!6156)) b!7862065))

(assert (= (and start!743678 ((_ is Star!21131) r2!6156)) b!7862075))

(assert (= (and start!743678 ((_ is Union!21131) r2!6156)) b!7862068))

(assert (= (and start!743678 ((_ is Cons!73866) s!14237)) b!7862078))

(declare-fun m!8262652 () Bool)

(assert (=> b!7862064 m!8262652))

(declare-fun m!8262654 () Bool)

(assert (=> start!743678 m!8262654))

(declare-fun m!8262656 () Bool)

(assert (=> b!7862071 m!8262656))

(declare-fun m!8262658 () Bool)

(assert (=> b!7862071 m!8262658))

(declare-fun m!8262660 () Bool)

(assert (=> b!7862071 m!8262660))

(declare-fun m!8262662 () Bool)

(assert (=> b!7862072 m!8262662))

(declare-fun m!8262664 () Bool)

(assert (=> b!7862070 m!8262664))

(declare-fun m!8262666 () Bool)

(assert (=> b!7862063 m!8262666))

(declare-fun m!8262668 () Bool)

(assert (=> b!7862069 m!8262668))

(declare-fun m!8262670 () Bool)

(assert (=> b!7862069 m!8262670))

(declare-fun m!8262672 () Bool)

(assert (=> b!7862069 m!8262672))

(declare-fun m!8262674 () Bool)

(assert (=> b!7862062 m!8262674))

(assert (=> b!7862062 m!8262674))

(declare-fun m!8262676 () Bool)

(assert (=> b!7862062 m!8262676))

(declare-fun m!8262678 () Bool)

(assert (=> b!7862062 m!8262678))

(assert (=> b!7862062 m!8262676))

(assert (=> b!7862062 m!8262678))

(declare-fun m!8262680 () Bool)

(assert (=> b!7862062 m!8262680))

(declare-fun m!8262682 () Bool)

(assert (=> b!7862077 m!8262682))

(check-sat (not b!7862065) tp_is_empty!52661 (not b!7862068) (not b!7862069) (not b!7862073) (not b!7862072) (not b!7862071) (not b!7862077) (not b!7862075) (not b!7862078) (not b!7862070) (not b!7862062) (not b!7862064) (not b!7862076) (not b!7862063) (not b!7862074) (not start!743678))
(check-sat)
(get-model)

(declare-fun d!2354492 () Bool)

(declare-fun nullableFct!3713 (Regex!21131) Bool)

(assert (=> d!2354492 (= (nullable!9401 r2!6156) (nullableFct!3713 r2!6156))))

(declare-fun bs!1967210 () Bool)

(assert (= bs!1967210 d!2354492))

(declare-fun m!8262686 () Bool)

(assert (=> bs!1967210 m!8262686))

(assert (=> b!7862072 d!2354492))

(declare-fun b!7862125 () Bool)

(declare-fun res!3125403 () Bool)

(declare-fun e!4645999 () Bool)

(assert (=> b!7862125 (=> res!3125403 e!4645999)))

(assert (=> b!7862125 (= res!3125403 (not ((_ is Concat!29976) lt!2680449)))))

(declare-fun e!4645998 () Bool)

(assert (=> b!7862125 (= e!4645998 e!4645999)))

(declare-fun bm!728902 () Bool)

(declare-fun call!728909 () Bool)

(declare-fun call!728908 () Bool)

(assert (=> bm!728902 (= call!728909 call!728908)))

(declare-fun b!7862126 () Bool)

(declare-fun e!4646002 () Bool)

(declare-fun call!728907 () Bool)

(assert (=> b!7862126 (= e!4646002 call!728907)))

(declare-fun bm!728903 () Bool)

(declare-fun c!1444718 () Bool)

(assert (=> bm!728903 (= call!728907 (validRegex!11541 (ite c!1444718 (regTwo!42775 lt!2680449) (regTwo!42774 lt!2680449))))))

(declare-fun b!7862127 () Bool)

(assert (=> b!7862127 (= e!4645999 e!4646002)))

(declare-fun res!3125407 () Bool)

(assert (=> b!7862127 (=> (not res!3125407) (not e!4646002))))

(assert (=> b!7862127 (= res!3125407 call!728909)))

(declare-fun b!7862128 () Bool)

(declare-fun e!4646000 () Bool)

(assert (=> b!7862128 (= e!4646000 e!4645998)))

(assert (=> b!7862128 (= c!1444718 ((_ is Union!21131) lt!2680449))))

(declare-fun c!1444719 () Bool)

(declare-fun bm!728904 () Bool)

(assert (=> bm!728904 (= call!728908 (validRegex!11541 (ite c!1444719 (reg!21460 lt!2680449) (ite c!1444718 (regOne!42775 lt!2680449) (regOne!42774 lt!2680449)))))))

(declare-fun b!7862129 () Bool)

(declare-fun res!3125405 () Bool)

(declare-fun e!4646001 () Bool)

(assert (=> b!7862129 (=> (not res!3125405) (not e!4646001))))

(assert (=> b!7862129 (= res!3125405 call!728909)))

(assert (=> b!7862129 (= e!4645998 e!4646001)))

(declare-fun b!7862130 () Bool)

(assert (=> b!7862130 (= e!4646001 call!728907)))

(declare-fun b!7862131 () Bool)

(declare-fun e!4645996 () Bool)

(assert (=> b!7862131 (= e!4645996 call!728908)))

(declare-fun b!7862132 () Bool)

(declare-fun e!4645997 () Bool)

(assert (=> b!7862132 (= e!4645997 e!4646000)))

(assert (=> b!7862132 (= c!1444719 ((_ is Star!21131) lt!2680449))))

(declare-fun d!2354494 () Bool)

(declare-fun res!3125404 () Bool)

(assert (=> d!2354494 (=> res!3125404 e!4645997)))

(assert (=> d!2354494 (= res!3125404 ((_ is ElementMatch!21131) lt!2680449))))

(assert (=> d!2354494 (= (validRegex!11541 lt!2680449) e!4645997)))

(declare-fun b!7862133 () Bool)

(assert (=> b!7862133 (= e!4646000 e!4645996)))

(declare-fun res!3125406 () Bool)

(assert (=> b!7862133 (= res!3125406 (not (nullable!9401 (reg!21460 lt!2680449))))))

(assert (=> b!7862133 (=> (not res!3125406) (not e!4645996))))

(assert (= (and d!2354494 (not res!3125404)) b!7862132))

(assert (= (and b!7862132 c!1444719) b!7862133))

(assert (= (and b!7862132 (not c!1444719)) b!7862128))

(assert (= (and b!7862133 res!3125406) b!7862131))

(assert (= (and b!7862128 c!1444718) b!7862129))

(assert (= (and b!7862128 (not c!1444718)) b!7862125))

(assert (= (and b!7862129 res!3125405) b!7862130))

(assert (= (and b!7862125 (not res!3125403)) b!7862127))

(assert (= (and b!7862127 res!3125407) b!7862126))

(assert (= (or b!7862130 b!7862126) bm!728903))

(assert (= (or b!7862129 b!7862127) bm!728902))

(assert (= (or b!7862131 bm!728902) bm!728904))

(declare-fun m!8262688 () Bool)

(assert (=> bm!728903 m!8262688))

(declare-fun m!8262690 () Bool)

(assert (=> bm!728904 m!8262690))

(declare-fun m!8262692 () Bool)

(assert (=> b!7862133 m!8262692))

(assert (=> b!7862077 d!2354494))

(declare-fun d!2354496 () Bool)

(declare-fun e!4646038 () Bool)

(assert (=> d!2354496 e!4646038))

(declare-fun c!1444740 () Bool)

(assert (=> d!2354496 (= c!1444740 ((_ is EmptyExpr!21131) (derivativeStep!6364 r1!6218 (head!16079 s!14237))))))

(declare-fun lt!2680457 () Bool)

(declare-fun e!4646036 () Bool)

(assert (=> d!2354496 (= lt!2680457 e!4646036)))

(declare-fun c!1444739 () Bool)

(assert (=> d!2354496 (= c!1444739 (isEmpty!42368 (tail!15622 s!14237)))))

(assert (=> d!2354496 (validRegex!11541 (derivativeStep!6364 r1!6218 (head!16079 s!14237)))))

(assert (=> d!2354496 (= (matchR!10567 (derivativeStep!6364 r1!6218 (head!16079 s!14237)) (tail!15622 s!14237)) lt!2680457)))

(declare-fun b!7862196 () Bool)

(declare-fun e!4646040 () Bool)

(declare-fun e!4646037 () Bool)

(assert (=> b!7862196 (= e!4646040 e!4646037)))

(declare-fun res!3125432 () Bool)

(assert (=> b!7862196 (=> res!3125432 e!4646037)))

(declare-fun call!728921 () Bool)

(assert (=> b!7862196 (= res!3125432 call!728921)))

(declare-fun b!7862197 () Bool)

(declare-fun res!3125439 () Bool)

(declare-fun e!4646035 () Bool)

(assert (=> b!7862197 (=> (not res!3125439) (not e!4646035))))

(assert (=> b!7862197 (= res!3125439 (isEmpty!42368 (tail!15622 (tail!15622 s!14237))))))

(declare-fun b!7862198 () Bool)

(assert (=> b!7862198 (= e!4646035 (= (head!16079 (tail!15622 s!14237)) (c!1444707 (derivativeStep!6364 r1!6218 (head!16079 s!14237)))))))

(declare-fun b!7862199 () Bool)

(declare-fun res!3125433 () Bool)

(assert (=> b!7862199 (=> (not res!3125433) (not e!4646035))))

(assert (=> b!7862199 (= res!3125433 (not call!728921))))

(declare-fun b!7862200 () Bool)

(declare-fun res!3125434 () Bool)

(declare-fun e!4646034 () Bool)

(assert (=> b!7862200 (=> res!3125434 e!4646034)))

(assert (=> b!7862200 (= res!3125434 (not ((_ is ElementMatch!21131) (derivativeStep!6364 r1!6218 (head!16079 s!14237)))))))

(declare-fun e!4646039 () Bool)

(assert (=> b!7862200 (= e!4646039 e!4646034)))

(declare-fun b!7862201 () Bool)

(assert (=> b!7862201 (= e!4646036 (matchR!10567 (derivativeStep!6364 (derivativeStep!6364 r1!6218 (head!16079 s!14237)) (head!16079 (tail!15622 s!14237))) (tail!15622 (tail!15622 s!14237))))))

(declare-fun b!7862202 () Bool)

(declare-fun res!3125436 () Bool)

(assert (=> b!7862202 (=> res!3125436 e!4646037)))

(assert (=> b!7862202 (= res!3125436 (not (isEmpty!42368 (tail!15622 (tail!15622 s!14237)))))))

(declare-fun bm!728916 () Bool)

(assert (=> bm!728916 (= call!728921 (isEmpty!42368 (tail!15622 s!14237)))))

(declare-fun b!7862203 () Bool)

(assert (=> b!7862203 (= e!4646038 e!4646039)))

(declare-fun c!1444741 () Bool)

(assert (=> b!7862203 (= c!1444741 ((_ is EmptyLang!21131) (derivativeStep!6364 r1!6218 (head!16079 s!14237))))))

(declare-fun b!7862204 () Bool)

(assert (=> b!7862204 (= e!4646037 (not (= (head!16079 (tail!15622 s!14237)) (c!1444707 (derivativeStep!6364 r1!6218 (head!16079 s!14237))))))))

(declare-fun b!7862205 () Bool)

(assert (=> b!7862205 (= e!4646038 (= lt!2680457 call!728921))))

(declare-fun b!7862206 () Bool)

(assert (=> b!7862206 (= e!4646034 e!4646040)))

(declare-fun res!3125437 () Bool)

(assert (=> b!7862206 (=> (not res!3125437) (not e!4646040))))

(assert (=> b!7862206 (= res!3125437 (not lt!2680457))))

(declare-fun b!7862207 () Bool)

(declare-fun res!3125438 () Bool)

(assert (=> b!7862207 (=> res!3125438 e!4646034)))

(assert (=> b!7862207 (= res!3125438 e!4646035)))

(declare-fun res!3125435 () Bool)

(assert (=> b!7862207 (=> (not res!3125435) (not e!4646035))))

(assert (=> b!7862207 (= res!3125435 lt!2680457)))

(declare-fun b!7862208 () Bool)

(assert (=> b!7862208 (= e!4646036 (nullable!9401 (derivativeStep!6364 r1!6218 (head!16079 s!14237))))))

(declare-fun b!7862209 () Bool)

(assert (=> b!7862209 (= e!4646039 (not lt!2680457))))

(assert (= (and d!2354496 c!1444739) b!7862208))

(assert (= (and d!2354496 (not c!1444739)) b!7862201))

(assert (= (and d!2354496 c!1444740) b!7862205))

(assert (= (and d!2354496 (not c!1444740)) b!7862203))

(assert (= (and b!7862203 c!1444741) b!7862209))

(assert (= (and b!7862203 (not c!1444741)) b!7862200))

(assert (= (and b!7862200 (not res!3125434)) b!7862207))

(assert (= (and b!7862207 res!3125435) b!7862199))

(assert (= (and b!7862199 res!3125433) b!7862197))

(assert (= (and b!7862197 res!3125439) b!7862198))

(assert (= (and b!7862207 (not res!3125438)) b!7862206))

(assert (= (and b!7862206 res!3125437) b!7862196))

(assert (= (and b!7862196 (not res!3125432)) b!7862202))

(assert (= (and b!7862202 (not res!3125436)) b!7862204))

(assert (= (or b!7862205 b!7862196 b!7862199) bm!728916))

(assert (=> bm!728916 m!8262678))

(declare-fun m!8262696 () Bool)

(assert (=> bm!728916 m!8262696))

(assert (=> b!7862208 m!8262676))

(declare-fun m!8262698 () Bool)

(assert (=> b!7862208 m!8262698))

(assert (=> b!7862202 m!8262678))

(declare-fun m!8262700 () Bool)

(assert (=> b!7862202 m!8262700))

(assert (=> b!7862202 m!8262700))

(declare-fun m!8262702 () Bool)

(assert (=> b!7862202 m!8262702))

(assert (=> b!7862198 m!8262678))

(declare-fun m!8262704 () Bool)

(assert (=> b!7862198 m!8262704))

(assert (=> b!7862201 m!8262678))

(assert (=> b!7862201 m!8262704))

(assert (=> b!7862201 m!8262676))

(assert (=> b!7862201 m!8262704))

(declare-fun m!8262706 () Bool)

(assert (=> b!7862201 m!8262706))

(assert (=> b!7862201 m!8262678))

(assert (=> b!7862201 m!8262700))

(assert (=> b!7862201 m!8262706))

(assert (=> b!7862201 m!8262700))

(declare-fun m!8262708 () Bool)

(assert (=> b!7862201 m!8262708))

(assert (=> d!2354496 m!8262678))

(assert (=> d!2354496 m!8262696))

(assert (=> d!2354496 m!8262676))

(declare-fun m!8262710 () Bool)

(assert (=> d!2354496 m!8262710))

(assert (=> b!7862197 m!8262678))

(assert (=> b!7862197 m!8262700))

(assert (=> b!7862197 m!8262700))

(assert (=> b!7862197 m!8262702))

(assert (=> b!7862204 m!8262678))

(assert (=> b!7862204 m!8262704))

(assert (=> b!7862062 d!2354496))

(declare-fun b!7862296 () Bool)

(declare-fun e!4646097 () Regex!21131)

(assert (=> b!7862296 (= e!4646097 EmptyLang!21131)))

(declare-fun b!7862297 () Bool)

(declare-fun c!1444776 () Bool)

(assert (=> b!7862297 (= c!1444776 ((_ is Union!21131) r1!6218))))

(declare-fun e!4646094 () Regex!21131)

(declare-fun e!4646096 () Regex!21131)

(assert (=> b!7862297 (= e!4646094 e!4646096)))

(declare-fun c!1444777 () Bool)

(declare-fun bm!728949 () Bool)

(declare-fun call!728955 () Regex!21131)

(assert (=> bm!728949 (= call!728955 (derivativeStep!6364 (ite c!1444776 (regTwo!42775 r1!6218) (ite c!1444777 (reg!21460 r1!6218) (regOne!42774 r1!6218))) (head!16079 s!14237)))))

(declare-fun d!2354500 () Bool)

(declare-fun lt!2680463 () Regex!21131)

(assert (=> d!2354500 (validRegex!11541 lt!2680463)))

(assert (=> d!2354500 (= lt!2680463 e!4646097)))

(declare-fun c!1444775 () Bool)

(assert (=> d!2354500 (= c!1444775 (or ((_ is EmptyExpr!21131) r1!6218) ((_ is EmptyLang!21131) r1!6218)))))

(assert (=> d!2354500 (validRegex!11541 r1!6218)))

(assert (=> d!2354500 (= (derivativeStep!6364 r1!6218 (head!16079 s!14237)) lt!2680463)))

(declare-fun call!728957 () Regex!21131)

(declare-fun b!7862298 () Bool)

(declare-fun e!4646098 () Regex!21131)

(declare-fun call!728956 () Regex!21131)

(assert (=> b!7862298 (= e!4646098 (Union!21131 (Concat!29976 call!728956 (regTwo!42774 r1!6218)) call!728957))))

(declare-fun b!7862299 () Bool)

(assert (=> b!7862299 (= e!4646098 (Union!21131 (Concat!29976 call!728957 (regTwo!42774 r1!6218)) EmptyLang!21131))))

(declare-fun b!7862300 () Bool)

(declare-fun c!1444778 () Bool)

(assert (=> b!7862300 (= c!1444778 (nullable!9401 (regOne!42774 r1!6218)))))

(declare-fun e!4646095 () Regex!21131)

(assert (=> b!7862300 (= e!4646095 e!4646098)))

(declare-fun b!7862301 () Bool)

(assert (=> b!7862301 (= e!4646097 e!4646094)))

(declare-fun c!1444779 () Bool)

(assert (=> b!7862301 (= c!1444779 ((_ is ElementMatch!21131) r1!6218))))

(declare-fun b!7862302 () Bool)

(assert (=> b!7862302 (= e!4646096 e!4646095)))

(assert (=> b!7862302 (= c!1444777 ((_ is Star!21131) r1!6218))))

(declare-fun bm!728950 () Bool)

(declare-fun call!728954 () Regex!21131)

(assert (=> bm!728950 (= call!728957 call!728954)))

(declare-fun bm!728951 () Bool)

(assert (=> bm!728951 (= call!728956 call!728955)))

(declare-fun b!7862303 () Bool)

(assert (=> b!7862303 (= e!4646095 (Concat!29976 call!728956 r1!6218))))

(declare-fun b!7862304 () Bool)

(assert (=> b!7862304 (= e!4646096 (Union!21131 call!728954 call!728955))))

(declare-fun bm!728952 () Bool)

(assert (=> bm!728952 (= call!728954 (derivativeStep!6364 (ite c!1444776 (regOne!42775 r1!6218) (ite c!1444778 (regTwo!42774 r1!6218) (regOne!42774 r1!6218))) (head!16079 s!14237)))))

(declare-fun b!7862305 () Bool)

(assert (=> b!7862305 (= e!4646094 (ite (= (head!16079 s!14237) (c!1444707 r1!6218)) EmptyExpr!21131 EmptyLang!21131))))

(assert (= (and d!2354500 c!1444775) b!7862296))

(assert (= (and d!2354500 (not c!1444775)) b!7862301))

(assert (= (and b!7862301 c!1444779) b!7862305))

(assert (= (and b!7862301 (not c!1444779)) b!7862297))

(assert (= (and b!7862297 c!1444776) b!7862304))

(assert (= (and b!7862297 (not c!1444776)) b!7862302))

(assert (= (and b!7862302 c!1444777) b!7862303))

(assert (= (and b!7862302 (not c!1444777)) b!7862300))

(assert (= (and b!7862300 c!1444778) b!7862298))

(assert (= (and b!7862300 (not c!1444778)) b!7862299))

(assert (= (or b!7862298 b!7862299) bm!728950))

(assert (= (or b!7862303 b!7862298) bm!728951))

(assert (= (or b!7862304 bm!728951) bm!728949))

(assert (= (or b!7862304 bm!728950) bm!728952))

(assert (=> bm!728949 m!8262674))

(declare-fun m!8262752 () Bool)

(assert (=> bm!728949 m!8262752))

(declare-fun m!8262754 () Bool)

(assert (=> d!2354500 m!8262754))

(assert (=> d!2354500 m!8262654))

(declare-fun m!8262756 () Bool)

(assert (=> b!7862300 m!8262756))

(assert (=> bm!728952 m!8262674))

(declare-fun m!8262762 () Bool)

(assert (=> bm!728952 m!8262762))

(assert (=> b!7862062 d!2354500))

(declare-fun d!2354514 () Bool)

(assert (=> d!2354514 (= (head!16079 s!14237) (h!80314 s!14237))))

(assert (=> b!7862062 d!2354514))

(declare-fun d!2354518 () Bool)

(assert (=> d!2354518 (= (tail!15622 s!14237) (t!388725 s!14237))))

(assert (=> b!7862062 d!2354518))

(declare-fun b!7862330 () Bool)

(declare-fun res!3125468 () Bool)

(declare-fun e!4646114 () Bool)

(assert (=> b!7862330 (=> res!3125468 e!4646114)))

(assert (=> b!7862330 (= res!3125468 (not ((_ is Concat!29976) r1!6218)))))

(declare-fun e!4646113 () Bool)

(assert (=> b!7862330 (= e!4646113 e!4646114)))

(declare-fun bm!728958 () Bool)

(declare-fun call!728965 () Bool)

(declare-fun call!728964 () Bool)

(assert (=> bm!728958 (= call!728965 call!728964)))

(declare-fun b!7862331 () Bool)

(declare-fun e!4646117 () Bool)

(declare-fun call!728963 () Bool)

(assert (=> b!7862331 (= e!4646117 call!728963)))

(declare-fun bm!728959 () Bool)

(declare-fun c!1444788 () Bool)

(assert (=> bm!728959 (= call!728963 (validRegex!11541 (ite c!1444788 (regTwo!42775 r1!6218) (regTwo!42774 r1!6218))))))

(declare-fun b!7862332 () Bool)

(assert (=> b!7862332 (= e!4646114 e!4646117)))

(declare-fun res!3125472 () Bool)

(assert (=> b!7862332 (=> (not res!3125472) (not e!4646117))))

(assert (=> b!7862332 (= res!3125472 call!728965)))

(declare-fun b!7862333 () Bool)

(declare-fun e!4646115 () Bool)

(assert (=> b!7862333 (= e!4646115 e!4646113)))

(assert (=> b!7862333 (= c!1444788 ((_ is Union!21131) r1!6218))))

(declare-fun c!1444789 () Bool)

(declare-fun bm!728960 () Bool)

(assert (=> bm!728960 (= call!728964 (validRegex!11541 (ite c!1444789 (reg!21460 r1!6218) (ite c!1444788 (regOne!42775 r1!6218) (regOne!42774 r1!6218)))))))

(declare-fun b!7862334 () Bool)

(declare-fun res!3125470 () Bool)

(declare-fun e!4646116 () Bool)

(assert (=> b!7862334 (=> (not res!3125470) (not e!4646116))))

(assert (=> b!7862334 (= res!3125470 call!728965)))

(assert (=> b!7862334 (= e!4646113 e!4646116)))

(declare-fun b!7862335 () Bool)

(assert (=> b!7862335 (= e!4646116 call!728963)))

(declare-fun b!7862336 () Bool)

(declare-fun e!4646111 () Bool)

(assert (=> b!7862336 (= e!4646111 call!728964)))

(declare-fun b!7862337 () Bool)

(declare-fun e!4646112 () Bool)

(assert (=> b!7862337 (= e!4646112 e!4646115)))

(assert (=> b!7862337 (= c!1444789 ((_ is Star!21131) r1!6218))))

(declare-fun d!2354520 () Bool)

(declare-fun res!3125469 () Bool)

(assert (=> d!2354520 (=> res!3125469 e!4646112)))

(assert (=> d!2354520 (= res!3125469 ((_ is ElementMatch!21131) r1!6218))))

(assert (=> d!2354520 (= (validRegex!11541 r1!6218) e!4646112)))

(declare-fun b!7862338 () Bool)

(assert (=> b!7862338 (= e!4646115 e!4646111)))

(declare-fun res!3125471 () Bool)

(assert (=> b!7862338 (= res!3125471 (not (nullable!9401 (reg!21460 r1!6218))))))

(assert (=> b!7862338 (=> (not res!3125471) (not e!4646111))))

(assert (= (and d!2354520 (not res!3125469)) b!7862337))

(assert (= (and b!7862337 c!1444789) b!7862338))

(assert (= (and b!7862337 (not c!1444789)) b!7862333))

(assert (= (and b!7862338 res!3125471) b!7862336))

(assert (= (and b!7862333 c!1444788) b!7862334))

(assert (= (and b!7862333 (not c!1444788)) b!7862330))

(assert (= (and b!7862334 res!3125470) b!7862335))

(assert (= (and b!7862330 (not res!3125468)) b!7862332))

(assert (= (and b!7862332 res!3125472) b!7862331))

(assert (= (or b!7862335 b!7862331) bm!728959))

(assert (= (or b!7862334 b!7862332) bm!728958))

(assert (= (or b!7862336 bm!728958) bm!728960))

(declare-fun m!8262780 () Bool)

(assert (=> bm!728959 m!8262780))

(declare-fun m!8262782 () Bool)

(assert (=> bm!728960 m!8262782))

(declare-fun m!8262784 () Bool)

(assert (=> b!7862338 m!8262784))

(assert (=> start!743678 d!2354520))

(declare-fun d!2354526 () Bool)

(assert (=> d!2354526 (= (nullable!9401 r1!6218) (nullableFct!3713 r1!6218))))

(declare-fun bs!1967212 () Bool)

(assert (= bs!1967212 d!2354526))

(declare-fun m!8262786 () Bool)

(assert (=> bs!1967212 m!8262786))

(assert (=> b!7862063 d!2354526))

(declare-fun b!7862339 () Bool)

(declare-fun res!3125473 () Bool)

(declare-fun e!4646121 () Bool)

(assert (=> b!7862339 (=> res!3125473 e!4646121)))

(assert (=> b!7862339 (= res!3125473 (not ((_ is Concat!29976) r2!6156)))))

(declare-fun e!4646120 () Bool)

(assert (=> b!7862339 (= e!4646120 e!4646121)))

(declare-fun bm!728961 () Bool)

(declare-fun call!728968 () Bool)

(declare-fun call!728967 () Bool)

(assert (=> bm!728961 (= call!728968 call!728967)))

(declare-fun b!7862340 () Bool)

(declare-fun e!4646124 () Bool)

(declare-fun call!728966 () Bool)

(assert (=> b!7862340 (= e!4646124 call!728966)))

(declare-fun bm!728962 () Bool)

(declare-fun c!1444790 () Bool)

(assert (=> bm!728962 (= call!728966 (validRegex!11541 (ite c!1444790 (regTwo!42775 r2!6156) (regTwo!42774 r2!6156))))))

(declare-fun b!7862341 () Bool)

(assert (=> b!7862341 (= e!4646121 e!4646124)))

(declare-fun res!3125477 () Bool)

(assert (=> b!7862341 (=> (not res!3125477) (not e!4646124))))

(assert (=> b!7862341 (= res!3125477 call!728968)))

(declare-fun b!7862342 () Bool)

(declare-fun e!4646122 () Bool)

(assert (=> b!7862342 (= e!4646122 e!4646120)))

(assert (=> b!7862342 (= c!1444790 ((_ is Union!21131) r2!6156))))

(declare-fun bm!728963 () Bool)

(declare-fun c!1444791 () Bool)

(assert (=> bm!728963 (= call!728967 (validRegex!11541 (ite c!1444791 (reg!21460 r2!6156) (ite c!1444790 (regOne!42775 r2!6156) (regOne!42774 r2!6156)))))))

(declare-fun b!7862343 () Bool)

(declare-fun res!3125475 () Bool)

(declare-fun e!4646123 () Bool)

(assert (=> b!7862343 (=> (not res!3125475) (not e!4646123))))

(assert (=> b!7862343 (= res!3125475 call!728968)))

(assert (=> b!7862343 (= e!4646120 e!4646123)))

(declare-fun b!7862344 () Bool)

(assert (=> b!7862344 (= e!4646123 call!728966)))

(declare-fun b!7862345 () Bool)

(declare-fun e!4646118 () Bool)

(assert (=> b!7862345 (= e!4646118 call!728967)))

(declare-fun b!7862346 () Bool)

(declare-fun e!4646119 () Bool)

(assert (=> b!7862346 (= e!4646119 e!4646122)))

(assert (=> b!7862346 (= c!1444791 ((_ is Star!21131) r2!6156))))

(declare-fun d!2354528 () Bool)

(declare-fun res!3125474 () Bool)

(assert (=> d!2354528 (=> res!3125474 e!4646119)))

(assert (=> d!2354528 (= res!3125474 ((_ is ElementMatch!21131) r2!6156))))

(assert (=> d!2354528 (= (validRegex!11541 r2!6156) e!4646119)))

(declare-fun b!7862347 () Bool)

(assert (=> b!7862347 (= e!4646122 e!4646118)))

(declare-fun res!3125476 () Bool)

(assert (=> b!7862347 (= res!3125476 (not (nullable!9401 (reg!21460 r2!6156))))))

(assert (=> b!7862347 (=> (not res!3125476) (not e!4646118))))

(assert (= (and d!2354528 (not res!3125474)) b!7862346))

(assert (= (and b!7862346 c!1444791) b!7862347))

(assert (= (and b!7862346 (not c!1444791)) b!7862342))

(assert (= (and b!7862347 res!3125476) b!7862345))

(assert (= (and b!7862342 c!1444790) b!7862343))

(assert (= (and b!7862342 (not c!1444790)) b!7862339))

(assert (= (and b!7862343 res!3125475) b!7862344))

(assert (= (and b!7862339 (not res!3125473)) b!7862341))

(assert (= (and b!7862341 res!3125477) b!7862340))

(assert (= (or b!7862344 b!7862340) bm!728962))

(assert (= (or b!7862343 b!7862341) bm!728961))

(assert (= (or b!7862345 bm!728961) bm!728963))

(declare-fun m!8262790 () Bool)

(assert (=> bm!728962 m!8262790))

(declare-fun m!8262794 () Bool)

(assert (=> bm!728963 m!8262794))

(declare-fun m!8262798 () Bool)

(assert (=> b!7862347 m!8262798))

(assert (=> b!7862064 d!2354528))

(declare-fun b!7862357 () Bool)

(declare-fun e!4646135 () Regex!21131)

(assert (=> b!7862357 (= e!4646135 EmptyLang!21131)))

(declare-fun b!7862358 () Bool)

(declare-fun c!1444795 () Bool)

(assert (=> b!7862358 (= c!1444795 ((_ is Union!21131) (Concat!29976 r2!6156 r1!6218)))))

(declare-fun e!4646132 () Regex!21131)

(declare-fun e!4646134 () Regex!21131)

(assert (=> b!7862358 (= e!4646132 e!4646134)))

(declare-fun c!1444796 () Bool)

(declare-fun call!728973 () Regex!21131)

(declare-fun bm!728967 () Bool)

(assert (=> bm!728967 (= call!728973 (derivativeStep!6364 (ite c!1444795 (regTwo!42775 (Concat!29976 r2!6156 r1!6218)) (ite c!1444796 (reg!21460 (Concat!29976 r2!6156 r1!6218)) (regOne!42774 (Concat!29976 r2!6156 r1!6218)))) (h!80314 s!14237)))))

(declare-fun d!2354534 () Bool)

(declare-fun lt!2680466 () Regex!21131)

(assert (=> d!2354534 (validRegex!11541 lt!2680466)))

(assert (=> d!2354534 (= lt!2680466 e!4646135)))

(declare-fun c!1444794 () Bool)

(assert (=> d!2354534 (= c!1444794 (or ((_ is EmptyExpr!21131) (Concat!29976 r2!6156 r1!6218)) ((_ is EmptyLang!21131) (Concat!29976 r2!6156 r1!6218))))))

(assert (=> d!2354534 (validRegex!11541 (Concat!29976 r2!6156 r1!6218))))

(assert (=> d!2354534 (= (derivativeStep!6364 (Concat!29976 r2!6156 r1!6218) (h!80314 s!14237)) lt!2680466)))

(declare-fun e!4646136 () Regex!21131)

(declare-fun call!728974 () Regex!21131)

(declare-fun b!7862359 () Bool)

(declare-fun call!728975 () Regex!21131)

(assert (=> b!7862359 (= e!4646136 (Union!21131 (Concat!29976 call!728974 (regTwo!42774 (Concat!29976 r2!6156 r1!6218))) call!728975))))

(declare-fun b!7862360 () Bool)

(assert (=> b!7862360 (= e!4646136 (Union!21131 (Concat!29976 call!728975 (regTwo!42774 (Concat!29976 r2!6156 r1!6218))) EmptyLang!21131))))

(declare-fun b!7862361 () Bool)

(declare-fun c!1444797 () Bool)

(assert (=> b!7862361 (= c!1444797 (nullable!9401 (regOne!42774 (Concat!29976 r2!6156 r1!6218))))))

(declare-fun e!4646133 () Regex!21131)

(assert (=> b!7862361 (= e!4646133 e!4646136)))

(declare-fun b!7862362 () Bool)

(assert (=> b!7862362 (= e!4646135 e!4646132)))

(declare-fun c!1444798 () Bool)

(assert (=> b!7862362 (= c!1444798 ((_ is ElementMatch!21131) (Concat!29976 r2!6156 r1!6218)))))

(declare-fun b!7862363 () Bool)

(assert (=> b!7862363 (= e!4646134 e!4646133)))

(assert (=> b!7862363 (= c!1444796 ((_ is Star!21131) (Concat!29976 r2!6156 r1!6218)))))

(declare-fun bm!728968 () Bool)

(declare-fun call!728972 () Regex!21131)

(assert (=> bm!728968 (= call!728975 call!728972)))

(declare-fun bm!728969 () Bool)

(assert (=> bm!728969 (= call!728974 call!728973)))

(declare-fun b!7862364 () Bool)

(assert (=> b!7862364 (= e!4646133 (Concat!29976 call!728974 (Concat!29976 r2!6156 r1!6218)))))

(declare-fun b!7862365 () Bool)

(assert (=> b!7862365 (= e!4646134 (Union!21131 call!728972 call!728973))))

(declare-fun bm!728970 () Bool)

(assert (=> bm!728970 (= call!728972 (derivativeStep!6364 (ite c!1444795 (regOne!42775 (Concat!29976 r2!6156 r1!6218)) (ite c!1444797 (regTwo!42774 (Concat!29976 r2!6156 r1!6218)) (regOne!42774 (Concat!29976 r2!6156 r1!6218)))) (h!80314 s!14237)))))

(declare-fun b!7862366 () Bool)

(assert (=> b!7862366 (= e!4646132 (ite (= (h!80314 s!14237) (c!1444707 (Concat!29976 r2!6156 r1!6218))) EmptyExpr!21131 EmptyLang!21131))))

(assert (= (and d!2354534 c!1444794) b!7862357))

(assert (= (and d!2354534 (not c!1444794)) b!7862362))

(assert (= (and b!7862362 c!1444798) b!7862366))

(assert (= (and b!7862362 (not c!1444798)) b!7862358))

(assert (= (and b!7862358 c!1444795) b!7862365))

(assert (= (and b!7862358 (not c!1444795)) b!7862363))

(assert (= (and b!7862363 c!1444796) b!7862364))

(assert (= (and b!7862363 (not c!1444796)) b!7862361))

(assert (= (and b!7862361 c!1444797) b!7862359))

(assert (= (and b!7862361 (not c!1444797)) b!7862360))

(assert (= (or b!7862359 b!7862360) bm!728968))

(assert (= (or b!7862364 b!7862359) bm!728969))

(assert (= (or b!7862365 bm!728969) bm!728967))

(assert (= (or b!7862365 bm!728968) bm!728970))

(declare-fun m!8262800 () Bool)

(assert (=> bm!728967 m!8262800))

(declare-fun m!8262802 () Bool)

(assert (=> d!2354534 m!8262802))

(declare-fun m!8262804 () Bool)

(assert (=> d!2354534 m!8262804))

(declare-fun m!8262806 () Bool)

(assert (=> b!7862361 m!8262806))

(declare-fun m!8262808 () Bool)

(assert (=> bm!728970 m!8262808))

(assert (=> b!7862069 d!2354534))

(declare-fun b!7862367 () Bool)

(declare-fun e!4646140 () Regex!21131)

(assert (=> b!7862367 (= e!4646140 EmptyLang!21131)))

(declare-fun b!7862368 () Bool)

(declare-fun c!1444800 () Bool)

(assert (=> b!7862368 (= c!1444800 ((_ is Union!21131) r1!6218))))

(declare-fun e!4646137 () Regex!21131)

(declare-fun e!4646139 () Regex!21131)

(assert (=> b!7862368 (= e!4646137 e!4646139)))

(declare-fun c!1444801 () Bool)

(declare-fun call!728977 () Regex!21131)

(declare-fun bm!728971 () Bool)

(assert (=> bm!728971 (= call!728977 (derivativeStep!6364 (ite c!1444800 (regTwo!42775 r1!6218) (ite c!1444801 (reg!21460 r1!6218) (regOne!42774 r1!6218))) (h!80314 s!14237)))))

(declare-fun d!2354538 () Bool)

(declare-fun lt!2680467 () Regex!21131)

(assert (=> d!2354538 (validRegex!11541 lt!2680467)))

(assert (=> d!2354538 (= lt!2680467 e!4646140)))

(declare-fun c!1444799 () Bool)

(assert (=> d!2354538 (= c!1444799 (or ((_ is EmptyExpr!21131) r1!6218) ((_ is EmptyLang!21131) r1!6218)))))

(assert (=> d!2354538 (validRegex!11541 r1!6218)))

(assert (=> d!2354538 (= (derivativeStep!6364 r1!6218 (h!80314 s!14237)) lt!2680467)))

(declare-fun b!7862369 () Bool)

(declare-fun e!4646141 () Regex!21131)

(declare-fun call!728979 () Regex!21131)

(declare-fun call!728978 () Regex!21131)

(assert (=> b!7862369 (= e!4646141 (Union!21131 (Concat!29976 call!728978 (regTwo!42774 r1!6218)) call!728979))))

(declare-fun b!7862370 () Bool)

(assert (=> b!7862370 (= e!4646141 (Union!21131 (Concat!29976 call!728979 (regTwo!42774 r1!6218)) EmptyLang!21131))))

(declare-fun b!7862371 () Bool)

(declare-fun c!1444802 () Bool)

(assert (=> b!7862371 (= c!1444802 (nullable!9401 (regOne!42774 r1!6218)))))

(declare-fun e!4646138 () Regex!21131)

(assert (=> b!7862371 (= e!4646138 e!4646141)))

(declare-fun b!7862372 () Bool)

(assert (=> b!7862372 (= e!4646140 e!4646137)))

(declare-fun c!1444803 () Bool)

(assert (=> b!7862372 (= c!1444803 ((_ is ElementMatch!21131) r1!6218))))

(declare-fun b!7862373 () Bool)

(assert (=> b!7862373 (= e!4646139 e!4646138)))

(assert (=> b!7862373 (= c!1444801 ((_ is Star!21131) r1!6218))))

(declare-fun bm!728972 () Bool)

(declare-fun call!728976 () Regex!21131)

(assert (=> bm!728972 (= call!728979 call!728976)))

(declare-fun bm!728973 () Bool)

(assert (=> bm!728973 (= call!728978 call!728977)))

(declare-fun b!7862374 () Bool)

(assert (=> b!7862374 (= e!4646138 (Concat!29976 call!728978 r1!6218))))

(declare-fun b!7862375 () Bool)

(assert (=> b!7862375 (= e!4646139 (Union!21131 call!728976 call!728977))))

(declare-fun bm!728974 () Bool)

(assert (=> bm!728974 (= call!728976 (derivativeStep!6364 (ite c!1444800 (regOne!42775 r1!6218) (ite c!1444802 (regTwo!42774 r1!6218) (regOne!42774 r1!6218))) (h!80314 s!14237)))))

(declare-fun b!7862376 () Bool)

(assert (=> b!7862376 (= e!4646137 (ite (= (h!80314 s!14237) (c!1444707 r1!6218)) EmptyExpr!21131 EmptyLang!21131))))

(assert (= (and d!2354538 c!1444799) b!7862367))

(assert (= (and d!2354538 (not c!1444799)) b!7862372))

(assert (= (and b!7862372 c!1444803) b!7862376))

(assert (= (and b!7862372 (not c!1444803)) b!7862368))

(assert (= (and b!7862368 c!1444800) b!7862375))

(assert (= (and b!7862368 (not c!1444800)) b!7862373))

(assert (= (and b!7862373 c!1444801) b!7862374))

(assert (= (and b!7862373 (not c!1444801)) b!7862371))

(assert (= (and b!7862371 c!1444802) b!7862369))

(assert (= (and b!7862371 (not c!1444802)) b!7862370))

(assert (= (or b!7862369 b!7862370) bm!728972))

(assert (= (or b!7862374 b!7862369) bm!728973))

(assert (= (or b!7862375 bm!728973) bm!728971))

(assert (= (or b!7862375 bm!728972) bm!728974))

(declare-fun m!8262810 () Bool)

(assert (=> bm!728971 m!8262810))

(declare-fun m!8262812 () Bool)

(assert (=> d!2354538 m!8262812))

(assert (=> d!2354538 m!8262654))

(assert (=> b!7862371 m!8262756))

(declare-fun m!8262814 () Bool)

(assert (=> bm!728974 m!8262814))

(assert (=> b!7862069 d!2354538))

(declare-fun b!7862377 () Bool)

(declare-fun e!4646145 () Regex!21131)

(assert (=> b!7862377 (= e!4646145 EmptyLang!21131)))

(declare-fun b!7862378 () Bool)

(declare-fun c!1444805 () Bool)

(assert (=> b!7862378 (= c!1444805 ((_ is Union!21131) r2!6156))))

(declare-fun e!4646142 () Regex!21131)

(declare-fun e!4646144 () Regex!21131)

(assert (=> b!7862378 (= e!4646142 e!4646144)))

(declare-fun c!1444806 () Bool)

(declare-fun call!728981 () Regex!21131)

(declare-fun bm!728975 () Bool)

(assert (=> bm!728975 (= call!728981 (derivativeStep!6364 (ite c!1444805 (regTwo!42775 r2!6156) (ite c!1444806 (reg!21460 r2!6156) (regOne!42774 r2!6156))) (h!80314 s!14237)))))

(declare-fun d!2354540 () Bool)

(declare-fun lt!2680468 () Regex!21131)

(assert (=> d!2354540 (validRegex!11541 lt!2680468)))

(assert (=> d!2354540 (= lt!2680468 e!4646145)))

(declare-fun c!1444804 () Bool)

(assert (=> d!2354540 (= c!1444804 (or ((_ is EmptyExpr!21131) r2!6156) ((_ is EmptyLang!21131) r2!6156)))))

(assert (=> d!2354540 (validRegex!11541 r2!6156)))

(assert (=> d!2354540 (= (derivativeStep!6364 r2!6156 (h!80314 s!14237)) lt!2680468)))

(declare-fun call!728983 () Regex!21131)

(declare-fun e!4646146 () Regex!21131)

(declare-fun call!728982 () Regex!21131)

(declare-fun b!7862379 () Bool)

(assert (=> b!7862379 (= e!4646146 (Union!21131 (Concat!29976 call!728982 (regTwo!42774 r2!6156)) call!728983))))

(declare-fun b!7862380 () Bool)

(assert (=> b!7862380 (= e!4646146 (Union!21131 (Concat!29976 call!728983 (regTwo!42774 r2!6156)) EmptyLang!21131))))

(declare-fun b!7862381 () Bool)

(declare-fun c!1444807 () Bool)

(assert (=> b!7862381 (= c!1444807 (nullable!9401 (regOne!42774 r2!6156)))))

(declare-fun e!4646143 () Regex!21131)

(assert (=> b!7862381 (= e!4646143 e!4646146)))

(declare-fun b!7862382 () Bool)

(assert (=> b!7862382 (= e!4646145 e!4646142)))

(declare-fun c!1444808 () Bool)

(assert (=> b!7862382 (= c!1444808 ((_ is ElementMatch!21131) r2!6156))))

(declare-fun b!7862383 () Bool)

(assert (=> b!7862383 (= e!4646144 e!4646143)))

(assert (=> b!7862383 (= c!1444806 ((_ is Star!21131) r2!6156))))

(declare-fun bm!728976 () Bool)

(declare-fun call!728980 () Regex!21131)

(assert (=> bm!728976 (= call!728983 call!728980)))

(declare-fun bm!728977 () Bool)

(assert (=> bm!728977 (= call!728982 call!728981)))

(declare-fun b!7862384 () Bool)

(assert (=> b!7862384 (= e!4646143 (Concat!29976 call!728982 r2!6156))))

(declare-fun b!7862385 () Bool)

(assert (=> b!7862385 (= e!4646144 (Union!21131 call!728980 call!728981))))

(declare-fun bm!728978 () Bool)

(assert (=> bm!728978 (= call!728980 (derivativeStep!6364 (ite c!1444805 (regOne!42775 r2!6156) (ite c!1444807 (regTwo!42774 r2!6156) (regOne!42774 r2!6156))) (h!80314 s!14237)))))

(declare-fun b!7862386 () Bool)

(assert (=> b!7862386 (= e!4646142 (ite (= (h!80314 s!14237) (c!1444707 r2!6156)) EmptyExpr!21131 EmptyLang!21131))))

(assert (= (and d!2354540 c!1444804) b!7862377))

(assert (= (and d!2354540 (not c!1444804)) b!7862382))

(assert (= (and b!7862382 c!1444808) b!7862386))

(assert (= (and b!7862382 (not c!1444808)) b!7862378))

(assert (= (and b!7862378 c!1444805) b!7862385))

(assert (= (and b!7862378 (not c!1444805)) b!7862383))

(assert (= (and b!7862383 c!1444806) b!7862384))

(assert (= (and b!7862383 (not c!1444806)) b!7862381))

(assert (= (and b!7862381 c!1444807) b!7862379))

(assert (= (and b!7862381 (not c!1444807)) b!7862380))

(assert (= (or b!7862379 b!7862380) bm!728976))

(assert (= (or b!7862384 b!7862379) bm!728977))

(assert (= (or b!7862385 bm!728977) bm!728975))

(assert (= (or b!7862385 bm!728976) bm!728978))

(declare-fun m!8262816 () Bool)

(assert (=> bm!728975 m!8262816))

(declare-fun m!8262818 () Bool)

(assert (=> d!2354540 m!8262818))

(assert (=> d!2354540 m!8262652))

(declare-fun m!8262820 () Bool)

(assert (=> b!7862381 m!8262820))

(declare-fun m!8262822 () Bool)

(assert (=> bm!728978 m!8262822))

(assert (=> b!7862069 d!2354540))

(declare-fun d!2354542 () Bool)

(declare-fun e!4646153 () Bool)

(assert (=> d!2354542 e!4646153))

(declare-fun c!1444812 () Bool)

(assert (=> d!2354542 (= c!1444812 ((_ is EmptyExpr!21131) r1!6218))))

(declare-fun lt!2680471 () Bool)

(declare-fun e!4646151 () Bool)

(assert (=> d!2354542 (= lt!2680471 e!4646151)))

(declare-fun c!1444811 () Bool)

(assert (=> d!2354542 (= c!1444811 (isEmpty!42368 s!14237))))

(assert (=> d!2354542 (validRegex!11541 r1!6218)))

(assert (=> d!2354542 (= (matchR!10567 r1!6218 s!14237) lt!2680471)))

(declare-fun b!7862391 () Bool)

(declare-fun e!4646155 () Bool)

(declare-fun e!4646152 () Bool)

(assert (=> b!7862391 (= e!4646155 e!4646152)))

(declare-fun res!3125483 () Bool)

(assert (=> b!7862391 (=> res!3125483 e!4646152)))

(declare-fun call!728984 () Bool)

(assert (=> b!7862391 (= res!3125483 call!728984)))

(declare-fun b!7862392 () Bool)

(declare-fun res!3125490 () Bool)

(declare-fun e!4646150 () Bool)

(assert (=> b!7862392 (=> (not res!3125490) (not e!4646150))))

(assert (=> b!7862392 (= res!3125490 (isEmpty!42368 (tail!15622 s!14237)))))

(declare-fun b!7862393 () Bool)

(assert (=> b!7862393 (= e!4646150 (= (head!16079 s!14237) (c!1444707 r1!6218)))))

(declare-fun b!7862394 () Bool)

(declare-fun res!3125484 () Bool)

(assert (=> b!7862394 (=> (not res!3125484) (not e!4646150))))

(assert (=> b!7862394 (= res!3125484 (not call!728984))))

(declare-fun b!7862395 () Bool)

(declare-fun res!3125485 () Bool)

(declare-fun e!4646149 () Bool)

(assert (=> b!7862395 (=> res!3125485 e!4646149)))

(assert (=> b!7862395 (= res!3125485 (not ((_ is ElementMatch!21131) r1!6218)))))

(declare-fun e!4646154 () Bool)

(assert (=> b!7862395 (= e!4646154 e!4646149)))

(declare-fun b!7862396 () Bool)

(assert (=> b!7862396 (= e!4646151 (matchR!10567 (derivativeStep!6364 r1!6218 (head!16079 s!14237)) (tail!15622 s!14237)))))

(declare-fun b!7862397 () Bool)

(declare-fun res!3125487 () Bool)

(assert (=> b!7862397 (=> res!3125487 e!4646152)))

(assert (=> b!7862397 (= res!3125487 (not (isEmpty!42368 (tail!15622 s!14237))))))

(declare-fun bm!728979 () Bool)

(assert (=> bm!728979 (= call!728984 (isEmpty!42368 s!14237))))

(declare-fun b!7862398 () Bool)

(assert (=> b!7862398 (= e!4646153 e!4646154)))

(declare-fun c!1444813 () Bool)

(assert (=> b!7862398 (= c!1444813 ((_ is EmptyLang!21131) r1!6218))))

(declare-fun b!7862399 () Bool)

(assert (=> b!7862399 (= e!4646152 (not (= (head!16079 s!14237) (c!1444707 r1!6218))))))

(declare-fun b!7862400 () Bool)

(assert (=> b!7862400 (= e!4646153 (= lt!2680471 call!728984))))

(declare-fun b!7862401 () Bool)

(assert (=> b!7862401 (= e!4646149 e!4646155)))

(declare-fun res!3125488 () Bool)

(assert (=> b!7862401 (=> (not res!3125488) (not e!4646155))))

(assert (=> b!7862401 (= res!3125488 (not lt!2680471))))

(declare-fun b!7862402 () Bool)

(declare-fun res!3125489 () Bool)

(assert (=> b!7862402 (=> res!3125489 e!4646149)))

(assert (=> b!7862402 (= res!3125489 e!4646150)))

(declare-fun res!3125486 () Bool)

(assert (=> b!7862402 (=> (not res!3125486) (not e!4646150))))

(assert (=> b!7862402 (= res!3125486 lt!2680471)))

(declare-fun b!7862403 () Bool)

(assert (=> b!7862403 (= e!4646151 (nullable!9401 r1!6218))))

(declare-fun b!7862404 () Bool)

(assert (=> b!7862404 (= e!4646154 (not lt!2680471))))

(assert (= (and d!2354542 c!1444811) b!7862403))

(assert (= (and d!2354542 (not c!1444811)) b!7862396))

(assert (= (and d!2354542 c!1444812) b!7862400))

(assert (= (and d!2354542 (not c!1444812)) b!7862398))

(assert (= (and b!7862398 c!1444813) b!7862404))

(assert (= (and b!7862398 (not c!1444813)) b!7862395))

(assert (= (and b!7862395 (not res!3125485)) b!7862402))

(assert (= (and b!7862402 res!3125486) b!7862394))

(assert (= (and b!7862394 res!3125484) b!7862392))

(assert (= (and b!7862392 res!3125490) b!7862393))

(assert (= (and b!7862402 (not res!3125489)) b!7862401))

(assert (= (and b!7862401 res!3125488) b!7862391))

(assert (= (and b!7862391 (not res!3125483)) b!7862397))

(assert (= (and b!7862397 (not res!3125487)) b!7862399))

(assert (= (or b!7862400 b!7862391 b!7862394) bm!728979))

(assert (=> bm!728979 m!8262658))

(assert (=> b!7862403 m!8262666))

(assert (=> b!7862397 m!8262678))

(assert (=> b!7862397 m!8262678))

(assert (=> b!7862397 m!8262696))

(assert (=> b!7862393 m!8262674))

(assert (=> b!7862396 m!8262674))

(assert (=> b!7862396 m!8262674))

(assert (=> b!7862396 m!8262676))

(assert (=> b!7862396 m!8262678))

(assert (=> b!7862396 m!8262676))

(assert (=> b!7862396 m!8262678))

(assert (=> b!7862396 m!8262680))

(assert (=> d!2354542 m!8262658))

(assert (=> d!2354542 m!8262654))

(assert (=> b!7862392 m!8262678))

(assert (=> b!7862392 m!8262678))

(assert (=> b!7862392 m!8262696))

(assert (=> b!7862399 m!8262674))

(assert (=> b!7862070 d!2354542))

(declare-fun b!7862416 () Bool)

(declare-fun res!3125496 () Bool)

(declare-fun e!4646167 () Bool)

(assert (=> b!7862416 (=> res!3125496 e!4646167)))

(assert (=> b!7862416 (= res!3125496 (not ((_ is Concat!29976) lt!2680448)))))

(declare-fun e!4646166 () Bool)

(assert (=> b!7862416 (= e!4646166 e!4646167)))

(declare-fun bm!728983 () Bool)

(declare-fun call!728990 () Bool)

(declare-fun call!728989 () Bool)

(assert (=> bm!728983 (= call!728990 call!728989)))

(declare-fun b!7862417 () Bool)

(declare-fun e!4646170 () Bool)

(declare-fun call!728988 () Bool)

(assert (=> b!7862417 (= e!4646170 call!728988)))

(declare-fun bm!728984 () Bool)

(declare-fun c!1444817 () Bool)

(assert (=> bm!728984 (= call!728988 (validRegex!11541 (ite c!1444817 (regTwo!42775 lt!2680448) (regTwo!42774 lt!2680448))))))

(declare-fun b!7862418 () Bool)

(assert (=> b!7862418 (= e!4646167 e!4646170)))

(declare-fun res!3125500 () Bool)

(assert (=> b!7862418 (=> (not res!3125500) (not e!4646170))))

(assert (=> b!7862418 (= res!3125500 call!728990)))

(declare-fun b!7862419 () Bool)

(declare-fun e!4646168 () Bool)

(assert (=> b!7862419 (= e!4646168 e!4646166)))

(assert (=> b!7862419 (= c!1444817 ((_ is Union!21131) lt!2680448))))

(declare-fun bm!728985 () Bool)

(declare-fun c!1444818 () Bool)

(assert (=> bm!728985 (= call!728989 (validRegex!11541 (ite c!1444818 (reg!21460 lt!2680448) (ite c!1444817 (regOne!42775 lt!2680448) (regOne!42774 lt!2680448)))))))

(declare-fun b!7862420 () Bool)

(declare-fun res!3125498 () Bool)

(declare-fun e!4646169 () Bool)

(assert (=> b!7862420 (=> (not res!3125498) (not e!4646169))))

(assert (=> b!7862420 (= res!3125498 call!728990)))

(assert (=> b!7862420 (= e!4646166 e!4646169)))

(declare-fun b!7862421 () Bool)

(assert (=> b!7862421 (= e!4646169 call!728988)))

(declare-fun b!7862422 () Bool)

(declare-fun e!4646164 () Bool)

(assert (=> b!7862422 (= e!4646164 call!728989)))

(declare-fun b!7862423 () Bool)

(declare-fun e!4646165 () Bool)

(assert (=> b!7862423 (= e!4646165 e!4646168)))

(assert (=> b!7862423 (= c!1444818 ((_ is Star!21131) lt!2680448))))

(declare-fun d!2354546 () Bool)

(declare-fun res!3125497 () Bool)

(assert (=> d!2354546 (=> res!3125497 e!4646165)))

(assert (=> d!2354546 (= res!3125497 ((_ is ElementMatch!21131) lt!2680448))))

(assert (=> d!2354546 (= (validRegex!11541 lt!2680448) e!4646165)))

(declare-fun b!7862424 () Bool)

(assert (=> b!7862424 (= e!4646168 e!4646164)))

(declare-fun res!3125499 () Bool)

(assert (=> b!7862424 (= res!3125499 (not (nullable!9401 (reg!21460 lt!2680448))))))

(assert (=> b!7862424 (=> (not res!3125499) (not e!4646164))))

(assert (= (and d!2354546 (not res!3125497)) b!7862423))

(assert (= (and b!7862423 c!1444818) b!7862424))

(assert (= (and b!7862423 (not c!1444818)) b!7862419))

(assert (= (and b!7862424 res!3125499) b!7862422))

(assert (= (and b!7862419 c!1444817) b!7862420))

(assert (= (and b!7862419 (not c!1444817)) b!7862416))

(assert (= (and b!7862420 res!3125498) b!7862421))

(assert (= (and b!7862416 (not res!3125496)) b!7862418))

(assert (= (and b!7862418 res!3125500) b!7862417))

(assert (= (or b!7862421 b!7862417) bm!728984))

(assert (= (or b!7862420 b!7862418) bm!728983))

(assert (= (or b!7862422 bm!728983) bm!728985))

(declare-fun m!8262832 () Bool)

(assert (=> bm!728984 m!8262832))

(declare-fun m!8262834 () Bool)

(assert (=> bm!728985 m!8262834))

(declare-fun m!8262836 () Bool)

(assert (=> b!7862424 m!8262836))

(assert (=> b!7862071 d!2354546))

(declare-fun d!2354548 () Bool)

(assert (=> d!2354548 (= (isEmpty!42368 s!14237) ((_ is Nil!73866) s!14237))))

(assert (=> b!7862071 d!2354548))

(declare-fun d!2354550 () Bool)

(declare-fun e!4646188 () Bool)

(assert (=> d!2354550 e!4646188))

(declare-fun c!1444821 () Bool)

(assert (=> d!2354550 (= c!1444821 (isEmpty!42368 s!14237))))

(declare-fun lt!2680475 () Unit!168956)

(declare-fun choose!59672 (Regex!21131 List!73990) Unit!168956)

(assert (=> d!2354550 (= lt!2680475 (choose!59672 r1!6218 s!14237))))

(assert (=> d!2354550 (validRegex!11541 r1!6218)))

(assert (=> d!2354550 (= (lemmaRegexAcceptsStringThenDerivativeAcceptsTail!12 r1!6218 s!14237) lt!2680475)))

(declare-fun b!7862484 () Bool)

(assert (=> b!7862484 (= e!4646188 (nullable!9401 r1!6218))))

(declare-fun b!7862485 () Bool)

(assert (=> b!7862485 (= e!4646188 (matchR!10567 (derivativeStep!6364 r1!6218 (head!16079 s!14237)) (tail!15622 s!14237)))))

(assert (= (and d!2354550 c!1444821) b!7862484))

(assert (= (and d!2354550 (not c!1444821)) b!7862485))

(assert (=> d!2354550 m!8262658))

(declare-fun m!8262838 () Bool)

(assert (=> d!2354550 m!8262838))

(assert (=> d!2354550 m!8262654))

(assert (=> b!7862484 m!8262666))

(assert (=> b!7862485 m!8262674))

(assert (=> b!7862485 m!8262674))

(assert (=> b!7862485 m!8262676))

(assert (=> b!7862485 m!8262678))

(assert (=> b!7862485 m!8262676))

(assert (=> b!7862485 m!8262678))

(assert (=> b!7862485 m!8262680))

(assert (=> b!7862071 d!2354550))

(declare-fun b!7862490 () Bool)

(declare-fun e!4646191 () Bool)

(declare-fun tp!2330334 () Bool)

(assert (=> b!7862490 (= e!4646191 (and tp_is_empty!52661 tp!2330334))))

(assert (=> b!7862078 (= tp!2330264 e!4646191)))

(assert (= (and b!7862078 ((_ is Cons!73866) (t!388725 s!14237))) b!7862490))

(declare-fun b!7862501 () Bool)

(declare-fun e!4646194 () Bool)

(assert (=> b!7862501 (= e!4646194 tp_is_empty!52661)))

(declare-fun b!7862502 () Bool)

(declare-fun tp!2330349 () Bool)

(declare-fun tp!2330347 () Bool)

(assert (=> b!7862502 (= e!4646194 (and tp!2330349 tp!2330347))))

(declare-fun b!7862503 () Bool)

(declare-fun tp!2330348 () Bool)

(assert (=> b!7862503 (= e!4646194 tp!2330348)))

(assert (=> b!7862068 (= tp!2330267 e!4646194)))

(declare-fun b!7862504 () Bool)

(declare-fun tp!2330345 () Bool)

(declare-fun tp!2330346 () Bool)

(assert (=> b!7862504 (= e!4646194 (and tp!2330345 tp!2330346))))

(assert (= (and b!7862068 ((_ is ElementMatch!21131) (regOne!42775 r2!6156))) b!7862501))

(assert (= (and b!7862068 ((_ is Concat!29976) (regOne!42775 r2!6156))) b!7862502))

(assert (= (and b!7862068 ((_ is Star!21131) (regOne!42775 r2!6156))) b!7862503))

(assert (= (and b!7862068 ((_ is Union!21131) (regOne!42775 r2!6156))) b!7862504))

(declare-fun b!7862505 () Bool)

(declare-fun e!4646195 () Bool)

(assert (=> b!7862505 (= e!4646195 tp_is_empty!52661)))

(declare-fun b!7862506 () Bool)

(declare-fun tp!2330354 () Bool)

(declare-fun tp!2330352 () Bool)

(assert (=> b!7862506 (= e!4646195 (and tp!2330354 tp!2330352))))

(declare-fun b!7862507 () Bool)

(declare-fun tp!2330353 () Bool)

(assert (=> b!7862507 (= e!4646195 tp!2330353)))

(assert (=> b!7862068 (= tp!2330261 e!4646195)))

(declare-fun b!7862508 () Bool)

(declare-fun tp!2330350 () Bool)

(declare-fun tp!2330351 () Bool)

(assert (=> b!7862508 (= e!4646195 (and tp!2330350 tp!2330351))))

(assert (= (and b!7862068 ((_ is ElementMatch!21131) (regTwo!42775 r2!6156))) b!7862505))

(assert (= (and b!7862068 ((_ is Concat!29976) (regTwo!42775 r2!6156))) b!7862506))

(assert (= (and b!7862068 ((_ is Star!21131) (regTwo!42775 r2!6156))) b!7862507))

(assert (= (and b!7862068 ((_ is Union!21131) (regTwo!42775 r2!6156))) b!7862508))

(declare-fun b!7862509 () Bool)

(declare-fun e!4646196 () Bool)

(assert (=> b!7862509 (= e!4646196 tp_is_empty!52661)))

(declare-fun b!7862510 () Bool)

(declare-fun tp!2330359 () Bool)

(declare-fun tp!2330357 () Bool)

(assert (=> b!7862510 (= e!4646196 (and tp!2330359 tp!2330357))))

(declare-fun b!7862511 () Bool)

(declare-fun tp!2330358 () Bool)

(assert (=> b!7862511 (= e!4646196 tp!2330358)))

(assert (=> b!7862073 (= tp!2330266 e!4646196)))

(declare-fun b!7862512 () Bool)

(declare-fun tp!2330355 () Bool)

(declare-fun tp!2330356 () Bool)

(assert (=> b!7862512 (= e!4646196 (and tp!2330355 tp!2330356))))

(assert (= (and b!7862073 ((_ is ElementMatch!21131) (regOne!42775 r1!6218))) b!7862509))

(assert (= (and b!7862073 ((_ is Concat!29976) (regOne!42775 r1!6218))) b!7862510))

(assert (= (and b!7862073 ((_ is Star!21131) (regOne!42775 r1!6218))) b!7862511))

(assert (= (and b!7862073 ((_ is Union!21131) (regOne!42775 r1!6218))) b!7862512))

(declare-fun b!7862513 () Bool)

(declare-fun e!4646197 () Bool)

(assert (=> b!7862513 (= e!4646197 tp_is_empty!52661)))

(declare-fun b!7862514 () Bool)

(declare-fun tp!2330364 () Bool)

(declare-fun tp!2330362 () Bool)

(assert (=> b!7862514 (= e!4646197 (and tp!2330364 tp!2330362))))

(declare-fun b!7862515 () Bool)

(declare-fun tp!2330363 () Bool)

(assert (=> b!7862515 (= e!4646197 tp!2330363)))

(assert (=> b!7862073 (= tp!2330259 e!4646197)))

(declare-fun b!7862516 () Bool)

(declare-fun tp!2330360 () Bool)

(declare-fun tp!2330361 () Bool)

(assert (=> b!7862516 (= e!4646197 (and tp!2330360 tp!2330361))))

(assert (= (and b!7862073 ((_ is ElementMatch!21131) (regTwo!42775 r1!6218))) b!7862513))

(assert (= (and b!7862073 ((_ is Concat!29976) (regTwo!42775 r1!6218))) b!7862514))

(assert (= (and b!7862073 ((_ is Star!21131) (regTwo!42775 r1!6218))) b!7862515))

(assert (= (and b!7862073 ((_ is Union!21131) (regTwo!42775 r1!6218))) b!7862516))

(declare-fun b!7862517 () Bool)

(declare-fun e!4646198 () Bool)

(assert (=> b!7862517 (= e!4646198 tp_is_empty!52661)))

(declare-fun b!7862518 () Bool)

(declare-fun tp!2330369 () Bool)

(declare-fun tp!2330367 () Bool)

(assert (=> b!7862518 (= e!4646198 (and tp!2330369 tp!2330367))))

(declare-fun b!7862519 () Bool)

(declare-fun tp!2330368 () Bool)

(assert (=> b!7862519 (= e!4646198 tp!2330368)))

(assert (=> b!7862074 (= tp!2330265 e!4646198)))

(declare-fun b!7862520 () Bool)

(declare-fun tp!2330365 () Bool)

(declare-fun tp!2330366 () Bool)

(assert (=> b!7862520 (= e!4646198 (and tp!2330365 tp!2330366))))

(assert (= (and b!7862074 ((_ is ElementMatch!21131) (reg!21460 r1!6218))) b!7862517))

(assert (= (and b!7862074 ((_ is Concat!29976) (reg!21460 r1!6218))) b!7862518))

(assert (= (and b!7862074 ((_ is Star!21131) (reg!21460 r1!6218))) b!7862519))

(assert (= (and b!7862074 ((_ is Union!21131) (reg!21460 r1!6218))) b!7862520))

(declare-fun b!7862521 () Bool)

(declare-fun e!4646199 () Bool)

(assert (=> b!7862521 (= e!4646199 tp_is_empty!52661)))

(declare-fun b!7862522 () Bool)

(declare-fun tp!2330374 () Bool)

(declare-fun tp!2330372 () Bool)

(assert (=> b!7862522 (= e!4646199 (and tp!2330374 tp!2330372))))

(declare-fun b!7862523 () Bool)

(declare-fun tp!2330373 () Bool)

(assert (=> b!7862523 (= e!4646199 tp!2330373)))

(assert (=> b!7862075 (= tp!2330263 e!4646199)))

(declare-fun b!7862524 () Bool)

(declare-fun tp!2330370 () Bool)

(declare-fun tp!2330371 () Bool)

(assert (=> b!7862524 (= e!4646199 (and tp!2330370 tp!2330371))))

(assert (= (and b!7862075 ((_ is ElementMatch!21131) (reg!21460 r2!6156))) b!7862521))

(assert (= (and b!7862075 ((_ is Concat!29976) (reg!21460 r2!6156))) b!7862522))

(assert (= (and b!7862075 ((_ is Star!21131) (reg!21460 r2!6156))) b!7862523))

(assert (= (and b!7862075 ((_ is Union!21131) (reg!21460 r2!6156))) b!7862524))

(declare-fun b!7862525 () Bool)

(declare-fun e!4646200 () Bool)

(assert (=> b!7862525 (= e!4646200 tp_is_empty!52661)))

(declare-fun b!7862526 () Bool)

(declare-fun tp!2330379 () Bool)

(declare-fun tp!2330377 () Bool)

(assert (=> b!7862526 (= e!4646200 (and tp!2330379 tp!2330377))))

(declare-fun b!7862527 () Bool)

(declare-fun tp!2330378 () Bool)

(assert (=> b!7862527 (= e!4646200 tp!2330378)))

(assert (=> b!7862076 (= tp!2330262 e!4646200)))

(declare-fun b!7862528 () Bool)

(declare-fun tp!2330375 () Bool)

(declare-fun tp!2330376 () Bool)

(assert (=> b!7862528 (= e!4646200 (and tp!2330375 tp!2330376))))

(assert (= (and b!7862076 ((_ is ElementMatch!21131) (regOne!42774 r1!6218))) b!7862525))

(assert (= (and b!7862076 ((_ is Concat!29976) (regOne!42774 r1!6218))) b!7862526))

(assert (= (and b!7862076 ((_ is Star!21131) (regOne!42774 r1!6218))) b!7862527))

(assert (= (and b!7862076 ((_ is Union!21131) (regOne!42774 r1!6218))) b!7862528))

(declare-fun b!7862529 () Bool)

(declare-fun e!4646201 () Bool)

(assert (=> b!7862529 (= e!4646201 tp_is_empty!52661)))

(declare-fun b!7862530 () Bool)

(declare-fun tp!2330384 () Bool)

(declare-fun tp!2330382 () Bool)

(assert (=> b!7862530 (= e!4646201 (and tp!2330384 tp!2330382))))

(declare-fun b!7862531 () Bool)

(declare-fun tp!2330383 () Bool)

(assert (=> b!7862531 (= e!4646201 tp!2330383)))

(assert (=> b!7862076 (= tp!2330258 e!4646201)))

(declare-fun b!7862532 () Bool)

(declare-fun tp!2330380 () Bool)

(declare-fun tp!2330381 () Bool)

(assert (=> b!7862532 (= e!4646201 (and tp!2330380 tp!2330381))))

(assert (= (and b!7862076 ((_ is ElementMatch!21131) (regTwo!42774 r1!6218))) b!7862529))

(assert (= (and b!7862076 ((_ is Concat!29976) (regTwo!42774 r1!6218))) b!7862530))

(assert (= (and b!7862076 ((_ is Star!21131) (regTwo!42774 r1!6218))) b!7862531))

(assert (= (and b!7862076 ((_ is Union!21131) (regTwo!42774 r1!6218))) b!7862532))

(declare-fun b!7862533 () Bool)

(declare-fun e!4646202 () Bool)

(assert (=> b!7862533 (= e!4646202 tp_is_empty!52661)))

(declare-fun b!7862534 () Bool)

(declare-fun tp!2330389 () Bool)

(declare-fun tp!2330387 () Bool)

(assert (=> b!7862534 (= e!4646202 (and tp!2330389 tp!2330387))))

(declare-fun b!7862535 () Bool)

(declare-fun tp!2330388 () Bool)

(assert (=> b!7862535 (= e!4646202 tp!2330388)))

(assert (=> b!7862065 (= tp!2330268 e!4646202)))

(declare-fun b!7862536 () Bool)

(declare-fun tp!2330385 () Bool)

(declare-fun tp!2330386 () Bool)

(assert (=> b!7862536 (= e!4646202 (and tp!2330385 tp!2330386))))

(assert (= (and b!7862065 ((_ is ElementMatch!21131) (regOne!42774 r2!6156))) b!7862533))

(assert (= (and b!7862065 ((_ is Concat!29976) (regOne!42774 r2!6156))) b!7862534))

(assert (= (and b!7862065 ((_ is Star!21131) (regOne!42774 r2!6156))) b!7862535))

(assert (= (and b!7862065 ((_ is Union!21131) (regOne!42774 r2!6156))) b!7862536))

(declare-fun b!7862537 () Bool)

(declare-fun e!4646203 () Bool)

(assert (=> b!7862537 (= e!4646203 tp_is_empty!52661)))

(declare-fun b!7862538 () Bool)

(declare-fun tp!2330394 () Bool)

(declare-fun tp!2330392 () Bool)

(assert (=> b!7862538 (= e!4646203 (and tp!2330394 tp!2330392))))

(declare-fun b!7862539 () Bool)

(declare-fun tp!2330393 () Bool)

(assert (=> b!7862539 (= e!4646203 tp!2330393)))

(assert (=> b!7862065 (= tp!2330260 e!4646203)))

(declare-fun b!7862540 () Bool)

(declare-fun tp!2330390 () Bool)

(declare-fun tp!2330391 () Bool)

(assert (=> b!7862540 (= e!4646203 (and tp!2330390 tp!2330391))))

(assert (= (and b!7862065 ((_ is ElementMatch!21131) (regTwo!42774 r2!6156))) b!7862537))

(assert (= (and b!7862065 ((_ is Concat!29976) (regTwo!42774 r2!6156))) b!7862538))

(assert (= (and b!7862065 ((_ is Star!21131) (regTwo!42774 r2!6156))) b!7862539))

(assert (= (and b!7862065 ((_ is Union!21131) (regTwo!42774 r2!6156))) b!7862540))

(check-sat (not bm!728962) (not d!2354534) (not b!7862528) (not b!7862535) (not b!7862507) (not b!7862403) (not d!2354538) tp_is_empty!52661 (not d!2354492) (not b!7862504) (not bm!728904) (not b!7862538) (not bm!728974) (not bm!728903) (not bm!728916) (not b!7862523) (not b!7862361) (not b!7862516) (not b!7862514) (not b!7862526) (not b!7862197) (not b!7862530) (not b!7862485) (not bm!728971) (not b!7862532) (not b!7862208) (not b!7862502) (not b!7862381) (not bm!728984) (not b!7862539) (not b!7862510) (not bm!728979) (not b!7862424) (not b!7862522) (not b!7862527) (not b!7862540) (not d!2354526) (not b!7862518) (not bm!728985) (not d!2354540) (not bm!728949) (not b!7862536) (not b!7862512) (not b!7862515) (not bm!728975) (not b!7862503) (not d!2354542) (not b!7862531) (not bm!728963) (not b!7862484) (not b!7862371) (not bm!728970) (not b!7862392) (not b!7862511) (not b!7862198) (not b!7862347) (not b!7862397) (not b!7862338) (not d!2354496) (not b!7862133) (not b!7862506) (not d!2354500) (not bm!728967) (not bm!728959) (not b!7862524) (not b!7862399) (not b!7862202) (not b!7862204) (not bm!728978) (not b!7862520) (not b!7862534) (not b!7862490) (not bm!728952) (not d!2354550) (not b!7862396) (not b!7862201) (not b!7862393) (not b!7862519) (not bm!728960) (not b!7862300) (not b!7862508))
(check-sat)
