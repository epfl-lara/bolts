; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!293412 () Bool)

(assert start!293412)

(declare-fun b!3080001 () Bool)

(declare-fun res!1263772 () Bool)

(declare-fun e!1926702 () Bool)

(assert (=> b!3080001 (=> res!1263772 e!1926702)))

(declare-datatypes ((C!19256 0))(
  ( (C!19257 (val!11664 Int)) )
))
(declare-datatypes ((Regex!9535 0))(
  ( (ElementMatch!9535 (c!512751 C!19256)) (Concat!14856 (regOne!19582 Regex!9535) (regTwo!19582 Regex!9535)) (EmptyExpr!9535) (Star!9535 (reg!9864 Regex!9535)) (EmptyLang!9535) (Union!9535 (regOne!19583 Regex!9535) (regTwo!19583 Regex!9535)) )
))
(declare-fun lt!1053112 () Regex!9535)

(declare-fun isEmptyLang!586 (Regex!9535) Bool)

(assert (=> b!3080001 (= res!1263772 (isEmptyLang!586 lt!1053112))))

(declare-fun b!3080002 () Bool)

(declare-fun res!1263774 () Bool)

(declare-fun e!1926705 () Bool)

(assert (=> b!3080002 (=> res!1263774 e!1926705)))

(declare-datatypes ((List!35400 0))(
  ( (Nil!35276) (Cons!35276 (h!40696 C!19256) (t!234465 List!35400)) )
))
(declare-fun s!11993 () List!35400)

(declare-fun isEmpty!19611 (List!35400) Bool)

(assert (=> b!3080002 (= res!1263774 (isEmpty!19611 s!11993))))

(declare-fun b!3080004 () Bool)

(declare-fun e!1926703 () Bool)

(declare-fun lt!1053110 () Regex!9535)

(declare-fun validRegex!4268 (Regex!9535) Bool)

(assert (=> b!3080004 (= e!1926703 (validRegex!4268 lt!1053110))))

(declare-fun b!3080005 () Bool)

(declare-fun e!1926700 () Bool)

(declare-fun tp!970268 () Bool)

(declare-fun tp!970264 () Bool)

(assert (=> b!3080005 (= e!1926700 (and tp!970268 tp!970264))))

(declare-fun b!3080006 () Bool)

(declare-fun tp_is_empty!16633 () Bool)

(assert (=> b!3080006 (= e!1926700 tp_is_empty!16633)))

(declare-fun b!3080007 () Bool)

(declare-fun e!1926704 () Bool)

(assert (=> b!3080007 (= e!1926704 (not e!1926705))))

(declare-fun res!1263770 () Bool)

(assert (=> b!3080007 (=> res!1263770 e!1926705)))

(declare-fun lt!1053114 () Bool)

(declare-fun r!17423 () Regex!9535)

(get-info :version)

(assert (=> b!3080007 (= res!1263770 (or lt!1053114 (not ((_ is Concat!14856) r!17423))))))

(declare-fun matchRSpec!1672 (Regex!9535 List!35400) Bool)

(assert (=> b!3080007 (= lt!1053114 (matchRSpec!1672 r!17423 s!11993))))

(declare-fun matchR!4417 (Regex!9535 List!35400) Bool)

(assert (=> b!3080007 (= lt!1053114 (matchR!4417 r!17423 s!11993))))

(declare-datatypes ((Unit!49509 0))(
  ( (Unit!49510) )
))
(declare-fun lt!1053113 () Unit!49509)

(declare-fun mainMatchTheorem!1672 (Regex!9535 List!35400) Unit!49509)

(assert (=> b!3080007 (= lt!1053113 (mainMatchTheorem!1672 r!17423 s!11993))))

(declare-fun res!1263771 () Bool)

(assert (=> start!293412 (=> (not res!1263771) (not e!1926704))))

(assert (=> start!293412 (= res!1263771 (validRegex!4268 r!17423))))

(assert (=> start!293412 e!1926704))

(assert (=> start!293412 e!1926700))

(declare-fun e!1926701 () Bool)

(assert (=> start!293412 e!1926701))

(declare-fun b!3080003 () Bool)

(declare-fun tp!970265 () Bool)

(declare-fun tp!970266 () Bool)

(assert (=> b!3080003 (= e!1926700 (and tp!970265 tp!970266))))

(declare-fun b!3080008 () Bool)

(declare-fun res!1263767 () Bool)

(assert (=> b!3080008 (=> res!1263767 e!1926702)))

(declare-fun lt!1053111 () Regex!9535)

(declare-fun isEmptyExpr!592 (Regex!9535) Bool)

(assert (=> b!3080008 (= res!1263767 (isEmptyExpr!592 lt!1053111))))

(declare-fun b!3080009 () Bool)

(declare-fun tp!970267 () Bool)

(assert (=> b!3080009 (= e!1926700 tp!970267)))

(declare-fun b!3080010 () Bool)

(assert (=> b!3080010 (= e!1926705 e!1926702)))

(declare-fun res!1263768 () Bool)

(assert (=> b!3080010 (=> res!1263768 e!1926702)))

(assert (=> b!3080010 (= res!1263768 (isEmptyLang!586 lt!1053111))))

(declare-fun simplify!490 (Regex!9535) Regex!9535)

(assert (=> b!3080010 (= lt!1053112 (simplify!490 (regTwo!19582 r!17423)))))

(assert (=> b!3080010 (= lt!1053111 (simplify!490 (regOne!19582 r!17423)))))

(declare-fun b!3080011 () Bool)

(declare-fun res!1263769 () Bool)

(assert (=> b!3080011 (=> res!1263769 e!1926702)))

(assert (=> b!3080011 (= res!1263769 (isEmptyExpr!592 lt!1053112))))

(declare-fun b!3080012 () Bool)

(declare-fun tp!970269 () Bool)

(assert (=> b!3080012 (= e!1926701 (and tp_is_empty!16633 tp!970269))))

(declare-fun b!3080013 () Bool)

(assert (=> b!3080013 (= e!1926702 e!1926703)))

(declare-fun res!1263773 () Bool)

(assert (=> b!3080013 (=> res!1263773 e!1926703)))

(assert (=> b!3080013 (= res!1263773 (not (matchR!4417 lt!1053110 s!11993)))))

(assert (=> b!3080013 (= lt!1053110 (Concat!14856 lt!1053111 lt!1053112))))

(assert (= (and start!293412 res!1263771) b!3080007))

(assert (= (and b!3080007 (not res!1263770)) b!3080002))

(assert (= (and b!3080002 (not res!1263774)) b!3080010))

(assert (= (and b!3080010 (not res!1263768)) b!3080001))

(assert (= (and b!3080001 (not res!1263772)) b!3080008))

(assert (= (and b!3080008 (not res!1263767)) b!3080011))

(assert (= (and b!3080011 (not res!1263769)) b!3080013))

(assert (= (and b!3080013 (not res!1263773)) b!3080004))

(assert (= (and start!293412 ((_ is ElementMatch!9535) r!17423)) b!3080006))

(assert (= (and start!293412 ((_ is Concat!14856) r!17423)) b!3080005))

(assert (= (and start!293412 ((_ is Star!9535) r!17423)) b!3080009))

(assert (= (and start!293412 ((_ is Union!9535) r!17423)) b!3080003))

(assert (= (and start!293412 ((_ is Cons!35276) s!11993)) b!3080012))

(declare-fun m!3389811 () Bool)

(assert (=> b!3080013 m!3389811))

(declare-fun m!3389813 () Bool)

(assert (=> b!3080002 m!3389813))

(declare-fun m!3389815 () Bool)

(assert (=> b!3080004 m!3389815))

(declare-fun m!3389817 () Bool)

(assert (=> b!3080001 m!3389817))

(declare-fun m!3389819 () Bool)

(assert (=> b!3080010 m!3389819))

(declare-fun m!3389821 () Bool)

(assert (=> b!3080010 m!3389821))

(declare-fun m!3389823 () Bool)

(assert (=> b!3080010 m!3389823))

(declare-fun m!3389825 () Bool)

(assert (=> start!293412 m!3389825))

(declare-fun m!3389827 () Bool)

(assert (=> b!3080008 m!3389827))

(declare-fun m!3389829 () Bool)

(assert (=> b!3080011 m!3389829))

(declare-fun m!3389831 () Bool)

(assert (=> b!3080007 m!3389831))

(declare-fun m!3389833 () Bool)

(assert (=> b!3080007 m!3389833))

(declare-fun m!3389835 () Bool)

(assert (=> b!3080007 m!3389835))

(check-sat (not b!3080001) (not b!3080011) (not b!3080007) (not b!3080009) tp_is_empty!16633 (not b!3080012) (not start!293412) (not b!3080002) (not b!3080010) (not b!3080005) (not b!3080004) (not b!3080003) (not b!3080008) (not b!3080013))
(check-sat)
(get-model)

(declare-fun d!857415 () Bool)

(assert (=> d!857415 (= (isEmptyExpr!592 lt!1053112) ((_ is EmptyExpr!9535) lt!1053112))))

(assert (=> b!3080011 d!857415))

(declare-fun b!3080099 () Bool)

(assert (=> b!3080099 true))

(assert (=> b!3080099 true))

(declare-fun bs!532885 () Bool)

(declare-fun b!3080096 () Bool)

(assert (= bs!532885 (and b!3080096 b!3080099)))

(declare-fun lambda!114298 () Int)

(declare-fun lambda!114297 () Int)

(assert (=> bs!532885 (not (= lambda!114298 lambda!114297))))

(assert (=> b!3080096 true))

(assert (=> b!3080096 true))

(declare-fun bm!214574 () Bool)

(declare-fun call!214579 () Bool)

(assert (=> bm!214574 (= call!214579 (isEmpty!19611 s!11993))))

(declare-fun b!3080093 () Bool)

(declare-fun e!1926750 () Bool)

(declare-fun e!1926754 () Bool)

(assert (=> b!3080093 (= e!1926750 e!1926754)))

(declare-fun c!512773 () Bool)

(assert (=> b!3080093 (= c!512773 ((_ is Star!9535) r!17423))))

(declare-fun b!3080094 () Bool)

(declare-fun e!1926753 () Bool)

(declare-fun e!1926752 () Bool)

(assert (=> b!3080094 (= e!1926753 e!1926752)))

(declare-fun res!1263811 () Bool)

(assert (=> b!3080094 (= res!1263811 (not ((_ is EmptyLang!9535) r!17423)))))

(assert (=> b!3080094 (=> (not res!1263811) (not e!1926752))))

(declare-fun b!3080095 () Bool)

(declare-fun c!512772 () Bool)

(assert (=> b!3080095 (= c!512772 ((_ is Union!9535) r!17423))))

(declare-fun e!1926751 () Bool)

(assert (=> b!3080095 (= e!1926751 e!1926750)))

(declare-fun call!214580 () Bool)

(assert (=> b!3080096 (= e!1926754 call!214580)))

(declare-fun b!3080097 () Bool)

(declare-fun e!1926755 () Bool)

(assert (=> b!3080097 (= e!1926750 e!1926755)))

(declare-fun res!1263810 () Bool)

(assert (=> b!3080097 (= res!1263810 (matchRSpec!1672 (regOne!19583 r!17423) s!11993))))

(assert (=> b!3080097 (=> res!1263810 e!1926755)))

(declare-fun b!3080098 () Bool)

(declare-fun res!1263812 () Bool)

(declare-fun e!1926749 () Bool)

(assert (=> b!3080098 (=> res!1263812 e!1926749)))

(assert (=> b!3080098 (= res!1263812 call!214579)))

(assert (=> b!3080098 (= e!1926754 e!1926749)))

(assert (=> b!3080099 (= e!1926749 call!214580)))

(declare-fun bm!214575 () Bool)

(declare-fun Exists!1798 (Int) Bool)

(assert (=> bm!214575 (= call!214580 (Exists!1798 (ite c!512773 lambda!114297 lambda!114298)))))

(declare-fun b!3080100 () Bool)

(assert (=> b!3080100 (= e!1926753 call!214579)))

(declare-fun d!857417 () Bool)

(declare-fun c!512774 () Bool)

(assert (=> d!857417 (= c!512774 ((_ is EmptyExpr!9535) r!17423))))

(assert (=> d!857417 (= (matchRSpec!1672 r!17423 s!11993) e!1926753)))

(declare-fun b!3080101 () Bool)

(assert (=> b!3080101 (= e!1926755 (matchRSpec!1672 (regTwo!19583 r!17423) s!11993))))

(declare-fun b!3080102 () Bool)

(declare-fun c!512775 () Bool)

(assert (=> b!3080102 (= c!512775 ((_ is ElementMatch!9535) r!17423))))

(assert (=> b!3080102 (= e!1926752 e!1926751)))

(declare-fun b!3080103 () Bool)

(assert (=> b!3080103 (= e!1926751 (= s!11993 (Cons!35276 (c!512751 r!17423) Nil!35276)))))

(assert (= (and d!857417 c!512774) b!3080100))

(assert (= (and d!857417 (not c!512774)) b!3080094))

(assert (= (and b!3080094 res!1263811) b!3080102))

(assert (= (and b!3080102 c!512775) b!3080103))

(assert (= (and b!3080102 (not c!512775)) b!3080095))

(assert (= (and b!3080095 c!512772) b!3080097))

(assert (= (and b!3080095 (not c!512772)) b!3080093))

(assert (= (and b!3080097 (not res!1263810)) b!3080101))

(assert (= (and b!3080093 c!512773) b!3080098))

(assert (= (and b!3080093 (not c!512773)) b!3080096))

(assert (= (and b!3080098 (not res!1263812)) b!3080099))

(assert (= (or b!3080099 b!3080096) bm!214575))

(assert (= (or b!3080100 b!3080098) bm!214574))

(assert (=> bm!214574 m!3389813))

(declare-fun m!3389843 () Bool)

(assert (=> b!3080097 m!3389843))

(declare-fun m!3389845 () Bool)

(assert (=> bm!214575 m!3389845))

(declare-fun m!3389847 () Bool)

(assert (=> b!3080101 m!3389847))

(assert (=> b!3080007 d!857417))

(declare-fun d!857423 () Bool)

(declare-fun e!1926794 () Bool)

(assert (=> d!857423 e!1926794))

(declare-fun c!512791 () Bool)

(assert (=> d!857423 (= c!512791 ((_ is EmptyExpr!9535) r!17423))))

(declare-fun lt!1053123 () Bool)

(declare-fun e!1926796 () Bool)

(assert (=> d!857423 (= lt!1053123 e!1926796)))

(declare-fun c!512792 () Bool)

(assert (=> d!857423 (= c!512792 (isEmpty!19611 s!11993))))

(assert (=> d!857423 (validRegex!4268 r!17423)))

(assert (=> d!857423 (= (matchR!4417 r!17423 s!11993) lt!1053123)))

(declare-fun b!3080178 () Bool)

(declare-fun res!1263856 () Bool)

(declare-fun e!1926793 () Bool)

(assert (=> b!3080178 (=> res!1263856 e!1926793)))

(assert (=> b!3080178 (= res!1263856 (not ((_ is ElementMatch!9535) r!17423)))))

(declare-fun e!1926792 () Bool)

(assert (=> b!3080178 (= e!1926792 e!1926793)))

(declare-fun b!3080179 () Bool)

(declare-fun e!1926795 () Bool)

(declare-fun head!6835 (List!35400) C!19256)

(assert (=> b!3080179 (= e!1926795 (= (head!6835 s!11993) (c!512751 r!17423)))))

(declare-fun b!3080180 () Bool)

(assert (=> b!3080180 (= e!1926794 e!1926792)))

(declare-fun c!512793 () Bool)

(assert (=> b!3080180 (= c!512793 ((_ is EmptyLang!9535) r!17423))))

(declare-fun b!3080181 () Bool)

(declare-fun derivativeStep!2776 (Regex!9535 C!19256) Regex!9535)

(declare-fun tail!5062 (List!35400) List!35400)

(assert (=> b!3080181 (= e!1926796 (matchR!4417 (derivativeStep!2776 r!17423 (head!6835 s!11993)) (tail!5062 s!11993)))))

(declare-fun b!3080182 () Bool)

(declare-fun e!1926791 () Bool)

(assert (=> b!3080182 (= e!1926793 e!1926791)))

(declare-fun res!1263857 () Bool)

(assert (=> b!3080182 (=> (not res!1263857) (not e!1926791))))

(assert (=> b!3080182 (= res!1263857 (not lt!1053123))))

(declare-fun b!3080183 () Bool)

(declare-fun call!214586 () Bool)

(assert (=> b!3080183 (= e!1926794 (= lt!1053123 call!214586))))

(declare-fun b!3080184 () Bool)

(declare-fun e!1926797 () Bool)

(assert (=> b!3080184 (= e!1926791 e!1926797)))

(declare-fun res!1263858 () Bool)

(assert (=> b!3080184 (=> res!1263858 e!1926797)))

(assert (=> b!3080184 (= res!1263858 call!214586)))

(declare-fun b!3080185 () Bool)

(declare-fun res!1263860 () Bool)

(assert (=> b!3080185 (=> (not res!1263860) (not e!1926795))))

(assert (=> b!3080185 (= res!1263860 (isEmpty!19611 (tail!5062 s!11993)))))

(declare-fun b!3080186 () Bool)

(declare-fun res!1263853 () Bool)

(assert (=> b!3080186 (=> (not res!1263853) (not e!1926795))))

(assert (=> b!3080186 (= res!1263853 (not call!214586))))

(declare-fun bm!214581 () Bool)

(assert (=> bm!214581 (= call!214586 (isEmpty!19611 s!11993))))

(declare-fun b!3080187 () Bool)

(assert (=> b!3080187 (= e!1926797 (not (= (head!6835 s!11993) (c!512751 r!17423))))))

(declare-fun b!3080188 () Bool)

(declare-fun res!1263855 () Bool)

(assert (=> b!3080188 (=> res!1263855 e!1926793)))

(assert (=> b!3080188 (= res!1263855 e!1926795)))

(declare-fun res!1263859 () Bool)

(assert (=> b!3080188 (=> (not res!1263859) (not e!1926795))))

(assert (=> b!3080188 (= res!1263859 lt!1053123)))

(declare-fun b!3080189 () Bool)

(declare-fun nullable!3181 (Regex!9535) Bool)

(assert (=> b!3080189 (= e!1926796 (nullable!3181 r!17423))))

(declare-fun b!3080190 () Bool)

(declare-fun res!1263854 () Bool)

(assert (=> b!3080190 (=> res!1263854 e!1926797)))

(assert (=> b!3080190 (= res!1263854 (not (isEmpty!19611 (tail!5062 s!11993))))))

(declare-fun b!3080191 () Bool)

(assert (=> b!3080191 (= e!1926792 (not lt!1053123))))

(assert (= (and d!857423 c!512792) b!3080189))

(assert (= (and d!857423 (not c!512792)) b!3080181))

(assert (= (and d!857423 c!512791) b!3080183))

(assert (= (and d!857423 (not c!512791)) b!3080180))

(assert (= (and b!3080180 c!512793) b!3080191))

(assert (= (and b!3080180 (not c!512793)) b!3080178))

(assert (= (and b!3080178 (not res!1263856)) b!3080188))

(assert (= (and b!3080188 res!1263859) b!3080186))

(assert (= (and b!3080186 res!1263853) b!3080185))

(assert (= (and b!3080185 res!1263860) b!3080179))

(assert (= (and b!3080188 (not res!1263855)) b!3080182))

(assert (= (and b!3080182 res!1263857) b!3080184))

(assert (= (and b!3080184 (not res!1263858)) b!3080190))

(assert (= (and b!3080190 (not res!1263854)) b!3080187))

(assert (= (or b!3080183 b!3080184 b!3080186) bm!214581))

(declare-fun m!3389863 () Bool)

(assert (=> b!3080181 m!3389863))

(assert (=> b!3080181 m!3389863))

(declare-fun m!3389865 () Bool)

(assert (=> b!3080181 m!3389865))

(declare-fun m!3389867 () Bool)

(assert (=> b!3080181 m!3389867))

(assert (=> b!3080181 m!3389865))

(assert (=> b!3080181 m!3389867))

(declare-fun m!3389869 () Bool)

(assert (=> b!3080181 m!3389869))

(assert (=> d!857423 m!3389813))

(assert (=> d!857423 m!3389825))

(assert (=> bm!214581 m!3389813))

(declare-fun m!3389871 () Bool)

(assert (=> b!3080189 m!3389871))

(assert (=> b!3080179 m!3389863))

(assert (=> b!3080190 m!3389867))

(assert (=> b!3080190 m!3389867))

(declare-fun m!3389873 () Bool)

(assert (=> b!3080190 m!3389873))

(assert (=> b!3080185 m!3389867))

(assert (=> b!3080185 m!3389867))

(assert (=> b!3080185 m!3389873))

(assert (=> b!3080187 m!3389863))

(assert (=> b!3080007 d!857423))

(declare-fun d!857431 () Bool)

(assert (=> d!857431 (= (matchR!4417 r!17423 s!11993) (matchRSpec!1672 r!17423 s!11993))))

(declare-fun lt!1053126 () Unit!49509)

(declare-fun choose!18261 (Regex!9535 List!35400) Unit!49509)

(assert (=> d!857431 (= lt!1053126 (choose!18261 r!17423 s!11993))))

(assert (=> d!857431 (validRegex!4268 r!17423)))

(assert (=> d!857431 (= (mainMatchTheorem!1672 r!17423 s!11993) lt!1053126)))

(declare-fun bs!532887 () Bool)

(assert (= bs!532887 d!857431))

(assert (=> bs!532887 m!3389833))

(assert (=> bs!532887 m!3389831))

(declare-fun m!3389875 () Bool)

(assert (=> bs!532887 m!3389875))

(assert (=> bs!532887 m!3389825))

(assert (=> b!3080007 d!857431))

(declare-fun d!857433 () Bool)

(assert (=> d!857433 (= (isEmpty!19611 s!11993) ((_ is Nil!35276) s!11993))))

(assert (=> b!3080002 d!857433))

(declare-fun d!857435 () Bool)

(assert (=> d!857435 (= (isEmptyLang!586 lt!1053112) ((_ is EmptyLang!9535) lt!1053112))))

(assert (=> b!3080001 d!857435))

(declare-fun d!857437 () Bool)

(declare-fun e!1926801 () Bool)

(assert (=> d!857437 e!1926801))

(declare-fun c!512794 () Bool)

(assert (=> d!857437 (= c!512794 ((_ is EmptyExpr!9535) lt!1053110))))

(declare-fun lt!1053127 () Bool)

(declare-fun e!1926803 () Bool)

(assert (=> d!857437 (= lt!1053127 e!1926803)))

(declare-fun c!512795 () Bool)

(assert (=> d!857437 (= c!512795 (isEmpty!19611 s!11993))))

(assert (=> d!857437 (validRegex!4268 lt!1053110)))

(assert (=> d!857437 (= (matchR!4417 lt!1053110 s!11993) lt!1053127)))

(declare-fun b!3080192 () Bool)

(declare-fun res!1263864 () Bool)

(declare-fun e!1926800 () Bool)

(assert (=> b!3080192 (=> res!1263864 e!1926800)))

(assert (=> b!3080192 (= res!1263864 (not ((_ is ElementMatch!9535) lt!1053110)))))

(declare-fun e!1926799 () Bool)

(assert (=> b!3080192 (= e!1926799 e!1926800)))

(declare-fun b!3080193 () Bool)

(declare-fun e!1926802 () Bool)

(assert (=> b!3080193 (= e!1926802 (= (head!6835 s!11993) (c!512751 lt!1053110)))))

(declare-fun b!3080194 () Bool)

(assert (=> b!3080194 (= e!1926801 e!1926799)))

(declare-fun c!512796 () Bool)

(assert (=> b!3080194 (= c!512796 ((_ is EmptyLang!9535) lt!1053110))))

(declare-fun b!3080195 () Bool)

(assert (=> b!3080195 (= e!1926803 (matchR!4417 (derivativeStep!2776 lt!1053110 (head!6835 s!11993)) (tail!5062 s!11993)))))

(declare-fun b!3080196 () Bool)

(declare-fun e!1926798 () Bool)

(assert (=> b!3080196 (= e!1926800 e!1926798)))

(declare-fun res!1263865 () Bool)

(assert (=> b!3080196 (=> (not res!1263865) (not e!1926798))))

(assert (=> b!3080196 (= res!1263865 (not lt!1053127))))

(declare-fun b!3080197 () Bool)

(declare-fun call!214587 () Bool)

(assert (=> b!3080197 (= e!1926801 (= lt!1053127 call!214587))))

(declare-fun b!3080198 () Bool)

(declare-fun e!1926804 () Bool)

(assert (=> b!3080198 (= e!1926798 e!1926804)))

(declare-fun res!1263866 () Bool)

(assert (=> b!3080198 (=> res!1263866 e!1926804)))

(assert (=> b!3080198 (= res!1263866 call!214587)))

(declare-fun b!3080199 () Bool)

(declare-fun res!1263868 () Bool)

(assert (=> b!3080199 (=> (not res!1263868) (not e!1926802))))

(assert (=> b!3080199 (= res!1263868 (isEmpty!19611 (tail!5062 s!11993)))))

(declare-fun b!3080200 () Bool)

(declare-fun res!1263861 () Bool)

(assert (=> b!3080200 (=> (not res!1263861) (not e!1926802))))

(assert (=> b!3080200 (= res!1263861 (not call!214587))))

(declare-fun bm!214582 () Bool)

(assert (=> bm!214582 (= call!214587 (isEmpty!19611 s!11993))))

(declare-fun b!3080201 () Bool)

(assert (=> b!3080201 (= e!1926804 (not (= (head!6835 s!11993) (c!512751 lt!1053110))))))

(declare-fun b!3080202 () Bool)

(declare-fun res!1263863 () Bool)

(assert (=> b!3080202 (=> res!1263863 e!1926800)))

(assert (=> b!3080202 (= res!1263863 e!1926802)))

(declare-fun res!1263867 () Bool)

(assert (=> b!3080202 (=> (not res!1263867) (not e!1926802))))

(assert (=> b!3080202 (= res!1263867 lt!1053127)))

(declare-fun b!3080203 () Bool)

(assert (=> b!3080203 (= e!1926803 (nullable!3181 lt!1053110))))

(declare-fun b!3080204 () Bool)

(declare-fun res!1263862 () Bool)

(assert (=> b!3080204 (=> res!1263862 e!1926804)))

(assert (=> b!3080204 (= res!1263862 (not (isEmpty!19611 (tail!5062 s!11993))))))

(declare-fun b!3080205 () Bool)

(assert (=> b!3080205 (= e!1926799 (not lt!1053127))))

(assert (= (and d!857437 c!512795) b!3080203))

(assert (= (and d!857437 (not c!512795)) b!3080195))

(assert (= (and d!857437 c!512794) b!3080197))

(assert (= (and d!857437 (not c!512794)) b!3080194))

(assert (= (and b!3080194 c!512796) b!3080205))

(assert (= (and b!3080194 (not c!512796)) b!3080192))

(assert (= (and b!3080192 (not res!1263864)) b!3080202))

(assert (= (and b!3080202 res!1263867) b!3080200))

(assert (= (and b!3080200 res!1263861) b!3080199))

(assert (= (and b!3080199 res!1263868) b!3080193))

(assert (= (and b!3080202 (not res!1263863)) b!3080196))

(assert (= (and b!3080196 res!1263865) b!3080198))

(assert (= (and b!3080198 (not res!1263866)) b!3080204))

(assert (= (and b!3080204 (not res!1263862)) b!3080201))

(assert (= (or b!3080197 b!3080198 b!3080200) bm!214582))

(assert (=> b!3080195 m!3389863))

(assert (=> b!3080195 m!3389863))

(declare-fun m!3389877 () Bool)

(assert (=> b!3080195 m!3389877))

(assert (=> b!3080195 m!3389867))

(assert (=> b!3080195 m!3389877))

(assert (=> b!3080195 m!3389867))

(declare-fun m!3389879 () Bool)

(assert (=> b!3080195 m!3389879))

(assert (=> d!857437 m!3389813))

(assert (=> d!857437 m!3389815))

(assert (=> bm!214582 m!3389813))

(declare-fun m!3389881 () Bool)

(assert (=> b!3080203 m!3389881))

(assert (=> b!3080193 m!3389863))

(assert (=> b!3080204 m!3389867))

(assert (=> b!3080204 m!3389867))

(assert (=> b!3080204 m!3389873))

(assert (=> b!3080199 m!3389867))

(assert (=> b!3080199 m!3389867))

(assert (=> b!3080199 m!3389873))

(assert (=> b!3080201 m!3389863))

(assert (=> b!3080013 d!857437))

(declare-fun d!857439 () Bool)

(assert (=> d!857439 (= (isEmptyExpr!592 lt!1053111) ((_ is EmptyExpr!9535) lt!1053111))))

(assert (=> b!3080008 d!857439))

(declare-fun d!857441 () Bool)

(assert (=> d!857441 (= (isEmptyLang!586 lt!1053111) ((_ is EmptyLang!9535) lt!1053111))))

(assert (=> b!3080010 d!857441))

(declare-fun b!3080374 () Bool)

(declare-fun e!1926904 () Regex!9535)

(declare-fun lt!1053165 () Regex!9535)

(declare-fun lt!1053166 () Regex!9535)

(assert (=> b!3080374 (= e!1926904 (Union!9535 lt!1053165 lt!1053166))))

(declare-fun c!512871 () Bool)

(declare-fun call!214640 () Bool)

(declare-fun lt!1053164 () Regex!9535)

(declare-fun lt!1053168 () Regex!9535)

(declare-fun bm!214631 () Bool)

(assert (=> bm!214631 (= call!214640 (isEmptyExpr!592 (ite c!512871 lt!1053164 lt!1053168)))))

(declare-fun b!3080375 () Bool)

(declare-fun e!1926907 () Regex!9535)

(assert (=> b!3080375 (= e!1926907 (regTwo!19582 r!17423))))

(declare-fun b!3080376 () Bool)

(declare-fun e!1926911 () Regex!9535)

(declare-fun e!1926910 () Regex!9535)

(assert (=> b!3080376 (= e!1926911 e!1926910)))

(declare-fun lt!1053167 () Regex!9535)

(declare-fun call!214637 () Regex!9535)

(assert (=> b!3080376 (= lt!1053167 call!214637)))

(declare-fun call!214639 () Regex!9535)

(assert (=> b!3080376 (= lt!1053168 call!214639)))

(declare-fun res!1263898 () Bool)

(declare-fun call!214642 () Bool)

(assert (=> b!3080376 (= res!1263898 call!214642)))

(declare-fun e!1926908 () Bool)

(assert (=> b!3080376 (=> res!1263898 e!1926908)))

(declare-fun c!512869 () Bool)

(assert (=> b!3080376 (= c!512869 e!1926908)))

(declare-fun b!3080377 () Bool)

(declare-fun e!1926903 () Regex!9535)

(assert (=> b!3080377 (= e!1926903 e!1926907)))

(declare-fun c!512877 () Bool)

(assert (=> b!3080377 (= c!512877 ((_ is ElementMatch!9535) (regTwo!19582 r!17423)))))

(declare-fun bm!214632 () Bool)

(declare-fun call!214638 () Bool)

(assert (=> bm!214632 (= call!214642 call!214638)))

(declare-fun call!214636 () Bool)

(declare-fun c!512875 () Bool)

(declare-fun bm!214633 () Bool)

(assert (=> bm!214633 (= call!214636 (isEmptyLang!586 (ite c!512875 lt!1053166 lt!1053168)))))

(declare-fun bm!214634 () Bool)

(declare-fun call!214641 () Regex!9535)

(assert (=> bm!214634 (= call!214641 (simplify!490 (ite c!512871 (reg!9864 (regTwo!19582 r!17423)) (ite c!512875 (regOne!19583 (regTwo!19582 r!17423)) (regTwo!19582 (regTwo!19582 r!17423))))))))

(declare-fun b!3080379 () Bool)

(declare-fun e!1926909 () Regex!9535)

(assert (=> b!3080379 (= e!1926909 EmptyExpr!9535)))

(declare-fun bm!214635 () Bool)

(assert (=> bm!214635 (= call!214637 (simplify!490 (ite c!512875 (regTwo!19583 (regTwo!19582 r!17423)) (regOne!19582 (regTwo!19582 r!17423)))))))

(declare-fun b!3080380 () Bool)

(declare-fun e!1926913 () Regex!9535)

(assert (=> b!3080380 (= e!1926913 lt!1053166)))

(declare-fun b!3080381 () Bool)

(declare-fun e!1926915 () Regex!9535)

(assert (=> b!3080381 (= e!1926915 EmptyExpr!9535)))

(declare-fun b!3080382 () Bool)

(assert (=> b!3080382 (= e!1926915 (Star!9535 lt!1053164))))

(declare-fun b!3080383 () Bool)

(declare-fun c!512867 () Bool)

(assert (=> b!3080383 (= c!512867 ((_ is EmptyExpr!9535) (regTwo!19582 r!17423)))))

(assert (=> b!3080383 (= e!1926907 e!1926909)))

(declare-fun b!3080384 () Bool)

(declare-fun e!1926906 () Bool)

(assert (=> b!3080384 (= e!1926906 call!214640)))

(declare-fun b!3080385 () Bool)

(declare-fun e!1926914 () Regex!9535)

(assert (=> b!3080385 (= e!1926914 lt!1053168)))

(declare-fun b!3080386 () Bool)

(declare-fun e!1926905 () Bool)

(declare-fun lt!1053169 () Regex!9535)

(assert (=> b!3080386 (= e!1926905 (= (nullable!3181 lt!1053169) (nullable!3181 (regTwo!19582 r!17423))))))

(declare-fun b!3080387 () Bool)

(declare-fun e!1926912 () Regex!9535)

(assert (=> b!3080387 (= e!1926909 e!1926912)))

(assert (=> b!3080387 (= c!512871 ((_ is Star!9535) (regTwo!19582 r!17423)))))

(declare-fun b!3080388 () Bool)

(declare-fun e!1926916 () Regex!9535)

(assert (=> b!3080388 (= e!1926916 (Concat!14856 lt!1053167 lt!1053168))))

(declare-fun b!3080389 () Bool)

(assert (=> b!3080389 (= c!512875 ((_ is Union!9535) (regTwo!19582 r!17423)))))

(assert (=> b!3080389 (= e!1926912 e!1926911)))

(declare-fun b!3080390 () Bool)

(assert (=> b!3080390 (= e!1926911 e!1926913)))

(assert (=> b!3080390 (= lt!1053165 call!214639)))

(assert (=> b!3080390 (= lt!1053166 call!214637)))

(declare-fun c!512876 () Bool)

(assert (=> b!3080390 (= c!512876 call!214642)))

(declare-fun b!3080391 () Bool)

(declare-fun c!512872 () Bool)

(assert (=> b!3080391 (= c!512872 call!214636)))

(assert (=> b!3080391 (= e!1926913 e!1926904)))

(declare-fun bm!214636 () Bool)

(assert (=> bm!214636 (= call!214638 (isEmptyLang!586 (ite c!512871 lt!1053164 (ite c!512875 lt!1053165 lt!1053167))))))

(declare-fun b!3080392 () Bool)

(declare-fun c!512874 () Bool)

(assert (=> b!3080392 (= c!512874 (isEmptyExpr!592 lt!1053167))))

(assert (=> b!3080392 (= e!1926910 e!1926914)))

(declare-fun bm!214637 () Bool)

(assert (=> bm!214637 (= call!214639 call!214641)))

(declare-fun b!3080393 () Bool)

(assert (=> b!3080393 (= e!1926903 EmptyLang!9535)))

(declare-fun b!3080394 () Bool)

(assert (=> b!3080394 (= e!1926910 EmptyLang!9535)))

(declare-fun b!3080378 () Bool)

(assert (=> b!3080378 (= e!1926916 lt!1053167)))

(declare-fun d!857443 () Bool)

(assert (=> d!857443 e!1926905))

(declare-fun res!1263897 () Bool)

(assert (=> d!857443 (=> (not res!1263897) (not e!1926905))))

(assert (=> d!857443 (= res!1263897 (validRegex!4268 lt!1053169))))

(assert (=> d!857443 (= lt!1053169 e!1926903)))

(declare-fun c!512868 () Bool)

(assert (=> d!857443 (= c!512868 ((_ is EmptyLang!9535) (regTwo!19582 r!17423)))))

(assert (=> d!857443 (validRegex!4268 (regTwo!19582 r!17423))))

(assert (=> d!857443 (= (simplify!490 (regTwo!19582 r!17423)) lt!1053169)))

(declare-fun b!3080395 () Bool)

(assert (=> b!3080395 (= e!1926904 lt!1053165)))

(declare-fun b!3080396 () Bool)

(declare-fun c!512873 () Bool)

(assert (=> b!3080396 (= c!512873 e!1926906)))

(declare-fun res!1263899 () Bool)

(assert (=> b!3080396 (=> res!1263899 e!1926906)))

(assert (=> b!3080396 (= res!1263899 call!214638)))

(assert (=> b!3080396 (= lt!1053164 call!214641)))

(assert (=> b!3080396 (= e!1926912 e!1926915)))

(declare-fun b!3080397 () Bool)

(assert (=> b!3080397 (= e!1926914 e!1926916)))

(declare-fun c!512870 () Bool)

(assert (=> b!3080397 (= c!512870 call!214640)))

(declare-fun b!3080398 () Bool)

(assert (=> b!3080398 (= e!1926908 call!214636)))

(assert (= (and d!857443 c!512868) b!3080393))

(assert (= (and d!857443 (not c!512868)) b!3080377))

(assert (= (and b!3080377 c!512877) b!3080375))

(assert (= (and b!3080377 (not c!512877)) b!3080383))

(assert (= (and b!3080383 c!512867) b!3080379))

(assert (= (and b!3080383 (not c!512867)) b!3080387))

(assert (= (and b!3080387 c!512871) b!3080396))

(assert (= (and b!3080387 (not c!512871)) b!3080389))

(assert (= (and b!3080396 (not res!1263899)) b!3080384))

(assert (= (and b!3080396 c!512873) b!3080381))

(assert (= (and b!3080396 (not c!512873)) b!3080382))

(assert (= (and b!3080389 c!512875) b!3080390))

(assert (= (and b!3080389 (not c!512875)) b!3080376))

(assert (= (and b!3080390 c!512876) b!3080380))

(assert (= (and b!3080390 (not c!512876)) b!3080391))

(assert (= (and b!3080391 c!512872) b!3080395))

(assert (= (and b!3080391 (not c!512872)) b!3080374))

(assert (= (and b!3080376 (not res!1263898)) b!3080398))

(assert (= (and b!3080376 c!512869) b!3080394))

(assert (= (and b!3080376 (not c!512869)) b!3080392))

(assert (= (and b!3080392 c!512874) b!3080385))

(assert (= (and b!3080392 (not c!512874)) b!3080397))

(assert (= (and b!3080397 c!512870) b!3080378))

(assert (= (and b!3080397 (not c!512870)) b!3080388))

(assert (= (or b!3080390 b!3080376) bm!214637))

(assert (= (or b!3080390 b!3080376) bm!214635))

(assert (= (or b!3080391 b!3080398) bm!214633))

(assert (= (or b!3080390 b!3080376) bm!214632))

(assert (= (or b!3080384 b!3080397) bm!214631))

(assert (= (or b!3080396 bm!214637) bm!214634))

(assert (= (or b!3080396 bm!214632) bm!214636))

(assert (= (and d!857443 res!1263897) b!3080386))

(declare-fun m!3389923 () Bool)

(assert (=> bm!214631 m!3389923))

(declare-fun m!3389925 () Bool)

(assert (=> bm!214636 m!3389925))

(declare-fun m!3389927 () Bool)

(assert (=> b!3080392 m!3389927))

(declare-fun m!3389929 () Bool)

(assert (=> bm!214633 m!3389929))

(declare-fun m!3389931 () Bool)

(assert (=> bm!214634 m!3389931))

(declare-fun m!3389933 () Bool)

(assert (=> b!3080386 m!3389933))

(declare-fun m!3389935 () Bool)

(assert (=> b!3080386 m!3389935))

(declare-fun m!3389937 () Bool)

(assert (=> d!857443 m!3389937))

(declare-fun m!3389939 () Bool)

(assert (=> d!857443 m!3389939))

(declare-fun m!3389941 () Bool)

(assert (=> bm!214635 m!3389941))

(assert (=> b!3080010 d!857443))

(declare-fun b!3080408 () Bool)

(declare-fun e!1926925 () Regex!9535)

(declare-fun lt!1053171 () Regex!9535)

(declare-fun lt!1053172 () Regex!9535)

(assert (=> b!3080408 (= e!1926925 (Union!9535 lt!1053171 lt!1053172))))

(declare-fun lt!1053174 () Regex!9535)

(declare-fun call!214650 () Bool)

(declare-fun lt!1053170 () Regex!9535)

(declare-fun c!512884 () Bool)

(declare-fun bm!214641 () Bool)

(assert (=> bm!214641 (= call!214650 (isEmptyExpr!592 (ite c!512884 lt!1053170 lt!1053174)))))

(declare-fun b!3080409 () Bool)

(declare-fun e!1926928 () Regex!9535)

(assert (=> b!3080409 (= e!1926928 (regOne!19582 r!17423))))

(declare-fun b!3080410 () Bool)

(declare-fun e!1926932 () Regex!9535)

(declare-fun e!1926931 () Regex!9535)

(assert (=> b!3080410 (= e!1926932 e!1926931)))

(declare-fun lt!1053173 () Regex!9535)

(declare-fun call!214647 () Regex!9535)

(assert (=> b!3080410 (= lt!1053173 call!214647)))

(declare-fun call!214649 () Regex!9535)

(assert (=> b!3080410 (= lt!1053174 call!214649)))

(declare-fun res!1263906 () Bool)

(declare-fun call!214652 () Bool)

(assert (=> b!3080410 (= res!1263906 call!214652)))

(declare-fun e!1926929 () Bool)

(assert (=> b!3080410 (=> res!1263906 e!1926929)))

(declare-fun c!512882 () Bool)

(assert (=> b!3080410 (= c!512882 e!1926929)))

(declare-fun b!3080411 () Bool)

(declare-fun e!1926924 () Regex!9535)

(assert (=> b!3080411 (= e!1926924 e!1926928)))

(declare-fun c!512890 () Bool)

(assert (=> b!3080411 (= c!512890 ((_ is ElementMatch!9535) (regOne!19582 r!17423)))))

(declare-fun bm!214642 () Bool)

(declare-fun call!214648 () Bool)

(assert (=> bm!214642 (= call!214652 call!214648)))

(declare-fun bm!214643 () Bool)

(declare-fun c!512888 () Bool)

(declare-fun call!214646 () Bool)

(assert (=> bm!214643 (= call!214646 (isEmptyLang!586 (ite c!512888 lt!1053172 lt!1053174)))))

(declare-fun bm!214644 () Bool)

(declare-fun call!214651 () Regex!9535)

(assert (=> bm!214644 (= call!214651 (simplify!490 (ite c!512884 (reg!9864 (regOne!19582 r!17423)) (ite c!512888 (regOne!19583 (regOne!19582 r!17423)) (regTwo!19582 (regOne!19582 r!17423))))))))

(declare-fun b!3080413 () Bool)

(declare-fun e!1926930 () Regex!9535)

(assert (=> b!3080413 (= e!1926930 EmptyExpr!9535)))

(declare-fun bm!214645 () Bool)

(assert (=> bm!214645 (= call!214647 (simplify!490 (ite c!512888 (regTwo!19583 (regOne!19582 r!17423)) (regOne!19582 (regOne!19582 r!17423)))))))

(declare-fun b!3080414 () Bool)

(declare-fun e!1926934 () Regex!9535)

(assert (=> b!3080414 (= e!1926934 lt!1053172)))

(declare-fun b!3080415 () Bool)

(declare-fun e!1926936 () Regex!9535)

(assert (=> b!3080415 (= e!1926936 EmptyExpr!9535)))

(declare-fun b!3080416 () Bool)

(assert (=> b!3080416 (= e!1926936 (Star!9535 lt!1053170))))

(declare-fun b!3080417 () Bool)

(declare-fun c!512880 () Bool)

(assert (=> b!3080417 (= c!512880 ((_ is EmptyExpr!9535) (regOne!19582 r!17423)))))

(assert (=> b!3080417 (= e!1926928 e!1926930)))

(declare-fun b!3080418 () Bool)

(declare-fun e!1926927 () Bool)

(assert (=> b!3080418 (= e!1926927 call!214650)))

(declare-fun b!3080419 () Bool)

(declare-fun e!1926935 () Regex!9535)

(assert (=> b!3080419 (= e!1926935 lt!1053174)))

(declare-fun b!3080420 () Bool)

(declare-fun e!1926926 () Bool)

(declare-fun lt!1053175 () Regex!9535)

(assert (=> b!3080420 (= e!1926926 (= (nullable!3181 lt!1053175) (nullable!3181 (regOne!19582 r!17423))))))

(declare-fun b!3080421 () Bool)

(declare-fun e!1926933 () Regex!9535)

(assert (=> b!3080421 (= e!1926930 e!1926933)))

(assert (=> b!3080421 (= c!512884 ((_ is Star!9535) (regOne!19582 r!17423)))))

(declare-fun b!3080422 () Bool)

(declare-fun e!1926937 () Regex!9535)

(assert (=> b!3080422 (= e!1926937 (Concat!14856 lt!1053173 lt!1053174))))

(declare-fun b!3080423 () Bool)

(assert (=> b!3080423 (= c!512888 ((_ is Union!9535) (regOne!19582 r!17423)))))

(assert (=> b!3080423 (= e!1926933 e!1926932)))

(declare-fun b!3080424 () Bool)

(assert (=> b!3080424 (= e!1926932 e!1926934)))

(assert (=> b!3080424 (= lt!1053171 call!214649)))

(assert (=> b!3080424 (= lt!1053172 call!214647)))

(declare-fun c!512889 () Bool)

(assert (=> b!3080424 (= c!512889 call!214652)))

(declare-fun b!3080425 () Bool)

(declare-fun c!512885 () Bool)

(assert (=> b!3080425 (= c!512885 call!214646)))

(assert (=> b!3080425 (= e!1926934 e!1926925)))

(declare-fun bm!214646 () Bool)

(assert (=> bm!214646 (= call!214648 (isEmptyLang!586 (ite c!512884 lt!1053170 (ite c!512888 lt!1053171 lt!1053173))))))

(declare-fun b!3080426 () Bool)

(declare-fun c!512887 () Bool)

(assert (=> b!3080426 (= c!512887 (isEmptyExpr!592 lt!1053173))))

(assert (=> b!3080426 (= e!1926931 e!1926935)))

(declare-fun bm!214647 () Bool)

(assert (=> bm!214647 (= call!214649 call!214651)))

(declare-fun b!3080427 () Bool)

(assert (=> b!3080427 (= e!1926924 EmptyLang!9535)))

(declare-fun b!3080428 () Bool)

(assert (=> b!3080428 (= e!1926931 EmptyLang!9535)))

(declare-fun b!3080412 () Bool)

(assert (=> b!3080412 (= e!1926937 lt!1053173)))

(declare-fun d!857453 () Bool)

(assert (=> d!857453 e!1926926))

(declare-fun res!1263905 () Bool)

(assert (=> d!857453 (=> (not res!1263905) (not e!1926926))))

(assert (=> d!857453 (= res!1263905 (validRegex!4268 lt!1053175))))

(assert (=> d!857453 (= lt!1053175 e!1926924)))

(declare-fun c!512881 () Bool)

(assert (=> d!857453 (= c!512881 ((_ is EmptyLang!9535) (regOne!19582 r!17423)))))

(assert (=> d!857453 (validRegex!4268 (regOne!19582 r!17423))))

(assert (=> d!857453 (= (simplify!490 (regOne!19582 r!17423)) lt!1053175)))

(declare-fun b!3080429 () Bool)

(assert (=> b!3080429 (= e!1926925 lt!1053171)))

(declare-fun b!3080430 () Bool)

(declare-fun c!512886 () Bool)

(assert (=> b!3080430 (= c!512886 e!1926927)))

(declare-fun res!1263907 () Bool)

(assert (=> b!3080430 (=> res!1263907 e!1926927)))

(assert (=> b!3080430 (= res!1263907 call!214648)))

(assert (=> b!3080430 (= lt!1053170 call!214651)))

(assert (=> b!3080430 (= e!1926933 e!1926936)))

(declare-fun b!3080431 () Bool)

(assert (=> b!3080431 (= e!1926935 e!1926937)))

(declare-fun c!512883 () Bool)

(assert (=> b!3080431 (= c!512883 call!214650)))

(declare-fun b!3080432 () Bool)

(assert (=> b!3080432 (= e!1926929 call!214646)))

(assert (= (and d!857453 c!512881) b!3080427))

(assert (= (and d!857453 (not c!512881)) b!3080411))

(assert (= (and b!3080411 c!512890) b!3080409))

(assert (= (and b!3080411 (not c!512890)) b!3080417))

(assert (= (and b!3080417 c!512880) b!3080413))

(assert (= (and b!3080417 (not c!512880)) b!3080421))

(assert (= (and b!3080421 c!512884) b!3080430))

(assert (= (and b!3080421 (not c!512884)) b!3080423))

(assert (= (and b!3080430 (not res!1263907)) b!3080418))

(assert (= (and b!3080430 c!512886) b!3080415))

(assert (= (and b!3080430 (not c!512886)) b!3080416))

(assert (= (and b!3080423 c!512888) b!3080424))

(assert (= (and b!3080423 (not c!512888)) b!3080410))

(assert (= (and b!3080424 c!512889) b!3080414))

(assert (= (and b!3080424 (not c!512889)) b!3080425))

(assert (= (and b!3080425 c!512885) b!3080429))

(assert (= (and b!3080425 (not c!512885)) b!3080408))

(assert (= (and b!3080410 (not res!1263906)) b!3080432))

(assert (= (and b!3080410 c!512882) b!3080428))

(assert (= (and b!3080410 (not c!512882)) b!3080426))

(assert (= (and b!3080426 c!512887) b!3080419))

(assert (= (and b!3080426 (not c!512887)) b!3080431))

(assert (= (and b!3080431 c!512883) b!3080412))

(assert (= (and b!3080431 (not c!512883)) b!3080422))

(assert (= (or b!3080424 b!3080410) bm!214647))

(assert (= (or b!3080424 b!3080410) bm!214645))

(assert (= (or b!3080425 b!3080432) bm!214643))

(assert (= (or b!3080424 b!3080410) bm!214642))

(assert (= (or b!3080418 b!3080431) bm!214641))

(assert (= (or b!3080430 bm!214647) bm!214644))

(assert (= (or b!3080430 bm!214642) bm!214646))

(assert (= (and d!857453 res!1263905) b!3080420))

(declare-fun m!3389949 () Bool)

(assert (=> bm!214641 m!3389949))

(declare-fun m!3389951 () Bool)

(assert (=> bm!214646 m!3389951))

(declare-fun m!3389953 () Bool)

(assert (=> b!3080426 m!3389953))

(declare-fun m!3389955 () Bool)

(assert (=> bm!214643 m!3389955))

(declare-fun m!3389957 () Bool)

(assert (=> bm!214644 m!3389957))

(declare-fun m!3389959 () Bool)

(assert (=> b!3080420 m!3389959))

(declare-fun m!3389961 () Bool)

(assert (=> b!3080420 m!3389961))

(declare-fun m!3389963 () Bool)

(assert (=> d!857453 m!3389963))

(declare-fun m!3389965 () Bool)

(assert (=> d!857453 m!3389965))

(declare-fun m!3389967 () Bool)

(assert (=> bm!214645 m!3389967))

(assert (=> b!3080010 d!857453))

(declare-fun b!3080509 () Bool)

(declare-fun e!1926978 () Bool)

(declare-fun e!1926980 () Bool)

(assert (=> b!3080509 (= e!1926978 e!1926980)))

(declare-fun res!1263935 () Bool)

(assert (=> b!3080509 (=> (not res!1263935) (not e!1926980))))

(declare-fun call!214663 () Bool)

(assert (=> b!3080509 (= res!1263935 call!214663)))

(declare-fun b!3080511 () Bool)

(declare-fun res!1263931 () Bool)

(assert (=> b!3080511 (=> res!1263931 e!1926978)))

(assert (=> b!3080511 (= res!1263931 (not ((_ is Concat!14856) r!17423)))))

(declare-fun e!1926976 () Bool)

(assert (=> b!3080511 (= e!1926976 e!1926978)))

(declare-fun b!3080512 () Bool)

(declare-fun e!1926982 () Bool)

(declare-fun e!1926979 () Bool)

(assert (=> b!3080512 (= e!1926982 e!1926979)))

(declare-fun c!512900 () Bool)

(assert (=> b!3080512 (= c!512900 ((_ is Star!9535) r!17423))))

(declare-fun b!3080513 () Bool)

(declare-fun e!1926981 () Bool)

(assert (=> b!3080513 (= e!1926979 e!1926981)))

(declare-fun res!1263934 () Bool)

(assert (=> b!3080513 (= res!1263934 (not (nullable!3181 (reg!9864 r!17423))))))

(assert (=> b!3080513 (=> (not res!1263934) (not e!1926981))))

(declare-fun b!3080514 () Bool)

(declare-fun res!1263933 () Bool)

(declare-fun e!1926977 () Bool)

(assert (=> b!3080514 (=> (not res!1263933) (not e!1926977))))

(declare-fun call!214665 () Bool)

(assert (=> b!3080514 (= res!1263933 call!214665)))

(assert (=> b!3080514 (= e!1926976 e!1926977)))

(declare-fun b!3080515 () Bool)

(assert (=> b!3080515 (= e!1926979 e!1926976)))

(declare-fun c!512901 () Bool)

(assert (=> b!3080515 (= c!512901 ((_ is Union!9535) r!17423))))

(declare-fun bm!214658 () Bool)

(declare-fun call!214664 () Bool)

(assert (=> bm!214658 (= call!214663 call!214664)))

(declare-fun bm!214659 () Bool)

(assert (=> bm!214659 (= call!214665 (validRegex!4268 (ite c!512901 (regOne!19583 r!17423) (regTwo!19582 r!17423))))))

(declare-fun b!3080516 () Bool)

(assert (=> b!3080516 (= e!1926981 call!214664)))

(declare-fun d!857459 () Bool)

(declare-fun res!1263932 () Bool)

(assert (=> d!857459 (=> res!1263932 e!1926982)))

(assert (=> d!857459 (= res!1263932 ((_ is ElementMatch!9535) r!17423))))

(assert (=> d!857459 (= (validRegex!4268 r!17423) e!1926982)))

(declare-fun b!3080510 () Bool)

(assert (=> b!3080510 (= e!1926977 call!214663)))

(declare-fun bm!214660 () Bool)

(assert (=> bm!214660 (= call!214664 (validRegex!4268 (ite c!512900 (reg!9864 r!17423) (ite c!512901 (regTwo!19583 r!17423) (regOne!19582 r!17423)))))))

(declare-fun b!3080517 () Bool)

(assert (=> b!3080517 (= e!1926980 call!214665)))

(assert (= (and d!857459 (not res!1263932)) b!3080512))

(assert (= (and b!3080512 c!512900) b!3080513))

(assert (= (and b!3080512 (not c!512900)) b!3080515))

(assert (= (and b!3080513 res!1263934) b!3080516))

(assert (= (and b!3080515 c!512901) b!3080514))

(assert (= (and b!3080515 (not c!512901)) b!3080511))

(assert (= (and b!3080514 res!1263933) b!3080510))

(assert (= (and b!3080511 (not res!1263931)) b!3080509))

(assert (= (and b!3080509 res!1263935) b!3080517))

(assert (= (or b!3080514 b!3080517) bm!214659))

(assert (= (or b!3080510 b!3080509) bm!214658))

(assert (= (or b!3080516 bm!214658) bm!214660))

(declare-fun m!3389981 () Bool)

(assert (=> b!3080513 m!3389981))

(declare-fun m!3389983 () Bool)

(assert (=> bm!214659 m!3389983))

(declare-fun m!3389985 () Bool)

(assert (=> bm!214660 m!3389985))

(assert (=> start!293412 d!857459))

(declare-fun b!3080518 () Bool)

(declare-fun e!1926985 () Bool)

(declare-fun e!1926987 () Bool)

(assert (=> b!3080518 (= e!1926985 e!1926987)))

(declare-fun res!1263940 () Bool)

(assert (=> b!3080518 (=> (not res!1263940) (not e!1926987))))

(declare-fun call!214666 () Bool)

(assert (=> b!3080518 (= res!1263940 call!214666)))

(declare-fun b!3080520 () Bool)

(declare-fun res!1263936 () Bool)

(assert (=> b!3080520 (=> res!1263936 e!1926985)))

(assert (=> b!3080520 (= res!1263936 (not ((_ is Concat!14856) lt!1053110)))))

(declare-fun e!1926983 () Bool)

(assert (=> b!3080520 (= e!1926983 e!1926985)))

(declare-fun b!3080521 () Bool)

(declare-fun e!1926989 () Bool)

(declare-fun e!1926986 () Bool)

(assert (=> b!3080521 (= e!1926989 e!1926986)))

(declare-fun c!512902 () Bool)

(assert (=> b!3080521 (= c!512902 ((_ is Star!9535) lt!1053110))))

(declare-fun b!3080522 () Bool)

(declare-fun e!1926988 () Bool)

(assert (=> b!3080522 (= e!1926986 e!1926988)))

(declare-fun res!1263939 () Bool)

(assert (=> b!3080522 (= res!1263939 (not (nullable!3181 (reg!9864 lt!1053110))))))

(assert (=> b!3080522 (=> (not res!1263939) (not e!1926988))))

(declare-fun b!3080523 () Bool)

(declare-fun res!1263938 () Bool)

(declare-fun e!1926984 () Bool)

(assert (=> b!3080523 (=> (not res!1263938) (not e!1926984))))

(declare-fun call!214668 () Bool)

(assert (=> b!3080523 (= res!1263938 call!214668)))

(assert (=> b!3080523 (= e!1926983 e!1926984)))

(declare-fun b!3080524 () Bool)

(assert (=> b!3080524 (= e!1926986 e!1926983)))

(declare-fun c!512903 () Bool)

(assert (=> b!3080524 (= c!512903 ((_ is Union!9535) lt!1053110))))

(declare-fun bm!214661 () Bool)

(declare-fun call!214667 () Bool)

(assert (=> bm!214661 (= call!214666 call!214667)))

(declare-fun bm!214662 () Bool)

(assert (=> bm!214662 (= call!214668 (validRegex!4268 (ite c!512903 (regOne!19583 lt!1053110) (regTwo!19582 lt!1053110))))))

(declare-fun b!3080525 () Bool)

(assert (=> b!3080525 (= e!1926988 call!214667)))

(declare-fun d!857465 () Bool)

(declare-fun res!1263937 () Bool)

(assert (=> d!857465 (=> res!1263937 e!1926989)))

(assert (=> d!857465 (= res!1263937 ((_ is ElementMatch!9535) lt!1053110))))

(assert (=> d!857465 (= (validRegex!4268 lt!1053110) e!1926989)))

(declare-fun b!3080519 () Bool)

(assert (=> b!3080519 (= e!1926984 call!214666)))

(declare-fun bm!214663 () Bool)

(assert (=> bm!214663 (= call!214667 (validRegex!4268 (ite c!512902 (reg!9864 lt!1053110) (ite c!512903 (regTwo!19583 lt!1053110) (regOne!19582 lt!1053110)))))))

(declare-fun b!3080526 () Bool)

(assert (=> b!3080526 (= e!1926987 call!214668)))

(assert (= (and d!857465 (not res!1263937)) b!3080521))

(assert (= (and b!3080521 c!512902) b!3080522))

(assert (= (and b!3080521 (not c!512902)) b!3080524))

(assert (= (and b!3080522 res!1263939) b!3080525))

(assert (= (and b!3080524 c!512903) b!3080523))

(assert (= (and b!3080524 (not c!512903)) b!3080520))

(assert (= (and b!3080523 res!1263938) b!3080519))

(assert (= (and b!3080520 (not res!1263936)) b!3080518))

(assert (= (and b!3080518 res!1263940) b!3080526))

(assert (= (or b!3080523 b!3080526) bm!214662))

(assert (= (or b!3080519 b!3080518) bm!214661))

(assert (= (or b!3080525 bm!214661) bm!214663))

(declare-fun m!3389987 () Bool)

(assert (=> b!3080522 m!3389987))

(declare-fun m!3389989 () Bool)

(assert (=> bm!214662 m!3389989))

(declare-fun m!3389991 () Bool)

(assert (=> bm!214663 m!3389991))

(assert (=> b!3080004 d!857465))

(declare-fun b!3080537 () Bool)

(declare-fun e!1926992 () Bool)

(assert (=> b!3080537 (= e!1926992 tp_is_empty!16633)))

(declare-fun b!3080539 () Bool)

(declare-fun tp!970319 () Bool)

(assert (=> b!3080539 (= e!1926992 tp!970319)))

(assert (=> b!3080005 (= tp!970268 e!1926992)))

(declare-fun b!3080540 () Bool)

(declare-fun tp!970322 () Bool)

(declare-fun tp!970320 () Bool)

(assert (=> b!3080540 (= e!1926992 (and tp!970322 tp!970320))))

(declare-fun b!3080538 () Bool)

(declare-fun tp!970318 () Bool)

(declare-fun tp!970321 () Bool)

(assert (=> b!3080538 (= e!1926992 (and tp!970318 tp!970321))))

(assert (= (and b!3080005 ((_ is ElementMatch!9535) (regOne!19582 r!17423))) b!3080537))

(assert (= (and b!3080005 ((_ is Concat!14856) (regOne!19582 r!17423))) b!3080538))

(assert (= (and b!3080005 ((_ is Star!9535) (regOne!19582 r!17423))) b!3080539))

(assert (= (and b!3080005 ((_ is Union!9535) (regOne!19582 r!17423))) b!3080540))

(declare-fun b!3080541 () Bool)

(declare-fun e!1926993 () Bool)

(assert (=> b!3080541 (= e!1926993 tp_is_empty!16633)))

(declare-fun b!3080543 () Bool)

(declare-fun tp!970324 () Bool)

(assert (=> b!3080543 (= e!1926993 tp!970324)))

(assert (=> b!3080005 (= tp!970264 e!1926993)))

(declare-fun b!3080544 () Bool)

(declare-fun tp!970327 () Bool)

(declare-fun tp!970325 () Bool)

(assert (=> b!3080544 (= e!1926993 (and tp!970327 tp!970325))))

(declare-fun b!3080542 () Bool)

(declare-fun tp!970323 () Bool)

(declare-fun tp!970326 () Bool)

(assert (=> b!3080542 (= e!1926993 (and tp!970323 tp!970326))))

(assert (= (and b!3080005 ((_ is ElementMatch!9535) (regTwo!19582 r!17423))) b!3080541))

(assert (= (and b!3080005 ((_ is Concat!14856) (regTwo!19582 r!17423))) b!3080542))

(assert (= (and b!3080005 ((_ is Star!9535) (regTwo!19582 r!17423))) b!3080543))

(assert (= (and b!3080005 ((_ is Union!9535) (regTwo!19582 r!17423))) b!3080544))

(declare-fun b!3080549 () Bool)

(declare-fun e!1926996 () Bool)

(declare-fun tp!970330 () Bool)

(assert (=> b!3080549 (= e!1926996 (and tp_is_empty!16633 tp!970330))))

(assert (=> b!3080012 (= tp!970269 e!1926996)))

(assert (= (and b!3080012 ((_ is Cons!35276) (t!234465 s!11993))) b!3080549))

(declare-fun b!3080550 () Bool)

(declare-fun e!1926997 () Bool)

(assert (=> b!3080550 (= e!1926997 tp_is_empty!16633)))

(declare-fun b!3080552 () Bool)

(declare-fun tp!970332 () Bool)

(assert (=> b!3080552 (= e!1926997 tp!970332)))

(assert (=> b!3080003 (= tp!970265 e!1926997)))

(declare-fun b!3080553 () Bool)

(declare-fun tp!970335 () Bool)

(declare-fun tp!970333 () Bool)

(assert (=> b!3080553 (= e!1926997 (and tp!970335 tp!970333))))

(declare-fun b!3080551 () Bool)

(declare-fun tp!970331 () Bool)

(declare-fun tp!970334 () Bool)

(assert (=> b!3080551 (= e!1926997 (and tp!970331 tp!970334))))

(assert (= (and b!3080003 ((_ is ElementMatch!9535) (regOne!19583 r!17423))) b!3080550))

(assert (= (and b!3080003 ((_ is Concat!14856) (regOne!19583 r!17423))) b!3080551))

(assert (= (and b!3080003 ((_ is Star!9535) (regOne!19583 r!17423))) b!3080552))

(assert (= (and b!3080003 ((_ is Union!9535) (regOne!19583 r!17423))) b!3080553))

(declare-fun b!3080554 () Bool)

(declare-fun e!1926998 () Bool)

(assert (=> b!3080554 (= e!1926998 tp_is_empty!16633)))

(declare-fun b!3080556 () Bool)

(declare-fun tp!970337 () Bool)

(assert (=> b!3080556 (= e!1926998 tp!970337)))

(assert (=> b!3080003 (= tp!970266 e!1926998)))

(declare-fun b!3080557 () Bool)

(declare-fun tp!970340 () Bool)

(declare-fun tp!970338 () Bool)

(assert (=> b!3080557 (= e!1926998 (and tp!970340 tp!970338))))

(declare-fun b!3080555 () Bool)

(declare-fun tp!970336 () Bool)

(declare-fun tp!970339 () Bool)

(assert (=> b!3080555 (= e!1926998 (and tp!970336 tp!970339))))

(assert (= (and b!3080003 ((_ is ElementMatch!9535) (regTwo!19583 r!17423))) b!3080554))

(assert (= (and b!3080003 ((_ is Concat!14856) (regTwo!19583 r!17423))) b!3080555))

(assert (= (and b!3080003 ((_ is Star!9535) (regTwo!19583 r!17423))) b!3080556))

(assert (= (and b!3080003 ((_ is Union!9535) (regTwo!19583 r!17423))) b!3080557))

(declare-fun b!3080558 () Bool)

(declare-fun e!1926999 () Bool)

(assert (=> b!3080558 (= e!1926999 tp_is_empty!16633)))

(declare-fun b!3080560 () Bool)

(declare-fun tp!970342 () Bool)

(assert (=> b!3080560 (= e!1926999 tp!970342)))

(assert (=> b!3080009 (= tp!970267 e!1926999)))

(declare-fun b!3080561 () Bool)

(declare-fun tp!970345 () Bool)

(declare-fun tp!970343 () Bool)

(assert (=> b!3080561 (= e!1926999 (and tp!970345 tp!970343))))

(declare-fun b!3080559 () Bool)

(declare-fun tp!970341 () Bool)

(declare-fun tp!970344 () Bool)

(assert (=> b!3080559 (= e!1926999 (and tp!970341 tp!970344))))

(assert (= (and b!3080009 ((_ is ElementMatch!9535) (reg!9864 r!17423))) b!3080558))

(assert (= (and b!3080009 ((_ is Concat!14856) (reg!9864 r!17423))) b!3080559))

(assert (= (and b!3080009 ((_ is Star!9535) (reg!9864 r!17423))) b!3080560))

(assert (= (and b!3080009 ((_ is Union!9535) (reg!9864 r!17423))) b!3080561))

(check-sat (not bm!214631) (not b!3080204) (not b!3080560) (not b!3080538) (not b!3080203) (not b!3080551) (not b!3080559) (not b!3080549) (not b!3080420) (not b!3080539) (not b!3080189) (not b!3080556) (not bm!214635) (not b!3080426) (not b!3080199) (not b!3080101) (not bm!214645) (not b!3080555) (not b!3080179) (not b!3080190) (not d!857443) (not b!3080542) (not b!3080553) (not b!3080195) (not bm!214634) (not bm!214659) (not d!857437) (not bm!214581) (not b!3080557) (not b!3080193) (not bm!214641) (not bm!214663) (not d!857423) (not b!3080540) (not bm!214636) (not b!3080522) (not bm!214643) tp_is_empty!16633 (not bm!214633) (not bm!214574) (not b!3080513) (not b!3080392) (not b!3080201) (not b!3080543) (not b!3080386) (not bm!214662) (not bm!214575) (not bm!214644) (not bm!214660) (not bm!214582) (not d!857431) (not d!857453) (not b!3080185) (not b!3080561) (not bm!214646) (not b!3080544) (not b!3080552) (not b!3080181) (not b!3080187) (not b!3080097))
(check-sat)
